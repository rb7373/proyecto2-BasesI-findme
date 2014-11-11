-- -----------------------------------------------------
-- TABLA PERSONA
-- Trigger insertar persona
-- -----------------------------------------------------
drop trigger if exists before_persona;

DELIMITER $$
CREATE TRIGGER before_persona 
    BEFORE INSERT ON persona
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'PERSONA', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger update persona
-- -----------------------------------------------------
drop trigger if exists before_UpdatePersona;

DELIMITER $$
CREATE TRIGGER before_UpdatePersona
    BEFORE UPDATE ON persona
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'PERSONA', 'Update', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete persona
-- -----------------------------------------------------
drop trigger if exists before_DeletePersona;

DELIMITER $$
CREATE TRIGGER before_DeletePersona
    BEFORE DELETE ON persona
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'PERSONA', 'Delete', SYSDATE());
END$$
DELIMITER ;


-- -----------------------------------------------------
-- TABLA DIRECCIONXREPORTEENCUENTRO
-- Trigger insertar direccionxreporteencuentro
-- -----------------------------------------------------
drop trigger if exists before_direccionXreporteEncuentro;

DELIMITER $$
CREATE TRIGGER before_direccionXreporteEncuentro 
    BEFORE INSERT ON direccionxreporteencuentro
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Dirección por Reporte Encuentro', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete direccionxreporteencuentro
-- -----------------------------------------------------
drop trigger if exists before_DeletedireccionXreporteEncuentro;

DELIMITER $$
CREATE TRIGGER before_DeletedireccionXreporteEncuentro
    BEFORE DELETE ON direccionxreporteencuentro
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Dirección por Reporte Encuentro', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA ADOPCIONES
-- Trigger insertar adopcion
-- -----------------------------------------------------
drop trigger if exists before_adopcion;

DELIMITER $$
CREATE TRIGGER before_adopcion 
    BEFORE INSERT ON adopciones
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Adopciones', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete adopcion
-- -----------------------------------------------------
drop trigger if exists before_DeleteAdopcion;

DELIMITER $$
CREATE TRIGGER before_DeleteAdopcion
    BEFORE DELETE ON adopciones
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Adopciones', 'Delete', SYSDATE());
END$$
DELIMITER ;


-- -----------------------------------------------------
-- TABLA DISTRITO
-- Trigger insertar distrito
-- -----------------------------------------------------
drop trigger if exists before_distrito;

DELIMITER $$
CREATE TRIGGER before_distrito 
    BEFORE INSERT ON distrito
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Distrito', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger update distrito
-- -----------------------------------------------------
drop trigger if exists before_UpdateDistrito;

DELIMITER $$
CREATE TRIGGER before_UpdateDistrito
    BEFORE UPDATE ON distrito
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Distrito', 'Update', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete distrito
-- -----------------------------------------------------
drop trigger if exists before_DeleteDistrito;

DELIMITER $$
CREATE TRIGGER before_DeleteDistrito
    BEFORE DELETE ON distrito
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Distrito', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA FOTO
-- Trigger insertar foto
-- -----------------------------------------------------
drop trigger if exists before_foto;

DELIMITER $$
CREATE TRIGGER before_foto 
    BEFORE INSERT ON foto
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Foto', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete foto
-- -----------------------------------------------------
drop trigger if exists before_DeleteFoto;

DELIMITER $$
CREATE TRIGGER before_DeleteFoto
    BEFORE DELETE ON foto
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Foto', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA RAZAMASCOTA
-- Trigger insertar raza mascota
-- -----------------------------------------------------
drop trigger if exists before_razaMascota;

DELIMITER $$
CREATE TRIGGER before_razaMascota
    BEFORE INSERT ON razamascota
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Raza Mascota', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger update raza mascota
-- -----------------------------------------------------
drop trigger if exists before_UpdateRazaMascota;

DELIMITER $$
CREATE TRIGGER before_UpdateRazaMascota
    BEFORE UPDATE ON razamascota
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Raza Mascota', 'Update', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete raza mascota
-- -----------------------------------------------------
drop trigger if exists before_DeleteRazaMascota;

