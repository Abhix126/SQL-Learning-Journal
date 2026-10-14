
---

# Day 1:SQL Fundamentals

**Date:** 14 October 2026  
**Database:** PostgreSQL 18  
**Level:** Beginner  
**Topics:** RDBMS, SQL Commands, SELECT, WHERE, DISTINCT, ORDER BY, LIMIT

### 1. What is SQL, and how does it differ from a DBMS?

**Answer:**

SQL (Structured Query Language) is a declarative language used to define, query, and manipulate data in relational database systems.

A DBMS is software that manages databases, while SQL is a language used to interact with compatible database systems.

Examples of RDBMS software include PostgreSQL, MySQL, and SQL Server.

### 2. What are the major categories of SQL commands?

**Answer:**

SQL commands are commonly grouped into:

| Category | Purpose | Examples |
|---|---|---|
| DDL | Define database structures | CREATE, ALTER, DROP |
| DML | Modify stored data | INSERT, UPDATE, DELETE |
| DQL | Retrieve data | SELECT |
| DCL | Manage privileges | GRANT, REVOKE |
| TCL | Control transactions | COMMIT, ROLLBACK |

These categories are conventional teaching classifications, not strict divisions of the SQL standard.

### 3. What is the difference between SELECT and WHERE?

**Answer:**

`SELECT` determines which expressions or columns appear in the query result.

`WHERE` filters rows based on a condition.

Example:

```sql
SELECT name, salary
FROM employees
WHERE salary > 50000;
```

This retrieves the names and salaries of employees whose salaries exceed 50,000.

### 4. What is DISTINCT, and how does it work?

**Answer:**

`DISTINCT` eliminates duplicate result rows based on the complete set of selected expressions.

Example:

```sql
SELECT DISTINCT department
FROM employees;
```

This returns each distinct department value once.

For duplicate elimination, PostgreSQL treats NULL values as duplicates of one another.

### 5. What is the difference between ORDER BY and LIMIT?

**Answer:**

`ORDER BY` sorts query results, while `LIMIT` restricts the number of returned rows.

Example:

```sql
SELECT name, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;
```

This returns three employees with the highest salaries.

If multiple employees share the same salary, add a unique tie-breaker to `ORDER BY` for deterministic results.

##  Practical SQL Query Challenges

**Table:** `employees`

| emp_id | name | department | salary | city |
|---|---|---|---|---|
| 101 | Amit | IT | 65000 | Bengaluru |
| 102 | Priya | HR | 48000 | Mumbai |
| 103 | Rahul | IT | 72000 | Pune |
| 104 | Sneha | Finance | 58000 | Delhi |
| 105 | Arjun | HR | 52000 | Bengaluru |
| 106 | Neha | IT | 80000 | Hyderabad |
| 107 | Vikram | Finance | 61000 | Mumbai |
| 108 | Riya | Marketing | 45000 | Pune |
| 109 | Karan | IT | 55000 | Delhi |
| 110 | Ananya | Marketing | 49000 | Bengaluru |

### Query Challenges

1.Retrieve the names and salaries of all employees.

2.Retrieve all employees whose salary is greater than 60,000

3.Display all unique departments in the company.

4.Retrieve employee names and salaries, sorted by salary in descending order. Break ties using `emp_id` in ascending order.

5.Retrieve the five employees with the highest salaries. Display their names and salaries, ordered by salary descending and `emp_id` ascending.


## 3. Session Summary

**Concepts covered:**
- SQL and relational database fundamentals
- SQL command classifications
- SELECT and WHERE
- DISTINCT
- ORDER BY and LIMIT


---
