
SELECT * FROM employee3;

-- RETRIVE THE first_name,last_name,salary and calculate a 10% bonus on the salary
SELECT first_name,salary,(salary*0.10)AS Bonus
FROM employee3; 

--Calculate the annual  salary and salary increment by 5%- show the monthly new salaray as well
SELECT first_name,last_name,salary,
	(salary*12) AS annual_salary,
	(salary*0.05) AS salary_increment,
	(salary+salary*0.05) AS monthly_salary,
	(salary*1.05) AS new_salary
FROM employee3;  





