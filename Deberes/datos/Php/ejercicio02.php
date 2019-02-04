<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <?php
    echo "hola";
    echo "<b>Hola</b>n";
    $saludo = "holaa";
    echo $saludo; 
    echo "<br>Mensaje <b>" .$saludo. "</b>. Fin Mensaje</br>"
    ?>
    <?= $saludo ?>
    <?php
    $a = 8;
    $b = 9;
    echo $a + $b, <br/>
    $resultado = $a - $b;
    echo "$resultado<br/>";
    $a++;
    $a = $a + 1;

    echo $a == $b, "<br/>";

    
    
</body>
</html>