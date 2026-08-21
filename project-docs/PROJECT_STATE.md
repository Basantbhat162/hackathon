# Project state

Last updated: 21 August 2026

This file is the compact current truth. It is not a session log.

## Objective and stage

Build and submit a working PF Nikal prototype for one narrowed journey: a person receives a blank or cryptic EPFO Form 19 rejection, receives only explanations supported by supplied evidence and official rules, prepares a mock EPFiGMS grievance packet, and tracks the mocked handoff.

Current stage: workspace foundation and targeted validation are complete; eligibility confirmation and MVP implementation remain active.

Current verdict: `HOLD`.

## Accepted current state

- Official hackathon files are the only authority for mandatory rules.
- Broad idea discovery is closed. The team has locked the narrowed Form 19 journey for targeted prototyping.
- The prototype must use mock or synthetic data and must not access, test, or scrape live government systems.
- The application code lives in `../pf-nikal/` and is currently a vinext starter rather than the completed PF Nikal journey.
- Project documentation, source authority, compliance, research decisions, contribution rights, and Codex usage have established owners in this folder.
- Agent instructions now use a concise `AGENTS.md` plus task-triggered repository skills under `../.agents/skills/`.
- Session handoffs are temporary navigation maps. Durable facts must be promoted according to `MEMORY_POLICY.md`.

## Completed material work

- Structured the official hackathon and team governance records.
- Ran broad and targeted external research stages and recorded limitations.
- Selected the narrowed Form 19 problem for prototyping, subject to the lived-problem gate.
- Created the initial vinext application workspace and verification commands.
- Established the layered project memory, changelog, roadmap, and repository-scoped skill set.

## Active blockers and open decisions

- `Q-001`: Gaurav must provide redacted evidence that he personally handled the specific Form 19 rejection journey.
- The mandatory working-prototype, meaningful-Codex-use, safe-data, licensing, delivery, named-user, and honest-disclosure checks remain unresolved until implementation and review provide evidence.
- The outer documentation workspace is not inside the `pf-nikal` Git repository. Durable documentation does not currently share the code repository's history.

## Next actions

1. Settle `Q-001` without collecting sensitive identifiers.
2. Define the exact MVP states and official-source rule map for the locked journey.
3. Replace the starter interface with the working end-to-end mocked journey.
4. Add focused tests, mobile and slow-network checks, accessibility review, and honest mock disclosures.
5. Prepare the public demo, short video, and write-up before 27 August 2026.

## Smallest safe next action

Collect Gaurav's redacted lived-problem account using `../research/workflows/shared/TEAM_LIVED_PROBLEM_INTERVIEW.md`, then update `PROJECT_COMPLIANCE.md` and the open-question register without storing Aadhaar, PAN, login, OTP, payment, or health data.

## Revalidate before relying on

- Submission deadline time and timezone, which the supplied official material does not state.
- Current EPFO rules, contact paths, and timelines used in product behavior.
- Any claim derived from Reddit, commercial articles, or AI research output.
