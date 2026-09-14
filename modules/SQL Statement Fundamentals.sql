SELECT first_name, last_name, email FROM customer;

-- Distinc
SELECT DISTINCT rating FROM film;

-- Count
SELECT COUNT(DISTINCT amount) FROM payment;

-- Where
SELECT title FROM film WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating = 'R';

SELECT email FROM customer WHERE first_name = 'Nancy' AND last_name = 'Thomas';

SELECT description FROM film WHERE title = 'Outlaw Hanky';

SELECT phone FROM address WHERE address = '269 Ipoh Drive';

-- Order By 
SELECT store_id, first_name, last_name FROM customer ORDER BY store_id, first_name ASC;

SELECT * FROM payment WHERE amount != 0.00 ORDER BY payment_date DESC LIMIT 5;

SELECT customer_id FROM payment ORDER BY payment_date ASC LIMIT 10;

-- Between
SELECT * FROM payment WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15';


-- IN
SELECT * FROM payment WHERE amount IN (0.99,1.98,199);

SELECT  COUNT(*) FROM payment WHERE amount NOT IN (0.99,1.98,199);

-- Like and Ilike
SELECT * FROM customer WHERE first_name LIKE 'J%' AND last_name LIKE 'S%';

SELECT * FROM customer WHERE first_name ILIKE 'j%' AND last_name ILIKE 'j%';

SELECT * FROM customer WHERE first_name ILIKE 'maur%';

SELECT * FROM customer WHERE first_name LIKE 'J%' AND last_name NOT LIKE 'S%';