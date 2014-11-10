#Procedimiento que desplegara la lista de Casa Cunas que comparten características
#Con la mascota registrada como encontrada.

#Agregar id de la persona, con base a el se encontrara el numero y otros datos de la persona

use petsrescue;


DROP PROCEDURE IF EXISTS consultar_casasCuna;

DELIMITER //

CREATE PROCEDURE consultar_casasCuna( ptipoMascota varchar(100),ptamanoMascota varchar(45))

begin

	select nombre_Persona,pApellido_Persona,sApellido_Persona,email_Persona from persona
    inner join casacuna
	on casacuna.idPersona = persona.idPersona
    inner join tamanomascota
    on tamanomascota.idTamanoMascota = casacuna.idTamanoMascota
	inner join tipomascotaxcasacuna
    on tipomascotaxcasacuna.casaCuna_id = casacuna.idCasaCuna
    inner join tipomascota
    on tipomascota.idTipoMascota = tipomascotaxcasacuna.tipoMascota_id
	where tipomascota.tipo = ptipoMascota and tamanomascota.tamano = ptamanoMascota
    order by persona.pApellido_Persona;


end  //

DELIMITER ;




