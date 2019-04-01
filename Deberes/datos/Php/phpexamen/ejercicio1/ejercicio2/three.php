<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>three</title>
</head>
<body>
    <?php
    $peso=trim(htmlspecialchars($_REQUEST["peso"], ENT_QUOTES, "UTF-8"));
    $altura=trim(htmlspecialchars($_REQUEST["altura"], ENT_QUOTES, "UTF-8"));

    $imc = $peso / ($altura * $altura);

    if($imc<=18.5){ 
        echo "su indice es: de bajopeso"; 
        } 
        elseif(($indice>18.5)and($indice<=24.9)){ 
        echo "su indice es: de peso normal"; 
        } 
        elseif(($indice>25)and($indice<=29.9)){ 
            echo "su indice es: de sobrepeso";
        }
        elseif($imc>29.9){
            echo "su indice es: de obesidad";
        };
    ?>
</body>
</html>