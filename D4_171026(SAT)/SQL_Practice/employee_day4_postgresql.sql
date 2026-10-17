
-- ============================================================
-- DAY 04: POSTGRESQL DATABASE SETUP
-- Date: 17 October 2026
-- Database: PostgreSQL 18
-- Tool: DBeaver
-- Source: employee_day4.csv
-- Total Records: 30
-- Topic: NULL Handling, CASE Expressions & Conditional Logic
-- ============================================================


-- ============================================================
-- STEP 1: CREATE TABLE
-- ============================================================

CREATE TABLE IF NOT EXISTS public.employee_day4 (
    emp_id INTEGER PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INTEGER,
    city VARCHAR(50),
    experience_years INTEGER,
    bonus INTEGER,
    performance_rating INTEGER
);


-- ============================================================
-- STEP 2: INSERT EMPLOYEE DATA
-- ============================================================

INSERT INTO public.employee_day4 (
    emp_id,
    name,
    department,
    salary,
    city,
    experience_years,
    bonus,
    performance_rating
)
VALUES
    (101, 'Amit', 'IT', 65000, 'Bengaluru', 4, 5000, 4),
    (102, 'Priya', 'HR', 48000, 'Mumbai', 2, NULL, 3),
    (103, 'Rahul', 'IT', 72000, 'Pune', 5, 7000, 4),
    (104, 'Sneha', 'Finance', 58000, 'Delhi', 3, 3000, NULL),
    (105, 'Arjun', 'HR', 52000, 'Bengaluru', 4, 2000, 3),
    (106, 'Neha', 'IT', 80000, 'Hyderabad', 7, 8000, 5),
    (107, 'Vikram', 'Finance', 61000, 'Mumbai', 6, NULL, 4),
    (108, 'Riya', 'Marketing', 45000, 'Pune', 1, 1500, 2),
    (109, 'Karan', 'IT', 55000, 'Delhi', 3, NULL, 3),
    (110, 'Ananya', 'Marketing', 49000, 'Bengaluru', 2, 2000, 4),
    (111, 'Sagar', 'IT', 85000, 'Hyderabad', 8, 10000, 5),
    (112, 'Meera', 'Finance', 74000, 'Bengaluru', 7, 6000, 4),
    (113, 'Aditya', 'HR', 60000, 'Chennai', 5, 4000, 4),
    (114, 'Pooja', 'Marketing', 42000, 'Delhi', 1, NULL, NULL),
    (115, 'Rohan', 'IT', 68000, 'Mumbai', 4, 5000, 3),
    (116, 'Kavya', 'Finance', 90000, 'Hyderabad', 10, 12000, 5),
    (117, 'Nikhil', 'HR', 47000, 'Pune', 2, NULL, 2),
    (118, 'Anjali', 'Marketing', 57000, 'Hyderabad', 5, 3000, 4),
    (119, 'Deepak', 'IT', 95000, 'Bengaluru', 9, 15000, 5),
    (120, 'Simran', 'Finance', 53000, 'Chennai', 3, 2500, 3),
    (121, 'Varun', 'IT', 60000, 'Pune', 2, 3000, NULL),
    (122, 'Tanvi', 'HR', 75000, 'Hyderabad', 8, 7000, 5),
    (123, 'Harsh', 'Marketing', 51000, 'Mumbai', 4, NULL, 3),
    (124, 'Ishita', 'Finance', 67000, 'Delhi', 6, 4500, 4),
    (125, 'Manav', 'IT', 44000, 'Bengaluru', 1, NULL, 2),
    (126, 'Diya', 'HR', 82000, 'Delhi', 9, 9000, 5),
    (127, 'Akash', 'Marketing', 63000, 'Bengaluru', 6, 4500, 4),
    (128, 'Shreya', 'Finance', 78000, 'Pune', 8, 7500, NULL),
    (129, 'Yash', 'IT', 73000, 'Hyderabad', 6, 6500, 4),
    (130, 'Avni', 'Marketing', 46000, 'Chennai', 2, NULL, NULL);


-- ============================================================
-- STEP 3: VERIFY TOTAL RECORDS
-- ============================================================

SELECT COUNT(*) AS total_employees
FROM public.employee_day4;


-- ============================================================
-- STEP 4: DISPLAY ALL RECORDS
-- ============================================================

SELECT *
FROM public.employee_day4
ORDER BY emp_id ASC;


-- ============================================================
-- STEP 5: VERIFY NULL VALUES
-- ============================================================

SELECT
    COUNT(*) AS total_employees,
    COUNT(bonus) AS employees_with_bonus,
    COUNT(*) - COUNT(bonus) AS employees_without_bonus,
    COUNT(performance_rating) AS employees_with_rating,
    COUNT(*) - COUNT(performance_rating) AS employees_without_rating
FROM public.employee_day4;


-- ============================================================
-- STEP 6: VERIFY DEPARTMENT-WISE RECORDS
-- ============================================================

SELECT
    department,
    COUNT(*) AS employee_count
FROM public.employee_day4
GROUP BY department
ORDER BY department ASC;


-- ============================================================
-- END OF DAY 04 DATABASE SETUP
-- ============================================================
