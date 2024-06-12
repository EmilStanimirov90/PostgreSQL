SELECT
	a.name,
	at.animal_type,
	TO_CHAR(a.birthdate, 'DD.MM.YYYY') as birthdate
FROM
	animals AS a
	JOIN
	animal_types as at
	ON at.id = a.animal_type_id
ORDER BY a.name