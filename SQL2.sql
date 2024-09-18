-- WHERE CLAUSE

SELECT *
FROM employee_salary
WHERE first_name = 'Leslie'
;


SELECT *
FROM employee_salary
WHERE salary >= 50000
;

SELECT * 
FROM employee_demographics
WHERE gender != 'Male'
;

SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'Male'
;

SELECT * 
FROM employee_demographics
WHERE (first_name = 'Leslie' and age = 44) or age >55
;

SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a%'
;