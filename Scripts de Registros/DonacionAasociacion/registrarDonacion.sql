use petsrescue;

#Procedimiento para registrar una donación

DROP PROCEDURE IF EXISTS proc_registrar_donacion;

DELIMITER //

CREATE PROCEDURE proc_registrar_donacion(
   pid_donador int  , pid_asociacion int , pFechaDonacion date, pmonto int)

begin

INSERT INTO donacionesxasociacion(idDonador,idAsociacion,FechaDonacion,Monto)
VALUES(pid_donador, pid_asociacion,pFechaDonacion,pmonto);

end  //

DELIMITER ;

