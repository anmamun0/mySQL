
 
USE dummydb;

SELECT *FROM countries;
SELECT *FROM departments;
SELECT *FROM employees;
SELECT *FROM job_history;
SELECT *FROM jobs;
SELECT *FROM locations;
SELECT *FROM regions;
 
 
SELECT *
FROM employees
WHERE
    employee_id >= 100
    AND employee_id <= 150;

SELECT *
FROM employees
WHERE
    employee_id BETWEEN 100
    AND 150;

SELECT
    first_name,
    salary,
    salary + 10000 AS new_salary,
    salary + 15 AS 15_salary
FROM
    employees;

SELECT
    department_id,
    first_name,
    salary,
    CASE
        WHEN department_id = 100 THEN salary + 10000
        ELSE salary
    END AS new_salary
FROM
    employees;

SELECT
    DISTINCT job_id
FROM
    EMPLOYEES;









