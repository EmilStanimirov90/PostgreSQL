SELECT
	c.country_name,
	r.river_name
	
FROM countries as c
	
	LEFT JOIN
		countries_rivers as cr
	ON
		c.country_code = cr.country_code
	LEFT JOIN rivers as r
		ON
			r.id = cr.river_id
	JOIN continents as con
		ON
		c.continent_code = con.continent_code
	
WHERE con.continent_name = 'Africa'
ORDER BY c.country_name
LIMIT 5