<?php
include("./conexion.php");  //importa conexion.php

include("./conexion.php");
session_start(); 
$nom = $_SESSION['nom'];
$pat = $_SESSION['pat'];
$mat = $_SESSION['mat'];


?>


<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8">
    <title>Clínica Guadalupe</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <!-- CSS  -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  </head>
  <body>

    <main>
      <div class="navbar-fixed">
        <nav>
          <div class="nav-wrapper amber lighten-4">
            <a class="brand-logo" href="index.html">&nbsp;&nbsp;&nbsp;Clínica Guadalupe</a>
            <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
            <ul class="right hide-on-med-and-down">
              <li class=""><span class="gray">Hola, <?php echo $nom.' '.$pat.' '.$mat;?>&nbsp;</span></li>
              <li class=""><a href="doc_inventario.php">Inventario</a></li>
              <li class="active"><a href="doc_consultas.php">Consultas</a></li>
              <li class=""><a href="doc_historiales.php">Historiales Clínicos</a></li>
              <li class=""><a href="admin.php">¿Eres Administrador?</a></li>
              <li class=""><a href="index.html">Salir&nbsp;&nbsp;</a></li>
            <ul class="side-nav oro" id="mobile-demo">
              <li class=""><a href="">Hola, <?php echo $nom.' '.$pat.' '.$mat;?>O</a></li>
              <li class=""><a href="doc_inventario.php">Inventario</a></li>
              <li class="active"><a href="doc_consultas.php">Consultas</a></li>
              <li class=""><a href="doc_historiales.php">Historiales Clínicos</a></li>
              <li class=""><a href="admin.php">¿Eres Administrador?</a></li>
              <li class=""><a href="index.html">Salir&nbsp;&nbsp;</a></li>
            </ul>
          </div>
        </nav>
      </div>


  <div class="row">
    <div class="col offset-m1 m10">
    <h3 class="center">Citas</h3>
    <table class="highlight responsive-table">
      <thead>
          <tr>
              <th>idCita</th>
              <th>Especialidad</th>
              <th>Fecha</th>
              <th>Hora</th>
              <th>Edad</th>
              <th>Especialidad</th>
              <th>idPaciente</th>
          </tr>
      </thead>
      <tbody>

    <?php 
    $res = mysqli_query($conector,"SELECT * FROM cita A INNER JOIN paciente B on A.idPaciente=B.idPaciente WHERE B.idMedico IS NULL;");
    while ($fila = mysqli_fetch_array($res)){
      $idc = utf8_encode($fila["idCita"]);    
      $espe = utf8_encode($fila["Especialidad"]);   
      $fecha = utf8_encode($fila["Fecha"]);
      $hor = utf8_encode($fila["Hora"]);
      $edad = utf8_encode($fila["Edad"]);
      $med1 = utf8_encode($fila["Especialidad"]);
      $idp = utf8_encode($fila["idPaciente"]);

      echo '<tr><td>'.$idc."</td> <td>".$espe."</td> <td>".$fecha."</td> <td>".$hor."</td> <td>".$edad."</td> <td>".$med1."</td> <td>".$idp.'</td></tr>';
    }
  ?>

  </tbody>
  </table>

    </div>
  </div>
    </main>


    <footer class="page-footer">
          <div class="container">
            <div class="row">
              <div class="col l6 s12">
                <h5>Dirección</h5>
                <p class="grey-text text-lighten-4">Aquí va la dirección</p>

                <h5>Teléfonos</h5>
                <p class="grey-text text-lighten-4">Aquí van los teléfonos</p>
              </div>

              <div class="col l4 offset-l2 s12">
                <h5>Correo</h5> <span class="white-text">Aquí va el correo</span><br>

              </div>
            </div>
          </div>
          <div class="footer-copyright">
            <div class="container">
            <center>
            ©GAAX 2017 
            </center>
            </div>
          </div>
  </footer>

  <!--  Scripts-->
  <script src="js/jquery-2.1.1.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>

  </body>
</html>