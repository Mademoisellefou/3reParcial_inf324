<?php
//session_start();
$ci=$_SESSION["ci"];
$sqlL="SELECT * FROM estudiante WHERE ci like '".$ci."'";
#echo $sqlL; 
$resultadoL=mysqli_query($conn, $sqlL);
$filaL=mysqli_fetch_array($resultadoL);
$nombre=$filaL['nombre']." ".$filaL["paterno"]." ".$filaL["materno"];
$sqlL2="SELECT * FROM cpt WHERE ci like '".$ci."' ORDER BY idctp DESC LIMIT 1";
#echo $sqlL2; 
$resultadoL2=mysqli_query($conn, $sqlL2);
$filaL2=mysqli_fetch_array($resultadoL2);

?>