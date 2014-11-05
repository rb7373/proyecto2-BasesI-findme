CREATE TABLE Barrio
(  idBarrio NUMBER(8),
   CONSTRAINT pk_idBarrio primary key(idBarrio)
    using index
        tablespace  PET_Ind pctfree 20
        storage(initial 10K next 10K pctincrease 0),
        
   idDistrito NUMBER(8)
   CONSTRAINT Barrio_idDistrito_nn NOT NULL,
   
   nombre_Barrio varchar2(100)
   CONSTRAINT Barrio_nombre_Barrio_nn NOT NULL,
   
   FechaDeCreacion DATE,
   
   FechaDeModificacion DATE,
  
   CreadoPor INT,
   
   ModificadoPor INT
 
  );

     
CREATE PUBLIC SYNONYM Barrio for Pet.Barrio;

COMMENT ON TABLE Pet.Barrio IS 'Contiene los nombres de los barrios de los distritos';