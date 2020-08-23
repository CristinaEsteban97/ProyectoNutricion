DROP DATABASE IF EXISTS proyectofinalDAW;
CREATE DATABASE proyectofinalDAW;
USE proyectofinalDAW;

CREATE TABLE empleados(
	dniEmpleado varchar(11) NOT NULL,
	nombre varchar(50),
	apellidos varchar(50),
	email varchar(50),
	puesto varchar(100),
	telefono varchar(15),
 	PRIMARY KEY (dniEmpleado)
);

CREATE TABLE clientes(
	dniCliente int(11) NOT NULL PRIMARY KEY,
	nombre varchar(50),
	apellidos varchar(50),
	email varchar(50),
	telefono varchar(15),
	dniEmpleado int(11),
	tipoDieta varchar(100),
 	PRIMARY KEY (dniCliente)
);


CREATE TABLE recetas(
	idReceta int(11) NOT NULL,
	nombre varchar(100),
	idCategoria int(11),
	PRIMARY KEY (idReceta)
	FOREIGN KEY (idCategoria) REFERENCES categorias(idCategoria)
);

CREATE TABLE menus(
	idMenu int(11) NOT NULL,
	idCategoria int(11) NOT NULL,	
	PRIMARY KEY (idMenu),
	FOREIGN KEY (idCategoria) REFERENCES categorias(idCategoria)
);

CREATE TABLE categorias(
	idCategoria int(11) NOT NULL,
	tipoDieta varchar(100),
	PRIMARY KEY (idCategoria)
);

CREATE TABLE menus_recetas(
    idReceta int(11) NOT NULL,
    idMenu int(11) NOT NULL,
    dia VARCHAR(100),
    PRIMARY KEY(idReceta,idMenu),
    FOREIGN KEY (idReceta) REFERENCES recetas(idReceta),
    FOREIGN KEY (idMenu) REFERENCES menus(idMenu)
    );

CREATE TABLE alimentos(
	idAlimento int(11) NOT NULL,
	calorias float(11),
	hidratos de carbono float(11),
	proteinas float(11),
	grasas float(11),
	fibra float(11),
	PRIMARY KEY(idAlimento)
);


INSERT INTO empleados  VALUES ('24584562P','Marta','Pérez Blasco','','Nutricionista','606257432');
INSERT INTO empleados  VALUES ('62145894P','Pablo','Cisternes Martinez','','Nutricionista','604115249');