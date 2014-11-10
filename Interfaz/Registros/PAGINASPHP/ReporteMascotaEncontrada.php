<?php require('config.php');?>


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
<!-- Cargar Imagen -->
<link href="../assets/css/croppic.css" rel="stylesheet">
<link rel="shortcut icon" href="../assets/img/favicon.png">
<title>PetRescue</title>
<script src="../jquery-1.11.1.min.js"></script>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
</head>

<body>
<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="../reporteMascotaEncontrada.css" media="screen">


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
  <form class="form" method="post" action="../yourpage.html">
    <fieldset>
      <legend id= "direccionPersona">
      <h1><img src= "../img/mascota.svg" width="60" height="60"> Reporta la mascota encontrada</h1>
      </legend>
      <br>
      <input type="text" class="nombre" id ="nombrePHP" placeholder="Nombre"required>
      <div>
        <p class="nombre-help">Por favor ingresa el nombre de tu mascota.</p>
      </div>
      <input type="number" class="chipNumber" id = "chipNumberPHP" placeholder="Número de Chip"required>
      <div>
        <p class="chipNumber-help">Por favor ingresa el número de chip de tu mascota.</p>
      </div>
      
      <!--El primer combobox se llena poniendo este codigo php justo
      donde va las opciones de select. Pueden usar este mismo ejemplo. Solo
      asegurense de no cambiar la ruta de los documentos para q no hayan problemas.
      
      Luego, la funcion OnChange lo que hace es llamar esas funciones una vez que hayan escogido 
      un tipo de mascota. 
      
      Todas las funciones que empiecen con CAMBIAR, son las que dependen de otro combobox.
      Por ejemplo, cambiarRaza() depende de lo que la persona escoja en TipoMascota.
      
      Las funciones que empiezan con LLENAR no dependen de nadie, solo se llaman de la Base, por
      lo que las llamamos desde el principio, cuando la persona escoge el tipo de mascota.
      
      ABAJO estan todas las funciones que se llaman aca-->
            
      <select class="tipoMascota" id = "tipoMascotaPHP" onChange="return cambiarRazas(), cambiarColores(), cambiarTamanos(), llenarProvincias()">
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
      
      <select class="razaMascota" Id = "razaMascotaPHP">
      <option value =''>Raza</option>
       </select>
      <select class="tamannoMascota" Id = "tamannoMascotaPHP">
        <option>Tamaño</option>
      
      </select>
      <select class="colorMascota" id = "colorMascotaPHP" >
        <option>Color</option>
       </select>
      <TEXTAREA class="observacionesM" ROWS=2 COLS=20 
        type="text field" placeholder="Observaciones" id = "observacionesPHP"required></TEXTAREA>
      <div>
        <p "Descripción de la asociación" class="observacionesM-help">Por favor ingrese otros rasgos importantes de la mascota.</p>
      </div>
      <br>
      <br>
      <fieldset>
        <legend id= "fotoMascota">
        <img src= "../img/foto.svg" width="60" height="60">
        <h2>Elija una foto de la mascota encontrada</h2>
        </legend>
        <br>
        <div class="row mt ">
          <div class="col-lg-4 ">
            <div id="cropContainerModal"></div>
          </div>
        </div>
      </fieldset>
      <br>
      <fieldset>
        <legend id= "direccionPersona">
        <img src= "../img/direccion.svg" width="60" height="60">
        <h2>Datos Importantes</h2>
        </legend>
        <br>
        </br>
        <label id = "labels">Fecha de desaparición:</label>
        <div>
          <input type="date" id = "fechaPerdida"class="fechaPerdida" id = "fechaPerdidaPHP"placeholder="Fecha de la pérdida"required >
        </div>
        <br>
        <label id = "labels">Dirección: </label>
        <div class = "provincia-perdida">
          <select class="provincias" id = "provinciasPHP" onChange="return cambiarCantones() ">
            <option>Por favor seleccione una provincia:</option>
          </select>
        </div>
        <br>
        <div class = "canton-perdida">
          <select class="canton" id = "cantonPHP" onChange="return cambiarDistrito()">
            <option>Por favor seleccione un cantón:</option>
          </select>
        </div>
        <br>
        <div class = "distrito-perdida">
          <select class="distrito" id = "distritoPHP">
            <option>Por favor seleccione un distrito:</option>
          </select>
        </div>
        <br>
        <input type="text" id = "barrioPHP" class="barrio" placeholder="Barrio"required>
        <div>
          <p class="barrio-help">Por favor ingrese su barrio.</p>
        </div>
      </fieldset>
      <p></p>
      <input type="submit" class="submitMascotaEncontrada" value="Listo">
    </fieldset>
  </form>
</div>

<!--Funcion Ajax de verificacion a la mysql--> 

<script type="text/javascript">

</script> 

<!--Animaciones de los inputs--> 
<script>

$(".nombre").focus(function(){
  $(".nombre-help").slideDown(500);
  //alert('hola');
}).blur(function(){
  $(".nombre-help").slideUp(500);
});

