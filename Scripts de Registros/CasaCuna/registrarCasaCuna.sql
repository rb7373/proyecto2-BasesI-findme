#Procedimiento registrar Casa Cuna
use petsrescue;


DROP PROCEDURE IF EXISTS  proc_registrar_casacuna;

DELIMITER //

CREATE PROCEDURE proc_registrar_casacuna( pTamannoMascota varchar(45), pemail_persona varchar(45),ptipo_mascota varchar(45),
 palimento int, pvacunas int,ptransporte int,pdinero int)

begin 
    declare temp_personaID int ;
    declare temp_casacunaID int;
	declare temp_tipoMascotaID int;
	declare temp_tamanoMascotaID int;
    
    select obtener_persona_id(pemail_persona) into temp_personaID;

	select obtener_tamanoMascota_id(pTamannoMascota) into temp_tamanoMascotaID ;
     
 	call proc_insertar_CasaCuna( temp_personaID , temp_tamanoMascotaID);
    select last_insert_id() into temp_casacunaID;

    select obtener_TipoMascota_id(ptipo_mascota) into temp_tipoMascotaID;

	call proc_insertar_tipomascotaxcasacuna(temp_casacunaID , temp_tipoMascotaID );
	call proc_insertar_donacionesxcasacuna(temp_casacunaID , palimento, pvacunas,ptransporte,pdinero);



end  //

DELIMITER ;