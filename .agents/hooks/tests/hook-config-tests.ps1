[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$workspaceRoot = [IO.Path]::GetFullPath((Join-Path $PSScriptRoot '..\..\..'))
$hookConfigPath = Join-Path $workspaceRoot '.codex\hooks.json'
$guardPath = Join-Path $workspaceRoot '.agents\hooks\pre-tool-use-guard.ps1'

function Invoke-ConfiguredHook {
    param(
        [Parameter(Mandatory = $true)]
        [string] $Command,

        [Parameter(Mandatory = $true)]
        [string] $Payload
    )

    $startInfo = [Diagnostics.ProcessStartInfo]::new()
    $startInfo.FileName = 'cmd.exe'
    $startInfo.Arguments = '/d /s /c "' + $Command + '"'
    $startInfo.WorkingDirectory = $workspaceRoot
    $startInfo.UseShellExecute = $false
    $startInfo.RedirectStandardInput = $true
    $startInfo.RedirectStandardOutput = $true
    $startInfo.RedirectStandardError = $true
    $startInfo.CreateNoWindow = $true

    $process = [Diagnostics.Process]::new()
    $process.StartInfo = $startInfo
    [void] $process.Start()
    $process.StandardInput.Write($Payload)
    $process.StandardInput.Close()
    $stdout = $process.StandardOutput.ReadToEnd().Trim()
    $stderr = $process.StandardError.ReadToEnd().Trim()
    $process.WaitForExit()

    [pscustomobject]@{
        ExitCode = $process.ExitCode
        Stdout = $stdout
        Stderr = $stderr
    }
}

$config = Get-Content -Raw -LiteralPath $hookConfigPath | ConvertFrom-Json
$entry = $config.hooks.PreToolUse[0]
$hook = $entry.hooks[0]

if ($entry.matcher -ne '^(Bash|apply_patch)$') {
    throw "Unexpected matcher: $($entry.matcher)"
}

$actualHash = (Get-FileHash -Algorithm SHA256 -LiteralPath $guardPath).Hash.ToLowerInvariant()
if ($hook.commandWindows -notmatch [regex]::Escape($actualHash)) {
    throw 'The trusted hash in .codex/hooks.json does not match the guard script.'
}

$mismatchedCommand = $hook.commandWindows.Replace($actualHash, ('0' * 64))
$integrity = Invoke-ConfiguredHook -Command $mismatchedCommand -Payload '{"hook_event_name":"PreToolUse","tool_name":"Bash","tool_input":{"command":"git status --short"}}'
$integrityDecision = $integrity.Stdout | ConvertFrom-Json
if ($integrityDecision.hookSpecificOutput.permissionDecision -ne 'deny' -or
    -not ([string] $integrityDecision.hookSpecificOutput.permissionDecisionReason).Contains('[INTEGRITY001]')) {
    throw "Configured hook did not fail closed on a guard hash mismatch: $($integrity.Stdout)"
}

$blockedPayload = @{
    hook_event_name = 'PreToolUse'
    tool_name = 'Bash'
    tool_input = @{ command = 'git reset --hard HEAD~1' }
} | ConvertTo-Json -Compress -Depth 8

$blocked = Invoke-ConfiguredHook -Command $hook.commandWindows -Payload $blockedPayload
if ([string]::IsNullOrWhiteSpace($blocked.Stdout)) {
    throw "Configured hook did not block a destructive Git command. exit=$($blocked.ExitCode) stdout=$($blocked.Stdout) stderr=$($blocked.Stderr)"
}
$blockedDecision = $blocked.Stdout | ConvertFrom-Json
if ($blockedDecision.hookSpecificOutput.permissionDecision -ne 'deny') {
    throw "Configured hook returned an unexpected decision: $($blocked.Stdout)"
}

$safePayload = @{
    hook_event_name = 'PreToolUse'
    tool_name = 'Bash'
    tool_input = @{ command = 'git status --short' }
} | ConvertTo-Json -Compress -Depth 8

$safe = Invoke-ConfiguredHook -Command $hook.commandWindows -Payload $safePayload
if ($safe.ExitCode -ne 0 -or -not [string]::IsNullOrWhiteSpace($safe.Stdout)) {
    throw "Configured hook blocked a read-only Git command. stdout=$($safe.Stdout) stderr=$($safe.Stderr)"
}

Write-Output "PASS hook JSON parses"
Write-Output "PASS trusted guard hash matches"
Write-Output "PASS guard hash mismatch fails closed"
Write-Output "PASS configured hook blocks destructive Git"
Write-Output "PASS configured hook permits read-only Git"
