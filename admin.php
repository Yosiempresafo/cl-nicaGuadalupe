<?php

include("./conexion.php");

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
              <li class=""><span class="gray">Hola, USUARIO&nbsp;</span></li>
              <li class=""><a href="doc_inventario.php">Inventario</a></li>
              <li class=""><a href="doc_consultas.php">Consultas</a></li>
              <li class=""><a href="doc_historiales.php">Historiales Clínicos</a></li>
              <li class="active"><a href="admin.php">¿Eres Administrador?</a></li>
              <li class=""><a href="index.html">Salir&nbsp;&nbsp;</a></li>
            <ul class="side-nav oro" id="mobile-demo">
              <li class=""><a href="">Hola, USUARIO</a></li>
              <li class=""><a href="doc_inventario.php">Inventario</a></li>
              <li class=""><a href="doc_consultas.php">Consultas</a></li>
              <li class=""><a href="doc_historiales.php">Historiales Clínicos</a></li>
              <li class="active"><a href="admin.php">¿Eres Administrador?</a></li>
              <li class=""><a href="index.html">Salir&nbsp;&nbsp;</a></li>
            </ul>
          </div>
        </nav>
      </div>

  <div class="row">
    <div class="col offset-m1 m10">
    <h3>Datos del personal</h3>
    <table class="highlight responsive-table">
      <thead>
          <tr>
              <th>RFC</th>
              <th>Nombre</th>
              <th>Apellido Paterno</th>
              <th>Apellido Materno</th>
              <th>Correo</th>
              <th>Teléfono</th>
              <th>Dirección</th>
              <th>Usuario</th>
              <th>Contraseña</th>
              <th>Administrador</th>
          </tr>
      </thead>
      <tbody>
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
        echo '<tr><td>'.$rfc."</td> <td>".$nom."</td> <td>".$ap."</td> <td>".$am."</td> <td>".$corr."</td> <td>".$tel."</td> <td>".$dir."</td> <td>".$usr."</td> <td>".$pass."</td> <td>".$adm.'</td></tr>';
      }
    ?>
      </tbody>
      </table>

    </div>
  </div>

  <div class="row">
    <div class="col offset-m1 m10">
    <h3>Datos de pacientes</h3>
    <table class="highlight responsive-table">
      <thead>
          <tr>
              <th>idPaciente</th>
              <th>Nombre</th>
              <th>Apellido Paterno</th>
              <th>Apellido Materno</th>
              <th>Edad</th>
              <th>Sangre</th>
              <th>Domicilio</th>
              <th>Correo</th>
              <th>Teléfono</th>
              <th>Alegias</th>
              <th>Historial</th>
              <th>idMédico</th>
          </tr>
      </thead>
      <tbody>
      <?php
        $res = mysqli_query($conector,"SELECT * FROM `paciente`");
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
            echo '<tr><td>'.$idp."</td> <td>".$nom."</td> <td>".$ap."</td> <td>".$am."</td> <td>".$edad."</td> <td>".$sangre."</td> <td>".$dom."</td> <td>".$corr."</td> <td>".$tel."</td> <td>".$ale."</td> <td>".$histo."</td> <td>".$idm.'</td></tr>';
          }
      ?>
      </tbody>
  </table>

    </div>
  </div>
<br><br>
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