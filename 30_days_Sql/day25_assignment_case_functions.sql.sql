SELECT * FROM products;
/* CASE  with AND & OR operators-Stock Status
we will classify products based on quantity available

In stock if quantity is 10 or more
Limited stock if the quantity is between 5 and 9
Out of stock soon if quantity is less than 5 */

SELECT product_name,quantity,
	CASE
		WHEN quantity>=10 THEN 'In Stock'
		WHEN quantity BETWEEN 6 AND 9 THEN 'Limited Stock'
		ELSE 'Out Of stock Soon'
	END AS stock_status
FROM products; 

/* CASE with LIKE operator-Category Classification
Check if the category name contains 'Electronics' or 'Furniture' uisng LIKE
*/

SELECT product_name,category,
	CASE
		WHEN category LIKE 'Electronics%' THEN 'Electronic Item'
		WHEN category LIKE 'Furniture%' THEN 'Furniture Item'
		ELSE 'Accessory Item'
	END AS category_status
FROM products;







		
