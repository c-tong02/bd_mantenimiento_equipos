USE bd_mantenimiento_equipos;
GO

-- Inserci�n de datos en tablas independientes (10 registros cada una)
INSERT INTO equipos (nombre, tipo, ubicacion, fecha_instalacion, estado, fabricante, modelo, vida_util_estimada) VALUES
('Torno CNC', 'Mecanizado', 'Planta A', '2015-06-12', 'Operativo', 'Mazak', 'QTN-250', 10),
('Prensa Hidraulica', 'Moldeo', 'Planta B', '2010-09-25', 'Mantenimiento', 'Siemens', 'PH-500', 15),
('Fresadora', 'Corte', 'Planta A', '2018-04-05', 'Operativo', 'Haas', 'VF-4', 12),
('Robot Industrial', 'Automatizaci�n', 'Planta C', '2020-07-14', 'Operativo', 'ABB', 'IRB-6700', 8),
('Compresor de Aire', 'Suministro', 'Planta B', '2012-03-18', 'Operativo', 'Atlas Copco', 'GA-55', 20),
('Bomba Centr�fuga', 'Fluidos', 'Planta C', '2016-11-30', 'Mantenimiento', 'Grundfos', 'CR-45', 10),
('Generador El�ctrico', 'Energ�a', 'Planta D', '2009-02-10', 'Operativo', 'Caterpillar', 'C18', 25),
('Conveyor Belt', 'Transporte', 'Planta A', '2017-08-21', 'Operativo', 'FlexLink', 'X85', 12),
('Caldera de Vapor', 'Generaci�n', 'Planta B', '2011-05-22', 'Mantenimiento', 'Bosch', 'UL-S', 18),
('Sistema de Filtrado', 'Medio Ambiente', 'Planta C', '2013-10-09', 'Operativo', 'Pall', 'X100', 15);

INSERT INTO tecnicos (nombre, especialidad, experiencia, contacto, disponibilidad, costo_hora) VALUES
('Carlos P�rez', 'Mec�nica', 10, 'cperez@email.com', 'Disponible', 50),
('Ana L�pez', 'Electr�nica', 8, 'alopez@email.com', 'No disponible', 45),
('Juan G�mez', 'Hidr�ulica', 12, 'jgomez@email.com', 'Disponible', 55),
('Mar�a Fern�ndez', 'Neum�tica', 7, 'mfernandez@email.com', 'Disponible', 40),
('Luis Ram�rez', 'Automatizaci�n', 15, 'lramirez@email.com', 'No disponible', 60),
('Sof�a Torres', 'Instrumentaci�n', 9, 'storres@email.com', 'Disponible', 48),
('Pedro Castillo', 'Electricidad', 11, 'pcastillo@email.com', 'No disponible', 52),
('Laura S�nchez', 'Mantenimiento General', 6, 'lsanchez@email.com', 'Disponible', 38),
('Javier Medina', 'Control de Calidad', 10, 'jmedina@email.com', 'Disponible', 50),
('Carmen R�os', 'Seguridad Industrial', 13, 'crios@email.com', 'No disponible', 58);


INSERT INTO proveedores_de_repuestos (nombre, contacto, tiempo_entrega_estimado, calidad) VALUES
('Proveedor A', 'contactoA@example.com', 5, 9),
('Proveedor B', 'contactoB@example.com', 7, 8),
('Proveedor C', 'contactoC@example.com', 3, 10),
('Proveedor D', 'contactoD@example.com', 4, 7),
('Proveedor E', 'contactoE@example.com', 6, 9),
('Proveedor F', 'contactoF@example.com', 2, 8),
('Proveedor G', 'contactoG@example.com', 8, 7),
('Proveedor H', 'contactoH@example.com', 5, 10),
('Proveedor I', 'contactoI@example.com', 9, 6),
('Proveedor J', 'contactoJ@example.com', 3, 9);

INSERT INTO repuestos (nombre, tipo, id_proveedor, cantidad_disponible, costo_unitario) VALUES
('Rodamiento', 'Mec�nico', 1, 100, 15.50),
('Filtro de Aceite', 'Hidr�ulico', 2, 50, 25.00),
('V�lvula Solenoide', 'Neum�tico', 3, 75, 40.00),
('Sensor de Proximidad', 'Electr�nico', 4, 60, 55.00),
('Cinta Transportadora', 'Transporte', 5, 30, 120.00),
('Engranaje', 'Mec�nico', 6, 90, 35.75),
('Motor El�ctrico', 'El�ctrico', 7, 20, 250.00),
('Bomba de Agua', 'Hidr�ulico', 8, 15, 500.00),
('Rel� de Protecci�n', 'Electr�nico', 9, 40, 80.00),
('Lubricante Industrial', 'Qu�mico', 10, 200, 10.00);


