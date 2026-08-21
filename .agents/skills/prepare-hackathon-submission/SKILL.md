---
name: prepare-hackathon-submission
description: Prepare or review the Build What Moves India demo, short video, submission write-up, public links, narration, disclosures, or judge Q&A. Use for submission planning, pitch rehearsal, demo scripting, readiness checks, and final delivery work. Do not trigger for routine coding, early idea selection, or unrelated presentation work.
---

# Prepare hackathon submission

Build a concise, truthful submission package around the one working user journey. Treat presentation as evidence of the product, not a substitute for it.

## Establish the required package

1. Read `project-docs/PROJECT_STATE.md` and route through `project-docs/README.md`.
2. Read `project-docs/PROJECT_COMPLIANCE.md`, the relevant official submission material, `project-docs/CODEX_USAGE_LOG.md`, and `project-docs/CONTRIBUTION_AND_RIGHTS_LOG.md`.
3. Inspect the current application, tests, deployment state, and candidate deliverables before claiming that anything works or opens publicly.
4. Confirm the current required package from official sources. At present it includes a public demo link, a short video ideally no longer than three minutes, and a write-up; repository access is optional.
5. Keep the project on `HOLD` while mandatory evidence or build-state checks remain unclear. Do not use pitch wording to bypass a compliance gap.

## Build the truthful story

Use one chronological journey:

1. Name the affected user and the exact starting problem.
2. Show why the current process fails using verified evidence or clearly identified lived experience.
3. Demonstrate the working journey from its first input to its final state.
4. Make the improvement visible in the first minute when possible.
5. State what changed, why it changed, and what remains limited.
6. Explain Codex's actual contribution using the usage log and inspected outputs.

Use a measured before-and-after claim only when the measurement exists. Do not add emotional claims, statistics, market claims, business models, or technical superlatives without evidence or an explicit requirement.

## Verify every deliverable

### Public demo

- Open the submitted URL without an access request or private login.
- Complete the main journey from start to finish.
- Check mobile layout, slow-network behavior, accessibility, failure states, and visible mock disclosure.
- Confirm that no real Aadhaar, PAN, OTP, password, payment, health, or government-login data appears.

### Video

- Show the actual product rather than static designs alone.
- Keep the main journey chronological and readable within the official time guidance.
- Use captions or labels where they improve comprehension.
- Label mocked or synthetic behavior at the moment it appears.
- Keep a fallback recording, but never treat it as a replacement for the required public demo.

### Write-up

Cover:

- the problem and affected users;
- the solution and one main journey;
- what changed and why;
- tools used and Codex's contribution;
- what is functional, mocked, synthetic, limited, or unknown;
- evidence for factual and measurable claims;
- asset, dependency, and data rights;
- known limitations and next work.

### Judge Q&A

Prepare short, direct answers about correctness sources, privacy, architecture, failure behavior, accessibility, mock boundaries, scaling limits, dependency risks, measured improvement, and Codex use. Acknowledge a real limitation instead of redirecting away from it.

## Stop false or unsafe claims

Never claim that:

- the prototype accessed or changed a live government system;
- a mock grievance was actually filed;
- PF recovery or grievance success is guaranteed;
- the prototype is an official EPFO or government product;
- a feature, test, deployment, source, or measurement was verified when it was not;
- an attractive video makes an incomplete flow submission-ready.

## Return the readiness report

Return:

1. `READY`, `NOT READY`, or `BLOCKED BY EVIDENCE` for the submission package, without replacing the compliance verdict;
2. a table of each artifact with `verified`, `unverified`, or `missing` status and evidence;
3. the chronological demo script;
4. claims and disclosures that must appear;
5. judge Q&A risks;
6. items to cut;
7. the smallest action that most improves readiness.

When the user asks to create or revise deliverables, make only those requested changes and verify the produced artifacts. Update durable owners when the evidence, compliance state, delivery state, rights record, or Codex contribution materially changes.
