<?php
//session_start();

$sqlL="SELECT c.*, e.* FROM comprobante c, tramite t, estudiante e WHERE c.notramite like t.notramite AND t.notramite like '$notramite' AND e.ci like t.ci ";
#echo $sqlL; 
$resultadoL=mysqli_query($conn, $sqlL);
$filaL=mysqli_fetch_array($resultadoL);
$nrocomprobante=$filaL["nrocomprobante"];
$nombre=$filaL['nombre']." ".$filaL["paterno"]." ".$filaL["materno"];
$ci=$filaL['ci'];
$sqlL="SELECT * FROM deposito WHERE iddeposito LIKE '$nrocomprobante'";
#echo $sqlL;
$resultadoL2=mysqli_query($conn, $sqlL);
$filaL2=mysqli_fetch_array($resultadoL2);
$fecha=$filaL2['fecha'];
$monto=$filaL2['monto'];
?>