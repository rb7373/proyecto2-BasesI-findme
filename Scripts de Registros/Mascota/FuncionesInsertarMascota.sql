use petsrescue;

#	Obtiene el id del estado de la mascota
DROP FUNCTION IF EXISTS obtener_estadoMascota_id;

DELIMITER //

CREATE FUNCTION obtener_estadoMascota_id(nombre_estado varchar(45)) returns int

begin

declare estadoMascota_id int;

select idEstadoMascota into estadoMascota_id from estadomascota
where estado = nombre_estado limit 1;

return estadoMascota_id;

end//

DELIMITER ;

#	Obtiene el id del tamano de la mascota
DROP FUNCTION IF EXISTS obtener_tamanoMascota_id;

DELIMITER //

CREATE FUNCTION obtener_tamanoMascota_id(tamano_mascota varchar(45)) returns int

begin

declare tamanoMascota_id int;

select idTamanoMascota into tamanoMascota_id from tamanomascota
where tamano = tamano_mascota limit 1;

return tamanoMascota_id;

end//

DELIMITER ;

#	Obtiene el id del color de la mascota
DROP FUNCTION IF EXISTS obtener_colorMascota_id;

DELIMITER //

CREATE FUNCTION obtener_colorMascota_id(color_mascota varchar(45)) returns int

begin

declare colorMascota_id int;

select idColorMascota into colorMascota_id from colormascota
where Color = color_mascota limit 1;

return colorMascota_id;

end//

DELIMITER ;

#	Obtiene el id del tipo de la mascota
DROP FUNCTION IF EXISTS obtener_TipoMascota_id;

DELIMITER //

CREATE FUNCTION obtener_TipoMascota_id(tipo_mascota varchar(45)) returns int

begin

declare tipoMascota_id int;

select idTipoMascota into tipoMascota_id from tipomascota
where  tipo = tipo_mascota limit 1;

return tipoMascota_id;

end//

DELIMITER ;


#	Obtiene el id de la raza de la mascota
DROP FUNCTION IF EXISTS obtener_RazaMascota_id;

DELIMITER //

CREATE FUNCTION obtener_RazaMascota_id(raza_mascota varchar(50) ,tipo_mascota int) returns int

begin

declare razaMascota_id int;

select idRazaMascota into razaMascota_id from razamascota
where  raza = raza_mascota and idTipoMascota = tipo_mascota limit 1;

return razaMascota_id;

end//

DELIMITER ;

#Inserción en la tabla DIRECCIONXReportePerdida
DROP PROCEDURE IF EXISTS proc_insertar_direccionXreportePerdida;

DELIMITER //

CREATE PROCEDURE proc_insertar_direccionXreportePerdida(
  pdireccion_id int,pReportePerdida_id int)

begin

INSERT INTO direccionxreporteperdida(direccionPerdida_id,mascotaPerdida_id)
VALUES(pdireccion_id,pReportePerdida_id);

end  //

DELIMITER ;


#Inserción en la tabla DIRECCIONXReporteEncontrada
DROP PROCEDURE IF EXISTS proc_insertar_direccionXreporteEncuentro;

DELIMITER //

CREATE PROCEDURE proc_insertar_direccionXreporteEncuentro(
  pdireccion_id int,pReporteEncuentro_id int)

begin

INSERT INTO direccionxreporteencuentro(direccionEncontrada,mascotaEncontrada)
VALUES(pdireccion_id,pReporteEncuentro_id);

end  //

DELIMITER ;

