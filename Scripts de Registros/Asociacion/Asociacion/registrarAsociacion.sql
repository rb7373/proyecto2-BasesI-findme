use petsrescue;

#Procedimiento para registrar una Asociación
#Agregar columna fotoid a asociación (FK) y agregar a registro

DROP PROCEDURE IF EXISTS proc_registrar_Asociacion;

DELIMITER //

CREATE PROCEDURE proc_registrar_Asociacion(
   pnombre_asociacion varchar(100)  , pDescripcion_asociacion varchar(1000),pnombreProvincia varchar(45),pNombreCanton varchar(100),
   pnombreDistrito varchar(100),pnombrebarrio varchar(100),pdescripcion_direccion varchar(1000))

begin

	declare temp_asociacionID int;
	declare temp_provinciaID int;
	declare temp_cantonID int;
	declare temp_distritoID int;
    declare temp_barrioID int;
	declare temp_direccionID int;

    #Aqui debería ir proc para ingresar Foto

	call proc_insertar_Asociacion(pnombre_asociacion , pDescripcion_asociacion);
	select last_insert_id() into temp_asociacionID;
 
	select obtener_provincia_id(pnombreProvincia) into temp_provinciaID;
-- 
-- 
	select obtener_canton_id(pNombreCanton) into temp_cantonID;
 	select obtener_distrito_id(pnombreDistrito) into temp_distritoID;
-- 
--     
	call proc_insertar_barrio(pnombrebarrio,temp_distritoID);
    select last_insert_id() into temp_barrioID;

	call proc_insertar_direccion(temp_provinciaID,temp_cantonID,temp_distritoID,temp_barrioID,pdescripcion_direccion);
	select last_insert_id() into temp_direccionID;

	call proc_insertar_direccionXasociacion(temp_direccionID,temp_asociacionID);

end  //

DELIMITER ;

