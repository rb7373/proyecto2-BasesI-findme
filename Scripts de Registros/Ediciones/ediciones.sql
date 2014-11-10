use petsrescue;

#Edicion de datos de persona

#Edición de username

DROP PROCEDURE IF EXISTS proc_editar_username;

DELIMITER //

CREATE PROCEDURE proc_editar_username(pemail varchar(45),pnuevoUsername varchar(100))

begin
    declare id_temporal int;
    declare id_usuarioTemporal int;

	select obtener_persona_id(pemail) into id_temporal;

    select idUsuario into id_usuarioTemporal from usuario where usuario_idPersona = id_Temporal; 
    
	#verificar que username no exista en PHP
	update usuario set username=pnuevoUsername where idUsuario = id_usuarioTemporal;

end  //

DELIMITER ;

#Editar contraseña accessible

DROP PROCEDURE IF EXISTS proc_editar_contraseña;

DELIMITER //

CREATE PROCEDURE proc_editar_contraseña(pemail varchar(45),pnuevaContrasena varchar(100))

begin
    declare id_temporal int;
    declare id_usuarioTemporal int;

	select obtener_persona_id(pemail) into id_temporal;

    select idUsuario into id_usuarioTemporal from usuario where usuario_idPersona = id_Temporal; 
    
	
	update usuario set password_usuario = pnuevaContrasena where idUsuario = id_usuarioTemporal;

end  //

DELIMITER ;




