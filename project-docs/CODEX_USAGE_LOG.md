# Codex usage log

Last updated: 21 August 2026

The hackathon requires Codex to be meaningfully involved in the prototype. This is the team's evidence log. Record actual work only. Do not claim that Codex completed work that a person or another tool completed.

## Entries

| Date | Team member | Task | What Codex did | Human review or change | Output or file | Status |
|---|---|---|---|---|---|---|
| 2026-08-20 | Basant Bhat | Establish project documentation | Converted team information and official rules into structured team, compliance, attribution, research, and usage records | Basant supplied the facts and must confirm names, roles, and wording | `project-docs/` | Drafted |
| 2026-08-20 | Basant Bhat | Design external research pipeline | Analyzed the supplied Comet Browser and Deep Research instructions, coordinated independent prompt reviews, created staged research prompts, and added evidence and safety controls | Basant chose the tools and purpose; the team must run the prompts, preserve results, and review every source | `research/workflows/` | Prompt pack ready |
| 2026-08-20 | Basant Bhat | Review Stage 1 external research | Audited both raw results, found incomplete evidence cards, citation mismatches, conflicting statistics, outdated workflow claims, and overstrong evidence labels; created two independent targeted second-run prompts | Basant ran the external prompts and supplied the raw outputs; the team must run the final audits and confirm lived experience | `research/workflows/shared/STAGE1_ASSESSMENT.md`; `research/workflows/*/prompts/*05*` | Second run required |
| 2026-08-21 | Basant Bhat | Build the workspace memory and skill foundation | Audited the bloated agent instructions and current documentation, separated task-specific writing and idea-validation workflows into local skills, added debugging, change-risk, decision-grilling, and TDD skills, and established current-state, roadmap, changelog, memory-promotion, and handoff rules | Basant requested the restructuring and must review whether the new invocation boundaries match the team's working preferences | `AGENTS.md`; `.agents/skills/`; `project-docs/README.md`; `project-docs/MEMORY_POLICY.md`; `project-docs/PROJECT_STATE.md`; `project-docs/ROADMAP.md`; `project-docs/CHANGELOG.md` | Implemented and structurally validated; user review pending |
| 2026-08-21 | Basant Bhat | Adapt the raw hackathon winning playbook | Audited the playbook against official authority and project safeguards, rejected unrelated or unsafe advice, created focused delivery-planning and submission-preparation skills with implicit invocation, added minimal routing, and moved the unchanged raw source into research storage | Basant authorized adoption of the project-relevant recommendations; the team must still choose real milestone dates, owners, and submission artifacts | `.agents/skills/plan-hackathon-delivery/`; `.agents/skills/prepare-hackathon-submission/`; `AGENTS.md`; `project-docs/RESEARCH_AND_DECISION_LOG.md`; `research/team/hackathon-winning-playbook.md` | Implemented and structurally validated |
| 2026-08-21 | Basant Bhat | Organize the workspace | Classified material by authority and lifecycle, consolidated official references and research into indexed folders, repaired durable references, and added placement rules that prevent new root clutter | Basant requested a durable organization scheme; future work must follow the new root and folder maps | `README.md`; `AGENTS.md`; `reference/`; `research/`; `project-docs/` | Implemented and verified |
| 2026-08-21 | Basant Bhat | Add workspace guardrails and rollback history | Assessed the linked hook design against Windows and official Codex hook behavior, implemented and tested a project-local `PreToolUse` guard, consolidated the workspace into one Git history, created a baseline commit, and pushed `main` to GitHub | Basant chose project-local hooks, explicitly excluded sandbox changes, and verified in `/hooks` that the project entry was checked and active | `.codex/hooks.json`; `.agents/hooks/`; `project-docs/SECURITY_GUARDRAILS.md`; Git commits and `origin/main` | Implemented, tested, trusted, and active |

## What to record

- Feature planning that affects the prototype.
- Code written or changed with Codex.
- Bugs diagnosed and fixed with Codex.
- Tests, security reviews, accessibility checks, and performance work.
- Important rejected suggestions and the reason they were rejected.
- Human review, corrections, and final decisions.

## What not to record

- Passwords, tokens, OTPs, government IDs, or private personal data.
- Inflated statements such as "Codex built the whole project" unless that is literally true and can be shown.
- Routine chat that did not affect the submitted prototype.

Screenshots, task history, commits, or prompt summaries may be linked as supporting evidence. The official rules require an explanation of Codex's contribution, but they do not state that screenshots or full prompt transcripts are mandatory.
