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
$pais=trim(htmlspecialchars($_REQUEST["pais"], ENT_QUOTES, "UTF-8"));
$conexion = mysqli_connect("localhost", "root", "", "cursophp") or die("Problemas de conexión");
$registros = mysqli_query($conexion, "SELECT * from personas where pais like = '$pais'") or die("Problemas en la consulta:".mysql_error($conexion));


    ?>
</body>
</html>