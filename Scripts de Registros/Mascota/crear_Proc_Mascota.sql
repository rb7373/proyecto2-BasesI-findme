
USE petsrescue;

#Insertar en el catálogo Estado Mascota

DROP PROCEDURE IF EXISTS proc_insertar_estado_mascota;

DELIMITER //
CREATE PROCEDURE proc_insertar_estado_mascota(
  in estado_mascota varchar(45)
)

begin

INSERT INTO EstadoMascota(
  estado
)
VALUES(
  estado_mascota
);
end//
DELIMITER ;

#Insertar en el catálogo Tamaño Mascota
DROP PROCEDURE IF EXISTS proc_insertar_tamano_mascota;

DELIMITER //
CREATE PROCEDURE proc_insertar_tamano_mascota(
  in tamano_mascota varchar(45)
)

begin

INSERT INTO TamanoMascota(
  tamano
)
VALUES(
  tamano_mascota
);
end//
DELIMITER ;

#Insertar en el catálogo Color Mascota
DROP PROCEDURE IF EXISTS proc_insertar_color_mascota;

DELIMITER //
CREATE PROCEDURE proc_insertar_color_mascota(
  in color_mascota varchar(45)
)

begin

INSERT INTO ColorMascota(
  Color
)
VALUES(
  color_mascota
);
end//
DELIMITER ;

#Insertar en el catálogo Tipo Mascota
DROP PROCEDURE IF EXISTS proc_insertar_tipo_mascota;

DELIMITER //
CREATE PROCEDURE proc_insertar_tipo_mascota(
  in tipo_mascota varchar(45)
)

begin

INSERT INTO TipoMascota(
  tipo
)
VALUES(
  tipo_mascota
);
end//
DELIMITER ;

#Insertar en el catálogo Raza Mascota
DROP PROCEDURE IF EXISTS proc_insertar_raza_mascota;

DELIMITER //
CREATE PROCEDURE proc_insertar_raza_mascota(
  in raza_mascota varchar(45), tipo_mascota int
)

begin

INSERT INTO RazaMascota(
  raza, idTipoMascota 
)
VALUES(
  raza_mascota, tipo_mascota
);
end//
DELIMITER ;

#Registrar una mascota
DROP PROCEDURE IF EXISTS proc_insertar_mascota;

DELIMITER //
CREATE PROCEDURE proc_insertar_mascota(
  in nombreMascota varchar(100) , numeroChip_mascota int, estado_mascota int, 
	raza_mascota int, tamano_mascota int, tipo_mascota int, color_mascota int
)

begin

INSERT INTO Mascota(
  nombre_mascota, chipNumber_mascota, idEstadoMascota, idRazaMascota, idTamanoMascota,idTipoMascota, idcolormascota 
)
VALUES(
  nombreMascota , numeroChip_mascota , estado_mascota , 
	raza_mascota , tamano_mascota , tipo_mascota, color_mascota 
);
end//
DELIMITER ;

#Registrar una mascota perdida
DROP PROCEDURE IF EXISTS proc_insertar_mascota_perdida;

DELIMITER //
CREATE PROCEDURE proc_insertar_mascota_perdida( pidMascota int, pidDueno int,  
pFechaPerdida date, pRecompensa int, pObservaciones varchar(2000)

)

begin

INSERT INTO mascotasperdidas(
  idMascota, idDueno, fecha_perdida, recompensa, Observaciones
)
VALUES(
pidMascota, pidDueno, 
pFechaPerdida, pRecompensa, pObservaciones
 
);
end//
DELIMITER ;

#Registrar una mascota encontradas
DROP PROCEDURE IF EXISTS proc_insertar_mascota_encontrada;

DELIMITER //
CREATE PROCEDURE proc_insertar_mascota_encontrada( pidMascota int, pidRescatador int,  
pFechaEncontrada date, pObservaciones varchar(2000)
)

begin

INSERT INTO mascotasencontradas(
  idMascota, idRescatador, fecha_encuentro,  Observaciones
)
VALUES(
pidMascota, pidRescatador,pFechaEncontrada, 
  pObservaciones
 
);
end//
DELIMITER ;