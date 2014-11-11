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
</body>
</html>