CREATE USER Pet
IDENTIFIED BY Pet
DEFAULT TABLESPACE pet_data
QUOTA 10M ON pet_data
TEMPORARY TABLESPACE temp
QUOTA 5M ON system;

create ROLE pet IDENTIFIED BY pet;