USE sakila;

-- Ejercicio 1:
SELECT first_name, last_name FROM actor a, film_actor fa WHERE fa.film_id = 5 AND a.actor_id = fa.actor_id;