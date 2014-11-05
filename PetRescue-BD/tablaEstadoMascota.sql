CREATE TABLE EstadoMascota
(  idEstadoMascota NUMBER(8),
   CONSTRAINT pk_idEstadoMascota primary key(idEstadoMascota)
    using index
        tablespace  PET_Ind pctfree 20
        storage(initial 10K next 10K pctincrease 0),
  
   estado varchar2(100)
   CONSTRAINT EstadoMascota_estado_nn NOT NULL,
   
   FechaDeCreacion DATE,
   
   FechaDeModificacion DATE,
  
   CreadoPor INT,
   
   ModificadoPor INT
 
  );

     
CREATE PUBLIC SYNONYM EstadoMascota for Pet.EstadoMascota;

COMMENT ON TABLE Pet.EstadoMascota IS 'Contiene todos los estados que podria tener una mascota';