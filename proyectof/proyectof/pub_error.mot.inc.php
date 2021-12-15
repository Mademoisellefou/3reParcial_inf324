
<?php
session_start();
$ci=$_GET["cie"];
$sql="select * from comprobante where ci='$ci'";
$resultadoS=mysqli_query($conn, $sql);
if($resultadoS){
    $filaS=mysqli_fetch_array($resultadoS);
    $idcom=$filaS['idctp'];
}
$sql="select * from deposito where ci='$ci'";
$resultadoS=mysqli_query($conn, $sql);
if($resultadoS){
    $filaS=mysqli_fetch_array($resultadoS);
    $iddep=$filaS['iddeposito'];
}

if(empty($idctp) && empty($iddep)){
    $sql="UPDATE tramite SET error=3 WHERE ci='$ci'";
    $resultado=mysqli_query($conn, $sql);}
else {
    if(empty($iddep))
    {
        $sql="UPDATE tramite SET error=2 WHERE ci='$ci'";
        $resdep=mysqli_query($conn, $sql);
    }
    else {
        if(empty($idcom)){
            $sql="UPDATE tramite SET error=1 WHERE ci='$ci'";
            $resultado=mysqli_query($conn, $sql);
        }
    }
}
?>