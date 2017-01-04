<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Clinica</title>

</head>
<body>
	<form action="inputCita.php" method="get">
		Nombres: <br>
		<input type="text" name="nombre" value="Inserte su nombre"><br>
		Apellido Paterno: <br>
		<input type="text" name="apellidoPa" value="Inserte su apellido paterno"><br>
		Apellido Materno: <br>
		<input type="text" name="apellidoMa" value="Inserte su apellido materno"><br>
		Edad: <br>
		<input type="text" name="edad" value="Inserte su edad"><br>
		Tipo de Sangre: <br>
		<input type="text" name="sangre" value="Inserte su tipo de sangre"><br>
		Domicilio: <br>
		<input type="text" name="domicilio" value="Inserte su domicilio"><br>
		Alergias: <br>
		<input type="text" name="alergias" value="Inserte sus alergias"><br>
		Correo: <br>
		<input type="text" name="correo" value="Inserte su correo"><br>
		Telefono: <br>
		<input type="text" name="telefono" value="Inserte su telefono"><br>
		Especialidad: <br>
		<input type="radio" name="especialidad" value="especialidad1">Especialidad 1<br>
		<input type="radio" name="especialidad" value="especialidad2">Especialidad 2<br>
		<input type="radio" name="especialidad" value="especialidad3">Especialidad 3<br>
		<input type="radio" name="especialidad" value="especialidad4">Especialidad 4<br><br>
		Fecha: <br>
		<input type="text" name="fecha" value="Fecha deseada para la cita (aaaa-dd-mm)"><br>
		Hora: <br>
		<input type="text" name="hora" value="Hora deseada para la cita"><br>
	
		<input type="submit" value="Enviar">

	</form>
</body>
</html>