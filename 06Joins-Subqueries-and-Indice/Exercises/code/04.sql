 SELECT 
	b.booking_id,
	a.name as apartment_owner,
	a.apartment_id,
	CONCAT(c.first_name, ' ', c.last_name) as customer_name
	
	
FROM 
	apartments AS a
FULL JOIN
	bookings as b
ON 
	a.booking_id = b.booking_id
FULL JOIN 
	customers as c
USING(customer_id)
	
ORDER BY b.booking_id, apartment_owner, customer_name