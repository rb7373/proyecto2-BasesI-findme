
<!doctype html>
<html class="loading">
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>PetRescue</title>
	<link rel="stylesheet" href="../css/principalMenuV8.css" media="screen">
	<link href='http://fonts.googleapis.com/css?family=Josefin+Slab' rel='stylesheet' type='text/css' />
	<link rel="stylesheet" type="text/css" href="../css/jquery.fullPage.css" />
	<link href='http://fonts.googleapis.com/css?family=Dosis' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="../css/loginSuperiorV2.css" />
	<link rel="stylesheet" type="text/css" href="../css/logo.css" />
	<link rel="stylesheet" type="text/css" href="../css/loginForm.css" />
    
    
    
    
    
	<link href='http://fonts.googleapis.com/css?family=Varela+Round|Open+Sans:400,300,600' rel='stylesheet' type='text/css'>
	<style>
/* Style for our header texts
	* --------------------------------------- */
h1 {
	font-size: 5em;
	font-family: arial, helvetica;
	color: #fff;
	margin: 0;
	padding: 0;
}
.intro p {
	color: #fff;
}
/* Centered texts in each section
	* --------------------------------------- */
.section {
	text-align: center;
}
/* Fixed header and footer.
	* --------------------------------------- */
#header {
	position: fixed;
	height: 60px;
	display: block;
	width: 100%;
	background: #333;
	z-index: 9;
	text-align: center;
	color: #f2f2f2;
	padding: 20px 0 0 0;
}
#footer {
	position: fixed;
	height: 20px;
	display: block;
	width: 100%;
	background: #333;
	z-index: 9;
	text-align: center;
	color: #f2f2f2;
	padding: 20px 0 0 0;
}
#header {
	top: 0px;
}
#footer {
	bottom: 0px;
}
/* Bottom menu
	* --------------------------------------- */
#infoMenu {
	bottom: 80px;
}
#infoMenu li a {
	color: #fff;
	z-index: 999;
}
/* Overwriting styles for the navigation dots (to place it where we want)
*/

.fp-slidesNav.bottom {
	bottom: 60px;
	background: rgba(255,255,255,0.5);
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
}
/*Se sobre escribe la posicion de la flecha derecha*/
.fp-controlArrow.fp-next {
	right: 60px;
	border-width: 38.5px 0 38.5px 34px;
	border-color: transparent transparent transparent #fff;
}
/* Overwriting fullPage.js tooltip color
	* --------------------------------------- */
.fp-tooltip {
	/*	color: #000000;
	position: absolute;
	width: 100px;
	height: 20px;
	line-height: 20px;
	padding: 10px;
	font-size: 14px;
	text-align: center;
	color: rgb(113, 157, 171);
	background: rgb(255, 255, 255);
	border: 4px solid rgb(255, 255, 255);
	border-radius: 5px;
	text-shadow: rgba(0, 0, 0, 0.0980392) 1px 1px 1px;
	box-shadow: rgba(0, 0, 0, 0.0980392) 1px 1px 2px 0px;*/
	
/*	position: absolute;
	width: 140px;
	color: #FFFFFF;
	background: #000000;
	height: 30px;
	line-height: 30px;
	text-align: center;
	border-radius: 6px;
	*/
	
	position: absolute;
	width: 140px;
	color: #FFFFFF;
	background: #000000;
	height: 30px;
	line-height: 30px;
	text-align: center;
	border-radius: 6px;
	/*box-shadow: -2px 3px 1px #005580;*/
	margin-right: 10px;
}
#fp-nav span, .fp-slidesNav span {
	border-color: #000000;
	border-width: 2px;
}
#fp-nav li .active span, .fp-slidesNav .active span {
	background: rgba(100,200,240,.9); /*#1D9DD8;*/
}
#fp-nav {
	background: rgba(255,255,255,0.5);
	/*-webkit-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);
-moz-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);
box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);*/
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
}
/* Defining each section background and styles
	* --------------------------------------- */

