-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : jeu. 24 avr. 2025 à 15:25
-- Version du serveur : 11.3.2-MariaDB
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sdis`
--

-- --------------------------------------------------------

--
-- Structure de la table `caserne`
--

DROP TABLE IF EXISTS `caserne`;
CREATE TABLE IF NOT EXISTS `caserne` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `caserne`
--

INSERT INTO `caserne` (`id`, `nom`) VALUES
(1, 'Ifs'),
(2, 'Lisieux'),
(3, 'Le Hom'),
(4, 'Caen Folie Couvrechef');

-- --------------------------------------------------------

--
-- Structure de la table `fonction`
--

DROP TABLE IF EXISTS `fonction`;
CREATE TABLE IF NOT EXISTS `fonction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `fonction`
--

INSERT INTO `fonction` (`id`, `libelle`) VALUES
(1, 'Conducteur de véhicule de secours routier'),
(2, 'Chef d’agrès de fourgon pompe-tonne'),
(3, 'équipier incendie');

-- --------------------------------------------------------

--
-- Structure de la table `grades_pompiers`
--

DROP TABLE IF EXISTS `grades_pompiers`;
CREATE TABLE IF NOT EXISTS `grades_pompiers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade` varchar(100) NOT NULL,
  `categorie` enum('Hommes du rang et caporaux','Sous-officiers','Officiers','Emplois supérieurs de direction') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `grades_pompiers`
--

INSERT INTO `grades_pompiers` (`id`, `grade`, `categorie`) VALUES
(1, 'Sapeur 2ème classe', 'Hommes du rang et caporaux'),
(2, 'Sapeur 1ère classe', 'Hommes du rang et caporaux'),
(3, 'Caporal', 'Hommes du rang et caporaux'),
(4, 'Caporal-chef', 'Hommes du rang et caporaux'),
(5, 'Sergent', 'Sous-officiers'),
(6, 'Sergent-chef', 'Sous-officiers'),
(7, 'Adjudant', 'Sous-officiers'),
(8, 'Adjudant-chef', 'Sous-officiers'),
(9, 'Lieutenant 2e classe', 'Officiers'),
(10, 'Lieutenant 1er classe', 'Officiers'),
(11, 'Lieutenant hors classe', 'Officiers'),
(12, 'Capitaine', 'Officiers'),
(13, 'Commandant', 'Officiers'),
(14, 'Lieutenant-colonel', 'Officiers'),
(15, 'Colonel', 'Emplois supérieurs de direction'),
(16, 'Colonel hors classe', 'Emplois supérieurs de direction'),
(17, 'Contrôleur général', 'Emplois supérieurs de direction'),
(18, 'Contrôleur général (investi de responsabilités particulières à l\'État)', 'Emplois supérieurs de direction');

-- --------------------------------------------------------

--
-- Structure de la table `intervention`
--

DROP TABLE IF EXISTS `intervention`;
CREATE TABLE IF NOT EXISTS `intervention` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateAppel` varchar(100) DEFAULT NULL,
  `heureArrivee` varchar(100) DEFAULT NULL,
  `duree` varchar(100) DEFAULT NULL,
  `lieu` varchar(100) DEFAULT NULL,
  `situation_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_int_situation` (`situation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `intervention`
--

INSERT INTO `intervention` (`id`, `dateAppel`, `heureArrivee`, `duree`, `lieu`, `situation_id`) VALUES
(1, '2025-02-15', '19:30', '00h45', 'Caen', 1),
(2, '2025-03-14', '02:25', '02h30', 'Lille', 4),
(3, '2024-02-13', '21:00', '00h10', 'Cagny', 3),
(4, '2008-01-20', '11:35', '03h00 ', 'Tourlaville', 2),
(5, '1984-10-16', '06:05', '16h00', 'Docelles', 5);

-- --------------------------------------------------------

--
-- Structure de la table `pompier`
--

