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
$insert = $database->prepare("INSERT INTO utilisateur (nom, pseudo, email, mdp, pdp) VALUES (:nom, :pseudo, :email, :mdp, :pdp) ");
$insert->execute(
    [
        "nom" => $_POST['nom'],
        "pseudo" => $_POST['pseudo'],
        "email" => $_POST['email'],
        "mdp" => $_POST['mdp'],
        "pdp" => $_POST['pdp']
    ]
);

header("Location: index.php");

?>