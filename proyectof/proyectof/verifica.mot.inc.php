<?php
session_start();
$sqlL="SELECT c.*, e.* FROM comprobante c, tramite t, estudiante e WHERE c.notramite like t.notramite AND t.notramite like '$notramite' AND e.ci like t.ci";
$resultadoL=mysqli_query($conn, $sqlL);
$filaL=mysqli_fetch_array($resultadoL);
$ci=$filaL['ci'];
$sqlL2="INSERT INTO matricula (idm,ci) VALUES (NULL,'$ci')";
#echo $sqlL; 
mysqli_query($conn, $sqlL2);
?>