SELECT *
FROM EMPLOYEES;

WITH AVG_IT AS
	(
		SELECT AVG(SALARY) AS SEL1
		FROM EMPLOYEES
		WHERE DEPARTMENT_ID = 60
),
MAX_MKT AS
	(
		SELECT MAX(SALARY) SEL2
		FROM EMPLOYEES
		WHERE DEPARTMENT_ID = 20
	)
SELECT *
FROM EMPLOYEES 
WHERE SALARY > (SELECT SEL1 FROM AVG_IT) AND SALARY < (SELECT SEL2 FROM MAX_MKT);




