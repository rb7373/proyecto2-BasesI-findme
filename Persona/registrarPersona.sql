USE petsrescue;

#Procedimiento para insertar una persona




DROP PROCEDURE IF EXISTS proc_registrar_persona;

DELIMITER //

CREATE PROCEDURE proc_registrar_persona(
   pnombre_persona varchar(100), ppapellido_persona varchar(100),
   psapellido_persona varchar(45),pemail_persona varchar(45) ,pgenero_persona int,ptipo_telefono int, pnumTelefono_persona varchar(8),
   pusername varchar(100), ppassword varchar(200),ptipoUsuario int,pnombreProvincia varchar(45),pNombreCanton varchar(100),
   pnombreDistrito varchar(100),pnombrebarrio varchar(100),pdescripcion_direccion varchar(1000) )

begin
    declare temp_personaID int ;
    declare temp_provinciaID int;
	declare temp_cantonID int;
	declare temp_distritoID int;
    declare temp_barrioID int;
	declare temp_direccionID int;
    

 	call proc_insertar_tablaPersona(pnombre_persona,ppapellido_persona,psapellido_persona,pemail_persona,pgenero_persona);
 	select last_insert_id() into temp_personaID;
-- 
     call proc_insertar_telefonoXPersona(temp_personaID,ptipo_telefono, pnumTelefono_persona);
-- 
-- 	#Aqui debe ir el procedimiento para insertar una imagen,aplicar last_insert_id()
-- 
 	call proc_insertar_usuario(temp_personaID,pusername,ppassword,ptipoUsuario,null);
-- 	
--
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
-- 
 	call  proc_insertar_direccionXpersona(temp_direccionID, temp_personaID);
	
	
     
	

end  //

DELIMITER ;
