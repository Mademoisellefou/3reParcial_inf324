<?php
//session_start();
$sqlL="SELECT e.* FROM tramite t, estudiante e WHERE t.notramite like '$notramite' AND e.ci like t.ci";
#echo $sqlL; 
$resultadoL=mysqli_query($conn, $sqlL);
$filaL=mysqli_fetch_array($resultadoL);
//$nrocomprobante=$filaL["nrocomprobante"];
$nombre=$filaL['nombre']." ".$filaL["paterno"]." ".$filaL["materno"];
$ci=$filaL['ci'];

$sqlM="SELECT * FROM  materia m WHERE m.prerequisito IN (SELECT m.sigla FROM notas n, materia m WHERE ci like '$ci' and m.idmateria like n.idmateria and n.notafin>=51) AND m.idmateria not in (SELECT idmateria FROM notas WHERE ci like '$ci')";
$resultadoM=mysqli_query($conn, $sqlM);
$filaM=mysqli_fetch_array($resultadoM);
$sqlR="SELECT m.* FROM notas n, materia m WHERE ci like '$ci' and m.idmateria like n.idmateria and n.notafin<51 AND m.idmateria not in (SELECT m.idmateria FROM notas n, materia m WHERE ci like '$ci' and m.idmateria like n.idmateria and n.notafin>=51)";
$resultadoR=mysqli_query($conn, $sqlR);
$filaR=mysqli_fetch_array($resultadoR);

?>

