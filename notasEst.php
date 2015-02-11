<?php 
	include_once 'includes/conectar.php'; //INCLUYO ARCHIVO DE CONEXIÓN
	$seleccion=$_POST['estu'];
	$elcurso=$_POST['curso'];

	$query = "SELECT n.valor,tn.porcentaje FROM nota AS n, tipo_nota AS tn WHERE n.idUsuario=$seleccion AND n.idCurso=".$elcurso;
	$segundoquery="SELECT nombre FROM usuarios WHERE idUsuario=$seleccion";
	$resultQuery = mysqli_query($con,$query);
	$resultdosQuery = mysqli_query($con,$segundoquery);
	?>
	<!DOCTYPE html>
	<html>
	<head>
		<title></title>
	</head>
	<body>
		<!-- Select -->
		<form >
			Estudiantes:<br/> 
			
				<?php

				$row=mysqli_fetch_array($resultdosQuery);
				echo "Notas de: ".$row['nombre'];

				while ($row = mysqli_fetch_array($resultQuery)) {  
					
					$porcentajest=$row['valor']*$row['porcentaje'];
					echo "<option value='".$row['idNotas']."'>".$row['valor'] ."</option>";
					$notafinal+=$porcentajest;
					echo $notafinal;

				}

				?>


			<?php
			echo' <input type="hidden" value="'.$seleccion.'" name="curso" />'
			?>
			
		</form>
	</body>
	</html>
