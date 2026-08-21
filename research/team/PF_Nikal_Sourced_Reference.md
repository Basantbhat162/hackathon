# PF Nikal — Sourced Reference Document (Repaired Version)
### For Codex build context + write-up citations

---

## Macro Stat (Use This, Not the Old Unsourced Numbers)

**1 in 3 PF final settlement claims get rejected.** Rejection rate rose from 13% (2017-18) to 34% (2022-23) after the process moved fully online. A former EPFO Central Board of Trustees member noted that most discrepancies now come down to something as small as one letter mismatch in a name, or differing details in Aadhaar.

Source: https://www.deccanherald.com/amp/story/india%2Fone-in-three-epf-final-settlement-claims-rejected-report-2908705

---

## Common Rejection Reasons + Fixes (Sourced)

| # | Reason | What It Means | Fix |
| --- | --- | --- | --- |
| 1 | **Aadhaar not linked/verified** | Claims filed without Aadhaar verification are frequently rejected at the initial system check | Link and verify Aadhaar on the UAN portal before filing |
| 2 | **Name/detail mismatch** | Contact number, name, address, or joining date differs between EPFO records and submitted documents | Correct the mismatched field via Joint Declaration with employer, or online correction facility |
| 3 | **Incomplete/incorrect KYC** | KYC form incomplete or has wrong info, verification fails | Update KYC on UAN portal, get employer to re-approve |
| 4 | **Bank account mismatch or joint account** | EPFO requires an individual account in the employee's own name; wrong account number also causes rejection | Update bank details, ensure account is individual not joint |
| 5 | **Incorrect service dates** | Date of joining/leaving doesn't match EPFO database | Get employer to correct dates in EPFO records |
| 6 | **Form 10C eligibility issue (EPS)** | Wrong form used, or minimum service period (6 months) for pension withdrawal not met | Confirm correct form (19/10C/31) matches claim type and eligibility |
| 7 | **Inactive UAN** | UAN not activated, blocks claim processing | Activate UAN via EPFO member portal |
| 8 | **Pending dues/standing arrears** | Claim held until outstanding dues against the member are cleared | Clear dues, or get employer confirmation of no dues |
| 9 | **No employer attestation** | Claim not approved/digitally signed by employer | Follow up with employer HR for digital approval |
| 10 | **Technical/server errors** | Portal glitches or human error at EPFO end | Simply reapply, sometimes with a grievance filed in parallel |

Sources:
- https://cleartax.in/s/epf-claim-rejected-reasons-and-how-to-apply-again
- https://www.bajajfinserv.in/investments/epf-claim-rejection-reasons
- https://www.kotaklife.com/insurance-guide/retirement/epfo-claim-rejected-reason
- https://www.pensionbazaar.com/epf/claim-rejected/

---

## Escalation Process (EPFiGMS) — Sourced

- **Standard resolution timeline:** 15-30 working days per EPFO's Citizens' Charter (simple KYC/balance queries faster; employer-contribution disputes or multi-office transfers slower)
- **Level 1 — Send Reminder:** Log into epfigms.gov.in, use "Send Reminder" with your registration number if no action within the standard window
- **Level 2 — Escalate:** Email or call the Regional PF Commissioner (RPFC) listed on your original acknowledgment
- **Important:** Filing a second/duplicate grievance for the same issue does NOT speed things up — it creates duplicate tracking and confuses review. One well-documented grievance + one reminder is the faster path.

Source: https://kustodian.life/resources/provident-fund/epf-grievance-portal-epfigms-how-to-file-an-epf-complaint-online-2026

---

## Repaired Build Spec (Per Gate Item 8 Fix)

**Old version (weak):** Dropdown select reason → AI rephrases a pre-written answer. This is a lookup table with a language layer, not real AI reasoning.

**Repaired version (strong):**
1. User **pastes their actual rejection SMS/message** (unstructured text input, not dropdown)
2. User also enters their **own details** — name as per Aadhaar, name as per PF record, bank account name, etc. (mock/sample data)
3. AI performs **real diagnosis**: cross-checks the rejection message against the entered details to find the actual mismatch — this is genuine reasoning work, not decoration
4. Tool gives plain-language explanation + exact fix steps (from the sourced table above)
5. If fix doesn't resolve it, tool **generates an EPFiGMS grievance draft** — this is core, not optional, because it's the process machinery that satisfies "solve the deeper problem, not just the interface"

---

## Personal Anchor (Team's Real Experience)

A team member's uncle had his PF claim rejected specifically because his Aadhaar card details could not be matched/found — this is exact Reason #1 and #2 above. Use this (anonymized) as the human story in the demo video opening.
