---
name: tdd
description: Implement behavior through a red-green-refactor loop using tests at stable public seams. Use when the user requests test-first development, red-green-refactor, regression coverage, or implementation of rule-heavy, validation, transformation, privacy, or state-transition logic where tests define behavior. Do not trigger for exploratory prototypes, documentation-only work, or purely visual CSS changes unless requested.
---

# Test-driven development

Use tests to define externally observable behavior, not implementation structure.

## Choose the seam

1. Identify the smallest public function, route, component boundary, or state transition that expresses the behavior.
2. Agree on inputs, outputs, errors, and relevant side effects.
3. Prefer realistic integration at that seam over mocks of internal collaborators.

## Red

- Write one failing test for one behavior.
- Run it and confirm that it fails for the expected reason.
- If it passes before implementation, fix the test or identify existing behavior.

## Green

- Write the smallest production change that makes the test pass.
- Run the focused test after each meaningful change.
- Do not add speculative abstractions or unrelated cleanup.

## Refactor

- Improve names and structure while keeping behavior unchanged.
- Run the focused test and proportionate broader checks.
- Add another test only for a distinct behavior, boundary, or previously observed regression.

Avoid tautological tests, private-method tests, snapshots with no reviewed contract, and mocks that merely restate the implementation.

Report the behavioral seam, red failure, minimal implementation, checks run, and any behavior not covered.

This workflow was adapted for this workspace after reviewing the MIT-licensed `tdd` skill: https://github.com/mattpocock/skills/tree/main/skills/engineering/tdd
