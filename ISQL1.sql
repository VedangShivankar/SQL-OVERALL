SELECT * 
FROM employee_demographics;

SELECT * 
FROM employee_salary; 

SELECT *
FROM employee_demographics
JOIN employee_salary
	ON employee_demographics.employee_id = employee_salary.employee_id;
    
SELECT * 
FROM employee_demographics
INNER Join employee_salary
	ON employee_demographics.employee_id = employee_salary.employee_id;
    

SELECT * 
FROM employee_demographics
 FULL Outer Join employee_salary
	ON employee_demographics.employee_id = employee_salary.employee_id;