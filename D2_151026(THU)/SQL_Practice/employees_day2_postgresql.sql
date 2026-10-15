
-- PostgreSQL 18 Database Setup
-- Source: employee_day2.csv
-- Records: 30

-- STEP 1: Create the database
CREATE DATABASE employee_day2;

-- STEP 2: Connect to employee_day2 before running the statements below.

-- STEP 3: Create the employee table
CREATE TABLE IF NOT EXISTS employee_day2 (
    emp_id INTEGER PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INTEGER,
    city VARCHAR(50),
    experience_years INTEGER
);

-- STEP 4: Insert all 30 employee records
INSERT INTO employee_day2
    (emp_id, name, department, salary, city, experience_years)
VALUES
    (101, 'Amit', 'IT', 65000, 'Bengaluru', 4),
    (102, 'Priya', 'HR', 48000, 'Mumbai', 2),
    (103, 'Rahul', 'IT', 72000, 'Pune', 5),
    (104, 'Sneha', 'Finance', 58000, 'Delhi', 3),
    (105, 'Arjun', 'HR', 52000, 'Bengaluru', 4),
    (106, 'Neha', 'IT', 80000, 'Hyderabad', 7),
    (107, 'Vikram', 'Finance', 61000, 'Mumbai', 6),
    (108, 'Riya', 'Marketing', 45000, 'Pune', 1),
    (109, 'Karan', 'IT', 55000, 'Delhi', 3),
    (110, 'Ananya', 'Marketing', 49000, 'Bengaluru', 2),
    (111, 'Sagar', 'IT', 85000, 'Hyderabad', 8),
    (112, 'Meera', 'Finance', 74000, 'Bengaluru', 7),
    (113, 'Aditya', 'HR', 60000, 'Chennai', 5),
    (114, 'Pooja', 'Marketing', 42000, 'Delhi', 1),
    (115, 'Rohan', 'IT', 68000, 'Mumbai', 4),
    (116, 'Kavya', 'Finance', 90000, 'Hyderabad', 10),
    (117, 'Nikhil', 'HR', 47000, 'Pune', 2),
    (118, 'Anjali', 'Marketing', 57000, 'Hyderabad', 5),
    (119, 'Deepak', 'IT', 95000, 'Bengaluru', 9),
    (120, 'Simran', 'Finance', 53000, 'Chennai', 3),
    (121, 'Varun', 'IT', 60000, 'Pune', 2),
    (122, 'Tanvi', 'HR', 75000, 'Hyderabad', 8),
    (123, 'Harsh', 'Marketing', 51000, 'Mumbai', 4),
    (124, 'Ishita', 'Finance', 67000, 'Delhi', 6),
    (125, 'Manav', 'IT', 44000, 'Bengaluru', 1),
    (126, 'Diya', 'HR', 82000, 'Delhi', 9),
    (127, 'Akash', 'Marketing', 63000, 'Bengaluru', 6),
    (128, 'Shreya', 'Finance', 78000, 'Pune', 8),
    (129, 'Yash', 'IT', 73000, 'Hyderabad', 6),
    (130, 'Avni', 'Marketing', 46000, 'Chennai', 2);

-- STEP 5: Verify the total number of records
SELECT COUNT(*) AS total_employees
FROM employee_day2;

-- STEP 6: Display all employee records
SELECT *
FROM employee_day2
ORDER BY emp_id ASC;
