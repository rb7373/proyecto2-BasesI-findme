<?php
	include("provincia.php");
?>

<!doctype html>
<html lang="es">
	<head>
	<meta charset="UTF-8">
	<title>Combobox</title>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
	<script>
		$(document).ready(function(){
			
			alert('cambio');
			
			//CAMBIO
			$("#cboxProvincia").change(function() {
				//CAMBIO
				
				alert('cambio');
				
				var provincia = $(this).val();
				//CAMBIO
				if(provincia > 0)
				{
			        var datos = {
						//CAMBIO
			            idProvincia : $(this).val()  
			        };
					//CAMBIO
			        $.post("canton.php", datos, function(ciudades) {
			        	//CAMBIO
					  	var $comboCanton = $("#cboxCanton"); //CAMBIO
						//CAMBIO
		                $comboCantons.empty();
		                $.each(ciudades, function(index, cuidad) {
		                	//
	                        $comboCiudades.append("<option>" + cuidad.nombre + "</option>");
		                });
					}, 'json');
				}
				else
				{	//CAMBIO
					var $comboCanton = $("#cboxCanton"); //CAMBIO
	                $comboCiudades.empty();
					$comboCiudades.append("<option>Seleccione un cantón</option>");
				}
			});
		}); 
	</script>
	<link rel="stylesheet" href="style.css">
	</head>
	<body>
<!--CAMBIO-->
<label for="cboxProvincia">Provincia</label>
<!--CAMBIO-->
<select id="cboxProvincia">
      <option value="0">Seleccione un país</option>
      <?php
	  				//CAMBIO
					$paises = obtenerTodosLosPaises();
					//CAMBIO
					foreach ($paises as $pais) { 
						//CAMBIO
						echo '<option value="'.$pais->id.'">'.utf8_encode($pais->provincia).'</option>';		
					}
				?>
    </select>
    <!--CAMBIO-->
<label for="cboxCanton">Cantón</label>
	<!--CAMBIO-->
<select id="cboxCanton">
      <option value="0">Seleccione un cantón</option>
</select>
</body>
</html>