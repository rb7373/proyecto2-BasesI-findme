<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Validar email</title>


<!--IMPORTS-->

<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

</head>


<script type="text/javascript">


$(document).ready(function() {


    $("#faq_search_input").keyup(function() {
		
        var faq_search_input = $(this).val();
		
		alert(faq_search_input);
		
        var dataString = 'keyword=' + faq_search_input;
        if (faq_search_input.length > 3)

        {
            $.ajax({
                type: "GET",
                url: "ajax-search.php",
                data: dataString,
                beforeSend: function() {

                    //$('input#faq_search_input').addClass('loading');
					//alert("antes");

                },
                success: function(server_response) {
					
					//alert("resultado");

//                    $('#searchresultdata').html(server_response).show();
//                    $('span#faq_category_title').html(faq_search_input);
//
//                    if ($('input#faq_search_input').hasClass("loading")) {
//                        $("input#faq_search_input").removeClass("loading");
//                    }

                }
            });
        }
        return false;
    });
});

</script>

<body>

<input  name="query" type="text" id="faq_search_input" />


</body>
</html>
