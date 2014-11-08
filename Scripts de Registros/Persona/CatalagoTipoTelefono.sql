USE petsrescue;

#Procedimientos para inserción en Catálogos relacionados a PERSONA

DROP PROCEDURE IF EXISTS proc_insertar_tipotelefono;

DELIMITER //

CREATE PROCEDURE proc_insertar_tipotelefono(
   nuevo_tipo_telefono varchar(100)
)

begin

INSERT INTO tipotelefono(
  tipoTelefono
)
VALUES(nuevo_tipo_telefono);

end  //
DELIMITER ;

call proc_insertar_tipotelefono("Casa");
call proc_insertar_tipotelefono("Celular");


