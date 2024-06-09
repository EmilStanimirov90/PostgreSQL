SELECT 
	e.employee_id,
	CONCAT(e.first_name, ' ', last_name) as full_name,
	d.department_id,
	d.name as department_name

FROM 
	employees as e
		JOIN departments as d
			ON e.employee_id = d.manager_id
ORDER BY e.employee_id
LIMIT 5