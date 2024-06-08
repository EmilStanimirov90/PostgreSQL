CREATE TABLE students(
	id SERIAL PRIMARY KEY,
	student_name VARCHAR(50)
);

CREATE TABLE exams(
	id INT GENERATED ALWAYS AS IDENTITY (STARt WITH 101 INCREMENT 1) PRIMARY KEY,
	exam_name VARCHAR(50)
);

CREATE TABLE study_halls(
	id SERIAL PRIMARY KEY,
	study_hall_name VARCHAR(50),
	exam_id INT,

	CONSTRAINT fk_study_halls_exams
	FOREIGN KEY (exam_id)
	REFERENCES exams(id)
);

CREATE TABLE students_exams(
	student_id INT,
	exam_id INT,

	CONSTRAINT pk_studenst_exams
	PRIMARY KEY (student_id, exam_id),

	CONSTRAINT fk_students_exams_students
	FOREIGN KEY (student_id)
	REFERENCES students(id),

	CONSTRAINT fk_students_exams_exams
	FOREIGN KEY (exam_id)
	REFERENCES exams(id)
);
	
	
INSERT INTO 
	students(student_name)
VALUES
	('Mila'),
	('Toni'),
	('Ron');
INSERT INTO
	exams(exam_name)
VALUES
	('Python Advanced'),
	('Python OOP'),
	('PostgreSQL');
	
INSERT INTO
	study_halls(study_hall_name, exam_id)
VALUES
	('Open Source Hall',                                        	102),
	('Inspiration Hall',	101),
	('Creative Hall',	103),
	('Masterclass Hall',	103),
	('Information Security Hall',	103);