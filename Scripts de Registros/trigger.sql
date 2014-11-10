-- -----------------------------------------------------
-- Trigger insertar persona
-- -----------------------------------------------------
DELIMITER $$
CREATE TRIGGER before_persona 
    BEFORE INSERT ON persona
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla)
     values (SYSDATE(),NOM_TABLA = 'PERSONA');
END$$
DELIMITER ;


-- -----------------------------------------------------
-- Trigger insertar mascota
-- -----------------------------------------------------
DELIMITER $$
CREATE TRIGGER before_mascota 
    BEFORE INSERT ON mascota
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla)
     values (SYSDATE(),NOM_TABLA = 'PERSONA');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger insertar donacion
-- -----------------------------------------------------
DELIMITER $$
CREATE TRIGGER before_donacion 
    BEFORE INSERT ON donacionesxasociacion
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, valor_anterior, valor_actual, nom_campo)
     values (SYSDATE(),NOM_TABLA = 'Donaciones por Asociacion', old.monto , new.monto, column_name);
END$$
DELIMITER ;


-- -----------------------------------------------------
-- Trigger insertar donacion
-- -----------------------------------------------------
DELIMITER $$
CREATE TRIGGER before_prueba 
    BEFORE INSERT ON messages
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_campo)
     values (SYSDATE(),table_name,  column_name);
END$$
DELIMITER ;