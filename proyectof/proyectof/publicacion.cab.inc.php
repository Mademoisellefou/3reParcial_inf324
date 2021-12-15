<?php
//session_start();
$ci=$_SESSION["ci"];
$sqlL="SELECT * FROM tramite t,errores e WHERE ci like '".$ci."' AND t.error>0 AND e.iderror like t.error";
#echo $sqlL; 
$resultadoL2=mysqli_query($conn, $sqlL);
$filaL2=mysqli_fetch_array($resultadoL2);
$error=$filaL2["error"];
$des=$filaL2["descripcion"];
$sqlL="SELECT * FROM estudiante WHERE ci like '".$ci."'";
#echo $sqlL; 
$resultadoL=mysqli_query($conn, $sqlL);
$filaL=mysqli_fetch_array($resultadoL);
$nombre=$filaL['nombre']." ".$filaL["paterno"]." ".$filaL["materno"];

?>
