CREATE DATABASE POLLOS_COPA
USE POLLOS_COPA;
--Creamos la tabla--

CREATE TABLE cliente(
      id_cliente varchar(20) PRIMARY KEY,
	  nombres varchar(20),
	  apellidos varchar(20),
	  edad integer,
	  domicilio varchar(100)
);

CREATE TABLE pedido(
      id_pedido varchar(20) PRIMARY KEY,
	  articulo varchar(20),
	  costo integer,
	  fecha varchar(100)
);

CREATE TABLE compra(
     id_detalle_pedido integer PRIMARY KEY,
     id_cliente varchar(20),
	 id_pedido varchar(20),
	 FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
	 FOREIGN KEY (id_pedido) REFERENCES pedido (id_pedido),
);

--ingresamos valores--

INSERT INTO cliente(id_cliente, nombres, apellidos, edad, domicilio) 
VALUES('CLE-9116774', 'Jhanpol','Machaca Aranibar' 18, 'av Villa ingenio Calle Desaguadero');

INSERT INTO pedido(id_pedido, articulo, costo, fecha) 
VALUES('CO-1560245', 'Combo Fiesta', 25, '11/09/2022');
