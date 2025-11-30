TRUNCATE TABLE employee1 CONTINUE IDENTITY;

SELECT * FROM employee1;
INSERT INTO employee1(name,position,department,hire_date,salary)
	TRUNCATE TABLE employee1 RESTART IDENTITY;VALUES('Aman','data analyst','uiet','2024-09-08',25000.00),
	  ('Ajit','Business analyst','uiet','2024-09-08',25000.00),
	  ('Amit','data eng','uiet','2024-09-08',25000.00),
	 ('Akhil','data prep','uiet','2024-09-08',25000.00); 
SELECT * FROM employee1;

