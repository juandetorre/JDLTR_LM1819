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
   if (isset($_REQUEST['error'])) {
       print "<p style='color:red'>$_REQUEST[error] </p>";
   }
?>
<form method='POST' action='ejer07(2).php'>
         <p>
           <label for='usuario'>Email</label>
           <input type='text' name='email' id='email' value=''>
         </p>
         <p>
          <input type='submit' value='entrar' />
        </p>          
</body>
</html>