$(".chipNumber").focus(function(){
  $(".chipNumber-help").slideDown(500);
  //alert('hola');
}).blur(function(){
  $(".chipNumber-help").slideUp(500);
});

$(".observacionesM").focus(function(){
  $(".observacionesM-help").slideDown(500);
  //alert('hola');
}).blur(function(){
  $(".observacionesM-help").slideUp(500);
});

$(".email").focus(function(){
  $(".email-help").slideDown(500);
}).blur(function(){
  $(".email-help").slideUp(500);
});

$(".telefono").focus(function(){
  $(".telefono-help").slideDown(500);
}).blur(function(){
  $(".telefono-help").slideUp(500);
});

$(".password").focus(function(){
  $(".password-help").slideDown(500);
}).blur(function(){
  $(".password-help").slideUp(500);
});

$(".barrio").focus(function(){
  $(".barrio-help").slideDown(500);
}).blur(function(){
  $(".barrio-help").slideUp(500);
});

</script> 

<!-- Placed at the end of the document so the pages load faster --> 
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script> 
<script src="../assets/js/bootstrap.min.js"></script> 
<script src="../croppic.min.js"></script> 
<script src="../assets/js/main.js"></script> 
<script>
		var croppicHeaderOptions = {
				uploadUrl:'img_save_to_file.php',
				cropData:{
					"dummyData":1,
					"dummyData2":"asdas"
				},
				cropUrl:'img_crop_to_file.php',
				customUploadButtonId:'cropContainerHeaderButton',
				modal:false,
				loaderHtml:'<div class="loader bubblingG"><span id="bubblingG_1"></span><span id="bubblingG_2"></span><span id="bubblingG_3"></span></div> ',
				onBeforeImgUpload: function(){ console.log('onBeforeImgUpload') },
				onAfterImgUpload: function(){ console.log('onAfterImgUpload') },
				onImgDrag: function(){ console.log('onImgDrag') },
				onImgZoom: function(){ console.log('onImgZoom') },
				onBeforeImgCrop: function(){ console.log('onBeforeImgCrop') },
				onAfterImgCrop:function(){ console.log('onAfterImgCrop') }
		}	
		var croppic = new Croppic('croppic', croppicHeaderOptions);
		
		
		var croppicContainerModalOptions = {
				uploadUrl:'img_save_to_file.php',
				cropUrl:'img_crop_to_file.php',
				modal:true,
				imgEyecandyOpacity:0.4,
				loaderHtml:'<div class="loader bubblingG"><span id="bubblingG_1"></span><span id="bubblingG_2"></span><span id="bubblingG_3"></span></div> '
		}
		var cropContainerModal = new Croppic('cropContainerModal', croppicContainerModalOptions);
		
	</script>
    

<script type="text/javascript">

/*Todas estas funciones se hacen igual, son de
tipo GET xq recibimos data de ellas.
Le cambian el url, que es el php donde ustedes hacen
el llamado a la funcion.*/

function cambiarRazas(){
	//alert('denisse');
	
     $.ajax({
         type: "GET", 
         url: "ProcedimientosPHP/changeTipoMascota.php",
		 /*La data es lo que le van a mandar al procedimiento.
		 Aca por ejemplo, ocupamos mandarle el id de Tipo
		 para buscar las razas, entonces se mandan de esta
		 manera. 
		 CatID es solo la variable donde se va a guardar 
		 el idTipo(o lo que quieran mandar)*/
         data: "catID="+$("#tipoMascotaPHP").val(),
		 /*Luego ponen el id del lugar donde se vaa desplegar 
		 la informacion*/
         success: function(html) {
             $("#razaMascotaPHP").html(html);
         }
     });

 
 
 };

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
 
 function cambiarColores(){
	//alert('Estoy cambiando Colores');

     $.ajax({
         type: "GET", 
         url: "ProcedimientosPHP/LlenarColoresMascota.php",
         //data: "catID="+$("#tipoMascotaPHP").val(),
         success: function(html) {
             $("#colorMascotaPHP").html(html);
         }
		 
     });

 
 
 };

 function llenarProvincias(){
	//alert('Estoy cambiando Colores');

     $.ajax({
         type: "GET", 
         url: "ProcedimientosPHP/LlenarProvincias.php",
         //data: "catID="+$("#tipoMascotaPHP").val(),
         success: function(html) {
             $("#provinciasPHP").html(html);
         }
		 
     });

 
 
 };
 
  function cambiarCantones(){
	//alert('Estoy cambiando Colores');
	     $.ajax({
         type: "GET", 
         url: "ProcedimientosPHP/changeCanton.php",
         data: "catID="+$("#provinciasPHP").val(),
		 success: function(html) {
             $("#cantonPHP").html(html);
         }
		 
     });

 
 
 };
 
   function cambiarDistrito(){
	//alert('Estoy cambiando Distritos');
	     $.ajax({
         type: "GET", 
         url: "ProcedimientosPHP/changeDistrito.php",
         data: "catID="+$("#cantonPHP").val(),
		 success: function(html) {
             $("#distritoPHP").html(html);
         }
		 
     });

 
 
 };

</script>


</body>
</html>
