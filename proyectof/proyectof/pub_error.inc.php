<div class="fecha">
	<div > <a class="boton2" href="salir.php">SALIR</a></div> 
</div> <br>
Informar errores: <br><br>
<div class="centro">
	<div class ="contenedor">
    <?php
//session_start();
if(empty($idcom) && empty($iddep)){
    echo "ERROR COMPROBANTE Y DEPOSITO";
}
else {
    if(empty($iddep))
    {
        echo "ERROR DEPOSITO";
    }
    else {
            echo "ERROR EN EL COMPROBANTE";
    }
}
echo '<br> ESTUDIANTE: '.$nombre;
?>
<input type="hidden" name="cie" value="<?php echo $ci;?>">
    </div>
</div>	

<br/>


