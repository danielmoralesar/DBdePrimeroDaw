DROP DATABASE IF EXISTS prueba;
CREATE DATABASE prueba;
USE prueba;

CREATE TABLE gasto (
  dia DATE,
  descripcion VARCHAR(100),
  coste FLOAT NOT NULL,
  metodopago ENUM('Cash','Debit','Credit') NOT NULL,
  usuario VARCHAR(15) DEFAULT 'DANIEL'
);

INSERT INTO gasto(dia, descripcion, coste, metodopago) VALUES
('2024-10-07', 'muffin', 1.10, 'Cash');

SELECT * FROM gasto;
