[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [ValidatePattern('^[a-fA-F0-9]{64}$')]
    [string] $ExpectedGuardHash
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Deny-IntegrityFailure {
    param([Parameter(Mandatory = $true)][string] $Reason)

    $response = @{
        hookSpecificOutput = @{
            hookEventName = 'PreToolUse'
            permissionDecision = 'deny'
            permissionDecisionReason = "[INTEGRITY001] $Reason"
        }
    }

    [Console]::Out.WriteLine(($response | ConvertTo-Json -Compress -Depth 5))
    exit 2
}

$payload = [Console]::In.ReadToEnd()
$guardPath = Join-Path $PSScriptRoot 'pre-tool-use-guard.ps1'

if (-not (Test-Path -LiteralPath $guardPath -PathType Leaf)) {
    Deny-IntegrityFailure -Reason 'The project guard script is missing.'
}

$actualHash = (Get-FileHash -Algorithm SHA256 -LiteralPath $guardPath).Hash.ToLowerInvariant()
if ($actualHash -ne $ExpectedGuardHash.ToLowerInvariant()) {
    Deny-IntegrityFailure -Reason 'The project guard script does not match the hash trusted by the hook configuration.'
}

$startInfo = [Diagnostics.ProcessStartInfo]::new()
$startInfo.FileName = 'powershell.exe'
$startInfo.Arguments = '-NoProfile -NonInteractive -ExecutionPolicy Bypass -File "' + $guardPath + '"'
$startInfo.WorkingDirectory = [IO.Path]::GetFullPath((Join-Path $PSScriptRoot '..\..'))
$startInfo.UseShellExecute = $false
$startInfo.RedirectStandardInput = $true
$startInfo.RedirectStandardOutput = $true
$startInfo.RedirectStandardError = $true
$startInfo.CreateNoWindow = $true

$process = [Diagnostics.Process]::new()
$process.StartInfo = $startInfo
[void] $process.Start()
$process.StandardInput.Write($payload)
$process.StandardInput.Close()
$stdout = $process.StandardOutput.ReadToEnd()
$stderr = $process.StandardError.ReadToEnd()
$process.WaitForExit()

if (-not [string]::IsNullOrEmpty($stdout)) {
    [Console]::Out.Write($stdout)
}
if (-not [string]::IsNullOrEmpty($stderr)) {
    [Console]::Error.Write($stderr)
}

exit $process.ExitCode
