# Workspace security guardrails

Last updated: 21 August 2026

This document owns the project-local protection model for agent tool calls and Git recovery. The guard is defense in depth. It does not make unrestricted execution tamper-proof, and it does not replace Codex sandboxing or approval controls.

## Implemented architecture

| Layer | Path or system | Purpose |
|---|---|---|
| Agent rules | `../AGENTS.md` | Tells future agents how to place files, preserve unrelated work, and verify changes |
| Pre-tool hook | `../.codex/hooks.json` | Runs the guard before `Bash` and `apply_patch` tool calls |
| Integrity launcher | `../.agents/hooks/invoke-pre-tool-use-guard.ps1` | Verifies the guard script against the hash recorded in the trusted hook configuration |
| Guard policy | `../.agents/hooks/pre-tool-use-guard.ps1` | Parses the hook payload and returns an explicit `deny` decision for blocked operations |
| Regression tests | `../.agents/hooks/tests/` | Exercises dangerous and ordinary commands through the process and configured-hook seams |
| Recovery history | repository root `.git/` and GitHub `origin` | Keeps code, documentation, research, and guardrails in one rollback history |

The project hook is based on the official Codex `PreToolUse` mechanism. The external [davidondrej/skills hooks](https://github.com/davidondrej/skills/tree/main/hooks) repository was used as a conceptual reference. Its Bash implementation was not copied; this project uses a Windows PowerShell implementation with project-specific paths and tests.

## What the guard blocks

- Recursive deletion outside the literal `tmp/` and `output/` trees.
- Deletion, movement, truncation, or direct overwrite of protected project material.
- Broad or destructive Git operations, including hard reset, destructive clean, broad restore, reflog expiry, force push, and remote branch deletion. `--force-with-lease` remains allowed.
- Disk clearing, volume formatting, `diskpart`, and destructive `robocopy` mirror or purge operations.
- Download-and-execute pipelines, credential-token output, password-manager reads, encoded PowerShell, and common inline Python, Node, or Deno deletion calls.
- `apply_patch` file deletions outside `tmp/` and `output/`.
- Missing commands and malformed hook input. These fail closed.

Ordinary reads, tests, builds, normal Git pushes, regular source edits, and cleanup scoped to `tmp/` or `output/` remain allowed. A denial is recorded in `.codex/guardrail-denials.log`; the log is ignored by Git and does not store command text.

## Activation and trust

Codex requires project hooks to be reviewed and trusted. In Codex, open `/hooks`, review the project `PreToolUse` entry, and trust the exact configuration hash. Do not use a hook-trust bypass. A new task or app restart may be required after first installation.

Activation status: Basant reported on 21 August 2026 that `/hooks` showed all three installed `PreToolUse` hooks active and the project entry checked with matcher `^(Bash|apply_patch)$` from `~\Downloads\ChatGPT india hackathon\.codex\hooks.json`.

Trust is hash-based. Changing `.codex/hooks.json` invalidates the earlier trust decision. Changing the guard script without updating its SHA-256 value in `.codex/hooks.json` causes the launcher to deny the tool call with `INTEGRITY001`.

## Verification

Run both suites from the repository root:

```powershell
powershell.exe -NoProfile -NonInteractive -ExecutionPolicy Bypass -File .agents\hooks\tests\guard-tests.ps1
powershell.exe -NoProfile -NonInteractive -ExecutionPolicy Bypass -File .agents\hooks\tests\hook-config-tests.ps1
```

The first suite verifies rule behavior using command strings as data; it does not execute the dangerous commands. The second parses the real hook configuration, checks the trusted hash, and verifies one blocked and one allowed command through the configured launcher.

When intentionally changing the guard:

1. Update or add a failing behavior test first.
2. Change `pre-tool-use-guard.ps1` and make the behavior suite pass.
3. Calculate its SHA-256 hash and replace `ExpectedGuardHash` in `.codex/hooks.json`.
4. Run both suites, review the Git diff, commit, and push.
5. Review and trust the changed hook configuration again in `/hooks`.

## Git rollback

The repository root is the single Git boundary. `pf-nikal/`, documentation, research, and guardrails now share history. `origin` is `https://github.com/Basantbhat162/hackathon.git`; the verified baseline commit is `eb257e58aecd1b3942885f20d22c4a93bafb2486`.

Inspect before restoring:

```powershell
git status --short
git log --oneline --decorate -n 10
git diff eb257e58aecd1b3942885f20d22c4a93bafb2486..HEAD
```

Restore a specific path rather than the whole workspace:

```powershell
git restore --source <commit> -- <specific-path>
```

Do not use hard reset, destructive clean, broad restore, or force push as routine rollback tools. Create a new recovery commit so the rollback itself stays reviewable.

## Limits and response

- In unrestricted execution mode, project files—including the hook and its launcher—can still be modified or removed by a sufficiently privileged process. The integrity hash catches accidental or single-file guard changes, not a coordinated rewrite of every trusted component.
- The hook sees `Bash` and `apply_patch` requests. It cannot prove what every arbitrary executable, GUI action, plugin, or external service will do.
- Pattern matching can produce false positives or miss a novel destructive spelling. Treat the tests as regression evidence, not a security proof.
- Global hooks may run alongside this project hook; they are separate controls and were not changed by this implementation.
- No sandbox, approval-policy, global Codex configuration, credential store, or operating-system policy was changed.

If the guard blocks legitimate work, preserve the denial rule ID, add a narrow regression case, and change the rule through the tested update procedure. Do not disable the hook to get past it.
