# Project documentation

Last updated: 21 August 2026

This folder is the durable project memory. Start with the current state, then open only the owner required by the active task.

## Startup set

1. Read `PROJECT_STATE.md` for the current objective, stage, blockers, and next action.
2. Use the task routes below to locate the authoritative owner.
3. Read raw research, generated output, or old implementation detail only when the owner links to it or the task requires it.

## Task routes

| Task | Read or update |
|---|---|
| Understand current project status | `PROJECT_STATE.md` |
| Plan, prioritize, sequence, or cut delivery work | `ROADMAP.md` and `$plan-hackathon-delivery` |
| End or resume a session | `MEMORY_POLICY.md`, then the latest temporary handoff |
| Validate or change the project idea | `PROJECT_COMPLIANCE.md`, `RESEARCH_AND_DECISION_LOG.md`, and `$validate-hackathon-idea` |
| Prepare or review the demo, video, write-up, public links, disclosures, or judge Q&A | `PROJECT_COMPLIANCE.md`, `CODEX_USAGE_LOG.md`, `CONTRIBUTION_AND_RIGHTS_LOG.md`, and `$prepare-hackathon-submission` |
| Check a product claim or research conclusion | Evidence register in `RESEARCH_AND_DECISION_LOG.md` |
| Record a lasting decision | Decision register in `RESEARCH_AND_DECISION_LOG.md` |
| Review meaningful project changes | `CHANGELOG.md` |
| Record Codex contribution | `CODEX_USAGE_LOG.md` |
| Check team identity or ownership | `TEAM_AND_ROLES.md` |
| Check assets, licenses, permissions, or outside work | `CONTRIBUTION_AND_RIGHTS_LOG.md` |
| Review or change agent security guardrails and Git recovery | `SECURITY_GUARDRAILS.md`, `.codex/hooks.json`, and `../.agents/hooks/` |
| Implement or verify the application | `../pf-nikal/`, its tests, and relevant project documents |

## Durable owners

- `PROJECT_STATE.md`: compact current truth; never a session diary.
- `ROADMAP.md`: active and upcoming milestones with exit conditions.
- `MEMORY_POLICY.md`: loading, promotion, compaction, handoff, and conflict rules.
- `PROJECT_COMPLIANCE.md`: mandatory hackathon checks and safety constraints.
- `RESEARCH_AND_DECISION_LOG.md`: accepted decisions, open questions, and evidence.
- `CHANGELOG.md`: material project changes.
- `CODEX_USAGE_LOG.md`: evidence of meaningful Codex use.
- `TEAM_AND_ROLES.md`: team and outside-contributor identities.
- `CONTRIBUTION_AND_RIGHTS_LOG.md`: rights, attribution, and permission record.
- `SECURITY_GUARDRAILS.md`: project hook architecture, enforcement scope, limitations, tests, trust, and recovery procedure.

## Source authority

When sources disagree, use this order:

1. `../reference/official-hackathon/Builder brief.md`
2. `../reference/official-hackathon/Frequently asked questions.md`
3. `../reference/official-hackathon/Website.md`
4. `../reference/official-hackathon/APPLY NOW.md` and `../reference/official-hackathon/Form reg.pdf`
5. Team research and outside comments

Only the first four levels can establish official hackathon rules. Team research, friend feedback, articles, and AI output may support decisions, but they do not create rules.

## Workspace boundaries

- The workspace root contains the single Git history; `../pf-nikal/` is the tracked application code within it.
- `../reference/` contains supplied official hackathon material and non-authoritative workspace-design references, separated by subfolder.
- `../research/workflows/` contains structured research procedures, prompts, and raw tool results.
- `../research/team/` contains team inputs and working analysis; `../research/external/` contains outside commentary and unpromoted research.
- `../output/` contains generated deliverables.
- `../tmp/` contains disposable intermediates.
- `../.agents/skills/` contains task-triggered project procedures.
- `../.codex/` and `../.agents/hooks/` contain the project-local hook configuration and tested guard implementation.

Generated, archived, vendored, temporary, and raw research material is non-authoritative unless a durable owner explicitly promotes a claim from it.

## Documentation rules

- Update the relevant owner when material work happens, not through a retrospective transcript dump.
- Link to evidence instead of copying it into several files.
- Record uncertainty, limitations, and superseded decisions explicitly.
- Do not store passwords, tokens, OTPs, government identifiers, payment details, private health information, or unnecessary personal data.
- Keep the startup set compact. Move closed detail into the changelog, decision register, evidence register, code, or version-control history.
