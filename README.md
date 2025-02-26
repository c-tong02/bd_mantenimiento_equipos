# Tema: Mantenimiento de Equipos Industriales

Caso referente a Bases de Datos:
Se requiere diseñar una base de datos para gestionar el mantenimiento de equipos industriales en una planta de producción. La base de datos debe almacenar información sobre los equipos, su historial de mantenimiento, órdenes de trabajo, técnicos responsables y repuestos utilizados.

Entidades clave:

* Equipos (ID, nombre, tipo, ubicación, fecha de instalación, estado)
* Mantenimientos (ID, ID_equipo, fecha, tipo: preventivo/correctivo, descripción, técnico_responsable)
* Órdenes de trabajo (ID, ID_equipo, fecha_creación, estado, prioridad)
* Técnicos (ID, nombre, especialidad, contacto)
* Repuestos (ID, nombre, cantidad_disponible, proveedor)
* Uso de repuestos (ID, ID_mantenimiento, ID_repuesto, cantidad_usada)
