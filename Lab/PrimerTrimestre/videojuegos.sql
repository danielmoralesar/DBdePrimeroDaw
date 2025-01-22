DROP DATABASE IF EXISTS videojuegos;
CREATE DATABASE videojuegos;
USE videojuegos;

CREATE TABLE Desarrollador(
  nombre VARCHAR(15) PRIMARY KEY
);

CREATE TABLE Juego (
  id INT PRIMARY KEY,
  nombre VARCHAR(50),
  nombre_Desarrollador VARCHAR(15),
  FOREIGN KEY (nombre_Desarrollador) REFERENCES Desarrollador(nombre)
    ON DELETE CASCADE
);

CREATE TABLE Personaje (
  nombre VARCHAR(50) PRIMARY KEY,
  vida FLOAT,
  id_Juego INT,
  FOREIGN KEY (id_Juego) REFERENCES Juego(id)
    ON DELETE SET NULL
);

INSERT INTO Desarrollador VALUES ('Buggy Soft');
INSERT INTO Juego VALUES
  (0, 'Las aventuras del capitán Salami', 'Buggy Soft'),
  (1, 'Las aventuras del capitán Salami - Vegan ed.', 'Buggy Soft');
INSERT INTO Personaje VALUES
  ('Cap. Salami', 10.0, 0),
  ('Señor Cuchiller', 10.0, 0),
  ('Cap. Seitán', 10.0, 1),
  ('Señor Chucharilla', 10.0, 1);

SELECT * FROM Personaje;
SELECT * FROM Juego;
SELECT * FROM Desarrollador;

