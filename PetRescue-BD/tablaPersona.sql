CREATE TABLE Persona
(  idPersona NUMBER(8),
   CONSTRAINT pk_idPersona primary key(idPersona)
    using index
        tablespace  PET_Ind pctfree 20
        storage(initial 10K next 10K pctincrease 0),
        
   nombre_persona varchar2(100)
   CONSTRAINT persona_personanombre_nn NOT NULL,
   
   pApellido_persona varchar2(100)
   CONSTRAINT persona_pApellidoPersona_nn NOT NULL,
   
   sApellido_persona varchar2(100)
   CONSTRAINT persona_sApellidoPersona_nn NOT NULL,
   
   email_persona varchar2(40)
   CONSTRAINT persona_emailPersona_nn NOT NULL,
   CONSTRAINT persona_email_uk unique (email_persona),
   
   sexo_persona NUMBER(4)
   CONSTRAINT persona_sexoPersona_nn NOT NULL,
   
   FechaDeCreacion DATE,
   
   FechaDeModificacion DATE,
  
   CreadoPor INT,
   
   ModificadoPor INT
 
  );

     
CREATE PUBLIC SYNONYM persona for Pet.persona;

COMMENT ON TABLE Pet.persona IS 'Contiene los datos de una persona que se registra como usuario en el Sistema';