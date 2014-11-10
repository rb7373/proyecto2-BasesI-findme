<?php require('config.php');?>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Dynamically binding select menus with PHP & jQuery</title>
  
</head>
<body> 

<div id="wrapper">

 
	<form action='' method='post'>

		<p><label>Book Type:</label>
      <select name='catName' id='catID'>
      <option value=''>Select</option>
      <?php

      header('Content-Type: text/html; charset=UTF-8');

      //$stmt = $conn->query('SELECT catID,catTitle FROM book_categories ORDER BY catTitle');
      $stmt = $conn->query('call proc_obtenerProvincia();');
      while($row = $stmt->fetch(PDO::FETCH_OBJ)) {

          
          echo "<option value='$row->idProvincia'>$row->nombre_provincia</option>";
      }
      ?>
     </select>
    </p>

    <p><label>Book:</label>
      <select name='bookID' id='bookID'></select>

	</form>

</div>
 
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
$(function() {
 
 $("#catID").bind("change", function() {
     $.ajax({
         type: "GET", 
         url: "change.php",
         data: "catID="+$("#catID").val(),
         success: function(html) {
             $("#bookID").html(html);
         }
     });
 });
			
 
});
</script>
</body>
</html>