DELIMITER $$
CREATE TRIGGER before_DeleteRazaMascota
    BEFORE DELETE ON razamascota
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Raza Mascota', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA DIRECCION
-- Trigger insertar direccion
-- -----------------------------------------------------
drop trigger if exists before_direccion;

DELIMITER $$
CREATE TRIGGER before_direccion
    BEFORE INSERT ON direccion
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Dirección', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete direccion
-- -----------------------------------------------------
drop trigger if exists before_DeleteDireccion;

DELIMITER $$
CREATE TRIGGER before_DeleteDireccion
    BEFORE DELETE ON direccion
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Dirección', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA BARRIO
-- Trigger insertar barrio
-- -----------------------------------------------------
drop trigger if exists before_barrio;

DELIMITER $$
CREATE TRIGGER before_barrio
    BEFORE INSERT ON barrio
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Barrio', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger update barrio
-- -----------------------------------------------------
drop trigger if exists before_UpdateBarrio;

DELIMITER $$
CREATE TRIGGER before_UpdateBarrio
    BEFORE UPDATE ON barrio
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Barrio', 'Update', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete barrio
-- -----------------------------------------------------
drop trigger if exists before_DeleteBarrio;

DELIMITER $$
CREATE TRIGGER before_DeleteBarrio
    BEFORE DELETE ON barrio
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Barrio', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA TIPOMASCOTA
-- Trigger insertar tipo mascota
-- -----------------------------------------------------
drop trigger if exists before_tipoMascota;

DELIMITER $$
CREATE TRIGGER before_tipoMascota
    BEFORE INSERT ON tipomascota
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Tipo Mascota', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger update tipo mascota
-- -----------------------------------------------------
drop trigger if exists before_UpdateTipoMascota;

DELIMITER $$
CREATE TRIGGER before_UpdateTipoMascota
    BEFORE UPDATE ON tipomascota
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Tipo Mascota', 'Update', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete tipo mascota
-- -----------------------------------------------------
drop trigger if exists before_DeleteTipoMascota;

DELIMITER $$
CREATE TRIGGER before_DeleteTipoMascota
    BEFORE DELETE ON tipomascota
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Tipo Mascota', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA CASACUNA
-- Trigger insertar casa cuna
-- -----------------------------------------------------
drop trigger if exists before_casaCuna;

DELIMITER $$
CREATE TRIGGER before_casaCuna
    BEFORE INSERT ON casacuna
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Casa Cuna', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete casa cuna
-- -----------------------------------------------------
drop trigger if exists before_DeleteCasaCuna;

DELIMITER $$
CREATE TRIGGER before_DeleteCasaCuna
    BEFORE DELETE ON casacuna
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Casa Cuna', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA DIRECCIONXREPORTEPERDIDA
-- Trigger insertar direccionxreporteperdida
-- -----------------------------------------------------
drop trigger if exists before_direccionXreportePerdida;

DELIMITER $$
CREATE TRIGGER before_direccionXreportePerdida
    BEFORE INSERT ON direccionxreporteperdida
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Dirección por Reporte Perdida', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete direccionxreporteperdida
-- -----------------------------------------------------
drop trigger if exists before_DeleteDireccionXreportePerdida;

DELIMITER $$
CREATE TRIGGER before_DeleteDireccionXreportePerdida
    BEFORE DELETE ON direccionxreporteperdida
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Dirección por Reporte Perdida', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA DONACIONESXCASACUNA
-- Trigger insertar donacion por casa cuna
-- -----------------------------------------------------
drop trigger if exists before_donacionesXcasaCuna;

DELIMITER $$
CREATE TRIGGER before_donacionesXcasaCuna
    BEFORE INSERT ON donacionesxcasacuna
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Donaciones por Casa Cuna', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete donacionesXcasacuna
-- -----------------------------------------------------
drop trigger if exists before_DeleteDonacionesXcasaCuna;

