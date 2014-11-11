<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>PetRescue</title>
<link rel="shortcut icon" href="assets/img/favicon.png">

<!-- Custom styles for this template -->
<link href="assets/css/croppic.css" rel="stylesheet">
<script src="jquery-1.11.1.min.js"></script>
</head>

<body>
<div>

</div>
<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="formulario.css" media="screen">
<div class="wrapper">
  <form class="form" method="post" action="../registrarPersona.php">
    <fieldset>
      <h1>Regístrate</h1>
      </legend>
      <input type="text" id="nombrePHP" class="nombre" placeholder="Nombre"required>
      <div>
        <p class="nombre-help">Por favor ingrese su nombre.</p>
      </div>
      <input type="text" id="apellido1PHP" class="pApellido" placeholder="Primer Apellido"required>
      <div>
        <p class="pApellido-help">Por favor ingrese su primer apellido.</p>
      </div>
      <input type="text" id="apellido2PHP" class="sApellido" placeholder="Segundo Apellido"required>
      <div>
        <p class="sApellido-help">Por favor ingrese su segundo apellido.</p>
      </div>
      <input  type="radio" name="genero" value="femenino" required>
      <img src= "img/femenino.svg" width="50" height="42" >
      <input type="radio" name="genero" value="masculino" required>
      <img src= "img/masculino.svg" width="50" height="42" ><br>
      </br>
      <input id = 'emailPHP' onkeyup ="validarEmail()" type="email" class="email" placeholder="Email"required>
      <div>
        <p class="email-help">Por favor ingrese su dirección de correo electrónico.</p>
      </div>
      
      <!--
      <div class="item">
        <table>
          <tr>
            <td><select id = "tipoTelefono" class="tipoTelefono"required>
                <option>Casa</option>
                <option>Celular </option>
              </select></td>
            <td><input type="tel" class="telefono" placeholder="Teléfono"></td>
          </tr>
        </table>
      </div>
      <div>
        <p class="telefono-help">Por favor ingrese su número telefónico.</p>
      </div>
      
      <input type="text" class="userName" placeholder="Nombre de Usuario"required>
      <div>
        <p class="userName-help">Por favor ingrese el nombre de usuario deseado.</p>
      </div>
      <input type="password" class="password" placeholder="Contraseña"required>
      <div>
        <p class="password-help">Por favor ingrese su cantraseña.</p>
      </div>
      <br>
      <fieldset>
        <legend id= "fotoPersona">
        <img src= "img/foto.svg" width="60" height="60">
        <h2>Elija una foto de perfil</h2>
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
        <img src= "img/direccion.svg" width="60" height="60">
        <h2>Dirección</h2>
        </legend>
        <br>
        </br>
        <div>
          <select class="paises">
            <option>Por favor seleccione un país</option>
            <option>Costa Rica</option>
          </select>
        </div>
        <br>
        <div class = "provincia-help">
          <select class="provincias">
            <option>Por favor seleccione una provincia</option>
            <option>San José</option>
            <option>Alajuela</option>
            <option>Heredia</option>
            <option>Cartago</option>
            <option>Guanacaste</option>
            <option>Limón</option>
          </select>
        </div>
        <br>
        <div class = "canton-help">
          <select class="distrito">
            <option>Por favor seleccione un cantón</option>
          </select>
        </div>
        <br>
        <div class = "distrito-help">
          <select class="distrito">
            <option>Por favor seleccione un distrito</option>
          </select>
        </div>
        <br>
        <input type="text" id = "barrio" class="barrio" placeholder="Barrio"required>
        <div>
          <p class="barrio-help">Por favor ingrese su barrio.</p>
        </div>
        <TEXTAREA class="descripcionD" ROWS=2 COLS=20 
        type="text field" placeholder="Detalle la dirección" required></TEXTAREA>
        <div>
          <p class="descripcionD-help">Por favor ingrese más detalles sobre la dirección.</p>
        </div>
      </fieldset>
      <p></p>
      -->
      <input type="submit" class="submitPersona" value="Listo">
    </fieldset>
    <div style="display:none" id="searchresults"><!--Resultados :--></div>
    <ul id="results" class="update">
    </ul>
  </form>
</div>
<script>

$(".nombre").focus(function(){
  $(".nombre-help").slideDown(500);
  //alert('hola');
}).blur(function(){
  $(".nombre-help").slideUp(500);
});

$(".pApellido").focus(function(){
  $(".pApellido-help").slideDown(500);
  //alert('hola');
}).blur(function(){
  $(".pApellido-help").slideUp(500);
});

$(".sApellido").focus(function(){
  $(".sApellido-help").slideDown(500);
  //alert('hola');
}).blur(function(){
  $(".sApellido-help").slideUp(500);
});

$(".userName").focus(function(){
  $(".userName-help").slideDown(500);
  //alert('hola');
}).blur(function(){
  $(".userName-help").slideUp(500);
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

$(".descripcionD").focus(function(){
  $(".descripcionD-help").slideDown(500);
  //alert('hola');
}).blur(function(){
  $(".descripcionD-help").slideUp(500);
});


//VALIDACION INMEDIATA



</script> 
<script type="text/javascript">


		function validarEmail() {
        alert("validarEmail");

        var emailUsuario = $("#emailPHP").val();
}


</script> 
<script type="text/javascript">
 
$(function() {
 
    $(".submitPersona").click(function() {
		
		alert('validando usuario persona');
		
        // getting the value that user typed
        var nombreUsuario    = $("#nombrePHP").val().trim();
        var apellido1Usuario    = $("#apellido1PHP").val().trim();
		var apellido2Usuario    = $("#apellido2PHP").val().trim();
		
		var genero = $('input:radio[name=genero]:checked').val();
		
        // if searchString is not empty
        if(nombreUsuario != '' & apellido1Usuario != '' & apellido2Usuario != '') {
            // ajax call
			
			var datos = nombreUsuario+apellido1Usuario+apellido2Usuario;
			
			alert(datos);
			
            $.ajax({
                type: "POST",
                url: "../registrarPersona.php",
                data: {nombreUsuario: buscarNombreUsuario, password: buscarContraseñaUsuario},
                beforeSend: function(html) { // this happens before actual call
                    $("#results").html(''); 
                    $("#searchresults").show();
                    
               },
               success: function(html){ // this happens after we get results
                    $("#results").show();
                    $("#results").append(html);
              }
            });    
        }
		
		
        //return false;
    });
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
