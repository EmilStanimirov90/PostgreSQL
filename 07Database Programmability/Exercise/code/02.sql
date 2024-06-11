CREATE OR REPLACE FUNCTION fn_calculate_future_value(
	initial_sum DECIMAL,
	yearly_interest_rate DECIMAL,
	number_of_years INT
) RETURNS DECIMAL
AS
$$	
	DECLARE
		future_value DECIMAL;
	BEGIN
		future_value := initial_sum * POWER((1 + yearly_interest_rate), number_of_years);
		RETURN TRUNC(future_value, 4);
	END;
	
$$
LANGUAGE plpgsql;


SELECT * FROM fn_calculate_future_value(1000, 0.1, 5)
SELECT * FROM fn_calculate_future_value(2500, 0.30, 2)
SELECT * FROM fn_calculate_future_value(500, 0.25, 10)