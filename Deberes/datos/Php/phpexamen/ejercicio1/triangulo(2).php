<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Triangulo(2)</title>
</head>
<body>
    <?php
$ba=trim(htmlspecialchars($_REQUEST["base"], ENT_QUOTES, "UTF-8"));
$al=trim(htmlspecialchars($_REQUEST["Altura"], ENT_QUOTES, "UTF-8"));
$lol=trim(htmlspecialchars($_REQUEST["triangulo"], ENT_QUOTES, "UTF-8"));

switch($lol){

    case "Area":
    $area = ($ba * $al) / 2;
    print "<p>El area del triangulo es $area</p>";
    break;
    
    
    case "Perimetro":
    $perimetro = (2 * $ba) + (2 * $al);
    print "<p>El perimetro de el triangulo es $perimetro</p>";
    }


    ?>
</body>
</html>