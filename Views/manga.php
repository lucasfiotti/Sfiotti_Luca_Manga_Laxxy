<?php
if (isset($_GET['id_manga'])) {
    $id = $_GET['id_manga'];


    $requete = $dbPDO->prepare("SELECT * FROM mangas WHERE id_manga = :id");
    $requete->bindParam(':id', $id);
    $requete->execute();
    $top = $requete->fetch();


    echo "<h1>" . htmlspecialchars($top['titre']) . "</h1>";
    echo "<p>Année de publication : " . htmlspecialchars($top['année_publication']) . "</p>";
    echo "<p>Synopsis : " . htmlspecialchars($top['description']) . "</p>";
    echo "<p>Personnages principaux : " . htmlspecialchars($top['personnages']) . "</p>";
}
?>