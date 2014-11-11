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
	 * insert blob into the files table
	 * @param string $filePath
	 * @param string $mime mimetype
	 * @param string $type type of photo
	 */
	public function insertBlob($filePath, $mime, $type){
		try {
			$blob = fopen($filePath,'rb');

			$sql = "INSERT INTO foto(foto, mime, id_tipo_foto) VALUES(:data, :mime, :type)";

			$stmt = $this->conn->prepare($sql);

			
			$stmt->bindParam(':data',$blob,PDO::PARAM_LOB);
			$stmt->bindParam(':mime',$mime);
			$stmt->bindParam(':type',$type);

			return $stmt->execute();
		}
		catch(PDOException $e)
        {
        	echo $e->getMessage();
        	echo '<br>';
        }
     	catch(Exception $e)
        {
        	echo $e->getMessage();
        }

        return null;
	}

	/**
	 * update the files table with the new blob from the file specified
	 * by the filepath
	 * @param int $id
	 * @param string $filePath
	 * @param string $mime
	 * @return boolean
	 */
	function updateBlob($id,$filePath,$mime) {

		$blob = fopen($filePath,'rb');

		$sql = "UPDATE files
				SET mime = :mime,
				data = :data
				WHERE id = :id";

		$stmt = $this->conn->prepare($sql);

		$stmt->bindParam(':mime',$mime);
		$stmt->bindParam(':data',$blob,PDO::PARAM_LOB);
		$stmt->bindParam(':id',$id);

		return $stmt->execute();

	}

	/**
	 * select data from the the files
	 * @param int $id
	 * @return array contains mime type and BLOB data
	 */
	public function selectBlob($id) {

		$sql = "SELECT mime,
				data
				FROM files
				WHERE id = :id";

		$stmt = $this->conn->prepare($sql);
		$stmt->execute(array(":id" => $id));
		$stmt->bindColumn(1, $mime);
		$stmt->bindColumn(2, $data, PDO::PARAM_LOB);

		$stmt->fetch(PDO::FETCH_BOUND);

		return array("mime" => $mime,
				"data" => $data);

	}

	/**
	 * close the database connection
	 */
	public function __destruct() {
		// close the database connection
		$this->conn = null;
	}


	public function verificarUsuario($userName) {

		$resultado = null;

		try
		{


			//echo ':)';
			//echo '<br>';

			$sql = 'call proc_getID_Usuario(:user)';

			$stmt = $this->conn->prepare($sql);
			$stmt->bindParam(':user',$userName);
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


