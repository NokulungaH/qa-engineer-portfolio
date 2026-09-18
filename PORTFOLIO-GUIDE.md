# Nokulunga Hlongwa — QA Portfolio Recruiter Guide

This guide explains what each portfolio phase demonstrates and how to talk about it in an interview.

## 30-second portfolio explanation
"I built this portfolio to demonstrate both sides of senior QA work: hands-on technical testing and quality strategy. The web and API projects are real automated suites against public demo systems, executed in GitHub Actions. The senior-QA case studies are explicitly fictionalized and show how I approach risk, test strategy, exploratory testing, defects and release readiness without exposing employer information."

## Phase 1 — Portfolio foundation
**What happened:** A public GitHub portfolio and GitHub Pages website were created to organize evidence of my QA experience.

**What it demonstrates:** Professional presentation, Git/GitHub familiarity, ability to communicate QA work clearly, and an evidence-first approach.

**Recruiter version:** "Instead of only listing tools on my CV, I wanted recruiters to be able to open the work and see how I apply them."

## Phase 2 — Web automation
**System under test:** SauceDemo, a publicly available demonstration e-commerce website. No employer system or confidential data is used.

**Technology:** Playwright + TypeScript.

**Framework:** Page Objects separate UI interactions from test logic; fixtures provide reusable page objects; test data is kept separately; smoke and regression tags allow targeted execution.

**Coverage:** successful login, locked-user rejection, required-field validation, product sorting, cart validation and complete checkout.

**Evidence:** The five-test suite is executed in CI across Chromium, Firefox and WebKit — 15 browser executions in the verified cross-browser run.

**Failure diagnostics:** Playwright is configured to retain traces, screenshots and video on failure and produce HTML reports.

**Recruiter version:** "I didn't want a collection of isolated scripts. I structured it as a maintainable framework and separated smoke from regression coverage. CI verifies the same five scenarios across three browser engines."

**If asked why SauceDemo:** "It is a public demo application suitable for portfolio automation, so the project is reproducible without using any employer system or data."

## Phase 3 — API automation
**System under test:** JSONPlaceholder, a public REST API for testing/prototyping.

**Technology:** Playwright APIRequestContext + TypeScript.

**Framework:** A reusable ApiClient centralizes HTTP operations and common checks; fixtures inject it into tests; test data is separated from behaviour.

**Coverage:** GET resource and collection, POST, PUT, DELETE, unknown-resource 404, nested user data and userId filtering.

**What is validated:** Not only status codes. Tests check JSON content type, object shape, types, nested structures, returned values and filtering/data integrity.

**Important API behaviour:** JSONPlaceholder simulates write operations. POST/PUT/DELETE responses are tested, but the suite does not incorrectly expect those changes to persist.

**Evidence:** 8/8 API tests passed in the verified CI run and an HTML report was produced.

**Recruiter version:** "The API suite demonstrates that I validate contracts and data, not just 200 responses. I also documented the test API's simulated persistence so the assertions match the actual service behaviour."

## Phase 4 — Senior QA evidence
This phase is deliberately different from the executable automation projects. It demonstrates senior-level analysis and process design.

**Confidentiality:** The scenario is inspired by experience establishing QA practices, but the product, people, risks, defects, metrics and data are fictionalized. It does not reproduce an employer's internal process.

### QA process implementation
A 30/60/90-day approach:
- first understand the delivery flow, recurring quality problems and business-critical journeys;
- then establish lightweight controls such as testability reviews, defect standards, regression inventory, test data/environment ownership and release criteria;
- then automate stable high-value checks, analyze defect trends and improve the process.

**Recruiter version:** "I would not walk into a team and impose a heavy QA process immediately. I would first understand where risk is created, then introduce the smallest repeatable controls that improve feedback."

### Test strategy and risk
The strategy connects requirements to risk and planned evidence. Risk uses likelihood × impact as a prioritization aid, not an automatic decision maker.

**Recruiter version:** "I prioritize depth of testing based on business and technical risk rather than treating every requirement as equally important."

### Traceability
A lightweight requirement traceability matrix connects requirements, risks, acceptance focus and planned evidence.

**Recruiter version:** "I use traceability to expose missing critical coverage, not to create documentation for its own sake."

