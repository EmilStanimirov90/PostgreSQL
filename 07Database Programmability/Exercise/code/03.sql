CREATE OR REPLACE FUNCTION fn_is_word_comprised(
	set_of_letters VARCHAR(50),
	word VARCHAR(50)
) RETURNS BOOLEAN
AS
$$
BEGIN
	RETURN TRIM(LOWER(word), LOWER(set_of_letters)) = '';
END;
$$
LANGUAGE plpgsql;

SELECT * FROM fn_is_word_comprised('ois tmiah%f', 'halves')
SELECT * FROM fn_is_word_comprised('ois tmiah%f', 'Sofia')
SELECT * FROM fn_is_word_comprised('bobr', 'Rob')
SELECT * FROM fn_is_word_comprised('papopep', 'toe')
SELECT * FROM fn_is_word_comprised('R@o!B$B', 'Bob')
