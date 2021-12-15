
<div align="center">
<div class="matricula">
<b>
	<div>
		<div> <br>
		UNIVERSIDAD MAYOR DE SAN ANDRÉS <br>
		MATRÍCULA UNIVERSITARIA <br>
		Nro de matricula: <?php echo $idm; ?>/2022<br></b>
		<div style="width:400px;display:flex;text-align:center;" class="alineacion2">
			<div style="width:120px;">
				<img src="./images/<?php echo $ci;?>.png"/> 
			</div>
			<div align="center">
				<?php echo $nombre; ?> <br> 
				<table cellpadding="0" cellspacing="0">
				<tr><td><b>CI</b></td><td><b>REG. UNIV.</b></td><td><b>DIP. BACH.</b></td></tr>
				<tr><td><?php echo $ci; ?></td><td><?php echo $ru; ?></td><td><?php echo $db; ?></td></tr>
				<tr><td colspan="3"><b>CATEGORIA</b></td></tr>
				<tr><td colspan="3"><?php echo $categoria;?> &nbsp;&nbsp;&nbsp;<?php echo $monto;?> bs</td></tr>
				</table>
			</div>
		</div>
<br>
	<table>
	<tr><td><b>FACULTAD</b></td><td></td></tr>
	<tr><td></td><td><?php echo $fac; ?></td></tr>
	<tr><td><b>CARRERA/PROGRAMA</b></td><td></td></tr>
	<tr><td></td><td><?php echo $carrera; ?></td></tr>
	</table>
	</div>
	</div>

</div>
</div>

<?php
$botonsiguiente=" Generar ";
?>