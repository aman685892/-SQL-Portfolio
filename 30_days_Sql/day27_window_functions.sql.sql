SELECT * FROM products; 

-- Assign a unique row number to each product within the same category
SELECT product_name,category,price,
	ROW_NUMBER() OVER (PARTITION BY category ORDER BY price DESC) AS row_number
FROM products; 

-- Also you can use DENSE_RANK()
SELECT product_name,category,price,
	DENSE_RANK() OVER (PARTITION BY category ORDER BY price DESC) AS row_number
FROM products; 

--Also you can use RANK()
SELECT product_name,category,price,
	RANK() OVER (PARTITION BY category ORDER BY price DESC) AS row_number
FROM products; 


SELECT product_name,category,price,
	SUM(price) OVER(ORDER BY price ASC)AS Running_total
FROM products; 

SELECT product_name,category,price,
	SUM(price) OVER( PARTITION BY category ORDER BY price ASC)AS Running_total
FROM products; -- category wise partition and cumulative sum

-- Similarly for AVERAGE WE CAN USE
SELECT product_name,category,price,
	AVG(price) OVER(PARTITION BY category ORDER BY price ASC )AS Running_total
FROM products;






