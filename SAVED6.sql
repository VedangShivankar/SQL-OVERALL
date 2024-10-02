CREATE TABLE products (
	product_id INT,
	product_name VARCHAR(25) UNIQUE,
    PRICE DECIMAL(4,2)
);

-- alternatively 

ALTER TABLE products
ADD CONSTRAINT
UNIQUE(product_name);

INSERT INTO products
VALUES 
(100, "hamburger", 3.99),
(101, "fries", 1.89),
(102, "soda" , 1.00),
(103, "ice cream", 1.49);

SELECT * FROM products;
