CREATE TABLE customers(
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

SELECT * FROM customers;

INSERT INTO customers(first_name, last_name)
VALUES	("fred", "fish"),
		("larry", "lobster"),
		("bubble", "bass");
        
Select * from customers;
		
DROP TABLE transactions;


CREATE TABLE transactions(
	transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(5, 2),
    customer_id INT,
    FOREIGN KEY(customer_id) references customers(customer_id)
);

SELECT * FROM transactions;

ALTER TABLE transactions
AUTO_INCREMENT = 1000;

ALTER TABLE transactions 
ADD CONSTRAINT fk_customer_id
FOREIGN KEY(customer_id) REFERENCES customers(customer_id);

INSERT INTO transactions(amount,customer_id)
VALUES (4.99,3),
		(2.89,2),
        (3.38,3),
        (4.99,1);
        
DELETE FROM customers 
WHERE customer_id = 3;