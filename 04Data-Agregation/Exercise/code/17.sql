SELECT 
	department_id,
	COUNT(department_id) AS num_employees,
	CASE
	 	WHEN AVG(salary) > 50000 THEN 'Above average'
	 	WHEN AVG(salary) <= 50000 THEN 'Below average'
	
	END AS project_status
FROM employees
	
GROUP BY department_id
HAVING AVG(SALARY) > 30000
ORDER BY department_id