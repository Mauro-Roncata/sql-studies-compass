-- Case
SELECT customer_id, 
CASE
	WHEN (customer_id <= 100) THEN 'Premium'
	WHEN (customer_id BETWEEN 100 and 200) THEN 'Plus'
	ELSE 'Normal'
END AS class_customer
FROM customer

SELECT customer_id,
CASE customer_id
	WHEN 2 THEN 'Winner'
	WHEN 5 THEN 'Second Place'
	ELSE 'Normal'
END AS raffle_results
FROM customer

-- Cast
SELECT CHAR_LENGTH(CAST(inventory_id AS VARCHAR)) FROM rental

-- View 
CREATE VIEW customer_info AS 
SELECT first_name, last_name, address FROM customer
INNER JOIN address ON customer.address_id = address.address_id

CREATE OR REPLACE VIEW customer_info AS
SELECT first_name, last_name, address, district FROM customer
INNER JOIN address ON customer.address_id = address.address_id

DROP VIEW IF EXISTS customer_info

ALTER VIEW customer_info RENAME to c_info

SELECT * FROM c_info

