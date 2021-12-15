<?php     
		//session_start();
		include "conexion.inc.php";
		$sql="select * from seguimiento where usuario='Kardex' and fechafin is null";
		$resultado=mysqli_query($conn, $sql);
		$fila=mysqli_fetch_array($resultado);
	
?>
<div class="alineacion2">
<div style="border-right: 2px solid black;"class="centro"> <br> 
            <img src="./images/umsa.png"/> <br>
            <div class ="formulario">
				<div class ="alineacion2">
					<div >
					BANDEJA DE KARDEX
					<table>
					<tr><td>CI del usuario</td><td>: <?php echo $_SESSION["ci"]; ?> </td> </tr>
					</table>
				</div> <br>
			</div>
	</div>
    </div><br>
<div class ="centro">
	

	 <br>

	<div class="contenedor">
		<table class="tabla">
			<?php
				if(!empty($fila)){
					echo '<tr><th>Detalles</th><th>Fecha Inicio</th><th>Acción</th></tr>';
				}?>
		</table>
		<div class="fondosc3">
		<table class="tabla">
			<?php
				if(!empty($fila)){
					while($fila)
					{
						echo "<tr>";
						echo "<td> Nro Trámite: ".$fila["notramite"]."<br>";
						echo "Flujo: ".$fila["flujo"]."<br>";
						echo "Proceso: ".$fila["proceso"]."</td>";
						echo "<td>".$fila["fechainicio"]."</td>";
						echo "<td><a class='boton3' ";
						echo "href='desflujo.php?flujo=$fila[flujo]&proceso=$fila[proceso]&notramite=$fila[notramite]&inicio=$fila[fechainicio]&id=$fila[id]'";
						echo ">Mostrar<a/></td>";
						echo "</tr>";
						$fila=mysqli_fetch_array($resultado);
					}
				}else{
					echo 'No existen tramites pendientes';
				}		
				?>
		</table>
		</div><br>	
	</div> 
</div>

<br>
	
</div>