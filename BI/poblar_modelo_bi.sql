USE bd_mantenimiento_equipos;
GO

-- Dim equipos
SELECT
	id as 'id_equipo',
	nombre as 'nombre_equipo',
	modelo as 'modelo'
FROM equipos;

-- Dim tecnicos
SELECT
	id as 'id_tecnico',
	nombre as 'nombre_tecnico',
	especialidad as 'especialidad',
	costo_hora as 'costo_hora'
FROM tecnicos;

-- Dim fechas
SELECT
	fecha_mantenimiento,
	YEAR(fecha_mantenimiento) AS 'anio',
	MONTH(fecha_mantenimiento) AS 'mes',
	DAY(fecha_mantenimiento) AS 'dia'
FROM mantenimientos;

-- Fact table
SELECT
	e.id as 'id_dim_equipos',
	t.id as 'id_dim_tecnicos',
	m.id as 'id_dim_mantenimientos',
	m.fecha_mantenimiento as 'id_dim_fechas',
	DATEDIFF(hour, m.fecha_inicio, m.fecha_fin) AS 'duracion_total_mantenimiento',
	SUM(ur.cantidad_usada) AS 'cantidad_repuestos_usados',
	SUM(r.costo_unitario * ur.cantidad_usada) AS 'costo_repuestos',
	t.costo_hora*DATEDIFF(hour, m.fecha_inicio, m.fecha_fin) AS 'costo_operativo',
	t.costo_hora*DATEDIFF(hour, m.fecha_inicio, m.fecha_fin) + SUM(r.costo_unitario * ur.cantidad_usada) AS 'costo_total_mantenimiento'
FROM mantenimientos m
	INNER JOIN equipos e ON e.id = m.id_equipo
	INNER JOIN tecnicos t ON t.id = m.id_tecnico
	INNER JOIN uso_de_repuestos ur ON m.id = ur.id_mantenimiento
	INNER JOIN repuestos r ON r.id = ur.id_repuesto
GROUP BY
	e.id,
	t.id,
	m.id,
	DATEDIFF(hour, m.fecha_inicio, m.fecha_fin),
	t.costo_hora*DATEDIFF(hour, m.fecha_inicio, m.fecha_fin),
	m.fecha_mantenimiento;

select*
from mantenimientos
