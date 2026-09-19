# Expected QA Findings

The seed data deliberately contains issues so the validation queries return meaningful evidence.

| Check | Expected finding | QA interpretation |
|---|---|---|
| Duplicate employee number | EMP002 appears twice | Business-key uniqueness failure |
| Orphan payroll | Payroll 1006 references employee 999 | Referential/data-integrity defect |
| Net-pay formula | Payroll 1005 has a R1,400 variance | Calculation/reconciliation defect |
| Missing department | EMP006 has no department | Missing reference data |
| Missing payroll | EMP006 has no August payroll | Active employee missing expected transaction |
| Inactive employee paid | EMP004 has an August payment | Requires business-rule investigation |

These records are fictional and intentionally invalid. The purpose is to demonstrate how SQL can be used by QA to find inconsistencies, isolate affected records and provide concrete evidence for defect investigation.
