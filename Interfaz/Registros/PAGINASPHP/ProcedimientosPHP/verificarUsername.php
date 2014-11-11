<?php

include('../config.php');

$username = $_GET["keyword"];

$stmt = $conn->prepare("call existeUsername(:username)");
$stmt->bindValue(':username',$username);	
	
$stmt->execute();

$resultado =  $stmt->fetchAll(PDO::FETCH_ASSOC);

//print_r ($resultado);

if ($resultado != null){
	
	echo "El username no se encuentra disponible";
	echo "<input name='existeUsername' id='existeUsername' type='hidden' value='0'>";
}
else{
	//echo "El usuario NO existe";
	echo "<input name='existeUsername' id='existeUsername' type='hidden' value='1'>";
}



?>