DELIMITER $$
CREATE TRIGGER before_DeleteDonacionesXcasaCuna
    BEFORE DELETE ON donacionesxcasacuna
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Donaciones por Casa Cuna', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA GENERO
-- Trigger insertar genero
-- -----------------------------------------------------
drop trigger if exists before_genero;

DELIMITER $$
CREATE TRIGGER before_genero 
    BEFORE INSERT ON genero
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Género', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger update genero
-- -----------------------------------------------------
drop trigger if exists before_UpdateGenero;

DELIMITER $$
CREATE TRIGGER before_UpdateGenero
    BEFORE UPDATE ON genero
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Género', 'Update', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete genero
-- -----------------------------------------------------
drop trigger if exists before_DeleteGenero;

DELIMITER $$
CREATE TRIGGER before_DeleteGenero
    BEFORE DELETE ON genero
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Género', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA CANTON
-- Trigger insertar canton
-- -----------------------------------------------------
drop trigger if exists before_canton;

DELIMITER $$
CREATE TRIGGER before_canton 
    BEFORE INSERT ON canton
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Cantón', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger update canton
-- -----------------------------------------------------
drop trigger if exists before_UpdateCanton;

DELIMITER $$
CREATE TRIGGER before_UpdateCanton
    BEFORE UPDATE ON canton
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Cantón', 'Update', SYSDATE());
END$$
DELIMITER ;


-- -----------------------------------------------------
-- Trigger delete canton
-- -----------------------------------------------------
drop trigger if exists before_DeleteCanton;

DELIMITER $$
CREATE TRIGGER before_DeleteCanton
    BEFORE DELETE ON canton
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Cantón', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA DIRECCIONXPERSONA
-- Trigger insertar direccionXpersona
-- -----------------------------------------------------
drop trigger if exists before_direccionXpersona;

DELIMITER $$
CREATE TRIGGER before_direccionXpersona
    BEFORE INSERT ON direccionxpersona
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Dirección por Persona', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete direccionXpersona
-- -----------------------------------------------------
drop trigger if exists before_DeleteDireccionXpersona;

DELIMITER $$
CREATE TRIGGER before_DeleteDireccionXpersona
    BEFORE DELETE ON direccionxpersona
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Dirección por persona', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA ASOCIACIONES
-- Trigger insertar asociacion
-- -----------------------------------------------------
drop trigger if exists before_asociacion;

DELIMITER $$
CREATE TRIGGER before_asociacion
    BEFORE INSERT ON asociaciones
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Asociaciones', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger update asociacion
-- -----------------------------------------------------
drop trigger if exists before_UpdateAsociacion;

DELIMITER $$
CREATE TRIGGER before_UpdateAsociacion
    BEFORE UPDATE ON asociaciones
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Asociaciones', 'Update', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete asociacion
-- -----------------------------------------------------
drop trigger if exists before_DeleteAsociacion;

DELIMITER $$
CREATE TRIGGER before_DeleteAsociacion
    BEFORE DELETE ON asociaciones
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Asociaciones', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA MASCOTASENCONTRADAS
-- Trigger insertar mascotas encontradas
-- -----------------------------------------------------
drop trigger if exists before_mascotasEncontradas;

DELIMITER $$
CREATE TRIGGER before_mascotasEncontradas
    BEFORE INSERT ON mascotasencontradas
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Mascotas Encontradas', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger update mascotas encontradas
-- -----------------------------------------------------
drop trigger if exists before_UpdateMascotaEncontrada;

DELIMITER $$
CREATE TRIGGER before_UpdateMascotaEncontrada
    BEFORE UPDATE ON mascotasencontradas
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Mascotas Encontradas', 'Update', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete mascotas encontradas
-- -----------------------------------------------------
drop trigger if exists before_DeleteMascotasEncontradas;

DELIMITER $$
CREATE TRIGGER before_DeleteMascotasEncontradas
    BEFORE DELETE ON mascotasencontradas
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Mascotas Encontradas', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA TAMANOMASCOTA
-- Trigger insertar tamaño mascota
-- -----------------------------------------------------
drop trigger if exists before_tamanoMascota;

