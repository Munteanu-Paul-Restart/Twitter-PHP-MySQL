-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 08 mai 2023 à 17:31
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `twitter`
--

-- --------------------------------------------------------

--
-- Structure de la table `tweet`
--

CREATE TABLE `tweet` (
  `id` int NOT NULL,
  `contenu` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `tweet`
--

INSERT INTO `tweet` (`id`, `contenu`, `date`) VALUES
(6, 'je pete sou la douche', '2023-05-07 23:08:37'),
(7, 'lol trump il e con\r\n', '2023-05-07 23:08:47'),
(9, 'je suis déjà en retard :-(\r\n', '2023-05-07 23:14:56'),
(10, 'Le PHP c\'est de l\'eau', '2023-05-07 23:17:12'),
(11, 'le racisme c mechant #blaquel\'ailv\'zematerre', '2023-05-07 23:20:16'),
(12, 'YO ITS KANYE\r\nIM OFF THE MEEEDS YOU GUYS IM BACK\r\nITS THE REAL ME NOW\r\n', '2023-05-07 23:21:29'),
(14, 'j\'y arrive paaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaas', '2023-05-08 00:53:04'),
(15, 'Mais nan chuis pas en retard c\'était pour lundi depuis le début incroyaaaaaaaaaaable\r\n', '2023-05-08 01:33:52'),
(16, 'grosse dédicace à Bougy', '2023-05-08 01:35:13'),
(17, 'hey yo Mr White. \r\nJesse, we need to cook', '2023-05-08 14:26:33'),
(18, 'en appel avec le boug #posey', '2023-05-08 15:03:04');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int NOT NULL,
  `nom` varchar(100) NOT NULL,
  `pseudo` varchar(100) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mdp` varchar(100) NOT NULL,
  `pdp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `pseudo`, `email`, `mdp`, `pdp`) VALUES
(1, 'Paul', 'Blit', 'pauljrmunteanu2@gmail.com', 'ergbets', 'https://picsum.photos/200'),
(2, 'Paul', 'Blit', 'pauljrmunteanu2@gmail.com', 'cdtydchgc', 'https://picsum.photos/200'),
(3, 'Paul', 'Blit', 'pauljrmunteanu2@gmail.com', 'Sicopus90', 'https://picsum.photos/200'),
(4, 'Paul', 'Blit', 'pauljrmunteanu2@gmail.com', 'hsrvgerb', 'https://picsum.photos/200'),
(5, 'Paul', 'Blit', 'pauljrmunteanu2@gmail.com', 'Sicopddff', 'https://picsum.photos/200'),
(6, 'Paul', 'Blit', 'pauljrmunteanu2@gmail.com', 'zfgerg', 'https://picsum.photos/200'),
(7, 'Paul', 'Blit', 'pauljrmunteanu2@gmail.com', 'rszgqehg', 'https://picsum.photos/200'),
(8, 'Paul', 'Blit', 'pauljrmunteanu2@gmail.com', 'zzrgr', 'https://picsum.photos/200'),
(9, '', 'Blit', 'erge@rzg', 'zgreg', 'https://picsum.photos/200');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tweet`
--
ALTER TABLE `tweet`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tweet`
--
ALTER TABLE `tweet`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
