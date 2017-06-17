<?php
$config = include 'config.php';

$host = "localhost"; 
$user = "test"; 
$pass = "root"; 
$db = "online-menu"; 

$con = pg_connect("host=$host dbname=$db user=$user password=$pass") or die ("Could not connect to server\n"); 
?>