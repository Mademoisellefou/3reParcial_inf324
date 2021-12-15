<?php
//session_start();
$nombre1=$_SESSION["ci"];
$sql_c="select * from estudiante where ci=".$nombre1;
$resultado_c=mysqli_query($conn, $sql_c);
$fila_c=mysqli_fetch_array($resultado_c);
?>