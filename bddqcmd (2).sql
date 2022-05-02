-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 02 mai 2022 à 10:47
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bddqcmd`
--

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `idEtudiant` int(11) NOT NULL,
  `statut` int(11) NOT NULL,
  `login` varchar(15) NOT NULL,
  `motDePasse` varchar(15) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`idEtudiant`, `statut`, `login`, `motDePasse`, `nom`, `prenom`, `email`) VALUES
(1, 0, 'ben', '1234', 'Alison', 'Benjamin', 'alison.benjamin@hotmail.fr'),
(2, 1, 'tof', '1234', 'Gand', 'Christophe', 'gand.christophe@free.fr'),
(3, 0, 'lulu', '1234', 'Gand', 'Lucile', 'gand.lucile@bbox.fr'),
(4, 0, 'yoyo', '1234', 'tra', 'yoni', 'yoyo@gmail.com'),
(19, 0, 'dav', '1234', 'tra', 'dav', 'yoyo@gmail.com'),
(35, 0, 'eric', '1234', 'hi', 'eric', 'eric@gmail.com'),
(36, 0, 'jack', '1234', 'han', 'jack', 'jack.han@ortmontreuil.fr'),
(37, 0, 'yac', '1234', 'tra', 'yac', 'yacob.tra@gmail.com'),
(38, 0, 'jb', '0', 'jb', 'jb', 'jb@aol.com');

-- --------------------------------------------------------

--
-- Structure de la table `qcmfait`
--

CREATE TABLE `qcmfait` (
  `idEtudiant` int(11) NOT NULL,
  `idQuestionnaire` int(11) NOT NULL,
  `dateFait` varchar(10) NOT NULL,
  `point` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `qcmfait`
--

INSERT INTO `qcmfait` (`idEtudiant`, `idQuestionnaire`, `dateFait`, `point`) VALUES
(1, 1, '2022-04-10', 100),
(1, 2, '2017-03-29', 33),
(1, 3, '2020-05-25', 75),
(1, 4, '2022-05-02', 50),
(3, 1, '2020-05-25', 100),
(3, 2, '07-01-2018', 0),
(3, 3, '2020-05-25', 0),
(35, 1, '2022-03-28', 100),
(35, 2, '2022-03-28', 0),
(35, 4, '2022-03-28', 100),
(35, 5, '2022-03-28', 67),
(35, 6, '2022-03-28', 25),
(36, 1, '2022-03-28', 75),
(36, 3, '2022-03-28', 100);

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `idQuestion` int(11) NOT NULL,
  `libelleQuestion` varchar(100) NOT NULL,
  `type` int(11) NOT NULL,
  `nbReponse` int(11) NOT NULL,
  `nbBonneReponse` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`idQuestion`, `libelleQuestion`, `type`, `nbReponse`, `nbBonneReponse`) VALUES
(1, 'Complétez le titre du film \"L\'étrange histoire de ...\"', 1, 4, 1),
(2, 'En quelle année est né Woody Alen ?', 1, 4, 1),
(3, 'Quel est le premier film de Léonardo Di Caprio ?', 1, 3, 1),
(4, 'Qui jouaient dans le film \"Rock N Roll\" ?', 2, 4, 3),
(5, 'Qui est l’entraîneur d\'Arsenal ?', 1, 4, 1),
(6, 'En quelle année Nantes a été champion de Fance ?', 2, 6, 4),
(7, 'Qui est le meilleur buteur de ligue 1 pour l\'année 2015-2016 ?', 1, 3, 1),
(8, 'Quelle est la hauteur de la tour Eiffel ?', 1, 3, 1),
(9, 'Qui a écrit l\'étranger ?', 1, 3, 1),
(10, 'Quelle est la capitale de la Roumanie ?', 1, 3, 1),
(11, 'Qui est le personnage principal de One Piece ?', 1, 4, 1),
(12, 'Comment s\'appelle le père de Gon ?', 1, 4, 1),
(13, 'Qui entraine Itadori avant le tournoi dans Jujutsu Kaisen', 1, 4, 1),
(14, 'Dans One Piece quel fruit donne des pouvoirs spéciaux à celui qui le mange ?', 1, 3, 1),
(15, 'Qu\'est-ce que la matière Noire ?', 1, 3, 1),
(16, 'Combien de planètes y a t-il dans notre système solaire ?', 1, 4, 1),
(17, 'Comment(s) s\'appelle(nt) le(s) satellite(s) naturel(s) de Mars ?', 1, 4, 2),
(18, 'En quelle année est sortie la phase 1 Bentley Bentayga ?', 1, 4, 1),
(19, 'Combien de chevaux développe une Porsche 911 Targa 4 GTS ?', 1, 4, 1),
(20, 'Quel véhicule de la marque Bugatti n\'a été conçu qu\'en un seul exemplaire ?', 1, 4, 1),
(21, 'combien coute une Tesla Model X ?', 1, 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `questionnaire`
--

CREATE TABLE `questionnaire` (
  `idQuestionnaire` int(11) NOT NULL,
  `libelleQuestionnaire` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `questionnaire`
--

INSERT INTO `questionnaire` (`idQuestionnaire`, `libelleQuestionnaire`) VALUES
(1, 'Cinéma'),
(2, 'Foot'),
(3, 'Culture générale'),
(4, 'manga'),
(5, 'L\'univers'),
(6, 'Voitures'),
(10, 'test jb');

-- --------------------------------------------------------

--
-- Structure de la table `questionquestionnaire`
--

CREATE TABLE `questionquestionnaire` (
  `idQuestionnaire` int(11) NOT NULL,
  `idQuestion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `questionquestionnaire`
