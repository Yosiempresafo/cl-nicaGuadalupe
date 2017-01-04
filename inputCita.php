<?php

	$conector = mysqli_connect('localhost', 'root', '', 'clinica');

	$nom = $_GET["nombre"];
	$apaterno = $_GET["apellidoPa"];
	$amaterno = $_GET["apellidoMa"];
	$edad = $_GET["edad"];
	$sangre = $_GET["sangre"];
	$dom = $_GET["domicilio"];
	$aler = $_GET["alergias"];
	$corr = $_GET["correo"];
	$tel = $_GET["telefono"];
	$espe = $_GET["especialidad"];
	$fecha = $_GET["fecha"];
	$hora = $_GET["hora"];

	$queryPaciente = "INSERT INTO paciente (Nombre,APaterno,AMaterno,Edad,TipoSangre,Domicilio,Correo,Telefono,Alergias) VALUES ('".$nom."','".$apaterno."','".$amaterno."',".$edad.",'".$sangre."','".$dom."','".$corr."','".$tel."','".$aler."');";
	$res = mysqli_query($conector,$queryPaciente);

	if($res){
		$res2 = mysqli_query($conector,"SELECT idPaciente FROM paciente ORDER BY idPaciente DESC LIMIT 1;");
		if($res2){
			while ($fila = mysqli_fetch_array($res2)){
				$idPaciente = utf8_encode($fila["idPaciente"]);
			}
			$queryCita = "INSERT INTO cita (Especialidad,Fecha,Hora,idPaciente) VALUES ('".$espe."','".$fecha."','".$hora."',".$idPaciente.");";
			if(mysqli_query($conector,$queryCita)){
				echo "Todo salio bien";
				}else{
					echo "Error con input de cita";
				}
			}else{
				echo "Error con select de id paciente";
			}		
	}else{
		echo "Error con input de paciente";
	}
?>