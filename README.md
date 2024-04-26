# Final_EcommerceMartinezSQL

Proyecto final del curso de coder-house de SQL

Comision: 53170

## Guía de Pasos

Para la instalacion correcta de la base de datos correspondiente al E-commerce "JM Shoes", debes ingresar a la carpeta
"archivosSQL" y luego debes ejecutar los siguientes script en el orden dado a continuación:

1. Creación de tablas: Crea la base de datos y sus correspondientes tablas. nombre del archivo: "Create-Ecommerce.sql".

2. Inserción de datos: En este caso se utilizo archivos .CSV, deberás descargarlo y luego desde el Workbench de mysql exportar en cada tabla correspondiente. Los archivos se encuentran en la carpeta "archivosCSV"

3. Creación de vistas: Contiene los script para la creacion de 5 vistas de la base de datos. Seleccionar los archivos que contengan "View_"

4. Creación de funciones: Crea 2 funciones que corresponden a la base de datos. nombre del archivo: "Script-Funciones.sql"

5. Creación de procedimientos: Crea 2 procedimientos de la base de datos. nombre del archivo: "StoredProcedures.sql"

6. Creación de Triggers: Crea 2 triggers el cual el 1° por cada inserción en la tabla Productos inserta un registro en la tabla RegistroInserciones
el 2° por cada actualización en la tabla Productos inserta un registro en la tabla RegistroActualizaciones que registra el ID del producto actualizado. nombre del archivo: "Triggers.sql"

7. DCL : Creación de usuarios y otorga los permisos correspondiente a cada uno con relación a la base de datos. nombre del archivo: "DCL-Script.sql"

8. TCL : realiza un transacción, una sentencia de modificación hacia algunas tablas. nombre del archivo: "TCL-Script.sql"

Se agrega un archivo adicional de respaldo, por cualquier eventualidad para realizar un backup de la base datos.
En ese caso ejecutar el siguiente archivo:
		
		"backup-final.sql" 

![image](./ER.jpg)

