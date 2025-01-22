DROP DATABASE IF EXISTS checks;
CREATE DATABASE checks;
USE checks;

-- el check *inline* solo puede referirse a su propio atributo.
-- el check al fianl me permite relacionar varios atributos.
CREATE TABLE checks (
  a INT CHECK (a >= 3),
  b INT,
  c INT,
  CHECK (b < 10),
  CHECK (a > c),
  CHECK (a <> b),
  -- para dar un nombre al check
  CONSTRAINT chk_nombre CHECK (b > a AND b > c)
);
