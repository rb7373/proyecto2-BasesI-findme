<?php

include('../config.php');

$usuario = $_POST["username"];

$existeUsuario = False;

$stmt = $conn->query('call obtenerUsernames()');



foreach ($stmt as $row){ {
	
	$username = $row['username']; // se debe poner exactamente el mismo nombre de columna.
	if($username == $usuario){
		$existeUsuario = True;
	}

}

if ($existeUsuario) {
	echo "<p>Este username no esta disponible.</p>";
	echo "<input name='existeU' id='existeU' type='hidden' value='0'>";
}
else{
	echo "<p>Puede utilizar este username</p>";
	echo "<input name='existeU' id='existeU' type='hidden' value='1'>";
}

}

?>