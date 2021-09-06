SELECT cantVentas, ganancias, COUNT(bic.nroDeSerie) AS "cantBici Venta" FROM bicicleterias
	INNER JOIN bicicletas bic ON bic.bicicleteriaId = bicicleterias.id 
	WHERE bicicleterias.id = 2;
