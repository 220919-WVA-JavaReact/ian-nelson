
--create student tables with primary key, name, phone, email
CREATE TABLE students(
	id serial PRIMARY KEY,
	"name" varchar(25),
	email varchar(30)
);

CREATE TABLE courses(
	id serial PRIMARY KEY,
	title varchar(20),
	coursenumber int,
	teacherID int REFERENCES teachers
);
	

CREATE TABLE teachers(
	id serial PRIMARY KEY,
	"name" varchar(25),
	email varchar(30)
);

CREATE TABLE topics(
	id serial PRIMARY KEY,
	topicname varchar(40)
);

CREATE TABLE student_courses(
	students_id int REFERENCES students,
	courses_id int REFERENCES courses
);

CREATE TABLE courses_topics(
	courses_id int REFERENCES courses,
	topics_id int REFERENCES topics
);

INSERT INTO students ("name", email)
VALUES
	('Sean', 'sean@gmail.com'),
	('Fred', 'fred@gmail.com'),
	('Dylan', 'dylan@gmail.com'),
	('Noah', 'noah@gmail.com'),
	('Bryan', 'bryan@gmail.com');

INSERT INTO teachers ("name", email)
VALUES
	('John', 'john@gmail.com'),
	('Doe', 'doe@gmail.com'),
	('Lo', 'lochange@gmail.com');

INSERT INTO courses(title, coursenumber, teacherID)
VALUES
	('Math', 101, 2),
	('Science', 202, 1),
	('History', 401, 3);

INSERT INTO topics (topicname)
VALUES
	('Algebra'),
	('Environment'),
	('Revolutionary War');

--gonna add more topics so it looks better :)
INSERT INTO topics (topicname)
VALUES
	('Civil War'),
	('Calculus'),
	('Biology');

INSERT INTO student_courses
VALUES
	(1, 2),
	(1, 3),
	(2, 3),
	(2, 1),
	(3, 1),
	(3, 3),
	(4, 1),
	(5, 1),
	(5, 2),
	(5, 3);

INSERT INTO courses_topics 
VALUES
	(1, 1),
	(1, 5),
	(2, 2),
	(2, 6),
	(3, 3),
	(3, 4);
