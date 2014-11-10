<?php
	include("db.php");

	//CAMBIAR
	function obtenerTodosLosPaises() {
		$paises = array();
		//CAMBIAR
		$sql = "call proc_obtenerProvincia()"; 

		$db = obtenerConexion();
		$result = ejecutarQuery($db, $sql);

		while($row = $result->fetch_assoc()){
			$pais = new pais($row['nombre_provincia']);
		    array_push($paises, $pais);
		}

		cerrarConexion($db, $result);

		return $paises;
	}

	class pais {

		public $nombre;

		function __construct($nombre) {
			$this->nombre = $nombre;
		}
	}
?>