<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <?php
    $alumno = trim(htmlspecialchars($_REQUEST["email"], ENT_QUOTES, "UTF-8"));
    $conexion = mysqli_connect("localhost", "root", "", "cursophp") or die ("Problemas de conexión");
    $datos = mysqli_query($conexion, "Select * from alumnos where mail = '$alumno'");
    
    while ($dat = mysqli_fetch_array($datos)) {
        echo "Codigo:" . $dat['idAlumno'] . "</br>";
        echo "Nombre:" . $dat['nombre'] . "</br>";
        echo "Email:" . $dat['mail'] . "</br>";
        echo "Curso:" . $dat['codigocurso'] . "</br>";
    }
    ?>
</body>
</html>