<div class="fecha">
	<div > <a class="boton2" href="salir.php">SALIR</a></div> 
</div> <br>
Fecha de matriculación: 18/01/2022 al 04/02/2022 <br><br>
<div class="centro">
	<div class ="contenedor">
	<?php
	if (!empty($filaL2)) {
	echo '<br> Mensaje de Kardex:<br> Error de matriculación:  '.$des.'<br><br>';
	} 
	?>
		<b>Datos Personales:</b>  <br><br>
	<div class="foto">
		<img src="./images/<?php echo $ci;?>.png"/> 
	</div>
	<br>
	<table>
		<tr><td><b>CI</b></td><td>: <?php echo $_SESSION["ci"]; ?> </td> </tr>
		<tr><td><b>ESTUDIANTE</b></td><td>: <?php echo $nombre; ?> </td> </tr>
		<tr><td><b>FACULTAD</b></td><td>: <?php echo $filaL['facultad']; ?> </td> </tr>
		<tr><td><b>CARRERA</b></td><td>: <?php echo $filaL['carrera']; ?> </td> </tr>
		<tr><td><b>REG.UNIV.</b></td><td>: <?php echo $filaL['ru']; ?> </td> </tr>
		<tr><td><b>EMAIL</b></td><td>: <?php echo $filaL['email']; ?> </td> </tr>
		<tr><td><b>CELULAR</b></td><td>: <?php echo $filaL['celular']; ?> </td> </tr>
		<tr><td><b>DIRECCIÓN</b></td><td>: <?php echo $filaL['direccion']; ?> </td> </tr>
	</table>
</div>
</div>
</div>

