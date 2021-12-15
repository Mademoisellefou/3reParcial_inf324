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
        <tr style="color: red;"><td><b>NRO CPT</b></td><td>: <?php echo $filaL2['idctp']; ?> </td> </tr>
		
	</table><br>
    Ingresa el nro del Comprobante del depósito: <br>
<br/>
<input type="text" name="comprobante" value=""/>
<br/>
</div>
</div>
</div>
<?php
$botonsiguiente=" -Enviar- ";
?>

