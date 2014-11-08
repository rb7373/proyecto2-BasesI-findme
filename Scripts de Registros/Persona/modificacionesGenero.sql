USE petsrescue;


ALTER TABLE persona
ADD idGenero int;

ALTER TABLE persona
ADD FOREIGN KEY (idGenero)
REFERENCES genero(idGenero);



