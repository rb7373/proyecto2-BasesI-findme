<?php

header('Content-Type: text/html; charset=UTF-8');

require("Conexion/conexionBasicaPHP.php");

$blobObj = new BobDemo();

if ($blobObj){

	echo 'Conexion EXE';
	echo '<br>';
	
	$resultado = $blobObj->obtenerRazasMascotas();

	//print_r($resultado);

	if ($resultado!= null){

			foreach ($resultado as $row){
				
				//$row = $row[0];
				
				echo $row['tipo'];
				echo '<br>';
			}
	}


}
else{

	echo 'Error de conexión';
	echo '<br>';

}




?>