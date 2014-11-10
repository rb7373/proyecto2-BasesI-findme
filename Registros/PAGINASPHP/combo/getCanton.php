<?php

	//INCLUIR PARA CONECTAR A LA BASE
	//EN cada subconsulta
	include("db.php");
	
	//IMPORTANTE 1
	//CAMBIAR 2
	if(isset($_POST['idProvincia'])) {
		$arregloResultado = array();


		//CAMBIAR 3
		//$sql = "call proc_getCanton(".$_POST['idProvincia'].")"; 

		$sql = 'select idCanton, nombre_canton from canton where idProvincia = 1';

//echo '<script type="text/javascript">alert("' . $sql . '")</script>';

		$db = obtenerConexion();
		$result = ejecutarQuery($db, $sql);

		while($row = $result->fetch_assoc()){
			//CAMBIAR 4, nombre objeto retornado



			$filaRetornada = new canton($row['idCanton'], $row['nombre_canton']);

		    array_push($arregloResultado, $filaRetornada);
		}

		cerrarConexion($db, $result);

		return $arregloResultado;

		//echo json_encode($arregloResultado);
	}
	
	//Cantons
	class canton {
		public $id;
		public $nombre;

		function __construct($id, $nombre) {
			$this->id = $id;
			$this->nombre = $nombre;
		}
	}
?>