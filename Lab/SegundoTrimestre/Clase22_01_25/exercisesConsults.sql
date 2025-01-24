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
SELECT address, address2 FROM address WHERE postal_code LIKE '48%' AND district = 'California' ORDER BY city_id DESC;

-- Ejercicio 6:
SELECT * FROM language WHERE name IN ('Spanish', 'French') ORDER BY name;

-- Ejercicio 8:
SELECT name FROM category WHERE name LIKE 'A%' OR LENGTH(name) > 10 ORDER BY name;

-- Ejercicio 9:
SELECT name FROM category WHERE name IN ('Action', 'Travel') ORDER BY name;

-- Ejercicio 10:
SELECT first_name, last_name FROM staff WHERE picture IS TRUE AND store_id IN (1, 2) ORDER BY last_name;

-- Ejercicio 11:
SELECT first_name, last_name FROM customer ORDER BY last_name LIMIT 50 OFFSET 50;

-- Ejercicio 12:
SELECT title, description FROM film WHERE length > 120 ORDER BY length DESC, title LIMIT 10 OFFSET 41;

-- Ejercicio 13:
SELECT title FROM film WHERE title LIKE 'me%' ORDER BY film, LIMIT 1;

-- Ejercicio 14:
SELECT * FROM film WHERE title LIKE '%Paced%' OR title LIKE '%of%' AND YEAR(release_year) > 2000 OR length > 100;