---
name: diagnosing-bugs
description: Diagnose difficult, unclear, recurring, intermittent, or performance-related software failures by reproducing them, testing falsifiable hypotheses, and preserving regression evidence. Use when the cause is uncertain or an earlier fix failed. Do not trigger for a simple syntax, formatting, or compile error whose cause and repair are already obvious.
---

# Diagnosing bugs

Find the cause before committing to a fix. Keep the investigation narrow, observable, and reversible.

## Build a feedback loop

1. Restate the observed failure and the expected behavior.
2. Identify the fastest reliable command, request, or interaction that reproduces it.
3. Record the environment and inputs that affect reproduction. Redact secrets and personal data.
4. Minimize the case without removing the failure.

## Test hypotheses

1. List a small set of plausible causes in probability order.
2. State what observation would support or falsify each cause.
3. Change one variable or add one temporary observation point at a time.
4. Inspect the boundary nearest the failure before widening the search.
5. Stop pursuing a hypothesis when evidence contradicts it.

Do not make several speculative fixes together. Do not treat correlation, a disappearing error, or one successful retry as proof.

## Fix and prove

1. Apply the smallest change that addresses the supported cause.
2. Add or improve a regression test at a stable public seam when practical.
3. Run the reproduction first, then the relevant focused tests, then proportionate broader checks.
4. Remove temporary logging, instrumentation, fixtures, and debugging flags.
5. Report the cause, evidence, change, tests run, and remaining uncertainty.

If reproduction is impossible, say what evidence is missing and propose the smallest next observation. Do not invent certainty.

This workflow was adapted for this workspace after reviewing the MIT-licensed `diagnosing-bugs` skill: https://github.com/mattpocock/skills/tree/main/skills/engineering/diagnosing-bugs
