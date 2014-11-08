USE petsrescue;

#Procedimientos necesarios para el registro de una casa cuna



#Inserción en tabla casacuna

DROP PROCEDURE IF EXISTS proc_insertar_CasaCuna;

DELIMITER //

CREATE PROCEDURE proc_insertar_CasaCuna(
   ppersona_id int , idTamannoMascota int)

begin

INSERT INTO casacuna(idPersona,idTamanoMascota)
VALUES( ppersona_id ,idTamannoMascota);

end  //

DELIMITER ;

#Inserción en tabla tipomascotaxcasacuna

DROP PROCEDURE IF EXISTS proc_insertar_tipomascotaxcasacuna;

DELIMITER //

CREATE PROCEDURE proc_insertar_tipomascotaxcasacuna(
   pcasacuna_id int , ptipoMascota_id int)

begin

INSERT INTO tipomascotaxcasacuna(casaCuna_id,tipoMascota_id)
VALUES( pcasacuna_id, ptipoMascota_id);

end  //

DELIMITER ;

#insertar en tabla donacionesxcasacuna

DROP PROCEDURE IF EXISTS proc_insertar_donacionesxcasacuna;

DELIMITER //

CREATE PROCEDURE proc_insertar_donacionesxcasacuna(
   pcasacuna_id int , palimento int, pvacunas int,ptransporte int,pdinero int)

begin

INSERT INTO donacionesxcasacuna(casacuna_donacion_id,Alimento,Vacunas,Transporte,Dinero)
VALUES(pcasacuna_id, palimento , pvacunas , ptransporte,pdinero);

end  //

DELIMITER ;
