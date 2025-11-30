DROP TABLE IF EXISTS students_2023;

CREATE TABLE students_2023(
	student_id INT PRIMARY KEY,
	student_name VARCHAR(100),
	course VARCHAR(50)
);
SELECT * FROM students_2023;

INSERT INTO students_2023(student_id,student_name,course)
	VALUES(1,'AMAN KUMAR','COMPUTER SCIENCE'),
	(2,'ANSHU KUMAR','ELECTRONICS'),
	(3,'AJIT KUMAR','MECHANICAL ENG'),
	(4,'PRASHANT KUMAR','CIVIL ENG'),
	(5,'RAJ KUMAR','AIML');
DROP TABLE IF EXISTS students_2024;

CREATE TABLE students_2024(
	student_id INT PRIMARY KEY,
	student_name VARCHAR(100),
	course VARCHAR(50)
);

SELECT * FROM students_2024;
INSERT INTO students_2024(student_id,student_name,course)
	VALUES(3,'AJIT KUMAR','MECHANICAL ENG'),
	(4,'PRASHANT KUMAR','CIVIL ENG'),
	(6,'RAJU','DIPLOMA'),
	(7,'MUKESH','B.ARCH'),
	(8,'RAHUL','BIO');

--UNION combines result remove duplicates
SELECT student_name,course
FROM students_2023
UNION
SELECT student_name,course
FROM students_2024; 


--UNIONALL combines result keep duplicates
SELECT student_name,course
FROM students_2023
UNION ALL
SELECT student_name,course
FROM students_2024;  

-- INTERSECT RETURN COMMON RESULTS IN BOTH THE TABLES
SELECT student_name,course
FROM students_2023
INTERSECT
SELECT student_name,course
FROM students_2024;

--EXCEPT returns result in the first table but not in the second table

SELECT student_name,course
FROM students_2023
EXCEPT
SELECT student_name,course
FROM students_2024;



	