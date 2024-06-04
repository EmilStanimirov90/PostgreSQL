SELECT 
	 
	COUNT(CASE department_id WHEN 1 THEN 1 END) AS "Engineering",
	COUNT(CASE department_id WHEN 2 THEN 1 END) AS "Tool Design",
	COUNT(CASE department_id WHEN 3 THEN 1 END)  AS "Sales",
	COUNT(CASE department_id WHEN 4 THEN 1 END)  AS "Marketing",
	COUNT(CASE department_id WHEN 5 THEN 1 END)  AS "Purchasing",
	COUNT(CASE department_id WHEN 6 THEN 1 END)  AS "Research and Development",
	COUNT(CASE department_id WHEN 7 THEN 1 END)  AS "Production" 
FROM
 	employees