USE petsrescue;

# Selecciona todas las personas
DROP PROCEDURE IF EXISTS obtenerPersonas;

DELIMITER //
CREATE PROCEDURE obtenerPersonas()

begin
	SELECT idPersona, email_Persona FROM persona;
end//
DELIMITER ;
