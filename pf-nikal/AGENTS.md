# PF Nikal application rules

This Git repository sits inside the wider PF Nikal hackathon workspace.

Before application work, read and follow:

1. `../AGENTS.md`
2. `../project-docs/PROJECT_STATE.md`
3. `../project-docs/PROJECT_COMPLIANCE.md` when behavior, data, integrations, or submission claims are affected

Project-local skills live at `../.agents/skills/`. A Codex session launched from this nested Git root may not discover skills above the repository boundary automatically, so read only the relevant `SKILL.md` when the outer rules route the task to one.

## Application checks

- Node.js must satisfy `>=22.13.0`.
- Use `npm test` for the current build plus rendered-skeleton verification.
- Use `npm run lint` for lint checks.
- Use `npm run build` for a production build when proportionate to the change.
- Never connect the prototype to live EPFO or other government systems. Use synthetic data and visibly disclose mocked flows.
