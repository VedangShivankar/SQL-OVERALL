
SELECT gender , AVG(age) , MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

SELECT occupation
FROM employee_salary
GROUP BY occupation, salary 
;

SELECT *	
FROM employee_demographics
ORDER BY gender, age DESC;

