USE sakila;

-- Ejercicio 1:
SELECT description FROM film WHERE description LIKE '%Adventure%' OR description LIKE '%Action%';

-- Ejercicio 2;
SELECT * FROM category WHERE name IN ('Drama', 'Music') ORDER BY name;

-- Ejercicio 3:
SELECT city FROM city WHERE country_id IN (1, 2) ORDER BY city DESC;

-- Ejercicio 4:
SELECT first_name, last_name FROM customer WHERE email IS NOT NULL ORDER BY last_name;

-- Ejercicio 5: