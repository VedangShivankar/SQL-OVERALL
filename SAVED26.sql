SELECT DISTINCT first_name, last_name
FROM transactions
INNER JOIN customers
ON transactions.customer_id = customers.customer_id;

SELECT * FROM customers;

DELIMITER $$
CREATE PROCEDURE get_customers()
BEGIN
	SELECT * FROM customers;
END $$
DELIMITER ;
CALL get_customers();

DELIMITER $$
CREATE PROCEDURE find_customer(IN id INT)
BEGIN
	SELECT * FROM customers
    WHERE customer_id = id;
END $$
DELIMITER ;
CALL find_customer(1);

DELIMITER $$
CREATE PROCEDURE find_specific_customer(IN f_name VARCHAR (50),
								IN l_name VARCHAR (50))
BEGIN
SELECT * FROM customers
WHERE firsT_name = f_name AND last_name = l_name;
END $$
DELIMITER ;
CALL find_specific_customer("Larry","Lobster");

DROP PROCEDURE find_specific_customer;
DROP PROCEDURE find_customer;
DROP PROCEDURE get_customers;



