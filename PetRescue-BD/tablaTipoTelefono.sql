CREATE TABLE tipoTelefono
(  idTipoTelefono NUMBER(8),
   CONSTRAINT pk_idTipoTelefono primary key(idTipoTelefono)
    using index
        tablespace  PET_Ind pctfree 20
        storage(initial 10K next 10K pctincrease 0),
        
   tipo_telefono varchar2(100)
   CONSTRAINT tipoTelefono_tipoTelefono_nn NOT NULL,
   
   FechaDeCreacion DATE,
   
   FechaDeModificacion DATE,
  
   CreadoPor INT,
   
   ModificadoPor INT
 
  );

     
CREATE PUBLIC SYNONYM tipoTelefono for Pet.tipoTelefono;

COMMENT ON TABLE Pet.tipoTelefono IS 'Contiene los tipos de telefono que una persona puede tener';