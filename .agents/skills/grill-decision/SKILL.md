---
name: grill-decision
description: Challenge a product idea, technical plan, architecture choice, scope, or consequential assumption until the decision, evidence, tradeoffs, and failure conditions are explicit. Use only when the user invokes this skill or directly asks to be grilled before implementation. Do not use during ordinary execution or to manufacture disagreement.
---

# Grill a decision

Interrogate the decision, not the person. Do not implement while grilling.

## Establish the claim

Ask for or infer one sentence stating:

- the decision being proposed;
- the problem it solves;
- who it affects;
- the evidence currently supporting it.

Mark inference as inference. Do not treat confidence as evidence.

## Pressure-test it

Ask one focused question at a time. Prioritize questions that could change the decision:

- What assumption fails first?
- What evidence would disprove the proposal?
- What simpler option was rejected, and why?
- What dependency or permission is being assumed?
- What happens under partial failure, bad input, or misuse?
- What will be measured before and after?
- What must be real for the demo, and what may be mocked?
- What is the cost of reversing the decision later?

Do not ask questions already answered by accessible evidence. Stop when further questions would not materially change the plan.

## Close with a decision record

Return:

1. the decision in one sentence;
2. strongest supporting evidence;
3. weakest assumption;
4. rejected alternatives and reasons;
5. risks and mitigations;
6. verdict: proceed, revise, hold, or reject;
7. smallest next action.

This workflow was adapted for this workspace after reviewing the MIT-licensed `grill-me` and `grilling` skills: https://github.com/mattpocock/skills
