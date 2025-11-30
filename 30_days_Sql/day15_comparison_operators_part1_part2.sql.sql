-- COMPARISONS OPERATOR

SELECT * FROM employee3;

-- Matches age=30
SELECT * FROM employee3
WHERE age=30;

-- MATCHES ALL EXCEPT 30
SELECT * FROM employee3
WHERE age!=30; 


SELECT first_name,age FROM employee3
WHERE age!=30; 

-- SALARY GREATER THAN 50000
SELECT first_name,salary FROM employee3
WHERE salary>=50000; 


