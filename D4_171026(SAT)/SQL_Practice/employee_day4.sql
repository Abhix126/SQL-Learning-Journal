-- SQLite Database Setup
-- Source: employee_day4.csv
-- Records: 30

CREATE TABLE "employee_day4" (
    "emp_id" INTEGER,
    "name" VARCHAR(100),
    "department" VARCHAR(50),
    "salary" INTEGER,
    "city" VARCHAR(50),
    "experience_years" INTEGER,
    "bonus" INTEGER,
    "performance_rating" INTEGER,
    PRIMARY KEY ("emp_id")
);

INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (101, 'Amit', 'IT', 65000, 'Bengaluru', 4, 5000, 4);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (102, 'Priya', 'HR', 48000, 'Mumbai', 2, NULL, 3);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (103, 'Rahul', 'IT', 72000, 'Pune', 5, 7000, 4);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (104, 'Sneha', 'Finance', 58000, 'Delhi', 3, 3000, NULL);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (105, 'Arjun', 'HR', 52000, 'Bengaluru', 4, 2000, 3);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (106, 'Neha', 'IT', 80000, 'Hyderabad', 7, 8000, 5);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (107, 'Vikram', 'Finance', 61000, 'Mumbai', 6, NULL, 4);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (108, 'Riya', 'Marketing', 45000, 'Pune', 1, 1500, 2);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (109, 'Karan', 'IT', 55000, 'Delhi', 3, NULL, 3);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (110, 'Ananya', 'Marketing', 49000, 'Bengaluru', 2, 2000, 4);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (111, 'Sagar', 'IT', 85000, 'Hyderabad', 8, 10000, 5);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (112, 'Meera', 'Finance', 74000, 'Bengaluru', 7, 6000, 4);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (113, 'Aditya', 'HR', 60000, 'Chennai', 5, 4000, 4);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (114, 'Pooja', 'Marketing', 42000, 'Delhi', 1, NULL, NULL);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (115, 'Rohan', 'IT', 68000, 'Mumbai', 4, 5000, 3);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (116, 'Kavya', 'Finance', 90000, 'Hyderabad', 10, 12000, 5);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (117, 'Nikhil', 'HR', 47000, 'Pune', 2, NULL, 2);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (118, 'Anjali', 'Marketing', 57000, 'Hyderabad', 5, 3000, 4);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (119, 'Deepak', 'IT', 95000, 'Bengaluru', 9, 15000, 5);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (120, 'Simran', 'Finance', 53000, 'Chennai', 3, 2500, 3);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (121, 'Varun', 'IT', 60000, 'Pune', 2, 3000, NULL);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (122, 'Tanvi', 'HR', 75000, 'Hyderabad', 8, 7000, 5);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (123, 'Harsh', 'Marketing', 51000, 'Mumbai', 4, NULL, 3);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (124, 'Ishita', 'Finance', 67000, 'Delhi', 6, 4500, 4);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (125, 'Manav', 'IT', 44000, 'Bengaluru', 1, NULL, 2);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (126, 'Diya', 'HR', 82000, 'Delhi', 9, 9000, 5);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (127, 'Akash', 'Marketing', 63000, 'Bengaluru', 6, 4500, 4);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (128, 'Shreya', 'Finance', 78000, 'Pune', 8, 7500, NULL);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (129, 'Yash', 'IT', 73000, 'Hyderabad', 6, 6500, 4);
INSERT INTO "employee_day4" ("emp_id", "name", "department", "salary", "city", "experience_years", "bonus", "performance_rating")
VALUES (130, 'Avni', 'Marketing', 46000, 'Chennai', 2, NULL, NULL);
