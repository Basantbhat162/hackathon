# PF Nikal application rules

This application directory is tracked by the Git repository at the PF Nikal hackathon workspace root.

Before application work, read and follow:

1. `../AGENTS.md`
2. `../project-docs/PROJECT_STATE.md`
3. `../project-docs/PROJECT_COMPLIANCE.md` when behavior, data, integrations, or submission claims are affected

Project-local skills live at `../.agents/skills/`. Read only the relevant `SKILL.md` when the root rules route the task to one. Project-local tool guardrails live at `../.codex/` and `../.agents/hooks/`.

## Application checks

- Node.js must satisfy `>=22.13.0`.
- Use `npm test` for the current build plus rendered-skeleton verification.
- Use `npm run lint` for lint checks.
- Use `npm run build` for a production build when proportionate to the change.
- Never connect the prototype to live EPFO or other government systems. Use synthetic data and visibly disclose mocked flows.
