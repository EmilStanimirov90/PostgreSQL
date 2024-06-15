CREATE OR REPLACE PROCEDURE udp_modify_account(
    IN address_street VARCHAR(30),
    IN address_town VARCHAR(30)
)

AS
$$
BEGIN
    UPDATE accounts AS a
    SET job_title = '(Remote) ' || a.job_title
    FROM addresses AS ad
    WHERE a.id = ad.account_id
      AND ad.street = address_street
      AND ad.town = address_town;
END;
$$
LANGUAGE plpgsql;