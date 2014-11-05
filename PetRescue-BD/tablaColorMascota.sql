CREATE TABLE ColorMascota
(  idColorMascota NUMBER(8),
   CONSTRAINT pk_idColorMascota primary key(idColorMascota)
    using index
        tablespace  PET_Ind pctfree 20
        storage(initial 10K next 10K pctincrease 0),
  
   Color varchar2(100)
   CONSTRAINT ColorMascota_Color_nn NOT NULL,
   
   FechaDeCreacion DATE,
   
   FechaDeModificacion DATE,
  
   CreadoPor INT,
   
   ModificadoPor INT
 
  );

     
CREATE PUBLIC SYNONYM ColorMascota for Pet.ColorMascota;

COMMENT ON TABLE Pet.ColorMascota IS 'Contiene todos los colores que podria tener una mascota';