# Research run order

Last updated: 21 August 2026

## Stage 0: team evidence

Ask Basant, Gaurav, and Sachine the questions in `TEAM_LIVED_PROBLEM_INTERVIEW.md` separately. Web research cannot prove that a team member faced a problem.

## Stage 1: independent discovery

Run these without showing either tool the other tool's result:

1. `../comet-browser/prompts/CB-01-PUBLIC-PROBLEM-DISCOVERY.md`
2. `../perplexity-deep-research/prompts/DR-01-INDEPENDENT-LANDSCAPE.md`

Save the complete raw outputs in the matching `results` folders.

## Stage 2: final evidence audit

Stage 1 is complete. Its assessment is in `STAGE1_ASSESSMENT.md`.

Run these two prompts independently:

1. `../comet-browser/prompts/CB-05-SECOND-RUN-PRIMARY-EVIDENCE.md`
2. `../perplexity-deep-research/prompts/DR-05-SECOND-RUN-CROSS-VALIDATION.md`

Save the raw outputs using `CB-05` and `DR-05` in the filenames. Do not show either tool the other tool's result.

The generic CB-02, CB-03, CB-04, DR-02, and DR-03 prompts remain available as reusable templates, but do not run them now. The tailored second-run prompts already combine recurrence, official-workflow, saturation, and feasibility checks.

## Stage 3: merge and challenge

Compare the independent CB-05 and DR-05 survivors. The absence of a search result does not prove that no competing solution exists. Keep no more than four candidates and record contradictions.

## Stage 4: team confirmation

Match the research candidates against the team interview. Keep only candidates that an official team member personally faced or directly handled.

If no candidate matches, do not invent a personal story. Either research the team's real cases or keep the idea on HOLD.

## Stage 5: compliance decision

Run `../perplexity-deep-research/prompts/DR-04-COMPLIANCE-DECISION.md` only after adding the team evidence and the strongest candidate dossiers.

Do not calculate the 0 to 16 strategic score for a candidate with any mandatory `FAIL` or `UNCLEAR`.

## Stage 6: locked-topic targeted validation

The topic is now locked to the narrowed EPFO Form 19 claim-clarifier journey. Broad topic discovery is finished.

Run these prompts independently. Do not show either tool the other result:

1. `../comet-browser/prompts/CB-06-EPFO-FORM19-RECURRENCE-AND-OFFICIAL-SCALE.md`
2. `../perplexity-deep-research/prompts/DR-06-EPFO-FORM19-LONGITUDINAL-VALIDATION.md`

Save the complete raw outputs as:

- `../comet-browser/results/2026-08-21_CB-06_result.md`
- `../perplexity-deep-research/results/2026-08-21_DR-06_result.md`

Do not run another general search after these. Compare official numbers, deduplicated public-account counts, rule maps, corrections, existing-solution overlap, and unresolved items.

Do not ask the team another lived-problem question. If no new team evidence is supplied, that mandatory check remains `UNCLEAR`; internet evidence cannot upgrade it.

Use `../crawlee-later/EPFO_PUBLIC_EVIDENCE_COLLECTION_PLAN.md` only after both results provide a reviewed seed-URL list. Crawlee may collect those known public pages but must not crawl or automate EPFO, EPFiGMS, UMANG, authenticated social platforms, or any live government workflow.

## Result handling

- Preserve the raw response, citations, source titles, dates, and URLs.
- Do not clean or rewrite the result before Codex reviews it.
- Record access barriers, failed searches, and contradictions.
- Never paste personal IDs, passwords, OTPs, claim numbers, payment details, or unredacted personal data.
