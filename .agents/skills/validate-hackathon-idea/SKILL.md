---
name: validate-hackathon-idea
description: Validate, compare, recommend, defend, reject, or materially change a Build What Moves India project idea using the official compliance gate and the team's separate strategic score. Use whenever project ideas or major scope changes are being evaluated. Do not trigger for routine implementation inside an already accepted scope.
---

# Validate a hackathon idea

Read `project-docs/PROJECT_COMPLIANCE.md` and the relevant official source before treating any claim as a rule. A teammate statement, research result, or earlier AI answer is not an official rule.

## State the idea

Describe one user, one public-service problem, and one end-to-end journey in one sentence.

## Stage 1: mandatory compliance gate

Label every item `PASS`, `FAIL`, or `UNCLEAR`. Say what failed or what evidence is missing.

1. **Public-service scope:** The problem belongs to an Indian public-service website or digital service, or simplifies resident-administration interaction.
2. **Lived problem:** A team member actually faced or directly handled the problem.
3. **One journey:** A judge can complete one defined user journey from start to finish.
4. **Working prototype:** Every demonstrated feature works. The submission is not design-only and does not fake live integration.
5. **Meaningful Codex use:** The build and write-up can show what Codex contributed.
6. **Data and access safety:** Use synthetic or mock personal data, payments, OTPs, and government-system states. Never access, test, or scrape live government systems or undocumented private APIs.
7. **Clean build:** Use fresh code and hold rights to every asset, dependency, and dataset.
8. **Process depth:** Fix a process, rule, state, or backend problem rather than merely redrawing the interface.
9. **Deliverability:** By 27 August 2026, provide a public demo link, a short video, and the required write-up. Repository access is optional.
10. **Named users:** Account for mobile devices, slow connections, and limited digital experience.
11. **Honest disclosure:** State what is functional, mocked, limited, or unknown.

Any `FAIL` stops the idea as written. Any `UNCLEAR` produces `HOLD`. Never upgrade an unknown by assumption. Do not calculate the strategic score until every mandatory item passes.

## Stage 2: strategic quality score

Score each item `0`, `1`, or `2` and justify the score:

1. AI necessity.
2. Demo value visible in under 60 seconds.
3. Measurable improvement in steps, time, or failures avoided.
4. Fit for the team and remaining time.
5. Differentiation from predictable submissions.
6. Correctness risk and the quality of published rules.
7. Evidence quality for claims and numbers.
8. Scope discipline around one journey.

Total the score out of 16:

- 12 to 16: `PASS - strong candidate`.
- 10 to 11: `PASS - worth developing`.
- 8 to 9: `PASS - but needs refinement`, naming the required fix.
- Below 8 with the gate clear: `REJECT - valid but strategically weak`.
- Any mandatory `UNCLEAR`: `HOLD - important unknowns`.
- Any mandatory `FAIL`: `FAIL - does not meet hackathon requirements`.

`FAIL` means a rule problem. `REJECT` means the idea qualifies but is not worth building.

## Return the verdict

Give the idea sentence, gate results, score when allowed, verdict, main reasons, weakest dependency, and the exact change required. Do not patch a fundamentally ineligible idea with presentation language.
