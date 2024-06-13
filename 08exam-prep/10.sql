SELECT
	a.name as animal,
	EXTRACT(YEAR FROM a.birthdate) as birth_year,
	at.animal_type

FROM animals AS a
JOIN animal_types AS at
ON a.animal_type_id = at.id
WHERE
	at.animal_type <> 'Birds' AND
	AGE('01/01/2022', a.birthdate) < '5 year' AND
	a.owner_id IS NULL
ORDER BY a.name