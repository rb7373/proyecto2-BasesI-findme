<?php

include('../config.php');

$correo = $_POST["correo"];

$existePersona = False;

$stmt = $conn->query('call obtenerPersonas()');



foreach ($stmt as $row){ {
	
	$email = $row['email_Persona']; // se debe poner exactamente el mismo nombre de columna.
	if($email == $correo){
		$existePersona = True;
	}

}

if ($existePersona) {
	
/*	echo '<script language="javascript">';
	echo 'alert("Esta persona ya fue registrada. Por favor Verifique sus datos.")';
	echo '</script>';*/

	echo "<p>Este correo ya existe</p>";
	echo "<input name='existe' id='existe' type='hidden' value='0'>";
}
else{
	echo "<p>El correo no ha sido registrado aún</p>";
	echo "<input name='existe' id='existe' type='hidden' value='1'>";
}

}

?>