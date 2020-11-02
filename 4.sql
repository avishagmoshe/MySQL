SELECT * FROM rooms;
SELECT * FROM screenings;

SELECT f.name, MAX(*) FROM  
(SELECT COUNT(s.film_id) FROM screenings s
WHERE s.room_id = '1'
AND DATE(s.start_time) BETWEEN '2017-10-01' AND '2017-10-31')
FROM films f;

SELECT f.name , COUNT(s.film_id) AS scr FROM films f
JOIN screenings s ON f.id = s.film_id
WHERE s.room_id = '1' 
AND DATE(s.start_time) BETWEEN '2017-10-01' AND '2017-10-31'
ORDER BY scr DESC
LIMIT 1;