SELECT * FROM employee3;
--Q. Retrieve employees whose salary is between 40000 and 60000 -use BETWEEN operators
SELECT first_name,last_name,salary
FROM employee3
WHERE salary BETWEEN 40000 AND 60000;

-- FIND EMPLOYEES WHOSE EMIAL ADDRESS ends with gmail.com-USE LIKE opeartors
SELECT first_name,last_name,email
FROM employee3
WHERE email LIKE '%@gmail.com';


--find first_name which ends with a
SELECT first_name
FROM employee3
WHERE first_name LIKE '%a';
--first_name starts with j
SELECT first_name
FROM employee3
WHERE first_name LIKE '%a';

-- USING IN OPEARTOR
--Q.Retrive employees which belongs to either finance or marketting department using IN opeartor

SELECT first_name,last_name,department
FROM employee3
WHERE department IN ('Finance','Marketing','IT');

