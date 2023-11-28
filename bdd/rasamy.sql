-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 28 nov. 2023 à 19:07
-- Version du serveur : 10.6.5-MariaDB
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `rasamy`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `price` int(11) NOT NULL,
  `image` text NOT NULL,
  `province` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `superficie` varchar(255) NOT NULL,
  `chambre` varchar(255) NOT NULL,
  `access` varchar(255) NOT NULL,
  `elec` enum('oui','non') NOT NULL DEFAULT 'non',
  `eau` enum('oui','non') NOT NULL DEFAULT 'non',
  `garage` enum('oui','non') NOT NULL DEFAULT 'non',
  `status` enum('oui','non') NOT NULL DEFAULT 'non',
  `contact` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `tel_transfert` varchar(255) NOT NULL,
  `reference` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `favorite` int(11) NOT NULL,
  `date_publication` varchar(255) NOT NULL DEFAULT '0',
  `fin_validation` varchar(255) NOT NULL DEFAULT '0',
  `validation` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
CREATE TABLE IF NOT EXISTS `favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_title` varchar(255) NOT NULL,
  `article_id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `provinces`
--

DROP TABLE IF EXISTS `provinces`;
CREATE TABLE IF NOT EXISTS `provinces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `provinces`
--

INSERT INTO `provinces` (`id`, `province`, `description`) VALUES
(1, 'antananarivo', 'Antananarivo est la capitale de Madagascar, située dans la région des Hautes Terres centrales de l\'île. Surplombant la ville, le palais Rova de Manjakamiadana fut le cœur du royaume des Merina à partir du XVIIe siècle. Il abrite des maisons en bois et des tombeaux royaux. Le palais baroque rose d\'Andafiavaratra se trouve dans le quartier proche de la Haute Ville. Dans le centre, le lac Anosy en forme de cœur est bordé de jacarandas.'),
(2, 'antsiranana', 'Antsiranana, également connue sous le nom de Diego-Suarez, est une ville portuaire du nord de Madagascar. Elle se trouve dans la baie d\'Antsiranana, un vaste port naturel composé de plusieurs baies plus petites. Au large, l\'île conique Nosy Lonjo, ou Pain de Sucre, est considérée comme sacrée par les habitants. La longue plage de sable de Ramena se situe au nord-est. L\'architecture coloniale française de la ville se retrouve dans l\'ancien marché couvert et les ruines de l\'hôtel de la Marine'),
(3, 'fianarantsoa', 'Fianarantsoa est une ville des hautes terres de Madagascar, capitale de la province de Fianarantsoa et chef-lieu de la région Haute Matsiatra, et District de Fianarantsoa. Son aire urbaine est estimée à 200 482 habitants en 2014.'),
(4, 'mahajanga', 'Mahajanga est une ville portuaire située sur la côte nord de Madagascar. Sur le front de mer, le boulevard de la Corniche, agrémenté de palmiers et d\'étals de vendeurs de rue, mène à un immense baobab. La ville est bordée de plages, dont celle du Grand Pavois, comprenant plusieurs restaurants à proximité. Non loin de là, le canyon du Cirque rouge est doté de remarquables falaises carmin. Face à la baie de Bombetoka, le phare du village de Katsepy offre une vue panoramique.\r\n'),
(5, 'toamasina', 'Toamasina, également appelée Tamatave, est une ville portuaire située sur la côte est de Madagascar. Sa vieille ville comprend des maisons créoles construites sur pilotis. La place Bien Aimé, un grand parc ombragé par des banians, abrite un manoir colonial en ruines. La vaste avenue de l\'Indépendance, bordée de palmiers, mène à un boulevard en bord de mer. Des expositions archéologiques et des outils traditionnels sont présentés au musée régional de l\'Université de Toamasina. '),
(6, 'toliara', 'Toliara, appelée Tuléar en français, est la plus grande ville du Sud de Madagascar. C\'est le chef-lieu de la région Atsimo-Andrefana après avoir été celui de la province de Toliara. Ce port est situé à 540 km de Fianarantsoa et à 951 km de la capitale, Antananarivo, par la route nationale 7.\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `tarifs`
--

DROP TABLE IF EXISTS `tarifs`;
CREATE TABLE IF NOT EXISTS `tarifs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `validity` int(11) NOT NULL,
  `tarif` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tarifs`
--

INSERT INTO `tarifs` (`id`, `validity`, `tarif`) VALUES
(1, 1, 500),
(2, 3, 1500),
(3, 6, 2000),
(4, 12, 5000);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
