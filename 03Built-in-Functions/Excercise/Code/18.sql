CREATE TABLE
	bookings_calculation
AS

SELECT
	booked_for,
	CAST(booked_for * 50 AS NUMERIC) AS multiplication,
	CAST(booked_for % 50 AS NUMERIC) AS modulo

FROM
	bookings
WHERE
	bookings.apartment_id = 93;