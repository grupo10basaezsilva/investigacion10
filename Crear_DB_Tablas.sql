CREATE DATABASE investigacion10

USE investigacion10
GO
-- create schemas
CREATE SCHEMA cliente;
go

CREATE SCHEMA servidor;
go

-- create tables
CREATE TABLE cliente.sensor (
	id_sensor INT IDENTITY (1, 1) PRIMARY KEY,
	temperatura INT NOT NULL,
    humedad INT NOT NULL,
    sampletime DATETIME
);

CREATE TABLE servidor.ingreso(
    fechaingreso DATETIME
)