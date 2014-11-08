-- -----------------------------------------------------
-- Table `petsrescue`.`DireccionXAsociacion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petsrescue`.`DireccionXAsociacion` ;

CREATE TABLE IF NOT EXISTS `petsrescue`.`DireccionXAsociacion` (
  `idDireccionXAsociacion` INT NOT NULL AUTO_INCREMENT,
  `idAsociaciones` INT NOT NULL,
  `idDireccion` INT NOT NULL,
  `FechaDeCreacion` DATE NULL,
  `FechaDeModificacion` DATE NULL,
  `CreadoPor` INT NULL,
  `ModificadoPor` INT NULL,
  PRIMARY KEY (`idDireccionXAsociacion`))
ENGINE = InnoDB;

ALTER TABLE direccionxasociacion add foreign key (idAsociaciones) references asociaciones(idAsociaciones);
alter table direccionxasociacion add foreign key (idDireccion) references direccion(idDireccion_pk);