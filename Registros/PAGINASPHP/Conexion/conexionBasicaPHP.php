<?php

header('Content-Type: text/html; charset=UTF-8');

class BobDemo{
	const DB_HOST = 'localhost';
	const DB_NAME = 'petsrescue';
	const DB_USER = 'root';
	const DB_PASSWORD = 'rb7373';

	private $conn = null;

	/**
	 * Open the database connection
	 */
	public function __construct(){
		// open database connection
		$connectionString = sprintf("mysql:host=%s;dbname=%s;charset=utf8",
				BobDemo::DB_HOST,
				BobDemo::DB_NAME);

		try {
			$this->conn = new PDO($connectionString,
					BobDemo::DB_USER,
					BobDemo::DB_PASSWORD);

			$this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

			$this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);

			//echo "Sesion exitosa";
			//echo "<br>";
			//for prior PHP 5.3.6
			//$conn->exec("set names utf8");

		} catch (PDOException $pe) {
			die($pe->getMessage());
		}
	}


	/**
	 * close the database connection
	 */
	public function __destruct() {
		// close the database connection
		$this->conn = null;
	}


	public function obtenerTiposMascotas() {

		$resultado = null;

		try
		{
			$sql = 'call obtenerTiposMascota()';
			$stmt = $this->conn->prepare($sql);
			$stmt->execute();
			return $stmt->fetchAll(PDO::FETCH_ASSOC);

		}
		catch(PDOException $e)
		{
		  echo 'Error: ' . $e->getMessage();
		}

		return $resultado;

	}
    
    public function obtenerRazasMascotas($tipoMascota) {

		$resultado = null;

		try
		{
			$sql = 'call obtenerRazasMascota(:tipoMascota)';
			$stmt = $this->conn->prepare($sql);
            $stmt->bindParam(':tipoMascota',$tipoMascota);
			$stmt->execute();
			return $stmt->fetchAll(PDO::FETCH_ASSOC);

		}
		catch(PDOException $e)
		{
		  echo 'Error: ' . $e->getMessage();
		}

		return $resultado;

	}


	public function verificarPass($userId,$passUser) {

		$resultado = null;

		try
		{


			//echo ':)';
			//echo '<br>';

			$sql = 'call proc_getID_Persona(:userId, :passUser)';

			$stmt = $this->conn->prepare($sql);
			$stmt->bindParam(':userId',$userId,PDO::PARAM_INT);
			$stmt->bindParam(':passUser',$passUser);
			$stmt->execute();

			return $stmt->fetchAll(PDO::FETCH_ASSOC);
			

		}
		catch(PDOException $e)
		{
		  echo 'Error: ' . $e->getMessage();
		}

		return $resultado;

	}
	
}


?>


