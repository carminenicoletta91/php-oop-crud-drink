<?php
$servername ='localhost';
$username ='root';
$password ='';
$dbname ='distibutore';

$conn = new mysqli($servername,$username,$password,$dbname);

if ($conn -> connect_error){
  var_dump("ERROR");
  var_dump($conn);
  die();
}




?>
