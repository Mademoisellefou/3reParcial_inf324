<div class="fecha">
	<div > <a class="boton2" href="salir.php">SALIR</a></div> 
</div> <br>
 
<div class="centro">
	<div class ="contenedor">
	<div></div>
	<table>
		<tr><td><b>CI</b></td><td>: <?php echo $_SESSION["ci"]; ?> </td> </tr>
		<tr><td><b>ESTUDIANTE</b></td><td>: <?php echo $nombre; ?> </td> </tr>
		<tr><td><b>FACULTAD</b></td><td>: <?php echo $filaL['facultad']; ?> </td> </tr>
		<tr><td><b>CARRERA</b></td><td>: <?php echo $filaL['carrera']; ?> </td> </tr>
		<tr><td><b>REG.UNIV.</b></td><td>: <?php echo $filaL['ru']; ?> </td> </tr>
		
	</table><br>
    <b style="color: red;">NRO COMPROBANTE INTRODUCIDO : <?php echo $nrocomprobante;  ?></b> <br>
<br/>
<?php

if ($filaL2) {
    echo "Existe un deposito en la fecha: ".$fecha;
} else {
    echo "No existe deposito ";
}

?>

</div>
</div>
</div>
<?php
$botonsiguiente=" -Enviar- ";
?>
