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
  `Description` varchar(256),
  `Title` varchar(256),
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
-- Structure de la table `result`
--

CREATE TABLE IF NOT EXISTS `result` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Text` varchar(50) NOT NULL,
  `Photo` byte NOT NULL, 
  `Id_Quiz` int NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------
--
-- Structure de la table `output`
--

CREATE TABLE IF NOT EXISTS `output` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Score` int NOT NULL,
  `Id_Result` int NOT NULL, 
  `Id_Quiz` int NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------
--
-- Structure de la table `result_correlation`
--

CREATE TABLE IF NOT EXISTS `result_correlation` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Choice` int NOT NULL,
  `Id_Result` int NOT NULL,
  `Nb_Point` int NOT NULL,  
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

-- --------------------------------------------------------
--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Login` varchar(10) NOT NULL, 
  `Password` varchar(20) NOT NULL,
  `Id_Profile` int NOT NULL,
  `Id_Quiz` int,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------
--
-- Structure de la table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;



