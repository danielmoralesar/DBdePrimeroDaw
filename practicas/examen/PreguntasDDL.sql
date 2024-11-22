DROP DATABASE IF EXISTS PreguntaDDL;
CREATE DATABASE PreguntaDDL;
USE PreguntaDDL;

CREATE TABLE planetas (
    id_planeta SMALLINT PRIMARY KEY,
    nombre VARCHAR(100) UNIQUE KEY, -- falta NOT NULL
    tipo ENUM('Terrestre', 'Gaseoso', 'Enano', 'NULL'), --sobra NULL
    diametro_km FLOAT,
    masa_kg DECIMAL(15,2), -- falta el check
    fecha_descubrimiento DATETIME,
    habitable BOOLEAN DEFAULT '0',
    CONSTRAINT chk_diametro_km CHECK (diametro_km > 0.00)
);

CREATE TABLE satelites (
    id_planeta SMALLINT,
    puesto SMALLINT,
    nombre VARCHAR(100),
    diametro_km FLOAT,
    orbita_km FLOAT NOT NULL,
    fecha_descubrimiento DATETIME,
    proximo_eclipse DATETIME,
    CONSTRAINT chk_orbita_km CHECK (orbita_km > 0.00),
    CONSTRAINT chk_proximo_eclipse_1 CHECK (proximo_eclipse > fecha_descubrimiento), -- Sobra constraint, debe ir check solo
    CONSTRAINT chk_proximo_eclipse_2 CHECK (proximo_eclipse > '2024-11-20 11:30:00'),
    CONSTRAINT fk_id_planeta FOREIGN KEY (id_planeta) REFERENCES planetas(id_planeta),
    PRIMARY KEY (id_planeta, puesto)
);