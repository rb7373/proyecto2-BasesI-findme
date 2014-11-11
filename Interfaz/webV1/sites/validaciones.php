<?php


header('Content-Type: text/html; charset=UTF-8');

require("conexionPHP.php");

$blobObj = new BobDemo();

if ($blobObj){

	echo 'Conexion EXE';
	echo '<br>';

	//if we got something through $_POST
	if ( isset($_POST['email'])) {

		// $usuario = $_POST['nombreUsuario'];
		
		// //echo 'Se va verificar si el usuario existe';
		// //echo '<br>';

		// $resultado = $blobObj->verificarUsuario($usuario);

		// //print_r($resultado);

		// if ($resultado!= null){

		// 	//foreach ($resultado as $row){

		// 		$row = $resultado[0];

		// 		$id = $row['idUsuario'];
		// 		$pass = $_POST['password'];

		// 		//echo $pass;

		// 		$personaID = $blobObj->verificarPass($id,$pass);

		// 		if ($personaID != null){
		// 			//print_r($personaID);
		// 			echo 'Bienvenido';
		// 			echo '<br>';
		// 		}
		// 		else{
		// 			echo 'Contraseña incorrecta';
		// 		}

				
		// 	//}
			
		// }
		// else{
		//  	echo 'Usuario incorrecto';
		// }

	}



}
else{

		echo 'Error de conexión';
		echo '<br>';

}




?>