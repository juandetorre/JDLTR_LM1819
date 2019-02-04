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
$a = rand(1,100);
if ($a >= 1 and $a < 10){
    print "$a Tiene un digito";
}elseif ($a >= 10 and $a < 100){
        print " $a Tiene dos digitos";
    } else {
        print "Tiene 3 digitos";
    }


    ?>
</body>
</html>