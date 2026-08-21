---
name: unslop-writing
description: Audit or rewrite user-facing prose to remove recognizable AI writing habits without losing meaning, evidence, or natural voice. Use when the user explicitly asks to unslop text, remove AI tells, humanize a draft, or perform a final prose-quality pass. Do not trigger automatically for ordinary conversation, code, raw data, quotations, legal text, or factual analysis where wording is not the task.
---

# Unslop writing

Preserve the writer's meaning, evidence, audience, and intended seriousness. Improve the prose without inventing facts or forcing personality.

## Write the draft

1. Identify the reader, purpose, and required tone.
2. Lead with the useful fact, decision, or action.
3. Prefer concrete mechanisms, examples, and measurements over atmosphere.
4. Use ordinary words and readable sentences.
5. Keep exact technical, legal, and quoted language when changing it would reduce accuracy.

## Remove common AI tells

- Cut praise, fake enthusiasm, stock openings, generic conclusions, and repeated summaries.
- Remove puffery, promotional adjectives, vague attribution, and unsupported authority claims.
- Replace inflated phrases such as "in order to" and "due to the fact that" with plain equivalents.
- Avoid decorative headings, forced groups of three, synonym cycling, and false "from X to Y" ranges.
- Do not dress up "is" or "has" with vague alternatives such as "serves as" or "boasts."
- Avoid "not just X, but Y" constructions when a direct sentence states the point.
- Remove weak filler clauses built around words such as "highlighting," "showcasing," or "fostering."
- Use active voice when the actor matters.
- Split sentences that require rereading.
- Do not use an adverb when a stronger verb or an available measurement says more.

## Control presentation

- Use sentence case headings.
- Use bold only for navigation or genuine emphasis.
- Use colons only for real lists, definitions, or examples.
- Avoid decorative emojis unless requested.
- Prefer straight quotation marks in newly written plain text.
- Avoid em dashes in original prose. Do not alter an exact quotation merely to enforce this preference.

## Final pass

Silently ask: "What makes this read like generic AI output?" Remove the remaining tells without making the result sterile, abrupt, or less precise.

This workflow was adapted for this workspace after reviewing the MIT-licensed Pstack `unslop` skill: https://github.com/cursor/plugins/tree/main/pstack/skills/unslop
