use petsrescue;

#Se ordena por fecha(desde + reciente a más antiguo)
#Se puede consultar por dirección(direccionxreporteencuentro)


DROP PROCEDURE IF EXISTS consultar_mascotaPerdida;

DELIMITER //

CREATE PROCEDURE consultar_mascotaPerdida ( ptipoMascota varchar(100),pnombreMascota varchar(100),pnumero_chip int,
prazaMascota varchar(45),pcolorMascota varchar(50), pFechaExtravio date,pnombreProvincia varchar(45),pNombreCanton varchar(100))

begin

	select idDueno,fecha_perdida,recompensa,idFotoMascotaPerdida from mascotasperdidas
    inner join direccionxreporteperdida
    on direccionxreporteperdida.mascotaPerdida_id = mascotasperdidas.idMascotasPerdidas
    inner join direccion
    on direccion.idDireccion_pk = direccionxreporteperdida.direccionPerdida_id
	inner join provincia
	on provincia.idProvincia = direccion.provincia_id
    inner join canton
    on canton.idCanton = direccion.canton_id
	inner join mascota
    on mascotasperdidas.idMascota = mascota.idMascota
	inner join tipomascota
	on tipomascota.idTipoMascota = mascota.idTipoMascota
	inner join razamascota
	on  razamascota.idRazaMascota =  mascota.idRazaMascota
	inner join colormascota
	on colormascota.idColorMascota = mascota.idColorMascota
    where mascotasperdidas.fecha_perdida <= ifnull(pFechaExtravio, mascotasperdidas.fecha_perdida) and mascota.nombre_mascota like ifnull( concat('%', pnombreMascota ,'%'), mascota.nombre_mascota) 
	and mascota.chipNumber_mascota = ifnull(pnumero_chip, mascota.chipNumber_mascota ) and tipomascota.tipo = ifnull(ptipoMascota, tipomascota.tipo )  and razamascota.raza like ifnull(concat('%', prazaMascota ,'%'), razamascota.raza) 
	and colormascota.Color = ifnull(pcolorMascota ,colormascota.Color) and provincia.nombre_provincia = pnombreProvincia
    and canton.nombre_canton = pNombreCanton
    order by mascotasperdidas.fecha_perdida;


end  //

DELIMITER ;


