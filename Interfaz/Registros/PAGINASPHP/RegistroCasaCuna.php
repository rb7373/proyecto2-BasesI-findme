<?php include('config.php');?>
<!doctype html>
<html>
<style>
/*************************************************MENU SUPERIOR********/

#menuSuperior nav ul {
	list-style: none;
	overflow: hidden;
	position: relative;
}
#menuSuperior nav ul li {
	float: right;
	margin: 0 20px 0 0;
}
#menuSuperior nav ul li a {
	display: block;
	width: 40px;
	height: 36px;
	background-repeat: no-repeat;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
}
#menuSuperior nav ul li:nth-child(1) a {
	background-color: #5bb2fc;
	background-repeat: no-repeat;
	background-position: center;
	background-image: url(../img/ajustes.png);
}
#menuSuperior nav ul li:nth-child(2) a {
	background-color: #58ebd3;
	background-repeat: no-repeat;
	background-position: center;
	background-image: url(../img/contactos.png);
}
#menuSuperior nav ul li:nth-child(3) a {
	background-color: #ffa659;
	background-repeat: no-repeat;
	background-position: center;
	background-image: url(../img/registrar.png);
}
#menuSuperior nav ul li:nth-child(4) a {
	background-color: #ff7a85;
	background-repeat: no-repeat;
	background-position: center;
	background-image: url(../img/login3.png);
}
#menuSuperior nav ul li a span {
	font: 18px "Dosis", sans-serif;
	/*text-transform: uppercase;*/
	position: absolute;
	right: 250px;
	/*top: 29px;*/
	display: none;
}
#menuSuperior nav ul li a:hover span {
	display: block;
}
#menuSuperior nav ul li:nth-child(1) a span {
	color: #5bb2fc;
}
#menuSuperior nav ul li:nth-child(2) a span {
	color: #58ebd3;
}
#menuSuperior nav ul li:nth-child(3) a span {
	color: #ffa659;
}
#menuSuperior nav ul li:nth-child(4) a span {
	color: #ff7a85;
}


ul.update { list-style:none;font-size:1.1em; margin-top:10px }
ul.update li{ height:30px; border-bottom:#dedede solid 1px; text-align:left;}
ul.update li:first-child{ border-top:#dedede solid 1px; height:30px; text-align:left; }
#flash { margin-top:20px; text-align:left; }
#searchresults { text-align:left; margin-top:20px; display:none; }
#floating-social-icons {
  position: fixed;
  left: 10px;
  top: 5px;
}
#floating-social-icons li img {
  max-width: 250px;
}
#floating-social-icons li:hover {
  opacity: .95;
}
 li{
display:inline;
}
</style>

<head>
<meta charset="utf-8">
<title>PetRescue</title>
<link rel="shortcut icon" href="../assets/img/favicon.png">
<style type="text/css">
    .box{
       
        display: none;
       
    }
</style>

<script src="../jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $('input[type="radio"]').click(function(){
            if($(this).attr("value")=="Sí"){
                $(".box").hide();
                $(".donacion-help").show();
            }
            if($(this).attr("value")=="No"){
                $(".box").hide();
            }
        });
    });
</script>
</head>

<body>
<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="../formularioAsociaciones.css" media="screen">
<link rel="stylesheet" href="../formCasaCuna.css" media="screen">


<div id="header">
  <ul id="floating-social-icons">
    <li><a href=""><img src="../img/logoV5.png" alt="" /></a></li>
  </ul>
      <div id="menuSuperior">
    <nav>
          <ul>
        <li> <a href="#"> <span>Ajustes</span> </a> </li>
        <li> <a href="#"> <span>Contactos</span> </a> </li>
        <li> <a href=""> <span>Registrar</span> </a> </li>
        <li> <a id="loginLink" href="#"> <span>Ingresar</span> </a> </li>
      </ul>
        </nav>
  </div>
  </div>
<div class="wrapper">
  <form class="form" method="post" action="../../perfiUsuario/PerfilUsuario.php">
    <fieldset>
      <legend>
      <h1> Casa Cuna </h1>
      </legend>
      <br>
      <div >
        <select class = "tipoMascota" id = "tipoMascotaPHP" onChange=" cambiarTamanos()">
           <option value =''>Tipo Mascota</option>
           
            <?php

			header('Content-Type: text/html; charset=UTF-8');
			
			require("Conexion/conexionBasicaPHP.php");
			
			$blobObj = new BobDemo();
			
			if ($blobObj){
			
				echo 'Conexion EXE';
				echo '<br>';
				
				/*BlobObj es la conexion, ahi nada mas le ponen
				el procedimiento que se ocupa llamar*/
				
				$resultado = $blobObj->obtenerTiposMascotas();
			
				//print_r($resultado);
			
				if ($resultado!= null){
			
						foreach ($resultado as $row){
							
													
							/*Estas variables rcogen lo que mando 
							el procedimiento*/
							$tipo = $row['tipo'];
							$tipoID = $row['idTipoMascota'];
							
							/*Luego hacen un echo para desplegarlo en forma de opciones.
							No olviden el Break! <br>*/
							echo '<option value = '.$tipoID.'>'.$tipo.'</option>';
							
							echo '<br>';
						}
				}
			
			
			}
			else{
			
				echo 'Error de conexión';
				echo '<br>';
			
			}
			
				
			
			?>
        </select>
      </div>
      <br>
      <div >
        <select class="tamannoMascota" Id = "tamannoMascotaPHP">
          <option>Tamaño</option>
        </select>
      </div>
      <table>
        <tr>
          <td><input  class ="donacion" type="radio" id = "Donaciones.PHP" name="donacion" value="Sí" data-id = "si" required>
            <label id = "labels">Necesito donación</label>
            <input class ="donacion" type="radio" name="donacion" value="No"data-id = "no" required>
            <label id = "labels"> No necesito donación</label></td>
        </tr>
      </table>
      <br>
      </br>
      <div class ="donacion-help box">
        
        <fieldset>
          <legend id = "labels"><img src= "../img/donate.svg" width="100" height="92"></legend>
          <h2>Tipo de donación</h2>
          <br>
          </br>
          <input  type="checkbox" name="donacion" value="Alimento" required>
          <img src= "../img/bones4.svg" width="80" height="72" ><br>
          <input type="checkbox" name= "donacion" value="Dinero" required>
          <img src= "../img/bills.svg" width="80" height="72" ><br>
          <input type="checkbox" name= "donacion" value="Vacuna" required>
          <img src= "../img/injection.svg" width="80" height="72"><br>
          <input type="checkbox" name= "donacion" value="Transporte" required>
          <img src= "../img/transport.svg"width="80" height="72"><br>
        </fieldset>
        
      
      </div>
      <br>
      <input type="submit" class="submit" value="Listo">
    </fieldset>
  </form>
</div>

<script type="text/javascript">

function cambiarTamanos(){
	//alert('Estoy cambiando Tamanos');

     $.ajax({
         type: "GET", 
         url: "ProcedimientosPHP/LlenarTamanosMascota.php",
         data: "catID="+$("#tipoMascotaPHP").val(),
         success: function(html) {
             $("#tamannoMascotaPHP").html(html);
         }
		 
     });

 
 
 };
 
</script> 

</body>
</html>
