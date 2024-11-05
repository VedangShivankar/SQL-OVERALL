SELECT * FROM  customers;
SET foreign_key_checks = 1;
SELECT * FROM transactions;

ALTER TABLE transactions
DROP foreign key fk_customer_id;

ALTER TABLE transactions
ADD CONSTRAINT fk_customer_id
FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
ON DELETE SET NULL;

DELETE FROM customers
WHERE customer_id = 4;

ALTER TABLE transactions
DROP foreign key fk_customer_id;

ALTER TABLE transactions
ADD CONSTRAINT fk_customer_id
FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
ON DELETE CASCADE;