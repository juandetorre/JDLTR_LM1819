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
    $peseta = 166;
    for ($i=1; $i < 11; $i++) { 
        print "<p>$i euros son" . $i * $peseta .  "pesetas</p>";
    }
    ?>


</body>
</html>