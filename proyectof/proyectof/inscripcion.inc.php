<?php
$cont=0;
?>
<div class="fecha">
	<div > <a class="boton2" href="salir.php">SALIR</a></div> 
</div> <br>
 
Incripción: <br><br>
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
<tr> <th>MATERIA</th><th style="width:20%;">PARALELO</th></tr>
<?php

while($filaR)
{   $cont=$cont+1;
    echo "<tr><td>".$filaR['sigla']." ".$filaR['nombre']."</td>";	
?>
<td><select name="<?php echo 'p'.$cont;?>">
<option>A</option>
<option>B</option>
<option>C</option>
</select>
<input type="hidden" name="<?php echo "m".$cont;?>" value="<?php echo $filaR['idmateria'];?>">
</td></tr>
<?php
$filaR=mysqli_fetch_array($resultadoR);
}
while($filaM)
{
    $cont=$cont+1;
    echo "<tr><td>".$filaM['sigla']." ".$filaM['nombre']."</td>";		
?>
    <td><select name="<?php echo 'p'.$cont;?>">
    <option>A</option>
    <option>B</option>
    <option>C</option>
    </select>

<input type="hidden" name="<?php echo "m".$cont;?>" value="<?php echo $filaM['idmateria'];?>">
</td></tr>
<?php
    $filaM=mysqli_fetch_array($resultadoM);
}
?>
</table>
<input type="hidden" name="cont" value="<?php echo $cont;?>">
</div>
</div>
</div>
