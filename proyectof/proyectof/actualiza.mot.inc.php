<?php
session_start();
$ci=$_SESSION["ci"];
$email=$_GET["email"];
$direccion=$_GET["direccion"];
$celular=$_GET["celular"];
$sqlL="UPDATE estudiante SET email='$email', direccion='$direccion', celular='$celular' WHERE ci like '".$ci."'";
echo $sqlL;
mysqli_query($conn, $sqlL);

?>
