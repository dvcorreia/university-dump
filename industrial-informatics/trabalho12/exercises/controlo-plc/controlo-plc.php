<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Controlo PLC</title>
</head>
<body>
    <form action="controlo-plc.php" method="post">
        <h4>Introduza os valores de Y0, Y1 e Y2</h4>
        <p>Estes valores serão escritos na base de dados "reservatorio", na tabela "controloreservatorio(leitura,data,y0,y1,y2)"</p>
        y0: <input type="checkbox" name="y0" value="1"/><br>
    </form>

    <?php
        $y0 = 0;
        if(isset($_POST['y0']))
            $y0 = isset($_POST['y0']);

        /* Connect to DB */
        $link = mysqli_connect("localhost","root","76608","reservatorio") or die("Não pode conectar: ".mysql_error());

        /* Query SQL actualização */
        $query = "insert into controloreservatorio set y0=".$y0;
        $result = mysqli_query($link,$query) or die("Query insert falhou: ".mysqli_error($link));
        echo "<h4>------- Controlo -------</h4><p>Os valores lidos na DB são:</p><br>";

        /* Make read query to DB */
        $query = "select * from controloreservatorio order by ordem desc limit 1";
        $result = mysqli_query($link,$query) or die("Query read falhou: ".mysqli_error($link));
        if($result->num_rows>0){
            while($row=$result->fetch_assoc()){
                echo "id: ".$row["ordem"]." - Y0: ".$row["y0"]."<br>";
            }
        }

        /* Free results */
        mysqli_free_result($result);

        /* Close connection to DB */
        mysqli_close($link);
    ?>
</body>
</html>