
DROP TABLE expenses;
CREATE TABLE expenses(
	expense_id INT PRIMARY KEY,
    expense_name VARCHAR(50),
    expense_total DECIMAL(10,2) 
);

INSERT INTO expenses
VALUES (1, "salaries", 0),
		(2, "supplies", 0),
        (3, "taxes", 0);
        
UPDATE expenses
SET expense_total = (SELECT SUM(salary) FROM employees)
WHERE expense_name = "salaries";
SELECT * FROM expenses;

CREATE TRIGGER after_salary_delete
AFTER DELETE ON employees
FOR EACH ROW
UPDATE expenses
SET expense_total = expense_total - OLD.salary
WHERE expense_name = "salaries";

CREATE TRIGGER after_salary_insert
AFTER INSERT ON employees
FOR EACH ROW
UPDATE expenses
SET expense_total = expense_total + NEW.salary
WHERE expense_name = "salaries";

SELECT * FROM expenses;
INSERT INTO employees
VALUES(6, "Sheldon", "Plankton", 10 , NULL ,"janitor", "2023-01-07",5);

CREATE TRIGGER after_salary_UPDATE
AFTER UPDATE ON employees
FOR EACH ROW
UPDATE expenses
SET expense_total = expense_total + (NEW.salary - OLD.salary)
WHERE expense_name = "salaries";