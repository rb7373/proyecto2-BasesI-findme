<?php
include('../config.php');
	$stmt = $conn->query('call obtenerColoresMascota()');

echo "<option value=''>Color</option>";
//loop through all returned rows
while($row = $stmt->fetch(PDO::FETCH_OBJ)) {
    echo "<option value='$row->idColorMascota'>$row->color</option>";
	}
?>