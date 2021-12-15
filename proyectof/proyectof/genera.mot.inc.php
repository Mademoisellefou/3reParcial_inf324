<?php
session_start();
$ci=$_SESSION["ci"];
$sqlL="INSERT INTO cpt (ci, idctp) VALUES ('$ci', NULL)";
#echo $sqlL;
mysqli_query($conn, $sqlL);
?>
