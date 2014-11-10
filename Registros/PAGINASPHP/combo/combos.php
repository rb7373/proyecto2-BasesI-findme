<?php
	include("pais.php");
?>

<!doctype html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Nebaris - Dropdowns en cascada</title>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
	<script>
		$(document).ready(function() {
    $("#cboPaises").change(function() {
        //var pais = $(this).val();

        var pais = $('#cboPaises option:selected').text();

        alert(pais);

        if (pais != '') {



            var datos = {
                idPais: pais
            };

            //alert(datos.toString());

            $.post("ciudad.php", datos, function(ciudades) {

                var $comboCiudades = $("#cboCiudades");
                $comboCiudades.empty();


                $.each(ciudades, function(index, cuidad) {
                    //
                    $comboCiudades.append("<option>" + cuidad.nombre + "</option>");
                });
            }, 'json');
        } else {
            var $comboCiudades = $("#cboCiudades");
            $comboCiudades.empty();
            $comboCiudades.append("<option>Seleccione un país</option>");
        }
    });
}); 
	</script>

</head>
<body>

			<label for="cboPaises">Paises</label>
			<select id="cboPaises">
				<option value="0">Seleccione un país</option>
				<?php
					$paises = obtenerTodosLosPaises();
					foreach ($paises as $pais) { 
						echo '<option>'.utf8_encode($pais->nombre).'</option>';		
					}
				?>
			</select>
			<label for="cboCiudades">Ciudades</label>
			<select id="cboCiudades">
				<option value="0">Seleccione un país</option>
			</select>
            
            
            <div style="display:none" id="searchresults"><!--Resultados :--></div>
              <ul id="results" class="update">
          </ul>

</body>
</html>