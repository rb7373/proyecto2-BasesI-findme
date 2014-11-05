CREATE TABLE TipoFoto
(  idTipoFoto NUMBER(8),
   CONSTRAINT pk_idTipoFoto primary key(idTipoFoto)
    using index
        tablespace  PET_Ind pctfree 20
        storage(initial 10K next 10K pctincrease 0),
        
   descripcion varchar2(100)
   CONSTRAINT tipoFototipo_descripcion_nn NOT NULL,
   
   FechaDeCreacion DATE,
   
   FechaDeModificacion DATE,
  
   CreadoPor INT,
   
   ModificadoPor INT,
   
   mime varchar2(255)
   CONSTRAINT tipoFototipo_mime_nn NOT NULL
 
  );

     
CREATE PUBLIC SYNONYM TipoFoto for Pet.TipoFoto;

COMMENT ON TABLE Pet.TipoFoto IS 'Contiene los tipos de fotos';