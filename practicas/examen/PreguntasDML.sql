USE biblioteca;

-- 7mo
ALTER TABLE prestamo ADD CONSTRAINT chk_fechas CHECK (fecha_devolucion > fecha_prestamo);

-- 8vo --the hell did you do here????
ALTER TABLE prestamo DROP FOREIGN KEY usuario_id;
ALTER TABLE prestamo ADD FOREIGN KEY fk_usuario_id() -- on delete set null;

--9no
ALTER TABLE libro DROP FOREIGN KEY libro_ibfk_2;
DROP TABLE categoria;

-- 10mo
ALTER TABLE autor ADD COLUMN apellido VARCHAR(50) NOT NULL AFTER nombre;