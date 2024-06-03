SELECT 
	MAX(age) AS maximum_age
FROM wizard_deposits


SELECT 
	age AS maximum_age
FROM wizard_deposits
ORDER BY age DESC
LIMIT 1
