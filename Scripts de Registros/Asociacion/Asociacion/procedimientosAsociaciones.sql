use petsrescue;

#Procedimientos necesarios para la inserción de Asociaciones

#Inserción en tabla Asociación

DROP PROCEDURE IF EXISTS proc_insertar_Asociacion;

DELIMITER //

CREATE PROCEDURE proc_insertar_Asociacion(
   pnombre_asociacion varchar(100)  , pDescripcion_asociacion varchar(1000))

begin

INSERT INTO asociaciones(nombre_asociacion,Descripcion_Asociacion)
VALUES(pnombre_asociacion ,pDescripcion_asociacion);

end  //

DELIMITER ;


#Inserción en tabla direccionXasociacion

DROP PROCEDURE IF EXISTS proc_insertar_direccionXasociacion;

DELIMITER //

CREATE PROCEDURE  proc_insertar_direccionXasociacion(
  pdireccion_id int,pAsociacion_id int)

begin

INSERT INTO direccionxasociacion(idAsociaciones,idDireccion)
VALUES(pAsociacion_id,pdireccion_id);

end  //

DELIMITER ;