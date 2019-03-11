<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>consultajoin</title>
</head>
<body>
    <div class="container">
        <?php
            $conexion = mysqli_connect("localhost", "root", "", "cursophp") or die ("Problemas de conexión");
            $registros = mysqli_query($conexion, "Select alu.idAlumno, alu.nombre, alu.mail, cur.nombreCurso from alumnos as alu inner join cursos as cur on alu.codigocurso = cur.idCurso") or die ("Problemas con el select");
    
            echo "<table class='table table-striped'>";
            echo "<tr> <th>Codigo</th> <th>Nombre</th> <th>Email</th> <th>Curso</th> </tr>";
            while ($reg = mysqli_fetch_array($registros)) {
                echo "<tr>";
                    echo "<td>" . $reg['idAlumno'] . "</td>";
                    echo "<td>" . $reg['nombre'] . "</td>";
                    echo "<td>" . $reg['mail'] . "</td>";
                    echo "<td>" . $reg['nombreCurso'] . "</td>";
                echo "</tr>";
            }
            echo "</table>";
            mysqli_close($conexion);

        ?>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>