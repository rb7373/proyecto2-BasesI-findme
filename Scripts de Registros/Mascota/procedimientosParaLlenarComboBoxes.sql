USE petsrescue;

# Selecciona todos los tipos de mascotas
DROP PROCEDURE IF EXISTS obtenerTiposMascota;

DELIMITER //
CREATE PROCEDURE obtenerTiposMascota()

begin
	SELECT tipo, idTipoMascota FROM tipoMascota;
end//
DELIMITER ;

#Selecciona todas las razas de mascotas
DROP PROCEDURE IF EXISTS obtenerRazasMascota;

DELIMITER //
CREATE PROCEDURE obtenerRazasMascota(temp_tipoMascotaId int )

begin
	
	SELECT raza, idRazaMascota FROM razamascota 
	WHERE idTipoMascota = temp_tipoMascotaId;
end//
DELIMITER ;