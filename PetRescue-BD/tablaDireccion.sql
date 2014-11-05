CREATE TABLE Direccion
(  idDireccion NUMBER(8),
   CONSTRAINT pk_idDireccion primary key(idDireccion)
    using index
        tablespace  PET_Ind pctfree 20
        storage(initial 10K next 10K pctincrease 0),
        
   provincia_id NUMBER(8)
   CONSTRAINT Direccion_provincia_id_nn NOT NULL,
   
   canton_id NUMBER(8)
   CONSTRAINT Direccion_canton_id_nn NOT NULL,
   
   distrito_id NUMBER(8)
   CONSTRAINT Direccion_distrito_id_nn NOT NULL,
   
   barrio_id NUMBER(8)
   CONSTRAINT Direccion_barrio_id_nn NOT NULL,
   
   Descripcion varchar2(100)
   CONSTRAINT Direccion_Descripcion_nn NOT NULL,
   
   FechaDeCreacion DATE,
   
   FechaDeModificacion DATE,
  
   CreadoPor INT,
   
   ModificadoPor INT
 
  );

     
CREATE PUBLIC SYNONYM Direccion for Pet.Direccion;

COMMENT ON TABLE Pet.Direccion IS 'Contiene las direcciones de todos los registros realizados';