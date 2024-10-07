INSERT INTO products
VALUES (104, "straw", 0.00),
	   (105, "napkin", 0.00),
       (106, "plastic fork", 0.00),
       (107, "plastic spoon", 0.00);

SELECT * FROM products;

ALTER TABLE products 
ALTER price SET DEFAULT 0;

INSERT INTO products(product_id, product_name)
VALUES (104, "straw"),
	   (105, "napkin"),
       (106, "plastic fork"),
       (107, "plastic spoon");
       
CREATE TABLE transactions(
	transaction_id INT,
	amount DECIMAL(5, 2),
	transaction_date DATETIME DEFAULT NOW()
);

INSERT INTO transactions(transaction_id, amount)
VALUES (1,4.99),
		(2,2.89);
SELECT * FROM transactions; 


