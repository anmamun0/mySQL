SELECT UPPER('abcdef');

SELECT first_name, 
		UPPER(first_name) AS up_name
FROM EMPLOYEES;

SELECT first_name, 
		LOWER(first_name) AS up_name
FROM EMPLOYEES;

SELECT FLOOR( COS(RADIANS(90)) );

SELECT PI();

SELECT ROUND(12.456,2);

SELECT RAND();

SELECT first_name,
		LENGTH(first_name) AS len
FROM employees;

SELECT first_name,
		last_name,
        CONCAT(first_name,' ',last_name) AS full_name
FROM employees;


SELECT COUNT(*) AS total
FROM employees;

SELECT SUM(Salary) AS total_salary
FROM employees;

SELECT AVG(salary) AS avarage_salary
FROM employees;

SELECT MIN(salary) AS lowest_salary
FROM employees;

SELECT MAX(salary) AS higest_salary
FROM employees;

SELECT *FROM EMPLOYEES;


SELECT salary, GROUP_CONCAT(first_name) AS employ
FROM employees
GROUP BY salary;


SELECT CONCAT_WS(' - ','A','B','C','D');
SELECT TRIM(' Hay ');

SELECT REVERSE('hello_word');

SELECT CONCAT_WS(SPACE(3),'A','B','C','D','E');

SELECT STRCMP('DEF','ABC');
SELECT ASCII('A');
SELECT FORMAT(2343432345,8);

SELECT RAND(4);

SELECT CURDATE() AS cur; --  ->  2024-10-03 --
SELECT CURRENT_TIME() AS cur ;  -- ->  17:19:10 --  
SELECT NOW() AS cur ;  --  -> 2024-10-03 17:19:45 -- 

SELECT DATE(NOW()) AS today_date;  -- -> 2024-10-03 --

SELECT TIME(NOW()) AS today_time; -- -> 17:21:15 --

SELECT DATEDIFF(CURDATE(), '2023-12-04') AS different;  

SELECT DATA_ADD('2024-10-03', 7 DAY) AS new_date;


SELECT YEAR(NOW()) AS cur;
SELECT MONTH(NOW()) AS cur;
SELECT DAY(NOW()) AS cur;


SELECT STR_TO_DATE('03-10-2024','%d-%m-%Y') AS formated_date; 
 



SELECT COUNT(employee_id) FROM employees;
SELECT *FROM employees;


SELECT department_id, MAX(salary)
FROM employees 
GROUP BY department_id;

SELECT department_id, COUNT(*)
FROM employees 
GROUP BY department_id;


SELECT department_id, MAX(salary) 
FROM employees 
GROUP BY department_id
HAVING MAX(salary) >10000;

SELECT department_id, MAX(salary) AS maxi
FROM employees 
GROUP BY department_id
HAVING maxi >10000;

use programming;

CREATE TABLE missing
(
	 Name VARCHAR(30),
     Salary int
);

SELECT *FROM missing;

ALTER TABLE missing
ADD COLUMN Email int;

INSERT INTO missing(name,salary,email)
VALUES('AN Mamun',70000,34);

ALTER TABLE missing
DROP COLUMN Email;

ALTER TABLE missing
ADD COLUMN Email int;

SET SQL_SAFE_UPDATES = 0;
UPDATE missing
SET Email = 56
WHERE name LIKE 'AN%';
SET SQL_SAFE_UPDATES = 1;

SELECT *FROM missing;

ALTER TABLE missing
MODIFY email int;

SET SQL_SAFE_UPDATES = 0;
UPDATE missing
SET Email = 'almamun20044@gmail.com'
WHERE name LIKE 'AN%';
SET SQL_SAFE_UPDATES = 1;


SELECT *FROM MISSING;
ALTER TABLE MISSING
ADD PHONE INT;

ALTER TABLE MISSING
MODIFY PHONE CHAR(11);

SET SQL_SAFE_UPDATES = 0;
UPDATE MISSING
SET PHONE = NULL
WHERE NAME ='AN Mamun';
SET SQL_SAFE_UPDATES = 1;


SELECT *FROM MISSING;

ALTER TABLE MISSING
RENAME COLUMN PHONE TO MYPHONE;


ALTER TABLE MISSING
DROP MYPHONE;

ALTER TABLE MISSING
ADD COLUMN PHONE CHAR(11);

 

SET SQL_SAFE_UPDATES = 0;
UPDATE MISSING
SET PHONE = '01782059949'
WHERE NAME ='AN Mamun';
SET SQL_SAFE_UPDATES = 1;


ALTER TABLE MISSING
MODIFY COLUMN PHONE CHAR(11) CHECK( PHONE LIKE '017%');

ALTER TABLE MISSING
ADD COLUMN Age INT;

ALTER TABLE MISSING 
MODIFY Age INT DEFAULT 18;

SELECT *FROM MISSING;

INSERT INTO MISSING (NAME, SALARY , EMAIL, PHONE)
VALUES('Ashik',1000,'abc20044@gmail.com','01782059934');