### Exploratory testing
Time-boxed charters cover assessment resilience, progress integrity and authorization boundaries.

**Recruiter version:** "A charter gives exploration a mission and focus without turning it into another scripted test case."

### Defect analysis
Fictional defects demonstrate reproducible steps, expected versus actual behaviour, impact, evidence and the distinction between severity and priority.

**Recruiter version:** "Severity is about impact; priority is about when the team should address the issue. They influence each other but are not the same."

### Release readiness
QA supplies evidence and residual risk rather than pretending to own the business release decision.

**Recruiter version:** "I communicate what passed, what failed or was blocked, known defects, residual risk and limitations so the relevant stakeholders can make an informed release decision."

### Metrics
The framework focuses on critical-path results, escaped defects, reopen rate, automation reliability, risk coverage, feedback time and blocked-test trends.

**Recruiter version:** "Metrics should trigger useful questions. Raw bug counts or pass percentages can be misleading if they hide the importance of what failed."

## Phase 5 — CI/CD and reporting
**Technology:** GitHub Actions.

**Web pipeline:** A matrix executes the suite independently in Chromium, Firefox and WebKit. fail-fast is disabled so a failure in one browser does not hide evidence from the other browser jobs.

**API pipeline:** Runs independently without installing browsers, keeping service-level feedback simpler and faster.

**Triggers:** Pipelines run for relevant changes and pull requests and can be manually triggered. Path filters avoid unnecessary automation runs for unrelated documentation changes.

**Reporting:** HTML reports are uploaded as GitHub Actions artifacts. Web failures retain diagnostic evidence.

**Recruiter version:** "I separated web and API pipelines because they have different execution costs and dependencies. For web testing I use a browser matrix and retain browser-specific reports and failure evidence."

## Phase 6 — Final polish and release
**What happened:** The portfolio was reviewed for consistency, project descriptions were aligned with the evidence, experience was updated to 11+ years, the public-demo-system wording was made explicit, and the roadmap was completed.

**Recruiter version:** "The final site is the presentation layer. Every strong claim should point back to code, CI evidence or an explicitly labelled demonstration case study."

## Important numbers to remember
- 11+ years of QA experience.
- Web automation: 5 scenarios × 3 browser engines = 15 verified browser executions.
- API automation: 8 verified tests.
- Browser engines: Chromium, Firefox and WebKit.
- Public systems: SauceDemo for UI automation; JSONPlaceholder for API automation.
- CI/CD: GitHub Actions.
- Automation language: TypeScript.
- Automation framework: Playwright.

## Questions you may be asked

**Why Playwright?**  
"For this portfolio I wanted one modern TypeScript-based tool that could demonstrate both browser automation and API testing. Playwright also gives me browser projects, fixtures, tracing and HTML reporting."

**Why not automate everything?**  
"Automation has a maintenance cost. I prioritize stable, repeatable, high-value regression and smoke checks. Exploration and rapidly changing behaviour may be better tested manually until automation provides useful return."

**What makes this senior-level rather than just automation?**  
"The automation demonstrates implementation skills, but the senior-QA section demonstrates how I reason about risk, requirements, release evidence, exploratory testing, defects and process improvement."

**Did you build all of this at your employers?**  
"No. The portfolio separates demonstration work from employment history. The public automation suites are portfolio projects. The process case study is inspired by relevant experience but is fictionalized so I do not expose confidential employer information."

**What would you improve next?**  
"I would adapt the framework to the product context: add stronger schema/contract tooling where appropriate, manage environment-specific test data and secrets, integrate with the team's delivery pipeline, and evolve coverage using production risk and defect evidence rather than simply increasing test count."

## Links
Portfolio: https://nokulungah.github.io/qa-engineer-portfolio/  
GitHub repository: https://github.com/NokulungaH/qa-engineer-portfolio  
Web automation: https://github.com/NokulungaH/qa-engineer-portfolio/tree/main/web-automation  
API automation: https://github.com/NokulungaH/qa-engineer-portfolio/tree/main/api-automation  
Senior QA evidence: https://github.com/NokulungaH/qa-engineer-portfolio/tree/main/senior-qa-evidence
