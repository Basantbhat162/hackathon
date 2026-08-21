[CmdletBinding()]
param(
    [Parameter(ValueFromPipeline = $true)]
    [AllowEmptyString()]
    [string]$Payload
)

begin {
    Set-StrictMode -Version Latest
    $ErrorActionPreference = 'Stop'
    $payloadParts = New-Object System.Collections.Generic.List[string]
}

process {
    if ($null -ne $Payload) {
        $payloadParts.Add($Payload)
    }
}

end {
    $workspaceRoot = [IO.Path]::GetFullPath((Join-Path $PSScriptRoot '..\..'))
    $denialLog = Join-Path $workspaceRoot '.codex\guardrail-denials.log'

    function Write-DenialLog {
        param(
            [string]$Rule,
            [string]$ToolName
        )

        if ($env:PF_NIKAL_GUARD_NO_LOG -eq '1') {
            return
        }

        try {
            $entry = @{
                timestamp = [DateTimeOffset]::Now.ToString('o')
                rule      = $Rule
                tool      = $ToolName
            } | ConvertTo-Json -Compress
            Add-Content -LiteralPath $denialLog -Value $entry -Encoding UTF8
        }
        catch {
            # Logging is diagnostic only. A logging failure must not weaken a deny.
        }
    }

    function Deny-ToolCall {
        param(
            [string]$Rule,
            [string]$Reason,
            [string]$ToolName = 'unknown'
        )

        Write-DenialLog -Rule $Rule -ToolName $ToolName
        $decision = @{
            hookSpecificOutput = @{
                hookEventName           = 'PreToolUse'
                permissionDecision      = 'deny'
                permissionDecisionReason = "[$Rule] $Reason"
            }
        } | ConvertTo-Json -Depth 5 -Compress

        [Console]::Out.WriteLine($decision)
        exit 0
    }

    function Test-DisposableRelativePath {
        param([string]$Candidate)

        if ([string]::IsNullOrWhiteSpace($Candidate)) {
            return $false
        }

        $path = $Candidate.Trim().Trim('"', "'") -replace '/', '\'
        if ($path -match '[*?`$%]' -or $path -match '(^|\\)\.\.(\\|$)') {
            return $false
        }

        if ([IO.Path]::IsPathRooted($path)) {
            try {
                $resolved = [IO.Path]::GetFullPath($path)
            }
            catch {
                return $false
            }
        }
        else {
            try {
                $resolved = [IO.Path]::GetFullPath((Join-Path $workspaceRoot $path))
            }
            catch {
                return $false
            }
        }

        foreach ($folder in @('tmp', 'output')) {
            $allowedRoot = [IO.Path]::GetFullPath((Join-Path $workspaceRoot $folder)).TrimEnd('\') + '\'
            if ($resolved.StartsWith($allowedRoot, [StringComparison]::OrdinalIgnoreCase)) {
                return $true
            }
        }

        return $false
    }

    function Get-StrictRemoveItemTarget {
        param([string]$Command)

        $match = [regex]::Match(
            $Command,
            '^\s*Remove-Item\s+-(?:LiteralPath|Path)\s+(?<path>''[^'']+''|"[^"]+"|[^\s]+)(?<options>(?:\s+-[A-Za-z]+(?::\$?(?:true|false))?)*)\s*$',
            [Text.RegularExpressions.RegexOptions]::IgnoreCase
        )

        if (-not $match.Success) {
            return $null
        }

        return [pscustomobject]@{
            Path      = $match.Groups['path'].Value
            Recursive = $match.Groups['options'].Value -match '(?i)(^|\s)-Recurse(\s|$)'
        }
    }

    function Test-ContainsProtectedPath {
        param([string]$Command)

        return $Command -match '(?i)(^|[\s"''\\/])(?:\.git|\.agents|\.codex|project-docs|reference|research|AGENTS\.md|README\.md)(?:[\s"''\\/]|$)'
    }

    $rawPayload = ($payloadParts -join "`n")
    if ([string]::IsNullOrWhiteSpace($rawPayload)) {
        $rawPayload = [Console]::In.ReadToEnd()
    }

    if ([string]::IsNullOrWhiteSpace($rawPayload)) {
        Deny-ToolCall -Rule 'INPUT001' -Reason 'Hook input was empty or unreadable.'
    }

    try {
        $event = $rawPayload | ConvertFrom-Json -ErrorAction Stop
    }
    catch {
        Deny-ToolCall -Rule 'INPUT001' -Reason 'Hook input was not valid JSON.'
    }

    $toolName = [string]$event.tool_name
    if ($toolName -notin @('Bash', 'apply_patch')) {
        exit 0
    }

    $command = $null
    if ($null -ne $event.tool_input -and
        $event.tool_input.PSObject.Properties.Name -contains 'command') {
        $command = [string]$event.tool_input.command
    }

    if ([string]::IsNullOrWhiteSpace($command)) {
        Deny-ToolCall -Rule 'INPUT002' -Reason 'A guarded tool call did not provide a command.' -ToolName $toolName
    }

    if ($toolName -eq 'apply_patch') {
        $deleteMatches = [regex]::Matches($command, '(?mi)^\*\*\* Delete File:\s*(?<path>.+?)\s*$')
        foreach ($deleteMatch in $deleteMatches) {
            if (-not (Test-DisposableRelativePath -Candidate $deleteMatch.Groups['path'].Value)) {
                Deny-ToolCall -Rule 'PATCH001' -Reason 'apply_patch may delete files only inside tmp/ or output/.' -ToolName $toolName
            }
        }

        if ($command -match '(?mi)^\*\*\* Move to:\s*(?<path>.+?)\s*$' -and (Test-ContainsProtectedPath -Command $command)) {
            Deny-ToolCall -Rule 'PATCH001' -Reason 'Moving protected project material through apply_patch is blocked.' -ToolName $toolName
        }

        exit 0
    }

    $trimmedCommand = $command.Trim()

    if ($trimmedCommand -match '(?i)(?:shutil\.rmtree|os\.remove|os\.unlink|fs\.rmSync|fs\.rmdirSync|fs\.promises\.rm|require\s*\(\s*["'']fs["'']\s*\)\s*\.\s*(?:rmSync|rmdirSync|promises\s*\.\s*rm)|Deno\.remove)\s*\(' -or
        $trimmedCommand -match '(?i)\bpowershell(?:\.exe)?\b[^\r\n]*-(?:EncodedCommand|enc)\b') {
        Deny-ToolCall -Rule 'CODE001' -Reason 'Inline scripted deletion or encoded PowerShell execution is blocked.' -ToolName $toolName
    }

    if ($trimmedCommand -match '(?i)(^|[;&|]\s*)find(?:\.exe)?\b[^\r\n]*\s-delete(?:\s|$)') {
        Deny-ToolCall -Rule 'FS001' -Reason 'Recursive find-and-delete operations are blocked.' -ToolName $toolName
    }

    if ($trimmedCommand -match '(?i)\b(?:Remove-Item|rm|rmdir|rd|del|erase)\b') {
        $strictRemove = Get-StrictRemoveItemTarget -Command $trimmedCommand
        if ($null -ne $strictRemove -and (Test-DisposableRelativePath -Candidate $strictRemove.Path)) {
            exit 0
        }

        if ($trimmedCommand -match '(?i)(?:-Recurse|-r\b|-rf\b|-fr\b|/s\b)') {
            Deny-ToolCall -Rule 'FS001' -Reason 'Recursive deletion is allowed only for a literal path below tmp/ or output/.' -ToolName $toolName
        }

        Deny-ToolCall -Rule 'FS002' -Reason 'Deletion outside tmp/ or output/ is blocked.' -ToolName $toolName
    }

    if ($trimmedCommand -match '(?i)\bMove-Item\b' -and (Test-ContainsProtectedPath -Command $trimmedCommand)) {
        Deny-ToolCall -Rule 'FS002' -Reason 'Moving protected project material is blocked.' -ToolName $toolName
    }

    if ($trimmedCommand -match '(?i)\b(?:Clear-Content|Set-Content|Out-File)\b' -and (Test-ContainsProtectedPath -Command $trimmedCommand)) {
        Deny-ToolCall -Rule 'FS002' -Reason 'Direct truncation or overwrite of protected project material is blocked.' -ToolName $toolName
    }

    if ($trimmedCommand -match '(?i)\brobocopy\b[^\r\n]*(?:/MIR|/PURGE)\b') {
        Deny-ToolCall -Rule 'FS003' -Reason 'Destructive robocopy mirror or purge mode is blocked.' -ToolName $toolName
    }

    if ($trimmedCommand -match '(?i)\bgit\s+(?:reset\s+--hard|clean\s+-[^\s]*[fd][^\s]*|restore\s+(?:--source\s+\S+\s+)?[."'']|checkout\s+--\s+|reflog\s+expire[^\r\n]*--expire(?:-unreachable)?(?:=|\s+)now|gc[^\r\n]*--prune(?:=|\s+)(?:now|all)|branch\s+-D\b)') {
        Deny-ToolCall -Rule 'GIT001' -Reason 'The command would discard working state or Git recovery history.' -ToolName $toolName
    }

    if ($trimmedCommand -match '(?i)\bgit\s+restore\b[^\r\n]*\s(?:--\s+)?["'']?\.(?:[\\/])?["'']?\s*$') {
        Deny-ToolCall -Rule 'GIT001' -Reason 'The command would restore over the entire working tree.' -ToolName $toolName
    }

    if ($trimmedCommand -match '(?i)\bgit\s+push\b[^\r\n]*(?:--force(?!-with-lease)(?:\s|=|$)|\s-f(?:\s|$)|--delete\b|\s-d(?:\s|$)|\s:[A-Za-z0-9._/-]+|\s\+[A-Za-z0-9._/-]+(?::[A-Za-z0-9._/-]+)?)') {
        Deny-ToolCall -Rule 'GIT002' -Reason 'Forced push or remote reference deletion is blocked.' -ToolName $toolName
    }

    if ($trimmedCommand -match '(?i)(^|[;&|\s])(?:Clear-Disk|Initialize-Disk|Remove-Partition|Remove-VirtualDisk|Format-Volume|diskpart|format(?:\.com)?|mkfs(?:\.[A-Za-z0-9]+)?|diskutil\s+(?:erase|partition|zero|secureErase)|dd\s+[^;&|]*\bof=\\?\\?\\?(?:PhysicalDrive|Device)|cipher\s+/w:)\b') {
        Deny-ToolCall -Rule 'SYS001' -Reason 'Disk, volume, or irreversible system-storage operations are blocked.' -ToolName $toolName
    }

    if ($trimmedCommand -match '(?i)\b(?:curl|wget|Invoke-WebRequest|iwr|Invoke-RestMethod|irm)\b[^\r\n|]*\|\s*(?:sudo\s+)?(?:bash|sh|zsh|pwsh|powershell(?:\.exe)?|Invoke-Expression|iex|python(?:3)?|node|ruby|perl)\b') {
        Deny-ToolCall -Rule 'NET001' -Reason 'Piping downloaded content directly into an interpreter is blocked.' -ToolName $toolName
    }

    if ($trimmedCommand -match '(?i)\bgh\s+auth\s+token\b|\b(?:bw|bws|lpass|keepassxc-cli|rbw|nordpass)\b|\bsecret-tool\s+(?:lookup|search)\b|\bGet-Secret\b|(^|[;&|\s])op\s+(?:read|run|inject|item|document|vault|signin)\b|(^|[;&|\s])pass\s+(?:show|grep|insert|edit|rm|remove)\b') {
        Deny-ToolCall -Rule 'CRED001' -Reason 'Credential-store or token extraction commands are blocked.' -ToolName $toolName
    }

    exit 0
}
