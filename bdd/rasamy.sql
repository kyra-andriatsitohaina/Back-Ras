-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 26 nov. 2023 à 08:38
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
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `price` int(11) NOT NULL,
  `image` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `chambre` varchar(255) NOT NULL,
  `elec` tinyint(4) NOT NULL,
  `eau` tinyint(4) NOT NULL,
  `garage` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `superficie` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `reference` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `description`, `price`, `image`, `type`, `province`, `category`, `date`, `chambre`, `elec`, `eau`, `garage`, `status`, `superficie`, `contact`, `reference`) VALUES
(1, 'trano bongo kely', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Modi facilis provident debitis ullam perspiciatis officiis aut quas ipsa, eligendi deserunt! Expedita officiis distinctio sed! Exercitationem, deleniti soluta eos delectus ex debitis! Dolore, quas esse corrupti explicabo vitae, deleniti, sunt praesentium nesciunt excepturi eum tempore? Natus quasi nulla ipsam cupiditate repudiandae quidem non laboriosam quas, perspiciatis nobis dolor consequuntur amet expedita, dolores deserunt nihil eveniet doloremque quos officia, repellat sint assumenda. Beatae nam aspernatur error a soluta alias temporibus, est tenetur perspiciatis cum eum dolore ab totam deserunt. Esse maxime unde culpa ratione temporibus. Esse perspiciatis molestias dolores et, voluptatibus maiores.', 150, 'K465038Y78966R236002A194121.jpg', 'sale', 'antananarivo', 'maison', '26/11/2023', '4', 0, 0, 0, 1, '0', '0628024716', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
(2, 'villa', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Modi facilis provident debitis ullam perspiciatis officiis aut quas ipsa, eligendi deserunt! Expedita officiis distinctio sed! Exercitationem, deleniti soluta eos delectus ex debitis! Dolore, quas esse corrupti explicabo vitae, deleniti, sunt praesentium nesciunt excepturi eum tempore? Natus quasi nulla ipsam cupiditate repudiandae quidem non laboriosam quas, perspiciatis nobis dolor consequuntur amet expedita, dolores deserunt nihil eveniet doloremque quos officia, repellat sint assumenda. Beatae nam aspernatur error a soluta alias temporibus, est tenetur perspiciatis cum eum dolore ab totam deserunt. Esse maxime unde culpa ratione temporibus. Esse perspiciatis molestias dolores et, voluptatibus maiores.', 200, 'K509577Y945324R886121A970415.jpg', 'rent', 'antananarivo', 'maison', '26/11/2023', '2', 0, 0, 0, 0, '0', '1245798555', 'bbbbbbbbbbbbbbb'),
(3, 'terrain 1', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Modi facilis provident debitis ullam perspiciatis officiis aut quas ipsa, eligendi deserunt! Expedita officiis distinctio sed! Exercitationem, deleniti soluta eos delectus ex debitis! Dolore, quas esse corrupti explicabo vitae, deleniti, sunt praesentium nesciunt excepturi eum tempore? Natus quasi nulla ipsam cupiditate repudiandae quidem non laboriosam quas, perspiciatis nobis dolor consequuntur amet expedita, dolores deserunt nihil eveniet doloremque quos officia, repellat sint assumenda. Beatae nam aspernatur error a soluta alias temporibus, est tenetur perspiciatis cum eum dolore ab totam deserunt. Esse maxime unde culpa ratione temporibus. Esse perspiciatis molestias dolores et, voluptatibus maiores.', 700, 'K845277Y479445R799161A463944.jpg', 'rent', 'fianarantsoa', 'maison', '26/11/2023', '2', 0, 0, 0, 0, '200', '1477777777', 'cccccccccc'),
(4, 'terrain 2', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Modi facilis provident debitis ullam perspiciatis officiis aut quas ipsa, eligendi deserunt! Expedita officiis distinctio sed! Exercitationem, deleniti soluta eos delectus ex debitis! Dolore, quas esse corrupti explicabo vitae, deleniti, sunt praesentium nesciunt excepturi eum tempore? Natus quasi nulla ipsam cupiditate repudiandae quidem non laboriosam quas, perspiciatis nobis dolor consequuntur amet expedita, dolores deserunt nihil eveniet doloremque quos officia, repellat sint assumenda. Beatae nam aspernatur error a soluta alias temporibus, est tenetur perspiciatis cum eum dolore ab totam deserunt. Esse maxime unde culpa ratione temporibus. Esse perspiciatis molestias dolores et, voluptatibus maiores.', 630, 'K659027Y908544R500357A932700.jpg', 'offer', 'toliara', 'maison', '26/11/2023', '2', 0, 0, 0, 1, '190', '7456668888', 'eeeeeeeee');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `provinces`
--

INSERT INTO `provinces` (`id`, `province`, `description`) VALUES
(1, 'antananarivo', 'tana Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt repellendus aspernatur officiis rem dolore suscipit quasi ex magnam modi nesciunt incidunt id praesentium dignissimos corrupti quas repudiandae fuga perferendis iste laborum recusandae quis, odio pariatur ut! Esse aperiam, odit nam provident minima laboriosam similique, obcaecati enim sit hic sequi veniam!'),
(2, 'antsiranana', 'diego-suarez Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt repellendus aspernatur officiis rem dolore suscipit quasi ex magnam modi nesciunt incidunt id praesentium dignissimos corrupti quas repudiandae fuga perferendis iste laborum recusandae quis, odio pariatur ut! Esse aperiam, odit nam provident minima laboriosam similique, obcaecati enim sit hic sequi veniam!'),
(3, 'fianarantsoa', 'fianara Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt repellendus aspernatur officiis rem dolore suscipit quasi ex magnam modi nesciunt incidunt id praesentium dignissimos corrupti quas repudiandae fuga perferendis iste laborum recusandae quis, odio pariatur ut! Esse aperiam, odit nam provident minima laboriosam similique, obcaecati enim sit hic sequi veniam!'),
(4, 'mahajanga', 'majunga Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt repellendus aspernatur officiis rem dolore suscipit quasi ex magnam modi nesciunt incidunt id praesentium dignissimos corrupti quas repudiandae fuga perferendis iste laborum recusandae quis, odio pariatur ut! Esse aperiam, odit nam provident minima laboriosam similique, obcaecati enim sit hic sequi veniam!'),
(5, 'toamasina', 'tamatave Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt repellendus aspernatur officiis rem dolore suscipit quasi ex magnam modi nesciunt incidunt id praesentium dignissimos corrupti quas repudiandae fuga perferendis iste laborum recusandae quis, odio pariatur ut! Esse aperiam, odit nam provident minima laboriosam similique, obcaecati enim sit hic sequi veniam!'),
(6, 'toliara', 'tuléar Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt repellendus aspernatur officiis rem dolore suscipit quasi ex magnam modi nesciunt incidunt id praesentium dignissimos corrupti quas repudiandae fuga perferendis iste laborum recusandae quis, odio pariatur ut! Esse aperiam, odit nam provident minima laboriosam similique, obcaecati enim sit hic sequi veniam!');

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `status` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `pseudo`, `email`, `password`, `photo`, `status`) VALUES
(1, 'badoda', 'badoda@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7eNBRRIc7J3gv0Gf8BjqmVf97rkQTItIu', 'K573289Y655595R461043A913061.png', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
