SELECT 
	mountain_range, peak_name, elevation
	
FROM peaks

JOIN mountains

ON
	peaks.mountain_id = mountains.id
WHERE
	mountains.mountain_range Like 'Rila'
ORDER BY
	elevation DESC;
    