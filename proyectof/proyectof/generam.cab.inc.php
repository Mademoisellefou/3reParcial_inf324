<?php
//session_start();
$sqlL="SELECT d.*,c.*, e.*,m.* FROM comprobante c, tramite t, estudiante e, matricula m, deposito d WHERE c.notramite like t.notramite AND t.notramite like '$notramite' AND e.ci like t.ci AND t.ci like m.ci AND t.ci like d.ci LIMIT 1";
$resultadoL=mysqli_query($conn, $sqlL);
$filaL=mysqli_fetch_array($resultadoL);
$nrocomprobante=$filaL["nrocomprobante"];
$nombre=$filaL["paterno"]." ".$filaL["materno"]." ".$filaL['nombre'];
$ci=$filaL['ci'];
$ru=$filaL['ru'];
$db=$filaL['dipbachiller'];
$fac=$filaL['facultad'];
$carrera=$filaL['carrera'];
$categoria=$filaL['categoria'];
$monto=$filaL['monto'];
$idm=$filaL['idm'];
?>
<div class="fecha">
	<div > <a class="boton2" href="salir.php">SALIR</a></div> 
</div> <br>
Matricula del estudiante: <br><br>