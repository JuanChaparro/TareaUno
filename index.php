<?php 
	include_once 'includes/conectar.php'; //INCLUYO ARCHIVO DE CONEXIÓN
	$query = "SELECT * FROM cursos ORDER BY idCurso ASC";
	$resultQuery = mysqli_query($con,$query);
?>
<!DOCTYPE html>
<html>
	<head>
		<title></title>
	</head>
	<body>
		<!-- Select -->
		<form action="estCurso.php" method="post">
		  Estudiantes:<br/> 
		   <select name="materia">
		   <?php
			   	while ($row = mysqli_fetch_array($resultQuery)) {  
				/*<option value="<?php echo $row['id_estudiante'] ?>"> <?php echo $row['nombre'] ?> </option>*/
					echo "<option value='".$row['idCurso']."'>".$row['nombre'] ."</option>";
				}
			?>
		   </select>
		   <p><input type="submit" value="Continuar" /></p>
		</form>
	</body>
</html>