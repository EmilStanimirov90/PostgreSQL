SELECT 
	e.employee_id,
	CONCAT(e.first_name, ' ', last_name) as full_name,
	p.project_id,
	p.name as project_name

FROM 
	employees as e
		JOIN employees_projects as ep
			ON e.employee_id = ep.employee_id
				JOIN projects as p
					ON ep.project_id = p.project_id

WHERE p.project_id = 1