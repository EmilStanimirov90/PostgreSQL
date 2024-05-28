SELECT
	first_name,
	last_name,
	extract('year' FROM born) as year

FROM
	authors