<?php
header('Content-Type: text/html; charset=ISO-8859-1');
include('../config.php');

// declaracion de variables
$nombre = $_POST['nombre'];
$chipNumber = $_POST['chipNumber'];
$tipo = $_POST['tipoMascota'];
$raza = $_POST['razaMascota'];
$tamanno = $_POST['tamannoMascota'];
$color = $_POST['colorMascota'];
$observaciones = $_POST['observacionesM'];
$fecha = $_POST['fechaPerdida'];
$provincia = $_POST['provincias'];
$canton = $_POST['canton'];
$distrito = $_POST['distrito'];
$barrio= $_POST['barrio'];
$recompensa = $_POST['recompensa'];
$idDueno = 1;
$estado = 1;
$descripcionD = '';
//id dueno temporal


echo $nombre ;
echo '<br>';
echo $chipNumber ;
echo '<br>';
echo $tipo ;
echo '<br>';
echo $raza ;
echo '<br>';
echo $tamanno ;
echo '<br>';
echo $color ;
echo '<br>';
echo $observaciones ;
echo '<br>';
echo $fecha ;
echo '<br>';
echo $provincia ;
echo '<br>';
echo $canton ;
echo '<br>';
echo $distrito ;
echo '<br>';
echo $barrio ;
echo '<br>';
echo $recompensa ;


$stmt = $conn->prepare('call proc_registrar_mascota_Perdida(:nombre,:chip,:estado,:raza,:tamano,:tipo, :color, :dueno,:fecha, :recompensa, :observaciones, :provincia,:canton , :distrito, :barrio, :descripcionD)');

$stmt->bindValue(':nombre', $nombre);
$stmt->bindValue(':chip',$chipNumber);
$stmt->bindValue(':estado', $estado);
$stmt->bindValue(':raza', $raza);
$stmt->bindValue(':tamano', $tamanno);
$stmt->bindValue(':tipo', $tipo);
$stmt->bindValue(':color', $color);
$stmt->bindValue(':dueno', $idDueno);
$stmt->bindValue(':fecha', $fecha);
$stmt->bindValue(':recompensa', $recompensa);
$stmt->bindValue(':observaciones', $observaciones);
$stmt->bindValue(':provincia', $provincia);
$stmt->bindValue(':canton', $canton);
$stmt->bindValue(':distrito', $distrito);
$stmt->bindValue(':barrio', $barrio);
$stmt->bindValue(':descripcionD', $descripcionD);

$stmt->execute();

	echo '<script language="javascript">';
	echo 'alert("La mascota se ha registrado con exito")';
	echo '</script>';



?>