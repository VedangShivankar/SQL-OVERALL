SELECT * from transactions;

SELECT COUNT(amount)
FROM transactions;

SELECT COUNT(amount) as "today transactions"
FROM transactions;

SELECT MAX(amount) as "max transactions"
FROM transactions;

SELECT MIN(amount) as "min transactions"
FROM transactions;

SELECT SUM(amount) as sum
FROM transactions;

SELECT * FROM employees;

SELECT  CONCAT(first_name," ", last_name) AS "full name"
FROM employees;