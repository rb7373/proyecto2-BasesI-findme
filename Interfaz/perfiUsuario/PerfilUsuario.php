<?php include('../webV1/sites/conexionPHP.php');?>
<?php include('../webV1/sites/getUserInfo.php');?>


<!doctype html>
<html lang="en-US">
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html">
<title>PetRescue</title>
<meta name="author" content="Jake Rocheleau">
<link rel="shortcut icon" href="http://designshack.net/favicon.ico">
<link rel="icon" href="http://designshack.net/favicon.ico">
<link rel="stylesheet" type="text/css" media="all" href="css/styles.css">
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>

<style>
#logout{
float:right;
padding:5px;
border:dashed 1px gray
	font-size: 26px;
	font-weight: normal;
	color: #58ebd3;
	text-align: center;
	padding: 20px 0;
	margin-bottom: 40px;
color: rgb(0,0,0);
font-family: 'Josefin Slab', sans-serif;
font-size: 1.8em;
margin: 0 0 1.25em;
padding: 0;
}

#welcome{
	color: rgb(0,0,0);
font-family: 'Josefin Slab', sans-serif;
font-size: 1.8em;
margin: 0 0 1.25em;
padding: 0;
}
</style>

</head>

<body>
<!--Acá irían los links del menú-->
<div id="topbar"> <a href="../webV1/sites/indexV10.php">Inicio</a> </div>
<div id="w">
  <div id="content" class="clearfix">
    <div id="userphoto"><img src="images/avatar.png" alt="default avatar"></div>
    <h1>Bienvenid@</h1>
<div id="profile">
<b id="welcome"><i><?php echo $_SESSION['login_user']; ?></i></b>
<b id="logout"><a href="../webV1/sites/logout.php">Cerrar sesión</a></b>
</div>
    <nav id="profiletabs">
      <ul class="clearfix">
        
        <li><a href="#inicio">Perfil</a></li>
        <li><a href="#mPerdida">Mascotas Perdidas</a></li>
        <li><a href="#mEncontrada">Mascotas Encontradas</a></li>
        <li><a href="#mAdoptadas">Adopciones</a></li>
      </ul>
    </nav>
    <section id="inicio">
      <p>Aquí va la informacion de la persona.</p>
      <p class="setting"><span>Correo Electrónico<img src="images/edit.png" alt="*Edit*"></span> lolno@gmail.com</p>
      <p class="setting"><span>Contraseña<img src="images/edit.png" alt="*Edit*"></span> 123456</p>
      <p class="setting"><span>Dirección <img src="images/edit.png" alt="*Edit*"></span> None</p>
      <p class="setting"><span>Otros <img src="images/edit.png" alt="*Edit*"></span> None</p>
    </section>
    <section id="mPerdida" class="hidden">
      <p></p>
      <ul id="listaPerfiles" class="clearfix">
        <li><a href="../Registros/PAGINASPHP/ReporteMascotaPerdida.php"><img src="images/dogAvatar.svg" width="256" height="256">Ir a formulario</a></li>
      </ul>
    </section>
    <section id="mEncontrada" class="hidden">
      <ul id="listaPerfiles" class="clearfix">
        <li><a href="../Registros/PAGINASPHP/ReporteMascotaEncontrada.php"><img src="images/dogAvatar.svg" width="256" height="256">Ir a formulario</a></li>
      </ul>
    </section>
    <section id="mAdoptadas" class="hidden">
      <p>Para aceptar mascotar</p>
      <ul id="listaPerfiles" class="clearfix">
      <li><a href="../Registros/PAGINASPHP/RegistroCasaCuna.php"><img src="images/dogAvatar.svg" width="256" height="256">Ir a formulario</a></li>
      </ul>
    </section>
  </div>
  <!-- @end #content --> 
</div>
<!-- @end #w --> 
<script type="text/javascript">
$(function(){
  $('#profiletabs ul li a').on('click', function(e){
    e.preventDefault();
    var newcontent = $(this).attr('href');
    
    $('#profiletabs ul li a').removeClass('sel');
    $(this).addClass('sel');
    
    $('#content section').each(function(){
      if(!$(this).hasClass('hidden')) { $(this).addClass('hidden'); }
    });
    
    $(newcontent).removeClass('hidden');
  });
});
</script>
</body>
</html>