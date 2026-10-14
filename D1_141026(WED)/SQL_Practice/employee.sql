-- SQLite Database Setup
-- Source: employee.csv
-- Records: 10

CREATE TABLE "employee" (
    "emp_id" INTEGER,
    "name" VARCHAR(100),
    "department" VARCHAR(50),
    "salary" INTEGER,
    "city" VARCHAR(50),
    PRIMARY KEY ("emp_id")
);

INSERT INTO "employee" ("emp_id", "name", "department", "salary", "city")
VALUES (101, 'Amit', 'IT', 65000, 'Bengaluru');
INSERT INTO "employee" ("emp_id", "name", "department", "salary", "city")
VALUES (102, 'Priya', 'HR', 48000, 'Mumbai');
INSERT INTO "employee" ("emp_id", "name", "department", "salary", "city")
VALUES (103, 'Rahul', 'IT', 72000, 'Pune');
INSERT INTO "employee" ("emp_id", "name", "department", "salary", "city")
VALUES (104, 'Sneha', 'Finance', 58000, 'Delhi');
INSERT INTO "employee" ("emp_id", "name", "department", "salary", "city")
VALUES (105, 'Arjun', 'HR', 52000, 'Bengaluru');
INSERT INTO "employee" ("emp_id", "name", "department", "salary", "city")
VALUES (106, 'Neha', 'IT', 80000, 'Hyderabad');
INSERT INTO "employee" ("emp_id", "name", "department", "salary", "city")
VALUES (107, 'Vikram', 'Finance', 61000, 'Mumbai');
INSERT INTO "employee" ("emp_id", "name", "department", "salary", "city")
VALUES (108, 'Riya', 'Marketing', 45000, 'Pune');
INSERT INTO "employee" ("emp_id", "name", "department", "salary", "city")
VALUES (109, 'Karan', 'IT', 55000, 'Delhi');
INSERT INTO "employee" ("emp_id", "name", "department", "salary", "city")
VALUES (110, 'Ananya', 'Marketing', 49000, 'Bengaluru');
