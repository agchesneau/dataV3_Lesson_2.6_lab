USE sakila;
-- 1
SELECT last_name, count(first_name) FROM actor
GROUP BY last_name HAVING count(first_name) = 1
ORDER BY last_name;
-- 2
SELECT last_name,  count(first_name) FROM actor
GROUP BY last_name HAVING count(first_name) <> 1;
-- 3
SELECT staff_id, count(rental_id) FROM rental
GROUP BY staff_id;
-- 4
SELECT count(title), release_year FROM film
GROUP BY release_year;
-- 5
SELECT count(title), rating FROM film
GROUP BY rating;
-- 6
SELECT count(title), rating, round(AVG(length), 2) FROM film
GROUP BY rating;
-- 7
SELECT count(title), rating, round(AVG(length), 2) FROM film
GROUP BY rating HAVING  round(AVG(length), 2) > 120;
-- 8
SELECT title, length, rating,
CASE
WHEN length > 110 THEN 'very long movie'
WHEN length > 90 THEN 'long movie'
WHEN length > 60 THEN 'middle'
ELSE 'short movie'
END AS 'length_ranking'
FROM film
where length IS NOT NULL AND length <> 0;