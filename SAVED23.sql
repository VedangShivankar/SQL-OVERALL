SELECT * FROM transactions;     

SELECT SUM(amount), order_date
FROM transactions
GROUP BY order_date;

SELECT COUNT(amount), customer_id
FROM transactions
GROUP BY customer_id
HAVING COUNT(amount) > 1 AND customer_id IS NOT NULL;

SELECT MAX(amount), order_date
FROM transactions
GROUP BY order_date;