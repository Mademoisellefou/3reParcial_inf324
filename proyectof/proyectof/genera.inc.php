
</div>

<div class="fecha">
	<div > <a class="boton2" href="salir.php">SALIR</a></div> 
</div> <br>
Datos actualizados: <br><br>
<div class="centro">
	<div class ="contenedor">
		
		<b>Datos Personales:</b>  <br><br>
	<?php
	$botonsiguiente="Generar-CPT";
	$nombre=$fila_c['paterno']." ".$fila_c['materno']." ".$fila_c['nombre'];
	$ci=$_SESSION["ci"];
	?>
	<div></div>
	<div class="foto">
		<img src="./images/<?php echo $ci;?>.png"/> 
	</div>
	<br>
	<table>
		<tr><td><b>CI</b></td><td>: <?php echo $ci; ?> </td> </tr>
		<tr><td><b>ESTUDIANTE</b></td><td>: <?php echo $nombre; ?> </td> </tr>
		<tr><td><b>FACULTAD</b></td><td>: <?php echo $fila_c['facultad']; ?> </td> </tr>
		<tr><td><b>CARRERA</b></td><td>: <?php echo $fila_c['carrera']; ?> </td> </tr>
		<tr><td><b>REG.UNIV.</b></td><td>: <?php echo $fila_c['ru']; ?> </td> </tr>
		<tr><td><b>EMAIL</b></td><td>: <?php echo $fila_c['email']; ?></td> </tr>
		<tr><td><b>CELULAR</b></td><td>: <?php echo $fila_c["celular"];?> </td> </tr>
		<tr><td><b>DIRECCIÓN</b></td><td>: <?php echo $fila_c["direccion"];?></td> </tr>
	</table>
</div>
</div>
</div>