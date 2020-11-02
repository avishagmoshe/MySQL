SHOW DATABASES;
USE test;
SHOW TABLES;
CREATE TABLE city(
	id INT auto_increment NOT NULL PRIMARY KEY,
    name VARCHAR(20) NOT NULL
	
);

INSERT INTO city (name) VALUES ('raanana') , ('tel aviv') , ('herzelia') , ('bash') , ('kfas');
INSERT INTO city (name) VALUES ('aba') , ('ebi') , ('ebuh');
SELECT * FROM city;
SELECT name , LENGTH(name) FROM city
ORDER BY LENGTH(name), name
LIMIT 1;

SELECT DISTINCT name FROM city
WHERE SUBSTR(name,-1) IN ('a','e','i','o','u');

SELECT DISTINCT name FROM city
WHERE SUBSTR(name,1,1) IN ('a','e','i','o','u')
AND SUBSTR(name,-1,1) IN  ('a','e','i','o','u');