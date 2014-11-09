use petsrescue;

-- ------------------------------------------
#Obtiene todos los nombres de las provincias
-- ------------------------------------------

DROP PROCEDURE IF EXISTS proc_obtenerProvincia;

DELIMITER //

CREATE PROCEDURE proc_obtenerProvincia() 

begin
	select nombre_provincia from provincia;

end  //

DELIMITER ;


-- ------------------------------------------
#Obtiene todos los nombres de los cantones
-- ------------------------------------------

DROP PROCEDURE IF EXISTS proc_obtenerCanton;

DELIMITER //

CREATE PROCEDURE proc_obtenerCanton( idprovincias int) 

begin
	select nombre_canton from canton
	where idProvincia = idprovincias;

end  //

DELIMITER ;

-- ------------------------------------------
#Obtiene todos los nombres de los distritos
-- ------------------------------------------

DROP PROCEDURE IF EXISTS proc_obtenerDistrito;

DELIMITER //

CREATE PROCEDURE proc_obtenerDistrito( idcantones int) 

begin
	select nombre_distrito from distrito
	where idCanton = idcantones;

end  //

DELIMITER ;
