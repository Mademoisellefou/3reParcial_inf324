<?php
//session_start();
$ci=$_SESSION["ci"];
$sqlL="SELECT * FROM estudiante WHERE ci like '".$ci."'";
#echo $sqlL; 
$resultadoL=mysqli_query($conn, $sqlL);
$filaL=mysqli_fetch_array($resultadoL);
$nombre=$filaL['nombre']." ".$filaL["paterno"]." ".$filaL["materno"];
?>
