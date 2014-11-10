<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>ShareStuff</title>
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="css/registro.css" media="screen">


<link rel="stylesheet" href="css/search.css" media="screen">

<script src="js/modernizr.custom.js"></script>
<script src="js/jquery-1.11.1.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/default.css" />
<link rel="stylesheet" href="css/catalogoM1.css" media="screen">

<style>
body {
	background: #000;
	color: #DDD;
	font-family: 'Helvetica', 'Lucida Grande', 'Arial', "sans-serif";
}
</style>
<style>
#wrapper {
	margin-top: 50px;
	margin-right: auto;
	margin-left: auto;
	margin-bottom: 0;
	text-align: center;
}
#footer {
	color: #fff;
	height: 100px;
	right: 10%;
	width: 940px;
}
</style>
<script type="text/javascript">
//Execute the function when window load
$(window).bind("load", function() { 
         
           //setup the height and position for your sticky footer
                footerHeight = 0,
           footerTop = 0,
           $footer = $("#footer");
 
       positionFooter();
 
       function positionFooter() {
 
                footerHeight = $footer.height();
                footerTop = ($(window).scrollTop()+$(window).height()-footerHeight)+"px";
 
               if ( ($(document.body).height()+footerHeight) < $(window).height()) {
                   $footer.css({
                        position: "absolute"
                   }).animate({
                        top: footerTop
                   })
               } else {
                   $footer.css({
                        position: "static"
                   })
               }
 
       }
 
       $(window)
               .scroll(positionFooter)
               .resize(positionFooter)
 
})
</script>
</head>
<body>
<br><br>
<div align="center">
  <label id="labelConsulta">Consulta Donaciones</label>
</div><br>

<div align="center"> 

<form>
  <input type="search" placeholder="Nombre Persona"  >
</form>
<form>
  <input type="search" placeholder="Primer Apellido">
</form>
<form>
  <input type="search" placeholder="Nombre Asociación">
</form>

  
</div>

<div>

<ul id="og-grid" class="og-grid">

</ul>

</div>

</body>


<script src="js/grid.js"></script>
		<script>
			$(function() {
				Grid.init();
			});
		</script>
</html>