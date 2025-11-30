SELECT * FROM products;

--6.DATE_PART()-Get specific date part
--Extract the day of the week(Like sun,mon,tue,etc) from added_date
SELECT product_name,added_date,DATE_PART('dow',added_date)AS day_of_week
FROM products;

SELECT product_name,added_date,DATE_PART('Month',added_date)AS Month_added_date
FROM products;

SELECT product_name,added_date,DATE_PART('year',added_date)AS Month_added_date
FROM products; 


--7.DATE_TRUNC()-Truncate date to precision
--Truncate added_date to the start of the month
SELECT product_name,added_date,
DATE_TRUNC('month',added_date)AS Month_start
FROM products;
SELECT product_name,added_date,
DATE_TRUNC('year',added_date)AS Year_start
FROM products;
SELECT product_name,added_date,
DATE_TRUNC('week',added_date)AS week_start
FROM products; 

--INTERVAL- ADD OR SUBTRACT TIME INTERVALS
--Add 6 months to the added_date
SELECT product_name,added_date,added_date+INTERVAL '4 days'AS updated_date
FROM products;

SELECT product_name,added_date,added_date+INTERVAL '4 month'AS updated_date
FROM products; 

--9.CURRENT_TIME()-Retrieve only the current time 
SELECT CURRENT_TIME AS current_time1; 

--TO_DATE()-CONVERT String TO Date
--Convert a string to date format 

SELECT TO_DATE('09-08-2024','DD-MM-YYYY')AS converted_date;


