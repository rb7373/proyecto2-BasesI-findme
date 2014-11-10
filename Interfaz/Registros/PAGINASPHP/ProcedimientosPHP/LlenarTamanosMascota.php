<?php
include('../config.php');
	$stmt = $conn->query('call  obtenerTamanosMascota()');
echo "<option value=''>Tamaño</option>";
//loop through all returned rows
while($row = $stmt->fetch(PDO::FETCH_OBJ)) {
    echo "<option value='$row->idTamanoMascota'>$row->tamano</option>";
	}
?>