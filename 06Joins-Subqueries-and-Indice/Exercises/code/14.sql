SELECT 
	MIN(average_area) as min_average_area
FROM (
	SELECT
		AVG(c.area_in_sq_km) AS average_area
			
	FROM countries as c
		
		JOIN continents as con
			ON
			c.continent_code = con.continent_code
		
	GROUP BY con.continent_code
)