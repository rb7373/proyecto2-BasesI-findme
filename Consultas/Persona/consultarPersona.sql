use petsrescue;

DROP PROCEDURE IF EXISTS consultar_persona;

DELIMITER //

CREATE PROCEDURE consultar_persona( pnombre_persona varchar(100), papellido varchar(100), p_email varchar(45))

begin
    #Se debe agregar columna calificacion a la tabla y desplegarla también

	select * from persona
    where nombre_Persona like ifnull( concat('%', pnombre_persona ,'%'), nombre_Persona) 
	and pApellido_Persona like ifnull( concat('%', papellido ,'%'), pApellido_Persona)  and email_Persona = ifnull(p_email , email_Persona )
    order by nombre_persona;

end  //

DELIMITER ;



