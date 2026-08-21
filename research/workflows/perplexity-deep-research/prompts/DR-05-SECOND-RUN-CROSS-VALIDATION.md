# DR-05: second-run cross-validation

Copy everything below this line into Perplexity Deep Research. Run it independently from CB-05. Do not paste CB-05 results into this prompt.

---

Today is 20 August 2026. Perform a final independent cross-validation of nine candidate problems for the Build What Moves India hackathon. This is a narrow evidence audit, not broad idea generation.

Use current primary documents wherever possible. Open and verify the underlying source. Do not rely on the first discovery run's conclusions.

## Candidates

1. S2-C00, PF Nikal: EPFO claim-rejection diagnosis, official correction guidance, and a mock EPFiGMS escalation.
2. S2-C01, CPGRAMS non-substantive closure: understand the closure, use current feedback and appeal mechanisms, and prepare the next action.
3. S2-C02, UDID medical-assessment queue opacity: explain the current stage, preparation, and allowed follow-up through a synthetic queue.
4. S2-C03, BBMP property-tax failed or duplicate payment reconciliation: guide evidence collection, ticketing, approval, and refund states with synthetic payments.
5. S2-C04, CRS hospital-to-registrar handoff: show whether required birth or death registration steps occurred using synthetic records.
6. S2-C05, e-Shram registration barriers: diagnose current identity, mobile, bank, occupation, language, or assisted-registration problems with synthetic profiles.
7. S2-C06, Parivahan mobile-number recovery: route a user with an unavailable old number through the current official recovery path.
8. S2-C07, PDS e-KYC mismatch: explain the official exception, field-verification, correction, or appeal path in one specific state.
9. S2-C08, National Scholarship Portal authentication and status diagnostics: map current OTR, face-authentication, eligibility, and error recovery.

## Required corrections

- Verify CPGRAMS using the current 21-day rule, feedback-triggered appeal, and actual 2026 NextGen status. Do not use an outdated 30-day claim.
- Verify whether a narrower closure-quality problem remains after current CPGRAMS reforms.
- Do not invent a UDID wait duration. Separate `no fixed timeline` from measured wait evidence.
- Treat BBMP refund policy as proof of workflow, not proof of failure frequency.
- Resolve CRS registration-rate contradictions using original official data.
- Verify Parivahan alternate recovery and RTO approval before claiming lockout.
- Use state-specific official PDS rules before claiming benefit suspension or appeal rights.
- Treat NSP error existence separately from error prevalence.
- For PF Nikal, replace commercial fix guidance with current official EPFO documents and distinguish a real rejection reason from an Aadhaar story that does not explain rejection.

## Evidence standard

- Tier A: current official law, rule, manual, notification, FAQ, report, audit, parliamentary material, court record, or public-authority page.
- Tier B: peer-reviewed or method-based institutional research.
- Tier C: reputable reporting that identifies original evidence.
- Tier D: a first-person public account, which proves only that the experience was reported.
- Tier E: commercial guides, marketing pages, copied articles, and AI summaries, which may supply leads but not decisive claims.

For every material claim, require at least one Tier A source where one should exist and one independent source for recurrence. If this standard is not met, mark the candidate `UNVERIFIED` or `PARTIALLY VERIFIED`.

Do not use old evidence to establish a current problem without later confirmation. Do not classify a PRS summary or a media summary of a CAG report as the original government document. Do not count syndicated copies as independent sources.

## Hackathon boundary

- One Indian public-service problem.
- One named user and one complete journey.
- More than an interface redesign.
- No live government integration, private API, real credential, real Aadhaar or PAN, OTP, payment, health data, or other sensitive personal information.
- A working prototype using mock or synthetic data that three people can build by 27 August 2026.
- Mobile, slow-network, and limited-digital-experience users must be considered.
- Team lived experience cannot be proved by web research. Mark it `TEAM CONFIRMATION REQUIRED`.
- Do not apply the numeric strategic score because the mandatory lived-problem gate is not yet cleared.
- Do not import rules from any other hackathon.

## Questions for each candidate

1. What exact current journey is documented?
2. What exact process, rule, state, responsibility, or handoff fails?
3. Is the cause proven or inferred?
4. How current and widespread is the problem?
5. What has the government already changed?
6. What exact competing tools or guides already exist?
7. What evidence-backed gap remains?
8. What is the smallest safe working prototype?
9. What must be mocked?
10. Is runtime AI essential, helpful, unnecessary, or unproven?
11. What harm could wrong guidance cause?
12. What must the team personally confirm?

## Output

Return a complete Markdown report. Do not refer to omitted or underlying notes.

### Audit matrix

| ID | One journey | Primary evidence | Independent recurrence evidence | Current or historical | Proven gap | Existing solution overlap | Product AI necessity | One-week feasibility | Correctness risk | Decision |
|---|---|---|---|---|---|---|---|---|---|---|

Use `KEEP`, `NARROW`, or `DROP`. Keep no more than four candidates.

### Survivor evidence cards

For every survivor include:

- Named user and jurisdiction.
- Journey start and end.
- Current official steps and timeline.
- Exact failure point and proven cause.
- Scale status: `MEASURED`, `ESTIMATED BY SOURCE`, `ANECDOTAL`, or `UNKNOWN`.
- Evidence supporting and limiting the claim.
- Government changes and existing alternatives.
- Remaining gap.
- Safe prototype boundary.
- Functional and mocked components.
- AI necessity explanation.
- Measurable before-and-after comparison.
- Under-60-second demo moment.
- Correctness guardrails.
- Team lived-problem question.
- Confidence and remaining unknowns.

### Rejected candidates

| ID | Reason | Decisive evidence or missing evidence |
|---|---|---|

### Corrections

List claims from the discovery stage that are outdated, contradicted, unsupported, or incorrectly cited.

### Complete source ledger

| Source ID | Tier | Title | Publisher | Publication date | URL | Candidate IDs | Exact claim supported | Independence or currentness limitation |
|---|---|---|---|---|---|---|---|---|

Cite every factual claim inline. Do not use a source for an unrelated candidate. Report failed searches and contradictions instead of filling gaps.
