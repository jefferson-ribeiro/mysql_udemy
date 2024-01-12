USE saKila;
SELECT
	cus.customer_id AS ID,
    cus.first_name AS Nome,
    cus.last_name AS Sobrenome,
    SUM(amount) AS Total,
    COUNT(amount) AS Compras
FROM payment pay
JOIN customer cus USING(customer_id)
GROUP BY customer_id
HAVING Total >= 150 AND Compras >=35
ORDER BY Total DESC;


-- SUBQUERY
SELECT *
FROM payment
WHERE amount > (
	SELECT AVG(amount)
	FROM payment
);

-- MAX
SELECT *
FROM payment
WHERE amount = (
	SELECT MAX(amount)
	FROM payment
	WHERE customer_id = 1
);

-- IN
SELECT *
FROM customer
WHERE customer_id IN (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
	HAVING COUNT(*) > 35
);

-- ANY (qualquer um)

SELECT *
FROM customer
WHERE customer_id = ANY (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
	HAVING COUNT(*) > 35
);
