<div class="fecha">
	<div > <a class="boton2" href="salir.php">SALIR</a></div> 
</div> <br>
 
Habilitar etapa de inscripción <br><br>
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

<br/>
<table class="tabla">
<tr> <th style="width:20%;">SIGLA</th><th>MATERIA</th></tr>
<?php

while($filaR)
{
    echo "<tr><td style='width:20%;'>".$filaR['sigla']."</td><td>".$filaR['nombre']."</td></tr>";	
    $filaR=mysqli_fetch_array($resultadoR);
}
while($filaM)
{
    echo "<tr><td>".$filaM['sigla']."</td><td>".$filaM['nombre']."</td></tr>";		
    $filaM=mysqli_fetch_array($resultadoM);
}
?>
</table>
<?php

?>

</div>
</div>
</div>
<?php

?>