DROP TABLE IF EXISTS customer; 

CREATE TABLE customer(
	customer_id INT PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	address_id INT
); 

INSERT INTO customer(customer_id,first_name,last_name,address_id)
VALUES(1,'Mary','Smith',5),
(2,'Madan','Mohan',6),
(3,'Linda','Williams',7),
(4,'Barbara','Jones',8);

SELECT * FROM customer;

DROP TABLE IF EXISTS payment; 


CREATE TABLE payment(
	customer_id INT PRIMARY KEY,
	amount INT,
	mode VARCHAR(50),
	payment_date DATE
);

SELECT * FROM payment;

INSERT INTO payment(customer_id,amount,mode,payment_date)
VALUES(1,60,'Cash','2020-09-24'),
(2,30,'Credit Card','2020-04-27'),
(8,110,'Cash','2021-01-26'),
(10,70,'mobile Payment','2021-02-28'),
(11,80,'Cash','2021-03-01');
 
SELECT * FROM payment;

SELECT * FROM 
customer AS c
INNER JOIN payment p
ON c.customer_id=p.customer_id;


SELECT c.first_name,p.mode,p.amount
FROM customer AS c
NNER JOIIN payment p
ON c.customer_id=p.customer_id; 



