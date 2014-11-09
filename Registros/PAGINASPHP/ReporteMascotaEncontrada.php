<!doctype html>
<html>
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
      
      <select class="tipoMascota" Id = "tipoMascotaPHP">
      <option>Tipo Mascota</option>
      	 <?php

			header('Content-Type: text/html; charset=UTF-8');
			
			require("Conexion/conexionBasicaPHP.php");
			
			$blobObj = new BobDemo();
			
			if ($blobObj){
			
				echo 'Conexion EXE';
				echo '<br>';
				
				$resultado = $blobObj->obtenerTiposMascotas();
			
				//print_r($resultado);
			
				if ($resultado!= null){
			
						foreach ($resultado as $row){
							
							//$row = $row[0];
							
							$tipo = $row['tipo'];
							
							echo '<option>'.$tipo.'</option>';
							
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
      	 <?php

			header('Content-Type: text/html; charset=UTF-8');
			
			$blobObj = new BobDemo();
			
			if ($blobObj){
			
				echo 'Conexion EXE';
				echo '<br>';
				
				$resultado = $blobObj->obtenerRazasMascotas();
			
				//print_r($resultado);
			
				if ($resultado!= null){
			
						foreach ($resultado as $row){
							
							//$row = $row[0];
							
							$raza = $row['raza'];
							
							echo '<option>'.$raza.'</option>';
							
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
      <select class="tamannoMascota" Id = "tamannoMascotaPHP">
        <option>Tamaño</option>
        <option>Pequeño</option>
        <option>Mediano</option>
        <option>Grande</option>
      </select>
      <select class="colorMascota" id = "colorMascotaPHP" >
        <option>Color</option>
        <option>Negro</option>
        <option>Blanco</option>
        <option>Café</option>
        <option>Pintado</option>
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
          <input type="date" id = "fechaPerdida"class="fechaPerdida" id = "fechaPerdidaPHP"placeholder="Fecha de la pérdida"required>
        </div>
        <br>
        <label id = "labels">Dirección: </label>
        <div class = "provincia-perdida">
          <select class="provincias" id = "provinciasPHP">
            <option>Por favor seleccione una provincia:</option>
            <option>San José</option>
            <option>Alajuela</option>
            <option>Heredia</option>
            <option>Cartago</option>
            <option>Guanacaste</option>
            <option>Limón</option>
          </select>
        </div>
        <br>
        <div class = "canton-perdida">
          <select class="canton" id = "cantonPHP">
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
</body>
</html>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
</head>

<body>
</body>
</html>
