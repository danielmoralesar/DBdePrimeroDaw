DROP DATABASE IF EXISTS conciertos;
CREATE DATABASE conciertos;
USE conciertos;

-- Tabla Clientes
CREATE TABLE Clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    email VARCHAR(100)
);

-- Tabla Conciertos
CREATE TABLE Conciertos (
    id INT PRIMARY KEY,
    nombre_concierto VARCHAR(150) NOT NULL,
    fecha DATE NOT NULL,
    lugar VARCHAR(150) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL
);

-- Tabla Tickets con clave primaria compuesta
CREATE TABLE Tickets (
    cliente_id INT NOT NULL,
    concierto_id INT NOT NULL,
    fecha DATE,
    cantidad INT NOT NULL,
    precio_total DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (cliente_id, concierto_id),
);
