-- QA SQL checks for the fictional HR/payroll dataset.

-- 1. Basic retrieval: active employees ordered by salary.
SELECT employee_number, first_name, last_name, monthly_salary
FROM employees
WHERE employment_status = 'ACTIVE'
ORDER BY monthly_salary DESC;

-- 2. JOIN: payroll details with employee and department context.
SELECT p.payroll_id, e.employee_number, e.first_name, e.last_name,
       d.department_name, p.gross_pay, p.deductions, p.net_pay
FROM payroll_transactions p
JOIN employees e ON e.employee_id = p.employee_id
LEFT JOIN departments d ON d.department_id = e.department_id
WHERE p.pay_period = DATE '2026-08-31'
ORDER BY e.employee_number;

-- 3. Duplicate business key check.
SELECT employee_number, COUNT(*) AS occurrence_count
FROM employees
GROUP BY employee_number
HAVING COUNT(*) > 1;

-- 4. Orphan payroll records: transaction has no matching employee.
SELECT p.*
FROM payroll_transactions p
LEFT JOIN employees e ON e.employee_id = p.employee_id
WHERE e.employee_id IS NULL;

-- 5. Active employees missing payroll for the target period.
SELECT e.employee_id, e.employee_number, e.first_name, e.last_name
FROM employees e
LEFT JOIN payroll_transactions p
  ON p.employee_id = e.employee_id
 AND p.pay_period = DATE '2026-08-31'
WHERE e.employment_status = 'ACTIVE'
  AND p.payroll_id IS NULL;

-- 6. Financial rule validation: net pay should equal gross minus deductions.
SELECT payroll_id, employee_id, gross_pay, deductions, net_pay,
       gross_pay - deductions AS expected_net_pay,
       net_pay - (gross_pay - deductions) AS variance
FROM payroll_transactions
WHERE net_pay <> gross_pay - deductions;

-- 7. NULL / reference-data check for active employees without a department.
SELECT employee_id, employee_number, first_name, last_name
FROM employees
WHERE employment_status = 'ACTIVE'
  AND department_id IS NULL;

-- 8. Aggregate payroll totals by department.
SELECT d.department_name,
       COUNT(p.payroll_id) AS transaction_count,
       SUM(p.gross_pay) AS total_gross,
       SUM(p.deductions) AS total_deductions,
       SUM(p.net_pay) AS total_net
FROM departments d
JOIN employees e ON e.department_id = d.department_id
JOIN payroll_transactions p ON p.employee_id = e.employee_id
WHERE p.pay_period = DATE '2026-08-31'
GROUP BY d.department_name
ORDER BY d.department_name;

-- 9. CASE expression to classify transaction validation results.
SELECT payroll_id,
       CASE
         WHEN net_pay = gross_pay - deductions THEN 'PASS'
         ELSE 'FAIL'
       END AS net_pay_check
FROM payroll_transactions
ORDER BY payroll_id;

-- 10. CTE: reconcile detail totals against the expected formula.
WITH payroll_reconciliation AS (
  SELECT
    SUM(gross_pay) AS gross_total,
    SUM(deductions) AS deduction_total,
    SUM(net_pay) AS recorded_net_total
  FROM payroll_transactions
  WHERE pay_period = DATE '2026-08-31'
)
SELECT gross_total,
       deduction_total,
       recorded_net_total,
       gross_total - deduction_total AS expected_net_total,
       recorded_net_total - (gross_total - deduction_total) AS variance
FROM payroll_reconciliation;

-- 11. Subquery: employees earning above the active-employee average.
SELECT employee_number, first_name, last_name, monthly_salary
FROM employees
WHERE employment_status = 'ACTIVE'
  AND monthly_salary > (
    SELECT AVG(monthly_salary)
    FROM employees
    WHERE employment_status = 'ACTIVE'
  )
ORDER BY monthly_salary DESC;

-- 12. Business-rule investigation: inactive employees paid in the period.
SELECT e.employee_number, e.employment_status, p.payroll_id, p.net_pay
FROM employees e
JOIN payroll_transactions p ON p.employee_id = e.employee_id
WHERE e.employment_status = 'INACTIVE'
  AND p.pay_period = DATE '2026-08-31';
