/*
🎯 ¿Qué problema resuelve este script?
El dataset original tiene muchas columnas, cada una representando una combinación única de:

Flujo: emisivo, receptivo, balanza

Medio de transporte: aéreo, terrestre, fluvial/marítimo

Destino: países o regiones

Es decir, cada columna ya contiene un dato específico, por ejemplo:

emisivo_aerea_bolivia
receptivo_terrestre_europa
balanza_fluvial_maritima_uruguay
Esto es un formato ancho que:

No es práctico para análisis.

Es difícil de filtrar o agrupar.

Tableau no lo procesa bien sin transformarlo.

🔄 ¿Qué hace el script?
Transforma la tabla de ancha a larga, creando una nueva estructura con filas que contienen:

La fecha (indice_tiempo)

El flujo (emisivo, receptivo o balanza)

El medio (aérea, terrestre, fluvial_maritima)

El destino (bolivia, europa, etc.)

El valor (cantidad de turistas)

🧩 ¿Cómo funciona?
1️⃣ Cada SELECT toma una columna y extrae su valor como cantidad_turistas.
2️⃣ Al mismo tiempo, agrega etiquetas (flujo, medio, destino) para identificar de qué columna venía.
3️⃣ Los UNION ALL unen todos esos SELECT en una sola tabla.


*/

USE  mi_base;  

