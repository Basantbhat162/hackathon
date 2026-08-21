---
name: blast-radius
description: Assess a proposed or completed high-risk change across callers, data, interfaces, deployment, rollback, privacy, and user-visible behavior, then prove the most important safety claim. Use explicitly before broad refactors, schema or state changes, external integrations, authentication work, deployments, or destructive operations. Do not use for routine local edits.
---

# Blast radius

Treat this as a focused safety review, not a generic checklist.

## Define the change

- State what changes and what must remain unchanged.
- Identify the trust boundary, persistent state, external dependency, or shared interface involved.
- Name the most serious plausible failure in concrete terms.

## Trace affected surfaces

Inspect only relevant surfaces:

- direct and indirect callers;
- public types, routes, commands, and configuration;
- stored data, migrations, cache state, and cleanup paths;
- authentication, authorization, secrets, and personal data;
- retries, idempotency, concurrency, partial failure, and rollback;
- mobile, slow-network, accessibility, or compatibility behavior when user-facing;
- monitoring, deployment, and recovery procedures.

If the change introduces a state, identify its inverse, expiry, cancellation, or cleanup path.

## Prove one key claim

Choose the highest-value safety claim and verify it with direct evidence. Prefer an executable test, a real call path, a migration dry run, a dependency search, or an inspected artifact. Do not accept the implementation's self-report as proof.

## Return the review

Report:

1. the change boundary;
2. affected surfaces;
3. the strongest risk;
4. evidence gathered;
5. required mitigation or rollback;
6. unresolved uncertainty.

Do not implement unrelated improvements during this review.

This workflow was adapted for this workspace after reviewing the MIT-licensed Pstack `blast-radius` skill: https://github.com/cursor/plugins/tree/main/pstack/skills/blast-radius
