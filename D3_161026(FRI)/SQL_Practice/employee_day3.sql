-- SQLite Database Setup
-- Source: employee_day3.csv
-- Records: 30

CREATE TABLE "employee_day3" (
    "emp_id" INTEGER,
    "name" VARCHAR(100),
    "department" VARCHAR(50),
    "salary" INT,
    "city" VARCHAR(50),
    "experience_years" INTEGER,
    "bonus" INTEGER,
    PRIMARY KEY ("emp_id")
);

INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (101, 'Amit', 'IT', 65000, 'Bengaluru', 4, 5000);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (102, 'Priya', 'HR', 48000, 'Mumbai', 2, NULL);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (103, 'Rahul', 'IT', 72000, 'Pune', 5, 7000);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (104, 'Sneha', 'Finance', 58000, 'Delhi', 3, 3000);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (105, 'Arjun', 'HR', 52000, 'Bengaluru', 4, 2000);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (106, 'Neha', 'IT', 80000, 'Hyderabad', 7, 8000);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (107, 'Vikram', 'Finance', 61000, 'Mumbai', 6, NULL);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (108, 'Riya', 'Marketing', 45000, 'Pune', 1, 1500);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (109, 'Karan', 'IT', 55000, 'Delhi', 3, NULL);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (110, 'Ananya', 'Marketing', 49000, 'Bengaluru', 2, 2000);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (111, 'Sagar', 'IT', 85000, 'Hyderabad', 8, 10000);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (112, 'Meera', 'Finance', 74000, 'Bengaluru', 7, 6000);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (113, 'Aditya', 'HR', 60000, 'Chennai', 5, 4000);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (114, 'Pooja', 'Marketing', 42000, 'Delhi', 1, NULL);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (115, 'Rohan', 'IT', 68000, 'Mumbai', 4, 5000);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (116, 'Kavya', 'Finance', 90000, 'Hyderabad', 10, 12000);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (117, 'Nikhil', 'HR', 47000, 'Pune', 2, NULL);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (118, 'Anjali', 'Marketing', 57000, 'Hyderabad', 5, 3000);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (119, 'Deepak', 'IT', 95000, 'Bengaluru', 9, 15000);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (120, 'Simran', 'Finance', 53000, 'Chennai', 3, 2500);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (121, 'Varun', 'IT', 60000, 'Pune', 2, 3000);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (122, 'Tanvi', 'HR', 75000, 'Hyderabad', 8, 7000);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (123, 'Harsh', 'Marketing', 51000, 'Mumbai', 4, NULL);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (124, 'Ishita', 'Finance', 67000, 'Delhi', 6, 4500);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (125, 'Manav', 'IT', 44000, 'Bengaluru', 1, NULL);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (126, 'Diya', 'HR', 82000, 'Delhi', 9, 9000);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (127, 'Akash', 'Marketing', 63000, 'Bengaluru', 6, 4500);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (128, 'Shreya', 'Finance', 78000, 'Pune', 8, 7500);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (129, 'Yash', 'IT', 73000, 'Hyderabad', 6, 6500);
INSERT INTO "employee_day3" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus")
VALUES (130, 'Avni', 'Marketing', 46000, 'Chennai', 2, NULL);
