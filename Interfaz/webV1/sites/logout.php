<?php
session_start();
if(session_destroy()) // Destroying All Sessions
{
header('Location: ../../webV1/sites/indexV10.php'); // Redirecting To Home Page // Redirecting To Home Page
}
?>