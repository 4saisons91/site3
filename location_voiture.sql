-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mer 07 Décembre 2022 à 16:57
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `location_voiture`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `code_client` varchar(20) NOT NULL,
  `nom_prénom` varchar(20) NOT NULL,
  `date_naissance` date NOT NULL,
  `profesion` varchar(20) NOT NULL,
  `num_tel` varchar(20) NOT NULL,
  `adresse` varchar(20) NOT NULL,
  `code_postal` int(11) NOT NULL,
  `ville` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`code_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`code_client`, `nom_prénom`, `date_naissance`, `profesion`, `num_tel`, `adresse`, `code_postal`, `ville`, `email`) VALUES
('a1', 'Boukharaz Adam', '2004-08-17', 'Etudiant ', '0637392939', '30 rue de mante la j', 93430, 'Mante la jolie', 'adam.vivamaghrib@gma'),
('a2', 'NIcolas Nintch', '2003-12-31', 'adminstrateur réseau', '0782782371', '2 avenue de la garde', 91000, 'Evry', 'nico.manéestblessé@g');

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id_location` varchar(20) NOT NULL,
  `duree_location` int(11) NOT NULL,
  `date_location` date NOT NULL,
  `prix_location` int(11) NOT NULL,
  `code_client` varchar(20) NOT NULL,
  `immatriculation` varchar(20) NOT NULL,
  `caution` int(11) NOT NULL,
  PRIMARY KEY (`id_location`),
  KEY `immatriculation` (`immatriculation`),
  KEY `code_client` (`code_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `location`
--

INSERT INTO `location` (`id_location`, `duree_location`, `date_location`, `prix_location`, `code_client`, `immatriculation`, `caution`) VALUES
('loc1', 2, '2022-12-08', 7400, 'a1', '9F-243-6B', 3000),
('loc2', 1, '2022-12-22', 4000, 'a2', '2C-400-2B', 2500);

-- --------------------------------------------------------

--
-- Structure de la table `réparation`
--

CREATE TABLE IF NOT EXISTS `réparation` (
  `num_reparation` int(11) NOT NULL AUTO_INCREMENT,
  `date_reparation` date NOT NULL,
  `duree_reparation` varchar(100) NOT NULL,
  `cout_reparation` varchar(255) NOT NULL,
  `responsable_rep` varchar(255) NOT NULL,
  `immatriculation` varchar(255) NOT NULL,
  PRIMARY KEY (`num_reparation`),
  KEY `immatriculation` (`immatriculation`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `réparation`
--

INSERT INTO `réparation` (`num_reparation`, `date_reparation`, `duree_reparation`, `cout_reparation`, `responsable_rep`, `immatriculation`) VALUES
(1, '2022-12-22', '1 semaine', '450 ', 'Mr John', '9F-243-6B'),
(2, '2022-12-31', '2 semaines', '1200', 'Mme Carle', '2C-400-2B');

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

CREATE TABLE IF NOT EXISTS `voiture` (
  `immatriculation` varchar(20) NOT NULL,
  `marque` varchar(20) NOT NULL,
  `modele` varchar(20) NOT NULL,
  `kilometrage` int(11) NOT NULL,
  `carburant` varchar(10) NOT NULL,
  `couleur` varchar(20) NOT NULL,
  `nbr_place` int(11) NOT NULL,
  `nbr_porte` int(11) NOT NULL,
  `prix_achat` varchar(255) NOT NULL,
  `etat` varchar(20) NOT NULL,
  PRIMARY KEY (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voiture`
--

INSERT INTO `voiture` (`immatriculation`, `marque`, `modele`, `kilometrage`, `carburant`, `couleur`, `nbr_place`, `nbr_porte`, `prix_achat`, `etat`) VALUES
('2C-400-2B', 'Bmw', 'série1', 25000, 'Diesel', 'Bleu', 5, 5, '28700', 'Très bonne état'),
('9F-243-6B', 'Bmw', 'X3', 60000, 'Essence', 'Noir', 5, 5, '63467', 'Très bonne état');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_2` FOREIGN KEY (`immatriculation`) REFERENCES `voiture` (`immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`code_client`) REFERENCES `clients` (`code_client`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `réparation`
--
ALTER TABLE `réparation`
  ADD CONSTRAINT `r@0pparation_ibfk_1` FOREIGN KEY (`immatriculation`) REFERENCES `voiture` (`immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE;
