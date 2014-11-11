-- -----------------------------------------------------
-- Table Bitacora
-- -----------------------------------------------------
drop table if exists bitacora;

create table bitacora(
	idBitacora INTEGER auto_increment NOT NULL,
	nom_tabla VARCHAR(30),
	nom_accion VARCHAR(50),
	FechaDeCreacion DATE,
	FechaDeModificacion DATE,
primary key (idBitacora));
