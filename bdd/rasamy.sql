-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 23 nov. 2023 à 19:43
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `description`, `price`, `image`, `type`, `province`, `category`, `date`) VALUES
(1, 'katsaka ', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. In praesentium incidunt architecto veniam voluptate quisquam voluptates ut quasi nisi repellat eligendi magnam, nesciunt illo atque id dolores? Corrupti fuga veritatis, assumenda eaque quos praesentium mollitia necessitatibus dolor laborum ratione numquam ea nostrum maxime ipsa nesciunt. Ut, quae commodi vero cumque dolorum sint sunt natus omnis blanditiis perspiciatis deserunt! Eligendi ad voluptatibus voluptates voluptate laudantium praesentium corrupti similique assumenda asperiores. Nihil, veritatis? Minima perferendis, dignissimos quibusdam dolorem accusamus veniam nisi ab?', 500, 'sary1.jpg', 'offer', 'antananarivo', 'maison', ''),
(2, 'tranokely ', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. In praesentium incidunt architecto veniam voluptate quisquam voluptates ut quasi nisi repellat eligendi magnam, nesciunt illo atque id dolores? Corrupti fuga veritatis, assumenda eaque quos praesentium mollitia necessitatibus dolor laborum ratione numquam ea nostrum maxime ipsa nesciunt. Ut, quae commodi vero cumque dolorum sint sunt natus omnis blanditiis perspiciatis deserunt! Eligendi ad voluptatibus voluptates voluptate laudantium praesentium corrupti similique assumenda asperiores. Nihil, veritatis? Minima perferendis, dignissimos quibusdam dolorem accusamus veniam nisi ab?', 100, 'sary2.jpg', 'sale', 'toliara', 'terrain', ''),
(3, 'blabla ', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. In praesentium incidunt architecto veniam voluptate quisquam voluptates ut quasi nisi repellat eligendi magnam, nesciunt illo atque id dolores? Corrupti fuga veritatis, assumenda eaque quos praesentium mollitia necessitatibus dolor laborum ratione numquam ea nostrum maxime ipsa nesciunt. Ut, quae commodi vero cumque dolorum sint sunt natus omnis blanditiis perspiciatis deserunt! Eligendi ad voluptatibus voluptates voluptate laudantium praesentium corrupti similique assumenda asperiores. Nihil, veritatis? Minima perferendis, dignissimos quibusdam dolorem accusamus veniam nisi ab?', 300, 'sary3.jpg', 'rent', 'antananarivo', 'terrain', ''),
(4, 'kolololo ', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. In praesentium incidunt architecto veniam voluptate quisquam voluptates ut quasi nisi repellat eligendi magnam, nesciunt illo atque id dolores? Corrupti fuga veritatis, assumenda eaque quos praesentium mollitia necessitatibus dolor laborum ratione numquam ea nostrum maxime ipsa nesciunt. Ut, quae commodi vero cumque dolorum sint sunt natus omnis blanditiis perspiciatis deserunt! Eligendi ad voluptatibus voluptates voluptate laudantium praesentium corrupti similique assumenda asperiores. Nihil, veritatis? Minima perferendis, dignissimos quibusdam dolorem accusamus veniam nisi ab?', 310, 'sary4.jpg', 'offer', 'fianarantsoa', 'maison', ''),
(5, 'trano bongo kely  ', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. In praesentium incidunt architecto veniam voluptate quisquam voluptates ut quasi nisi repellat eligendi magnam, nesciunt illo atque id dolores? Corrupti fuga veritatis, assumenda eaque quos praesentium mollitia necessitatibus dolor laborum ratione numquam ea nostrum maxime ipsa nesciunt. Ut, quae commodi vero cumque dolorum sint sunt natus omnis blanditiis perspiciatis deserunt! Eligendi ad voluptatibus voluptates voluptate laudantium praesentium corrupti similique assumenda asperiores. Nihil, veritatis? Minima perferendis, dignissimos quibusdam dolorem accusamus veniam nisi ab?', 10, 'sary3.jpg', 'sale', 'mahajanga', 'terrain', ''),
(6, 'badoda kely  ', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. In praesentium incidunt architecto veniam voluptate quisquam voluptates ut quasi nisi repellat eligendi magnam, nesciunt illo atque id dolores? Corrupti fuga veritatis, assumenda eaque quos praesentium mollitia necessitatibus dolor laborum ratione numquam ea nostrum maxime ipsa nesciunt. Ut, quae commodi vero cumque dolorum sint sunt natus omnis blanditiis perspiciatis deserunt! Eligendi ad voluptatibus voluptates voluptate laudantium praesentium corrupti similique assumenda asperiores. Nihil, veritatis? Minima perferendis, dignissimos quibusdam dolorem accusamus veniam nisi ab?', 105, 'sary1.jpg', 'rent', 'toamasina', 'maison', ''),
(7, ' kely  ', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. In praesentium incidunt architecto veniam voluptate quisquam voluptates ut quasi nisi repellat eligendi magnam, nesciunt illo atque id dolores? Corrupti fuga veritatis, assumenda eaque quos praesentium mollitia necessitatibus dolor laborum ratione numquam ea nostrum maxime ipsa nesciunt. Ut, quae commodi vero cumque dolorum sint sunt natus omnis blanditiis perspiciatis deserunt! Eligendi ad voluptatibus voluptates voluptate laudantium praesentium corrupti similique assumenda asperiores. Nihil, veritatis? Minima perferendis, dignissimos quibusdam dolorem accusamus veniam nisi ab?', 25, 'sary2.jpg', 'rent', 'antananarivo', 'maison', ''),
(8, ' villa ', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. In praesentium incidunt architecto veniam voluptate quisquam voluptates ut quasi nisi repellat eligendi magnam, nesciunt illo atque id dolores? Corrupti fuga veritatis, assumenda eaque quos praesentium mollitia necessitatibus dolor laborum ratione numquam ea nostrum maxime ipsa nesciunt. Ut, quae commodi vero cumque dolorum sint sunt natus omnis blanditiis perspiciatis deserunt! Eligendi ad voluptatibus voluptates voluptate laudantium praesentium corrupti similique assumenda asperiores. Nihil, veritatis? Minima perferendis, dignissimos quibusdam dolorem accusamus veniam nisi ab?', 250, 'sary3.jpg', 'sale', 'toamasina', 'terrain', ''),
(9, ' villa be ', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. In praesentium incidunt architecto veniam voluptate quisquam voluptates ut quasi nisi repellat eligendi magnam, nesciunt illo atque id dolores? Corrupti fuga veritatis, assumenda eaque quos praesentium mollitia necessitatibus dolor laborum ratione numquam ea nostrum maxime ipsa nesciunt. Ut, quae commodi vero cumque dolorum sint sunt natus omnis blanditiis perspiciatis deserunt! Eligendi ad voluptatibus voluptates voluptate laudantium praesentium corrupti similique assumenda asperiores. Nihil, veritatis? Minima perferendis, dignissimos quibusdam dolorem accusamus veniam nisi ab?', 340, 'sary4.jpg', 'rent', 'fianarantsoa', 'terrain', ''),
(10, ' belou kely ', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. In praesentium incidunt architecto veniam voluptate quisquam voluptates ut quasi nisi repellat eligendi magnam, nesciunt illo atque id dolores? Corrupti fuga veritatis, assumenda eaque quos praesentium mollitia necessitatibus dolor laborum ratione numquam ea nostrum maxime ipsa nesciunt. Ut, quae commodi vero cumque dolorum sint sunt natus omnis blanditiis perspiciatis deserunt! Eligendi ad voluptatibus voluptates voluptate laudantium praesentium corrupti similique assumenda asperiores. Nihil, veritatis? Minima perferendis, dignissimos quibusdam dolorem accusamus veniam nisi ab?', 34, 'sary3.jpg', 'offer', 'toliara', 'maison', ''),
(11, 'testeo', 'blablabla', 50, 'sary1.jpg', 'rent', 'mahajanga', 'maison', ''),
(12, 'sefo be', 'hdghgsdhgfkhsdkfh', 250, 'sary3.jpg', 'sale', 'mahajanga', 'maison', ''),
(14, 'ggg', 'ggggg', 40, 'sary2.jpg', 'sale', 'toliara', 'maison', ''),
(15, 'eezffzef', 'fzfz', 44, 'sary1.jpg', 'sale', 'toamasina', 'terrain', '');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `province` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `description`, `province`) VALUES
(1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus cum eligendi fugiat, iure quod similique repellendus explicabo illum ullam commodi tempora reiciendis odit libero? Ad ut voluptas veniam est animi. Repudiandae delectus ad libero rem nobis esse! Repellendus repudiandae quis molestiae voluptatum sit eius non, accusantium iure qui animi, possimus, sint natus quos id delectus harum vel veniam obcaecati vitae facere fugit expedita. Incidunt earum odit possimus! Pariatur quae aut, perspiciatis, fugit quos sint minus quisquam praesentium, veritatis nostrum non.', ''),
(2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus cum eligendi fugiat, iure quod similique repellendus explicabo illum ullam commodi tempora reiciendis odit libero? Ad ut voluptas veniam est animi. Repudiandae delectus ad libero rem nobis esse! Repellendus repudiandae quis molestiae voluptatum sit eius non, accusantium iure qui animi, possimus, sint natus quos id delectus harum vel veniam obcaecati vitae facere fugit expedita. Incidunt earum odit possimus! Pariatur quae aut, perspiciatis, fugit quos sint minus quisquam praesentium, veritatis nostrum non.', ''),
(3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus cum eligendi fugiat, iure quod similique repellendus explicabo illum ullam commodi tempora reiciendis odit libero? Ad ut voluptas veniam est animi. Repudiandae delectus ad libero rem nobis esse! Repellendus repudiandae quis molestiae voluptatum sit eius non, accusantium iure qui animi, possimus, sint natus quos id delectus harum vel veniam obcaecati vitae facere fugit expedita. Incidunt earum odit possimus! Pariatur quae aut, perspiciatis, fugit quos sint minus quisquam praesentium, veritatis nostrum non.', '');

-- --------------------------------------------------------

--
-- Structure de la table `field_properties`
--

DROP TABLE IF EXISTS `field_properties`;
CREATE TABLE IF NOT EXISTS `field_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `house_properties`
--

DROP TABLE IF EXISTS `house_properties`;
CREATE TABLE IF NOT EXISTS `house_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `pseudo`, `email`, `password`, `photo`, `status`) VALUES
(1, 'badoda', 'badoda@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7eNBRRIc7J3gv0Gf8BjqmVf97rkQTItIu', 'avatar.png', 0),
(2, 'faniry', 'faniry@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7e/YPA1jh73wtDrev1V7fj7dZbfYOTV3G', 'avatar.png', 0),
(3, 'anthony', 'anhtony@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7efV7Mh8jVipbNzRpuZKCfPuubt6AZE1y', 'avatar.png', 0),
(4, 'anthony', 'badoda@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7eNBRRIc7J3gv0Gf8BjqmVf97rkQTItIu', 'avatar.png', 0),
(5, 'test', 'test@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7e83PdHBwIGdClaLgj4R7/ilHTrlO1nB6', 'avatar.png', 0),
(6, 'test2', 'test2@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7eZBW17DpXQuVTv.U9.KPwDpS.xNnkQyC', 'avatar.png', 0),
(7, 'fafafaf', 'test2@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7exmcxI51M5ZMmMivXsbFdrCMvMBHhNCK', 'avatar.png', 0),
(8, 'rakoto', 'rakoto@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7eOwZRP9x98HSjMVtW3dOJfkqLrcmqzw6', 'K670636Y499279R454586A905374.png', 0),
(9, 'ketrika', 'ketrika@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7eVllVA7yNQQTIZkhduYijoT5xwoD4fyS', 'avatar.png', 0),
(10, 'testeo', 'testeo@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7eaJcEgcoULhe/3jwJKhR1RwzKPjr26Z6', 'avatar.png', 0),
(11, 'badoda', 'badoda@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7eYxhE3LZ.L5kzBH9nVY6VKY4NJ36Ft4W', 'K666543Y573677R460158A409502.png', 0),
(12, 'badoda', 'basil@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7eYxhE3LZ.L5kzBH9nVY6VKY4NJ36Ft4W', 'avatar.png', 0),
(13, 'fafafaf', 'test@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7e83PdHBwIGdClaLgj4R7/ilHTrlO1nB6', 'K434188Y534832R354620A157003.png', 0),
(14, 'fafafaf', 'dfd@ff.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7e3G2hJj8AfqrcJHFFAioa.pqQzsMgwne', 'K174217Y92173R719580A680764.jpg', 0),
(15, 'badoda', 'faniry@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7e83PdHBwIGdClaLgj4R7/ilHTrlO1nB6', 'avatar.png', 0),
(16, 'rakoto', 'ra@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7eH6OZWmJ7fRztC.9SZpwddwdMCqfEOE6', 'avatar.png', 0),
(17, 'csdcs', 'z@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7e/UHJBioTCA4ZzC0CnsSk/ubMjZu36lG', 'avatar.png', 0),
(18, 'kakana', 'kakana@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7ehUu9smh4KT95Su36H7EBQ1UhVq/GQpK', 'avatar.png', 0),
(19, 'rakotobe', 'rakotobe@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7ehUu9smh4KT95Su36H7EBQ1UhVq/GQpK', 'K556423Y206270R758572A927243.png', 0),
(20, 'bozaka', 'bozaka@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7e9WHledxDvKwvIVDq6knT763n4uq20Ya', 'avatar.png', 0),
(21, 'efa', 'efa@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7efjADpvvinGo4DLuUAGG1A9YHQaYU8Q2', 'K594073Y135048R513457A617015.png', 0),
(22, 'demain', 'demain@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7ePOquDFc6/eivwIctZwFnID/MlIvxjoK', 'avatar.png', 0),
(23, 'bi', 'bi@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7ea3LGNYO2rJpy8h3Oi31GfuMgTFhQlfO', 'avatar.png', 0),
(24, 'p', 'p@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7eGCUPZpOUcO5snzGnjrtZuQHfKSLD1Eq', 'K118369Y447987R591828A9064.png', 0),
(25, 'bogosy', 'bogosy@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7e9wZs7NdMZNpp9lzHliNWGIpIisQLXCm', 'K206297Y90380R431168A677290.jpg', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
