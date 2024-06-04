SELECT * 
	
FROM departments as d
	JOIN employees as e
		ON d.id = e.department_id
	