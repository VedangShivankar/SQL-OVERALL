CREATE TABLE income(
income_name VARCHAR(50),
amount DECIMAL (5,2)
);
ALTER TABLE income
DROP COLUMN amount;

ALTER TABLE income
ADD amount DECIMAL(10,2);

SELECT * FROM income ;

DELETE FROM income
WHERE income_name = "orders";

INSERT INTO income(income_name, amount)
VALUES ("orders", 100000.00),
	("merchandise", 50000.00),
		("repair", 15000.00);
        
CREATE TABLE expenses(
expense_name VARCHAR(50),
amount DECIMAL (10,2)
);
INSERT INTO expenses(expense_name, amount)
VALUES ("wages", -25000.00),
	("tax", -50000.00),
		("gambling", -15000.00);
        
SELECT * FROM income 
UNION
SELECT * FROM expenses ;

DROP TABLE income;
DROP TABLE expenses;