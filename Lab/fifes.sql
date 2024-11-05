--  ELIMINA LA TABLA SI EXISTE Y LA CREA DE NUEVO

DROP DATABASE IF EXISTS fifes;
CREATE DATABASE fifes;
use fifes;

--  CREA LA TABLA DE EQUIPOS CON VALORES DE ID DEL EQUIPO NOMBRE Y CIUDAD

CREATE TABLE equipo(
  id INT PRIMARY KEY,
  nombre VARCHAR(100),
  ciudad VARCHAR(100)
);
--  CREA LA TABLA DE JUGADORES CON SU DNI NOMBRE NACIONALIDAD DORSAL ALTURA E ID DEL EQUIPO

CREATE TABLE jugador(
  dni VARCHAR(15) PRIMARY KEY,
  nombre VARCHAR(100),
  nacionalidad VARCHAR(100),
  dorsal INT,
  altura FLOAT,
  id_equipo INT,
  FOREIGN KEY (id_equipo) REFERENCES equipo(id)
);
--  GENERA INFORMACION DE LA TABLAS

INSERT INTO equipo VALUES
(1, 'Real Madrid', 'Madrid'),
(2, 'Barcelona F.C.', 'Barcelona'),
(3, 'Atletico de Madrid', 'Madrid');
INSERT INTO jugador VALUES
('4504400A', 'Pepe', 'ES', 01, 1.80, 1),
('6895400B', 'Luis', 'ES', 02, 1.89, 1),
('9788520C', 'Fulano', 'FR', 14, 1.81, 2),
('4542690D', 'Jordi', 'ES', 20, 1.79, 2),
('8456110E', 'Guillermo', 'FR', 11, 1.90, 3),
('6784199F', 'Jhony', 'EEUU', 22, 2.00, 3);
