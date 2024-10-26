ALTER TABLE customers
ADD referral_id  INT;

UPDATE CUSTOMERS
SET referral_id = 1
WHERE customer_id = 2;

UPDATE CUSTOMERS
SET referral_id = 2
WHERE customer_id = 3;

UPDATE CUSTOMERS
SET referral_id = 2
WHERE customer_id = 4;

SELECT a.customer_id, a.first_name, a.last_name, 
		CONCAT(b.first_name, " ", b.last_name) AS "Referred by "
FROM CUSTOMERS AS a
INNER JOIN customers AS b
ON a.referral_id = b.customer_id;

ALTER TABLE employees
ADD supervisor_id INT;

UPDATE employees 
SET supervisor_id = 5
WHERE employeee_id = 6;
-- do this for customer_ids 2,3,4,6 

UPDATE employees 
SET supervisor_id = 1
WHERE employeee_id = 5;

SELECT a.first_name, a.last_name,
		CONCAT(b.first_name, " ", b.last_name) AS "reports to "
FROM employees AS a
INNER JOIN employees AS b
ON a.supervisor_id = b.employeee_id;

SELECT * FROM employees;
SELECT * FROM CUSTOMERS;