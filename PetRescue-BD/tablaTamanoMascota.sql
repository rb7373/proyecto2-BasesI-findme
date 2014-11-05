CREATE TABLE TamanoMascota
(  idTamanoMascota NUMBER(8),
   CONSTRAINT pk_idTamanoMascota primary key(idTamanoMascota)
    using index
        tablespace  PET_Ind pctfree 20
        storage(initial 10K next 10K pctincrease 0),
  
   tamano varchar2(100)
   CONSTRAINT TamanoMascota_tamano_nn NOT NULL,
   
   FechaDeCreacion DATE,
   
   FechaDeModificacion DATE,
  
   CreadoPor INT,
   
   ModificadoPor INT
 
  );

     
CREATE PUBLIC SYNONYM TamanoMascota for Pet.TamanoMascota;

COMMENT ON TABLE Pet.TamanoMascota IS 'Contiene los diferentes tamaños que puede tener una mascota';