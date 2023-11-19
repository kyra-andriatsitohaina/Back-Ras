-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 19 nov. 2023 à 18:23
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
  `amenties` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `description`, `price`, `image`, `type`, `amenties`, `category`) VALUES
(1, 'katsaka ', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. In praesentium incidunt architecto veniam voluptate quisquam voluptates ut quasi nisi repellat eligendi magnam, nesciunt illo atque id dolores? Corrupti fuga veritatis, assumenda eaque quos praesentium mollitia necessitatibus dolor laborum ratione numquam ea nostrum maxime ipsa nesciunt. Ut, quae commodi vero cumque dolorum sint sunt natus omnis blanditiis perspiciatis deserunt! Eligendi ad voluptatibus voluptates voluptate laudantium praesentium corrupti similique assumenda asperiores. Nihil, veritatis? Minima perferendis, dignissimos quibusdam dolorem accusamus veniam nisi ab?', 500, 'sary1.jpg', 'offer', 'furnished', 'category 1'),
(2, 'tranokely ', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. In praesentium incidunt architecto veniam voluptate quisquam voluptates ut quasi nisi repellat eligendi magnam, nesciunt illo atque id dolores? Corrupti fuga veritatis, assumenda eaque quos praesentium mollitia necessitatibus dolor laborum ratione numquam ea nostrum maxime ipsa nesciunt. Ut, quae commodi vero cumque dolorum sint sunt natus omnis blanditiis perspiciatis deserunt! Eligendi ad voluptatibus voluptates voluptate laudantium praesentium corrupti similique assumenda asperiores. Nihil, veritatis? Minima perferendis, dignissimos quibusdam dolorem accusamus veniam nisi ab?', 100, 'sary2.jpg', 'sale', 'furnished', 'category 2'),
(3, 'blabla ', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. In praesentium incidunt architecto veniam voluptate quisquam voluptates ut quasi nisi repellat eligendi magnam, nesciunt illo atque id dolores? Corrupti fuga veritatis, assumenda eaque quos praesentium mollitia necessitatibus dolor laborum ratione numquam ea nostrum maxime ipsa nesciunt. Ut, quae commodi vero cumque dolorum sint sunt natus omnis blanditiis perspiciatis deserunt! Eligendi ad voluptatibus voluptates voluptate laudantium praesentium corrupti similique assumenda asperiores. Nihil, veritatis? Minima perferendis, dignissimos quibusdam dolorem accusamus veniam nisi ab?', 300, 'sary3.jpg', 'rent', 'furnished', 'category 3'),
(4, 'kolololo ', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. In praesentium incidunt architecto veniam voluptate quisquam voluptates ut quasi nisi repellat eligendi magnam, nesciunt illo atque id dolores? Corrupti fuga veritatis, assumenda eaque quos praesentium mollitia necessitatibus dolor laborum ratione numquam ea nostrum maxime ipsa nesciunt. Ut, quae commodi vero cumque dolorum sint sunt natus omnis blanditiis perspiciatis deserunt! Eligendi ad voluptatibus voluptates voluptate laudantium praesentium corrupti similique assumenda asperiores. Nihil, veritatis? Minima perferendis, dignissimos quibusdam dolorem accusamus veniam nisi ab?', 310, 'sary4.jpg', 'offer', 'parking', 'category 3'),
(5, 'trano bongo kely  ', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. In praesentium incidunt architecto veniam voluptate quisquam voluptates ut quasi nisi repellat eligendi magnam, nesciunt illo atque id dolores? Corrupti fuga veritatis, assumenda eaque quos praesentium mollitia necessitatibus dolor laborum ratione numquam ea nostrum maxime ipsa nesciunt. Ut, quae commodi vero cumque dolorum sint sunt natus omnis blanditiis perspiciatis deserunt! Eligendi ad voluptatibus voluptates voluptate laudantium praesentium corrupti similique assumenda asperiores. Nihil, veritatis? Minima perferendis, dignissimos quibusdam dolorem accusamus veniam nisi ab?', 10, 'sary3.jpg', 'sale', 'parking', 'category 2'),
(6, 'badoda kely  ', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. In praesentium incidunt architecto veniam voluptate quisquam voluptates ut quasi nisi repellat eligendi magnam, nesciunt illo atque id dolores? Corrupti fuga veritatis, assumenda eaque quos praesentium mollitia necessitatibus dolor laborum ratione numquam ea nostrum maxime ipsa nesciunt. Ut, quae commodi vero cumque dolorum sint sunt natus omnis blanditiis perspiciatis deserunt! Eligendi ad voluptatibus voluptates voluptate laudantium praesentium corrupti similique assumenda asperiores. Nihil, veritatis? Minima perferendis, dignissimos quibusdam dolorem accusamus veniam nisi ab?', 105, 'sary1.jpg', 'rent', 'parking', 'category 1'),
(7, ' kely  ', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. In praesentium incidunt architecto veniam voluptate quisquam voluptates ut quasi nisi repellat eligendi magnam, nesciunt illo atque id dolores? Corrupti fuga veritatis, assumenda eaque quos praesentium mollitia necessitatibus dolor laborum ratione numquam ea nostrum maxime ipsa nesciunt. Ut, quae commodi vero cumque dolorum sint sunt natus omnis blanditiis perspiciatis deserunt! Eligendi ad voluptatibus voluptates voluptate laudantium praesentium corrupti similique assumenda asperiores. Nihil, veritatis? Minima perferendis, dignissimos quibusdam dolorem accusamus veniam nisi ab?', 25, 'sary2.jpg', 'rent', 'parking', 'category 1'),
(8, ' villa ', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. In praesentium incidunt architecto veniam voluptate quisquam voluptates ut quasi nisi repellat eligendi magnam, nesciunt illo atque id dolores? Corrupti fuga veritatis, assumenda eaque quos praesentium mollitia necessitatibus dolor laborum ratione numquam ea nostrum maxime ipsa nesciunt. Ut, quae commodi vero cumque dolorum sint sunt natus omnis blanditiis perspiciatis deserunt! Eligendi ad voluptatibus voluptates voluptate laudantium praesentium corrupti similique assumenda asperiores. Nihil, veritatis? Minima perferendis, dignissimos quibusdam dolorem accusamus veniam nisi ab?', 250, 'sary3.jpg', 'sale', 'parking', 'category 2'),
(9, ' villa be ', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. In praesentium incidunt architecto veniam voluptate quisquam voluptates ut quasi nisi repellat eligendi magnam, nesciunt illo atque id dolores? Corrupti fuga veritatis, assumenda eaque quos praesentium mollitia necessitatibus dolor laborum ratione numquam ea nostrum maxime ipsa nesciunt. Ut, quae commodi vero cumque dolorum sint sunt natus omnis blanditiis perspiciatis deserunt! Eligendi ad voluptatibus voluptates voluptate laudantium praesentium corrupti similique assumenda asperiores. Nihil, veritatis? Minima perferendis, dignissimos quibusdam dolorem accusamus veniam nisi ab?', 340, 'sary4.jpg', 'rent', 'furnished', 'category 3'),
(10, ' belou kely ', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. In praesentium incidunt architecto veniam voluptate quisquam voluptates ut quasi nisi repellat eligendi magnam, nesciunt illo atque id dolores? Corrupti fuga veritatis, assumenda eaque quos praesentium mollitia necessitatibus dolor laborum ratione numquam ea nostrum maxime ipsa nesciunt. Ut, quae commodi vero cumque dolorum sint sunt natus omnis blanditiis perspiciatis deserunt! Eligendi ad voluptatibus voluptates voluptate laudantium praesentium corrupti similique assumenda asperiores. Nihil, veritatis? Minima perferendis, dignissimos quibusdam dolorem accusamus veniam nisi ab?', 34, 'sary3.jpg', 'offer', 'furnished', 'category 1'),
(11, 'testeo', 'blablabla', 50, 'sary1.jpg', 'rent', 'parking', 'category 2'),
(12, 'sefo be', 'hdghgsdhgfkhsdkfh', 250, 'sary3.jpg', 'sale', 'furnished', 'category 2');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` text NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `category`, `description`) VALUES
(1, 'category 1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus cum eligendi fugiat, iure quod similique repellendus explicabo illum ullam commodi tempora reiciendis odit libero? Ad ut voluptas veniam est animi. Repudiandae delectus ad libero rem nobis esse! Repellendus repudiandae quis molestiae voluptatum sit eius non, accusantium iure qui animi, possimus, sint natus quos id delectus harum vel veniam obcaecati vitae facere fugit expedita. Incidunt earum odit possimus! Pariatur quae aut, perspiciatis, fugit quos sint minus quisquam praesentium, veritatis nostrum non.'),
(2, 'category 2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus cum eligendi fugiat, iure quod similique repellendus explicabo illum ullam commodi tempora reiciendis odit libero? Ad ut voluptas veniam est animi. Repudiandae delectus ad libero rem nobis esse! Repellendus repudiandae quis molestiae voluptatum sit eius non, accusantium iure qui animi, possimus, sint natus quos id delectus harum vel veniam obcaecati vitae facere fugit expedita. Incidunt earum odit possimus! Pariatur quae aut, perspiciatis, fugit quos sint minus quisquam praesentium, veritatis nostrum non.'),
(3, 'category 3', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus cum eligendi fugiat, iure quod similique repellendus explicabo illum ullam commodi tempora reiciendis odit libero? Ad ut voluptas veniam est animi. Repudiandae delectus ad libero rem nobis esse! Repellendus repudiandae quis molestiae voluptatum sit eius non, accusantium iure qui animi, possimus, sint natus quos id delectus harum vel veniam obcaecati vitae facere fugit expedita. Incidunt earum odit possimus! Pariatur quae aut, perspiciatis, fugit quos sint minus quisquam praesentium, veritatis nostrum non.');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
