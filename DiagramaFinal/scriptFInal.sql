SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema petsrescue
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `petsrescue` ;
CREATE SCHEMA IF NOT EXISTS `petsrescue` DEFAULT CHARACTER SET utf8 ;
USE `petsrescue` ;

-- -----------------------------------------------------
-- Table `petsrescue`.`provincia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petsrescue`.`provincia` ;

CREATE TABLE IF NOT EXISTS `petsrescue`.`provincia` (
  `idProvincia` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre_provincia` VARCHAR(45) NOT NULL,
  `FechaDeCreacion` DATE NULL DEFAULT NULL,
  `FechaDeModificacion` DATE NULL DEFAULT NULL,
  `CreadoPor` INT(11) NULL DEFAULT NULL,
  `ModificadoPor` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idProvincia`))
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `petsrescue`.`canton`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petsrescue`.`canton` ;

CREATE TABLE IF NOT EXISTS `petsrescue`.`canton` (
  `idCanton` INT(11) NOT NULL AUTO_INCREMENT,
  `idProvincia` INT(11) NOT NULL,
  `nombre_canton` VARCHAR(100) NOT NULL,
  `FechaDeCreacion` DATE NULL DEFAULT NULL,
  `FechaDeModificacion` DATE NULL DEFAULT NULL,
  `CreadoPor` INT(11) NULL DEFAULT NULL,
  `ModificadoPor` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idCanton`),
  INDEX `fk_idProvincia_idx` (`idProvincia` ASC),
  CONSTRAINT `fk_idProvincia`
    FOREIGN KEY (`idProvincia`)
    REFERENCES `petsrescue`.`provincia` (`idProvincia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `petsrescue`.`distrito`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petsrescue`.`distrito` ;

CREATE TABLE IF NOT EXISTS `petsrescue`.`distrito` (
  `idDistrito` INT(11) NOT NULL AUTO_INCREMENT,
  `idCanton` INT(11) NOT NULL,
  `nombre_distrito` VARCHAR(100) NOT NULL,
  `FechaDeCreacion` DATE NULL DEFAULT NULL,
  `FechaDeModificacion` DATE NULL DEFAULT NULL,
  `CreadoPor` INT(11) NULL DEFAULT NULL,
  `ModificadoPor` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idDistrito`),
  INDEX `fk_nombreCanton_idx` (`idCanton` ASC),
  CONSTRAINT `fk_nombreCanton`
    FOREIGN KEY (`idCanton`)
    REFERENCES `petsrescue`.`canton` (`idCanton`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `petsrescue`.`barrio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petsrescue`.`barrio` ;

CREATE TABLE IF NOT EXISTS `petsrescue`.`barrio` (
  `idBarrio` INT(11) NOT NULL AUTO_INCREMENT,
  `idDistrito` INT(11) NOT NULL,
  `nombre_Barrio` VARCHAR(100) NOT NULL,
  `FechaDeCreacion` DATE NULL DEFAULT NULL,
  `FechaDeModificacion` DATE NULL DEFAULT NULL,
  `CreadoPor` INT(11) NULL DEFAULT NULL,
  `ModificadoPor` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idBarrio`),
  INDEX `fk_idDistrito_idx` (`idDistrito` ASC),
  CONSTRAINT `fk_idDistrito`
    FOREIGN KEY (`idDistrito`)
    REFERENCES `petsrescue`.`distrito` (`idDistrito`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 23
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `petsrescue`.`bitacora`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petsrescue`.`bitacora` ;

CREATE TABLE IF NOT EXISTS `petsrescue`.`bitacora` (
  `idBitacora` INT(11) NOT NULL AUTO_INCREMENT,
  `nom_tabla` VARCHAR(30) NULL DEFAULT NULL,
  `nom_accion` VARCHAR(50) NULL DEFAULT NULL,
  `FechaDeCreacion` DATE NULL DEFAULT NULL,
  `FechaDeModificacion` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`idBitacora`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `petsrescue`.`colormascota`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petsrescue`.`colormascota` ;

CREATE TABLE IF NOT EXISTS `petsrescue`.`colormascota` (
  `idColorMascota` INT(11) NOT NULL AUTO_INCREMENT,
  `Color` VARCHAR(50) NULL DEFAULT NULL,
  `FechaDeCreacion` DATE NULL DEFAULT NULL,
  `FechaDeModificacion` VARCHAR(45) NULL DEFAULT NULL,
  `CreadoPor` VARCHAR(45) NULL DEFAULT NULL,
  `ModificadoPor` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idColorMascota`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `petsrescue`.`direccion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petsrescue`.`direccion` ;

CREATE TABLE IF NOT EXISTS `petsrescue`.`direccion` (
  `idDireccion_pk` INT(11) NOT NULL AUTO_INCREMENT,
  `provincia_id` INT(11) NULL DEFAULT NULL,
  `canton_id` INT(11) NULL DEFAULT NULL,
  `distrito_id` INT(11) NULL DEFAULT NULL,
  `barrio_id` INT(11) NULL DEFAULT NULL,
  `Descripcion` VARCHAR(1000) NULL DEFAULT NULL,
  `FechaDeCreacion` DATE NULL DEFAULT NULL,
  `FechaDeModificacion` DATE NULL DEFAULT NULL,
  `ModificadoPor` INT(11) NULL DEFAULT NULL,
  `CreadoPorl` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idDireccion_pk`),
  INDEX `provincia_fk_idx` (`provincia_id` ASC),
  INDEX `canton_pk_idx` (`canton_id` ASC),
  INDEX `distrito_pk_idx` (`distrito_id` ASC),
  INDEX `barrio_pk_idx` (`barrio_id` ASC),
  CONSTRAINT `barrio_pk`
    FOREIGN KEY (`barrio_id`)
    REFERENCES `petsrescue`.`barrio` (`idBarrio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `canton_pk`
    FOREIGN KEY (`canton_id`)
    REFERENCES `petsrescue`.`canton` (`idCanton`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `distrito_pk`
    FOREIGN KEY (`distrito_id`)
    REFERENCES `petsrescue`.`distrito` (`idDistrito`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `provincia_fk`
    FOREIGN KEY (`provincia_id`)
    REFERENCES `petsrescue`.`provincia` (`idProvincia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 18
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `petsrescue`.`genero`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petsrescue`.`genero` ;

CREATE TABLE IF NOT EXISTS `petsrescue`.`genero` (
  `idGenero` INT(11) NOT NULL AUTO_INCREMENT,
  `valor_genero` VARCHAR(50) NOT NULL,
  `FechaDeCreacion` DATE NULL DEFAULT NULL,
  `FechaDeModificacion` DATE NULL DEFAULT NULL,
  `CreadoPor` INT(11) NULL DEFAULT NULL,
  `ModificadoPor` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idGenero`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `petsrescue`.`persona`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petsrescue`.`persona` ;

CREATE TABLE IF NOT EXISTS `petsrescue`.`persona` (
  `idPersona` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre_Persona` VARCHAR(100) NOT NULL,
  `pApellido_Persona` VARCHAR(100) NOT NULL,
  `sApellido_Persona` VARCHAR(45) NOT NULL,
  `email_Persona` VARCHAR(45) NOT NULL,
  `sexo_Persona` INT(11) NULL DEFAULT NULL,
  `FechaDeCreacion` DATE NULL DEFAULT NULL,
  `FechaDeModificacion` DATE NULL DEFAULT NULL,
  `CreadoPor` INT(11) NULL DEFAULT NULL,
  `ModificadoPor` INT(11) NULL DEFAULT NULL,
  `idGenero` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idPersona`),
  UNIQUE INDEX `email_Persona_UNIQUE` (`email_Persona` ASC),
  INDEX `idGenero` (`idGenero` ASC),
  CONSTRAINT `persona_ibfk_1`
    FOREIGN KEY (`idGenero`)
    REFERENCES `petsrescue`.`genero` (`idGenero`))
ENGINE = InnoDB
AUTO_INCREMENT = 12
DEFAULT CHARACTER SET = utf8
COMMENT = 'Contiene los datos de una persona que se registra como usuario en el Sistema';


-- -----------------------------------------------------
-- Table `petsrescue`.`direccionxpersona`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petsrescue`.`direccionxpersona` ;

CREATE TABLE IF NOT EXISTS `petsrescue`.`direccionxpersona` (
  `idDireccionxPersona` INT(11) NOT NULL AUTO_INCREMENT,
  `direccion_id` INT(11) NULL DEFAULT NULL,
  `persona_id` INT(11) NULL DEFAULT NULL,
  `FechaDeCreacion` DATE NULL DEFAULT NULL,
  `FechaDeModificacion` DATE NULL DEFAULT NULL,
  `CreadoPor` INT(11) NULL DEFAULT NULL,
  `ModificadoPor` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idDireccionxPersona`),
  INDEX `fk_Direccion_idx` (`direccion_id` ASC),
  INDEX `fk_Persona_idx` (`persona_id` ASC),
  CONSTRAINT `fk_Direccion`
    FOREIGN KEY (`direccion_id`)
    REFERENCES `petsrescue`.`direccion` (`idDireccion_pk`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Persona`
    FOREIGN KEY (`persona_id`)
    REFERENCES `petsrescue`.`persona` (`idPersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `petsrescue`.`tipofoto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petsrescue`.`tipofoto` ;

CREATE TABLE IF NOT EXISTS `petsrescue`.`tipofoto` (
  `idTipoFoto` INT(11) NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(100) NOT NULL,
  `FechaDeCreacion` DATE NULL DEFAULT NULL,
  `FechaDeModificacion` DATE NULL DEFAULT NULL,
  `CreadoPor` INT(11) NULL DEFAULT NULL,
  `mime` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idTipoFoto`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8
COMMENT = 'Contiene los tipos de fotos';


-- -----------------------------------------------------
-- Table `petsrescue`.`foto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petsrescue`.`foto` ;

CREATE TABLE IF NOT EXISTS `petsrescue`.`foto` (
  `idFoto` INT(11) NOT NULL AUTO_INCREMENT,
  `id_tipo_foto` INT(11) NOT NULL,
  `foto` BLOB NOT NULL,
  `mime` VARCHAR(255) NOT NULL,
  `descripcionFoto` VARCHAR(1000) NULL DEFAULT NULL,
  `FechaDeCreacion` DATE NULL DEFAULT NULL,
  `FechaDeModificacion` DATE NULL DEFAULT NULL,
  `CreadoPor` INT(11) NULL DEFAULT NULL,
  `ModificadoPor` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idFoto`),
  UNIQUE INDEX `idFoto_UNIQUE` (`idFoto` ASC),
  INDEX `fk_tipoFotoId_idx` (`id_tipo_foto` ASC),
  CONSTRAINT `fk_tipoFotoId`
    FOREIGN KEY (`id_tipo_foto`)
    REFERENCES `petsrescue`.`tipofoto` (`idTipoFoto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'Colección de fotos';


-- -----------------------------------------------------
-- Table `petsrescue`.`estadomascota`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petsrescue`.`estadomascota` ;

CREATE TABLE IF NOT EXISTS `petsrescue`.`estadomascota` (
  `idEstadoMascota` INT(11) NOT NULL AUTO_INCREMENT,
  `estado` VARCHAR(100) NULL DEFAULT NULL,
  `FechaDeCreacion` DATE NULL DEFAULT NULL,
  `FechaDeModificacion` DATE NULL DEFAULT NULL,
  `CreadoPor` INT(11) NULL DEFAULT NULL,
  `ModificadoPor` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idEstadoMascota`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `petsrescue`.`tipomascota`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petsrescue`.`tipomascota` ;

CREATE TABLE IF NOT EXISTS `petsrescue`.`tipomascota` (
  `idTipoMascota` INT(11) NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(100) NOT NULL,
  `FechaDeCreacion` DATE NULL DEFAULT NULL,
  `FechaDeModificacion` DATE NULL DEFAULT NULL,
  `CreadoPor` INT(11) NULL DEFAULT NULL,
  `ModificadoPor` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idTipoMascota`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `petsrescue`.`razamascota`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petsrescue`.`razamascota` ;

CREATE TABLE IF NOT EXISTS `petsrescue`.`razamascota` (
  `idRazaMascota` INT(11) NOT NULL AUTO_INCREMENT,
  `raza` VARCHAR(45) NULL DEFAULT NULL,
  `idTipoMascota` INT(11) NULL DEFAULT NULL,
  `FechaDeCreacion` VARCHAR(45) NULL DEFAULT NULL,
  `FechaDeModificacion` VARCHAR(45) NULL DEFAULT NULL,
  `CreadoPor` VARCHAR(45) NULL DEFAULT NULL,
  `ModificadoPor` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idRazaMascota`),
  INDEX `fk_tipoMascota_idx` (`idTipoMascota` ASC),
  CONSTRAINT `fk_tipoMascota`
    FOREIGN KEY (`idTipoMascota`)
    REFERENCES `petsrescue`.`tipomascota` (`idTipoMascota`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 14
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `petsrescue`.`tamanomascota`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petsrescue`.`tamanomascota` ;

CREATE TABLE IF NOT EXISTS `petsrescue`.`tamanomascota` (
  `idTamanoMascota` INT(11) NOT NULL AUTO_INCREMENT,
  `tamano` VARCHAR(45) NOT NULL,
  `FechaDeCreacion` DATE NULL DEFAULT NULL,
  `FechaDeModificacion` DATE NULL DEFAULT NULL,
  `CreadoPor` INT(11) NULL DEFAULT NULL,
  `ModificadoPor` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idTamanoMascota`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `petsrescue`.`mascota`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petsrescue`.`mascota` ;

CREATE TABLE IF NOT EXISTS `petsrescue`.`mascota` (
  `idMascota` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre_mascota` VARCHAR(100) NULL DEFAULT 'No Identificada',
  `chipNumber_mascota` INT(11) NULL DEFAULT NULL,
  `idEstadoMascota` INT(11) NULL DEFAULT NULL,
  `idRazaMascota` INT(11) NULL DEFAULT NULL,
  `idTamanoMascota` INT(11) NULL DEFAULT NULL,
  `idTipoMascota` INT(11) NULL DEFAULT NULL,
  `idColorMascota` INT(11) NULL DEFAULT NULL,
  `FechaDeCreacion` DATE NULL DEFAULT NULL,
  `FechaDeModificacion` DATE NULL DEFAULT NULL,
  `CreadoPor` INT(11) NULL DEFAULT NULL,
  `ModificadoPor` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idMascota`),
  INDEX `fk_idEstadoMascota_idx` (`idEstadoMascota` ASC),
  INDEX `fk_idRazaMascota_idx` (`idRazaMascota` ASC),
  INDEX `fk_idTamanoMascota_idx` (`idTamanoMascota` ASC),
  INDEX `fk_idTipoMascota_idx` (`idTipoMascota` ASC),
  INDEX `fk_colorMascota_idx` (`idColorMascota` ASC),
  CONSTRAINT `fk_colorMascota`
    FOREIGN KEY (`idColorMascota`)
    REFERENCES `petsrescue`.`colormascota` (`idColorMascota`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idEstadoMascota`
    FOREIGN KEY (`idEstadoMascota`)
    REFERENCES `petsrescue`.`estadomascota` (`idEstadoMascota`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idRazaMascota`
    FOREIGN KEY (`idRazaMascota`)
    REFERENCES `petsrescue`.`razamascota` (`idRazaMascota`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idTamanoMascota`
    FOREIGN KEY (`idTamanoMascota`)
    REFERENCES `petsrescue`.`tamanomascota` (`idTamanoMascota`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idTipoMascota`
    FOREIGN KEY (`idTipoMascota`)
    REFERENCES `petsrescue`.`tipomascota` (`idTipoMascota`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 18
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `petsrescue`.`mascotasencontradas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petsrescue`.`mascotasencontradas` ;

CREATE TABLE IF NOT EXISTS `petsrescue`.`mascotasencontradas` (
  `idMascotasEncontradas` INT(11) NOT NULL AUTO_INCREMENT,
  `idMascota` INT(11) NULL DEFAULT NULL,
  `idRescatador` INT(11) NULL DEFAULT NULL,
  `fecha_encuentro` DATE NULL DEFAULT NULL,
  `idFotoMascotaEncontrada` INT(11) NULL DEFAULT NULL,
  `Observaciones` VARCHAR(2000) NULL DEFAULT NULL,
  `FechaDeCreacion` DATE NULL DEFAULT NULL,
  `FechaDeModificacion` DATE NULL DEFAULT NULL,
  `CreadoPor` INT(11) NULL DEFAULT NULL,
  `ModificadoPor` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idMascotasEncontradas`),
  INDEX `fk_idMascotaEncontrada_idx` (`idMascota` ASC),
  INDEX `fk_fotoMascotaEncontrada_idx` (`idFotoMascotaEncontrada` ASC),
  INDEX `fk_idPersonaRescatador_idx` (`idRescatador` ASC),
  CONSTRAINT `fk_fotoMascotaEncontrada`
    FOREIGN KEY (`idFotoMascotaEncontrada`)
    REFERENCES `petsrescue`.`foto` (`idFoto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idMascotaEncontrada`
    FOREIGN KEY (`idMascota`)
    REFERENCES `petsrescue`.`mascota` (`idMascota`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idPersonaRescatador`
    FOREIGN KEY (`idRescatador`)
    REFERENCES `petsrescue`.`persona` (`idPersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `petsrescue`.`direccionxreporteencuentro`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petsrescue`.`direccionxreporteencuentro` ;

CREATE TABLE IF NOT EXISTS `petsrescue`.`direccionxreporteencuentro` (
  `iddireccionxreporteencuentro` INT(11) NOT NULL AUTO_INCREMENT,
  `mascotaEncontrada_id` INT(11) NULL DEFAULT NULL,
  `direccionEncontrada_id` INT(11) NULL DEFAULT NULL,
  `FechaDeCreacion` DATE NULL DEFAULT NULL,
  `FechaDeModificacion` DATE NULL DEFAULT NULL,
  `CreadoPor` INT(11) NULL DEFAULT NULL,
  `ModificadoPor` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`iddireccionxreporteencuentro`),
  INDEX `fk_mascotaEncontrada_idx` (`mascotaEncontrada_id` ASC),
  INDEX `fk_direccionEncuentroM_idx` (`direccionEncontrada_id` ASC),
  CONSTRAINT `fk_direccionEncuentroM`
    FOREIGN KEY (`direccionEncontrada_id`)
    REFERENCES `petsrescue`.`direccion` (`idDireccion_pk`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_mascotaEncontrada`
    FOREIGN KEY (`mascotaEncontrada_id`)
    REFERENCES `petsrescue`.`mascotasencontradas` (`idMascotasEncontradas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `petsrescue`.`mascotasperdidas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petsrescue`.`mascotasperdidas` ;

CREATE TABLE IF NOT EXISTS `petsrescue`.`mascotasperdidas` (
  `idMascotasPerdidas` INT(11) NOT NULL AUTO_INCREMENT,
  `idDueno` INT(11) NOT NULL,
  `fecha_perdida` DATE NOT NULL,
  `recompensa` INT(11) NULL DEFAULT NULL,
  `Observaciones` VARCHAR(2000) NULL DEFAULT NULL,
  `idMascota` INT(11) NULL DEFAULT NULL,
  `idFotoMascotaPerdida` INT(11) NULL DEFAULT NULL,
  `FechaDeCreacion` DATE NULL DEFAULT NULL,
  `FechaDeModificacion` DATE NULL DEFAULT NULL,
  `CreadoPor` INT(11) NULL DEFAULT NULL,
  `ModificadoPor` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idMascotasPerdidas`),
  INDEX `fk_idMascota_idx` (`idMascota` ASC),
  INDEX `fk_fotoMascotaPerdida_idx` (`idFotoMascotaPerdida` ASC),
  INDEX `fk_idDueno_idx` (`idDueno` ASC),
  CONSTRAINT `fk_fotoMascotaPerdidax`
    FOREIGN KEY (`idFotoMascotaPerdida`)
    REFERENCES `petsrescue`.`foto` (`idFoto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idDuenox`
    FOREIGN KEY (`idDueno`)
    REFERENCES `petsrescue`.`persona` (`idPersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idMascotax`
    FOREIGN KEY (`idMascota`)
    REFERENCES `petsrescue`.`mascota` (`idMascota`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `petsrescue`.`direccionxreporteperdida`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petsrescue`.`direccionxreporteperdida` ;

CREATE TABLE IF NOT EXISTS `petsrescue`.`direccionxreporteperdida` (
  `idDireccionxReporte` INT(11) NOT NULL AUTO_INCREMENT,
  `mascotaPerdida_id` INT(11) NULL DEFAULT NULL,
  `direccionPerdida_id` INT(11) NULL DEFAULT NULL,
  `FechaDeCreacion` DATE NULL DEFAULT NULL,
  `FechaDeModificacion` DATE NULL DEFAULT NULL,
  `CreadoPor` INT(11) NULL DEFAULT NULL,
  `ModificadoPor` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idDireccionxReporte`),
  INDEX `mascotaPerdida_fk_idx` (`mascotaPerdida_id` ASC),
  INDEX `direccionPerdida_fk_idx` (`direccionPerdida_id` ASC),
  CONSTRAINT `direccionPerdida_fk`
    FOREIGN KEY (`direccionPerdida_id`)
    REFERENCES `petsrescue`.`direccion` (`idDireccion_pk`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `mascotaPerdida_fk`
    FOREIGN KEY (`mascotaPerdida_id`)
    REFERENCES `petsrescue`.`mascotasperdidas` (`idMascotasPerdidas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `petsrescue`.`tipotelefono`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petsrescue`.`tipotelefono` ;

CREATE TABLE IF NOT EXISTS `petsrescue`.`tipotelefono` (
  `idTipoTelefono` INT(11) NOT NULL AUTO_INCREMENT,
  `tipoTelefono` VARCHAR(100) NOT NULL,
  `FechaDeCreacion` DATE NULL DEFAULT NULL,
  `FechaDeModificacion` DATE NULL DEFAULT NULL,
  `CreadoPor` INT(11) NULL DEFAULT NULL,
  `ModificadoPor` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idTipoTelefono`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8
COMMENT = 'Contiene los tipos de telefono que una persona puede tener';


-- -----------------------------------------------------
-- Table `petsrescue`.`telefonoxpersona`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petsrescue`.`telefonoxpersona` ;

CREATE TABLE IF NOT EXISTS `petsrescue`.`telefonoxpersona` (
  `idtelefonoXpersona` INT(11) NOT NULL AUTO_INCREMENT,
  `Persona_id` INT(11) NOT NULL,
  `tipoTelefono_id` INT(11) NOT NULL,
  `numeroTelefono` VARCHAR(8) NOT NULL,
  `FechaDeCreacion` DATE NULL DEFAULT NULL,
  `FechaDeModificacion` DATE NULL DEFAULT NULL,
  `CreadoPor` INT(11) NULL DEFAULT NULL,
  `ModificadoPor` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idtelefonoXpersona`),
  INDEX `fk_idPersona_idx` (`Persona_id` ASC),
  INDEX `fk_idTipoTelefono_idx` (`tipoTelefono_id` ASC),
  CONSTRAINT `fk_idPersona`
    FOREIGN KEY (`Persona_id`)
    REFERENCES `petsrescue`.`persona` (`idPersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idTipoTelefono`
    FOREIGN KEY (`tipoTelefono_id`)
    REFERENCES `petsrescue`.`tipotelefono` (`idTipoTelefono`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `petsrescue`.`tipousuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petsrescue`.`tipousuario` ;

CREATE TABLE IF NOT EXISTS `petsrescue`.`tipousuario` (
  `idTipoUsuario` INT(11) NOT NULL AUTO_INCREMENT,
  `descripcionTipo` VARCHAR(512) NULL DEFAULT NULL,
  `FechaDeCreacion` DATE NULL DEFAULT NULL,
  `FechaDeModificacion` DATE NULL DEFAULT NULL,
  `CreadoPor` INT(11) NULL DEFAULT NULL,
  `ModificadoPor` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idTipoUsuario`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `petsrescue`.`usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petsrescue`.`usuario` ;

CREATE TABLE IF NOT EXISTS `petsrescue`.`usuario` (
  `idUsuario` INT(11) NOT NULL AUTO_INCREMENT,
  `usuario_idPersona` INT(11) NOT NULL,
  `username` VARCHAR(100) NOT NULL,
  `password_usuario` VARCHAR(200) NOT NULL,
  `idTipoUsuario` INT(11) NOT NULL,
  `idFotoPerfilUsuario` INT(11) NULL DEFAULT NULL,
  `FechaDeCreacion` DATE NULL DEFAULT NULL,
  `FechaDeModificacion` DATE NULL DEFAULT NULL,
  `CreadoPor` INT(11) NULL DEFAULT NULL,
  `ModificadoPor` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idUsuario`),
  INDEX `fk_personaId_idx` (`usuario_idPersona` ASC),
  INDEX `fk_tipoUsuario_idx` (`idTipoUsuario` ASC),
  INDEX `fk_fotoPerfilUsuario_idx` (`idFotoPerfilUsuario` ASC),
  CONSTRAINT `fk_fotoPerfilUsuario`
    FOREIGN KEY (`idFotoPerfilUsuario`)
    REFERENCES `petsrescue`.`foto` (`idFoto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_personaId`
    FOREIGN KEY (`usuario_idPersona`)
    REFERENCES `petsrescue`.`persona` (`idPersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipoUsuario`
    FOREIGN KEY (`idTipoUsuario`)
    REFERENCES `petsrescue`.`tipousuario` (`idTipoUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 10
DEFAULT CHARACTER SET = utf8;

USE `petsrescue` ;

-- -----------------------------------------------------
-- procedure consultar_asociaciones
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`consultar_asociaciones`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_asociaciones`( pnombre_asociacion varchar(100),pnombre_provincia varchar(45),pnombreCanton varchar(100))
begin
    

	select nombre_asociacion,Descripcion_Asociacion from asociaciones
	inner join direccionxasociacion
	on direccionxasociacion.idAsociaciones = asociaciones.idAsociaciones
    inner join direccion
	on direccion.idDireccion_pk = direccionxasociacion.idDireccion
	inner join provincia
    on provincia.idProvincia = direccion.provincia_id
	inner join canton
    on canton.idCanton = direccion.canton_id
    where asociaciones.nombre_asociacion like  ifnull( concat('%', pnombre_asociacion ,'%'),  asociaciones.nombre_asociacion)  
	and provincia.nombre_provincia = pnombre_provincia and canton.nombre_canton = pnombreCanton
    order by asociaciones.nombre_asociacion;

end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure consultar_casasCuna
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`consultar_casasCuna`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_casasCuna`( ptipoMascota varchar(100),ptamanoMascota varchar(45))
begin

	select nombre_Persona,pApellido_Persona,sApellido_Persona,email_Persona from persona
    inner join casacuna
	on casacuna.idPersona = persona.idPersona
    inner join tamanomascota
    on tamanomascota.idTamanoMascota = casacuna.idTamanoMascota
	inner join tipomascotaxcasacuna
    on tipomascotaxcasacuna.casaCuna_id = casacuna.idCasaCuna
    inner join tipomascota
    on tipomascota.idTipoMascota = tipomascotaxcasacuna.tipoMascota_id
	where tipomascota.tipo = ptipoMascota and tamanomascota.tamano = ptamanoMascota
    order by persona.pApellido_Persona;


end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure consultar_donacion
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`consultar_donacion`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_donacion`( pnombrePersona varchar(100) ,papellidoPersona varchar(100),
pnombreAsociacion varchar(100))
begin

	select FechaDonacion,Monto 
	from donacionesxasociacion
    inner join persona
    on persona.idPersona = donacionesxasociacion.idDonador
    inner join asociaciones
    on asociaciones.idAsociaciones = donacionesxasociacion.idAsociacion
	where persona.nombre_Persona like ifnull( concat( '%',pnombrePersona,'%'),persona.nombre_Persona)
    and persona.pApellido_Persona like ifnull( concat( '%',papellidoPersona,'%'),persona.nombre_Persona)
    and asociaciones.nombre_asociacion like ifnull( concat( '%',pnombreAsociacion,'%'),persona.nombre_Persona);
	

	


end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure consultar_mascotaEncontrada
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`consultar_mascotaEncontrada`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_mascotaEncontrada`( ptipoMascota varchar(100),pnombreMascota varchar(100),pnumero_chip int,
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


end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure consultar_mascotaPerdida
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`consultar_mascotaPerdida`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_mascotaPerdida`( ptipoMascota varchar(100),pnombreMascota varchar(100),pnumero_chip int,
prazaMascota varchar(45),pcolorMascota varchar(50), pFechaExtravio date,pnombreProvincia varchar(45),pNombreCanton varchar(100))
begin

	select idDueno,fecha_perdida,recompensa,idFotoMascotaPerdida from mascotasperdidas
    inner join direccionxreporteperdida
    on direccionxreporteperdida.mascotaPerdida_id = mascotasperdidas.idMascotasPerdidas
    inner join direccion
    on direccion.idDireccion_pk = direccionxreporteperdida.direccionPerdida_id
	inner join provincia
	on provincia.idProvincia = direccion.provincia_id
    inner join canton
    on canton.idCanton = direccion.canton_id
	inner join mascota
    on mascotasperdidas.idMascota = mascota.idMascota
	inner join tipomascota
	on tipomascota.idTipoMascota = mascota.idTipoMascota
	inner join razamascota
	on  razamascota.idRazaMascota =  mascota.idRazaMascota
	inner join colormascota
	on colormascota.idColorMascota = mascota.idColorMascota
    where mascotasperdidas.fecha_perdida <= ifnull(pFechaExtravio, mascotasperdidas.fecha_perdida) and mascota.nombre_mascota like ifnull( concat('%', pnombreMascota ,'%'), mascota.nombre_mascota) 
	and mascota.chipNumber_mascota = ifnull(pnumero_chip, mascota.chipNumber_mascota ) and tipomascota.tipo = ifnull(ptipoMascota, tipomascota.tipo )  and razamascota.raza like ifnull(concat('%', prazaMascota ,'%'), razamascota.raza) 
	and colormascota.Color = ifnull(pcolorMascota ,colormascota.Color) and provincia.nombre_provincia = pnombreProvincia
    and canton.nombre_canton = pNombreCanton
    order by mascotasperdidas.fecha_perdida;


end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure consultar_persona
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`consultar_persona`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_persona`( pnombre_persona varchar(100), papellido varchar(100), p_email varchar(45))
begin
    #Se debe agregar columna calificacion a la tabla y desplegarla también

	select * from persona
    where nombre_Persona like ifnull( concat('%', pnombre_persona ,'%'), nombre_Persona) 
	and pApellido_Persona like ifnull( concat('%', papellido ,'%'), pApellido_Persona)  and email_Persona = ifnull(p_email , email_Persona )
    order by nombre_persona;

end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure existeEmail
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`existeEmail`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `existeEmail`(email varchar(45))
begin
	SELECT email_Persona FROM persona where lower(email_Persona) = lower(email) limit 1;
end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure existeUsername
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`existeUsername`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `existeUsername`(pusername varchar(100))
begin
	SELECT username FROM usuario where lower(username) = lower(pusername) limit 1;
end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure generar_listaNegra
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`generar_listaNegra`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `generar_listaNegra`()
begin

	select adoptante_id from adopciones
    where calificacion <= 3;


end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure obtenerColoresMascota
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`obtenerColoresMascota`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerColoresMascota`()
begin
	
	SELECT color, idColorMascota FROM colormascota;
end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure obtenerPersonas
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`obtenerPersonas`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerPersonas`()
begin
	SELECT idPersona, email_Persona FROM persona;
end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure obtenerRazasMascota
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`obtenerRazasMascota`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerRazasMascota`(temp_tipoMascotaId int)
begin
	
	
	SELECT raza, idRazaMascota FROM razamascota 
	WHERE idTipoMascota = temp_tipoMascotaId;
end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure obtenerTamanosMascota
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`obtenerTamanosMascota`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerTamanosMascota`()
begin
	
	SELECT tamano, idTamanoMascota FROM tamanomascota;
end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure obtenerTiposMascota
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`obtenerTiposMascota`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerTiposMascota`()
begin
	SELECT tipo, idTipoMascota FROM tipoMascota;
end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure obtenerUsernames
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`obtenerUsernames`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerUsernames`()
begin
	SELECT idUsuario, username FROM usuario;
end$$

DELIMITER ;

-- -----------------------------------------------------
-- function obtener_RazaMascota_id
-- -----------------------------------------------------

USE `petsrescue`;
DROP function IF EXISTS `petsrescue`.`obtener_RazaMascota_id`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `obtener_RazaMascota_id`(raza_mascota varchar(50) ,tipo_mascota int) RETURNS int(11)
begin

declare razaMascota_id int;

select idRazaMascota into razaMascota_id from razamascota
where  raza = raza_mascota and idTipoMascota = tipo_mascota limit 1;

return razaMascota_id;

end$$

DELIMITER ;

-- -----------------------------------------------------
-- function obtener_TipoMascota_id
-- -----------------------------------------------------

USE `petsrescue`;
DROP function IF EXISTS `petsrescue`.`obtener_TipoMascota_id`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `obtener_TipoMascota_id`(tipo_mascota varchar(45)) RETURNS int(11)
begin

declare tipoMascota_id int;

select idTipoMascota into tipoMascota_id from tipomascota
where  tipo = tipo_mascota limit 1;

return tipoMascota_id;

end$$

DELIMITER ;

-- -----------------------------------------------------
-- function obtener_canton_id
-- -----------------------------------------------------

USE `petsrescue`;
DROP function IF EXISTS `petsrescue`.`obtener_canton_id`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `obtener_canton_id`(pnombre_canton varchar(100)) RETURNS int(11)
begin

declare id_canton int;

select idCanton into id_canton from canton 
where nombre_canton = pnombre_canton limit 1;

return id_canton;

end$$

DELIMITER ;

-- -----------------------------------------------------
-- function obtener_colorMascota_id
-- -----------------------------------------------------

USE `petsrescue`;
DROP function IF EXISTS `petsrescue`.`obtener_colorMascota_id`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `obtener_colorMascota_id`(color_mascota varchar(45)) RETURNS int(11)
begin

declare colorMascota_id int;

select idColorMascota into colorMascota_id from colormascota
where Color = color_mascota limit 1;

return colorMascota_id;

end$$

DELIMITER ;

-- -----------------------------------------------------
-- function obtener_distrito_id
-- -----------------------------------------------------

USE `petsrescue`;
DROP function IF EXISTS `petsrescue`.`obtener_distrito_id`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `obtener_distrito_id`(pnombre_distrito varchar(100)) RETURNS int(11)
begin

declare id_distrito int;

select idDistrito into id_distrito from distrito 
where nombre_distrito = pnombre_distrito limit 1;

return id_distrito;

end$$

DELIMITER ;

-- -----------------------------------------------------
-- function obtener_estadoMascota_id
-- -----------------------------------------------------

USE `petsrescue`;
DROP function IF EXISTS `petsrescue`.`obtener_estadoMascota_id`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `obtener_estadoMascota_id`(nombre_estado varchar(45)) RETURNS int(11)
begin

declare estadoMascota_id int;

select idEstadoMascota into estadoMascota_id from estadomascota
where estado = nombre_estado limit 1;

return estadoMascota_id;

end$$

DELIMITER ;

-- -----------------------------------------------------
-- function obtener_persona_id
-- -----------------------------------------------------

USE `petsrescue`;
DROP function IF EXISTS `petsrescue`.`obtener_persona_id`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `obtener_persona_id`(pemail_persona varchar(45)) RETURNS int(11)
begin

declare resultado int;

select idPersona into resultado from persona 
where email_Persona = pemail_persona;

return resultado;

end$$

DELIMITER ;

-- -----------------------------------------------------
-- function obtener_provincia_id
-- -----------------------------------------------------

USE `petsrescue`;
DROP function IF EXISTS `petsrescue`.`obtener_provincia_id`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `obtener_provincia_id`(pnombre_provincia varchar(45)) RETURNS int(11)
begin

declare id_provincia int;

select idProvincia into id_provincia from provincia 
where nombre_provincia = pnombre_provincia limit 1;

return id_provincia;

end$$

DELIMITER ;

-- -----------------------------------------------------
-- function obtener_tamanoMascota_id
-- -----------------------------------------------------

USE `petsrescue`;
DROP function IF EXISTS `petsrescue`.`obtener_tamanoMascota_id`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `obtener_tamanoMascota_id`(tamano_mascota varchar(45)) RETURNS int(11)
begin

declare tamanoMascota_id int;

select idTamanoMascota into tamanoMascota_id from tamanomascota
where tamano = tamano_mascota limit 1;

return tamanoMascota_id;

end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_editar_contraseña
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_editar_contraseña`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_editar_contraseña`(pemail varchar(45),pnuevaContrasena varchar(100))
begin
    declare id_temporal int;
    declare id_usuarioTemporal int;

	select obtener_persona_id(pemail) into id_temporal;

    select idUsuario into id_usuarioTemporal from usuario where usuario_idPersona = id_Temporal; 
    
	
	update usuario set password_usuario = pnuevaContrasena where idUsuario = id_usuarioTemporal;

end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_editar_username
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_editar_username`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_editar_username`(pemail varchar(45),pnuevoUsername varchar(100))
begin
    declare id_temporal int;
    declare id_usuarioTemporal int;

	select obtener_persona_id(pemail) into id_temporal;

    select idUsuario into id_usuarioTemporal from usuario where usuario_idPersona = id_Temporal; 
    
	#verificar que username no exista en PHP
	update usuario set username=pnuevoUsername where idUsuario = id_usuarioTemporal;

end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_getID_Persona
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_getID_Persona`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_getID_Persona`(
	user_user varchar(200))
begin

select usuario_idPersona from usuario where idUsuario = id_Usuario and password_usuario = PASSWORD(pass_user) limit 1;

end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_Asociacion
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_Asociacion`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_Asociacion`(
   pnombre_asociacion varchar(100)  , pDescripcion_asociacion varchar(1000))
begin

INSERT INTO asociaciones(nombre_asociacion,Descripcion_Asociacion)
VALUES(pnombre_asociacion ,pDescripcion_asociacion);

end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_CasaCuna
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_CasaCuna`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_CasaCuna`(
   ppersona_id int , idTamannoMascota int)
begin

INSERT INTO casacuna(idPersona,idTamanoMascota)
VALUES( ppersona_id ,idTamannoMascota);

end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_barrio
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_barrio`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_barrio`(
  nuevo_nombre_barrio varchar(100),
  nuevo_id_distrito INT
)
begin

INSERT INTO barrio(
  nombre_barrio,
  idDistrito
)
VALUES(
  nuevo_nombre_barrio,
  nuevo_id_distrito
);
end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_canton
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_canton`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_canton`(
  in nuevo_nombre_canton varchar(45),
  in id_provincia INT
)
begin

INSERT INTO canton(
  nombre_canton,
  idProvincia
)
VALUES(
  nuevo_nombre_canton,
  id_provincia
);
end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_color_mascota
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_color_mascota`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_color_mascota`(
  in color_mascota varchar(45)
)
begin

INSERT INTO ColorMascota(
  Color
)
VALUES(
  color_mascota
);
end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_direccion
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_direccion`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_direccion`(
  IN nuevo_provincia_id INT,
  IN nuevo_canton_id INT,
  IN nuevo_distrito_id INT,
  IN nuevo_barrio_id INT,
  IN nuevo_Descripcion varchar(1000)
)
begin

INSERT INTO direccion(
  provincia_id,
  canton_id,
  distrito_id,
  barrio_id,
  Descripcion
)
VALUES(
  nuevo_provincia_id,
  nuevo_canton_id,
  nuevo_distrito_id,
  nuevo_barrio_id,
  nuevo_Descripcion
);

end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_direccionXasociacion
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_direccionXasociacion`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_direccionXasociacion`(
  pdireccion_id int,pAsociacion_id int)
begin

INSERT INTO direccionxasociacion(idAsociaciones,idDireccion)
VALUES(pAsociacion_id,pdireccion_id);

end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_direccionXpersona
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_direccionXpersona`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_direccionXpersona`(
  pdireccion_id int,ppersona_id int)
begin

INSERT INTO direccionxpersona (direccion_id,persona_id)
VALUES(pdireccion_id,ppersona_id);

end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_direccionXreporteEncuentro
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_direccionXreporteEncuentro`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_direccionXreporteEncuentro`(
  pdireccion_id int,pReporteEncuentro_id int)
begin

INSERT INTO direccionxreporteencuentro(direccionEncontrada_id,mascotaEncontrada_id)
VALUES(pdireccion_id,pReporteEncuentro_id);

end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_direccionXreportePerdida
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_direccionXreportePerdida`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_direccionXreportePerdida`(
  pdireccion_id int,pReportePerdida_id int)
begin

INSERT INTO direccionxreporteperdida(direccionPerdida_id,mascotaPerdida_id)
VALUES(pdireccion_id,pReportePerdida_id);

end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_distrito
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_distrito`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_distrito`(
  in nuevo_nombre_distrito varchar(100),
  in id_canton INT
)
begin

INSERT INTO distrito(
  nombre_distrito,
  idCanton
)
VALUES(
  nuevo_nombre_distrito,
  id_canton
);
end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_donacionesxcasacuna
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_donacionesxcasacuna`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_donacionesxcasacuna`(
   pcasacuna_id int , palimento int, pvacunas int,ptransporte int,pdinero int)
begin

INSERT INTO donacionesxcasacuna(casacuna_donacion_id,Alimento,Vacunas,Transporte,Dinero)
VALUES(pcasacuna_id, palimento , pvacunas , ptransporte,pdinero);

end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_estado_mascota
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_estado_mascota`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_estado_mascota`(
  in estado_mascota varchar(45)
)
begin

INSERT INTO EstadoMascota(
  estado
)
VALUES(
  estado_mascota
);
end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_genero
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_genero`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_genero`(
  genero_valor varchar(50)
)
begin

INSERT INTO genero(
  valor_genero
)
VALUES(
  genero_valor
);
end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_mascota
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_mascota`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_mascota`(
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
end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_mascota_encontrada
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_mascota_encontrada`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_mascota_encontrada`( pidMascota int, pidRescatador int,  
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
end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_mascota_perdida
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_mascota_perdida`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_mascota_perdida`( pidMascota int, pidDueno int,  
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
end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_provincia
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_provincia`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_provincia`(
  in nuevo_nombre_provincia varchar(45)
)
begin

INSERT INTO provincia(
  nombre_provincia
)
VALUES(
  nuevo_nombre_provincia
);
end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_raza_mascota
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_raza_mascota`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_raza_mascota`(
  in raza_mascota varchar(45), tipo_mascota int
)
begin

INSERT INTO RazaMascota(
  raza, idTipoMascota 
)
VALUES(
  raza_mascota, tipo_mascota
);
end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_tablaPersona
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_tablaPersona`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_tablaPersona`(
   nnombre_persona varchar(100), npapellido_persona varchar(100),nsapellido_persona varchar(45),nemail_persona varchar(45) ,ngenero_persona int)
begin

INSERT INTO persona(nombre_Persona, pApellido_Persona,sApellido_Persona,email_Persona,idGenero)
VALUES( nnombre_persona,npapellido_persona,nsapellido_persona,nemail_persona,ngenero_persona);

end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_tamano_mascota
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_tamano_mascota`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_tamano_mascota`(
  in tamano_mascota varchar(45)
)
begin

INSERT INTO TamanoMascota(
  tamano
)
VALUES(
  tamano_mascota
);
end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_telefonoXPersona
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_telefonoXPersona`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_telefonoXPersona`(
   ppersona_id int, ptipo_telefono int, pnumTelefono_persona varchar(8))
begin


INSERT INTO telefonoxpersona(Persona_id,tipoTelefono_id,numeroTelefono)
VALUES( ppersona_id,ptipo_telefono,pnumTelefono_persona);

end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_tipo_mascota
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_tipo_mascota`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_tipo_mascota`(
  in tipo_mascota varchar(45)
)
begin

INSERT INTO TipoMascota(
  tipo
)
VALUES(
  tipo_mascota
);
end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_tipofoto
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_tipofoto`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_tipofoto`(
  in nuevo_tipo_foto_descripcion varchar(100)
)
begin

INSERT INTO tipofoto(
  descripcion
)
VALUES(
  nuevo_tipo_foto_descripcion
);
end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_tipomascotaxcasacuna
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_tipomascotaxcasacuna`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_tipomascotaxcasacuna`(
   pcasacuna_id int , ptipoMascota_id int)
begin

INSERT INTO tipomascotaxcasacuna(casaCuna_id,tipoMascota_id)
VALUES( pcasacuna_id, ptipoMascota_id);

end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_tipotelefono
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_tipotelefono`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_tipotelefono`(
   nuevo_tipo_telefono varchar(100)
)
begin

INSERT INTO tipotelefono(
  tipoTelefono
)
VALUES(nuevo_tipo_telefono);

end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_tipousuario
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_tipousuario`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_tipousuario`(
  in nuevo_tipo_usuario_descripcion varchar(512)
)
begin

INSERT INTO tipousuario(
  descripcionTipo
)
VALUES(
  nuevo_tipo_usuario_descripcion
);
end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_insertar_usuario
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_insertar_usuario`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertar_usuario`(
   ppersona_id int, pusername varchar(100), ppassword varchar(200),ptipoUsuario int,pfotoPerfil_id int)
begin

INSERT INTO usuario(usuario_idPersona,username,password_usuario,idTipoUsuario,idFotoPerfilUsuario)
VALUES(ppersona_id,pusername,ppassword, ptipoUsuario,pfotoPerfil_id);

end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_obtenerCanton
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_obtenerCanton`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_obtenerCanton`( temp_provinciaID int)
begin
	select nombre_canton,idCanton from canton
	where idProvincia = temp_provinciaID;

end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_obtenerDistrito
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_obtenerDistrito`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_obtenerDistrito`(temp_cantonID int)
begin
	
	select nombre_distrito, idDistrito from distrito
	where idCanton = temp_cantonID;

end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_obtenerProvincia
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_obtenerProvincia`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_obtenerProvincia`()
begin
	select nombre_provincia, idProvincia from provincia;

end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_registrar_Adopcion
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_registrar_Adopcion`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_registrar_Adopcion`(
   padoptante_id int  ,pmascota_id int)
begin

INSERT INTO adopciones(adoptante_id,mascota_id)
VALUES(padoptante_id,pmascota_id);

end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_registrar_Asociacion
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_registrar_Asociacion`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_registrar_Asociacion`(
   pnombre_asociacion varchar(100)  , pDescripcion_asociacion varchar(1000),pnombreProvincia varchar(45),pNombreCanton varchar(100),
   pnombreDistrito varchar(100),pnombrebarrio varchar(100),pdescripcion_direccion varchar(1000))
begin

	declare temp_asociacionID int;
	declare temp_provinciaID int;
	declare temp_cantonID int;
	declare temp_distritoID int;
    declare temp_barrioID int;
	declare temp_direccionID int;

    #Aqui debería ir proc para ingresar Foto

	call proc_insertar_Asociacion(pnombre_asociacion , pDescripcion_asociacion);
	select last_insert_id() into temp_asociacionID;
 
	select obtener_provincia_id(pnombreProvincia) into temp_provinciaID;
-- 
-- 
	select obtener_canton_id(pNombreCanton) into temp_cantonID;
 	select obtener_distrito_id(pnombreDistrito) into temp_distritoID;
-- 
--     
	call proc_insertar_barrio(pnombrebarrio,temp_distritoID);
    select last_insert_id() into temp_barrioID;

	call proc_insertar_direccion(temp_provinciaID,temp_cantonID,temp_distritoID,temp_barrioID,pdescripcion_direccion);
	select last_insert_id() into temp_direccionID;

	call proc_insertar_direccionXasociacion(temp_direccionID,temp_asociacionID);

end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_registrar_casacuna
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_registrar_casacuna`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_registrar_casacuna`( pTamannoMascota varchar(45), pemail_persona varchar(45),ptipo_mascota varchar(45),
 palimento int, pvacunas int,ptransporte int,pdinero int)
begin 
    declare temp_personaID int ;
    declare temp_casacunaID int;
	declare temp_tipoMascotaID int;
	declare temp_tamanoMascotaID int;
    
    select obtener_persona_id(pemail_persona) into temp_personaID;

	select obtener_tamanoMascota_id(pTamannoMascota) into temp_tamanoMascotaID ;
     
 	call proc_insertar_CasaCuna( temp_personaID , temp_tamanoMascotaID);
    select last_insert_id() into temp_casacunaID;

    select obtener_TipoMascota_id(ptipo_mascota) into temp_tipoMascotaID;

	call proc_insertar_tipomascotaxcasacuna(temp_casacunaID , temp_tipoMascotaID );
	call proc_insertar_donacionesxcasacuna(temp_casacunaID , palimento, pvacunas,ptransporte,pdinero);



end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_registrar_donacion
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_registrar_donacion`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_registrar_donacion`(
   pid_donador int  , pid_asociacion int , pFechaDonacion date, pmonto int)
begin

INSERT INTO donacionesxasociacion(idDonador,idAsociacion,FechaDonacion,Monto)
VALUES(pid_donador, pid_asociacion,pFechaDonacion,pmonto);

end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_registrar_mascota
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_registrar_mascota`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_registrar_mascota`(pnombre_mascota varchar(100), chipNumber_mascota int, estado_mascota int, 

raza_mascota int, tamano_mascota int, tipo_mascota int, color_mascota int)
begin
	#Declaracion de variables temporales
	declare temp_estadoID int ;
    declare temp_razaID int;
	declare temp_tamanoID int;
	declare temp_tipoID int;
    declare temp_colorID int;
	

	#Se optienen los IDs necesarios para el registro
	select obtener_estadoMascota_id(estado_mascota) into temp_estadoID;
	select obtener_tamanoMascota_id(tamano_mascota) into temp_tamanoID;
	select obtener_colorMascota_id(color_mascota) into temp_colorID;
	select obtener_TipoMascota_id(tipo_mascota) into temp_tipoID;
	select obtener_RazaMascota_id(raza_mascota, temp_tipoID) into temp_razaID;

	#Se registra la mascota
	call proc_insertar_mascota(pnombre_mascota, chipNumber_mascota, estado_mascota, raza_mascota, tamano_mascota,
	tipo_mascota, color_mascota);
	


end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_registrar_mascota_Encontrada
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_registrar_mascota_Encontrada`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_registrar_mascota_Encontrada`(pnombre_mascota varchar(100), chipNumber_mascota int, estado_mascota int, 

raza_mascota int, tamano_mascota int, tipo_mascota int, color_mascota int, pid_Rescatador int,
pFecha_Encontrada date,  pObservaciones varchar(2000), provincia int, 
canton int, distrito int, barrio varchar(100), descripcion_direccion varchar(1000))
begin
	#Declaracion de variables temporales
	declare temp_mascotaID int;
    declare temp_reporteEncontrada int;
	declare temp_barrioID int;
	declare temp_direccionID int;

	#Se registra en primera instancia la mascota
	call proc_registrar_mascota(pnombre_mascota, chipNumber_mascota, estado_mascota, raza_mascota, tamano_mascota,
	tipo_mascota, color_mascota);
	
	#Se obtiene el ID de la mascota recien registrada
	select last_insert_id() into temp_mascotaID;

	#Se registra la mascota encontrada
	call proc_insertar_mascota_encontrada( temp_mascotaID, pid_Rescatador, 
	pFecha_Encontrada ,  pObservaciones );
	#Se obtiene el ID del reporte recien registrada
	select last_insert_id() into temp_reporteEncontrada;

	call proc_insertar_barrio(barrio,distrito);
    select last_insert_id() into temp_barrioID;

	call proc_insertar_direccion(provincia,canton, distrito,temp_barrioID,descripcion_direccion);
	select last_insert_id() into temp_direccionID;
	
	call proc_insertar_direccionXreporteEncuentro(temp_direccionID,temp_reporteEncontrada);



end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_registrar_mascota_Perdida
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_registrar_mascota_Perdida`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_registrar_mascota_Perdida`(pnombre_mascota varchar(100), chipNumber_mascota int, estado_mascota int, 

raza_mascota int, tamano_mascota int, tipo_mascota int, color_mascota int, pid_Dueno int,
pFecha_Perdida date, pRecompensa int, pObservaciones varchar(2000), provincia int, 
canton int, distrito int, barrio varchar(100), descripcion_direccion varchar(1000))
begin
	#Declaracion de variables temporales
	declare temp_mascotaID int;
    declare temp_reportePerdida int;
	declare temp_barrioID int;
	declare temp_direccionID int;

	#Se registra en primera instancia la mascota
	call proc_registrar_mascota(pnombre_mascota, chipNumber_mascota, estado_mascota, raza_mascota, tamano_mascota,
	tipo_mascota, color_mascota);
	
	#Se obtiene el ID de la mascota recien registrada
	select last_insert_id() into temp_mascotaID;

	#Se registra la mascota perdida
	call proc_insertar_mascota_perdida( temp_mascotaID, pid_Dueno,  
	pFecha_Perdida, pRecompensa , pObservaciones );

    #Se obtiene el ID del reporte recien registrada
	select last_insert_id() into temp_reportePerdida;
	
	call proc_insertar_barrio(barrio,distrito);
    select last_insert_id() into temp_barrioID;

	call proc_insertar_direccion(provincia,canton, distrito,temp_barrioID,descripcion_direccion);
	select last_insert_id() into temp_direccionID;
	
	call proc_insertar_direccionXreportePerdida(temp_direccionID,temp_reportePerdida);


end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure proc_registrar_persona
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`proc_registrar_persona`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_registrar_persona`(
   pnombre_persona varchar(100), ppapellido_persona varchar(100),
   psapellido_persona varchar(45),pemail_persona varchar(45) ,pgenero_persona int,ptipo_telefono int, pnumTelefono_persona varchar(8),
   pusername varchar(100), ppassword varchar(200),ptipoUsuario int,pIDprovincia int,pIDcanton int,
   pIDdistrito int,pnombrebarrio varchar(100),pdescripcion_direccion varchar(1000) )
begin
    declare temp_personaID int ;
   --  declare temp_provinciaID int;
-- 	declare temp_cantonID int;
-- 	declare temp_distritoID int;
    declare temp_barrioID int;
	declare temp_direccionID int;
    

 	call proc_insertar_tablaPersona(pnombre_persona,ppapellido_persona,psapellido_persona,pemail_persona,pgenero_persona);
 	select last_insert_id() into temp_personaID;
-- 
     call proc_insertar_telefonoXPersona(temp_personaID,ptipo_telefono, pnumTelefono_persona);
-- 
-- 	#Aqui debe ir el procedimiento para insertar una imagen,aplicar last_insert_id()
-- 
 	call proc_insertar_usuario(temp_personaID,pusername,ppassword,ptipoUsuario,null);
-- 	
--
	-- select obtener_provincia_id(pnombreProvincia) into temp_provinciaID;
-- -- 
-- -- 
-- 	select obtener_canton_id(pNombreCanton) into temp_cantonID;
--  	select obtener_distrito_id(pnombreDistrito) into temp_distritoID;
-- -- 
--     
	call proc_insertar_barrio(pnombrebarrio,pIDdistrito);
    select last_insert_id() into temp_barrioID;
    
	call proc_insertar_direccion(pIDprovincia,pIDcanton, pIDdistrito,temp_barrioID,pdescripcion_direccion);
	select last_insert_id() into temp_direccionID;
-- 
 	call  proc_insertar_direccionXpersona(temp_direccionID, temp_personaID);
	
	
     
	

end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure reporte_donaciones
-- -----------------------------------------------------

USE `petsrescue`;
DROP procedure IF EXISTS `petsrescue`.`reporte_donaciones`;

DELIMITER $$
USE `petsrescue`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `reporte_donaciones`(pFechaInicial date, pFechaFinal date)
begin

	select monthname(FechaDonacion),idDonador, sum(Monto) from donacionesxasociacion
   --  where FechaDonacion between (min(FechaDonacion)) and sysdate()
	group by month(FechaDonacion);


end$$

DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
USE `petsrescue`;

DELIMITER $$

USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_DeleteProvincia` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_DeleteProvincia`
BEFORE DELETE ON `petsrescue`.`provincia`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Provincia', 'Delete', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_UpdateProvincia` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_UpdateProvincia`
BEFORE UPDATE ON `petsrescue`.`provincia`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Provincia', 'Update', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_provincia` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_provincia`
BEFORE INSERT ON `petsrescue`.`provincia`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Provincia', 'Insert');
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_DeleteCanton` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_DeleteCanton`
BEFORE DELETE ON `petsrescue`.`canton`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Cantón', 'Delete', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_UpdateCanton` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_UpdateCanton`
BEFORE UPDATE ON `petsrescue`.`canton`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Cantón', 'Update', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_canton` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_canton`
BEFORE INSERT ON `petsrescue`.`canton`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Cantón', 'Insert');
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_DeleteDistrito` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_DeleteDistrito`
BEFORE DELETE ON `petsrescue`.`distrito`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Distrito', 'Delete', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_UpdateDistrito` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_UpdateDistrito`
BEFORE UPDATE ON `petsrescue`.`distrito`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Distrito', 'Update', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_distrito` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_distrito`
BEFORE INSERT ON `petsrescue`.`distrito`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Distrito', 'Insert');
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_DeleteBarrio` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_DeleteBarrio`
BEFORE DELETE ON `petsrescue`.`barrio`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Barrio', 'Delete', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_UpdateBarrio` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_UpdateBarrio`
BEFORE UPDATE ON `petsrescue`.`barrio`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Barrio', 'Update', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_barrio` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_barrio`
BEFORE INSERT ON `petsrescue`.`barrio`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Barrio', 'Insert');
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_DeleteColorMascota` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_DeleteColorMascota`
BEFORE DELETE ON `petsrescue`.`colormascota`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Color Mascota', 'Delete', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_UpdateColorMascota` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_UpdateColorMascota`
BEFORE UPDATE ON `petsrescue`.`colormascota`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Color Mascota', 'Update', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_colorMascota` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_colorMascota`
BEFORE INSERT ON `petsrescue`.`colormascota`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Color Mascota', 'Insert');
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_DeleteDireccion` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_DeleteDireccion`
BEFORE DELETE ON `petsrescue`.`direccion`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Dirección', 'Delete', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_direccion` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_direccion`
BEFORE INSERT ON `petsrescue`.`direccion`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Dirección', 'Insert');
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_DeleteGenero` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_DeleteGenero`
BEFORE DELETE ON `petsrescue`.`genero`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Género', 'Delete', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_UpdateGenero` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_UpdateGenero`
BEFORE UPDATE ON `petsrescue`.`genero`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Género', 'Update', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_genero` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_genero`
BEFORE INSERT ON `petsrescue`.`genero`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Género', 'Insert');
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_DeletePersona` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_DeletePersona`
BEFORE DELETE ON `petsrescue`.`persona`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'PERSONA', 'Delete', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_UpdatePersona` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_UpdatePersona`
BEFORE UPDATE ON `petsrescue`.`persona`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'PERSONA', 'Update', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_persona` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_persona`
BEFORE INSERT ON `petsrescue`.`persona`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'PERSONA', 'Insert');
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_DeleteDireccionXpersona` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_DeleteDireccionXpersona`
BEFORE DELETE ON `petsrescue`.`direccionxpersona`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Dirección por persona', 'Delete', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_direccionXpersona` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_direccionXpersona`
BEFORE INSERT ON `petsrescue`.`direccionxpersona`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Dirección por Persona', 'Insert');
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_DeleteTipoFoto` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_DeleteTipoFoto`
BEFORE DELETE ON `petsrescue`.`tipofoto`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Tipo Foto', 'Delete', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_UpdateTipoFoto` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_UpdateTipoFoto`
BEFORE UPDATE ON `petsrescue`.`tipofoto`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Tipo Foto', 'Update', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_tipoFoto` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_tipoFoto`
BEFORE INSERT ON `petsrescue`.`tipofoto`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Tipo Foto', 'Insert');
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_DeleteFoto` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_DeleteFoto`
BEFORE DELETE ON `petsrescue`.`foto`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Foto', 'Delete', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_foto` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_foto`
BEFORE INSERT ON `petsrescue`.`foto`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Foto', 'Insert');
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_DeleteEstadoMascota` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_DeleteEstadoMascota`
BEFORE DELETE ON `petsrescue`.`estadomascota`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Estado Mascota', 'Delete', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_UpdateEstadoMascotas` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_UpdateEstadoMascotas`
BEFORE UPDATE ON `petsrescue`.`estadomascota`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Estado Mascota', 'Update', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_estadoMascota` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_estadoMascota`
BEFORE INSERT ON `petsrescue`.`estadomascota`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Estado Mascota', 'Insert');
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_DeleteTipoMascota` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_DeleteTipoMascota`
BEFORE DELETE ON `petsrescue`.`tipomascota`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Tipo Mascota', 'Delete', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_UpdateTipoMascota` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_UpdateTipoMascota`
BEFORE UPDATE ON `petsrescue`.`tipomascota`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Tipo Mascota', 'Update', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_tipoMascota` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_tipoMascota`
BEFORE INSERT ON `petsrescue`.`tipomascota`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Tipo Mascota', 'Insert');
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_DeleteRazaMascota` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_DeleteRazaMascota`
BEFORE DELETE ON `petsrescue`.`razamascota`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Raza Mascota', 'Delete', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_UpdateRazaMascota` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_UpdateRazaMascota`
BEFORE UPDATE ON `petsrescue`.`razamascota`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Raza Mascota', 'Update', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_razaMascota` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_razaMascota`
BEFORE INSERT ON `petsrescue`.`razamascota`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Raza Mascota', 'Insert');
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_DeleteTamanoMascota` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_DeleteTamanoMascota`
BEFORE DELETE ON `petsrescue`.`tamanomascota`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Tamaño Mascota', 'Delete', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_UpdateTamanoMascota` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_UpdateTamanoMascota`
BEFORE UPDATE ON `petsrescue`.`tamanomascota`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Tamaño Mascota', 'Update', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_tamanoMascota` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_tamanoMascota`
BEFORE INSERT ON `petsrescue`.`tamanomascota`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Tamaño Mascota', 'Insert');
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_DeleteMascota` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_DeleteMascota`
BEFORE DELETE ON `petsrescue`.`mascota`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Mascota', 'Delete', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_UpdateMascota` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_UpdateMascota`
BEFORE UPDATE ON `petsrescue`.`mascota`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Mascota', 'Update', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_mascota` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_mascota`
BEFORE INSERT ON `petsrescue`.`mascota`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Mascota', 'Insert');
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_DeleteMascotasEncontradas` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_DeleteMascotasEncontradas`
BEFORE DELETE ON `petsrescue`.`mascotasencontradas`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Mascotas Encontradas', 'Delete', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_UpdateMascotaEncontrada` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_UpdateMascotaEncontrada`
BEFORE UPDATE ON `petsrescue`.`mascotasencontradas`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Mascotas Encontradas', 'Update', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_mascotasEncontradas` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_mascotasEncontradas`
BEFORE INSERT ON `petsrescue`.`mascotasencontradas`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Mascotas Encontradas', 'Insert');
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_DeletedireccionXreporteEncuentro` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_DeletedireccionXreporteEncuentro`
BEFORE DELETE ON `petsrescue`.`direccionxreporteencuentro`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Dirección por Reporte Encuentro', 'Delete', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_direccionXreporteEncuentro` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_direccionXreporteEncuentro`
BEFORE INSERT ON `petsrescue`.`direccionxreporteencuentro`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Dirección por Reporte Encuentro', 'Insert');
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_DeleteMascotasPerdidas` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_DeleteMascotasPerdidas`
BEFORE DELETE ON `petsrescue`.`mascotasperdidas`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Mascotas Perdidas', 'Delete', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_UpdateMascotasPerdidas` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_UpdateMascotasPerdidas`
BEFORE UPDATE ON `petsrescue`.`mascotasperdidas`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Mascotas Perdidas', 'Update', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_mascotasPerdidas` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_mascotasPerdidas`
BEFORE INSERT ON `petsrescue`.`mascotasperdidas`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Mascotas Perdidas', 'Insert');
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_DeleteDireccionXreportePerdida` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_DeleteDireccionXreportePerdida`
BEFORE DELETE ON `petsrescue`.`direccionxreporteperdida`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Dirección por Reporte Perdida', 'Delete', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_direccionXreportePerdida` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_direccionXreportePerdida`
BEFORE INSERT ON `petsrescue`.`direccionxreporteperdida`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Dirección por Reporte Perdida', 'Insert');
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_DeleteTipoTelefono` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_DeleteTipoTelefono`
BEFORE DELETE ON `petsrescue`.`tipotelefono`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Tipo Télefono', 'Delete', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_UpdateTipoTelefono` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_UpdateTipoTelefono`
BEFORE UPDATE ON `petsrescue`.`tipotelefono`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Tipo Télefono', 'Update', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_tipoTelefono` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_tipoTelefono`
BEFORE INSERT ON `petsrescue`.`tipotelefono`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Tipo Télefono', 'Insert');
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_DeleteTelefonoXPersona` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_DeleteTelefonoXPersona`
BEFORE DELETE ON `petsrescue`.`telefonoxpersona`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Télefono por Persona', 'Delete', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_UpdateTelefonoXpersona` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_UpdateTelefonoXpersona`
BEFORE UPDATE ON `petsrescue`.`telefonoxpersona`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Télefono por Persona', 'Update', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_telefonoXpersona` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_telefonoXpersona`
BEFORE INSERT ON `petsrescue`.`telefonoxpersona`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Télefono por Persona', 'Insert');
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_DeleteTipoUsuario` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_DeleteTipoUsuario`
BEFORE DELETE ON `petsrescue`.`tipousuario`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Tipo Usuario', 'Delete', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_UpdateTipoUsuario` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_UpdateTipoUsuario`
BEFORE UPDATE ON `petsrescue`.`tipousuario`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Tipo Usuario', 'Update', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_tipoUsuario` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_tipoUsuario`
BEFORE INSERT ON `petsrescue`.`tipousuario`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Tipo Usuario', 'Insert');
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_DeleteUsuario` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_DeleteUsuario`
BEFORE DELETE ON `petsrescue`.`usuario`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Usuario', 'Delete', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_UpdateUsuario` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_UpdateUsuario`
BEFORE UPDATE ON `petsrescue`.`usuario`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion, FechaDeModificacion)
     values (SYSDATE(),'Usuario', 'Update', SYSDATE());
END$$


USE `petsrescue`$$
DROP TRIGGER IF EXISTS `petsrescue`.`before_usuario` $$
USE `petsrescue`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `petsrescue`.`before_usuario`
BEFORE INSERT ON `petsrescue`.`usuario`
FOR EACH ROW
BEGIN
 
    INSERT INTO bitacora (FechaDeCreacion, nom_tabla, nom_accion)
     values (SYSDATE(),'Usuario', 'Insert');
END$$


DELIMITER ;
