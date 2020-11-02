SHOW databases;
USE cinema_booking_system;
SHOW TABLES;
DESCRIBE booking;
describe films;
describe screenings;
select * from screenings;

 /*which films are more then 2 hours long?*/
select * from films
where length_min > 120
order by length_min;

/*which film had the most screenings?*/
select f.name , count(s.film_id) AS counter from screenings s
JOIN films f ON s.film_id = f.id 
group by film_id
order by counter desc
limit 1;

/*how many bookings did the film 'Jigsaw' have?*/
select count(screening_id) as book_Jigsaw from booking b
join screenings s on b.screening_id = s.id
join films f on s.film_id = f.id
where f.name = 'Jigsaw';

select count(*) as book_Jigsaw from booking
where screening_id in
(select s.id from screenings s
join films f on s.film_id = f.id
where f.name = 'Jigsaw');

/*which 5 customers made the most booking?*/
select concat(c.first_name," ",c.last_name) as full_name,count(b.customer_id) as parching from customers c
join booking b on c.id = b.customer_id
group by b.customer_id
order by parching desc
limit 5;

/*which film was shown in Chaplin room most often?*/
select f.name,count(s.film_id) as num_shown_time from films f
join screenings s on f.id = s.film_id
join rooms r on s.room_id = r.id
where r.name = 'Chaplin';

/*how many of the customers made a booking?*/
select count(distinct(customer_id)) as num_book from booking;
