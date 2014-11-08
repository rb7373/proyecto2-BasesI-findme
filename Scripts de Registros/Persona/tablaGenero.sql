DROP TABLE IF EXISTS `petsrescue`.`Genero` ;

CREATE TABLE IF NOT EXISTS `petsrescue`.`Genero` (
  `idGenero` INT NOT NULL AUTO_INCREMENT,
  
  `valor_genero` VARCHAR(50) NOT NULL,
  `FechaDeCreacion` DATE NULL,
  `FechaDeModificacion` DATE NULL,
  `CreadoPor` INT NULL,
  `ModificadoPor` INT NULL,
  PRIMARY KEY (`idGenero`)
)
 
ENGINE = InnoDB;
