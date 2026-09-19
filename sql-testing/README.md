# SQL Data Validation Project

A QA-focused SQL project demonstrating how I use SQL to validate business rules, investigate defects and verify data integrity.

The dataset is fictional and represents a small HR/payroll system. It is intentionally compact so the SQL and QA reasoning remain easy to review.

## What this demonstrates
- SELECT, filtering and sorting
- INNER JOIN and LEFT JOIN
- GROUP BY, COUNT, SUM and AVG
- CASE expressions
- subqueries and common table expressions (CTEs)
- duplicate and orphan detection
- NULL and invalid-value checks
- reconciliation between detail and summary data
- QA investigation queries

## Scenario
Employees belong to departments and receive payroll transactions. The validation queries answer questions a QA engineer could encounter while testing an HR/payroll product: Are active employees missing payroll? Are payroll records orphaned? Are net amounts consistent with gross pay and deductions? Are employee numbers duplicated? Do department totals reconcile?

## Files
- `schema.sql` creates the fictional tables.
- `seed-data.sql` inserts controlled data, including deliberate defects.
- `validation-queries.sql` contains the QA checks.
- `expected-findings.md` explains what the deliberately bad records are meant to reveal.

Run `schema.sql`, then `seed-data.sql`, followed by individual checks from `validation-queries.sql` in PostgreSQL.

No employer, client or production data is used in this project.