#sectionInicio {
	/*background-image: url(../imgs/bg1.jpg) no-repeat center center fixed;*/
	/*background: url(../imgs/bg1.jpg) no-repeat center center fixed;*/
	
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center center;            /* optionally, center the image */
}
#sectionPerdidaMascota {
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center center;            /* optionally, center the image */
}
#sectionEncuentro {
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center center;            /* optionally, center the image */
}
#sectionBuscador {
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center center;            /* optionally, center the image */
}
#sectionCasaCuna {
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center center;            /* optionally, center the image */
0;
}
#sectionAdopciones {
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center center;            /* optionally, center the image */
}
#sectionListaNegra {
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center center;            /* optionally, center the image */
}
#sectionDonaciones {
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center center;            /* optionally, center the image */
}
</style>
	<style>
/* ADD THIS TO CSS */
div#preloaded-images {
	position: absolute;
	overflow: hidden;
	left: -9999px;
	top: -9999px;
	height: 1px;
	width: 1px;
}
</style>
	<style>
html {
	-webkit-transition: background-color 1s;
	transition: background-color 1s;
}
html, body {
	min-height: 100%;
}
html.loading {
	background: #333 url('http://code.jquery.com/mobile/1.3.1/images/ajax-loader.gif') no-repeat 50% 50%;
	-webkit-transition: background-color 0;
	transition: background-color 0;
}
body {
	-webkit-transition: opacity 1s ease-in;
	transition: opacity 1s ease-in;
}
html.loading body {
	opacity: 0;
	-webkit-transition: opacity 0;
	transition: opacity 0;
}
button {
	background: #00A3FF;
	color: white;
	padding: 0.2em 0.5em;
	font-size: 1.5em;
}


