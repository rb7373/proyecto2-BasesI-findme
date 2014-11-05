CREATE TABLE Canton
(  idCanton NUMBER(8),
   CONSTRAINT pk_idCanton primary key(idCanton)
    using index
        tablespace  PET_Ind pctfree 20
        storage(initial 10K next 10K pctincrease 0),
        
   idProvincia NUMBER(8)
   CONSTRAINT Canton_idProvincia_nn NOT NULL,
   
   nombre_canton varchar2(100)
   CONSTRAINT Canton_nombre_canton_nn NOT NULL,
   
   FechaDeCreacion DATE,
   
   FechaDeModificacion DATE,
  
   CreadoPor INT,
   
   ModificadoPor INT
 
  );

     
CREATE PUBLIC SYNONYM Canton for Pet.Canton;

COMMENT ON TABLE Pet.Canton IS 'Contiene los nombres de los cantones de cada provincia';