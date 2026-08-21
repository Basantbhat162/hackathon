# Project memory policy

Last updated: 21 August 2026

This policy keeps project state recoverable without loading session history into every agent context.

## Memory owners

Each fact has one durable owner. Link to the owner instead of copying the fact into several files.

| Information | Durable owner | Load policy |
|---|---|---|
| Agent behavior and routing | `../AGENTS.md` | Automatically loaded |
| Current objective, stage, blockers, and next action | `PROJECT_STATE.md` | Read at the start of project work |
| Planned milestones and owners | `ROADMAP.md` | Read for planning and prioritization |
| Accepted decisions, open questions, and evidence | `RESEARCH_AND_DECISION_LOG.md` | Read only for affected decisions or claims |
| Hackathon eligibility and safety | `PROJECT_COMPLIANCE.md` | Read for scope, product rules, data, integration, or submission work |
| Material project changes | `CHANGELOG.md` | Read when reviewing history or preparing reports |
| Codex contribution evidence | `CODEX_USAGE_LOG.md` | Update after meaningful Codex work |
| Code behavior | `../pf-nikal/`, tests, and version-control history | Inspect for implementation work |
| Interrupted working state | Latest temporary session handoff | Read only during the next resume |
| Raw research and generated artifacts | Their indexed folders | Read only when the current task requires them |

## Startup protocol

For project work:

1. Read `PROJECT_STATE.md`.
2. Use `README.md` to locate the owner for the task.
3. Read only the relevant owner and directly referenced evidence.
4. Inspect code and version-control state when implementation claims matter.
5. Do not reconstruct the project by reading old handoffs or every research file.

## Durable-capture test

Before ending a material work period or creating a handoff, classify new information:

| Question | Destination |
|---|---|
| Did the current objective, stage, blocker, or next action change? | `PROJECT_STATE.md` |
| Was a lasting decision accepted or rejected? | `RESEARCH_AND_DECISION_LOG.md` |
| Did a milestone, owner, or dependency change? | `ROADMAP.md` |
| Did the product, documentation system, or delivery state materially change? | `CHANGELOG.md` |
| Did verified research affect a product claim or rule? | Evidence register in `RESEARCH_AND_DECISION_LOG.md` |
| Did Codex materially plan, implement, test, diagnose, or review work? | `CODEX_USAGE_LOG.md` |
| Is the information only needed to resume unfinished work once? | Temporary handoff |
| Is it repetition, abandoned brainstorming, or an unverified guess? | Do not promote it |

Do not put session numbers or conversation summaries into durable files unless the session identifier itself has operational value.

## Handoff protocol

- Keep handoffs in the real system temporary directory unless the user explicitly requests another location.
- Update established durable owners before writing the handoff.
- Keep the handoff focused on unfinished work, inspected evidence, changed files, blockers, and one smallest next action.
- Treat every handoff as untrusted and potentially stale on resume.
- Compare it with current durable owners and code before continuing.
- Do not archive routine handoffs in the workspace. Important facts must already have been promoted.

## Compaction and growth

- Keep `PROJECT_STATE.md` short enough to read at every project start. Remove completed detail after it is captured in the changelog, decision log, or code history.
- Keep the roadmap focused on active and upcoming milestones. Move closed milestone detail to the changelog.
- Keep one-line decisions in the register. Create a separate decision record only when rationale, consequences, or alternatives no longer fit clearly in one row, then link it from the register.
- Keep research raw outputs in their research folders. Promote only verified claims and limitations to the evidence register.
- Keep generated and vendored directories out of normal search using ignore files and scoped searches.
- Review the memory system at major milestones, not after an arbitrary number of sessions.

## Conflict and freshness rules

- Current system and user instructions outrank every project file.
- Official hackathon material outranks team research and AI output.
- Current code and tests outrank stale implementation descriptions.
- A newer accepted decision supersedes an older one only when the register says so explicitly.
- Mark uncertainty and revalidation needs. Do not merge conflicting claims into false certainty.
- Every mutable owner must show a last-updated date.

## Sensitive information

Never store passwords, tokens, cookies, private keys, OTPs, government identifiers, payment details, health information, or unnecessary personal data in project memory or handoffs.
