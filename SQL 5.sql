SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2 , 1
;

SELECT gender, AVG(age) AS avg_age
from employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;