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


 