use petsrescue;


DROP PROCEDURE IF EXISTS consultar_mascotaPerdida;

DELIMITER //

CREATE PROCEDURE consultar_mascotaPerdida ( ptipoMascota varchar(100),pnombreMascota varchar(100),pnumero_chip int,
prazaMascota varchar(45),pcolorMascota varchar(50), pFechaExtravio date)

begin

	select * from mascotasperdidas
    inner join mascota
    on mascotasperdidas.idMascota = mascota.idMascota
	inner join tipomascota
	on tipomascota.idTipoMascota = mascota.idTipoMascota
	inner join razamascota
	on  razamascota.idRazaMascota =  mascota.idRazaMascota
	inner join colormascota
	on colormascota.idColorMascota = mascota.idColorMascota
    where mascotasperdidas.fecha_perdida <= ifnull(pFechaExtravio, mascotasperdidas.fecha_perdida) and mascota.nombre_mascota like ifnull( '%'|| pnombreMascota ||'%', mascota.nombre_mascota) 
	and mascota.chipNumber_mascota = ifnull(pnumero_chip, mascota.chipNumber_mascota ) and tipomascota.tipo = ifnull(ptipoMascota, tipomascota.tipo )  and razamascota.raza like ifnull('%'|| prazaMascota ||'%', razamascota.raza) 
	and colormascota.Color = ifnull(pcolorMascota ,colormascota.Color)
    order by mascota.nombre_mascota;


end  //

DELIMITER ;


