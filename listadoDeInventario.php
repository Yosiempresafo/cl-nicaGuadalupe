<?php
include("./conexion.php");	//importa conexion.php

echo '--------------------------------------------------------------------------------------------------------------------------------------';
?>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Clinica</title>

	<h1>Imprime todos los articulos del inventario</h1>
	<?php 
		$res = mysqli_query($conector,"SELECT * FROM inventario");

		while ($fila = mysqli_fetch_array($res)){
			$id = utf8_encode($fila["idInventario"]);		
			$nom = utf8_encode($fila["Nombre"]);		
			$cant = utf8_encode($fila["Cantidad"]);
			$pre = utf8_encode($fila["Precio"]);
			echo '<table style="width:80%"><tr><th>'.$id."</th> <th>".$nom."</th> <th>".$cant."</th> <th>".$pre.'</th></tr></table>';
		}
	?>

	
</head>
<body>
	
</body>
</html>