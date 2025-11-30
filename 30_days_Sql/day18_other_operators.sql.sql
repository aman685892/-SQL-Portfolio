SELECT * FROM employee3;

--Q.FIND employees where email column is NULL(If Applicable)
SELECT first_name,last_name,email
FROM employee3
WHERE email IS NULL;-- IS NULL OPEARTOR

--Q.LIST employees sorted by salary in descending order
SELECT first_name,last_name,salary
FROM employee3
ORDER BY salary DESC; 

--Q.Retrive the top 5 highest paid employees
SELECT first_name,last_name,salary
FROM employee3
ORDER BY salary DESC
LIMIT 5; 

--Q.Retrive a list of unique departments
SELECT DISTINCT department
FROM employee3;

SELECt COUNT(DISTINCT department) AS dep_count
FROM employee3;

