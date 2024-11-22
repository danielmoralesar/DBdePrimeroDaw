-- Crear la base de datos
DROP DATABASE IF EXISTS biblioteca;
CREATE DATABASE IF NOT EXISTS biblioteca;

-- Usar la base de datos
USE biblioteca;

CREATE TABLE autor (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  nacimiento DATE,
  fallecimiento DATE
);

CREATE TABLE categoria (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50)
);

CREATE TABLE usuario (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  apellido VARCHAR(100),
  direccion VARCHAR(100),
  telefono VARCHAR(20)
);

CREATE TABLE libro (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(100),
  fecha_publicacion DATE,
  autor_id INT,
  categoria_id INT,
  ejemplares INT,
  FOREIGN KEY (autor_id) REFERENCES autor(id),
  FOREIGN KEY (categoria_id) REFERENCES categoria(id)
);

CREATE TABLE prestamo (
  id INT AUTO_INCREMENT PRIMARY KEY,
  libro_id INT,
  usuario_id INT,
  fecha_prestamo DATE,
  fecha_devolucion DATE,
  FOREIGN KEY (libro_id) REFERENCES libro(id),
  FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

INSERT INTO autor (nombre, nacimiento, fallecimiento) VALUES
  ('Isaac Asimov',       '1920-01-02', '1992-04-06'),
  ('Julio Cortázar',     '1914-08-26', '1984-02-12'),
  ('Gloria Fuertes',     '1917-07-28', '1998-11-27'),
  ('Ursula K. Le Guin',  '1929-10-21', '2018-01-22'),
  ('Emilia Pardo Bazán', '1851-09-16', '1921-05-12');

INSERT INTO categoria (nombre) VALUES
  ('Ciencia Ficcion'),
  ('Novela'),
  ('Poesia'),
  ('Historia');

INSERT INTO libro (titulo, fecha_publicacion, autor_id, categoria_id, ejemplares) VALUES
  ('Fundación',                         '1951-01-01', 1, 1,    10),
  ('Yo, Robot',                         '1950-02-01', 1, 1,    4),
  ('El fin de la eternidad',            '1955-03-01', 1, NULL, 5),
  ('Los propios dioses',                '1972-04-01', 1, 2,    0),
  ('Preludio a la Fundación',           '1988-05-01', 1, 1,    6),
  ('Final del juego',                   '1956-06-01', 2, 3,    9),
  ('Las armas secretas',                '1959-07-01', 2, 3,    12),
  ('Rayuela',                           '1963-08-01', 2, 2,    1),
  ('Todos los fuegos el fuego',         '1966-09-01', 2, 3,    0),
  ('Libro de Manuel',                   '1973-10-01', 2, 1,    8),
  ('Historia de Gloria',                '1978-11-01', 3, 1,    0),
  ('Cangura para todo',                 '1970-12-01', 3, NULL, 8),
  ('Poeta de guardia',                  '1959-01-01', 3, 2,    9),
  ('El hada acaramelada',               '1969-02-01', 3, 3,    4),
  ('El libro de Gloria Fuertes',        '1978-03-01', 3, NULL, 8),
  ('La mano izquierda de la oscuridad', '1969-04-01', 4, 1,    2),
  ('Los desposeídos',                   '1974-10-01', 4, 1,    4),
  ('El nombre del mundo es bosque',     '1972-06-01', 4, NULL, 3),
  ('La ciudad de las ilusiones',        '1967-07-01', 4, NULL, 6),
  ('La rueda celeste',                  '1984-08-01', 4, 3,    3),
  ('La madre naturaleza',               '1887-09-01', 5, 4,    0),
  ('Los pazos de Ulloa',                '1886-10-01', 5, 1,    1),
  ('La cuestion palpitante',            '1883-11-01', 5, NULL, 4),
  ('Insolación',                        '1889-12-01', 5, 3,    3),
  ('La tribuna',                        '1883-01-01', 5, 4,    11);

INSERT INTO usuario (nombre, apellido, direccion, telefono) VALUES
  ('Juan',    'Perez',     'Calle 123',   '555-1234'),
  ('Maria',   'Rodriguez', 'Avenida 456', '555-5678'),
  ('Pedro',   'Gomez',     'Calle 789',   '555-9012'),
  ('Luisa',   'Hernandez', 'Avenida 234', '555-3456'),
  ('Carlos',  'Ramirez',   'Calle 567',   '555-7890'),
  ('Ana',     'Gonzalez',  'Avenida 890', '555-1234'),
  ('Miguel',  'Sanchez',   'Calle 111',   '555-5678'),
  ('Isabel',  'Diaz',      'Avenida 222', '555-9012'),
  ('Juanita', 'Martinez',  'Calle 333',   '555-3456'),
  ('Pedro',   'Garcia',    'Avenida 444', '555-7890');

INSERT INTO prestamo (libro_id, usuario_id, fecha_prestamo, fecha_devolucion) VALUES
  (1,  1,  '2024-10-01', '2024-10-05'),
  (3,  2,  '2024-10-03', '2024-10-17'),
  (5,  3,  '2024-10-05', '2024-10-10'),
  (7,  4,  '2024-10-07', '2024-10-21'),
  (9,  5,  '2024-10-09', '2024-10-23'),
  (1,  1,  '2024-11-01', '2024-11-05'),
  (3,  2,  '2024-11-03', '2024-11-17'),
  (5,  3,  '2024-11-05', '2024-11-10'),
  (7,  4,  '2024-11-07', '2024-11-21'),
  (9,  5,  '2024-11-09', '2024-11-23'),
  (11, 6,  '2024-11-11', '2024-11-25'),
  (13, 7,  '2024-11-13', '2024-11-27'),
  (1,  8,  '2024-11-02', '2024-11-16'),
  (1,  9,  '2024-11-04', '2024-11-18'),
  (6,  10, '2024-11-06', '2024-11-20'),
  (8,  1,  '2024-11-08', '2024-11-22'),
  (10, 2,  '2024-11-10', '2024-11-24'),
  (12, 3,  '2024-11-12', '2024-11-26'),
  (14, 4,  '2024-11-14', '2024-11-28'),
  (14, 4,  '2024-11-14', '2024-11-28');



-- INSERT INTO libros (id, titulo, fecha_publicacion, autor_id, categoria_id, ejemplares) VALUES
--   (1,  'Cien años de soledad',                            1,  1, 5),
--   (2,  'La ciudad y los perros',                          2,  1, 3),
--   (3,  'La casa de los espíritus',                        3,  1, 4),
--   (4,  'Rayuela',                                         4,  1, 2),
--   (5,  'Veinte poemas de amor y una canción desesperada', 5,  2, 7),
--   (6,  'El coronel no tiene quien le escriba',            1,  1, 3),
--   (7,  'La tregua',                                       1,  1, 2),
--   (8,  'La fiesta del chivo',                             2,  1, 6),
--   (9,  'Eva Luna',                                        3,  1, 3),
--   (10, 'Bestiario',                                       4,  1, 1),
--   (11, 'Los pasos perdidos',                              3,  1, 2),
--   (12, 'La ciudad de las bestias',                        3,  4, 4),
--   (13, 'El amor en los tiempos del cólera',               1,  1, 4),
--   (14, 'Conversación en la Catedral',                     2,  1, 3),
--   (15, 'La muerte de Artemio Cruz',                       1,  1, 2),
--   (16, 'La luz que no puedes ver',                        5,  4, 5),
--   (17, 'El cuento de la criada',                          1,  4, 3),
--   (18, '1984',                                            2,  4, 2),
--   (19, 'La insoportable levedad del ser',                 2,  1, 4),
--   (20, 'El perfume',                                      5,  4, 6);
-- ("Fundación", 1951,
-- ("Yo, Robot", 1950
-- ("El fin de la eternidad", 1955
-- ("Los propios dioses", 1972
-- ("Preludio a la Fundación", 1988

