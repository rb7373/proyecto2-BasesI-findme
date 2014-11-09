use petsrescue;
#Se utilizara idRescatador para mostrar información de la persona

DROP PROCEDURE IF EXISTS consultar_mascotaEncontrada;

DELIMITER //

CREATE PROCEDURE consultar_mascotaEncontrada( ptipoMascota varchar(100),pnombreMascota varchar(100),pnumero_chip int,
prazaMascota varchar(45),pcolorMascota varchar(50), pFechaEncuentro date,
pnombreProvincia varchar(45),pNombreCanton varchar(100))

begin

	select idMascota,fecha_encuentro,idRescatador,idFotoMascotaEncontrada,Observaciones from mascotasencontradas
    inner join direccionxreporteencuentro
    on direccionxreporteencuentro.mascotaEncontrada_id = mascotasencontradas.idMascotasEncontradas
    inner join direccion
    on direccion.idDireccion_pk = direccionxreporteencuentro.direccionEncuentro_id
	inner join provincia
	on provincia.idProvincia = direccion.provincia_id
    inner join canton
    on canton.idCanton = direccion.canton_id
    inner join mascota
    on mascotasencontradas.idMascotas = mascota.idMascota
	inner join tipomascota
	on tipomascota.idTipoMascota = mascota.idTipoMascota
	inner join razamascota
	on  razamascota.idRazaMascota =  mascota.idRazaMascota
	inner join colormascota
	on colormascota.idColorMascota = mascota.idColorMascota
    where mascotasencontradas.fecha_encuentro <= ifnull( pFechaEncuentro,mascotasencontradas.fecha_encuentro) and mascota.nombre_mascota like ifnull( concat('%',pnombreMascota ,'%'), mascota.nombre_mascota) 
	and mascota.chipNumber_mascota = ifnull(pnumero_chip, mascota.chipNumber_mascota ) and tipomascota.tipo = ifnull(ptipoMascota, tipomascota.tipo )  and razamascota.raza like ifnull(concat('%', prazaMascota ,'%'), razamascota.raza) 
	and colormascota.Color = ifnull(pcolorMascota ,colormascota.Color) and provincia.nombre_provincia = pnombreProvincia
    and canton.nombre_canton = pNombreCanton
    order by mascotasencontradas.fecha_encuentro;


end  //

DELIMITER ;
