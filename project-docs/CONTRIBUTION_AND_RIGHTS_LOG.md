# Contribution and rights log

Last updated: 21 August 2026

This file supports attribution and permission tracking. It is not a legal agreement.

## Contribution log

Add one row when a team member or outside person contributes research, an idea, code, copy, design, testing, data, or an asset that affects the project.

| Date | Contributor | Team status | Contribution | Evidence or file | Used in project? | Permission or licence | Reviewed by |
|---|---|---|---|---|---|---|---|
| 2026-08-20 | Basant Bhat | Official team member | Directed creation of the documentation foundation and supplied team roles | `project-docs/` | Yes | Team work | Basant Bhat |
| 2026-08-20 | Codex | Development tool | Drafted the documentation files under Basant's direction | `project-docs/` | Yes | Tool-assisted output, human review required | Basant Bhat |
| 2026-08-20 | Basant Bhat | Official team member | Selected Comet Browser and Perplexity Deep Research for organized idea research and supplied the Crawlee repository for later review | `research/workflows/` | Yes | Team work | Basant Bhat |
| 2026-08-20 | Codex | Development tool | Analyzed the supplied tool instructions and created the staged prompt and result workspace | `research/workflows/` | Yes | Tool-assisted output, human review required | Basant Bhat |
| 2026-08-21 | Basant Bhat | Official team member | Selected the external hooks repository as a conceptual guardrail reference and authorized project-local implementation and GitHub backup | `project-docs/SECURITY_GUARDRAILS.md`; Git history | Yes | Team direction | Basant Bhat |
| 2026-08-21 | Codex | Development tool | Wrote the Windows-specific project hook, launcher, regression tests, security documentation, and Git recovery setup under Basant's direction | `.codex/`; `.agents/hooks/`; `project-docs/SECURITY_GUARDRAILS.md` | Yes | Tool-assisted team output; hook trust reviewed by Basant on 21 August 2026 | Basant Bhat |

## Outside contributor rule

Pappu, Prashant, and other friends remain outside contributors unless the official registration changes. Record their exact contribution before using it.

For text, code, designs, images, datasets, recordings, or other material from an outside contributor, store written permission or a valid licence reference. A verbal suggestion should still be attributed in this log if it materially changes the project.

## Code, asset, and data register

| Item | Type | Source or creator | Licence or permission | Where used | Status |
|---|---|---|---|---|---|
| Project documentation | Text | Basant Bhat with Codex assistance | Team-created | `project-docs/` | Review required |
| Research prompt pack | Text | Basant Bhat with Codex assistance | Team-created | `research/workflows/` | Review required |
| Crawlee | External software, deferred | Apify | Apache License 2.0 according to the official repository | Not installed or used | Deferred |
| `davidondrej/skills` hooks | External conceptual reference | David Ondrej | MIT License in the official repository; no source file copied into this workspace | Guard architecture review and attribution only | Referenced, not imported |
| PF Nikal project guardrails | Code and documentation | Basant Bhat with Codex assistance | Team-created Windows-specific implementation | `.codex/`; `.agents/hooks/`; `project-docs/SECURITY_GUARDRAILS.md` | Hook trusted and active; final submission review still required |

Before submission, verify every register entry and remove anything whose rights or source cannot be confirmed.
