-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 27 mars 2025 à 13:12
-- Version du serveur : 5.7.24
-- Version de PHP : 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bibliotheque_mangas`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteurs`
--

CREATE TABLE `auteurs` (
  `id_manga` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `date_naissance` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auteurs`
--

INSERT INTO `auteurs` (`id_manga`, `nom`, `date_naissance`) VALUES
(1, 'Kentaro Miura', '1966-07-11'),
(2, 'Hirohiko Araki', '1960-06-07'),
(3, 'Takehiko Inoue', '1967-01-12'),
(4, 'Eiichiro Oda', '1975-01-01'),
(5, 'Naoki Urasawa', '1960-01-02');

-- --------------------------------------------------------

--
-- Structure de la table `mangas`
--

CREATE TABLE `mangas` (
  `titre` varchar(50) NOT NULL,
  `année_publication` int(4) NOT NULL,
  `note_satisafaction` float NOT NULL,
  `description` varchar(1000) NOT NULL,
  `id_auteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mangas`
--

INSERT INTO `mangas` (`titre`, `année_publication`, `note_satisafaction`, `description`, `id_auteur`) VALUES
('Berserk', 1989, 9.47, 'Guts, a former mercenary now known as the Black Swordsman, is out for revenge. After a tumultuous childhood, he finally finds someone he respects and believes he can trust, only to have everything fall apart when this person takes away everything important to Guts for the purpose of fulfilling his own desires. Now marked for death, Guts becomes condemned to a fate in which he is relentlessly pursued by demonic beings.\r\n', 1),
('Jojo Partie 7: Steel Ball Run', 2004, 9.32, 'In the American Old West, the world\'s greatest race is about to begin. Thousands line up in San Diego to travel over six thousand kilometers for a chance to win the grand prize of fifty million dollars. With the era of the horse reaching its end, contestants are allowed to use any kind of vehicle they wish. Competitors will have to endure grueling conditions, traveling up to a hundred kilometers a day through uncharted wastelands. The Steel Ball Run is truly a one-of-a-kind event.', 2),
('Vagabond', 1998, 9.27, 'In 16th-century Japan, Shinmen Takezou is a wild, rough young man in both his appearance and his actions. His aggressive nature has won him the collective reproach and fear of his village, leading him and his best friend, Matahachi Honiden, to run away in search of something grander than provincial life. The pair enlist in the Toyotomi army, yearning for glory—but when the Toyotomi suffer a crushing defeat at the hands of the Tokugawa Clan at the Battle of Sekigahara, the friends barely make it out alive.', 3),
('One piece', 1997, 9.22, 'Gol D. Roger, a man referred to as the King of the Pirates, is set to be executed by the World Government. But just before his demise, he confirms the existence of a great treasure, One Piece, located somewhere within the vast ocean known as the Grand Line. Announcing that One Piece can be claimed by anyone worthy enough to reach it, the King of the Pirates is executed and the Great Age of Pirates begins.', 4),
('Monster', 1994, 9.16, 'Kenzou Tenma, a renowned Japanese neurosurgeon working in post-war Germany, faces a difficult choice: to operate on Johan Liebert, an orphan boy on the verge of death, or on the mayor of Düsseldorf. In the end, Tenma decides to gamble his reputation by saving Johan, effectively leaving the mayor for dead.', 5);

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

CREATE TABLE `personnages` (
  `nom` varchar(50) NOT NULL,
  `description` varchar(300) NOT NULL,
  `id_manga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personnages`
--

INSERT INTO `personnages` (`nom`, `description`, `id_manga`) VALUES
('Guts', 'Guts est le héros de l\'histoire. Il est le guerrier noir qui demeure sur le seuil, motivé par la volonté de défendre Casca et de défier Griffith. Il se bat avec une violence inouïe.', 1),
('Johnny Joestar', 'Un ancien prodige des courses de chevaux, désormais paraplégique, Johnny se lance dans la course Steel Ball Run dans l\'espoir de percer le mystère entourant les Boules d\'Acier de Gyro Zeppeli, car ces dernières sont les seules à même de lui restituer l\'usage de ses jambes.', 2),
('Miyamoto Musashi', 'Miyamoto Musashi est l\'un des principaux protagonistes de Vagabond et un personnage historique considéré comme l\'un des plus grands samouraïs (épéistes) de l\'histoire japonaise. Jeune homme, il entreprend un voyage pour devenir le plus puissant des samouraïs après avoir été exilé de son village.', 3),
('Monkey D. Luffy', 'Son rêve le plus cher est de devenir le Roi des Pirates en trouvant le trésor légendaire One Piece, caché quelque part dans le monde par Gol D. Roger. Il a mangé par erreur un Fruit du Démon, le Gomu Gomu no Mi, qui lui permet d\'être un homme-élastique', 4),
('Kenzô Tenma', 'Kenzô Tenma, le personnage principal, est un jeune neurochirurgien japonais aux compétences hors normes. Il est fiancé à Eva Heineman, la fille du directeur de l\'hôpital, et est destiné à une brillante carrière', 6);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auteurs`
--
ALTER TABLE `auteurs`
  ADD PRIMARY KEY (`id_manga`);

--
-- Index pour la table `mangas`
--
ALTER TABLE `mangas`
  ADD PRIMARY KEY (`id_auteur`);

--
-- Index pour la table `personnages`
--
ALTER TABLE `personnages`
  ADD PRIMARY KEY (`id_manga`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `mangas`
--
ALTER TABLE `mangas`
  MODIFY `id_auteur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `personnages`
--
ALTER TABLE `personnages`
  MODIFY `id_manga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
