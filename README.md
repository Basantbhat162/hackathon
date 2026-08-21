# PF Nikal hackathon workspace

This workspace contains the Build What Moves India research, governance records, prototype, and submission material for PF Nikal.

## Start here

- Current truth and next action: [`project-docs/PROJECT_STATE.md`](project-docs/PROJECT_STATE.md)
- Documentation and source map: [`project-docs/README.md`](project-docs/README.md)
- Roadmap: [`project-docs/ROADMAP.md`](project-docs/ROADMAP.md)
- Material change history: [`project-docs/CHANGELOG.md`](project-docs/CHANGELOG.md)
- Working prototype: [`pf-nikal/`](pf-nikal/)

## Workspace map

| Path | Purpose | Authority |
|---|---|---|
| `.gitattributes`, `.gitignore` | Deterministic hook bytes and exclusions for secrets, generated data, dependencies, and temporary output | Repository controls |
| `AGENTS.md` | Concise operating rules and documentation routing for agents | Operational instructions |
| `.codex/` | Trusted project-local Codex hook configuration | Runtime security control |
| `.agents/hooks/` | Guard policy, integrity launcher, and regression tests | Security implementation |
| `.agents/skills/` | Task-triggered project workflows | Procedural guidance when invoked |
| `project-docs/` | Current state, decisions, evidence, compliance, ownership, and history | Durable project memory |
| `pf-nikal/` | Application code and tests | Implementation truth |
| `reference/` | Supplied hackathon authority and reusable workspace-design references | See `reference/README.md`; only its official-hackathon subset establishes rules |
| `research/` | Research workflows, raw results, team inputs, and outside material | Supporting material only; see `research/README.md` |
| `output/` | Generated deliverables | Reviewable artifacts, not source |
| `tmp/` | Disposable build, render, and research intermediates | Never authoritative |

## Where new files belong

| New material | Destination |
|---|---|
| Codex hook configuration | `.codex/` |
| Project guard policy or its tests | `.agents/hooks/` |
| Supplied official hackathon file | `reference/official-hackathon/` |
| Workspace or agent-design reference | `reference/workspace-design/` |
| Research procedure, prompt, or raw tool result | `research/workflows/` |
| Team interview, idea note, or working analysis | `research/team/` |
| Outside article, comment export, or unverified report | `research/external/` |
| Accepted state, decision, evidence, rights, or history | Its established owner in `project-docs/` |
| Application code or tests | `pf-nikal/` |
| Generated document intended for review | `output/` |
| Disposable script, render, cache, or intermediate | `tmp/` |

Do not add loose working files at the workspace root. If a new category genuinely does not fit, update this map before creating a new top-level folder.

## Current status

The narrowed PF Nikal Form 19 journey remains on `HOLD` until the lived-problem evidence and remaining build-state checks are settled. Read `project-docs/PROJECT_STATE.md` for the current stage instead of relying on this summary.

## Working rule

Do not scan the whole workspace to reconstruct history. Begin with the current-state file and documentation map, then open only the documents required by the active task.