DELIMITER $$
CREATE TRIGGER before_tamanoMascota
    BEFORE INSERT ON tamanomascota
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Tamaño Mascota', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger update tamaño mascota
-- -----------------------------------------------------
drop trigger if exists before_UpdateTamanoMascota;

DELIMITER $$
CREATE TRIGGER before_UpdateTamanoMascota
    BEFORE UPDATE ON tamanomascota
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Tamaño Mascota', 'Update', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete tamaño mascota
-- -----------------------------------------------------
drop trigger if exists before_DeleteTamanoMascota;

DELIMITER $$
CREATE TRIGGER before_DeleteTamanoMascota
    BEFORE DELETE ON tamanomascota
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Tamaño Mascota', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA TIPOMASCOTAXCASACUNA
-- Trigger insertar tipo mascota por casa cuna
-- -----------------------------------------------------
drop trigger if exists before_tipoMascotaXcasaCuna;

DELIMITER $$
CREATE TRIGGER before_tipoMascotaXcasaCuna
    BEFORE INSERT ON tipomascotaxcasacuna
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Tipo Mascota por Casa Cuna', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger update tipo mascota por casa cuna
-- -----------------------------------------------------
drop trigger if exists before_UpdateTipoMascotaXcasaCuna;

DELIMITER $$
CREATE TRIGGER before_UpdateTipoMascotaXcasaCuna
    BEFORE UPDATE ON tipomascotaxcasacuna
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Tipo Mascota por Casa Cuna', 'Update', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete tipo mascota por casa cuna
-- -----------------------------------------------------
drop trigger if exists before_DeleteTipoMascotaXcasaCuna;

DELIMITER $$
CREATE TRIGGER before_DeleteTipoMascotaXcasaCuna
    BEFORE DELETE ON tipomascotaxcasacuna
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Tipo Mascota por Casa Cuna', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA TIPOFOTO
-- Trigger insertar tipoFoto
-- -----------------------------------------------------
drop trigger if exists before_tipoFoto;

DELIMITER $$
CREATE TRIGGER before_tipoFoto
    BEFORE INSERT ON tipofoto
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Tipo Foto', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger update tipo foto
-- -----------------------------------------------------
drop trigger if exists before_UpdateTipoFoto;

DELIMITER $$
CREATE TRIGGER before_UpdateTipoFoto
    BEFORE UPDATE ON tipofoto
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Tipo Foto', 'Update', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete tipo foto
-- -----------------------------------------------------
drop trigger if exists before_DeleteTipoFoto;

DELIMITER $$
CREATE TRIGGER before_DeleteTipoFoto
    BEFORE DELETE ON tipofoto
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Tipo Foto', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA DONACIONESXASOCIACION
-- Trigger insertar donaciones por asociacion
-- -----------------------------------------------------
drop trigger if exists before_donacionesXasociacion;

DELIMITER $$
CREATE TRIGGER before_donacionesXasociacion
    BEFORE INSERT ON donacionesxasociacion
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Donaciones por Asociación', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger update donaciones por asociacion
-- -----------------------------------------------------
drop trigger if exists before_UpdateDonacionesXasociacion;

DELIMITER $$
CREATE TRIGGER before_UpdateDonacionesXasociacion
    BEFORE UPDATE ON donacionesxasociacion
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Donaciones por Asociación', 'Update', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete donaciones por asociacion
-- -----------------------------------------------------
drop trigger if exists before_DeleteDonacionesXasociacion;

DELIMITER $$
CREATE TRIGGER before_DeleteDonacionesXasociacion
    BEFORE DELETE ON donacionesxasociacion
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Donaciones por Asociación', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA MASCOTASPERDIDAS
-- Trigger insertar mascotas perdidas
-- -----------------------------------------------------
drop trigger if exists before_mascotasPerdidas;

DELIMITER $$
CREATE TRIGGER before_mascotasPerdidas
    BEFORE INSERT ON mascotasperdidas
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Mascotas Perdidas', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger update mascotas perdidas
-- -----------------------------------------------------
drop trigger if exists before_UpdateMascotasPerdidas;

