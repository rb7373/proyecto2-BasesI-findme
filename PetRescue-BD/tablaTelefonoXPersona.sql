CREATE TABLE telefonoXpersona
(  idtelefonoXpersona NUMBER(8),
   CONSTRAINT pk_idtelefonoXpersona primary key(idtelefonoXpersona)
    using index
        tablespace  PET_Ind pctfree 20
        storage(initial 10K next 10K pctincrease 0),
        
   Persona_id NUMBER(8)
   CONSTRAINT telefonoXpersona_persona_id_nn NOT NULL,
   
   tipoTelefono_id NUMBER(8)
   CONSTRAINT telefonoXpersona_tipTelId_nn NOT NULL,
   
   numeroTelefono varchar2(100)
   CONSTRAINT telefonoXpersona_numTel_nn NOT NULL,
   
   FechaDeCreacion DATE,
   
   FechaDeModificacion DATE,
  
   CreadoPor INT,
   
   ModificadoPor INT
 
  );

     
CREATE PUBLIC SYNONYM telefonoXpersona for Pet.telefonoXpersona;

COMMENT ON TABLE Pet.telefonoXpersona IS 'Contiene los teléfonos de las personas registradas en el sistema';