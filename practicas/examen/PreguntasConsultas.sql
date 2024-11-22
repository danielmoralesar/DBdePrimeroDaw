USE biblioteca;

-- 1ro
SELECT nombre, DATEDIFF(fallecimiento, nacimiento) -- year(fallecimiento) - year(nacimiento) as anyos
   FROM autor;
   -- DESC LIMIT 1;

-- 2do
SELECT titulo
    FROM libro
    WHERE ejemplares >= 5
    ORDER BY MONTH(fecha_publicacion) DESC, titulo;

-- 3ro 
SELECT DISTINCT a.nombre
    FROM autor a JOIN libro l ON MONTH(a.nacimiento) = MONTH(l.fecha_publicacion);

-- 4to titulo y nombre para aquellos libros cuyo autor publico antes de sus 40
SELECT l.titulo, a.nombre -- year(fallecimiento) - year(nacimiento) as anyos
    FROM autor a JOIN libro l ON a.autor_id = l.autor_id
    WHERE YEAR()-- year(fallecimiento) - year(nacimiento) < 40;

-- 5to 
SELECT DISTINCT l.titulo,
       YEAR(l.fecha_publicacion) AS Anyo, 
       MONTH(l.fecha_publicacion) AS Mes,
       'Sin categoría' AS Categoria,
       a.nombre
    FROM libro l JOIN autor a ON a.id = l.autor_id
    WHERE l.categoria_id IS NULL AND l.ejemplares >= 5;


-- 6to
SELECT u.nombre, l.titulo, c.nombre, DATEDIFF(fecha_devolucion, CURDATE()) AS Dias_devolucion
    FROM usuario u JOIN prestamo p ON u.id = p.usuario_id
                   JOIN libro l ON p.libro_id = l.id
                   JOIN categoria c ON l.categoria_id = c.id
    WHERE p.fecha_devolucion > CURDATE();
