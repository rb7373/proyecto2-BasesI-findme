use petsrescue;

#Procedimiento para Consultar una Asociación
#Realiza la consulta con base en nombre y dirección de la asociación.


DROP PROCEDURE IF EXISTS consultar_asociaciones;

DELIMITER //

CREATE PROCEDURE consultar_asociaciones( pnombre_asociacion varchar(100),pnombre_provincia varchar(45),pnombreCanton varchar(100))

begin
    

	select nombre_asociacion,Descripcion_Asociacion from asociaciones
	inner join direccionxasociacion
	on direccionxasociacion.idAsociaciones = asociaciones.idAsociaciones
    inner join direccion
	on direccion.idDireccion_pk = direccionxasociacion.idDireccion
	inner join provincia
    on provincia.idProvincia = direccion.provincia_id
	inner join canton
    on canton.idCanton = direccion.canton_id
    where asociaciones.nombre_asociacion like  ifnull( concat('%', pnombre_asociacion ,'%'),  asociaciones.nombre_asociacion)  
	and provincia.nombre_provincia = pnombre_provincia and canton.nombre_canton = pnombreCanton
    order by asociaciones.nombre_asociacion;

end  //

DELIMITER ;




