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
$tipoTelefono = 1;
$tipoUsuario = 2;
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
echo "<br>"; 

/*La siquiente función verifica que la persona no haya sido registrada anteriormente*/

$existePersona = False;

$stmt = $conn->query('call obtenerPersonas()');


foreach ($stmt as $row) {
	//echo $row['email_Persona']; echo '<br>';
	if($row['email_Persona'] == $correo){
		$existePersona = True;
	}

}

if ($existePersona) {
	
	echo '<script language="javascript">';
	echo 'alert("Esta persona ya fue registrada. Por favor Verifique sus datos.")';
	echo '</script>';
	
}
else{
	
	// Si no existe la persona, la registra
	/*$stmt = $conn->query('proc_registrar_persona('.$conn->quote($nombre).','.$conn->quote($pApellido).','.$conn->quote($sApellido).','.$conn->quote($correo).','.$conn->quote($genero).','.$conn->quote($tipoTelefono).','.$conn->quote($telefono).','.$conn->quote($username).','.$conn->quote($contrasenna).','.$conn->quote($tipoUsuario).','.$conn->quote($provincia).','.$conn->quote($canton).','.$conn->quote($distrito).','.$conn->quote($barrio).','.$conn->quote($descripcionD).')');*/
	
	
$stmt = $conn->prepare('proc_registrar_persona(:nombre, :papellido,:sapellido,:email,:genero,:tipo_telefono,:numTelefono,:username,:password,:tipoUsuario,:provincia,:canton,:distrito,:barrio,:direccion');

$stmt->bindParam(':nombre', $nombre);
$stmt->bindParam(':papellido', $pApellido);
$stmt->bindParam(':sapellido', $sApellido);	
$stmt->bindParam(':email', $correo);
$stmt->bindParam(':genero', $genero);	
$stmt->bindParam(':tipo_telefono', $tipoTelefono);
$stmt->bindParam(':numTelefono', $telefono);	
$stmt->bindParam(':username', $username);
$stmt->bindParam(':password', $contrasenna);	
$stmt->bindParam(':tipoUsuario', $tipoUsuario);
$stmt->bindParam(':provincia', $provincia);	
$stmt->bindParam(':canton', $canton);
$stmt->bindParam(':distrito', $distrito);	
$stmt->bindParam(':barrio', $barrio);
$stmt->bindParam(':direccion', $descripcionD);	
	
$stmt->execute();

	echo '<script language="javascript">';
	echo 'alert("$nombre registrado con exito")';
	echo '</script>';
	
	}

?>