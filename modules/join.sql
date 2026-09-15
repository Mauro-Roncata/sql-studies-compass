-- AS Statement 
SELECT COUNT(amount) AS num_transaction FROM payment; 

SELECT customer_id, SUM(amount) AS total_spent 
FROM payment GROUP BY customer_id
HAVING SUM(amount) > 100;

-- Inner Join
SELECT payment_id, payment.customer_id, first_name  FROM payment 
INNER JOIN customer ON payment.customer_id = customer.customer_id;

-- Full Outer Join
SELECT * FROM customer 
FULL OUTER JOIN payment ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS null OR payment.payment_id IS null;

-- Left Outer Join
SELECT film.film_id,film.title,inventory_id, store_id FROM film
LEFT JOIN inventory ON inventory.film_id = film.film_id
WHERE inventory.film_id IS null;

