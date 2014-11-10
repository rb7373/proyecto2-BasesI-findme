<?php
	include("db.php");

	//CAMBIOS TOTALES:
	//1-Nombre de funciones

	//CAMBIAR 1: nombre de funcion
	function obtenerTodosLosPaises() {

		//CAMBIO
		$arregloResultado = array();

		//CAMBIAR 2: nombre procedimiento a llamar
		$sql = "call proc_getProvincias()"; 

		$db = obtenerConexion();
		$result = ejecutarQuery($db, $sql);

		while($row = $result->fetch_assoc()){

			//CAMBIO 3
			//CON LOS NOMBRES DE LAS COLUMNAS RETORNADAS
			//NOMBRE DEL OBJETO CREADO
			$filaObtenida = new provincia($row['idProvincia'], $row['nombre_provincia']);
			
		    array_push($arregloResultado, $filaObtenida);
		}

		cerrarConexion($db, $result);

		return $arregloResultado;
	}

	//CAMBIO 4: NOMBRE OBJETO OBTENIDO de MYSQL
	class provincia {
		public $id;
		public $nombre;

		function __construct($id, $nombre) {
			$this->id = $id;
			$this->nombre = $nombre;
		}
	}
?>