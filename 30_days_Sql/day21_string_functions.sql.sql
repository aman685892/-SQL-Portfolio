-- DROP TABLE IF EXISTS products;

-- CREATE TABLE products(
-- 	product_id SERIAL PRIMARY KEY,
-- 	product_name VARCHAR(100),
-- 	category VARCHAR(50),
-- 	price NUMERIC(10,2),
-- 	quantity INT,
-- 	added_date DATE,
-- 	discount_rate NUMERIC(5,2)
-- );
-- SELECT * FROM products;

-- INSERT INTO products (product_name, category, price, quantity, added_date, discount_rate) VALUES
-- ('Laptop', 'Electronics', 75000.50, 10, '2024-01-15', 10.00),
-- ('Smartphone', 'Electronics', 45000.99, 25, '2024-02-20', 5.00),
-- ('Headphones', 'Accessories', 1500.75, 50, '2024-03-05', 15.00),
-- ('Office Chair', 'Furniture', 5500.00, 20, '2023-12-01', 20.00),
-- ('Desk', 'Furniture', 8000.00, 15, '2023-11-20', 12.00),
-- ('Monitor', 'Electronics', 12000.00, 8, '2024-01-10', 8.00),
-- ('Printer', 'Electronics', 9500.50, 5, '2024-02-01', 7.50),
-- ('Mouse', 'Accessories', 750.00, 40, '2024-03-18', 10.00),
-- ('Keyboard', 'Accessories', 1250.00, 35, '2024-03-18', 10.00),
-- ('Tablet', 'Electronics', 30000.00, 12, '2024-02-28', 5.00);

-- SELECT * FROM products;

-- --Total Quantity available for all products
-- SELECT SUM(quantity)AS total_quantity
-- FROM products; 

-- SELECT SUM(quantity) AS total_quant_elec
-- FROM products
-- WHERE category='Electronics' AND price>20000;

-- --Total Number of Products
-- SELECT COUNT(*) AS total_products
-- FROM products;


-- -- Count with condition
-- SELECT COUNT(*) AS total_count
-- FROM products
-- WHERE category='Electronics';

-- SELECT COUNT(*) AS total_count
-- FROM products
-- WHERE product_name LIKE '%phone';

-- --Average price of products
-- SELECT AVG(price) AS average_price
-- FROM products;

-- --Average price of products with condition
-- SELECT AVG(price)AS  average_price
-- FROM products
-- WHERE category='Electronics';

-- SELECT AVG(price)AS  average_price
-- FROM products
-- WHERE category='Accessories' OR added_date='2024-02-01';

-- SELECT * FROM products;

-- --MAXIMUM AND MINIMUM VALUES
-- SELECT MAX(price)AS max_price
-- FROM products;

-- SELECT MAX(price)AS max_price,
-- 	MIN(price) AS min_price
-- 	FROM products;

SELECT * FROM products;

-- Get All category in Upper case
SELECT UPPER(category)AS  category_upper
FROM products;

--Get all the category in lowercase

SELECT LOWER(category)AS cat_low
FROM products;

--Join product_name and category text with hypen
SELECT CONCAT(product_name,'-',category) AS product_details
FROM products;

--Extract the first 5 characters from product_name
SELECT SUBSTRING(product_name,1,5)AS short_name
FROM products;

--Count Length
SELECT product_name, LENGTH(product_name)AS COUNT_CHAR
FROM products; 


--Remove leading and trailing space
SELECT LENGTH(TRIM('  Aman   '))AS trimmed_text
SELECT LENGTH('  Aman   ')AS trimmed_text

--Replce the word phone with device in product_name
SELECT REPLACE(product_name,'phone','device')AS updated_name
FROM products;
--Get the first 3 characters from left in  the category
SELECT LEFT(category,3) AS first_left_characters
FROM products; 

--Get the first 3 characters from the category coumn from the right
SELECT RIGHT(category,3)AS first_right_characters
FROM products;


