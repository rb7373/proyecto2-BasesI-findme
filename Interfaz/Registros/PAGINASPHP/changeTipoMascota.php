<?php
include('config.php');

//collect the passed id
$id = $_GET['catID'];

//run a prepared statement 
//$stmt = $conn->query('SELECT bookID,bookTitle FROM books WHERE catID = '.$conn->quote($id).' ORDER BY bookTitle');
$stmt = $conn->query('call obtenerRazasMascota('.$conn->quote($id).')');

//loop through all returned rows
while($row = $stmt->fetch(PDO::FETCH_OBJ)) {
    echo "<option value='$row->idRazaMascota'>$row->raza</option>";
}