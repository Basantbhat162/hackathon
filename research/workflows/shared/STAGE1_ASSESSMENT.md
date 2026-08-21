# Stage 1 research assessment

Assessment date: 20 August 2026

Files assessed:

- `../comet-browser/results/2026-08-20_CB-01_result.md`
- `../perplexity-deep-research/results/2026-08-20_DR-01_result.md`

## Verdict

The results are satisfactory for broad problem discovery. They are not satisfactory for project selection, mandatory-gate decisions, strategic scoring, or user-facing factual claims.

A focused second run is required. Do not run another broad search.

## What worked

- The two tools produced candidates outside EPFO and IRCTC.
- Most candidates name a user, journey, failure point, and deeper process problem.
- Both tools preserved many source links and marked team lived experience as unconfirmed.
- The prompts prevented live government-system testing and real personal-data use.
- Several candidates appear in both outputs, which gives us useful leads for cross-checking.

## Comet Browser problems

- The report says it used three search rounds but lists four search groups.
- The response was interrupted and restarted inside the candidate cards, causing duplicated and incomplete sections.
- Several source-ledger entries are missing for candidates described in the body.
- Some evidence labels are too strong. A portal policy that describes failed-payment handling proves the pathway exists, but it does not measure how often failures happen.
- CB-C07 contains a direct scale conflict. One source is summarized as roughly 10 percent unregistered, while another says 99.1 percent of births and 99.4 percent of deaths were registered. The report does not resolve the contradiction.
- CB-C08 says applicants wait three to six months, but the cited official FAQ only establishes that no fixed assessment timeline exists.
- CB-C05 infers a capacity cause from backlog numbers without proving the cause.
- CB-C12 infers service lockout and affected-user scale without current primary evidence.
- The run used English only despite the requested regional-language check.

## Deep Research problems

- It returned 20 candidates but supplied full evidence cards only for DR-C01 through DR-C07.
- It claims DR-C08 through DR-C20 exist in underlying research notes, but those notes are not included. Those candidates therefore lack a reviewable evidence chain.
- The source ledger is incomplete and says further sources exist elsewhere.
- Some citation mappings are wrong. For example, the PDS card cites reference 38 as supporting failure accounts, while reference 38 is an Ayushman Bharat grievance paper.
- Several candidates are too broad for one journey, including rural e-governance generally, cross-app mobile exclusion, repeated ID sharing across portals, and cross-scheme integration.
- Several core sources are too old for current claims, including 2013 passport evidence and 2017 land-record baselines.
- The source tiers are inconsistent. PRS summaries and media summaries of CAG reports are not the same as the underlying official documents.
- It marks AI `ESSENTIAL` for CPGRAMS without proving why rules, templates, or deterministic classification would fail.
- The report uses a 30-day CPGRAMS timeline, while current official material states 21 days and includes feedback-triggered appeal after closure.

## Candidates for the second run

These are research candidates, not approved project ideas.

| Second-run ID | Original candidates | Candidate | Why it survives discovery | What must be proved |
|---|---|---|---|---|
| S2-C00 | PF Nikal baseline | EPFO rejection diagnosis and escalation | Current team candidate with a clear journey | First-hand team case, official EPFO fix rules, actual rejection evidence, current grievance rules, AI necessity, saturation |
| S2-C01 | CB-C04, DR-C02, DR-C18 | CPGRAMS non-substantive closure and appeal | Clear state-machine and escalation problem | Current post-reform gap, 21-day rule, appeal behaviour, NextGen CPGRAMS status, evidence beyond old committee findings |
| S2-C02 | CB-C08, DR-C10 | UDID medical-assessment queue opacity | Current official FAQ confirms no fixed timeline | Queue visibility, real wait evidence, district variation, safe useful prototype, existing solutions |
| S2-C03 | CB-C10, DR-C12 | BBMP duplicate-payment and refund reconciliation | Current official policy documents the multi-party workflow | Frequency or current user evidence, exact unresolved gap, non-AI alternative, payment safety |
| S2-C04 | CB-C06, CB-C07, DR-C05 | Hospital-to-CRS birth/death registration accountability | A clear institutional handoff may exist | Original circular and CRS data, correct registration percentages, post-circular status, exact user journey |
| S2-C05 | CB-C02 | e-Shram registration and occupation classification | Concrete identity, bank, phone, and taxonomy problems | Current official requirements, current occupation and language coverage, recent independent recurrence evidence |
| S2-C06 | CB-C12 | Parivahan mobile-number recovery | Specific identity-recovery journey | Current official recovery paths, whether Aadhaar OTP truly creates a dead end, RTO alternative, affected-user evidence |
| S2-C07 | CB-C01, DR-C07 | PDS e-KYC mismatch and exception handling | High-impact exception journey | Official fallback and appeal rules, state jurisdiction, evidence of entitlement denial, correctness and safety controls |
| S2-C08 | CB-C11 | NSP authentication and eligibility diagnostics | Current official error notice and student relevance | Error frequency, full diagnostic states, whether official guidance already solves it, process depth beyond interface help |

## Candidates not worth a second run now

- Generic rural digital divide: real but not one journey.
- UMANG, DigiLocker, and cross-portal integration generally: too broad.
- Passport delays: current evidence was not established.
- CSC overcharging: the strongest evidence was dated.
- CPGRAMS backlog routing: an internal capacity problem is difficult to turn into a resident-side end-to-end prototype.
- Broad land-record modernisation: state-specific legal complexity and dated national evidence.
- PM-JAY eligibility: health-data sensitivity, high correctness risk, and outdated audit period make it a poor one-week candidate.
- Generic privacy/tokenisation across services: too wide for this submission.

## Stop condition

After the second run, keep no more than four evidence-qualified candidates. Do not run a third broad web search. The next decision must depend on direct team lived-problem evidence.
