SELECT
	COUNT(*)
FROM
	countries
LEFT JOIN
	countries_rivers
ON countries_rivers.country_code = countries.country_code

WHERE river_id IS NULL