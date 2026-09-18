# Risk Register — Demonstration

Scoring: Likelihood (L) 1–5 × Impact (I) 1–5. Scores are prioritization aids, not automatic release decisions.

| ID | Risk | L | I | Score | Primary coverage |
|---|---|---:|---:|---:|---|
| R1 | Learner progress is lost or assigned to wrong learner | 3 | 5 | 15 | API/data integrity, persistence, concurrency, regression |
| R2 | Assessment submission fails near deadline | 3 | 5 | 15 | API/UI, retry/error paths, network interruption |
| R3 | User accesses content outside assigned permissions | 2 | 5 | 10 | authorization and role-based negative tests |
| R4 | Integration outage creates duplicate/inconsistent enrolment | 3 | 4 | 12 | contract, retry/idempotency, reconciliation |
| R5 | Mobile layout prevents completion of a critical action | 3 | 3 | 9 | targeted device/browser compatibility |
| R6 | Notification is delayed but core learning remains usable | 3 | 2 | 6 | integration/event validation |

## How I use this
The register drives conversations about depth and order of testing. Scores can change as architecture, incidents or usage patterns provide new evidence.
