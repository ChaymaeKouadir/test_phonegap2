-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Client :  mysql51-83.perso
-- Généré le :  Ven 12 Mai 2017 à 11:41
-- Version du serveur :  5.5.55-0+deb7u1-log
-- Version de PHP :  5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `taleofdebdd`
--

-- --------------------------------------------------------

--
-- Structure de la table `commentaires_media`
--

CREATE TABLE IF NOT EXISTS `commentaires_media` (
  `id_com` int(11) NOT NULL,
  `id_media` int(11) NOT NULL,
  `auteur` int(11) NOT NULL,
  `date_com` datetime NOT NULL,
  `contenu` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commentaires_media`
--

INSERT INTO `commentaires_media` (`id_com`, `id_media`, `auteur`, `date_com`, `contenu`) VALUES
(1, 1, 1, '2017-04-10 00:00:00', 'Test com #1'),
(2, 1, 1, '2017-04-10 00:00:00', 'Test com #2');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires_session`
--

CREATE TABLE IF NOT EXISTS `commentaires_session` (
  `id_com` int(11) NOT NULL,
  `id_session` int(11) NOT NULL,
  `auteur` int(11) NOT NULL,
  `date_com` datetime NOT NULL,
  `contenu` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commentaires_session`
--

INSERT INTO `commentaires_session` (`id_com`, `id_session`, `auteur`, `date_com`, `contenu`) VALUES
(1, 1, 1, '2017-04-10 00:00:00', 'Test com session #1'),
(2, 2, 1, '2017-04-10 00:00:00', 'Test com session #2');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nom` varchar(128) NOT NULL,
  `prenom` varchar(128) NOT NULL,
  `date_naissance` varchar(10) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `avatar` varchar(55) NOT NULL,
  `reinit_pass` varchar(255) NOT NULL,
  `reseaux_sociaux` text NOT NULL,
  `peut_geolocaliser` tinyint(4) NOT NULL,
  `amis_peut_geolocaliser` tinyint(4) NOT NULL,
  `est_conf` tinyint(4) NOT NULL,
  `est_orga` tinyint(4) NOT NULL,
  `est_mod` tinyint(4) NOT NULL,
  `est_adm` tinyint(4) NOT NULL,
  `est_banni` tinyint(4) NOT NULL,
  `est_desinscrit` tinyint(4) NOT NULL,
  `notifications` text NOT NULL,
  `favoris` text NOT NULL,
  `themes` text NOT NULL,
  `lang` varchar(8) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `login`, `session_id`, `password`, `nom`, `prenom`, `date_naissance`, `mail`, `avatar`, `reinit_pass`, `reseaux_sociaux`, `peut_geolocaliser`, `amis_peut_geolocaliser`, `est_conf`, `est_orga`, `est_mod`, `est_adm`, `est_banni`, `est_desinscrit`, `notifications`, `favoris`, `themes`, `lang`, `description`) VALUES
(1, 'anthony', '', 'toto', 'Legendre', 'Anthony', '07/06/1993', 'anthony.legendre@alumni.univ-avignon.test', '', '', '[]', 1, 0, 0, 0, 0, 1, 0, 0, '[]', '[]', '[]', 'FR', 'Lorem ipsum dolor amet'),
(2, 'test', '', 'test', 'Test', 'Test', '10/04/2017', 'test@test.test', '', '', '[]', 0, 0, 0, 0, 0, 0, 0, 0, '[]', '[]', '[]', 'FR', 'Test blabla');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `commentaires_media`
--
ALTER TABLE `commentaires_media`
  ADD PRIMARY KEY (`id_com`);

--
-- Index pour la table `commentaires_session`
--
ALTER TABLE `commentaires_session`
  ADD PRIMARY KEY (`id_com`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `commentaires_media`
--
ALTER TABLE `commentaires_media`
  MODIFY `id_com` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `commentaires_session`
--
ALTER TABLE `commentaires_session`
  MODIFY `id_com` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
