USE sakila;

CREATE OR REPLACE VIEW vendas_por_cliente AS
SELECT 
	cus.customer_id,
    cus.first_name,
    cus.last_name,
    pay.amount
FROM customer cus
JOIN payment pay
		ON cus.customer_id = pay.payment_id
ORDER BY pay.amount DESC;

SELECT * FROM sakila.vendas_por_cliente
WHERE amount >= 9.99

-- FUNCOES ESSENCIAIS
-- CONSULTAR MATERIAL:
-- https://dev.mysql.com/doc/refman/8.0/en/string-functions.html1