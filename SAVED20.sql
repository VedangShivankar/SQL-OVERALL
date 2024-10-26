CREATE VIEW employee_attendance AS
SELECT first_name, last_name
FROM employees;

SELECT * FROM employee_attendance
ORDER BY last_name ASC;

DROP VIEW employee_attendance;

ALTER TABLE customers
ADD COLUMN email VARCHAR (50);

UPDATE customers 
SET email = "FFish@gmail.com"
WHERE customer_id = 1;

UPDATE customers 
SET email = "LLobster@gmail.com"
WHERE customer_id = 2;

UPDATE customers 
SET email = "Bbass@gmail.com"
WHERE customer_id = 3;

UPDATE customers 
SET email = "PPuff@gmail.com"
WHERE customer_id = 4;

SELECT * FROM customers;

CREATE VIEW customer_emails AS
SELECT email
FROM customers;

SELECT * FROM customer_emails;

INSERT INTO customers
VALUES(5, "Pearl", "Crabs", NULL, "PKrabs@gmail.com");