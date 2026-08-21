# Crawlee plan for EPFO public evidence

Last updated: 21 August 2026

## Decision

Crawlee may be used after CB-06 and DR-06 return a bounded list of public source URLs. It is a collection and deduplication tool, not a search engine, prevalence estimator, or source of truth.

The current Crawlee for JavaScript documentation identifies version 3.18 and supports HTTP and browser crawlers, persistent request queues, structured datasets, rate controls, crawl limits, URL deduplication, and `robots.txt` enforcement. The repository uses the Apache License 2.0.

Official references:

- https://github.com/apify/crawlee
- https://crawlee.dev/js/docs/introduction
- https://crawlee.dev/js/api/basic-crawler/interface/BasicCrawlerOptions

## Do not install or run yet

Wait for both research runs. Installing Crawlee before we have seed URLs would encourage another broad crawl and would not answer the research questions.

After results arrive, create a small collector with the NPM package in a dedicated folder. Do not clone the full Crawlee repository into the hackathon project merely to use the library.

## Allowed inputs

- Public Reddit thread URLs already found and reviewed by the research tools, subject to `robots.txt` and site terms.
- Public, non-authenticated forum or blog pages from the research ledgers.
- Public news pages containing relevant first-person accounts.
- Static copies of public documents where automated access is expressly permitted.
- A manually reviewed `seed_urls.csv` containing the URL, source type, expected date, and research case ID.

## Prohibited targets

- EPFO member, employer, passbook, claim-status, grievance-transaction, UMANG, login, OTP, CAPTCHA, or authenticated pages.
- EPFiGMS grievance registration, reminder, document upload, or status forms.
- Any live government workflow or undocumented API.
- Search-engine result pages.
- Private groups, paywalled pages, removed posts, restricted data, or personal profiles.
- Any page disallowed by `robots.txt` or site terms.
- Any attempt to bypass blocks, rate limits, authentication, bot controls, or CAPTCHA.

## Required crawler controls

- `maxCrawlDepth: 0` so only manually supplied seed URLs are processed.
- `respectRobotsTxtFile: true`.
- `maxRequestsPerCrawl` set to the reviewed seed count plus a small retry allowance.
- `maxConcurrency: 2`.
- `maxRequestsPerMinute: 20` or lower when site policy requires it.
- `sameDomainDelaySecs: 3` or higher.
- `maxRequestRetries: 1`.
- `retryOnBlocked: false`.
- No proxy rotation.
- No session or cookie import.
- No browser fingerprint evasion.
- No link enqueueing from downloaded pages.

Use `CheerioCrawler` for ordinary public HTML. Use a browser crawler only when a reviewed, permitted page requires client-side rendering. A failed or blocked request stays failed.

## Output schema

Each record should contain only:

| Field | Meaning |
|---|---|
| `case_id` | Neutral project case ID |
| `source_url` | Reviewed public URL |
| `canonical_url` | Normalized URL used for deduplication |
| `published_date` | Visible source date, or null |
| `retrieved_at` | Collection timestamp |
| `platform` | Reddit, forum, news, blog, or other public source |
| `claim_type` | Direct Form 19, probable Form 19, other EPFO claim, or unknown |
| `failure_mechanism` | Controlled project category |
| `first_person` | true, false, or unclear |
| `text_excerpt` | Short evidence excerpt with sensitive details removed |
| `duplicate_group` | Human-reviewed story group |
| `review_status` | Included, excluded, or needs review |
| `exclusion_reason` | Reason when excluded |

Do not store account names unless needed for duplicate review. Never store UANs, claim IDs, Aadhaar or PAN details, phone numbers, bank details, employer identifiers, medical details, credentials, OTPs, or attachments containing personal information.

## Validation process

1. Manually review the seed ledger before running Crawlee.
2. Run the collector once with the controls above.
3. Inspect every extracted record manually.
4. Deduplicate by canonical URL, then by story and visible author where safe.
5. Keep direct Form 19 accounts separate from other claims.
6. Compare crawler output with the two research ledgers.
7. Report counts as `unique public accounts found`, never as national prevalence.
8. Preserve collection failures and access limitations.

## What Crawlee cannot clear

- It cannot prove the number of affected EPFO members nationally.
- It cannot turn social posts into a representative sample.
- It cannot establish official rules.
- It cannot prove Gaurav's lived experience.
- It cannot determine a missing rejection reason.
- It cannot justify bypassing a site's technical or policy restrictions.
