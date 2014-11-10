use petsrescue;
#Se agregarran en una lista negra todos los adoptantes que posean una calificación menor a 3.

DROP PROCEDURE IF EXISTS generar_listaNegra;

DELIMITER //

CREATE PROCEDURE generar_listaNegra()

begin

	select adoptante_id from adopciones
    where calificacion <= 3;


end  //

DELIMITER ;


