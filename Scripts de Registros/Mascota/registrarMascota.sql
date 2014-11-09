USE petsrescue;

#Procedimiento para insertar una mascota

DROP PROCEDURE IF EXISTS proc_registrar_mascota;

DELIMITER //

CREATE PROCEDURE proc_registrar_mascota(pnombre_mascota varchar(100), chipNumber_mascota int, estado_mascota varchar(100), 

raza_mascota varchar(100), tamano_mascota varchar(100), tipo_mascota varchar(100), color_mascota varchar(100))

begin
	#Declaracion de variables temporales
	declare temp_estadoID int ;
    declare temp_razaID int;
	declare temp_tamanoID int;
	declare temp_tipoID int;
    declare temp_colorID int;
	

	#Se optienen los IDs necesarios para el registro
	select obtener_estadoMascota_id(estado_mascota) into temp_estadoID;
	select obtener_tamanoMascota_id(tamano_mascota) into temp_tamanoID;
	select obtener_colorMascota_id(color_mascota) into temp_colorID;
	select obtener_TipoMascota_id(tipo_mascota) into temp_tipoID;
	select obtener_RazaMascota_id(raza_mascota, temp_tipoID) into temp_razaID;

	#Se registra la mascota
	call proc_insertar_mascota(pnombre_mascota, chipNumber_mascota, temp_estadoID, temp_razaID, temp_tamanoID,
	temp_tipoID, temp_colorID);
	


end  //

DELIMITER ;


#Procedimiento para insertar una mascota perdida
DROP PROCEDURE IF EXISTS proc_registrar_mascota_Perdida;

DELIMITER //

CREATE PROCEDURE proc_registrar_mascota_Perdida(pnombre_mascota varchar(100), chipNumber_mascota int, estado_mascota varchar(100), 

raza_mascota varchar(100), tamano_mascota varchar(100), tipo_mascota varchar(100), color_mascota varchar(100), pid_Dueno int,
pFecha_Perdida date, pRecompensa int, pObservaciones varchar(2000), pidFotoMascotaPerdida blob,

pnombreProvincia varchar(45),pNombreCanton varchar(100),
   pnombreDistrito varchar(100),pnombrebarrio varchar(100),pdescripcion_direccion varchar(1000))

begin
	#Declaracion de variables temporales
	declare temp_provinciaID int;
	declare temp_cantonID int;
	declare temp_distritoID int;
    declare temp_barrioID int;
	declare temp_direccionID int;
	declare temp_mascotaID int;
	declare temp_repPerdidaID int;

	#Se registra en primera instancia la mascota
	call proc_registrar_mascota(pnombre_mascota, chipNumber_mascota, estado_mascota, raza_mascota, tamano_mascota,
	tipo_mascota, color_mascota);
	
	#Se obtiene el ID de la mascota recien registrada
	select last_insert_id() into temp_mascotaID;

	#Se registra la mascota perdida
	call proc_insertar_mascota_perdida( temp_mascotaID, pid_Dueno, pidFotoMascotaPerdida, 
	pFecha_Perdida, pRecompensa , pObservaciones );
	select last_insert_id() into temp_repPerdidaID ;

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

	call  proc_insertar_direccionXreporteperdida(temp_direccionID, temp_repPerdidaID);





end  //

DELIMITER ;


#Procedimiento para insertar una mascota encontrada
DROP PROCEDURE IF EXISTS proc_registrar_mascota_Encontrada;

DELIMITER //

CREATE PROCEDURE proc_registrar_mascota_Encontrada(pnombre_mascota varchar(100), chipNumber_mascota int, estado_mascota varchar(100), 

raza_mascota varchar(100), tamano_mascota varchar(100), tipo_mascota varchar(100), color_mascota varchar(100), pid_Rescatador int,
pFecha_Encontrada date,  pObservaciones varchar(2000), pidFotoMascotaEncontrada blob)

begin
	#Declaracion de variables temporales
	declare temp_mascotaID int;

	#Se registra en primera instancia la mascota
	call proc_registrar_mascota(pnombre_mascota, chipNumber_mascota, estado_mascota, raza_mascota, tamano_mascota,
	tipo_mascota, color_mascota);
	
	#Se obtiene el ID de la mascota recien registrada
	select last_insert_id() into temp_mascotaID;

	#Se registra la mascota encontrada
	call proc_insertar_mascota_encontrada( temp_mascotaID, pid_Rescatador, pidFotoMascotaEncontrada, 
	pFecha_Encontrada ,  pObservaciones );



end  //

DELIMITER ;