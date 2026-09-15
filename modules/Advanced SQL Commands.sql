-- Timestamp

SELECT EXTRACT(YEAR FROM payment_date) AS pay_year
FROM payment

SELECT AGE(payment_date) FROM payment;

SELECT TO_CHAR(payment_date, 'mon/YYYY') FROM payment;


-- Mathematical Operators
SELECT ROUND(rental_rate/replacement_cost, 2)*100 AS percent_cost
FROM film


-- String Functions
SELECT first_name || ' ' || last_name AS full_name FROM customer

SELECT LENGTH(first_name) FROM customer

SELECT LOWER(LEFT(first_name,1)) || LOWER(last_name) || '@gmail.com' AS custom_email
FROM customer


-- SubQuery
SELECT title,rental_rate FROM film 
WHERE rental_rate > (SELECT AVG(rental_rate) FROM film)

SELECT film_id, title FROM film
WHERE film_id IN
(SELECT inventory.film_id FROM rental
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30') ORDER BY title


-- Self Join
SELECT f1.title, f2.title, f1.length FROM film AS f1
INNER JOIN film AS f2 ON f1.film_id != f2.film_id
AND f1.length = f2.length













