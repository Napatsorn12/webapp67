<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        echo test("RED");
        echo "<br>";
        echo test("Green");
        echo "<br>";
        echo test("1");
        function test($str)
        {
            $s = substr($str, strlen($str) - 1);
            return $s.$str.$s;
        }
    ?>
</body>
</html>