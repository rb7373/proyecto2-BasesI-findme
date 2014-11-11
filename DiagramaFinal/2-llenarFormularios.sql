USE petsrescue;

# Llenar el catalogo del estado Mascotas
call proc_insertar_estado_mascota("Perdido");
call proc_insertar_estado_mascota("Encontrado");
call proc_insertar_estado_mascota("Adoptado");

#Llenar Catalogo Tamano Mascota
call proc_insertar_tamano_mascota('Grande');
call proc_insertar_tamano_mascota('Mediano');
call proc_insertar_tamano_mascota('Pequeño');

#Llenar el catalogo Color Mascota
call proc_insertar_color_mascota('Negro');
call proc_insertar_color_mascota('Blanco');
call proc_insertar_color_mascota('Café');
call proc_insertar_color_mascota('Gris');
call proc_insertar_color_mascota('Pintado');

#Llenar el catalogo de Tipo Mascota
call proc_insertar_tipo_mascota('Perro');
call proc_insertar_tipo_mascota('Gato');
call proc_insertar_tipo_mascota('Conejo');
call proc_insertar_tipo_mascota('Caballo');
call proc_insertar_tipo_mascota('Perico');
call proc_insertar_tipo_mascota('Iguana');
call proc_insertar_tipo_mascota('Mono');
call proc_insertar_tipo_mascota('Hamster');

#Llenar el catálogo Raza Mascota
call proc_insertar_raza_mascota('Labrador', 1);
call proc_insertar_raza_mascota('Puddle', 1);
call proc_insertar_raza_mascota('Chihuahua', 1);
call proc_insertar_raza_mascota('Buldog', 1);
call proc_insertar_raza_mascota('French Puddle', 1);
call proc_insertar_raza_mascota('Doberman', 1);
call proc_insertar_raza_mascota('Doberman Pincher', 1);
call proc_insertar_raza_mascota('Pitbull', 1);
call proc_insertar_raza_mascota('American Satanford', 1);
call proc_insertar_raza_mascota('Salchicha', 1);
call proc_insertar_raza_mascota('Raza Única', 1);
call proc_insertar_raza_mascota('Raza Única', 2);
call proc_insertar_raza_mascota('Bengala', 2);
call proc_insertar_raza_mascota('Angola', 2);


#Lenar catálogo de direcciones

USE petsrescue;

#Insertar provincias

call proc_insertar_provincia("San José");
call proc_insertar_provincia("Alajuela");
call proc_insertar_provincia("Cartago");
call proc_insertar_provincia("Heredia");
call proc_insertar_provincia("Limón");
call proc_insertar_provincia("Guanacaste");
call proc_insertar_provincia("Puntarenas");

#insertar cantón

call proc_insertar_canton('San José',1);
call proc_insertar_canton('Escazú',1);
call proc_insertar_canton('Desamparados',1);
call proc_insertar_canton('Puriscal',1);
call proc_insertar_canton('Tarrazú',1);
call proc_insertar_canton('Aserrí',1);
call proc_insertar_canton('Mora',1);


#Insertar distrito

call proc_insertar_distrito('Carmen',1);
call proc_insertar_distrito('Merced',1);
call proc_insertar_distrito('Hospital',1);
call proc_insertar_distrito('Catedral',1);
call proc_insertar_distrito('Zapote',1);

#Insertar barrio

call proc_insertar_barrio('Amón',1);
call proc_insertar_barrio('Aranjuez',1);
call proc_insertar_barrio('California',1);
call proc_insertar_barrio('Empalme',1);
call proc_insertar_barrio('Escalante',1);
call proc_insertar_barrio('Otoya',1);

#INSERTAR DIRRECION

call proc_insertar_direccion(1,1,1,1,'Casa #3, 100 m sur de la iglesia');

call proc_insertar_genero("Femenino");
call proc_insertar_genero("Masculino");

call proc_insertar_tipotelefono("Casa");
call proc_insertar_tipotelefono("Celular");

USE petsrescue;

#Insertar tipousuario

call proc_insertar_tipousuario('Usuario administrador: tiene control total de la base de datos');
call proc_insertar_tipousuario('Usuario básico: puede solamente agregar cierto tipo de información');

#TIPOFOTO

call proc_insertar_tipofoto('Foto de perfil de usuario');

