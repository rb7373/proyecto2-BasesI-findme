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



/*ul.update {
	list-style: none;
	font-size: 1.1em;
	margin-top: 10px
}
ul.update li {
	height: 30px;
	border-bottom: #dedede solid 1px;
	text-align: left;
}
ul.update li:first-child {
	border-top: #dedede solid 1px;
	height: 30px;
	text-align: left;
}*/
#flash {
	margin-top: 20px;
	text-align: left;
}
#searchresults {
	text-align: left;
	margin-top: 20px;
	display: none;
}
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
li {
	display: inline;
}
</style>
<head>
<meta charset="utf-8">
<title>PetRescue</title>
<link rel="shortcut icon" href="../assets/img/favicon.png">

<!-- Custom styles for this template -->
<link href="../assets/css/croppic.css" rel="stylesheet">
<script src="../jquery-1.11.1.min.js"></script>
</head>

<body>
<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="../formulario.css" media="screen">

<link href="../../webV1/css/selectbox.css" rel="stylesheet">

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
  <form class="form" id = "registroPersonaForm"method="post"  action="ProcedimientosPHP/ingresoPersona.php">
    <fieldset>
      <legend>
      <h1>Regístrate</h1>
      </legend>
      <input type="text" name = "nombre" class="nombre" id ="nombrePHP" placeholder="Nombre" required>
      <div>
        <p class="nombre-help">Por favor ingrese su nombre.</p>
      </div>
      <input type="text"  name ="pApellido"class="pApellido" id ="pApellidoPHP"placeholder="Primer Apellido"required>
      <div>
        <p class="pApellido-help">Por favor ingrese su primer apellido.</p>
      </div>
      <input type="text"  name ="sApellido" class="sApellido" id ="sApellidoPHP" placeholder="Segundo Apellido"required>
      <div>
        <p class="sApellido-help">Por favor ingrese su segundo apellido.</p>
      </div>
      <div class="item">
        <table>
          <tr>
            <td><select nombre = "tipoTelefono" id = "tipoTelefono" class="tipoTelefono"required>
                <option value = "1">Casa</option>
                <option value = "2">Celular </option>
              </select></td>
            <td><input type="tel" name ="telefono" class="telefono" placeholder="Teléfono"></td>
          </tr>
        </table>
      </div>
      <div>
        <p class="telefono-help">Por favor ingrese su número telefónico.</p>
      </div>
      <input  type="radio" name="genero" value="2" id ="generoPHP"required>
      <img src= "../img/femenino.svg" width="50" height="42" >
      <input type="radio" name="genero" value="1" id ="generoPHP"required>
      <img src= "../img/masculino.svg" width="50" height="42" ><br>
      </br>
      <input autocomplete="off" type="email" name = "email"class="email" placeholder="Email" id ="emailPHP"  required>
      <div class="resultadosValidaciones" style="display:none" id="searchresultsEmail"><!--Resultados :--></div>
      <ul id="resultsEmail" class="update resultadosValidaciones">
      </ul>
      <div>
        <p class="email-help">Por favor ingrese su dirección de correo electrónico.</p>
      </div>
      <input autocomplete="off" type="text" name="userName" class="userName" id ="userNamePHP"placeholder="Nombre de Usuario"required>
      
      <div class="resultadosValidaciones" style="display:none" id="searchresultsUsername"><!--Resultados :--></div>
      <ul id="resultsUsername" class="update resultadosValidaciones">
      </ul>
      
      <div>
        <p class="userName-help">Por favor ingrese el nombre de usuario deseado.</p>
      </div>
      <input type="password" name="password" class="password" id ="passwordPHP"placeholder="Contraseña"required>
      <div>
        <p class="password-help">Por favor ingrese su contraseña.</p>
      </div>
      <fieldset>
        <legend id= "fotoPersona">
        <img src= "../img/foto.svg" width="60" height="60">
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
        <img src= "../img/direccion.svg" width="60" height="60">
        <h2>Dirección</h2>
        </legend>
        <br>
        </br>
        <div>
          <select class="paises" id = "paisesPHP">
            <option>Por favor seleccione un país</option>
            <option>Costa Rica</option>
          </select>
        </div>
        <br>
        <div class = "provincia-help">
          <select class="provincias" name = "provincias" id = "provinciasPHP" onChange="return cambiarCantones()">
            <?php
				
			$stmt = $conn->query('call proc_obtenerProvincia();');
				
				echo "<option value=''>Por favor seleccione una provincia:</option>";
				//loop through all returned rows
				while($row = $stmt->fetch(PDO::FETCH_OBJ)) {
					echo "<option value='$row->idProvincia'>$row->nombre_provincia</option>";
					}
			?>
          </select>
        </div>
        <br>
        <div class = "canton-help">
          <select class="distrito" name = "cantones" id = "cantonPHP"  onChange="return cambiarDistrito()">
            <option>Por favor seleccione un cantón:</option>
          </select>
        </div>
        <br>
        <div class = "distrito-help">
          <select class="distrito" name = "distritos" id = "distritoPHP">
            <option>Por favor seleccione un distrito:</option>
          </select>
        </div>
        <br>
        <input type="text" name = "barrios" id = "barrio" class="barrio"  placeholder="Barrio"required>
        <div>
          <p class="barrio-help">Por favor ingrese su barrio.</p>
        </div>
        <TEXTAREA class="descripcionD"  name = "descripcionD"ROWS=2 COLS=20 
        type="text field" placeholder="Detalle la dirección" required></TEXTAREA>
        <div>
          <p class="descripcionD-help">Por favor ingrese más detalles sobre la dirección.</p>
        </div>
      </fieldset>
      <p></p>
      <input type="submit" class="submit" value="Listo" id = "botonRegistrarPersona">
    </fieldset>
  </form>
  <p id = mensajeConfirmacion> </p>
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
<script>
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
 
 
$("#emailPHP").keyup(function() {
		
        var faq_search_input = $(this).val();
		
		//alert(faq_search_input);
		
        var dataString = 'keyword=' + faq_search_input;
        if (faq_search_input.length > 3)
//
        {
            $.ajax({
                type: "GET",
                url: "ProcedimientosPHP/verificarPersona.php",
                data: dataString,
beforeSend: function(html) { // this happens before actual call
                    $("#resultsEmail").html('');
					$("#searchresultsEmail").html(''); 
                    $("#searchresultsEmail").show();
					
					
					
                    
               },
               success: function(html){ // this happens after we get results
                    $("#resultsEmail").show();
                    $("#searchresultsEmail").append(html);
					
					//alert("DESP");
              }
            });    
        }
        return false;
    });

    
