# Modelo de Mantenimiento de Equipos Industriales

Caso referente a Bases de Datos:
Se requiere diseñar una base de datos para gestionar el mantenimiento de equipos industriales en una planta de producción. La base de datos debe almacenar información sobre los equipos, su historial de mantenimiento, órdenes de trabajo, técnicos responsables y repuestos utilizados.

Este proyecto presenta un modelo de base de datos diseñado para la gestión de mantenimiento de equipos industriales, incluyendo su transformación a un modelo dimensional para análisis de costos y desempeño.

## Objetivo
Facilitar la gestión y análisis de mantenimientos realizados a equipos industriales, permitiendo:
- Trazabilidad de fallas, técnicos y repuestos usados.
- Cálculo de costos operativos y de repuestos.
- Análisis de desempeño técnico y planificación de mantenimiento.

## Entidades clave:
* Equipos (id, nombre, tipo, ubicación, estado, fabricante, modelo, vida_util_estimada)
* Mantenimientos (id, id_equipo, fecha_mantenimiento, tipo_mantenimiento, descripción, id_tecnico, fecha_inicio, fecha_fin, tipo_falla, causa_probable)
* Técnicos (id, nombre, especialidad, experiencia, disponibilidad, costo_hora)
* Repuestos (id, nombre, tipo, id_proveedor, cantidad_disponible, costo_unitario)
* Uso de repuestos (id, id_mantenimiento, id_repuesto, cantidad_usada)
* Proveedores de repuestos (id, nombre, contacto, tiempo_entrega_estimado, calidad)

## Modelo dimensional
Tabla hechos: fact_table_costos_mantenimientos
Dimensiones: dim_equipos, dim_tecnicos, dim_fechas

Este modelo permite construir dashboards para analizar:
- Costo total de mantenimiento por mes.
- Uso de repuestos por técnico o equipo.
- Productividad técnica y eficiencia operativa.

## Scripts SQL
modelo_relacional.sql: Script para crear el modelo OLTP.
modelo_dimensional.sql: Script para crear el modelo OLAP.


