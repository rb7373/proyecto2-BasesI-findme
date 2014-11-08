use petsrescue;

#Registrar Adopción

DROP PROCEDURE IF EXISTS proc_registrar_Adopcion;

DELIMITER //

CREATE PROCEDURE proc_registrar_Adopcion(
   padoptante_id int  ,pmascota_id int)

begin

INSERT INTO adopciones(adoptante_id,mascota_id)
VALUES(padoptante_id,pmascota_id);

end  //

DELIMITER ;

