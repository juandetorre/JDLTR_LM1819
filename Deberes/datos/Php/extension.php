<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css">
    <script src="main.js"></script>
</head>
<body>
<?php 
function calcularExtension($fichero) {
    $nombreExt = explode(".", $fichero);
    return strtoupper($nombreExt[1]);

    $inicio = strrpos($fichero, ".") + 1;
    return strtoupper(substr($fichero, $inicio));
}
$nombreFichero = "fichero.exe.txt";
$ext = calcularExtension($nombreFichero);
print "<p>La extension del archivo $nombreFichero es $ext</p>"
?>
</body>
</html>