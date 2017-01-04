<?php
include("./conexion.php");	//importa conexion.php

echo '--------------------------------------------------------------------------------------------------------------------------------------';
?>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Clinica</title>

	<h1>Imprime todos los datos del personal</h1>
	<?php 
		$res = mysqli_query($conector,"SELECT * FROM `personal`");

		while ($fila = mysqli_fetch_array($res)){
			$rfc = utf8_encode($fila["RFC"]);		
			$nom = utf8_encode($fila["Nombre"]);		
			$ap = utf8_encode($fila["APaterno"]);
			$am = utf8_encode($fila["AMaterno"]);
			$corr = utf8_encode($fila["Correo"]);
			$tel = utf8_encode($fila["Telefono"]);
			$dir = utf8_encode($fila["Direccion"]);
			$usr = utf8_encode($fila["Usuario"]);
			$pass = utf8_encode($fila["Contra"]);
			$adm = utf8_encode($fila["Admin"]);
			echo '<table style="width:80%"><tr><th>'.$rfc."</th> <th>".$nom."</th> <th>".$ap."</th> <th>".$am."</th> <th>".$corr."</th> <th>".$tel."</th> <th>".$dir."</th> <th>".$usr."</th> <th>".$pass."</th> <th>".$adm.'</th></tr></table>';
		}

		$res = mysqli_query($conector,"SELECT * FROM `paciente`");

		echo "<h1>Imprime todos los datos de los pacientes</h1>";

		while ($fila = mysqli_fetch_array($res)){
			$idp = utf8_encode($fila["idPaciente"]);		
			$nom = utf8_encode($fila["Nombre"]);		
			$ap = utf8_encode($fila["APaterno"]);
			$am = utf8_encode($fila["AMaterno"]);
			$edad = utf8_encode($fila["Edad"]);
			$sangre = utf8_encode($fila["TipoSangre"]);
			$dom = utf8_encode($fila["Domicilio"]);
			$corr = utf8_encode($fila["Correo"]);
			$tel = utf8_encode($fila["Telefono"]);
			$ale = utf8_encode($fila["Alergias"]);
			$histo = utf8_encode($fila["Historial"]);
			$idm = utf8_encode($fila["idMedico"]);
			echo '<table style="width:80%"><tr><th>'.$idp."</th> <th>".$nom."</th> <th>".$ap."</th> <th>".$am."</th> <th>".$edad."</th> <th>".$sangre."</th> <th>".$dom."</th> <th>".$corr."</th> <th>".$tel."</th> <th>".$ale."</th> <th>".$histo."</th> <th>".$idm.'</th></tr></table>';
		}
	?>

	
</head>
<body>
	
</body>
</html>