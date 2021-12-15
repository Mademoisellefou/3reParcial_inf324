<?php
//session_start();
$ci=$_SESSION["ci"];
$sqlL="SELECT * FROM estudiante WHERE ci like '".$ci."'";
#echo $sqlL; 
$resultadoL=mysqli_query($conn, $sqlL);
$filaL=mysqli_fetch_array($resultadoL);
$nombre=$filaL['nombre']." ".$filaL["paterno"]." ".$filaL["materno"];

$sqlM="SELECT m.*,n.* FROM notas n, materia m WHERE ci like '$ci' and m.idmateria like n.idmateria and n.notafin is NULL";
$resultadoM=mysqli_query($conn, $sqlM);
$filaM=mysqli_fetch_array($resultadoM);

?>