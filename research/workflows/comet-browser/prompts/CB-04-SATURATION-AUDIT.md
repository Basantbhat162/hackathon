# CB-04: saturation audit

Run this after the public recurrence and official workflow checks. Copy the prompt below and replace the input block.

---

Today is 20 August 2026. Audit the candidate Indian public-service problems below for saturation, existing fixes, and remaining gaps.

Start researching immediately. Do not ask me questions.

## Candidate input

[PASTE UP TO SIX VALIDATED CANDIDATES HERE]

## Research tasks

- Find current official redesigns, help tools, announced fixes, and alternative workflows.
- Find relevant private products, civic-tech tools, NGO projects, open-source repositories, academic prototypes, and previous hackathon demos.
- Distinguish exact solutions to the same journey from loosely related chatbots, portals, and content sites.
- Explain what each existing solution already solves.
- Find evidence that the remaining gap still exists after those fixes.
- Assess whether the candidate is likely to be crowded in this hackathon. Treat repeated EPFO and IRCTC public interest as a saturation signal, not a disqualification.
- Assess whether product AI is necessary. Codex is mandatory during development, but runtime AI is not automatically necessary.
- Define the smallest one-journey prototype a three-person team could finish by 27 August 2026.
- State what must work and what may be honestly mocked.
- Define one measurable before-and-after comparison and one judge-visible demo moment under 60 seconds.
- Check whether the important rules can be sourced from primary material.

## Restrictions

- Do not download, clone, install, or run discovered projects.
- Do not access, test, automate, or scrape a live government service.
- Do not log in, submit data, use private APIs, or collect personal information.
- Inspect only public descriptions, documentation, reporting, and repository pages.
- Do not treat marketing claims, GitHub stars, or isolated comments as proof of impact.
- If no solution appears in the search, say `NOT FOUND IN THIS SEARCH`. Do not say that no solution exists.

## Output

| ID | Closest existing solutions | What is already solved | Remaining evidence-backed gap | Saturation | Process depth | Product AI necessity | Smallest prototype | What must be mocked | Measurable demo | Correctness risk | Decision |
|---|---|---|---|---|---|---|---|---|---|---|---|

Use:

- Saturation: `CROWDED`, `MODERATE`, `OPEN`, or `UNKNOWN`.
- Process depth: `INTERFACE ONLY`, `PARTIAL PROCESS FIX`, or `REAL PROCESS FIX`.
- AI necessity: `NONE`, `HELPFUL`, `ESSENTIAL`, or `UNPROVEN`.
- Decision: `CONTINUE`, `NARROW`, or `DROP`.

Add a source ledger with source title, publisher or creator, date, URL or preserved citation, exact claim, and candidate ID. Cite every factual claim.
