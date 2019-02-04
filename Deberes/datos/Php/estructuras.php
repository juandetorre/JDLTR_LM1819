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
   $cuenta = 0;
   for ($i=6; $i >= 0; $i--) {
       if ($i % 2 != 0) {
           $cuenta += 1;
       }

    }
    print "Hay $cuenta numeros impares";
   ?>


</body>
</html>