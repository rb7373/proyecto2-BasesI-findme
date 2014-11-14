drop trigger if exists before_insAdopcion;

DELIMITER //

CREATE TRIGGER before_insAdopcion
BEFORE INSERT
   ON adopciones FOR EACH ROW
   
BEGIN

   DECLARE vUser varchar(50);

   -- Find username of person performing INSERT into table
   SELECT USER() INTO vUser;
   
   -- Update create_date field to current system date
   SET NEW.FechaDeCreacion = SYSDATE();
   
   -- Update created_by field to the username of the person performing the INSERT
   SET NEW.CreadoPor= vUser;
   
END; //

DELIMITER ;


drop trigger if exists before_insAsociacion;

DELIMITER //

CREATE TRIGGER before_insAsociacion
BEFORE INSERT
   ON asociaciones FOR EACH ROW
   
BEGIN

   DECLARE vUser varchar(50);

   -- Find username of person performing INSERT into table
   SELECT USER() INTO vUser;
   
   -- Update create_date field to current system date
   SET NEW.FechaDeCreacion = SYSDATE();
   
   -- Update created_by field to the username of the person performing the INSERT
   SET NEW.CreadoPor= vUser;
   
END; //

DELIMITER ;

#**************************************************************+

drop trigger if exists before_insMascota;

DELIMITER //

CREATE TRIGGER before_insMascota
BEFORE INSERT
   ON mascota FOR EACH ROW
   
BEGIN

   DECLARE vUser varchar(50);

   -- Find username of person performing INSERT into table
   SELECT USER() INTO vUser;
   
   -- Update create_date field to current system date
   SET NEW.FechaDeCreacion = SYSDATE();
   
   -- Update created_by field to the username of the person performing the INSERT
   SET NEW.CreadoPor= vUser;
   
END; //

DELIMITER ;

#*************************************
drop trigger if exists before_insMascotaEncontrada;

DELIMITER //

CREATE TRIGGER before_insMascotaEncontrada
BEFORE INSERT
   ON mascotasencontradas FOR EACH ROW
   
BEGIN

   DECLARE vUser varchar(50);

   -- Find username of person performing INSERT into table
   SELECT USER() INTO vUser;
   
   -- Update create_date field to current system date
   SET NEW.FechaDeCreacion = SYSDATE();
   
   -- Update created_by field to the username of the person performing the INSERT
   SET NEW.CreadoPor= vUser;
   
END; //

DELIMITER ;

#***************************************************

drop trigger if exists before_insMascotaPerdida;

DELIMITER //

CREATE TRIGGER before_insMascotaPerdida
BEFORE INSERT
   ON mascotasperdidas FOR EACH ROW
   
BEGIN

   DECLARE vUser varchar(50);

   -- Find username of person performing INSERT into table
   SELECT USER() INTO vUser;
   
   -- Update create_date field to current system date
   SET NEW.FechaDeCreacion = SYSDATE();
   
   -- Update created_by field to the username of the person performing the INSERT
   SET NEW.CreadoPor= vUser;
   
END; //

DELIMITER ;

#***************************************

drop trigger if exists before_insPersona;

DELIMITER //

CREATE TRIGGER before_insPersona
BEFORE INSERT
   ON persona FOR EACH ROW
   
BEGIN

   DECLARE vUser varchar(50);

   -- Find username of person performing INSERT into table
   SELECT USER() INTO vUser;
   
   -- Update create_date field to current system date
   SET NEW.FechaDeCreacion = SYSDATE();
   
   -- Update created_by field to the username of the person performing the INSERT
   SET NEW.CreadoPor= vUser;
   
END; //

DELIMITER ;


drop trigger if exists before_insUsuario;

DELIMITER //

CREATE TRIGGER before_insUsuario
BEFORE INSERT
   ON usuario FOR EACH ROW
   
BEGIN

   DECLARE vUser varchar(50);

   -- Find username of person performing INSERT into table
   SELECT USER() INTO vUser;
   
   -- Update create_date field to current system date
   SET NEW.FechaDeCreacion = SYSDATE();
   
   -- Update created_by field to the username of the person performing the INSERT
   SET NEW.CreadoPor= vUser;
   
END; //

DELIMITER ;