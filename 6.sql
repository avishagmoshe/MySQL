CREATE DATABASE example1;
USE example1;
CREATE TABLE students(
	id INT NOT NULL PRIMARY KEY,
    name VARCHAR(20),
    marks INT
    
);

INSERT INTO students (id,name,marks) VALUES (1,'Ashely',81) , (2,'Samantha',75) , (4 ,'Julia',76) , (3,'Belbet',84);
INSERT INTO students (id) VALUES (7);
SELECT * FROM students;

UPDATE students
SET name='Anna' , marks ='65'
WHERE id = '7';

SELECT name FROM students
ORDER BY name asc;

SELECT name FROM students 
WHERE marks > 75
ORDER BY (SELECT SUBSTR(name,-1,3) FROM students);
