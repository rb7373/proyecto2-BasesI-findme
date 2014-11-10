<?php
header('Content-Type: text/html; charset=ISO-8859-1');
include('../config.php');


$nombre = $_POST["nombre"];
$pApellido = $_POST["pApellido"];
$sApellido = $_POST["sApellido"];
$telefono = $_POST["telefono"];
$genero = $_POST["genero"];
$correo = $_POST["email"];
$username = $_POST["userName"];
$contrasenna = $_POST["password"];
$provincia = $_POST["provincias"];
$canton = $_POST["cantones"];
$distrito = $_POST["distritos"];
$barrio = $_POST["barrios"];
$descripcionD = $_POST["descripcionD"];

echo $nombre;
echo "<br>";
echo $pApellido;
echo "<br>";
echo  $sApellido;
echo "<br>";
echo $telefono;
echo "<br>";
echo "Genero: "; 
echo $genero;
echo "<br>";
echo $correo;
echo "<br>";
echo $username;
echo "<br>";
echo $contrasenna;
echo "<br>";
echo "Provincia: ";
echo $provincia;
echo "<br>"; 
echo "Canton: " ;
echo $canton;
echo "<br>"; 
echo "Distrito: ";
echo $distrito;
echo "<br>"; 
echo "Descripcion: ";
echo $descripcionD;
echo "<br>"; 
echo "Barrio: ";
echo $barrio;

/*La siquiente función verifica que la persona no haya sido registrada anteriormente*/

$existePersona = False;

$stmt = $conn->query('call obtenerPersonas()');


foreach ($stmt as $row) {
	echo $row['email_Persona'];
	if($row['email_Persona'] == $correo){
		$existePersona = True;
	}

}

?>