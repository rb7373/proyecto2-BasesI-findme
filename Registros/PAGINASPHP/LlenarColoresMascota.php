<?php
include('config.php');

	$resultado = $conn->obtenerTamanosMascota();
			
				//print_r($resultado);
			
				if ($resultado!= null){
			
						foreach ($resultado as $row){
							
							//$row = $row[0];
							
							$tamano = $row['tamano'];
							$tamanoID = $row['idTamanoMascota'];
							
							echo '<option value = '.$tamanoID.'>'.$tamano.'</option>';
							
							echo '<br>';
						}
				}
?>