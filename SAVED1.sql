CREATE database myDb;

CREATE TABLE employees(
	employeee_id INT,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    hourly_pay DECIMAL(5, 2),
    hire_date DATE
);

SELECT * FROM employees;

-- can add columns

ALTER TABLE employees
ADD phone_number VARCHAR(15);


ALTER TABLE employees
RENAME COLUMN phone_number TO email;


ALTER TABLE employees
MODIFY COLUMN email VARCHAR(100);
