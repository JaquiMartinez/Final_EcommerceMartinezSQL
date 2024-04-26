USE EcommerceMartinez;


-- DCL para crear y otorgar permisos.
/* 1° Creo y otorgo permiso a usuario 
sólo para lectura de todas tablas pero sólo podrá modificar o crear nuevas Vistas.*/

CREATE USER IF NOT EXISTS 'coderhouse@localhost' IDENTIFIED BY 'coderhouse';

GRANT SELECT ON EcommerceMartinez.* TO 'coderhouse@localhost';
GRANT CREATE VIEW, ALTER ON EcommerceMartinez.* TO 'coderhouse@localhost';


-- Forma de verificar los detalles del usuario y sus privilegios.
SHOW GRANTS FOR 'coderhouse@localhost';


-- 2° DCL 
-- Creo y otorgo permiso a usuario para insertar y modificar datos, pero no eliminar.

CREATE USER IF NOT EXISTS 'martinez@localhost' IDENTIFIED BY 'martinez';

GRANT SELECT, INSERT, UPDATE ON EcommerceMartinez.* TO 'martinez@localhost';

-- Forma de verificar los detalles del usuario y sus privilegios.
SHOW GRANTS FOR 'martinez@localhost';







