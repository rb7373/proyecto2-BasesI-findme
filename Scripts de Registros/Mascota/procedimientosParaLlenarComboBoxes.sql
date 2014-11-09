USE petsrescue;

# Selecciona todos los tipos de mascotas
DROP PROCEDURE IF EXISTS obtenerTiposMascota;

DELIMITER //
CREATE PROCEDURE obtenerTiposMascota()

begin
	SELECT tipo FROM tipoMascota;
end//
DELIMITER ;

#Selecciona todas las razas de mascotas
DROP PROCEDURE IF EXISTS obtenerRazasMascota;

DELIMITER //
CREATE PROCEDURE obtenerRazasMascota(ptipomascota varchar(50))

begin
	
	declare temp_tipoMascotaId int ;

	select obtener_TipoMascota_id(ptipomascota) into temp_tipoMascotaId;

	SELECT raza FROM razamascota 
	WHERE idTipoMascota = temp_tipoMascotaId;
end//
DELIMITER ;