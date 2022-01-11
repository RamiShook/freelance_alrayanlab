<?php
global $connection;
session_start();
if(!isset($_SESSION['language'])){
    $_SESSION['language'] = "ar";
}

$connection = mysqli_connect('localhost', 'root', '', 'alrayan_lab');
if (!$connection){
    die("Database Connection Failed" . mysqli_error($connection));
}
$select_db = mysqli_select_db($connection, 'alrayan_lab');
if (!$select_db){
    die("Database Selection Failed" . mysqli_error($connection));
}


?>