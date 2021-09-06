CREATE DATABASE examBicicleteria;

USE examBicicleteria;

CREATE TABLE bicicleterias(
	id INT NOT NULL AUTO_INCREMENT,
	ganancias VARCHAR(45),
	cantVentas INT,
	PRIMARY KEY (id)
);

CREATE TABLE bicicletas(
	nroDeSerie VARCHAR(45) NOT NULL,
	modelo VARCHAR(45),
	anio INT,
	precio VARCHAR(45),
	bicicleteriaId INT NOT NULL,
	PRIMARY KEY (nroDeSerie),
	FOREIGN KEY (bicicleteriaId) REFERENCES bicicleterias(id)
);

INSERT INTO bicicleterias(ganancias, cantVentas)
	VALUES("12000",12),
	      ("23000",15),
	      ("3000",11);

INSERT INTO bicicletas(nroDeSerie, modelo, bicicleteriaId)
	VALUES("aa1","figot",1),
	      ("aa2","marla",2),
	      ("a23","marla",2);

SELECT cantVentas, ganancias, COUNT(bic.nroDeSerie) AS "cantBici Venta" FROM bicicleterias
	INNER JOIN bicicletas bic ON bic.bicicleteriaId = bicicleterias.id 
	WHERE bicicleterias.id = 2;