INSERT INTO mantenimientos (id_equipo, fecha_mantenimiento, tipo_mantenimiento, descripcion, id_tecnico, tipo_falla, causa_probable, fecha_inicio, fecha_fin) VALUES
(1, '2023-01-15', 'Preventivo', 'Inspecci�n rutinaria de componentes mec�nicos', 3, 'Desgaste', 'Uso prolongado', '2023-01-15 08:00:00', '2023-01-15 10:30:00'),
(2, '2023-02-10', 'Correctivo', 'Reemplazo de motor por falla el�ctrica', 1, 'Falla el�ctrica', 'Cortocircuito', '2023-02-10 09:00:00', '2023-02-10 13:00:00'),
(3, '2023-03-05', 'Preventivo', 'Lubricaci�n general y ajuste de correas', 2, 'N/A', 'Mantenimiento programado', '2023-03-05 08:30:00', '2023-03-05 10:10:00'),
(4, '2023-04-20', 'Correctivo', 'Reparaci�n de fuga en sistema hidr�ulico', 4, 'Fuga hidr�ulica', 'Conexi�n suelta', '2023-04-20 10:00:00', '2023-04-20 13:15:00'),
(5, '2023-05-15', 'Correctivo', 'Reemplazo de sensor da�ado', 5, 'Sensor defectuoso', 'Golpe accidental', '2023-05-15 08:00:00', '2023-05-15 10:00:00'),
(6, '2023-06-01', 'Preventivo', 'Verificaci�n de sistema de control el�ctrico', 6, 'N/A', 'Revisi�n peri�dica', '2023-06-01 09:00:00', '2023-06-01 11:30:00'),
(7, '2023-07-10', 'Correctivo', 'Cambio de v�lvula neum�tica', 7, 'Falla neum�tica', 'Obstrucci�n interna', '2023-07-10 09:30:00', '2023-07-10 13:15:00'),
(8, '2023-08-05', 'Preventivo', 'Chequeo de seguridad de componentes', 8, 'N/A', 'Mantenimiento mensual', '2023-08-05 08:15:00', '2023-08-05 10:15:00'),
(9, '2023-09-12', 'Correctivo', 'Cambio de faja transportadora', 9, 'Falla mec�nica', 'Desgaste', '2023-09-12 08:00:00', '2023-09-12 12:30:00'),
(10, '2023-10-03', 'Correctivo', 'Reparaci�n de m�dulo de control', 10, 'Falla electr�nica', 'Fluctuaci�n de voltaje', '2023-10-03 07:30:00', '2023-10-03 12:30:00'),
(1, '2023-11-22', 'Preventivo', 'Inspecci�n de rodamientos', 1, 'N/A', 'Plan de mantenimiento', '2023-11-22 08:00:00', '2023-11-22 09:50:00'),
(2, '2023-12-10', 'Correctivo', 'Reemplazo de actuador', 2, 'Falla mec�nica', 'Fatiga de material', '2023-12-10 09:30:00', '2023-12-10 13:00:00'),
(3, '2024-01-18', 'Preventivo', 'Limpieza de filtros y revisi�n general', 3, 'N/A', 'Condiciones de operaci�n', '2024-01-18 08:00:00', '2024-01-18 10:00:00'),
(4, '2024-02-25', 'Correctivo', 'Cambio de unidad l�gica', 4, 'Error de control', 'Sobrecarga', '2024-02-25 10:00:00', '2024-02-25 14:45:00'),
(5, '2024-03-12', 'Preventivo', 'Pruebas de funcionamiento', 5, 'N/A', 'Revisi�n trimestral', '2024-03-12 09:15:00', '2024-03-12 11:15:00'),
(6, '2024-04-08', 'Correctivo', 'Reemplazo de bater�a de respaldo', 6, 'Fallo de respaldo', 'Fin de vida �til', '2024-04-08 08:30:00', '2024-04-08 11:00:00'),
(7, '2024-05-03', 'Correctivo', 'Reajuste de rieles gu�a', 7, 'Desalineaci�n', 'Vibraciones', '2024-05-03 08:45:00', '2024-05-03 12:30:00'),
(8, '2024-06-17', 'Preventivo', 'Verificaci�n de presi�n hidr�ulica', 8, 'N/A', 'Control de rutina', '2024-06-17 08:00:00', '2024-06-17 10:00:00'),
(9, '2024-07-21', 'Correctivo', 'Cambio de contactor de potencia', 9, 'Falla el�ctrica', 'Sobrecarga t�rmica', '2024-07-21 09:00:00', '2024-07-21 12:00:00'),
(10, '2024-08-30', 'Correctivo', 'Sustituci�n de tarjeta PLC', 10, 'Falla electr�nica', 'Descarga el�ctrica', '2024-08-30 07:45:00', '2024-08-30 12:15:00');

INSERT INTO uso_de_repuestos (id_mantenimiento, id_repuesto, cantidad_usada) VALUES
(1, 2, 3),
(1, 5, 1),
(2, 7, 2),
(2, 9, 4),
(3, 3, 1),
(3, 6, 2),
(4, 1, 5),
(4, 4, 3),
(5, 8, 1),
(5, 10, 2),
(6, 2, 3),
(6, 7, 2),
(7, 5, 1),
(7, 9, 4),
(8, 3, 2),
(8, 6, 1),
(9, 1, 5),
(9, 4, 3),
(10, 8, 2),
(10, 10, 1),
(11, 3, 2),
(11, 5, 1),
(12, 1, 4),
(12, 2, 3),
(13, 4, 5),
(13, 6, 2),
(14, 3, 3),
(14, 5, 2),
(15, 7, 6),
(15, 2, 1),
(16, 1, 2),
(16, 4, 3),
(17, 6, 2),
(17, 3, 5),
(18, 5, 4),
(18, 7, 2),
(19, 2, 3),
(19, 1, 1),
(20, 4, 5),
(20, 6, 2);


