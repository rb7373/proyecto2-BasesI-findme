-- -----------------------------------------------------
-- Table Bitacora
-- -----------------------------------------------------

create table bitacora(
	idBitacora INTEGER auto_increment NOT NULL,
	nom_tabla VARCHAR(30),
	nom_campo VARCHAR(30),
	FechaDeCreacion DATE,
	FechaDeModificacion DATE,
	valor_anterior VARCHAR(100),
	valor_actual VARCHAR(100),
primary key (idBitacora));
