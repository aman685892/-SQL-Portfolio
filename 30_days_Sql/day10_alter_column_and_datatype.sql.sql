-- -- DROP THE TABLE IF IT ALREADY EXISTS
-- DROP TABLE IF EXISTS users; 

-- SELECT * FROM users; 

-- CREATE TABLE IF NOT EXISTS users(
-- 	user_id SERIAL PRIMARY KEY,
-- 	username VARCHAR(150),
-- 	email varchar(100) NOT NULL,
-- 	age INT,
-- 	city VARCHAR(50)

-- ); 

-- SELECT * FROM users; 

-- --Insert 5 samples users into users table
-- INSERT INTO users(username,email,age,city)
-- 	VALUES('aman','amanku11122@gmail.com',21,'chakia'),
-- 	('priya','Priya11122@gmail.com',21,'motihari'),
-- 	('Garima','Garima11122@gmail.com',22,'Mumbai'),
-- 	('Sayoni','Sayoni11122@gmail.com',23,'Ahmedabad'),
-- 	('Tarai','Tarai11122@gmail.com',24,'Kesaria'),
-- 	('Tarun','Tarun11122@gmail.com',25,'Delhi');

-- SELECT * FROM users; 

-- SELECT username FROM users;

-- SELECT * FROM users;

-- UPDATE users
-- SET age=27
-- WHERE username='aman'; 

-- SELECT * FROM users; 

-- SELECT * FROM users ORDER BY user_id ASC;

-- UPDATE users
-- SET city='chennai'
-- WHERE age>22; 

-- SELECT * FROM users;  

-- UPDATE users
-- SET age=32,city='pune'
-- WHERE username='Tarai';

-- SELECT * FROM users; 

-- UPDATE users
-- SET email='Sayoni11122@yahoo.com'
-- WHERE username='Sayoni';
-- SELECT * FROM users; 

-- UPDATE users
-- SET age=age-1 -- here age of sayoni increases by 1
-- WHERE email LIKE '%@yahoo.com'; 

-- SELECT * FROM users; 

-- TO RENAME THE COLUMN named users to Full_name

ALTER TABLE users
RENAME COLUMN username TO Full_Name;

SELECT * FROM users;  

-- To change the data type of column named age from INT to SMALLINT
ALTER TABLE users
ALTER  COLUMN age TYPE SMALLINT; 

-- TO add NOT NULL constraint to A  city column

ALTER TABLE users
ALTER COLUMN city SET NOT NULL; 

-- Adding CHECK constraint to age column

ALTER TABLE users
ADD CONSTRAINT age CHECK(age>=18); 

INSERT INTO users(user_id,full_name,email,age,city)
	VALUES(7,'Aman','amanku11122@gmail.com',18,'madras');




