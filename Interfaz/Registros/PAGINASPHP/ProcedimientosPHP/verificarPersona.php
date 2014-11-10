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
	echo "<p>Esta persona ya se encuentra registrada.</p>";
	echo "<input name='existePersona' id='existePersona' type='hidden' value='0'>";
}
else{
	echo "<p>Esta persona no se encuentra registrada.</p>";
	echo "<input name='existePersona' id='existePersona' type='hidden' value='1'>";
}

}