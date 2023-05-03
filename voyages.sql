-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 28 avr. 2023 à 19:13
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `voyages`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20211208164028', '2021-12-08 16:57:16', 226),
('DoctrineMigrations\\Version20211208170341', '2021-12-08 17:04:44', 115),
('DoctrineMigrations\\Version20220125220037', '2022-01-25 22:04:11', 257),
('DoctrineMigrations\\Version20220125222928', '2022-01-25 22:31:05', 199),
('DoctrineMigrations\\Version20220206174009', '2022-02-06 17:42:02', 367),
('DoctrineMigrations\\Version20220206175741', '2022-02-06 17:58:48', 140);

-- --------------------------------------------------------

--
-- Structure de la table `environnement`
--

DROP TABLE IF EXISTS `environnement`;
CREATE TABLE `environnement` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `environnement`
--

INSERT INTO `environnement` (`id`, `nom`) VALUES
(3, 'Mer'),
(4, 'Montagne'),
(5, 'Ocean'),
(6, 'Fleuve'),
(7, 'Foret'),
(8, 'Desert');

-- --------------------------------------------------------

--
-- Structure de la table `visite`
--

DROP TABLE IF EXISTS `visite`;
CREATE TABLE `visite` (
  `id` int(11) NOT NULL,
  `ville` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pays` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datecreation` date DEFAULT NULL,
  `note` int(11) DEFAULT NULL,
  `avis` longtext COLLATE utf8mb4_unicode_ci,
  `tempmin` int(11) DEFAULT NULL,
  `tempmax` int(11) DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `visite`
--

INSERT INTO `visite` (`id`, `ville`, `pays`, `datecreation`, `note`, `avis`, `tempmin`, `tempmax`, `image_name`, `updated_at`) VALUES
(101, 'Singapour', 'Singapour', '2019-04-18', 17, 'Climat chaud et orageux, une ville à visiter pour les fans de temps orageux !', 19, 30, '6414d26544d57757928455.jpg', '2023-03-17 20:49:41'),
(152, 'Port-d\'Espagne', 'Trinité et Tobago', '2019-07-18', 16, 'Séjour agréable, plusieurs activités balnéaires et temps sympa!', -11, 15, '6414d3aa95308361456326.jpg', '2023-03-17 20:55:06'),
(153, 'Osaka', 'Japon', '2021-09-13', 19, 'Un pays incroyable, avec une culture passionnante…', 10, 28, '6414d3e4deee2244176954.jpg', '2023-03-17 20:56:04'),
(154, 'Berlin', 'Allemagne', '2022-05-21', 17, 'Jolie capitale, riche en histoire. Lieux atypiques à visiter.', 6, 18, '6414d33e2bba9930823562.jpg', '2023-03-17 20:53:18'),
(156, 'Mykonos', 'Grèce', '2018-03-10', 17, 'De belles maisons colorées, paysages magnifique, beaucoup d\'activités touristique sur la Grèce antique.', 12, 34, '6414d27a1bc70380995333.jpg', '2023-03-17 20:50:02'),
(157, 'Pristina', 'Kosovo', '2022-10-14', 11, 'De très beaux paysages...', 8, 25, '6414d2e4bc8f0691335634.jpg', '2023-03-17 20:51:48'),
(159, 'Pétra', 'Jordanie', '2019-11-25', 18, 'Beau pays, la cité nabatéenne Pétra est à couper le souffle. Déserts à voir absolument.', 28, 35, 'petra.jpg', '2023-03-17 20:53:03'),
(160, 'Port-au-Prince', 'Haïti', '2020-09-10', 18, 'Une ile paradisiaque, locaux très accueillants, belles plages.', 28, 32, '6414d30fe6813590112845.jpg', '2023-03-17 20:52:31'),
(161, 'Varsovie', 'Pologne', '2019-08-24', 8, 'Temps froid et neigeux.', -9, 7, 'varsovie.jpg', '2023-03-17 20:51:28'),
(162, 'Nuuk', 'Groenland', '2018-10-18', 9, 'Pays atypique mais il fait très très froid.', -39, 4, '6414d3200d226029401682.jpg', '2023-03-17 20:52:47'),
(163, 'Séoul', 'Corée du Sud', '2023-01-29', 16, 'Beau pays; une capitale futuristique et fun.', 1, 6, 'seoul.jpg', '2023-03-17 20:49:28'),
(165, 'Baikonour', 'Kazakhstan', '2018-06-21', 14, 'Ville anciennement soviétique avec un cosmodrome de lancement russe.', -20, 3, 'baikonur.jpg', '2023-03-17 20:51:01'),
(166, 'Kuala Lumpur', 'Malaisie', '2020-03-16', 12, 'Belles plages et forêts tropicales.', 21, 34, '6414d3ff31b3b195284145.jpg', '2023-03-17 20:56:31'),
(167, 'Oulan Bator', 'Mongolie', '2018-11-29', 13, 'Connu pour ses étendues sauvages et sa culture nomade, la Mongolie est un pays à voir.', -3, 5, '6414d3028af4e956743710.jpg', '2023-03-17 20:52:18'),
(205, 'Istanbul', 'Turquie', '2018-04-03', 16, 'Ville moderne et historique au coeur du monde. Le Bosphore est symbolique.', 8, 24, '6414d26ea6e68070877014.jpg', '2023-03-17 20:49:50');

-- --------------------------------------------------------

--
-- Structure de la table `visite_environnement`
--

DROP TABLE IF EXISTS `visite_environnement`;
CREATE TABLE `visite_environnement` (
  `visite_id` int(11) NOT NULL,
  `environnement_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `visite_environnement`
--

INSERT INTO `visite_environnement` (`visite_id`, `environnement_id`) VALUES
(101, 5),
(153, 3),
(156, 3),
(157, 4),
(159, 8),
(160, 5),
(163, 5),
(165, 4),
(166, 5),
(167, 4),
(205, 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `environnement`
--
ALTER TABLE `environnement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `visite`
--
ALTER TABLE `visite`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `visite_environnement`
--
ALTER TABLE `visite_environnement`
  ADD PRIMARY KEY (`visite_id`,`environnement_id`),
  ADD KEY `IDX_6690F746C1C5DC59` (`visite_id`),
  ADD KEY `IDX_6690F746BAFB82A1` (`environnement_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `environnement`
--
ALTER TABLE `environnement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `visite`
--
ALTER TABLE `visite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `visite_environnement`
--
ALTER TABLE `visite_environnement`
  ADD CONSTRAINT `FK_6690F746BAFB82A1` FOREIGN KEY (`environnement_id`) REFERENCES `environnement` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6690F746C1C5DC59` FOREIGN KEY (`visite_id`) REFERENCES `visite` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
