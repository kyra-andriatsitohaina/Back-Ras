-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 27 nov. 2023 à 10:18
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
  `contact` varchar(255) NOT NULL,
  `reference` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `favorite` int(11) NOT NULL,
  `elec` enum('oui','non') NOT NULL DEFAULT 'non',
  `eau` enum('oui','non') NOT NULL DEFAULT 'non',
  `garage` enum('oui','non') NOT NULL DEFAULT 'non',
  `status` enum('oui','non') NOT NULL DEFAULT 'non',
  `access` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `description`, `price`, `image`, `province`, `category`, `superficie`, `chambre`, `contact`, `reference`, `date`, `userId`, `favorite`, `elec`, `eau`, `garage`, `status`, `access`) VALUES
(1, 'trano  bongo', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Laboriosam veritatis temporibus maxime enim maiores sint repudiandae molestiae ratione, vero labore eveniet natus recusandae distinctio aliquam. Nostrum voluptatibus similique quod aspernatur! Asperiores, natus aliquam! Itaque voluptatibus nihil natus aliquam incidunt optio iste, exercitationem voluptatem labore dolorem quae quibusdam quasi officiis culpa.', 150, 'K835469Y818901R432928A785392.jpg', 'antananarivo', 'terrain', '200', '0', '1111111111', 'a1a1a', '27/11/2023', 1, 0, 'non', 'non', 'non', 'non', 'moto'),
(2, 'villa', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Laboriosam veritatis temporibus maxime enim maiores sint repudiandae molestiae ratione, vero labore eveniet natus recusandae distinctio aliquam. Nostrum voluptatibus similique quod aspernatur! Asperiores, natus aliquam! Itaque voluptatibus nihil natus aliquam incidunt optio iste, exercitationem voluptatem labore dolorem quae quibusdam quasi officiis culpa.', 200, 'K419749Y123651R374762A35795.jpg', 'antananarivo', 'false', '0', '3', '2222222222', 'azeze', '27/11/2023', 1, 0, 'oui', 'oui', 'oui', 'non', '0'),
(3, 'hilton', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Laboriosam veritatis temporibus maxime enim maiores sint repudiandae molestiae ratione, vero labore eveniet natus recusandae distinctio aliquam. Nostrum voluptatibus similique quod aspernatur! Asperiores, natus aliquam! Itaque voluptatibus nihil natus aliquam incidunt optio iste, exercitationem voluptatem labore dolorem quae quibusdam quasi officiis culpa.', 250, 'K136389Y318581R552089A66071.jpg', 'antananarivo', 'false', '0', '5', '3333333333', 'ea3', '27/11/2023', 1, 0, 'non', 'oui', 'non', 'non', '0');

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
(1, 'antananarivo', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ad esse ullam consequatur unde voluptatem recusandae est accusantium, iusto excepturi accusamus eaque! Ad beatae eius magnam vitae officia porro quibusdam fugit.'),
(2, 'antsiranana', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ad esse ullam consequatur unde voluptatem recusandae est accusantium, iusto excepturi accusamus eaque! Ad beatae eius magnam vitae officia porro quibusdam fugit.'),
(3, 'toamasina', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ad esse ullam consequatur unde voluptatem recusandae est accusantium, iusto excepturi accusamus eaque! Ad beatae eius magnam vitae officia porro quibusdam fugit.'),
(4, 'toliara', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ad esse ullam consequatur unde voluptatem recusandae est accusantium, iusto excepturi accusamus eaque! Ad beatae eius magnam vitae officia porro quibusdam fugit.'),
(5, 'fianarantsoa', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ad esse ullam consequatur unde voluptatem recusandae est accusantium, iusto excepturi accusamus eaque! Ad beatae eius magnam vitae officia porro quibusdam fugit.'),
(6, 'mahajanga', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ad esse ullam consequatur unde voluptatem recusandae est accusantium, iusto excepturi accusamus eaque! Ad beatae eius magnam vitae officia porro quibusdam fugit.');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `pseudo`, `email`, `password`, `photo`) VALUES
(1, 'badoda', 'badoda@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7eNBRRIc7J3gv0Gf8BjqmVf97rkQTItIu', 'K185825Y452623R263117A924594.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
