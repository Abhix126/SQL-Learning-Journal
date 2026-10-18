
-- ============================================================
-- DAY 05: POSTGRESQL DATABASE SETUP
-- Date: 18 October 2026
-- Database: PostgreSQL 18
-- Tool: DBeaver
-- Topic: SQL JOINs and Relational Data Retrieval
--
-- Tables:
--   1. departments_day5 (6 records)
--   2. employee_day5    (30 records)
--   3. projects_day5    (15 records)
--
-- Total Records: 51
-- ============================================================


-- ============================================================
-- STEP 1: CREATE DEPARTMENTS TABLE
-- ============================================================

CREATE TABLE IF NOT EXISTS public.departments_day5 (
    department_id INTEGER PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL,
    location VARCHAR(50) NOT NULL
);


-- ============================================================
-- STEP 2: CREATE EMPLOYEES TABLE
-- ============================================================

CREATE TABLE IF NOT EXISTS public.employee_day5 (
    emp_id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department_id INTEGER,
    salary INTEGER NOT NULL,
    city VARCHAR(50),
    experience_years INTEGER,

    CONSTRAINT fk_employee_department_day5
        FOREIGN KEY (department_id)
        REFERENCES public.departments_day5(department_id)
);


-- ============================================================
-- STEP 3: CREATE PROJECTS TABLE
-- ============================================================

CREATE TABLE IF NOT EXISTS public.projects_day5 (
    project_id INTEGER PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    emp_id INTEGER,
    budget INTEGER NOT NULL,
    status VARCHAR(30) NOT NULL,

    CONSTRAINT fk_project_employee_day5
        FOREIGN KEY (emp_id)
        REFERENCES public.employee_day5(emp_id)
);


-- ============================================================
-- STEP 4: INSERT DEPARTMENT DATA
-- ============================================================

INSERT INTO public.departments_day5 (
    department_id,
    department_name,
    location
)
VALUES
    (1, 'IT', 'Bengaluru'),
    (2, 'HR', 'Mumbai'),
    (3, 'Finance', 'Delhi'),
    (4, 'Marketing', 'Hyderabad'),
    (5, 'Research', 'Pune'),
    (6, 'Operations', 'Chennai');


-- ============================================================
-- STEP 5: INSERT EMPLOYEE DATA
-- ============================================================

INSERT INTO public.employee_day5 (
    emp_id,
    name,
    department_id,
    salary,
    city,
    experience_years
)
VALUES
    (101, 'Amit', 1, 65000, 'Bengaluru', 4),
    (102, 'Priya', 2, 48000, 'Mumbai', 2),
    (103, 'Rahul', 1, 72000, 'Pune', 5),
    (104, 'Sneha', 3, 58000, 'Delhi', 3),
    (105, 'Arjun', 2, 52000, 'Bengaluru', 4),
    (106, 'Neha', 1, 80000, 'Hyderabad', 7),
    (107, 'Vikram', 3, 61000, 'Mumbai', 6),
    (108, 'Riya', 4, 45000, 'Pune', 1),
    (109, 'Karan', 1, 55000, 'Delhi', 3),
    (110, 'Ananya', 4, 49000, 'Bengaluru', 2),
    (111, 'Sagar', 1, 85000, 'Hyderabad', 8),
    (112, 'Meera', 3, 74000, 'Bengaluru', 7),
    (113, 'Aditya', 2, 60000, 'Chennai', 5),
    (114, 'Pooja', 4, 42000, 'Delhi', 1),
    (115, 'Rohan', 1, 68000, 'Mumbai', 4),
    (116, 'Kavya', 3, 90000, 'Hyderabad', 10),
    (117, 'Nikhil', 2, 47000, 'Pune', 2),
    (118, 'Anjali', 4, 57000, 'Hyderabad', 5),
    (119, 'Deepak', 1, 95000, 'Bengaluru', 9),
    (120, 'Simran', 3, 53000, 'Chennai', 3),
    (121, 'Varun', 1, 60000, 'Pune', 2),
    (122, 'Tanvi', 2, 75000, 'Hyderabad', 8),
    (123, 'Harsh', 4, 51000, 'Mumbai', 4),
    (124, 'Ishita', 3, 67000, 'Delhi', 6),
    (125, 'Manav', 1, 44000, 'Bengaluru', 1),
    (126, 'Diya', 2, 82000, 'Delhi', 9),
    (127, 'Akash', 4, 63000, 'Bengaluru', 6),
    (128, 'Shreya', NULL, 78000, 'Pune', 8),
    (129, 'Yash', NULL, 73000, 'Hyderabad', 6),
    (130, 'Avni', NULL, 46000, 'Chennai', 2);