$("#userNamePHP").keyup(function() {
		
        var faq_search_input = $(this).val();
		
		//alert(faq_search_input);
		
        var dataString = 'keyword=' + faq_search_input;
        if (faq_search_input.length > 3)
//
        {
            $.ajax({
                type: "GET",
                url: "ProcedimientosPHP/verificarUsername.php",
                data: dataString,
beforeSend: function(html) { // this happens before actual call
                    $("#resultsUsername").html(''); 
					$("#searchresultsUsername").html('');
                    $("#searchresultsUsername").show();
					
					
					
                    
               },
               success: function(html){ // this happens after we get results
                    $("#resultsUsername").show();
                    $("#searchresultsUsername").append(html);
					
					//alert("DESP");
              }
            });    
        }
        return false;
    });
	
	
 $("#registroPersonaForm").submit(function() {

        var valorEmail    = $("#existeEmail").val();
        var valorUsuario    = $("#existeUsername").val();
		
		if (valorEmail != null & valorUsuario != null){
			if (valorEmail == 1 & valorUsuario == 1){
				return true;
			}
				
		}
			
		alert("Verifique los datos ingresados por favor");
		
        return false;
    });


//function send(existeEmail, existeUsername){
//	alert("Existe email: " + existeEmail + " ExisteUsername: " + existeUsername);
//  if (existeEmail == 1 && existeUsername == 1) {
//	return true;
//  }
//  else{
//	return false;
//  }
// }
	
    </script>
</body>
</html>
