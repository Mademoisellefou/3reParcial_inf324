<?php
session_start();
$ci=$_SESSION["ci"];
$sqlL="SELECT * FROM estudiante WHERE estado like 'habilitado'"
$resultadoL=mysqli_query($conn, $sqlL);
$filaL=mysqli_fetch_array($resultadoL);
?>
