# Release Readiness Checklist

Release readiness is a shared product/engineering decision supported by QA evidence, not a ceremonial QA approval.

- [ ] Critical requirements have traceable coverage.
- [ ] Planned critical-path smoke/regression completed.
- [ ] Blocked/failed tests are understood.
- [ ] No unresolved blocker defects.
- [ ] Critical/high defects have explicit disposition and owners.
- [ ] Integration/API contract risks have been assessed.
- [ ] Required compatibility coverage completed.
- [ ] Known residual risks are documented and communicated.
- [ ] Monitoring/observability is adequate for changed critical behaviour.
- [ ] Rollback/recovery approach is understood where appropriate.
- [ ] Test environment limitations are disclosed.
- [ ] Relevant stakeholders have the evidence needed for the release decision.

## Example release statement
"Critical learner journeys passed planned regression. One medium notification defect remains and does not affect progress persistence. Integration retry behaviour has been validated. Residual risk and monitoring are documented for the release decision."

This wording communicates evidence and risk without pretending QA alone owns business acceptance.
