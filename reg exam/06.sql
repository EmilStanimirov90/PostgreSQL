SELECT 
	p.id AS photo_id,
	capture_date,
	description,
	COUNT(c.id) AS comments_count
FROM 
	photos AS p
JOIN
	comments AS c
ON
	p.id = c.photo_id
WHERE
	p.description IS NOT NULL
GROUP BY
	p.id
ORDER BY
	comments_count DESC, p.id
LIMIT 3
