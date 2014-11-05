CREATE TABLE tipoUsuario
(  idTipoUsuario NUMBER(8),
   CONSTRAINT pk_idTipoUsuario primary key(idTipoUsuario)
    using index
        tablespace  PET_Ind pctfree 20
        storage(initial 10K next 10K pctincrease 0),
        
   descripcionTipo varchar2(500)
   CONSTRAINT tipoUsuario_descripcionTipo_nn NOT NULL,
   
   FechaDeCreacion DATE,
   
   FechaDeModificacion DATE,
  
   CreadoPor INT,
   
   ModificadoPor INT
 
  );

     
CREATE PUBLIC SYNONYM tipoUsuario for Pet.tipoUsuario;

COMMENT ON TABLE Pet.tipoUsuario IS 'Contiene los tipos de usuario';