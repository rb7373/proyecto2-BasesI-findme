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

