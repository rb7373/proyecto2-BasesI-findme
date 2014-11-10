#Debe existir un reporte por rango de fecha de los montos de donaciones, 
#el donador y un total del monto donado en ese rango de fechas.

#El reporte se establecera por rango de un MES

DROP PROCEDURE IF EXISTS reporte_donaciones;

DELIMITER //

CREATE PROCEDURE reporte_donaciones(pFechaInicial date, pFechaFinal date)

begin

	select monthname(FechaDonacion),idDonador, sum(Monto) from donacionesxasociacion
   --  where FechaDonacion between (min(FechaDonacion)) and sysdate()
	group by month(FechaDonacion);


end  //

DELIMITER ;





