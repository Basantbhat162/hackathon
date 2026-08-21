# Crawlee, deferred

Repository: https://github.com/apify/crawlee

Decision date: 20 August 2026

Do not install or run Crawlee during the current broad research stage.

Crawlee is an open-source JavaScript and TypeScript library for HTTP crawling and real-browser automation. Its official repository describes persistent URL queues, storage, retries, Playwright and Puppeteer support, and an Apache 2.0 licence.

## Possible later use

After one topic is selected, Crawlee may help collect structured evidence from public sources that explicitly permit automated access. A safer option is to process a locally saved, manually reviewed source list rather than crawl sites broadly.

## Restrictions

- Never use it on a live government transaction system.
- Do not automate logins, forms, OTPs, payments, or government user journeys.
- Do not collect personal or restricted data.
- Respect each site's terms, robots rules, rate limits, copyright, and access restrictions.
- Do not use proxy rotation or browser fingerprinting to bypass a site's controls.
- Record every URL, collection date, licence or permission, and purpose.

Crawlee is optional. It is not needed to satisfy the Codex requirement, and it does not make weak evidence reliable.
