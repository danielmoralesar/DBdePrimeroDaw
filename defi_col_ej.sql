DROP DATABASE IF EXISTS ejercicios;
CREATE DATABASE ejercicios;
USE ejercicios;

-- EJERCICIO 1
CREATE TABLE ej1 (
  a INT,
  b DATE,
  c VARCHAR(5)
);

-- INSERTAR:
-- 1. valores en a, b y c
-- 2. valores en orden b, c, a
-- 3. valores en c y b
-- 4. valor en b

-- '2024-10-08'

INSERT INTO ej1 VALUES
(01, '2024-10-08', 'AGUA');

INSERT INTO ej1(b, c, a) VALUES
('2024-10-09', 'FUEGO', 02);

INSERT INTO ej1(c, b) VALUES
('AIRE', '2024-10-10');

INSERT INTO ej1(b) VALUES
('2024-10-11');

SELECT * FROM ej1;


-- EJERCICIO 2
CREATE TABLE ej2 (
  a INT NOT NULL,
  b INT NOT NULL DEFAULT 0,
  c VARCHAR(5),
  d VARCHAR(5) DEFAULT 'Hola'
);
-- INSERTAR:
-- 1. Valores en a, b, d
-- 2. Valores en a, b, c
-- 3. Valores en c, a y default en b, d es NULL
-- 4. Valores en a con default en b y d
-- 5. Valor en a con NULL en d

INSERT INTO ej2(a, b, d) VALUES
(01, 01, 'HALLO');

INSERT INTO ej2(a, b, c) VALUES
(02, 02, 'HEY');

INSERT INTO ej2(c, a, d) VALUES
('LEARN', 03, NULL);

INSERT INTO ej2(a) VALUES
(04);

INSERT INTO ej2(a, d) VALUES
(05, NULL);

SELECT * FROM ej2;

-- EJERCICIO 3
CREATE TABLE ej3 (
  a INT AUTO_INCREMENT PRIMARY KEY,
  b VARCHAR(5) UNIQUE KEY,
  c VARCHAR(5) DEFAULT 'hola'
);

INSERT INTO ej3(b, c) VALUES
('ej31', 'ej31'),
('ej32', 'ej32');

SELECT * FROM ej3;