ul.update { list-style:none;font-size:1.1em; margin-top:10px }
ul.update li{ height:30px; border-bottom:#dedede solid 1px; text-align:left;}
ul.update li:first-child{ border-top:#dedede solid 1px; height:30px; text-align:left; }
#flash { margin-top:20px; text-align:left; }
#searchresults { text-align:left; margin-top:20px; display:none; }

</style>
	<script>
			var html = document.getElementsByTagName('html')[0];
			var removeLoading = function() {
				// In a production application you would remove the loading class when your
				// application is initialized and ready to go.  Here we just artificially wait
				// 5 seconds before removing the class.
				setTimeout(function() {
					html.className = html.className.replace(/loading/, '');
				}, 0); //5000
			};
			removeLoading();
		</script>

	<!--[if IE]>
		<script type="text/javascript">
			 var console = { log: function() {} };
		</script>
	<![endif]-->

	<script src="../js/jquery-2.1.1.js"></script>
	<script src="../js/jquery-ui.js"></script>
	<script type="text/javascript" src="../vendors/jquery.slimscroll.min.js"></script>
	<script type="text/javascript" src="../js/jquery.fullPage.js"></script>
	<script type="text/javascript" src="../vendors/jquery.easings.min.js"></script>
	</script>
	<script type="text/javascript">



/*		$(document).ready(function() {
			$('#fullpage').fullpage({
				anchors: ['Portada', 'Reportar encuentro', 'Reportar pérdida', 'Buscador', 'Casa cuna', 'Adopciones', 'Lista negra', 'Donaciones'],
				sectionsColor: ['#C63D0F', '#1BBC9B', '#7E8F7C'],
				navigationTooltips: ['Portada', 'Reportar encuentro', 'Reportar pérdida', 'Buscador', 'Casa cuna', 'Adopciones', 'Lista negra', 'Donaciones'],
				css3: true,
				slidesNavigation: true,
				navigationPosition: 'right',
				slidesNavPosition: 'bottom',
			controlArrowColor: '#fff'
			});
		});*/
		
		$(document).ready(function() {
			
			
			var inicioContador =0; 
  var encuentroContador = 0;
  var perdidaContador = 0;
  
  var imagesSectionInicio = ['../imgs/inicio/0.jpg','../imgs/inicio/1.jpg','../imgs/inicio/2.jpg','../imgs/inicio/3.jpg','../imgs/inicio/4.jpg','../imgs/inicio/5.jpg','../imgs/inicio/6.jpg','../imgs/inicio/7.jpg','../imgs/bg1.jpg'];
  
    var imagesSectionEncuentro = ['../imgs/encuentro/0.jpg','../imgs/encuentro/1.jpg','../imgs/encuentro/2.jpg','../imgs/encuentro/3.jpg','../imgs/encuentro/4.jpg','../imgs/encuentro/5.jpg','../imgs/encuentro/6.jpg','../imgs/encuentro/7.jpg','../imgs/bg2.jpg'];

    var imagesSectionPerdida = ['../imgs/inicio/0.jpg','../imgs/inicio/1.jpg','../imgs/inicio/2.jpg','../imgs/inicio/3.jpg','../imgs/inicio/4.jpg','../imgs/inicio/5.jpg','../imgs/inicio/6.jpg','../imgs/inicio/7.jpg','../imgs/bg1.jpg'];
	
  var imageInicio = $('#sectionInicio');
  var imageEncuentro = $('#sectionBuscador');
  var imagePerdida = $('#sectionDonaciones');
                //Initial Background image setup
  imageInicio.css('background-image', 'url(../imgs/bg1.jpg)');
  imageEncuentro.css('background-image', 'url(../imgs/bg2.jpg)');
  imagePerdida.css('background-image', 'url(../imgs/bg3.jpg)');
  
                //Change image at regular intervals
  setInterval(function(){   
   imageInicio.fadeOut(500, function () {
   imageInicio.css('background-image', 'url(' + imagesSectionInicio [inicioContador++] +')');
   imageInicio.fadeIn(500);
   });
   if(inicioContador == imagesSectionInicio.length)
    inicioContador = 0;
  }, 5000);      
  
    setInterval(function(){   
   imageEncuentro.fadeOut(500, function () {
   imageEncuentro.css('background-image', 'url(' + imagesSectionEncuentro [encuentroContador++] +')');
   imageEncuentro.fadeIn(500);
   });
   if(encuentroContador == imagesSectionEncuentro.length)
    encuentroContador = 0;
  }, 5000);  
  
  
    setInterval(function(){   
   imagePerdida.fadeOut(500, function () {
   imagePerdida.css('background-image', 'url(' + imagesSectionPerdida [perdidaContador++] +')');
   imagePerdida.fadeIn(500);
   });
   if(perdidaContador == imagesSectionPerdida.length)
    perdiadaContador = 0;
  }, 5000);
        
 
			
			$('#fullpage').fullpage({
				anchors: ['Inicio', 'Buscador', 'Lista negra', 'Donaciones','Ayuda'],
				sectionsColor: ['#1bbc9b', '#4BBFC3', '#7BAABE','#1bbc9b', '#4BBFC3', '#7BAABE','#1bbc9b', '#4BBFC3','#1bbc9b'],
				navigation: true,
				navigationPosition: 'right',
				navigationTooltips: ['Inicio', 'Buscador', 'Lista negra', 'Donaciones','Ayuda'],
				//css3: true,
				
				slidesNavigation: true,
				continuousVertical: true,
				easing: 'easeInQuart', //http://jqueryui.com/resources/demos/effect/easing.html
				controlArrowColor: '#000000'
				
			});
			
			
			
	$("#loginLink").click(function( event ){
		event.preventDefault();
    	$(".overlay").fadeToggle("fast");
  	});
	
	$(".overlayLink").click(function(event){
		event.preventDefault();
		var action = $(this).attr('data-action');
		
		$.get( "ajax/" + action, function( data ) {
			$( ".login-content" ).html( data );
		});	
		
		$(".overlay").fadeToggle("fast");
	});
	
	$(".close").click(function(){
		$(".overlay").fadeToggle("fast");
	});
	
	$(document).keyup(function(e) {
		if(e.keyCode == 27 && $(".overlay").css("display") != "none" ) { 
			event.preventDefault();
			$(".overlay").fadeToggle("fast");
		}
	});

		});
	</script>
	</head>
	<body>

<!--Cargar las imagenes antes de mostrarlas-->

<div id="header">
      <ul id="floating-social-icons">
    <li><a href=""><img src="../images/icons/logo.png" alt="" /></a></li>
  </ul>
      <div id="menuSuperior">
    <nav>
          <ul>
        <li> <a href="#"> <span>Ajustes</span> </a> </li>
        <li> <a href="#"> <span>Contactos</span> </a> </li>
        <li> <a href="../../Registros/PAGINASPHP/RegistroPersona.php"> <span>Registrar</span> </a> </li>
        <li> <a id="loginLink" href="#"> <span>Ingresar</span> </a> </li>
      </ul>
        </nav>
  </div>
      <div class="overlay" style="display: none;">
    <div class="login-wrapper" >
          <div class="login-content"> <a class="close">X</a>
        <h3>PetsRescue</h3>
        <form id ="formLogin" method="post" action="iniciarSesion.php">
              <label for="username"> Usuario:
            <input type="text" name="username" id="usernamePHP" placeholder="user@petsrecue.org" required="required" />
          </label>
              <label for="password"> Contraseña:
            <input type="password" name="password" id="passwordPHP" placeholder="*******" required="required" />
          </label>
              <button type="submit" id ="login-php">Ingresar </button>
              <div style="display:none" id="searchresults"><!--Resultados :--></div>
              <ul id="results" class="update">
          </ul>
            </form>
      </div>
        </div>
  </div>
    </div>
<div id="footer"></div>
<div id="fullpage"> 
      <!--'Inicio', 'Reportar encuentro', 'Reportar pérdida', 'Buscador', 'Casa cuna', 'Adopciones', 'Lista negra', 'Donaciones'-->
      <div class="section" id="sectionInicio">
    <div class="content" >
          <ul class="bmenu">
        <li><a href="../../Registros/PAGINASPHP/ReporteMascotaEncontrada.php">Reportar encuentro</a></li>
        <li><a href="../../Registros/PAGINASPHP/ReporteMascotaPerdida.php">Reportar pérdida</a></li>
        <li><a href="#Buscador">Buscador</a></li>
        <li><a href="#Casa cuna">Casa cuna</a></li>
        <li><a href="#Adopciones">Adopciones</a></li>
        <li><a href="#Lista negra">Lista negra</a></li>
        <li><a href="#Donaciones">Donaciones</a></li>
        <li><a href="../../Registros/PAGINASPHP/RegistroPersona.php">Registro</a></li>
        <li><a href="#Ayuda">Ayuda</a></li>
      </ul>
        </div>
  </div>
      <div class="section" id="sectionBuscador"> </div>
      <div class="section" id="sectionListaNegra">
    <div style="background-color:#1bbc9b" class="slide" id="slide1"> </div>
    <div class="slide" id="slide2"> </div>
  </div>
      <div class="section" id="sectionDonaciones"> </div>
      <div class="section" id="sectionAyuda">
      <h2>Para mayor información</h2>
     <a href="http://petrescue.wikia.com/wiki/PetRescue_Wiki">Presione acá<a> </div>
      
    </div>
<script type="text/javascript">
 
$(function() {
 
    $("#formLogin").click(function() {
		
		//alert('Validando usuario 1');
		
        // getting the value that user typed
        var buscarNombreUsuario    = $("#usernamePHP").val();
        var buscarContraseñaUsuario    = $("#passwordPHP").val();
		
		
        // if searchString is not empty
        if(buscarNombreUsuario != '' & buscarContraseñaUsuario != '') {
            // ajax call
			
			//alert('Validando usuario');
			
            $.ajax({
                type: "POST",
                url: "iniciarSesion.php",
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
			return false;   
        }
		else{
			//return false;
		}
        
    });
});
</script>
</body>
</html>