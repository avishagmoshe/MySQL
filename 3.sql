SELECT name FROM films
WHERE length_min > 120;

SELECT * FROM screenings;
SELECT * FROM films;

SELECT f.name,COUNT(s.film_id) AS showing FROM films f
JOIN screenings s ON f.id = s.film_id
GROUP BY film_id
ORDER BY showing desc
LIMIT 1;

SELECT name ,
(SELECT MAX(film_id) FROM screenings s
WHERE YEAR(start_time) = '2017' 
AND MONTH(start_time) = '10'
AND s.film_id = f.id)
FROM films f;


SELECT * FROM booking;

SELECT c.first_name , c.last_name , COUNT(b.id) AS no_booking FROM booking b
JOIN customers c WHERE c.id = b.customer_id
GROUP BY c.first_name
ORDER BY no_booking DESC
LIMIT 5;

SELECT * FROM screenings;