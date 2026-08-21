---
name: plan-hackathon-delivery
description: Plan, prioritize, sequence, or cut work for the Build What Moves India prototype under a fixed deadline. Use for MVP scope, milestone planning, architecture sequencing, feature tradeoffs, team parallelization, or feature-freeze decisions. Do not trigger for routine implementation, simple bug fixes, prose editing, or submission presentation work.
---

# Plan hackathon delivery

Turn the accepted project scope into a small, judgeable build plan with evidence, exit conditions, and a protected submission buffer.

## Establish the current boundary

1. Read `project-docs/PROJECT_STATE.md` and use `project-docs/README.md` to locate the relevant owners.
2. Read `project-docs/ROADMAP.md`, `project-docs/PROJECT_COMPLIANCE.md`, and only the affected decisions or evidence in `project-docs/RESEARCH_AND_DECISION_LOG.md`.
3. Inspect the current code and tests before treating an implementation claim as true.
4. Treat official hackathon material as the only source of mandatory rules. Treat research notes and the raw winning-playbook document as non-authoritative strategy input.
5. Preserve the current compliance verdict. Change it only through the compliance owner with direct evidence.

If the proposal changes the public-service problem, replaces the user journey, or adds another journey, run `$validate-hackathon-idea` before planning delivery.

## Define the judgeable outcome

State:

- the named user and starting problem;
- the single end-to-end journey;
- the visible result a judge can verify without narration;
- what is functional, mocked, synthetic, unknown, or out of scope;
- the current baseline and intended improvement when they can be measured;
- the real deadline, available people, dependencies, and unresolved permissions.

Do not invent a deadline, metric, owner, available hour, or implementation state.

## Set the cut line

Classify proposed work:

- **Must build:** required for the official deliverable, the one working journey, safety, disclosure, or verification.
- **Build if time remains:** improves clarity, resilience, accessibility, or measured demo value without expanding the journey.
- **Cut:** adds another journey, depends on unapproved access, hides a mock, duplicates existing value, introduces unjustified infrastructure, or exists mainly for visual spectacle.

Do not require a particular framework, authentication service, database, design tool, sponsor API, business model, or presentation style unless the current project establishes the need. Never recommend interacting with a live government system.

## Sequence the work

1. Define shared state, payload, and interface contracts before parallel implementation.
2. Build the thinnest complete vertical slice through the main journey.
3. Add rule-heavy behavior with focused tests and cite the source for each actionable rule.
4. Verify mobile layout, slow-network behavior, accessibility, failure states, and mock disclosure where they exist.
5. Assign an owner, dependency, and observable exit condition to each milestone.
6. Set a feature-freeze point from the actual deadline. Reserve enough time for regression checks, deployment, the video, write-up, link checks, and rehearsal. Do not impose a generic percentage formula.
7. After the freeze, accept only fixes needed for the required journey, safety, truthfulness, or submission access.

Prefer removing work over compressing several uncertain features into the same remaining time.

## Return the delivery plan

Return:

1. verified context and unresolved facts;
2. the judgeable journey and demo proof;
3. a `Must build`, `Build if time remains`, and `Cut` table;
4. ordered milestones with owners, dependencies, and exit conditions;
5. verification requirements;
6. the feature-freeze point and protected submission work;
7. blockers, approvals, and the smallest safe next action.

If the user asks to adopt the plan, update only the established durable owners affected by accepted changes. Otherwise keep the response read-only. Do not continue into implementation unless the request includes it.

## Reject misleading tactics

- Do not promise that a tactic will win.
- Do not present event-specific advice from another hackathon as a rule here.
- Do not fake a live integration, successful grievance, official affiliation, or product outcome.
- Do not hide hardcoded behavior. Label synthetic and mocked states plainly.
- Do not optimize presentation at the expense of the required working prototype.
- Do not prescribe sleep deprivation or unsafe working practices.
