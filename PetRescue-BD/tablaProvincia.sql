CREATE TABLE Provincia
(  idProvincia NUMBER(8),
   CONSTRAINT pk_idProvincia primary key(idProvincia)
    using index
        tablespace  PET_Ind pctfree 20
        storage(initial 10K next 10K pctincrease 0),
        
   nombre_provincia varchar2(100)
   CONSTRAINT Provincia_nombreProvincia_nn NOT NULL,
   
   FechaDeCreacion DATE,
   
   FechaDeModificacion DATE,
  
   CreadoPor INT,
   
   ModificadoPor INT
 
  );

     
CREATE PUBLIC SYNONYM Provincia for Pet.Provincia;

COMMENT ON TABLE Pet.Provincia IS 'Contiene los nombres de las provincias';