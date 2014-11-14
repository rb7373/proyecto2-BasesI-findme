<?php
// Establishing Connection with Server by passing server_name, user_id and password as a parameter



header('Content-Type: text/html; charset=UTF-8');

session_start();// Starting Session
// Storing Session
$user_check=$_SESSION['login_user'];

if(!isset($user_check)){


header('Location: ../../Interfaz/webV1/sites/indexV10.php'); // Redirecting To Home Page

}
?>