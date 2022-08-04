<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Calculadora</title>
</head>
<body>
    <?php
    $Z = $_POST['x'] + $_POST['y'];
    echo $_POST['x'], "+", $_POST['y']."=".$Z;
    ?>

    <br><a href="calculadora.html">tentar outra vez</a>
</body>
</html>