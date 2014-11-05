CREATE TABLESPACE pet_Data
DATAFILE 'C:\app\Yas\oradata\dbprueba\petdata01.dbf'
SIZE 10M
REUSE
AUTOEXTEND ON
NEXT 512
MAXSIZE 200M;

--
-- PE: INDEX
--

CREATE TABLESPACE pet_Ind
DATAFILE 'C:\app\Yas\oradata\dbprueba\petind01.dbf'
SIZE 10M
REUSE
AUTOEXTEND ON
NEXT 512k
MAXSIZE 200M;
                                       