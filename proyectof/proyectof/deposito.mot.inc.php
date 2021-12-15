<?php
session_start();
$ci=$_SESSION["ci"];
$comprobante=$_GET["comprobante"];

$sqlL2="SELECT * FROM comprobante WHERE notramite LIKE '$notramite'";
#echo $sqlL;
$resultadoL2=mysqli_query($conn, $sqlL2);
$filaL2=mysqli_fetch_array($resultadoL2);
$fecha=$filaL2['fecha'];
if (empty($filaL2)) {
    $sqlL="INSERT INTO comprobante (notramite,ci,nrocomprobante) VALUES ('$notramite','$ci','$comprobante')";
    #echo $sqlL; 
} else {
    $sqlL="UPDATE comprobante SET nrocomprobante='$comprobante'";
    #echo $sqlL;   
}
mysqli_query($conn, $sqlL);




?>

