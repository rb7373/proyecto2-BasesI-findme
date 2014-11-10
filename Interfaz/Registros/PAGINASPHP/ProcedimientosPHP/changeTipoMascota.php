<?php
/*Primero incluimos la conexion*/
include('../config.php');


//Luego, ponemos el id que ocupamos en la variable $id
$id = $_GET['catID'];

// Llamanos al procedimiento, pasndole el parametro
$stmt = $conn->query('call obtenerRazasMascota('.$conn->quote($id).')');

// Devolvemos el valos por defecto que vaa tener el combobox
echo "<option value=''>Raza</option>";

// devolvemos los resultados como echos
while($row = $stmt->fetch(PDO::FETCH_OBJ)) {
    echo "<option value='$row->idRazaMascota'>$row->raza</option>";
}