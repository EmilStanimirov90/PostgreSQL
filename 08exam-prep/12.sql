CREATE OR REPLACE PROCEDURE sp_animals_with_owners_or_not(IN animal_name VARCHAR(30), OUT result VARCHAR(30))
AS
$$
BEGIN
	animal_name := (SELECT
	o.name
	FROM owners as o
	JOIN animals as a
	ON o.id = a.owner_id
	WHERE a.name = animal_name);


	IF animal_name IS NULL THEN
		result :=  'For adoption';
	ELSE
		result :=  animal_name;
	END IF;

END;
$$
LANGUAGE plpgsql;


CALL sp_animals_with_owners_or_not('Pumpkinseed Sunfish');
CALL sp_animals_with_owners_or_not('Hippo');
CALL sp_animals_with_owners_or_not('Brown bear')