DROP DATABASE IF EXISTS tipodatos;
CREATE DATABASE tipodatos;
USE tipodatos;

CREATE TABLE datosvarios(
  flotante FLOAT (5,2),
  decimales DECIMAL (10,5),
  codigo CHAR(4),
  texto TEXT,
  dia DATE,
  momento DATETIME,
  hora TIME,
  color ENUM('R','G','B')
);

INSERT INTO datosvarios VALUES
(63.63, 55555.55, 'ABCD', 'datos que van dentro de la tabla', '2024-10-04', '2024-10-04 12:00:00', '12:00:00', 'G');

INSERT INTO datosvarios VALUES
(33.33, 14.6874, 'EFGH', 'insertando más datos', '2024-10-04', '2024-10-04 12:30:00', '12:00:00', 'B');
