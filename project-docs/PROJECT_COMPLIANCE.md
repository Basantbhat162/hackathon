# Project compliance

Last updated: 21 August 2026

Use `PASS`, `FAIL`, or `UNCLEAR` for every mandatory check. Any `FAIL` stops the idea as written. Any `UNCLEAR` means the idea remains on HOLD until evidence settles it.

## Mandatory hackathon checks

| Check | Current status | Evidence or required action |
|---|---|---|
| Indian public-service problem | PASS | An opaque Form 19 final-settlement rejection is part of the EPFO public-service journey. |
| Problem personally faced by the team | UNCLEAR | Gaurav's statement that his uncle's PF was rejected because he could not find his Aadhaar card does not explain the rejection or prove that Gaurav handled the journey. Confirm the claimant, Form 19 submission, exact rejection/status shown, Gaurav's direct role, and what happened next. Use redacted evidence only. |
| One clear journey | PASS | Start with a blank or cryptic Form 19 rejection. Explain only what the supplied reason and official rules support, state when the cause is unknowable, prepare the evidence checklist and mock EPFiGMS grievance, then track the mocked handoff. |
| Working prototype | UNCLEAR | Must be changed to PASS only after the complete demo flow works. |
| Meaningful Codex use | UNCLEAR | Record real Codex work throughout development in `CODEX_USAGE_LOG.md`. |
| Safe mock or synthetic data | UNCLEAR | Confirm during implementation and final review. No real IDs, logins, OTPs, payments, or health data. |
| Fresh and properly licensed build | UNCLEAR | Record reused code, assets, data, and permissions. Do not submit an old project with small changes. |
| Fixes more than the interface | PASS | The proposed flow handles the decision state, evidence needed for reason retrieval, the official escalation handoff, and follow-up tracking. It does not merely redraw the EPFO portal. |
| Deliverable by 27 August 2026 | UNCLEAR | Public demo, short video, and write-up are not complete yet. |
| Designed for named users | UNCLEAR | Test mobile layout, slow connections, plain language, and limited digital experience. |
| Honest disclosure | UNCLEAR | Final submission must identify every mocked feature, dependency, and limitation. |

Current verdict: HOLD. The narrowed Form 19 claim-clarifier topic is locked for targeted research and prototyping, but it is not eligible for strategic scoring or final approval until the lived-problem check and the remaining build-state checks pass.

## Prohibited actions

- Do not access, test, scrape, or interfere with a live government system.
- Do not use undocumented private APIs.
- Do not use real Aadhaar, PAN, passwords, OTPs, payment details, health data, or government login data.
- Do not pretend a mock integration is live.
- Do not present the prototype as an official government product.
- Do not use government logos in a way that suggests approval or partnership.
- Do not use code, assets, data, or research without permission and attribution.
- Do not demonstrate a feature that does not work.

## Required submission package

- Public live demo link.
- Demo video, ideally no longer than three minutes, showing the main journey from start to finish.
- Short write-up covering the problem, affected users, solution, changes and reasoning, tools, Codex contribution, functional versus mocked parts, and known limitations.
- Repository or reviewer-access link is optional.
- Every submitted link must open without requesting access.

## Internal safeguards

These are team procedures, not extra hackathon rules:

- Use primary government sources for process rules and timelines when available.
- Keep redacted real-case evidence separate from public demo data.
- Test every claim a user may act on.
- Add visible warnings when the prototype cannot guarantee an outcome.
- Keep a fallback deployment if the main hosting service becomes unavailable.
