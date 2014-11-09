
DROP VIEW IF EXISTS MascotasPerdidasView;
CREATE VIEW MascotasPerdidasView AS
SELECT idMascota, nombre_mascota, idTipoMascota, idRazaMascota, idColorMascota, idEstadoMascota from mascota
inner join mascotasperdidas
on mascota.idMascota = mascotasperdidas.idMascotaPerdida;


DROP VIEW IF EXISTS MascotasEncontradasView;
CREATE VIEW MascotasEncontradasView AS
SELECT idMascota, nombre_mascota, idTipoMascota, idRazaMascota, idColorMascota , idEstadoMascota from mascota
inner join mascotasencontradas
on mascota.idMascota = mascotasencontradas.idMascotaEncontrada;


select * from mascotasperdidasview
inner join mascotasencontradasview
on mascotasperdidasview.idTipoMascota = mascotasencontradasview.idtipomascota
where mascotasperdidasview.idColorMascota =  mascotasencontradasview.idColorMascota ;