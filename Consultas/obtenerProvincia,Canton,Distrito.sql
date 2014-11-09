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

CREATE PROCEDURE proc_obtenerCanton( provincia varchar(100)) 

begin
	declare temp_provinciaID int;
	select obtener_provincia_id(provincia) into temp_provinciaID;

	select nombre_canton from canton
	where idProvincia = temp_provinciaID;

end  //

DELIMITER ;

-- ------------------------------------------
#Obtiene todos los nombres de los distritos
-- ------------------------------------------

DROP PROCEDURE IF EXISTS proc_obtenerDistrito;

DELIMITER //

CREATE PROCEDURE proc_obtenerDistrito(canton varchar(100)) 

begin
	declare temp_cantonID int;

	select obtener_canton_id(canton) into temp_cantonID;

	select nombre_distrito from distrito
	where idCanton = temp_cantonID;

end  //

DELIMITER ;
