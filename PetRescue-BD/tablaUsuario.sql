CREATE TABLE Usuario
(  idUsuario NUMBER(8),
   CONSTRAINT pk_idUsuario primary key(idUsuario)
    using index
        tablespace  PET_Ind pctfree 20
        storage(initial 10K next 10K pctincrease 0),
  
   usuario_idPersona NUMBER(8)
   CONSTRAINT usuario_usuarioIdPersona_nn NOT NULL,
        
   username varchar2(100)
   CONSTRAINT Usuario_username_nn NOT NULL,
   
   contrasena varchar2(200)
   CONSTRAINT Usuario_contrasena_nn NOT NULL,
   
   idTipoUsuario NUMBER(8)
   CONSTRAINT usuario_idTipoUsuario_nn NOT NULL,
   
   idFotoUsuario NUMBER(8)
   CONSTRAINT usuario_idFotoUsuario_nn NOT NULL,
   
   FechaDeCreacion DATE,
   
   FechaDeModificacion DATE,
  
   CreadoPor INT,
   
   ModificadoPor INT
 
  );

     
CREATE PUBLIC SYNONYM Usuario for Pet.Usuario;

COMMENT ON TABLE Pet.Usuario IS 'Contiene los usuarios registrados en el sistema';