--

INSERT INTO `questionquestionnaire` (`idQuestionnaire`, `idQuestion`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 5),
(2, 6),
(2, 7),
(3, 8),
(3, 9),
(3, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(5, 15),
(5, 16),
(5, 17),
(6, 18),
(6, 19),
(6, 20),
(6, 21);

-- --------------------------------------------------------

--
-- Structure de la table `questionreponse`
--

CREATE TABLE `questionreponse` (
  `idQuestion` int(11) NOT NULL,
  `idReponse` int(11) NOT NULL,
  `ordre` int(11) NOT NULL,
  `bonne` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `questionreponse`
--

INSERT INTO `questionreponse` (`idQuestion`, `idReponse`, `ordre`, `bonne`) VALUES
(1, 1, 1, 0),
(1, 2, 2, 1),
(1, 3, 3, 0),
(1, 4, 4, 0),
(2, 5, 1, 0),
(2, 6, 2, 1),
(2, 7, 3, 0),
(2, 8, 4, 0),
(3, 9, 1, 0),
(3, 10, 2, 1),
(3, 11, 3, 0),
(4, 12, 1, 1),
(4, 13, 2, 0),
(4, 14, 3, 1),
(4, 15, 4, 1),
(5, 16, 1, 0),
(5, 17, 2, 0),
(5, 18, 3, 1),
(5, 19, 4, 0),
(6, 20, 1, 0),
(6, 21, 2, 1),
(6, 22, 3, 1),
(6, 23, 4, 1),
(6, 24, 5, 0),
(6, 25, 6, 1),
(7, 26, 1, 1),
(7, 27, 2, 0),
(7, 28, 3, 0),
(8, 29, 1, 0),
(8, 30, 2, 1),
(8, 31, 3, 0),
(9, 32, 1, 0),
(9, 33, 2, 0),
(9, 34, 3, 1),
(10, 35, 1, 1),
(10, 36, 2, 0),
(10, 37, 3, 0),
(11, 38, 1, 1),
(11, 39, 2, 0),
(11, 40, 3, 0),
(11, 41, 4, 0),
(12, 42, 1, 1),
(12, 43, 2, 0),
(12, 44, 3, 0),
(12, 45, 4, 0),
(13, 46, 1, 0),
(13, 47, 2, 0),
(13, 48, 3, 1),
(13, 49, 4, 0),
(14, 73, 1, 0),
(14, 74, 2, 1),
(14, 75, 3, 0),
(15, 54, 1, 0),
(15, 55, 2, 0),
(15, 56, 3, 1),
(16, 57, 1, 0),
(16, 58, 2, 0),
(16, 59, 3, 1),
(16, 60, 4, 0),
(17, 61, 1, 0),
(17, 62, 2, 1),
(17, 63, 3, 1),
(17, 64, 4, 0),
(18, 65, 1, 0),
(18, 66, 2, 0),
(18, 67, 3, 1),
(18, 68, 4, 0),
(19, 69, 1, 0),
(19, 70, 2, 0),
(19, 71, 3, 1),
(19, 72, 4, 0),
(20, 50, 1, 0),
(20, 51, 2, 1),
(20, 52, 3, 0),
(20, 53, 4, 0),
(21, 76, 1, 0),
(21, 77, 2, 0),
(21, 78, 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `reponse`
--

CREATE TABLE `reponse` (
  `idReponse` int(11) NOT NULL,
  `valeur` text NOT NULL,
  `cheminImage` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `reponse`
--

INSERT INTO `reponse` (`idReponse`, `valeur`, `cheminImage`) VALUES
(1, 'Benji', ''),
(2, 'Benjamin Button', ''),
(3, 'Benjamin Gates', ''),
(4, 'Benjamin Constant', ''),
(5, '1930', ''),
(6, '1935', ''),
(7, '1940', ''),
(8, '1945', ''),
(9, 'Piranha 2', ''),
(10, 'Critters 3', ''),
(11, 'Amityville II', ''),
(12, 'Guillaume Canet', ''),
(13, 'Clovis Cornillac', ''),
(14, 'Marion Cotillard', ''),
(15, 'Gilles Lelouche', ''),
(16, 'Raymond Domenech', ''),
(17, 'Elie Baup', ''),
(18, 'Arsène Wenger', ''),
(19, 'José Mourinho', ''),
(20, '1964', ''),
(21, '1965', ''),
(22, '1980', ''),
(23, '1983', ''),
(24, '1986', ''),
(25, '1995', ''),
(26, 'Edinson Cavani', ''),
(27, 'Alexandre Lacazette', ''),
(28, 'Bafetimbi Gomis', ''),
(29, '320', ''),
(30, '324', ''),
(31, '328', ''),
(32, 'Victor Hugo', ''),
(33, 'Boris Vian', ''),
(34, 'Albert Camus', ''),
(35, 'Bucarest', ''),
(36, 'Budapest', ''),
(37, 'Sofia', ''),
(38, 'Luffy', ''),
(39, 'Sanji', ''),
(40, 'Barbe Noire', ''),
(41, 'Smoker', ''),
(42, 'Ging Freecss', ''),
(43, 'Irumi Zoldik', ''),
(44, 'Isaac Netero', ''),
(45, 'Franklin Bordeaux', ''),
(46, 'Toge Inumaki', ''),
(47, 'Megumi Fushiguro', ''),
(48, 'Satoru Gojo', ''),
(49, 'Ultimate Mechamaru', ''),
(50, 'Bugatti Chiron', ''),
(51, 'Bugatti Divo', ''),
(52, 'Bugatti Veyron', ''),
(53, 'Bugatti La Voiture Noire', ''),
(54, 'Juste la couleur noire dans l\'espace ', ''),
(55, 'Une planète du nom de la matière noire', ''),
(56, 'Quelque chose d\'encore inconnu qui occupe environ 1/4 de l\'univers', ''),
(57, '9', ''),
(58, '14', ''),
(59, '11', ''),
(60, '10', ''),
(61, 'Soloss ', ''),
(62, 'Phobos', ''),
(63, 'Déimos', ''),
(64, 'Talilos', ''),
(65, '2014', ''),
(66, '2017', ''),
(67, '2016', ''),
(68, '2012', ''),
(69, '350cv', ''),
(70, '420cv', ''),
(71, '480cv', ''),
(72, '500cv', ''),
(73, 'Fruit de l’âme', ''),
(74, 'Fruit du démon ', ''),
(75, 'Fruit du pouvoir', ''),
(76, '65 799$', ''),
(77, '86 999$', ''),
(78, '114 990$', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`idEtudiant`),
  ADD UNIQUE KEY `idEtudiant` (`idEtudiant`);

--
-- Index pour la table `qcmfait`
--
ALTER TABLE `qcmfait`
  ADD PRIMARY KEY (`idEtudiant`,`idQuestionnaire`),
  ADD KEY `idQuestionnaire` (`idQuestionnaire`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`idQuestion`);

--
-- Index pour la table `questionnaire`
--
ALTER TABLE `questionnaire`
  ADD PRIMARY KEY (`idQuestionnaire`);

--
-- Index pour la table `questionquestionnaire`
--
ALTER TABLE `questionquestionnaire`
  ADD PRIMARY KEY (`idQuestionnaire`,`idQuestion`),
  ADD KEY `idQuestion` (`idQuestion`);

--
-- Index pour la table `questionreponse`
--
ALTER TABLE `questionreponse`
  ADD PRIMARY KEY (`idQuestion`,`idReponse`),
  ADD KEY `idReponse` (`idReponse`);

--
-- Index pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD PRIMARY KEY (`idReponse`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `compte`
--
ALTER TABLE `compte`
  MODIFY `idEtudiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `idQuestion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `reponse`
--
ALTER TABLE `reponse`
  MODIFY `idReponse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `qcmfait`
--
ALTER TABLE `qcmfait`
  ADD CONSTRAINT `qcmfait_ibfk_1` FOREIGN KEY (`idQuestionnaire`) REFERENCES `questionnaire` (`idQuestionnaire`),
  ADD CONSTRAINT `qcmfait_ibfk_2` FOREIGN KEY (`idEtudiant`) REFERENCES `compte` (`idEtudiant`);

--
-- Contraintes pour la table `questionquestionnaire`
--
ALTER TABLE `questionquestionnaire`
  ADD CONSTRAINT `questionquestionnaire_ibfk_1` FOREIGN KEY (`idQuestionnaire`) REFERENCES `questionnaire` (`idQuestionnaire`),
  ADD CONSTRAINT `questionquestionnaire_ibfk_2` FOREIGN KEY (`idQuestion`) REFERENCES `question` (`idQuestion`);

--
-- Contraintes pour la table `questionreponse`
--
ALTER TABLE `questionreponse`
  ADD CONSTRAINT `questionreponse_ibfk_1` FOREIGN KEY (`idQuestion`) REFERENCES `question` (`idQuestion`),
  ADD CONSTRAINT `questionreponse_ibfk_2` FOREIGN KEY (`idReponse`) REFERENCES `reponse` (`idReponse`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
