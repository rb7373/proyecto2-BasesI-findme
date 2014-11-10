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
<link href="assets/css/croppic.css" rel="stylesheet">
<link rel="shortcut icon" href="../assets/img/favicon.png">

<title>PetRescue</title>
<script src="../jquery-1.11.1.min.js"></script>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
</head>

<body>
<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="../reporteMascotaPerdida.css" media="screen">


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
  <form class="form" method="post" action="yourpage.html">
    <fieldset>
      <legend id= "direccionPersona">
      <h1><img src= "../img/mascota.svg" width="60" height="60"> Reporta tu mascota perdida</h1>
      </legend><br>
      <input type="text" class="nombre" placeholder="Nombre"required>
      <div>
        <p class="nombre-help">Por favor ingresa el nombre de tu mascota.</p>
      </div>
      <input type="number" class="chipNumber" placeholder="Número de Chip"required>
      <div>
        <p class="chipNumber-help">Por favor ingresa el número de chip de tu mascota.</p>
      </div>
      <select class="tipoMascota">
        <option>Tipo Mascota</option>
        <option>Perro</option>
        <option>Gato</option>
      </select>
      <select class="razaMascota">
        <option>Raza</option>
        <option>Chihuahua</option>
        <option>Maltés</option>
      </select>
      <select class="tamannoMascota">
        <option>Tamaño</option>
        <option>Pequeño</option>
        <option>Mediano</option>
        <option>Grande</option>
      </select>
      <select class="colorMascota">
        <option>Color</option>
        <option>Negro</option>
        <option>Blanco</option>
        <option>Café</option>
        <option>Pintado</option>
      </select>
      
     <TEXTAREA class="observacionesM" ROWS=2 COLS=20 
        type="text field" placeholder="Observaciones" required></TEXTAREA>
      
      <div>
        <p "Descripción de la asociación" class="observacionesM-help">Por favor ingrese otros rasgos importantes de la mascota.</p>
      </div>
      
      <br><br><fieldset>
      <legend id= "fotoMascota">
      <img src= "../img/foto.svg" width="60" height="60">
      <h2>Elija una foto de la mascota perdida</h2>
      </legend><br>
      
      <div class="row mt ">
			<div class="col-lg-4 ">
				<div id="cropContainerModal"></div>
			</div>
	  </div>
      </fieldset><br>
      
      <fieldset>
        <legend id= "direccionPersona">
        <img src= "../img/direccion.svg" width="60" height="60">
        <h2>Datos Importantes</h2>
        </legend>
        <br>
        </br>
        <label id = "labels">Fecha de desaparición:</label>
        <div>
          <input type="date" id = "fechaPerdida"class="fechaPerdida" placeholder="Fecha de la pérdida"required>
        </div>
        <br>
        <label id = "labels">Dirección: </label>
        <div class = "provincia-perdida">
          <select class="provincias">
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
          <select class="canton">
            <option>Por favor seleccione un cantón:</option>
          </select>
        </div>
        <br>
        <div class = "distrito-perdida">
          <select class="distrito">
            <option>Por favor seleccione un distrito:</option>
          </select>
        </div>
        <br>
        <input type="text" id = "barrio" class="barrio" placeholder="Barrio"required>
        <div>
          <p class="barrio-help">Por favor ingrese su barrio.</p>
        </div>
      </fieldset>
      <p></p>
      <input type="submit" class="submit" value="Listo">
    </fieldset>
  </form>
</div>
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
<script src="assets/js/bootstrap.min.js"></script>
<script src="croppic.min.js"></script>
<script src="assets/js/main.js"></script>
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
