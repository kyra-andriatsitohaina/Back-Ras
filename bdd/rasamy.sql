-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 29 nov. 2023 à 19:23
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'rasamygab@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7eS.Andnq4AxM4q.Pir1HKFrTAwjCJQiG');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `description`, `price`, `image`, `province`, `category`, `superficie`, `chambre`, `access`, `elec`, `eau`, `garage`, `status`, `contact`, `type`, `tel_transfert`, `reference`, `name`, `userId`, `favorite`, `date_publication`, `fin_validation`, `validation`) VALUES
(1, 'trano 3', 'La distance est grande entre nous, mais l\'amour rapproche nos cœurs. J\'ai hâte de te retrouver pour te prouver mon amour, te serrer dans mes bras, et te couvrir de baisers. J\'espère que ces quelques lignes sauront susciter en toi un peu plus encore l\'impatience de me retrouver. Nous profiterons alors comme il se doit de ces moments qui n\'appartiennent qu\'à nous.', 150, 'K63767Y962473R694215A794995.jpg', 'antananarivo', 'terrain', '400', '0', 'vehicule', 'non', 'non', 'non', 'oui', '03232414148', 'rent', '0334455544', 'ref 1-tf-bam', 'rakoto be ', 1, 5, '29/11/2023', '29/02/2024', 3),
(2, 'terrain 2', 'A tes côtés, je m\'épanouis, à tes côtés, je me sens en vie. Merci pour tous ces bonheurs que tu m\'apportes, merci de partager les bons et les mauvais moments chaque jour.', 200, 'K196485Y377044R349590A948739.jpg', 'fianarantsoa', 'terrain', '0', '4', 'moto', 'oui', 'oui', 'oui', 'oui', '0347777889', 'rent', '0324788899', 'ref-badoda', 'badoda', 1, 1, '29/11/2023', '29/05/2024', 6),
(3, 'trano 4', 'Combien de lettres nous sommes-nous envoyées depuis que nous sommes ensemble ? Sans doute pas assez encore. Parce qu\'il n\'y a pas de mots assez nombreux, ni assez forts, pour exprimer l\'intensité de ma passion. Chaque jour, j\'ai envie de crier au monde entier, et d\'écrire en grandes lettres rouges , à quel point je t\'aime. Parce qu\'à jamais, ce que je ressens pour toi est gravé dans ma mémoire et dans mon cœur. Je t\'aime.', 0, 'K596420Y152398R947079A146127.jpg', 'mahajanga', 'maison', '0', '0', 'moto', 'non', 'oui', 'non', 'non', '2333333333', 'rent', '0347787112', 'ref-tsaiko', 'balita', 1, 3, '0', '0', 12),
(4, 'terrain', 'Quand je pense à toi, je deviens pleinement moi. Tu as su me révéler, me sublimer, me transformer. Grâce à toi, je suis heureux / se, pleinement amoureux / se. Merci de tout ce que tu m\'apportes, merci d\'être à mes côtés. Je t\'aime.', 50, 'K706873Y114475R127877A980077.jpg', 'toliara', 'terrain', '4111', '0', 'moto', 'non', 'non', 'non', 'oui', '0381744895', 'sale', '0389966666', 'ref-ourahhh', 'ketaka', 1, 1, '29/11/2023', '29/12/2023', 1),
(6, 'terrain 1', 'Depuis le temps que nous partageons notre amour sans aucun nuage, je me suis rendu compte à quel point tu comptais pour moi. C\'est à tes côtés que je veux construire ma vie, que nous avancions main dans la main. Veux-tu devenir ma femme/mon mari ?', 280, 'K475845Y134744R118179A754000.jpg', 'antananarivo', 'terrain', '200', '0', 'voiture', 'non', 'non', 'non', 'non', '0345577788', 'offer', '0327841699', 'ref-???', 'kivy', 2, 0, '0', '0', 6),
(7, 'trano kely', 'Chacun des kilomètres qui nous séparent me donne de la force pour tenir. Tu es loin de moi, mais l\'amour me donne des ailes pour faire face à la distance qui nous sépare. Notre amour ne connaît pas de limites, nous vivrons ensemble des jours heureux, car je t\'aime.', 10, 'K620831Y328587R697222A717780.jpg', 'antananarivo', 'maison', '0', '4', 'moto', 'oui', 'oui', 'non', 'oui', '0202452214', 'rent', '0343322451', 'ref-trans ', 'bozy mpanera', 2, 4, '29/11/2023', '29/12/2023', 1),
(8, 'trano 2', 'Lève-toi , paresseuse ! allons, voici le jour.\r\nTout rit à l\'aube, et moi je ris à mon aurore ;\r\nLa matinée est belle, et toi plus belle encore ;\r\nLe jour qui te réveille éveille aussi l\'amour.\r\n', 140, 'K739054Y447055R825823A903851.jpg', 'antananarivo', 'maison', '0', '3', 'voiture', 'non', 'oui', 'oui', 'oui', '0326514852', 'rent', '0341047825', 'ref-trano 2', 'basil', 2, 0, '29/11/2023', '29/12/2023', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `favorites`
--

INSERT INTO `favorites` (`id`, `article_title`, `article_id`, `user`) VALUES
(2, 'trano 2', 1, 1),
(4, 'azygfuyazfazyftaz', 7, 2),
(5, 'terrain', 4, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `pseudo`, `email`, `password`, `photo`) VALUES
(1, 'badoda', 'badoda@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7eNBRRIc7J3gv0Gf8BjqmVf97rkQTItIu', 'K479781Y718695R356962A529994.png'),
(2, 'test', 'test@gmail.com', '$2b$10$TE7YHtY5dtrNWFB2W/7O7e83PdHBwIGdClaLgj4R7/ilHTrlO1nB6', 'K901418Y420433R405363A137129.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
