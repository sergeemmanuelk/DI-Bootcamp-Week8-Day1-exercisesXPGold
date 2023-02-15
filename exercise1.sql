--- 1. Create a database called bootcamp
CREATE DATABASE bootcamp

--- 2. Create a table called students
--- 3. Add the following columns: id, last_name, first_name, birth_date. The id must be auto_incremented.
CREATE TABLE students(
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(150) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	birth_date DATE NOT NULL
)

--- Insert

--- Insert the data seen above to the students table. Find the most efficient way to insert the data
INSERT INTO students(first_name, last_name, birth_date) VALUES('Marc', 'Benichou', '02/11/1998'),
('Yoan', 'Cohen', '03/12/2010'),
('Lea', 'Benichou', '27/07/1987'),
('Amelia', 'Dux', '07/04/1996'),
('David', 'Grez', '14/06/2003'),
('Omer', 'Simpson', '03/10/1980');

--- Insert your last_name, first_name and birth_date to the students table (Take a look at the id given)
INSERT INTO students(first_name, last_name, birth_date) VALUES('Serge', 'Konan', '2009/02/26');

--- Select

--- 1. Fetch all of the data from the table
SELECT * FROM students ORDER BY last_name ASC LIMIT 4;

--- 2. Fetch the details of the youngest student
SELECT * FROM students ORDER BY birth_date DESC LIMIT 1;

--- 3. Fetch three students skipping the first two students.
SELECT * FROM students LIMIT 3 OFFSET 2;

