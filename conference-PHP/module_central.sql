-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Dim 14 Mai 2017 à 12:57
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `module_central`
--

-- --------------------------------------------------------

--
-- Structure de la table `conference`
--

CREATE TABLE `conference` (
  `id_conference` int(11) NOT NULL,
  `nom_conference` varchar(255) NOT NULL,
  `desc_conference` text NOT NULL,
  `logo` varchar(255) NOT NULL,
  `date_conference` date NOT NULL,
  `lieu` varchar(255) NOT NULL,
  `hachtag` text NOT NULL,
  `noms_conferencier` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `conference`
--

INSERT INTO `conference` (`id_conference`, `nom_conference`, `desc_conference`, `logo`, `date_conference`, `lieu`, `hachtag`, `noms_conferencier`) VALUES
(1, 'Hilel J. Lewis', 'risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non', 'orci.Donec@Aeneansed.co.uk', '2018-04-05', '824-4579 Risus. Route', 'a,', 'Jolene, Odysseus, Colt, Miranda'),
(2, 'Noelani Y. Walsh', 'amet ornare lectus justo eu arcu. Morbi sit amet massa.', 'amet.risus@NullafacilisisSuspendisse.org', '2017-06-13', '4674 Porta Rd.', 'justo', 'Phillip, Kerry, Boris, Charlotte'),
(3, 'Colby W. Leonard', 'magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac', 'cubilia.Curae@aauctor.net', '2017-12-27', '257-7551 Non, Rd.', 'iaculis,', 'Phoebe, Nadine, Wyoming, Neil'),
(4, 'Quynn K. Rodriguez', 'fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit.', 'amet.dapibus@posuere.ca', '2016-05-02', '6713 Sem Chemin', 'arcu.', 'Jamal, Colton, Colette, Gannon'),
(5, 'International conference on selected topics in Mobile and Wireless Networking\r\n\r\n', 'The Sixth International Conference on Selected Topics in Mobile & Wireless Networking (MoWNet\'17) will be held in Avignon, France. It follows MoWNet\'2016, MoWNet\'2014, MoWNet\'2013, iCOST\'2012 and iCOST\'2011 which were held in Cairo/Egypt, Rome/Italy, Montreal/Canada, Avignon/France and Shanghai/China.\r\nThe ever increasing market penetration of smart-phones, tablets, Netbooks, IoT and wearable devices, along with the ubiquitous availability of wireless networks are deeply influencing the way people live, work, interact, and socialize. However, the broad popularity and diffusion of innovative services and applications tailored at mobile users who are both services consumers and big data producers is also raising challenging research issues that require us to rethink available network and services technology solutions to meet the emerging needs of a broader and ever growing user base and voluminous network traffic.\r\nMoWNet\'17 aims at addressing recent research results on selected topics in Mobile & Wireless Networking and to present their methodologies, models, technologies, systems, tools, applications, work in progress and experiences.', 'https://scontent-cdg2-1.xx.fbcdn.net/v/t1.0-9/14720452_707091636105316_797595039727606615_n.jpg?oh=4c635a382a7ddb107f6693cf4c27fa59&oe=59BDF63D', '2018-03-21', '4656 Gravida Rd.', 'dolor', 'McKenzie, Xenos, Gage, Melinda'),
(6, 'Jolene V. Foster', 'et netus et malesuada fames ac turpis egestas. Aliquam fringilla', 'vitae@primisin.net', '2017-03-12', 'Appartement 715-3143 A Rd', 'a,', 'Donna, Zeus, Myles, Quin'),

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE `session` (
  `id_session` int(11) NOT NULL,
  `theme` text NOT NULL,
  `date_session` date NOT NULL,
  `lieu_session` varchar(255) NOT NULL,
  `periode_session` varchar(255) NOT NULL,
  `id_conference` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `session`
--

INSERT INTO `session` (`id_session`, `theme`, `date_session`, `lieu_session`, `periode_session`, `id_conference`) VALUES
(2, 'Aenean eget', '2017-08-29', '6864 Nulla Rue', 'sed tortor. Integer aliquam adipiscing lacus.', 1),
(4, 'turpis egestas.', '2016-09-02', 'CP 147, 6980 Fusce Impasse', 'sociis', 0),
(5, 'sed, est. Nunc laoreet lectus', '2017-11-10', '427 Consectetuer Av.', 'Pellentesque habitant morbi tristique senectus et netus et malesuada', 0),
(6, 'accumsan neque et nunc. Quisque ornare', '2017-03-03', '313-7637 Sed Ave', 'volutpat.', 0),
(7, 'at arcu. Vestibulum', '2017-03-10', '735-5957 Faucibus Rue', 'ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo', 0),
(8, 'Mauris vel turpis. Aliquam adipiscing', '2016-12-20', 'Appartement 230-7368 Sed Ave', 'risus. Quisque libero lacus, varius et, euismod et,', 0),
(9, 'libero at auctor ullamcorper, nisl arcu iaculis enim, sit', '2017-10-23', '656-9442 Metus. Route', 'Sed molestie. Sed id risus quis', 0),
(10, 'pretium', '2016-07-13', '9978 Vitae, Impasse', 'luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie.', 5),
(11, 'rutrum magna. Cras convallis convallis dolor. Quisque', '2017-01-13', '2209 Ullamcorper Av.', 'diam vel arcu. Curabitur ut odio vel est tempor bibendum.', 0),
(12, 'Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis', '2017-12-17', '4084 Feugiat Ave', 'aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio.', 0),
(13, 'Nunc', '2017-05-28', '1557 Convallis Rd.', 'montes, nascetur', 0),
(14, 'molestie orci tincidunt adipiscing.', '2017-07-08', '687-7777 Non, Chemin', 'leo elementum sem, vitae aliquam', 0),
(15, 'in, cursus et,', '2016-08-06', 'CP 932, 967 Nunc Rd.', 'non nisi. Aenean eget metus. In nec orci.', 0);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_user` int(11) NOT NULL,
  `login` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `conference`
--
ALTER TABLE `conference`
  ADD PRIMARY KEY (`id_conference`);

--
-- Index pour la table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id_session`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `conference`
--
ALTER TABLE `conference`
  MODIFY `id_conference` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
