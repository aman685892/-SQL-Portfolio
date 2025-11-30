-- DROP TABLE IF IT ALREADY EXISTS 
DROP TABLE IF EXISTS employees; 

-- CREATE THE employees table

CREATE TABLE employees(
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	department VARCHAR(50),
	Salary DECIMAL(10,2) CHECK (Salary>0),
	Joining_date DATE NOT NULL,
	age INT CHECK(age>=18)
	); 

SELECT * FROM employees; 


-- INSERT DATA INTO TABLE employees

INSERT INTO employees(first_name,last_name,department,salary,joining_date,age)
	VALUES(	'Aman','Gupta','HR',25000.00,'2023-05-02',21),
	(	'Prashant','Raj','Managemnet',35000.00,'2024-05-02',22),
	(	'Amit','Raj','CLERK',45000.00,'2025-05-02',23),
	(	'Anshu','Suman','Finance',55000.00,'2026-05-02',24),
	(	'Ajit','Pathak','IT',65000.00,'2027-05-02',25); 


SELECT * FROM employees; 
--q1. Retrieve all employess first_names and departments 

SELECT
	FIRST_NAME,
	DEPARTMENT
FROM
	EMPLOYEES; 

SELECT * FROM employees;


-- Update the salary of all employess in thE it department by increasing its salary by 10%

UPDATE employees
SET salary=salary+(salary*0.1)
WHERE department='IT';

SELECT * FROM employees;


-- Delete all employees who are older than 23 years 

-- DELETE FROM employees
-- WHERE age>23; 


--q4. Add a new column email to the employee table

ALTER TABLE employees
ADD COLUMN email VARCHAR(100);

SELECT * FROM employees;

-- Q5. Rename the column named department to dept_name
ALTER TABLE employees
RENAME COLUMN department TO dept_name;

SELECT * FROM employees;

-- RETRIVE THE NAMES OF THE EMPLOYEES WHO JOINED AFTER JANUARY 1 2021

SELECT first_name,last_name FROM employees
WHERE joining_date >'2021-01-01';

-- q7. change the datatype of salary column TO  INTEGER

ALTER TABLE employees
ALTER COLUMN salary TYPE INTEGER USING salary::INTEGER; 


--Q8.LIST ALL EMPLOYEES WITH THEIR AGE AND SALARY IN DESCENDING ORDER OF SALARY

SELECT age,salary FROM  employees ORDER BY salary DESC; 


-- INSERT A NEW EMPLOYEE WITH THE FOLOWING DETAILS ('RAJ','SINGH','MARKETTING',60000,'2023-09-15',30)

INSERT INTO employees(first_name,last_name,dept_name,salary,joining_date,age)
VALUES('RAJ','SINGH','MARKETTING',60000,'2023-09-15',30);

SELECT * FROM employees;

-- UPDATE THE AGE OF EMPLOYEE +1 TO EVERY EMPLOYEE 
UPDATE  employees
SET age=age+1;

SELECT * FROM employees;


