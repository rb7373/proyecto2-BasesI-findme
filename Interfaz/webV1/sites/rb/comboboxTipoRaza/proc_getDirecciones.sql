USE petsrescue;

DROP PROCEDURE IF EXISTS proc_getProvincias;

DELIMITER //
CREATE PROCEDURE proc_getProvincias()

begin
	SELECT idProvincia, nombre_provincia FROM provincia;
end//
DELIMITER ;


USE petsrescue;

DROP PROCEDURE IF EXISTS proc_getCanton;

DELIMITER //
CREATE PROCEDURE proc_getCanton(id_provincia int)

begin
	select idCanton, nombre_canton from canton where idProvincia = id_provincia;
end//
DELIMITER ;