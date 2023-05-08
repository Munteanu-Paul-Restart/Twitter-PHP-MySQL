<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>


</body>
</html>



<?php

require "template/database.php";
$insert = $database->prepare("INSERT INTO tweet (contenu) VALUES (:contenu) ");
$insert->execute(
    [
        "contenu" => $_POST['contenu']
    ]
);

header("Location: index.php");

?>