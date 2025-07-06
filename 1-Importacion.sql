/*
==========================================================
CREACIÓN Y VERIFICACIÓN DE LA BASE DE DATOS DE TURISMO
==========================================================
*/

/* 1️⃣ Crear la base de datos */
CREATE DATABASE mi_base;

/* 2️⃣ Seleccionar la base de datos que vamos a usar */
USE mi_base;

/*
==========================================================
IMPORTACIÓN DE LA TABLA
==========================================================
Nota: Esta parte se realizó con el asistente de importación
de datos (Table Data Import Wizard) de MySQL Workbench.
En el proceso:
 - Se seleccionó el archivo CSV/Excel.
 - Se marcó la opción "First Row Contains Column Names".
 - Se revisó que el delimitador fuera correcto.
*/

/* 3️⃣ Cambiar el nombre de la tabla importada */
ALTER TABLE `mi_base`.`seriedetiempoturismointernacional` 
RENAME TO `mi_base`.`turismo`;

/*
==========================================================
VERIFICACIÓN DE LA IMPORTACIÓN
==========================================================
*/

/* 4️⃣ Verificar la cantidad de filas importadas */
SELECT count(*) FROM turismo;

/* 5️⃣ Verificar que la columna de fecha existe */
SELECT indice_tiempo FROM turismo LIMIT 5;

/* 6️⃣ Revisar la estructura de la tabla (nombres y tipos de datos) */
DESCRIBE turismo;

/* 7️⃣ Visualizar las primeras filas de datos */
SELECT * FROM turismo LIMIT 5;

/*
==========================================================
CONTROL DE ERRORES
==========================================================
En la primera importación no se habían cargado datos
porque no se marcó correctamente la fila de encabezados.
Por eso se eliminó la tabla y se repitió la importación.
*/

/* 8️⃣ Eliminar la tabla si la importación fue incorrecta */
DROP TABLE turismo;

/*
==========================================================
SEGUNDA IMPORTACIÓN CORRECTA
==========================================================
Se repitió el proceso de importación con estas correcciones:
 - El archivo se guardó en formato CSV limpio.
 - Se verificó que la primera fila contuviera los nombres de columna.
 - Se marcó "First Row Contains Column Names".
 - Se revisaron delimitadores y codificación.
Luego se volvió a verificar la carga con los mismos comandos:
 - SELECT count(*)
 - DESCRIBE
 - SELECT * LIMIT 5
*/