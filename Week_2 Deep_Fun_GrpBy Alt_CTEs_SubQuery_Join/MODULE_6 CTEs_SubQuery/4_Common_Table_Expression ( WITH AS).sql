SELECT * 
FROM EMPLOYEES
LIMIT 5;

WITH TEMP AS
(
SELECT * 
FROM EMPLOYEES
LIMIT 5
)

SELECT *
FROM TEMP;