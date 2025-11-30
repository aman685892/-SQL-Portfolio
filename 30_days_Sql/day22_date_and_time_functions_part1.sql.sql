SELECT * FROM products;

--1.NOW() get current date and time
SELECT NOW()AS current_date_time; 

--2.CURRENT_DATE -Get current date
SELECT CURRENT_DATE AS today_date; 

SELECT added_date,current_date ,(CURRENT_DATE-added_date) AS day_difference
FROM products;

--3.Extract()-Extract parts of a date
--Extract the year,month and day from added_date column
SELECT
	PRODUCT_NAME,
	EXTRACT(
		YEAR
		FROM
			ADDED_DATE
	) AS YEAR_ADDED
FROM 
	PRODUCTS; 

SELECT product_name, EXTRACT(MONTH FROM added_date)AS Month_added,
EXTRACT(DAY FROM added_date)AS day_added
FROM products;

--4.AGE()-Calculate age between dates
--Calculate the time difference between added_date and todays_date

SELECT product_name,AGE(CURRENT_DATE,added_date)AS Age_since_added
FROM products;

--5.TO_CHAR()- FORMAT DATE AS STRINGS
--Format added_date in a custom format (DD-Mon-YYYY)
SELECT product_name,TO_CHAR(added_date,'DD-Mon-YYYY')AS formatted_date
FROM products;


