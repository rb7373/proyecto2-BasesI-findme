USE petsrescue;

# Selecciona todas las personas
DROP PROCEDURE IF EXISTS obtenerPersonas;

DELIMITER //
CREATE PROCEDURE obtenerPersonas()

begin
	SELECT idPersona, email_Persona FROM persona;
end//
DELIMITER ;

# Selecciona todos los usernames
DROP PROCEDURE IF EXISTS obtenerUsernames;

DELIMITER //
CREATE PROCEDURE obtenerUsernames()

begin
	SELECT idUsuario, username FROM usuario;
end//
DELIMITER ;

# verifica la existencia de un email
DROP PROCEDURE IF EXISTS existeEmail;

DELIMITER //
CREATE PROCEDURE existeEmail(email varchar(45))

begin
	SELECT email_Persona FROM persona where lower(email_Persona) = lower(email) limit 1;
end//
DELIMITER ;
