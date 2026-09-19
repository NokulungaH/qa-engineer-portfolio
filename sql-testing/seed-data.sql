-- Controlled fictional data. A few rows intentionally contain defects.
INSERT INTO departments VALUES
(10, 'Engineering'), (20, 'Quality Assurance'), (30, 'Finance');

INSERT INTO employees VALUES
(1, 'EMP001', 'Anele', 'Dlamini', 20, 'ACTIVE', 42000.00, 'anele@example.test'),
(2, 'EMP002', 'Thando', 'Mkhize', 10, 'ACTIVE', 51000.00, 'thando@example.test'),
(3, 'EMP003', 'Lerato', 'Molefe', 30, 'ACTIVE', 47000.00, 'lerato@example.test'),
(4, 'EMP004', 'Sipho', 'Khumalo', 20, 'INACTIVE', 39000.00, NULL),
(5, 'EMP002', 'Zanele', 'Ndlovu', 10, 'ACTIVE', 45500.00, 'zanele@example.test'),
(6, 'EMP006', 'Musa', 'Cele', NULL, 'ACTIVE', 40000.00, 'musa@example.test');

INSERT INTO payroll_transactions VALUES
(1001, 1, '2026-08-31', 42000.00, 8400.00, 33600.00, 'PAID'),
(1002, 2, '2026-08-31', 51000.00, 10200.00, 40800.00, 'PAID'),
(1003, 3, '2026-08-31', 47000.00, 9400.00, 37600.00, 'PAID'),
(1004, 4, '2026-08-31', 39000.00, 7800.00, 31200.00, 'PAID'),
(1005, 5, '2026-08-31', 45500.00, 9100.00, 35000.00, 'PAID'),
(1006, 999, '2026-08-31', 30000.00, 6000.00, 24000.00, 'PAID');
