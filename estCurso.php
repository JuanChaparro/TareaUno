<?php 
	include_once 'includes/conectar.php'; //INCLUYO ARCHIVO DE CONEXIÓN
	$seleccion=$_POST['materia'];
	$query = "SELECT uc.idUsuario, u.nombre FROM usuarios AS u, usuarios_curso AS uc WHERE uc.idUsuario=u.idUsuario AND uc.idCurso=".$seleccion;
	$resultQuery = mysqli_query($con,$query);
	?>
	<!DOCTYPE html>
	<html>
	<head>
		<title></title>
	</head>
	<body>
		<!-- Select -->
		<form action="notasEst.php" method="post">
			Estudiantes:<br/> 
			<select name="estu">
				<?php
				while ($row = mysqli_fetch_array($resultQuery)) {  
					/*<option value="<?php echo $row['id_estudiante'] ?>"> <?php echo $row['nombre'] ?> </option>*/
					echo "<option value='".$row['idUsuario']."'>".$row['nombre'] ."</option>";

				}

				?>

			</select>

			<?php
			echo' <input type="hidden" value="'.$seleccion.'" name="curso" />'
			?>
			<p><input type="submit" value="Continuar" /></p>
		</form>
	</body>
	</html>
