-- Aggregation Functions
SELECT MAX(replacement_cost), MIN (replacement_cost) FROM film;

SELECT ROUND(AVG(replacement_cost),3) FROM film;

SELECT SUM(replacement_co) FROM film;


-- Group By
SELECT customer_id, COUNT(amount) FROM payment GROUP BY customer_id ORDER BY SUM(amount);

SELECT customer_id,staff_id,SUM(amount) FROM payment GROUP BY staff_id,customer_id
ORDER BY customer_id;

SELECT DATE(payment_date), SUM(amount) FROM payment GROUP BY DATE(payment_date)
ORDER BY SUM(amount) DESC;

SELECT staff_id,COUNT(amount) FROM payment GROUP BY staff_id;

SELECT rating, ROUND(AVG(replacement_cost),4) FROM film GROUP BY rating;

SELECT * FROM PAYMENT;

SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id ORDER BY SUM(amount) 
DESC LIMIT 5;


-- Having
SELECT customer_id,SUM(amount) FROM payment 
GROUP BY customer_id HAVING SUM(amount) > 100;


SELECT store_id, COUNT(*) FROM customer GROUP BY store_id HAVING COUNT(*) > 300;



