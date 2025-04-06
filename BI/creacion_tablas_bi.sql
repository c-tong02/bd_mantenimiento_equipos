CREATE DATABASE bd_matenimiento_equipos_bi;
GO

-- Selección de la base de datos creada
USE bd_matenimiento_equipos_bi;
GO

-- Tabla de Dimensión: Equipos
CREATE TABLE dim_equipos (
	id INT IDENTITY(1,1) PRIMARY KEY,
    id_equipo INT NOT NULL,
    nombre_equipo VARCHAR(100),
	modelo VARCHAR(100)
);



-- Tabla de Dimensión: Técnicos
CREATE TABLE dim_tecnicos (
	id INT IDENTITY(1,1) PRIMARY KEY,
    id_tecnico INT NOT NULL,
    nombre_tecnico VARCHAR(255),
    especialidad VARCHAR(100),
	costo_hora MONEY
);


-- Tabla de Dimensión: Fechas
CREATE TABLE dim_fechas (
    id INT IDENTITY(1,1) PRIMARY KEY,
    fecha_mantenimiento DATE NOT NULL,
    anio INT,
    mes INT,
    dia INT
);


-- Tabla de Hechos: Costo de Mantenimientos
CREATE TABLE fact_table_costo_mantenimientos (
	id INT IDENTITY(1,1) PRIMARY KEY,
    id_dim_equipos INT,
    id_dim_tecnicos INT,
    id_dim_fechas INT,
	duracion_total_mantenimiento DECIMAL(5,2),
	cantidad_repuestos_usados INTEGER,
	costo_repuestos MONEY,
	costo_operativo MONEY,
    costo_total_mantenimiento MONEY,
    FOREIGN KEY (id_dim_equipos) REFERENCES dim_equipos(id),
    FOREIGN KEY (id_dim_tecnicos) REFERENCES dim_tecnicos(id),
	FOREIGN KEY (id_dim_fechas) REFERENCES dim_fechas(id),
);

