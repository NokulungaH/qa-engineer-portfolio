-- Fictional HR/payroll schema for QA SQL validation.
DROP TABLE IF EXISTS payroll_transactions;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
    department_id INTEGER PRIMARY KEY,
    department_name VARCHAR(80) NOT NULL UNIQUE
);

CREATE TABLE employees (
    employee_id INTEGER PRIMARY KEY,
    employee_number VARCHAR(20) NOT NULL,
    first_name VARCHAR(60) NOT NULL,
    last_name VARCHAR(60) NOT NULL,
    department_id INTEGER REFERENCES departments(department_id),
    employment_status VARCHAR(20) NOT NULL,
    monthly_salary NUMERIC(12,2) NOT NULL,
    email VARCHAR(120)
);

CREATE TABLE payroll_transactions (
    payroll_id INTEGER PRIMARY KEY,
    employee_id INTEGER,
    pay_period DATE NOT NULL,
    gross_pay NUMERIC(12,2) NOT NULL,
    deductions NUMERIC(12,2) NOT NULL,
    net_pay NUMERIC(12,2) NOT NULL,
    payment_status VARCHAR(20) NOT NULL
);
