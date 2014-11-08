DROP FUNCTION IF EXISTS obtener_persona_id;

DELIMITER //

CREATE FUNCTION obtener_persona_id(pemail_persona varchar(45)) returns int

begin

declare resultado int;

select idPersona into resultado from persona 
where email_Persona = pemail_persona;

return resultado;

end//

DELIMITER ;

#Funciones para obtener ID de PROVINCIA

DROP FUNCTION IF EXISTS obtener_provincia_id;

DELIMITER //

CREATE FUNCTION obtener_provincia_id(pnombre_provincia varchar(45)) returns int

begin

declare id_provincia int;

select idProvincia into id_provincia from provincia 
where nombre_provincia = pnombre_provincia limit 1;

return id_provincia;

end//

DELIMITER ;

#Funciones para obtener ID de Canton

DROP FUNCTION IF EXISTS obtener_canton_id;

DELIMITER //

CREATE FUNCTION obtener_canton_id(pnombre_canton varchar(100)) returns int

begin

declare id_canton int;

select idCanton into id_canton from canton 
where nombre_canton = pnombre_canton limit 1;

return id_canton;

end//

DELIMITER ;

#Funciones para obtener ID de distrito

DROP FUNCTION IF EXISTS  obtener_distrito_id;

DELIMITER //

CREATE FUNCTION obtener_distrito_id(pnombre_distrito varchar(100)) returns int

begin

declare id_distrito int;

select idDistrito into id_distrito from distrito 
where nombre_distrito = pnombre_distrito limit 1;

return id_distrito;

end//

DELIMITER ;


