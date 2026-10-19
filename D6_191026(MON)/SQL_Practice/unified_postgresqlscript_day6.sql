
-- ============================================================
-- DAY 06: POSTGRESQL DATABASE SETUP
-- Date: 19 October 2026
-- Database: PostgreSQL 18
-- Schema: public
-- ============================================================


-- ============================================================
-- 1. CREATE DEPARTMENTS TABLE
-- ============================================================

CREATE TABLE IF NOT EXISTS public.departments_day6 (
    department_id INTEGER PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL,
    location VARCHAR(50) NOT NULL
);


-- ============================================================
-- 2. CREATE EMPLOYEES TABLE
-- ============================================================

CREATE TABLE IF NOT EXISTS public.employee_day6 (
    emp_id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department_id INTEGER,
    manager_id INTEGER,
    salary INTEGER NOT NULL,
    city VARCHAR(50),
    experience_years INTEGER,

    CONSTRAINT fk_employee_department_day6
        FOREIGN KEY (department_id)
        REFERENCES public.departments_day6(department_id),

    CONSTRAINT fk_employee_manager_day6
        FOREIGN KEY (manager_id)
        REFERENCES public.employee_day6(emp_id)
        DEFERRABLE INITIALLY DEFERRED
);


-- ============================================================
-- 3. CREATE SALARY GRADES TABLE
-- ============================================================

CREATE TABLE IF NOT EXISTS public.salary_grades_day6 (
    grade_id INTEGER PRIMARY KEY,
    grade_name VARCHAR(50) NOT NULL,
    min_salary INTEGER NOT NULL,
    max_salary INTEGER NOT NULL
);


-- ============================================================
-- 4. CREATE PROJECTS TABLE
-- ============================================================

CREATE TABLE IF NOT EXISTS public.projects_day6 (
    project_id INTEGER PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    emp_id INTEGER,
    status VARCHAR(30) NOT NULL,
    budget INTEGER NOT NULL,

    CONSTRAINT fk_project_employee_day6
        FOREIGN KEY (emp_id)
        REFERENCES public.employee_day6(emp_id)
);


-- ============================================================
-- 5. INSERT DEPARTMENT DATA
-- ============================================================

INSERT INTO public.departments_day6 (
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
-- 6. INSERT SALARY GRADE DATA
-- ============================================================

INSERT INTO public.salary_grades_day6 (
    grade_id,
    grade_name,
    min_salary,
    max_salary
)
VALUES
    (1, 'Entry Level', 30000, 49999),
    (2, 'Junior', 50000, 64999),
    (3, 'Mid-Level', 65000, 79999),
    (4, 'Senior', 80000, 120000);


-- ============================================================
-- 7. INSERT EMPLOYEE DATA
-- ============================================================

BEGIN;

SET CONSTRAINTS fk_employee_manager_day6 DEFERRED;

INSERT INTO public.employee_day6 (
    emp_id,
    name,
    department_id,
    manager_id,
    salary,
    city,
    experience_years
)
VALUES
    (101, 'Amit', 1, NULL, 65000, 'Bengaluru', 4),
    (102, 'Priya', 2, 113, 48000, 'Mumbai', 2),
    (103, 'Rahul', 1, 101, 72000, 'Pune', 5),
    (104, 'Sneha', 3, 116, 58000, 'Delhi', 3),
    (105, 'Arjun', 2, 113, 52000, 'Bengaluru', 4),
    (106, 'Neha', 1, 111, 80000, 'Hyderabad', 7),
    (107, 'Vikram', 3, 116, 61000, 'Mumbai', 6),
    (108, 'Riya', 4, 127, 45000, 'Pune', 1),
    (109, 'Karan', 1, 103, 55000, 'Delhi', 3),
    (110, 'Ananya', 4, 127, 49000, 'Bengaluru', 2),
    (111, 'Sagar', 1, 101, 85000, 'Hyderabad', 8),
    (112, 'Meera', 3, 116, 74000, 'Bengaluru', 7),
    (113, 'Aditya', 2, NULL, 60000, 'Chennai', 5),
    (114, 'Pooja', 4, 127, 42000, 'Delhi', 1),
    (115, 'Rohan', 1, 111, 68000, 'Mumbai', 4),
    (116, 'Kavya', 3, NULL, 90000, 'Hyderabad', 10),
    (117, 'Nikhil', 2, 113, 47000, 'Pune', 2),
    (118, 'Anjali', 4, 127, 57000, 'Hyderabad', 5),
    (119, 'Deepak', 1, 111, 95000, 'Bengaluru', 9),
    (120, 'Simran', 3, 112, 53000, 'Chennai', 3),
    (121, 'Varun', 1, 103, 60000, 'Pune', 2),
    (122, 'Tanvi', 2, 113, 75000, 'Hyderabad', 8),
    (123, 'Harsh', 4, 127, 51000, 'Mumbai', 4),
    (124, 'Ishita', 3, 112, 67000, 'Delhi', 6),
    (125, 'Manav', 1, 103, 44000, 'Bengaluru', 1),
    (126, 'Diya', 2, 113, 82000, 'Delhi', 9),
    (127, 'Akash', 4, NULL, 63000, 'Bengaluru', 6),
    (128, 'Shreya', NULL, 116, 78000, 'Pune', 8),
    (129, 'Yash', NULL, 111, 73000, 'Hyderabad', 6),
    (130, 'Avni', NULL, NULL, 46000, 'Chennai', 2);

COMMIT;


-- ============================================================
-- 8. INSERT PROJECT DATA
-- ============================================================

INSERT INTO public.projects_day6 (
    project_id,
    project_name,
    emp_id,
    status,
    budget
)
VALUES
    (201, 'HR Management System', 101, 'Active', 500000),
    (202, 'Payroll Automation', 103, 'Completed', 350000),
    (203, 'Inventory Tracker', 106, 'Active', 400000),
    (204, 'Customer Analytics', 111, 'Active', 650000),
    (205, 'Employee Portal', 119, 'Completed', 300000),
    (206, 'Finance Dashboard', 104, 'Active', 450000),
    (207, 'Budget Forecasting', 116, 'Planning', 550000),
    (208, 'Recruitment Platform', 102, 'Active', 250000),
    (209, 'Marketing Insights', 108, 'Completed', 200000),
    (210, 'Sales Campaign Tracker', 110, 'Active', 280000),
    (211, 'Cloud Migration', 101, 'Planning', 800000),
    (212, 'API Gateway', 106, 'Active', 600000),
    (213, 'AI Research Assistant', NULL, 'Planning', 900000),
    (214, 'Mobile Task Manager', NULL, 'Planning', 350000),
    (215, 'Data Quality Monitor', 112, 'Active', 320000);

-- ============================================================
-- END OF DAY 06 DATABASE SETUP
-- ============================================================
