-- SELECT * FROM customer; 
-- SELECT * FROM payment; 

-- SELECT * FROM 
-- customer AS c
-- LEFT JOIN payment AS p
-- ON c.customer_id=p.customer_id;  


SELECT * FROM customer AS c
RIGHT JOIN payment AS p
ON c.customer_id=p.customer_id;