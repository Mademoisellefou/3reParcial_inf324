<?php
session_start();
$ci=$_SESSION["ci"];
$sqlU="UPDATE estudiante SET estado='inscrito'WHERE ci like '".$ci."'";
echo $sqlL;
mysqli_query($conn, $sqlU);
?>