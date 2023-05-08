<?php
    require "template/database.php";

    if( isset($_GET['search']) ) {
        $request = $database->prepare("SELECT * FROM tweet WHERE contenu LIKE :search ORDER BY date DESC ");
        $request->execute(['search' => '%'.$_GET['search'].'%']);
      
      } else {
        $request = $database->prepare("SELECT * FROM tweet ORDER BY date DESC ");
        $request->execute();
      }
      
      $feed = $request->fetchAll(PDO::FETCH_ASSOC);

?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portail</title>
</head>
<body>

    <header>
        <form method="GET">
            <input type="text" name="search" placeholder="rechercher">
        </form>
    </header>

    <hr>

    <main>
        <form class="form" method="POST" action="insert2.php">
                <textarea name="contenu" rows="5" cols="40"></textarea>
                <button type="submit">Tweet</button>
            </form>

            <?php foreach($feed as $tweet) { ?>
                <h1><?= $tweet['contenu'] ?></h1>
                <p>Tweeté le <?= $tweet['date'] ?></p>
                <form action="delete.php" method="POST">
                    <input type="hidden" name="supp" value="<?= $tweet['id'] ?>">
                    <button type="submit">Supp</button>
                </form>
                
            <?php } ?>
    </main>
</body>
</html>