DELIMITER $$
CREATE TRIGGER before_UpdateMascotasPerdidas
    BEFORE UPDATE ON mascotasperdidas
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Mascotas Perdidas', 'Update', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete mascotas perdidas
-- -----------------------------------------------------
drop trigger if exists before_DeleteMascotasPerdidas;

DELIMITER $$
CREATE TRIGGER before_DeleteMascotasPerdidas
    BEFORE DELETE ON mascotasperdidas
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Mascotas Perdidas', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA TIPOTELEFONO
-- Trigger insertar tipoTelefono
-- -----------------------------------------------------
drop trigger if exists before_tipoTelefono;

DELIMITER $$
CREATE TRIGGER before_tipoTelefono
    BEFORE INSERT ON tipotelefono
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Tipo Télefono', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger update tipo telefono
-- -----------------------------------------------------
drop trigger if exists before_UpdateTipoTelefono;

DELIMITER $$
CREATE TRIGGER before_UpdateTipoTelefono
    BEFORE UPDATE ON tipotelefono
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Tipo Télefono', 'Update', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete tipo telefono
-- -----------------------------------------------------
drop trigger if exists before_DeleteTipoTelefono;

DELIMITER $$
CREATE TRIGGER before_DeleteTipoTelefono
    BEFORE DELETE ON tipotelefono
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Tipo Télefono', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA DIRECCIONXASOCIACION
-- Trigger insertar direccion por asociacion
-- -----------------------------------------------------
drop trigger if exists before_direccionXasociacion;

DELIMITER $$
CREATE TRIGGER before_direccionXasociacion
    BEFORE INSERT ON direccionxasociacion
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Dirección por Asociación', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger update direccion por asociacion
-- -----------------------------------------------------
drop trigger if exists before_UpdateDireccionXasociacion;

DELIMITER $$
CREATE TRIGGER before_UpdateDireccionXasociacion
    BEFORE UPDATE ON direccionxasociacion
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Dirección por Asociación', 'Update', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete dirección por asociación
-- -----------------------------------------------------
drop trigger if exists before_DeleteDireccionXasociacion;

DELIMITER $$
CREATE TRIGGER before_DeleteDireccionXAsociacion
    BEFORE DELETE ON direccionxasociacion
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Dirección por Asociación', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA TELEFONOXPERSONA
-- Trigger insertar telefono por persona
-- -----------------------------------------------------
drop trigger if exists before_telefonoXpersona;

DELIMITER $$
CREATE TRIGGER before_telefonoXpersona
    BEFORE INSERT ON telefonoxpersona
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Télefono por Persona', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger update telefono por persona
-- -----------------------------------------------------
drop trigger if exists before_UpdateTelefonoXpersona;

DELIMITER $$
CREATE TRIGGER before_UpdateTelefonoXpersona
    BEFORE UPDATE ON telefonoxpersona
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Télefono por Persona', 'Update', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete telefono por persona
-- -----------------------------------------------------
drop trigger if exists before_DeleteTelefonoXPersona;

DELIMITER $$
CREATE TRIGGER before_DeleteTelefonoXPersona
    BEFORE DELETE ON telefonoxpersona
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Télefono por Persona', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA USUARIO
-- Trigger insertar usuario
-- -----------------------------------------------------
drop trigger if exists before_usuario;

DELIMITER $$
CREATE TRIGGER before_usuario
    BEFORE INSERT ON usuario
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Usuario', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger update usuario
-- -----------------------------------------------------
drop trigger if exists before_UpdateUsuario;

DELIMITER $$
CREATE TRIGGER before_UpdateUsuario
    BEFORE UPDATE ON usuario
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Usuario', 'Update', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete usuario
-- -----------------------------------------------------
drop trigger if exists before_DeleteUsuario;

DELIMITER $$
CREATE TRIGGER before_DeleteUsuario
    BEFORE DELETE ON usuario
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Usuario', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA PROVINCIA
-- Trigger insertar PROVINCIA
-- -----------------------------------------------------
drop trigger if exists before_provincia;

