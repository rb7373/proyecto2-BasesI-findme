CREATE TABLE TipoMascota
(  idTipoMascota NUMBER(8),
   CONSTRAINT pk_idTipoMascota primary key(idTipoMascota)
    using index
        tablespace  PET_Ind pctfree 20
        storage(initial 10K next 10K pctincrease 0),
  
   tipo varchar2(100)
   CONSTRAINT TipoMascota_tipo_nn NOT NULL,
   
   FechaDeCreacion DATE,
   
   FechaDeModificacion DATE,
  
   CreadoPor INT,
   
   ModificadoPor INT
 
  );

     
CREATE PUBLIC SYNONYM TipoMascota for Pet.TipoMascota;

COMMENT ON TABLE Pet.TipoMascota IS 'Contiene todos los tipos de mascotas';