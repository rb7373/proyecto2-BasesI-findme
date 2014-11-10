<?php
	function obtenerConexion() {

		//CAMBIAR
		//new mysqli('host', 'usuario', 'password', 'base de datos');
		$db = new mysqli('localhost', 'root', 'rb7373', 'petsrescue');

		if($db->connect_errno > 0){
		    die('Unable to connect to database [' . $db->connect_error . ']');
		}

		return $db;	
	}

	function cerrarConexion($db, $query) {
		$query->free();
		$db->close();
	}

	function ejecutarQuery($db, $sql) {
		if(!$resultado = $db->query($sql)){
		    die('There was an error running the query [' . $db->error . ']');
		}

		return $resultado;
	}
?>