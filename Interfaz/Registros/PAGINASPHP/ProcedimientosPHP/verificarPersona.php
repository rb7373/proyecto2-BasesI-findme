<?php

include('../config.php');

$correo = $_GET["keyword"];

$stmt = $conn->prepare("call existeEmail(:correo)");
$stmt->bindValue(':correo',$correo );	
	
$stmt->execute();

$resultado =  $stmt->fetchAll(PDO::FETCH_ASSOC);

//print_r ($resultado);

if ($resultado != null){
	
	echo "El correo no se encuentra disponible";
	echo "<input name='existeEmail' id='existeEmail' type='hidden' value='0'>";
}
else{
	//echo "El usuario NO existe";
	echo "<input name='existeEmail' id='existeEmail' type='hidden' value='1'>";
}



?>