DELIMITER $$
CREATE TRIGGER before_provincia
    BEFORE INSERT ON provincia
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Provincia', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger update provincia
-- -----------------------------------------------------
drop trigger if exists before_UpdateProvincia;

DELIMITER $$
CREATE TRIGGER before_UpdateProvincia
    BEFORE UPDATE ON provincia
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Provincia', 'Update', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete provincia
-- -----------------------------------------------------
drop trigger if exists before_DeleteProvincia;

DELIMITER $$
CREATE TRIGGER before_DeleteProvincia
    BEFORE DELETE ON provincia
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Provincia', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA MASCOTA
-- Trigger insertar mascota
-- -----------------------------------------------------
drop trigger if exists before_mascota;

DELIMITER $$
CREATE TRIGGER before_mascota 
    BEFORE INSERT ON mascota
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Mascota', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger update mascota
-- -----------------------------------------------------
drop trigger if exists before_UpdateMascota;

DELIMITER $$
CREATE TRIGGER before_UpdateMascota
    BEFORE UPDATE ON mascota
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Mascota', 'Update', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete mascota
-- -----------------------------------------------------
drop trigger if exists before_DeleteMascota;

DELIMITER $$
CREATE TRIGGER before_DeleteMascota
    BEFORE DELETE ON mascota
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Mascota', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA COLORMASCOTA
-- Trigger insertar color mascota
-- -----------------------------------------------------
drop trigger if exists before_colorMascota;

DELIMITER $$
CREATE TRIGGER before_colorMascota
    BEFORE INSERT ON colormascota
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Color Mascota', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger update color mascota
-- -----------------------------------------------------
drop trigger if exists before_UpdateColorMascota;

DELIMITER $$
CREATE TRIGGER before_UpdateColorMascota
    BEFORE UPDATE ON colormascota
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Color Mascota', 'Update', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete color mascota
-- -----------------------------------------------------
drop trigger if exists before_DeleteColorMascota;

DELIMITER $$
CREATE TRIGGER before_DeleteColorMascota
    BEFORE DELETE ON colormascota
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Color Mascota', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA ESTADOMASCOTA
-- Trigger insertar estadoMAscota
-- -----------------------------------------------------
drop trigger if exists before_estadoMascota;

DELIMITER $$
CREATE TRIGGER before_estadoMascota
    BEFORE INSERT ON estadomascota
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Estado Mascota', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger update estado mascota
-- -----------------------------------------------------
drop trigger if exists before_UpdateEstadoMascotas;

DELIMITER $$
CREATE TRIGGER before_UpdateEstadoMascotas
    BEFORE UPDATE ON estadomascota
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Estado Mascota', 'Update', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete estado mascota
-- -----------------------------------------------------
drop trigger if exists before_DeleteEstadoMascota;

DELIMITER $$
CREATE TRIGGER before_DeleteEstadoMascota
    BEFORE DELETE ON estadomascota
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Estado Mascota', 'Delete', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TABLA TIPOUSUARIO
-- Trigger insertar tipo usuario
-- -----------------------------------------------------
drop trigger if exists before_tipoUsuario;

DELIMITER $$
CREATE TRIGGER before_tipoUsuario
    BEFORE INSERT ON tipousuario
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Tipo Usuario', 'Insert');
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger update tipo usuario
-- -----------------------------------------------------
drop trigger if exists before_UpdateTipoUsuario;

DELIMITER $$
CREATE TRIGGER before_UpdateTipoUsuario
    BEFORE UPDATE ON tipousuario
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Tipo Usuario', 'Update', SYSDATE());
END$$
DELIMITER ;

-- -----------------------------------------------------
-- Trigger delete tipo usuario
-- -----------------------------------------------------
drop trigger if exists before_DeleteTipoUsuario;

DELIMITER $$
CREATE TRIGGER before_DeleteTipoUsuario
    BEFORE DELETE ON tipousuario
    FOR EACH ROW BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Tipo Usuario', 'Delete', SYSDATE());
END$$
DELIMITER ;