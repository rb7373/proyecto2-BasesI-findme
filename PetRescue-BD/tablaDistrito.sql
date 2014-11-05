CREATE TABLE Distrito
(  idDistrito NUMBER(8),
   CONSTRAINT pk_idDistrito primary key(idDistrito)
    using index
        tablespace  PET_Ind pctfree 20
        storage(initial 10K next 10K pctincrease 0),
        
   idCanton NUMBER(8)
   CONSTRAINT Distrito_idCanton_nn NOT NULL,
   
   nombre_distrito varchar2(100)
   CONSTRAINT Distrito_nombre_distrito_nn NOT NULL,
   
   FechaDeCreacion DATE,
   
   FechaDeModificacion DATE,
  
   CreadoPor INT,
   
   ModificadoPor INT
 
  );

     
CREATE PUBLIC SYNONYM Distrito for Pet.Distrito;

COMMENT ON TABLE Pet.Distrito IS 'Contiene los nombres de los distritos de cada canton';