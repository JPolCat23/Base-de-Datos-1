CREATE DATABASE Hito2Tarea;
USE Hito2Tarea;

--Creamos una tabla--

CREATE TABLE Estudiantes(
      cod_sis varchar(20) PRIMARY KEY,
	  nombres varchar(20),
	  apellidos varchar(20),
	  edad integer,
	  email varchar(100)

);

CREATE TABLE Materias(
      cod_mat varchar(20) PRIMARY KEY,
	  nombre varchar(20),
	  aula integer

);

CREATE TABLE inscripcion(
     id_inscripcion integer PRIMARY KEY,
     cod_sis varchar(20),
	 cod_mat varchar(20),
	 semestre varchar(30),
	 gestion integer
	 FOREIGN KEY (cod_sis) REFERENCES Estudiantes (cod_sis),
	 FOREIGN KEY (cod_mat) REFERENCES Materias (cod_mat),
);

--Ponemos los registros de la tabla--
INSERT INTO Estudiantes (cod_sis, nombres, apellidos, edad, email) 
    VALUES ('7886733SC', 'nombre1', 'apellidos1', 20, 'nombre1@gmail.com');
INSERT INTO Materias(cod_mat, nombre, aula) 
VALUES('BDA-I', 'Base De Datos I','214');



--ponemos los comandos para ejecutar la tabla y borrarlas--

SELECT * FROM Estudiantes, Materias, inscripcion;

DROP TABLE Estudiantes;
DROP TABLE inscripcion;
DROP TABLE Materias;