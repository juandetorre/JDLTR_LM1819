<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document0</title>
</head>
<body>
<?php
   $conexion = mysqli_connect("localhost", "root", "", "cursophp") or die("Problemas de conexión");
   $registros = mysqli_query($conexion, "SELECT idAlumno, nombre, mail, codigocurso FROM alumnos") or die("Problemas en la consulta:".mysql_error($conexion));

   while ($reg=mysqli_fetch_array($registros)) {
       echo "idAlumno:" . $reg['idAlumno'] . '<br/>';
       echo "Nombre:" . $reg['nombre'] . '<br/>';
   }
   mysqli_close($conexion);
?>
    
</body>
</html>