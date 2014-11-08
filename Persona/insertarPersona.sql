USE petsrescue;

#Procedimientos para insertar una Persona


#Insertar en tabla PERSONA

DELIMITER ;

DROP PROCEDURE IF EXISTS proc_insertar_tablaPersona;

DELIMITER //

CREATE PROCEDURE proc_insertar_tablaPersona(
   nnombre_persona varchar(100), npapellido_persona varchar(100),nsapellido_persona varchar(45),nemail_persona varchar(45) ,ngenero_persona int)

begin

INSERT INTO persona(nombre_Persona, pApellido_Persona,sApellido_Persona,email_Persona,idGenero)
VALUES( nnombre_persona,npapellido_persona,nsapellido_persona,nemail_persona,ngenero_persona);

end  //

DELIMITER ;

#Insertar en tabla TELEFONOXPERSONA

DELIMITER ;

DROP PROCEDURE IF EXISTS proc_insertar_telefonoXPersona;

DELIMITER //

CREATE PROCEDURE proc_insertar_telefonoXPersona(
   ppersona_id int, ptipo_telefono int, pnumTelefono_persona varchar(8))

begin


INSERT INTO telefonoxpersona(Persona_id,tipoTelefono_id,numeroTelefono)
VALUES( ppersona_id,ptipo_telefono,pnumTelefono_persona);

end  //

DELIMITER ;

#Inserción en tabla USUARIO

DELIMITER ;

DROP PROCEDURE IF EXISTS proc_insertar_usuario;

DELIMITER //

CREATE PROCEDURE proc_insertar_usuario(
   ppersona_id int, pusername varchar(100), ppassword varchar(200),ptipoUsuario int,pfotoPerfil_id int)

begin

INSERT INTO usuario(usuario_idPersona,username,password_usuario,idTipoUsuario,idFotoPerfilUsuario)
VALUES(ppersona_id,pusername,ppassword, ptipoUsuario,pfotoPerfil_id);

end  //

DELIMITER ;

#Inserción en tabla DIRECCION


DROP PROCEDURE IF EXISTS proc_insertar_direccion;

DELIMITER //

CREATE PROCEDURE proc_insertar_direccion(
  pprovincia_id int, pcanton_id int, pdistrito_id int,pbarrio_id int ,pdescripcion varchar(1000) )

begin

INSERT INTO direccion(provincia_id,canton_id,distrito_id,barrio_id,Descripcion)
VALUES( pprovincia_id ,pcanton_id,pdistrito_id, pbarrio_id ,pdescripcion);

end  //

DELIMITER ;

#Inserción en la tabla DIRECCIONXPERSONA


DROP PROCEDURE IF EXISTS proc_insertar_direccionXpersona;

DELIMITER //

CREATE PROCEDURE proc_insertar_direccionXpersona(
  pdireccion_id int,ppersona_id int)

begin

INSERT INTO direccionxpersona (direccion_id,persona_id)
VALUES(pdireccion_id,ppersona_id);

end  //

DELIMITER ;