DROP TABLE IF EXISTS `pompier`;
CREATE TABLE IF NOT EXISTS `pompier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bip` varchar(10) DEFAULT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `dateNaissance` varchar(100) NOT NULL,
  `caserne_id` int(11) DEFAULT NULL,
  `intervention_id` int(11) DEFAULT NULL,
  `fonction_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pom_caserne` (`caserne_id`),
  KEY `fk_pom_intervention` (`intervention_id`),
  KEY `fk_pom_fonction` (`fonction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `pompier`
--

INSERT INTO `pompier` (`id`, `bip`, `nom`, `prenom`, `dateNaissance`, `caserne_id`, `intervention_id`, `fonction_id`) VALUES
(1, '05013', 'LEROY', 'Pierrick', '1961-04-15', 1, 2, 1),
(2, '00123', 'MASSON', 'Bastien', '1962-07-22', 1, 2, 3),
(3, '00456', 'DUVAL', 'Matthias', '1963-11-30', 4, 2, 3),
(4, '00789', 'MADJI', 'Walid', '1964-01-10', 4, 3, 1),
(6, '01234', 'CHAUVEL', 'Jules', '1965-05-25', 1, 1, 2),
(7, '05678', 'CAUVIN', 'Nayah', '1966-08-19', 1, 4, 3),
(8, '08901', 'TRAORE', 'Sylvain', '1967-12-02', 3, 1, 3),
(9, '02345', 'BOULEAU', 'Line', '1968-03-14', 3, 5, 2),
(10, '06789', 'MANCEL', 'Florianne', '1969-06-05', 2, 1, 3),
(11, '09123', 'PONTIER', 'Claire', '1971-02-07', 2, 4, 1),
(12, '03456', 'BARON', 'Gwladys', '1970-09-23', 3, 3, 1),
(13, '07890', 'PASTOR', 'Lucas', '1972-04-20', 1, 1, 2),
(14, '04567', 'BAREAU', 'Mila', '1973-08-11', 1, 3, 2),
(15, '01298', 'CHAUVEL', 'Jules', '1982-08-21', 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `situation`
--

DROP TABLE IF EXISTS `situation`;
CREATE TABLE IF NOT EXISTS `situation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `situation`
--

INSERT INTO `situation` (`id`, `libelle`) VALUES
(1, 'Feu d\'appartement'),
(2, 'Feu de broussailles'),
(3, 'Ascenseur bloqué'),
(4, 'Malaise'),
(5, 'Homicide Involontaire');

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numOrdre` varchar(100) DEFAULT NULL,
  `vehicule_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_type_vehicule` (`vehicule_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`id`, `numOrdre`, `vehicule_id`) VALUES
(1, 'Véhicule de secours aux victimes', NULL),
(2, 'Fourgon pompe-tonne', NULL),
(3, 'échelle pivotante automatique.', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

DROP TABLE IF EXISTS `vehicule`;
CREATE TABLE IF NOT EXISTS `vehicule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(100) DEFAULT NULL,
  `caserne_id` int(11) DEFAULT NULL,
  `intervention_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_veh_caserne` (`caserne_id`),
  KEY `fk_veh_intervention` (`intervention_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `vehicule`
--

INSERT INTO `vehicule` (`id`, `libelle`, `caserne_id`, `intervention_id`) VALUES
(1, 'VSAV00', NULL, NULL),
(2, 'VSAV01', NULL, NULL),
(3, 'VSAV02', NULL, NULL),
(4, 'FPT00', NULL, NULL),
(5, 'FPT01', NULL, NULL),
(6, 'FPT02', NULL, NULL),
(7, 'EPA00', NULL, NULL),
(8, 'EPA01', NULL, NULL),
(9, 'EPA02', NULL, NULL);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `intervention`
--
ALTER TABLE `intervention`
  ADD CONSTRAINT `fk_int_situation` FOREIGN KEY (`situation_id`) REFERENCES `situation` (`id`);

--
-- Contraintes pour la table `pompier`
--
ALTER TABLE `pompier`
  ADD CONSTRAINT `fk_pom_caserne` FOREIGN KEY (`caserne_id`) REFERENCES `caserne` (`id`),
  ADD CONSTRAINT `fk_pom_fonction` FOREIGN KEY (`fonction_id`) REFERENCES `fonction` (`id`),
  ADD CONSTRAINT `fk_pom_intervention` FOREIGN KEY (`intervention_id`) REFERENCES `intervention` (`id`);

--
-- Contraintes pour la table `type`
--
ALTER TABLE `type`
  ADD CONSTRAINT `fk_veh_type` FOREIGN KEY (`vehicule_id`) REFERENCES `vehicule` (`id`);

--
-- Contraintes pour la table `vehicule`
--
ALTER TABLE `vehicule`
  ADD CONSTRAINT `fk_veh_caserne` FOREIGN KEY (`caserne_id`) REFERENCES `caserne` (`id`),
  ADD CONSTRAINT `fk_veh_intervention` FOREIGN KEY (`intervention_id`) REFERENCES `intervention` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
