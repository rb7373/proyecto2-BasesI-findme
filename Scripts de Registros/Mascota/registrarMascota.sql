USE petsrescue;

#Procedimiento para insertar una mascota

DROP PROCEDURE IF EXISTS proc_registrar_mascota;

DELIMITER //

CREATE PROCEDURE proc_registrar_mascota(pnombre_mascota varchar(100), pchipNumber_mascota int, pidEstado_mascota int, 

pidRaza_mascota int, pidTamano_mascota int, pidTipo_mascota int, pidColor_mascota int)