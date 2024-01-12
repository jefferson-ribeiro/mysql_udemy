USE sakila;
SELECT * FROM staff;

-- WHERE / ORDER BY
SELECT actor_id, first_name, last_name 
FROM actor
WHERE actor_id <=10

ORDER BY first_name;

-- Modificar uma coluna
SELECT customer_id,
amount,
amount - (amount *0.10) AS '10% discount'
FROM payment
WHERE customer_id = 1;

-- Variações de WHERE

SELECT * FROM payment
-- ORDER BY amount desc
-- WHERE amount != 11.99 ou WHERE amount <> 11.99
WHERE amount = 11.99;

SELECT * FROM address
WHERE district != 'Texas';

-- Operador IN
SELECT * FROM address
WHERE district IN ('Alberta', 'Texas', 'California');

-- Between
SELECT * 
FROM payment
WHERE amount BETWEEN 1.99 AND 3.99;

-- LIKE
SELECT *
FROM actor
WHERE first_name LIKE 'A%';

-- IS NULL
SELECT *
FROM address
WHERE address2 IS NULL;

-- REGEXP
SELECT *
FROM actor
-- WHERE first_name REGEXP '^a|^d|^r';
WHERE first_name REGEXP '^[gcr]a';
