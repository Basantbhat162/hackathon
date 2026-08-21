# CB-03: official workflow check

Run this after the recurrence check. Copy the prompt below and replace the marked input block.

---

Today is 20 August 2026. Verify the published workflow and rules behind the Indian public-service candidate problems below.

Start researching immediately. Do not ask me questions.

## Candidate input

[PASTE UP TO EIGHT CANDIDATES FROM THE RECURRENCE RESULT HERE]

## Research boundary

- Use public, non-transactional official pages, manuals, FAQs, circulars, notifications, service standards, audits, parliamentary material, court documents, and published reports.
- Do not log in to a government service, open a private account area, submit a form, test a transaction, enter data, use an OTP, call a private API, automate a workflow, or scrape a government system.
- If an official source is inaccessible, state the limitation. Do not replace it silently with a commercial blog.
- Check the publication date and whether a newer rule, system, correction, or replacement exists.
- Treat an official FAQ as evidence of the intended process, not proof that the process works reliably.
- Do not mix central, state, or local rules. Record the exact jurisdiction.
- Do not import hackathon rules from any source. This prompt is about the service workflow.

## Questions for every candidate

1. Which authority owns the service?
2. Who is the named user?
3. What are the published start and end states of the journey?
4. What documents, eligibility rules, deadlines, handoffs, corrections, and escalation routes are published?
5. Which exact rule, process, responsibility, or state transition appears connected to the reported failure?
6. Does the public evidence prove that connection, or is it only an inference?
7. What could a safe prototype do without government integration?
8. What advice would create harm if it were wrong?
9. Can every user-facing instruction be supported by a current primary source?

## Output

Return no more than six candidates.

| ID | Authority and jurisdiction | Published journey | Exact rule or process | Reported failure connection | Fact or inference? | Correction path | Escalation path | Primary-source coverage | Correctness risk | Safe prototype boundary | Verdict |
|---|---|---|---|---|---|---|---|---|---|---|---|

Use `PRIMARY SOURCES ADEQUATE`, `PRIMARY SOURCES INCOMPLETE`, or `DROP` as the verdict.

Add a source ledger:

| Source ID | Official authority | Document title | Publication or update date | URL or preserved citation | Candidate ID | Exact rule supported | Current-status limitation |
|---|---|---|---|---|---|---|---|

Cite every factual statement. If a rule cannot be verified in primary material, label it `UNVERIFIED`.
