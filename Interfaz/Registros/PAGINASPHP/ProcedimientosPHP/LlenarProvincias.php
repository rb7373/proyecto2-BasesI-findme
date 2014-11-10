<?php
include('../config.php');
	$stmt = $conn->query('call proc_obtenerProvincia();');

echo "<option value=''>Por favor seleccione una provincia:</option>";
//loop through all returned rows
while($row = $stmt->fetch(PDO::FETCH_OBJ)) {
    echo "<option value='$row->idProvincia'>$row->nombre_provincia</option>";
	}
?>