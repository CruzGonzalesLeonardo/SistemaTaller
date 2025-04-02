CREATE DATABASE BDTallerMecanico
USE BDTallerMecanico

-- Tabla Clientes
CREATE TABLE Clientes (
    DNI VARCHAR(8) PRIMARY KEY,
    Apellidos VARCHAR(255),
    Nombre VARCHAR(255),
    Direccion VARCHAR(255),
    CP VARCHAR(10),
    Poblacion VARCHAR(255),
    Telefono VARCHAR(20),
    Telefono2 VARCHAR(20)
);

-- Tabla Coches
CREATE TABLE Coches (
    Matricula VARCHAR(20) PRIMARY KEY,
    CNCPropietario VARCHAR(8),
    Marca VARCHAR(255),
    Modelo VARCHAR(255),
    Color VARCHAR(255),
    Km INT,
    FOREIGN KEY (CNCPropietario) REFERENCES Clientes(DNI)
);

-- Tabla Reparaciones
CREATE TABLE Reparaciones (
    NumReparacion INT PRIMARY KEY,
    Matricula VARCHAR(20),
    Descripcion VARCHAR(255),
    FechaEntrada DATE,
    FechaSalida DATE,
    Horas DECIMAL(5,2),
    FOREIGN KEY (Matricula) REFERENCES Coches(Matricula)
);

-- Tabla Piezas
CREATE TABLE Piezas (
    Referencia VARCHAR(255) PRIMARY KEY,
    Descripcion VARCHAR(255),
    Precio DECIMAL(10,2),
    Stock INT
);

-- Tabla DetallesReparacion
CREATE TABLE DetallesReparacion (
    NumReparacion INT,
    Referencia VARCHAR(255),
    Unidades INT,
    PRIMARY KEY (NumReparacion, Referencia),
    FOREIGN KEY (NumReparacion) REFERENCES Reparaciones(NumReparacion),
    FOREIGN KEY (Referencia) REFERENCES Piezas(Referencia)
);