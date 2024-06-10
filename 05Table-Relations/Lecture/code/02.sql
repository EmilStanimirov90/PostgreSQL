SELECT 
	v.driver_id,
	v.vehicle_type,
	concat(c.first_name, ' ', c.last_name)
	FROM vehicles as v
 		JOIN campers as c
			ON c.id = v.driver_id