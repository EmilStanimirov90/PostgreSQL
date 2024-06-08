CREATE TABLE manufacturers(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50)
);

CREATE TABLE models(
	id INT GENERATED ALWAYS AS IDENTITY (START WITH 1000 INCREMENT 1) PRIMARY KEY,
	model_name VARCHAR(50),
	manufacturer_id INT,

	CONSTRAINT fk_models_manufacturers
	FOREIGN KEY (manufacturer_id)
	REFERENCES manufacturers(id)
);

CREATE TABLE production_years (
	id SERIAL PRIMARY KEY,
	established_on DATE,
	manufacturer_id INT,

	CONSTRAINT fk_production_years_manufacturers
	FOREIGN KEY (manufacturer_id)
	REFERENCES manufacturers(id)
	
);

