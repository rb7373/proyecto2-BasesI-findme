CREATE TABLE RazaMascota
(  idRazaMascota NUMBER(8),
   CONSTRAINT pk_idRazaMascota primary key(idRazaMascota)
    using index
        tablespace  PET_Ind pctfree 20
        storage(initial 10K next 10K pctincrease 0),
        
   idTipoMascota NUMBER(8)
   CONSTRAINT RazaMascota_idTipoMascota_nn NOT NULL,
   
   raza varchar2(100)
   CONSTRAINT RazaMascota_raza_nn NOT NULL,
   
   FechaDeCreacion DATE,
   
   FechaDeModificacion DATE,
  
   CreadoPor INT,
   
   ModificadoPor INT
 
  );

     
CREATE PUBLIC SYNONYM RazaMascota for Pet.RazaMascota;

COMMENT ON TABLE Pet.RazaMascota IS 'Contiene los nombres de las razas para los diferentes tipos de mascota';