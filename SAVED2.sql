ALTER TABLE employees
DROP COLUMN email;

INSERT INTO employees
VALUES (1, "Eugene", "Krabs", 25.50, "2023-01-02");
SELECT * FROM employees;


INSERT INTO employees
VALUES  (2, "Squidward", "Tentacles", 15.00, "2023-01-03"), 
		(3, "Spongebob", "Squarepants", 12.50, "2023-01-04"), 
		(4, "Patrick", "Star", 12.50, "2023-01-05"), 
		(5, "Sandy", "Cheeks", 17.25, "2023-01-06");
SELECT * FROM employees;


INSERT INTO employees (employeee_id, first_name, last_name)
VALUES (6, "Sheldon", "Plankton");
