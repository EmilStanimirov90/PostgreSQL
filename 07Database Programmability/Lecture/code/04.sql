CREATE TABLE deleted_employees(
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	middle_name VARCHAR(20),
	job_title VARCHAR(50),
	department_id int,
	salary numeric(19, 4)
	);

CREATE OR REPLACE FUNCTION backup_fired_employees()
RETURNS TRIGGER
AS
$$
	BEGIN
		INSERT INTO deleted_employees(
			employee_id, first_name, last_name, middle_name, job_title, department_id, salary
		)
		VALUES (
			old.employee_id,
			old.first_name,
			old.last_name,
			old.middle_name,
			old.job_title,
			old.department_id,
			old.salary
		);
		RETURN NEW;
	END;
$$

LANGUAGE plpgsql;


CREATE OR REPLACE TRIGGER backup_employees
AFTER DELETE on employees
FOR EACH ROW
EXECUTE PROCEDURE backup_fired_employees();