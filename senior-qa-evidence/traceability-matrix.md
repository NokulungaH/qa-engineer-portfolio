# Requirement Traceability Matrix — Demonstration

| Requirement | Risk | Acceptance focus | Planned evidence |
|---|---|---|---|
| REQ-01 Authenticated learner can open an assigned course | R3 | assigned content visible; unauthorized content denied | API authorization + UI smoke |
| REQ-02 Assessment can be submitted once and confirmation returned | R2 | valid submission stored; duplicate/error handling understood | API integration + UI E2E + exploratory |
| REQ-03 Completed activity updates learner progress | R1 | correct learner/course/progress persisted | API/data validation + regression |
| REQ-04 External enrolment updates are reflected without duplicates | R4 | mapping, retry and duplicate handling | contract/integration tests |
| REQ-05 Critical learner journeys work on supported mobile viewport | R5 | navigation and actions remain usable | targeted compatibility |
| REQ-06 Learner receives completion notification | R6 | event generated and correct recipient/content used | event/integration validation |

Traceability is deliberately lightweight: its value is exposing missing coverage and connecting testing effort to business risk.
