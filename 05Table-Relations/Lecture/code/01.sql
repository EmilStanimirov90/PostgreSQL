CREATE TABLE mountains(
	id serial PRIMARY KEY,
	name VARCHAR(50)
	
);

CREATE TABLE peaks(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	mountain_id int
);



ALTER TABLE peaks
ADD CONSTRAINT fk_peaks_mountains
	FOREIGN KEY (mountain_id)
		REFERENCES mountains(id) 
;

-- or

CREATE TABLE mountains(
	id serial PRIMARY KEY,
	name VARCHAR(50)
	
);

CREATE TABLE peaks(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	mountain_id int REFERENCES mountains(id)
);

-- or if like to name constrint

CREATE TABLE mountains(
	id serial PRIMARY KEY,
	name VARCHAR(50)
	
);

CREATE TABLE peaks(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	mountain_id int,
	CONSTRAINT fk_peaks_mountains
		FOREIGN KEY (mountain_id)
			REFERENCES mountains(id)
);