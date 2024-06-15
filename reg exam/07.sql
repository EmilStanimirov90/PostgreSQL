SELECT 
	CONCAT(a.id, ' ', a.username) AS id_username,
	email
	
FROM 
	accounts AS a
JOIN
	accounts_photos AS ap
ON	
	a.id = ap.account_id
WHERE
	a.id = ap.photo_id
ORDER BY
	a.id


