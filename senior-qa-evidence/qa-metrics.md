# QA Metrics That Support Decisions

| Metric | Useful question | Guardrail |
|---|---|---|
| Critical-path pass rate | Are the most important journeys behaving as expected? | Never hide which critical tests failed behind an aggregate |
| Escaped defects | What important problems reached production? | Analyze impact/root cause; do not reward low counts alone |
| Defect reopen rate | Are fixes and acceptance criteria being understood? | Investigate patterns, not individual blame |
| Automation reliability | Can the suite be trusted for feedback? | Separate flaky tests from product failures |
| Requirement/risk coverage | Are important risks represented in testing? | Coverage does not prove correctness |
| Mean time to useful feedback | How quickly does the team learn about a change problem? | Optimize useful signal, not merely faster execution |
| Blocked-test trend | Are environments/data/dependencies preventing evidence? | Treat persistent blockers as delivery-system problems |

## Reporting principle
Metrics should trigger questions and decisions. Test-case count, bug count and pass percentage are weak performance targets because they can encourage quantity over useful quality evidence.
