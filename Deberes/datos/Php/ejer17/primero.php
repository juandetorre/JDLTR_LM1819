<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Primero.php</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<div style='margin: 0 auto; width: 200px'>
<?php
   if (isset($_REQUEST['error'])) {
       print "<p style='color:red'>$_REQUEST[error] </p>";
   }
?>
</div>
    <form method='POST' action='segundo.php'>
    <p>
         <label for='usuario'>Usuario</label>
         <input type='text' name='usuario' id='usuario' value='
         <?php
         if (isset($_COOKIE['usuarioWeb'])){
             echo $_COOKIE['usuarioWeb'];
         }?>' />
    </p>
    <p>
         <label for='password'>Contraseña</label>
         <input type='text' name='password' id='password' />
    </p>   
    <p>
        
         <input type='submit' value='entrar' />
    </p>          
</body>
</html>