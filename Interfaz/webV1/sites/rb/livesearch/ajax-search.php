<?php


include_once ('database_connection.php');

if(isset($_GET['keyword'])){
    $keyword = 	trim($_GET['keyword']) ;
$keyword = mysqli_real_escape_string($dbc, $keyword);



$query = "select topictitle,topicdescription from topics where topictitle like '%$keyword%' or topicdescription like '%$keyword%'";

//echo $query;
$result = mysqli_query($dbc,$query);
if($result){
    if(mysqli_affected_rows($dbc)!=0){
          while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
     echo '<p> <b>'.$row['topictitle'].'</b> '.$row['topicdescription'].'</p>'   ;
    }
    }else {
        echo 'No Results for :"'.$_GET['keyword'].'"';
    }
  
}
}else {
    echo 'Parameter Missing';
}




?>