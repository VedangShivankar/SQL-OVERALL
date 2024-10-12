SELECT * FROM transactions;

DELETE from transactions WHERE transaction_id = 1;

ALTER TABLE transactions
DROP column transaction_date;

INSERT INTO transactions
VALUES (1001, 3.38),
		(1002, 2.89),
        (1003,3.38),
        (1004,4.99);
        
        
        
        
        
        
        
        
DROP TABLE transactions;

CREATE TABLE transactions(
	transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(5, 2)
);

SELECT * FROM transactions;

INSERT INTO transactions(amount)
VALUES (4.99),
		(2.89),
        (3.38),
        (4.99);

ALTER TABLE transactions
AUTO_INCREMENT = 1000;

DELETE FROM transactions;
SELECT * FROM transactions;

INSERT INTO transactions(amount)
VALUES (4.99),
		(2.89),
        (3.38),
        (4.99);
