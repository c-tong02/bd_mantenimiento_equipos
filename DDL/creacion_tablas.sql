USE master;
GO

DROP DATABASE bd_mantenimiento_equipos;
GO


-- Creación de la base de datos
CREATE DATABASE bd_mantenimiento_equipos;
GO

-- Selección de la base de datos creada
USE bd_mantenimiento_equipos;
GO

-- Creación de tablas

-- Tabla equipos
CREATE TABLE equipos (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    tipo VARCHAR(100),
    ubicacion VARCHAR(75),
    fecha_instalacion DATE,
    estado VARCHAR(25),
    fabricante VARCHAR(55),
    modelo VARCHAR(100),
    vida_util_estimada INT
);

-- Tabla tecnicos
CREATE TABLE tecnicos (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    especialidad VARCHAR(100) NOT NULL,
    experiencia INT,
    contacto VARCHAR(100),
    disponibilidad VARCHAR(100),
	costo_hora MONEY
);

-- Tabla proveedores_de_repuestos
CREATE TABLE proveedores_de_repuestos (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    contacto VARCHAR(100),
    tiempo_entrega_estimado INT,
    calidad INT
);

-- Tabla repuestos
CREATE TABLE repuestos (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    tipo VARCHAR(100),
    id_proveedor INT,
    cantidad_disponible INT,
    costo_unitario MONEY,
    FOREIGN KEY (id_proveedor) REFERENCES proveedores_de_repuestos(id)
);

-- Tabla mantenimientos
CREATE TABLE mantenimientos (
    id INT IDENTITY(1,1) PRIMARY KEY,
	id_equipo INT,
    fecha_mantenimiento DATE NOT NULL,
    tipo_mantenimiento VARCHAR(100),
    descripcion VARCHAR(255),
    id_tecnico INT,
    duracion DECIMAL(10,2),
	tipo_falla VARCHAR(50),
	causa_probable VARCHAR(100),
	FOREIGN KEY (id_equipo) REFERENCES equipos(id),
    FOREIGN KEY (id_tecnico) REFERENCES tecnicos(id)
);

-- 1. Eliminar columna
ALTER TABLE mantenimientos
DROP COLUMN duracion;

-- 2. Agregar dos columnas nuevas
ALTER TABLE mantenimientos
ADD fecha_inicio DATETIME,
    fecha_fin DATETIME;


-- Tabla uso_de_repuestos
CREATE TABLE uso_de_repuestos (
    id INT IDENTITY(1,1) PRIMARY KEY,
    id_mantenimiento INT,
    id_repuesto INT,
    cantidad_usada INT,
    FOREIGN KEY (id_mantenimiento) REFERENCES mantenimientos(id),
    FOREIGN KEY (id_repuesto) REFERENCES repuestos(id)
);










