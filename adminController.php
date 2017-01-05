<?php
include("./conexion.php");

$user = $_GET["us"];
$password = $_GET["ps"];

$sql = "SELECT * FROM personal WHERE Usuario = '$user' and Contra = '$password'";
$res = mysqli_query($conector,$sql);

if (mysqli_num_rows($res)==0) {
      header('Location: generic.html');
}else{
	session_start();

	
	while ($fila = mysqli_fetch_array($res)){
      $nom = utf8_encode($fila["Nombre"]);   
      $pat = utf8_encode($fila["APaterno"]);   
      $mat = utf8_encode($fila["AMaterno"]);   
      $email = utf8_encode($fila["Correo"]);   
      $tel = utf8_encode($fila["Telefono"]);   
      $admin = utf8_encode($fila["Admin"]); 

      $_SESSION['nom'] = $nom;
      $_SESSION['pat'] = $pat;
      $_SESSION['mat'] = $mat;
      $_SESSION['ad'] = $admin;

      header('Location: doc_consultas.php');



    }
}
?>
