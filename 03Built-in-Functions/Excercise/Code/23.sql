SELECT
	user_id,
	CONCAT('10 mons ', AGE(starts_at, booked_at)) AS early_birds

FROM 
	bookings
WHERE
	starts_at - booked_at >= '10 MONTHS';