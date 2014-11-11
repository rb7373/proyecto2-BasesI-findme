USE petsrescue;

#Procedimiento para insertar una mascota

DROP PROCEDURE IF EXISTS proc_registrar_mascota;

DELIMITER //

CREATE PROCEDURE proc_registrar_mascota(pnombre_mascota varchar(100), chipNumber_mascota int, estado_mascota int, 

raza_mascota int, tamano_mascota int, tipo_mascota int, color_mascota int)

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
	call proc_insertar_mascota(pnombre_mascota, chipNumber_mascota, estado_mascota, raza_mascota, tamano_mascota,
	tipo_mascota, color_mascota);
	


end  //

DELIMITER ;


#Procedimiento para insertar una mascota perdida
DROP PROCEDURE IF EXISTS proc_registrar_mascota_Perdida;

DELIMITER //

CREATE PROCEDURE proc_registrar_mascota_Perdida(pnombre_mascota varchar(100), chipNumber_mascota int, estado_mascota int, 

raza_mascota int, tamano_mascota int, tipo_mascota int, color_mascota int, pid_Dueno int,
pFecha_Perdida date, pRecompensa int, pObservaciones varchar(2000), provincia int, 
canton int, distrito int, barrio varchar(100), descripcion_direccion varchar(1000))
begin
	#Declaracion de variables temporales
	declare temp_mascotaID int;
    declare temp_reportePerdida int;
	declare temp_barrioID int;
	declare temp_direccionID int;

	#Se registra en primera instancia la mascota
	call proc_registrar_mascota(pnombre_mascota, chipNumber_mascota, estado_mascota, raza_mascota, tamano_mascota,
	tipo_mascota, color_mascota);
	
	#Se obtiene el ID de la mascota recien registrada
	select last_insert_id() into temp_mascotaID;

	#Se registra la mascota perdida
	call proc_insertar_mascota_perdida( temp_mascotaID, pid_Dueno,  
	pFecha_Perdida, pRecompensa , pObservaciones );

    #Se obtiene el ID del reporte recien registrada
	select last_insert_id() into temp_reportePerdida;
	
	call proc_insertar_barrio(barrio,distrito);
    select last_insert_id() into temp_barrioID;

	call proc_insertar_direccion(provincia,canton, distrito,temp_barrioID,descripcion_direccion);
	select last_insert_id() into temp_direccionID;
	
	call proc_insertar_direccionXreportePerdida(temp_direccionID,temp_reportePerdida);


end  //

DELIMITER ;


#Procedimiento para insertar una mascota encontrada
DROP PROCEDURE IF EXISTS proc_registrar_mascota_Encontrada;

DELIMITER //

CREATE PROCEDURE proc_registrar_mascota_Encontrada(pnombre_mascota varchar(100), chipNumber_mascota int, estado_mascota int, 

raza_mascota int, tamano_mascota int, tipo_mascota int, color_mascota int, pid_Rescatador int,
pFecha_Encontrada date,  pObservaciones varchar(2000), provincia int, 
canton int, distrito int, barrio varchar(100), descripcion_direccion varchar(1000))

begin
	#Declaracion de variables temporales
	declare temp_mascotaID int;
    declare temp_reporteEncontrada int;
	declare temp_barrioID int;
	declare temp_direccionID int;

	#Se registra en primera instancia la mascota
	call proc_registrar_mascota(pnombre_mascota, chipNumber_mascota, estado_mascota, raza_mascota, tamano_mascota,
	tipo_mascota, color_mascota);
	
	#Se obtiene el ID de la mascota recien registrada
	select last_insert_id() into temp_mascotaID;

	#Se registra la mascota encontrada
	call proc_insertar_mascota_encontrada( temp_mascotaID, pid_Rescatador, 
	pFecha_Encontrada ,  pObservaciones );
	#Se obtiene el ID del reporte recien registrada
	select last_insert_id() into temp_reporteEncontrada;

	call proc_insertar_barrio(barrio,distrito);
    select last_insert_id() into temp_barrioID;

	call proc_insertar_direccion(provincia,canton, distrito,temp_barrioID,descripcion_direccion);
	select last_insert_id() into temp_direccionID;
	
	call proc_insertar_direccionXreporteEncuentro(temp_direccionID,temp_reporteEncontrada);



end  //

DELIMITER ;