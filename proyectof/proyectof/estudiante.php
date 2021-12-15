
<?php   
	//session_start();
	$sql="select * from seguimiento where usuario='".$_SESSION["ci"]."' and fechafin is null";
	$resultado=mysqli_query($conn, $sql);
	$fila=mysqli_fetch_array($resultado);
	$sql_n="select *,concat(paterno,' ',materno,' ',nombre)as nombre from estudiante where ci='".$_SESSION["ci"]."'";
	$resultado_n=mysqli_query($conn, $sql_n);
	$fila_n=mysqli_fetch_array($resultado_n);
	$nombre=$fila_n["nombre"]; 
	$estado=$fila_n["estado"];
	$ru=$fila_n["ru"];
	$db=$fila_n['dipbachiller'];
	$fac=$fila_n['facultad'];
	$carrera=$fila_n['carrera'];
	$categoria=$fila_n['categoria'];
	

?>
	
    <div class="alineacion2">
	
	<div class="centro">
		<div class ="formulario">
			
			<table>
				<tr><td>CI</td><td>: <?php echo $_SESSION["ci"]; ?> </td> </tr>
				<tr><td>Estudiante</td><td>: <?php echo $nombre; ?> </td> </tr>
			</table>
		</div>
		<br>
		<div class ="contenedor">
			
			<?php
				if(empty($fila)){
					$sql2="select * from seguimiento where usuario='".$_SESSION["ci"]."' ";
					$resultado2=mysqli_query($conn, $sql2);
					$fila2=mysqli_fetch_array($resultado2);
					if(empty($fila2)){
						?>
						<div>
						Fecha de Inscripción: <br>
						24-11-21 al 16-11-21
						</div><br>
						<?php
						echo '<a class="boton3" href="iniciarINS.inc.php"> Iniciar matriculación</a>';
					}else{
					?>
					
					<?php
					if ($estado=="inscrito") {
						echo '<div class="fondosc">';
						$sqlJ="SELECT * FROM deposito WHERE ci like '$ci'";
						$resultadoJ=mysqli_query($conn, $sqlJ);
						$filaJ=mysqli_fetch_array($resultadoJ);
						$monto=$filaJ['monto'];
						$idm=$filaJ['iddeposito'];
						include "matricula.php";
						echo "<br>";
						$sqlM="SELECT m.*,n.* FROM notas n, materia m WHERE ci like '$ci' and m.idmateria like n.idmateria and n.notafin is NULL";
						$resultadoM=mysqli_query($conn, $sqlM);
						$filaM=mysqli_fetch_array($resultadoM);
					?>
					
					Materias incritas:<br><br>
					<table class="tabla">
						<tr> <th>MATERIA</th><th style="width:20%;">PARALELO</th></tr>
					<?php

					while($filaM)
					{
    					//$cont=$cont+1;
    					echo "<tr><td>".$filaM['sigla']." ".$filaM['nombre']."</td><td>".$filaM['paralelo'];		
					?>
    				</td></tr>
					<?php
  						$filaM=mysqli_fetch_array($resultadoM);
					}
					?>
					</table>
					
					<?php
						echo '</div>';		
						} else {
						?>
						<div>
						Fecha de Inscripción: <br>
						24-11-21 al 16-11-21
						</div><br>
						<?php
							echo 'Comprobante de deposito enviado, espera la confirmación de Kardex';
						}
						
					}
				}else{
					echo 'Inscripción iniciada';
					echo "<br><br>";
				}
			?>
			<table class="tabla">
				<?php
					if(!empty($fila)){
						echo '<tr><th>Detalles</th><th style="width:33%;">Acción</th></tr>';
					}
					while($fila)
					{
						
						echo "<tr>";
						echo "<td> N° Trámite: ".$fila["notramite"]."<br>";
						echo "Flujo - Proceso: ".$fila["flujo"]." - ".$fila["proceso"]."<br>";
						echo "Fecha de Inicio: ".$fila["fechainicio"]."<br>";
						echo "Estado: Pendiente ";
				?>
					<td style='width:20%;'>
					<a class="boton3" href='desflujo.php?flujo=<?php echo $fila["flujo"]?>&proceso=<?php echo $fila["proceso"]?>&notramite=<?php echo $fila["notramite"]?>'>
						Mostrar </a> <br>		
				<?php		
						$fila=mysqli_fetch_array($resultado);
						}	
				?>
			</table>
		</div>
	</div>
	<br>
	<div style="border-left: 2px solid black;"class="centro"> <br> 
            <img src="./images/umsa.png"/> <br>
            <div class="formulario">
                Bienvenido al sistema de matriculación de la
				Universidad Mayor de San Andrés
            </div>
    </div><br>
	
	</div>
	
	