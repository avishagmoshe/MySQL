SHOW DATABASES;
USE cinema_booking_system;
SHOW TABLES;
SELECT * FROM customers;
SELECT * FROM booking;

SELECT first_name,last_name,email FROM customers 
WHERE id IN 
	(SELECT customer_id FROM booking 
	WHERE screening_id = 1);
	
 SELECT * FROM reserved_seat;
 
 SELECT MAX(no_seat) FROM
 (SELECT booking_id , COUNT(seat_id) AS no_seat FROM reserved_seat
 GROUP BY booking_id) b;

SELECT b.customer_id , COUNT(*) FROM reserved_seat r
JOIN booking b ON r.booking_id = b.id
GROUP BY b.customer_id;

SELECT f.name,f.length_min , COUNT(s.id) from screenings s 
JOIN films f ON s.film_id = f.id
GROUP BY f.name , f.length_min
HAVING f.length_min > 120;

SELECT screening_id , customer_id,
(SELECT COUNT(seat_id)
FROM reserved_seat WHERE booking_id = b.id)
FROM booking b
ORDER BY screening_id;

SELECT * FROM films; 


SELECT name , length_min FROM films
WHERE length_min > 
	(SELECT AVG(length_min) FROM films);
    
SELECT AVG(length_min) FROM films;    

SELECT * FROM screenings;
SELECT * FROM films;

SELECT MAX(id) , MIN(id) FROM
(SELECT film_id , COUNT(id) AS id FROM screenings
GROUP BY film_id) a;

SELECT name,
 (SELECT COUNT(film_id) FROM screenings s
 WHERE film_id = f.id)
FROM films f ;