CREATE TABLE mi_base.turismo_unpivot AS      -- creo una nueva tabala donde se va a guardar la consulta 
(
SELECT
  indice_tiempo AS fecha,
  'emisivo' AS flujo,
  'aerea' AS medio,
  'bolivia' AS destino,
  emisivo_aerea_bolivia AS cantidad_turistas
FROM mi_base.turismo

UNION ALL

SELECT indice_tiempo, 'emisivo','aerea','europa', emisivo_aerea_europa FROM turismo
UNION ALL
SELECT indice_tiempo, 'emisivo','aerea','chile', emisivo_aerea_chile FROM turismo
UNION ALL
SELECT indice_tiempo, 'emisivo','aerea','paraguay', emisivo_aerea_paraguay FROM turismo
UNION ALL
SELECT indice_tiempo, 'emisivo','aerea','brasil', emisivo_aerea_brasil FROM turismo
UNION ALL
SELECT indice_tiempo, 'emisivo','aerea','ee_uu_y_canada', emisivo_aerea_ee_uu_y_canada FROM turismo
UNION ALL
SELECT indice_tiempo, 'emisivo','aerea','resto_de_america', emisivo_aerea_resto_de_america FROM turismo
UNION ALL
SELECT indice_tiempo, 'emisivo','aerea','resto_del_mundo', emisivo_aerea_resto_del_mundo FROM turismo
UNION ALL
SELECT indice_tiempo, 'emisivo','aerea','uruguay', emisivo_aerea_uruguay FROM turismo

UNION ALL
SELECT indice_tiempo, 'emisivo','terrestre','bolivia', emisivo_terrestre_bolivia FROM turismo
UNION ALL
SELECT indice_tiempo, 'emisivo','terrestre','europa', emisivo_terrestre_europa FROM turismo
UNION ALL
SELECT indice_tiempo, 'emisivo','terrestre','chile', emisivo_terrestre_chile FROM turismo
UNION ALL
SELECT indice_tiempo, 'emisivo','terrestre','paraguay', emisivo_terrestre_paraguay FROM turismo
UNION ALL
SELECT indice_tiempo, 'emisivo','terrestre','brasil', emisivo_terrestre_brasil FROM turismo
UNION ALL
SELECT indice_tiempo, 'emisivo','terrestre','ee_uu_y_canada', emisivo_terrestre_ee_uu_y_canada FROM turismo
UNION ALL
SELECT indice_tiempo, 'emisivo','terrestre','resto_de_america', emisivo_terrestre_resto_de_america FROM turismo
UNION ALL
SELECT indice_tiempo, 'emisivo','terrestre','resto_del_mundo', emisivo_terrestre_resto_del_mundo FROM turismo
UNION ALL
SELECT indice_tiempo, 'emisivo','terrestre','uruguay', emisivo_terrestre_uruguay FROM turismo

UNION ALL
SELECT indice_tiempo, 'emisivo','fluvial_maritima','bolivia', emisivo_fluvial_maritima_bolivia FROM turismo
UNION ALL
SELECT indice_tiempo, 'emisivo','fluvial_maritima','europa', emisivo_fluvial_maritima_europa FROM turismo
UNION ALL
SELECT indice_tiempo, 'emisivo','fluvial_maritima','chile', emisivo_fluvial_maritima_chile FROM turismo
UNION ALL
SELECT indice_tiempo, 'emisivo','fluvial_maritima','paraguay', emisivo_fluvial_maritima_paraguay FROM turismo
UNION ALL
SELECT indice_tiempo, 'emisivo','fluvial_maritima','brasil', emisivo_fluvial_maritima_brasil FROM turismo
UNION ALL
SELECT indice_tiempo, 'emisivo','fluvial_maritima','ee_uu_y_canada', emisivo_fluvial_maritima_ee_uu_y_canada FROM turismo
UNION ALL
SELECT indice_tiempo, 'emisivo','fluvial_maritima','resto_de_america', emisivo_fluvial_maritima_resto_de_america FROM turismo
UNION ALL
SELECT indice_tiempo, 'emisivo','fluvial_maritima','resto_del_mundo', emisivo_fluvial_maritima_resto_del_mundo FROM turismo
UNION ALL
SELECT indice_tiempo, 'emisivo','fluvial_maritima','uruguay', emisivo_fluvial_maritima_uruguay FROM turismo

UNION ALL
SELECT indice_tiempo, 'receptivo','aerea','bolivia', receptivo_aerea_bolivia FROM turismo
UNION ALL
SELECT indice_tiempo, 'receptivo','aerea','europa', receptivo_aerea_europa FROM turismo
UNION ALL
SELECT indice_tiempo, 'receptivo','aerea','chile', receptivo_aerea_chile FROM turismo
UNION ALL
SELECT indice_tiempo, 'receptivo','aerea','paraguay', receptivo_aerea_paraguay FROM turismo
UNION ALL
SELECT indice_tiempo, 'receptivo','aerea','brasil', receptivo_aerea_brasil FROM turismo
UNION ALL
SELECT indice_tiempo, 'receptivo','aerea','ee_uu_y_canada', receptivo_aerea_ee_uu_y_canada FROM turismo
UNION ALL
SELECT indice_tiempo, 'receptivo','aerea','resto_de_america', receptivo_aerea_resto_de_america FROM turismo
UNION ALL
SELECT indice_tiempo, 'receptivo','aerea','resto_del_mundo', receptivo_aerea_resto_del_mundo FROM turismo
UNION ALL
SELECT indice_tiempo, 'receptivo','aerea','uruguay', receptivo_aerea_uruguay FROM turismo

UNION ALL
SELECT indice_tiempo, 'receptivo','terrestre','bolivia', receptivo_terrestre_bolivia FROM turismo
UNION ALL
SELECT indice_tiempo, 'receptivo','terrestre','europa', receptivo_terrestre_europa FROM turismo
UNION ALL
SELECT indice_tiempo, 'receptivo','terrestre','chile', receptivo_terrestre_chile FROM turismo
UNION ALL
SELECT indice_tiempo, 'receptivo','terrestre','paraguay', receptivo_terrestre_paraguay FROM turismo
UNION ALL
SELECT indice_tiempo, 'receptivo','terrestre','brasil', receptivo_terrestre_brasil FROM turismo
UNION ALL
SELECT indice_tiempo, 'receptivo','terrestre','ee_uu_y_canada', receptivo_terrestre_ee_uu_y_canada FROM turismo
UNION ALL
SELECT indice_tiempo, 'receptivo','terrestre','resto_de_america', receptivo_terrestre_resto_de_america FROM turismo
UNION ALL
SELECT indice_tiempo, 'receptivo','terrestre','resto_del_mundo', receptivo_terrestre_resto_del_mundo FROM turismo
UNION ALL
SELECT indice_tiempo, 'receptivo','terrestre','uruguay', receptivo_terrestre_uruguay FROM turismo

UNION ALL
SELECT indice_tiempo, 'receptivo','fluvial_maritima','bolivia', receptivo_fluvial_maritima_bolivia FROM turismo
UNION ALL
SELECT indice_tiempo, 'receptivo','fluvial_maritima','europa', receptivo_fluvial_maritima_europa FROM turismo
UNION ALL
SELECT indice_tiempo, 'receptivo','fluvial_maritima','chile', receptivo_fluvial_maritima_chile FROM turismo
UNION ALL
SELECT indice_tiempo, 'receptivo','fluvial_maritima','paraguay', receptivo_fluvial_maritima_paraguay FROM turismo
UNION ALL
SELECT indice_tiempo, 'receptivo','fluvial_maritima','brasil', receptivo_fluvial_maritima_brasil FROM turismo
UNION ALL
SELECT indice_tiempo, 'receptivo','fluvial_maritima','ee_uu_y_canada', receptivo_fluvial_maritima_ee_uu_y_canada FROM turismo
UNION ALL
SELECT indice_tiempo, 'receptivo','fluvial_maritima','resto_de_america', receptivo_fluvial_maritima_resto_de_america FROM turismo
UNION ALL
SELECT indice_tiempo, 'receptivo','fluvial_maritima','resto_del_mundo', receptivo_fluvial_maritima_resto_del_mundo FROM turismo
UNION ALL
SELECT indice_tiempo, 'receptivo','fluvial_maritima','uruguay', receptivo_fluvial_maritima_uruguay FROM turismo

UNION ALL
SELECT indice_tiempo, 'balanza','aerea','bolivia', balanza_aerea_bolivia FROM turismo
UNION ALL
SELECT indice_tiempo, 'balanza','aerea','europa', balanza_aerea_europa FROM turismo
UNION ALL
SELECT indice_tiempo, 'balanza','aerea','chile', balanza_aerea_chile FROM turismo
UNION ALL
SELECT indice_tiempo, 'balanza','aerea','paraguay', balanza_aerea_paraguay FROM turismo
UNION ALL
SELECT indice_tiempo, 'balanza','aerea','brasil', balanza_aerea_brasil FROM turismo
UNION ALL
SELECT indice_tiempo, 'balanza','aerea','ee_uu_y_canada', balanza_aerea_ee_uu_y_canada FROM turismo
UNION ALL
SELECT indice_tiempo, 'balanza','aerea','resto_de_america', balanza_aerea_resto_de_america FROM turismo
UNION ALL
SELECT indice_tiempo, 'balanza','aerea','resto_del_mundo', balanza_aerea_resto_del_mundo FROM turismo
UNION ALL
SELECT indice_tiempo, 'balanza','aerea','uruguay', balanza_aerea_uruguay FROM turismo

UNION ALL
SELECT indice_tiempo, 'balanza','terrestre','bolivia', balanza_terrestre_bolivia FROM turismo
UNION ALL
SELECT indice_tiempo, 'balanza','terrestre','europa', balanza_terrestre_europa FROM turismo
UNION ALL
SELECT indice_tiempo, 'balanza','terrestre','chile', balanza_terrestre_chile FROM turismo
UNION ALL
SELECT indice_tiempo, 'balanza','terrestre','paraguay', balanza_terrestre_paraguay FROM turismo
UNION ALL
SELECT indice_tiempo, 'balanza','terrestre','brasil', balanza_terrestre_brasil FROM turismo
UNION ALL
SELECT indice_tiempo, 'balanza','terrestre','ee_uu_y_canada', balanza_terrestre_ee_uu_y_canada FROM turismo
UNION ALL
SELECT indice_tiempo, 'balanza','terrestre','resto_de_america', balanza_terrestre_resto_de_america FROM turismo
UNION ALL
SELECT indice_tiempo, 'balanza','terrestre','resto_del_mundo', balanza_terrestre_resto_del_mundo FROM turismo
UNION ALL
SELECT indice_tiempo, 'balanza','terrestre','uruguay', balanza_terrestre_uruguay FROM turismo

UNION ALL
SELECT indice_tiempo, 'balanza','fluvial_maritima','bolivia', balanza_fluvial_maritima_bolivia FROM turismo
UNION ALL
SELECT indice_tiempo, 'balanza','fluvial_maritima','europa', balanza_fluvial_maritima_europa FROM turismo
UNION ALL
SELECT indice_tiempo, 'balanza','fluvial_maritima','chile', balanza_fluvial_maritima_chile FROM turismo
UNION ALL
SELECT indice_tiempo, 'balanza','fluvial_maritima','paraguay', balanza_fluvial_maritima_paraguay FROM turismo
UNION ALL
SELECT indice_tiempo, 'balanza','fluvial_maritima','brasil', balanza_fluvial_maritima_brasil FROM turismo
UNION ALL
SELECT indice_tiempo, 'balanza','fluvial_maritima','ee_uu_y_canada', balanza_fluvial_maritima_ee_uu_y_canada FROM turismo
UNION ALL
SELECT indice_tiempo, 'balanza','fluvial_maritima','resto_de_america', balanza_fluvial_maritima_resto_de_america FROM turismo
UNION ALL
SELECT indice_tiempo, 'balanza','fluvial_maritima','resto_del_mundo', balanza_fluvial_maritima_resto_del_mundo FROM turismo
UNION ALL
SELECT indice_tiempo, 'balanza','fluvial_maritima','uruguay', balanza_fluvial_maritima_uruguay FROM turismo
);