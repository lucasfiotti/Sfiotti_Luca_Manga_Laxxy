<?php
require('Model/pdo.php');
?>
<h1>Top mangas</h1>
<ul>
    <?php
    $top_mangas = $dbPDO->prepare("SELECT * FROM mangas ORDER BY année_publication");
    $top_mangas->execute();
    foreach ($top_mangas as $top) { ?>
        <li><a href="Views/manga.php?idmanga=<?= $top['id_manga'] ?>"><?php echo htmlspecialchars($top['titre']); ?>
            </a>
            <br><?php echo htmlspecialchars($top['année_publication']);
                ?>
        </li>
    <?php } ?>
</ul>