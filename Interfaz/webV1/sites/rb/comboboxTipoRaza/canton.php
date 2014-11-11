<?php
	include("db.php");
	
	//CAMBIO
	if(isset($_POST['idProvincia'])) {
		$cantones = array();



		//CAMBIO
		$sql = "select idCanton, nombre_canton from canton where idProvincia = ".$_POST['idProvincia']; 

		$db = obtenerConexion();
		$result = ejecutarQuery($db, $sql);

		while($row = $result->fetch_assoc()){
			//CAMBIO
			$canton = new ciudad($row['idCanton'], $row['nombre_canton']);
			//CAMBIO
		    array_push($cantones, $canton);
		}

		cerrarConexion($db, $result);

		echo json_encode($cantones);
	}
	
	class canton {
		public $id;
		public $nombre;

		function __construct($id, $nombre) {
			$this->id = $id;
			$this->nombre = $nombre;
		}
	}
?>