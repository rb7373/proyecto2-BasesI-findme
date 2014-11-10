#Procedimiento para consultar donaciones x filtro de persona,asociacion y monto.

#Recibira nombre,primer apellido,nombre de asociación

DROP PROCEDURE IF EXISTS consultar_donacion;

DELIMITER //

CREATE PROCEDURE consultar_donacion( pnombrePersona varchar(100) ,papellidoPersona varchar(100),
pnombreAsociacion varchar(100))

begin

	select FechaDonacion,Monto 
	from donacionesxasociacion
    inner join persona
    on persona.idPersona = donacionesxasociacion.idDonador
    inner join asociaciones
    on asociaciones.idAsociaciones = donacionesxasociacion.idAsociacion
	where persona.nombre_Persona like ifnull( concat( '%',pnombrePersona,'%'),persona.nombre_Persona)
    and persona.pApellido_Persona like ifnull( concat( '%',papellidoPersona,'%'),persona.nombre_Persona)
    and asociaciones.nombre_asociacion like ifnull( concat( '%',pnombreAsociacion,'%'),persona.nombre_Persona);
	

	


end  //

DELIMITER ;


