<?php
session_start();
$sqlL="SELECT e.* FROM tramite t, estudiante e WHERE t.notramite like '$notramite' AND e.ci like t.ci";
echo $sqlL; 
$resultadoL=mysqli_query($conn, $sqlL);
$filaL=mysqli_fetch_array($resultadoL);
$ci=$filaL['ci'];
$sqlL="UPDATE estudiante SET estado='inscripcion'WHERE ci like '".$ci."'";
echo $sqlL;
mysqli_query($conn, $sqlL);
?>