-- ============================================================
-- STEP 6: INSERT PROJECT DATA
-- ============================================================

INSERT INTO public.projects_day5 (
    project_id,
    project_name,
    emp_id,
    budget,
    status
)
VALUES
    (201, 'HR Management System', 101, 500000, 'Active'),
    (202, 'Payroll Automation', 103, 350000, 'Completed'),
    (203, 'Inventory Tracker', 106, 400000, 'Active'),
    (204, 'Customer Analytics', 111, 650000, 'Active'),
    (205, 'Employee Portal', 119, 300000, 'Completed'),
    (206, 'Finance Dashboard', 104, 450000, 'Active'),
    (207, 'Budget Forecasting', 116, 550000, 'Planning'),
    (208, 'Recruitment Platform', 102, 250000, 'Active'),
    (209, 'Marketing Insights', 108, 200000, 'Completed'),
    (210, 'Sales Campaign Tracker', 110, 280000, 'Active'),
    (211, 'Cloud Migration', 101, 800000, 'Planning'),
    (212, 'API Gateway', 106, 600000, 'Active'),
    (213, 'AI Research Assistant', NULL, 900000, 'Planning'),
    (214, 'Mobile Task Manager', NULL, 350000, 'Planning'),
    (215, 'Data Quality Monitor', 112, 320000, 'Active');


-- ============================================================
-- STEP 7: VERIFY TABLE RECORD COUNTS
-- ============================================================

SELECT
    'departments_day5' AS table_name,
    COUNT(*) AS total_records
FROM public.departments_day5

UNION ALL

SELECT
    'employee_day5',
    COUNT(*)
FROM public.employee_day5

UNION ALL

SELECT
    'projects_day5',
    COUNT(*)
FROM public.projects_day5;


-- ============================================================
-- STEP 8: VERIFY NULL FOREIGN KEYS
-- ============================================================

SELECT
    COUNT(*) AS total_employees,
    COUNT(*) FILTER (
        WHERE department_id IS NULL
    ) AS employees_without_department
FROM public.employee_day5;


SELECT
    COUNT(*) AS total_projects,
    COUNT(*) FILTER (
        WHERE emp_id IS NULL
    ) AS projects_without_employee
FROM public.projects_day5;


-- ============================================================
-- STEP 9: VERIFY DEPARTMENTS WITHOUT EMPLOYEES
-- ============================================================

SELECT
    d.department_id,
    d.department_name,
    d.location
FROM public.departments_day5 AS d
LEFT JOIN public.employee_day5 AS e
    ON d.department_id = e.department_id
WHERE e.emp_id IS NULL
ORDER BY d.department_id;


-- ============================================================
-- STEP 10: VERIFY EMPLOYEES WITH MULTIPLE PROJECTS
-- ============================================================

SELECT
    e.emp_id,
    e.name,
    COUNT(p.project_id) AS project_count
FROM public.employee_day5 AS e
INNER JOIN public.projects_day5 AS p
    ON e.emp_id = p.emp_id
GROUP BY e.emp_id, e.name
HAVING COUNT(p.project_id) > 1
ORDER BY e.emp_id;


-- ============================================================
-- STEP 11: TEST MULTI-TABLE RELATIONSHIPS
-- ============================================================

SELECT
    e.emp_id,
    e.name,
    d.department_name,
    p.project_name,
    p.status
FROM public.employee_day5 AS e
LEFT JOIN public.departments_day5 AS d
    ON e.department_id = d.department_id
LEFT JOIN public.projects_day5 AS p
    ON e.emp_id = p.emp_id
ORDER BY e.emp_id, p.project_id;


-- ============================================================
-- END OF DAY 05 DATABASE SETUP
-- ============================================================
