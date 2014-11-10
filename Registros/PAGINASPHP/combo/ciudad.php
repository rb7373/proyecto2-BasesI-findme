<?php

	//INCLUIR PARA CONECTAR A LA BASE
	//EN cada subconsulta
	include("db.php");
	
	if(isset($_POST['idPais'])) {
		$ciudades = array();
		//$sql = "call proc_temp_getCiudad(".$_POST['idPais'].")"; 
        
        $sql = "seclect * from provincia";

		$db = obtenerConexion();
		$result = ejecutarQuery($db, $sql);

		while($row = $result->fetch_assoc()){
			$ciudad = new ciudad($row['idProvincia'], $row['idProvincia']);
		    array_push($ciudades, $ciudad);
		}

		cerrarConexion($db, $result);

		echo json_encode($ciudades);
	}
	
	class ciudad {
		public $id;
		public $nombre;

		function __construct($id, $nombre) {
			$this->id = $id;
			$this->nombre = $nombre;
		}
	}
?>