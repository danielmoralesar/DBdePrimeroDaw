DROP DATABASE IF EXISTS libreria;
CREATE DATABASE libreria;
USE libreria;

CREATE TABLE Tienda(
  cif VARCHAR(10) PRIMARY KEY,
  ubicacion VARCHAR(50),
  web VARCHAR(50)
);

CREATE TABLE Autor(
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50),
  dni VARCHAR(10) UNIQUE KEY
);

CREATE TABLE Libro(
  isbn VARCHAR(50) PRIMARY KEY,
  título VARCHAR(100),
  genero VARCHAR(20) DEFAULT 'Fantasia',
  precio INT NOT NULL CHECK (precio < 50),
  fecha_publicacion DATE CHECK (fecha > '2014-01-01'),
  id_Autor INT,
  cif_Tienda VARCHAR(10),
  FOREIGN KEY (id_Autor) REFERENCES Autor(id),
  FOREIGN KEY (cif_Tienda) REFERENCES Tienda(cif)
);

SHOW DATABASES;
