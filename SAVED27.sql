ALTER TABLE employees
ADD COLUMN salary DECIMAL AFTER hourly_pay;
SELECT * FROM employees;

UPDATE employees
SET salary = hourly_pay * 2800;
SELECT * FROM employees;

CREATE TRIGGER before_hourly_pay_update
BEFORE UPDATE ON employees
FOR EACH ROW
SET NEW.salary = (NEW.hourly_pay * 2080);

SHOW TRIGGERS;
SELECT * FROM employees;

UPDATE employees
SET hourly_pay = 50
WHERE employeee_id = 1;
SELECT * FROM employees;

UPDATE employees
SET hourly_pay = hourly_pay + 1
WHERE employeee_id = 1;
SELECT * FROM employees;

DELETE FROM employees
WHERE employeee_id = 6;
SELECT * FROM employees;

CREATE TRIGGER before_hourly_pay_insert
BEFORE INSERT ON employees
FOR EACH ROW
SET NEW.salary = (NEW.hourly_pay * 2080);

INSERT INTO employees
VALUES(6, "Sheldon", "Plankton", 10 , NULL ,"janitor", "2023-01-07",5);
SELECT * FROM employees;


