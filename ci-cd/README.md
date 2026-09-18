# CI/CD & Automated Reporting

The portfolio automation suites run in GitHub Actions so execution evidence is reproducible and visible independently of a local machine.

## Web pipeline
The web suite runs as a browser matrix across **Chromium, Firefox and WebKit**. Each browser job:
1. checks out the repository;
2. installs Node.js and project dependencies;
3. installs only the required Playwright browser and OS dependencies;
4. executes the suite for that browser;
5. uploads its HTML report;
6. retains Playwright failure evidence when a job fails.

Using `fail-fast: false` means one browser failure does not hide the results from the others.

## API pipeline
The API suite runs independently because it does not require browser installation. It executes the complete service-level suite and uploads the Playwright HTML report.

## Trigger strategy
Both pipelines run when relevant project/workflow files change, on relevant pull requests, and can also be started manually. Path filters avoid spending CI time on unrelated portfolio content changes.

## Failure evidence
Web failures retain Playwright test results, which can include traces, screenshots and video according to the framework configuration. Reports are retained for 14 days as GitHub Actions artifacts.

## Senior QA rationale
CI is valuable when it produces trustworthy, actionable feedback. The design therefore separates web and API concerns, preserves browser-specific results, retains diagnostic evidence and avoids running expensive browser jobs for unrelated documentation changes.
