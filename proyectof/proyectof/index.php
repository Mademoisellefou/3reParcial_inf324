<?php 
    session_start();
    if (isset($_SESSION["rol"]))
    {header("Location: bandeja.php");}
 ?>
<html>
	<head>
		<title>CEI</title>
        <link href="estilo1.css" rel="stylesheet" type="text/css" />
	</head>
	<body class="fondoi">
    <div class="cabecera">
		   			<br>	    
				    <h1>UNIVERSIDAD MAYOR DE SAN ÁNDRES</h1>
                    <h2>SISTEMA DE MATRICULACIÓN</h2>		    
    </div>
        <hr style="border: solid 5px;border-color:white; margin:0;">
        <br>
       <div align="center">
        <div class="centro"> 
            <div class="formulario">
                <div >
                    <img src="./images/umsa.png"/> 
                </div>
                <form action="controlindex.php" method="GET">
                    <div>
                        <div>
                            <h3>INGRESO AL SISTEMA</h3>
                         
                            <div class="alineacion"> 
                                <div >
                                    <img src="./images/usuario.png"/> 
                                </div> 
                                <input type="text" name="usuario" value="" placeholder="Ingresa tu CI" required>
                            </div><hr>
                        </div> 
                        <div >
                            <div class="alineacion">
                                <div>
                                    <img src="./images/passwd.png"/> 
                                </div>

                                <input type="password" name="contrasenia" value="" placeholder="Password" required>
                                
                            </div><hr>
                        </div>
                        <br>
                        <button type="submit" class="boton1">
                        Acceder
                        </button>
                    </div>
                </form>     
            </div>
        </div> <br>
        </div>
   
    
    <div class="alinecion2">
        <h1 style="color:white;">2022</h1>
    </div>
    </body>
</html>






