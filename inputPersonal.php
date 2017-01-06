<?php
	
	$conector = mysqli_connect('localhost', 'root', '', 'clinica');

	$rfc = $_GET["rfc"];
	$nom = $_GET["nombre"];
	$ap = $_GET["apaterno"];
	$am = $_GET["amaterno"];
	$cor = $_GET["correo"];
	$tel = $_GET["tel"];
	$dir = $_GET["dir"];
	$user = $_GET["user"];
	$pass = $_GET["pass"];
	$adm = $_GET["admin"];

	$query = "INSERT INTO personal (RFC,Nombre,APaterno,AMaterno,Correo,Telefono,Direccion,Usuario,Contra,Admin) VALUES ('".$rfc."','".$nom."','".$ap."','".$am."','".$cor."','".$tel."','".$dir."','".$user."','".$pass."','".$adm."');";

	$res = mysqli_query($conector,$query);

	if($res)
		echo "Exito";
	else
		echo "error";
?>