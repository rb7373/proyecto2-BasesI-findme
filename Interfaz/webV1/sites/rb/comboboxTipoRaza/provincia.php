<?php
	include("db.php");

	function obtenerProvincias() {
		$provincias = array();
		$sql = "proc_getProvincias()"; 

		$db = obtenerConexion();
		$result = ejecutarQuery($db, $sql);

		while($row = $result->fetch_assoc()){
			$provincia = new provincia($row['idProvincia'], $row['nombre_provincia']);
		    array_push($provincias, $provincia);
		}

		cerrarConexion($db, $result);

		return $provincias;
	}

	class provincia {
		public $id;
		public $provincia;

		function __construct($id, $privincia) {
			$this->id = $id;
			$this->provincia = $provincia;
		}
	}
?>