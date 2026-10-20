
-- DAY 07: SQL SUBQUERIES
-- PostgreSQL 18

-- 1. CREATE TABLES

CREATE TABLE IF NOT EXISTS public.departments_day7 (
    department_id INTEGER PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL,
    location VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS public.employee_day7 (
    emp_id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department_id INTEGER,
    salary INTEGER NOT NULL,
    city VARCHAR(50),
    experience_years INTEGER,
    CONSTRAINT fk_employee_department_day7
        FOREIGN KEY (department_id)
        REFERENCES public.departments_day7(department_id)
);

CREATE TABLE IF NOT EXISTS public.projects_day7 (
    project_id INTEGER PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    emp_id INTEGER,
    status VARCHAR(30) NOT NULL,
    budget INTEGER NOT NULL,
    CONSTRAINT fk_project_employee_day7
        FOREIGN KEY (emp_id)
        REFERENCES public.employee_day7(emp_id)
);

-- 2. INSERT DEPARTMENTS

INSERT INTO public.departments_day7
    (department_id, department_name, location)
VALUES
    (1, 'IT', 'Bengaluru'),
    (2, 'HR', 'Mumbai'),
    (3, 'Finance', 'Delhi'),
    (4, 'Marketing', 'Hyderabad'),
    (5, 'Research', 'Pune'),
    (6, 'Operations', 'Chennai');

-- 3. INSERT EMPLOYEES

INSERT INTO public.employee_day7
    (emp_id, name, department_id, salary, city, experience_years)
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

-- 4. INSERT PROJECTS

INSERT INTO public.projects_day7
    (project_id, project_name, emp_id, status, budget)
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
