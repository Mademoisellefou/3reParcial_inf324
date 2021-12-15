<?php
session_start();
$ci=$_SESSION["ci"];
$cont=$_GET['cont'];
echo '<br>  cont :'.$cont;
$c=1;
while ($c<=$cont) {
    $mat='m'.$c;
    $idmateria=$_GET[$mat];
    echo $idmateria;
    $paralelo=$_GET['p'.$c];
    echo $paralelo."     we ";
    $sqlL="INSERT INTO notas (ci, idmateria, notafin,paralelo) VALUES ('$ci','$idmateria',NULL,'$paralelo')";
    echo $sqlL."<br>";
    $c=$c+1;
    mysqli_query($conn, $sqlL);
}
$sqlU="UPDATE estudiante SET estado='inscrito'WHERE ci like '".$ci."'";
echo $sqlL;
mysqli_query($conn, $sqlU);

?>
