<?php
include("./conexion.php");	//importa conexion.php

echo '--------------------------------------------------------------------------------------------------------------------------------------';
?>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Clinica</title>

	<h1>Imprime todos las citas sin doctor asignado</h1>
	<?php 
		$res = mysqli_query($conector,"SELECT * FROM cita A INNER JOIN paciente B on A.idPaciente=B.idPaciente WHERE B.idMedico IS NULL;");
		if($res)
			echo "fuciona";
		else{
			echo "error";
		}


		while ($fila = mysqli_fetch_array($res)){
			$idc = utf8_encode($fila["idCita"]);		
			$espe = utf8_encode($fila["Especialidad"]);		
			$fecha = utf8_encode($fila["Fecha"]);
			$hor = utf8_encode($fila["Hora"]);
			$med1 = utf8_encode($fila["Medicamento1"]);
			$med2 = utf8_encode($fila["Medicamento2"]);
			$med3 = utf8_encode($fila["Medicamento3"]);
			$med4 = utf8_encode($fila["Medicamento4"]);
			$idp = utf8_encode($fila["idPaciente"]);

			echo '<table style="width:80%"><tr><td>'.$idc."</td> <td>".$espe."</td> <td>".$fecha."</td> <td>".$hor."</td> <td>".$med1."</td> <td>".$med2."</td> <td>".$med3."</td> <td>".$med4."</td> <td>".$idp.'</td></tr></table>';
		}
	?>

	
</head>
<body>
	
</body>
</html>