CREATE TABLE Foto
(  idFoto NUMBER(8),
   CONSTRAINT pk_idFoto primary key(idFoto)
    using index
        tablespace  PET_Ind pctfree 20
        storage(initial 10K next 10K pctincrease 0),
        
   id_tipo_foto NUMBER(8)
   CONSTRAINT Foto_id_tipo_foto_nn NOT NULL,
   
   foto BLOB
   CONSTRAINT Foto_foto_nn NOT NULL,
   
   descripcion varchar2(1000)
   CONSTRAINT Foto_descripcion_nn NOT NULL,
   
   mime varchar2(255)
   CONSTRAINT Foto_mime_nn NOT NULL,
   
   FechaDeCreacion DATE,
   
   FechaDeModificacion DATE,
  
   CreadoPor INT,
   
   ModificadoPor INT
 
  );

     
CREATE PUBLIC SYNONYM Foto for Pet.Foto;

COMMENT ON TABLE Pet.Foto IS 'Colección de fotos';