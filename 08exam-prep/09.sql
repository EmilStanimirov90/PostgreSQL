SELECT
	v.name as volunteers,
	v.phone_number,
	TRIM(REPLACE(v.address, 'Sofia', ''),' ,') as address
FROM 
	volunteers AS v
JOIN
	volunteers_departments AS dv
ON
	v.department_id = dv.id

WHERE dv.department_name = 'Education program assistant' AND
	v.address LIKE '%Sofia%' 
ORDER BY v.name