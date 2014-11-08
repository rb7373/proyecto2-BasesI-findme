USE petsrescue;


DROP PROCEDURE IF EXISTS proc_insertar_genero;

DELIMITER //

CREATE PROCEDURE proc_insertar_genero(
  genero_valor varchar(50)
)

begin

INSERT INTO genero(
  valor_genero
)
VALUES(
  genero_valor
);
end//

DELIMITER ;

call proc_insertar_genero("Femenino");

call proc_insertar_genero("Masculino");




