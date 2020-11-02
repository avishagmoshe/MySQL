SELECT film_id , start_time FROM screenings
WHERE DATE(start_time) = '2017-10-20';

SELECT * FROM screenings
WHERE DATE(start_time) BETWEEN '2017-10-06' AND '2017-10-13';

SELECT * FROM screenings 
WHERE YEAR(start_time) = '2017'
AND MONTH(start_time) = '10';
SELECT * FROM screenings;