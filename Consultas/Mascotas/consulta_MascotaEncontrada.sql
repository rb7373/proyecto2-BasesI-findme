use petsrescue;


DROP PROCEDURE IF EXISTS consultar_mascotaEncontrada;

DELIMITER //

CREATE PROCEDURE consultar_mascotaEncontrada( ptipoMascota varchar(100),pnombreMascota varchar(100),pnumero_chip int,
prazaMascota varchar(45),pcolorMascota varchar(50), pFechaEncuentro date)

begin

	select * from mascotasencontradas
    inner join mascota
    on mascotasencontradas.idMascota = mascota.idMascota
	inner join tipomascota
	on tipomascota.idTipoMascota = mascota.idTipoMascota
	inner join razamascota
	on  razamascota.idRazaMascota =  mascota.idRazaMascota
	inner join colormascota
	on colormascota.idColorMascota = mascota.idColorMascota
    where mascotasencontradas.fecha_encuentro <= ifnull( pFechaEncuentro,mascotasencontradas.fecha_encuentro) and mascota.nombre_mascota like ifnull( concat('%',pnombreMascota ,'%'), mascota.nombre_mascota) 
	and mascota.chipNumber_mascota = ifnull(pnumero_chip, mascota.chipNumber_mascota ) and tipomascota.tipo = ifnull(ptipoMascota, tipomascota.tipo )  and razamascota.raza like ifnull(concat('%', prazaMascota ,'%'), razamascota.raza) 
	and colormascota.Color = ifnull(pcolorMascota ,colormascota.Color)
    order by mascota.nombre_mascota;


end  //

DELIMITER ;
