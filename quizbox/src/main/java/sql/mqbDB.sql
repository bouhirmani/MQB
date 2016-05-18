SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `mqb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mqb`;

-- --------------------------------------------------------
--
-- Structure de la table `quiz`
--

CREATE TABLE IF NOT EXISTS `quiz` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Background_Color` varchar(10) NOT NULL,
  `Button_Color` varchar(10) NOT NULL,
  `Button_Text` varchar(50) NOT NULL,
  `Cover_Photo` byte NOT NULL, 
  `Font_Color` varchar(10) NOT NULL,
  `Font_Type` varchar(50) NOT NULL,
  `Text_Color` varchar(10) NOT NULL,
  `Logo` byte NOT NULL, 
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


-- --------------------------------------------------------
--
-- Structure de la table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Text` varchar(50) NOT NULL,
  `Photo` byte NOT NULL, 
  `Coefficient` int NOT NULL,
  `Id_Quiz` int NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------
--
-- Structure de la table `choice`
--

CREATE TABLE IF NOT EXISTS `choice` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Text` varchar(50) NOT NULL,
  `Photo` byte NOT NULL, 
  `Nb_Point` int NOT NULL,
  `Id_Question` int NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------
--
-- Structure de la table `user_response`
--

CREATE TABLE IF NOT EXISTS `user_response` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Question` int NOT NULL,
  `Id_Choice` int NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


