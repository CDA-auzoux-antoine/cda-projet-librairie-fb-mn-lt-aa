-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: cda_librairie
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adresse` (
  `IdAdresse` int(11) NOT NULL AUTO_INCREMENT,
  `NumeroRue` int(11) NOT NULL,
  `NomRue` varchar(100) NOT NULL,
  `CodePostal` int(11) NOT NULL,
  `Ville` varchar(50) NOT NULL,
  PRIMARY KEY (`IdAdresse`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresse`
--

LOCK TABLES `adresse` WRITE;
/*!40000 ALTER TABLE `adresse` DISABLE KEYS */;
/*!40000 ALTER TABLE `adresse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `IdClient` int(11) NOT NULL AUTO_INCREMENT,
  `CompteValide` tinyint(1) NOT NULL,
  `IdAdresse` int(11) NOT NULL,
  `IdCompte` int(11) NOT NULL,
  PRIMARY KEY (`IdClient`),
  UNIQUE KEY `Client_Compte_AK` (`IdCompte`),
  KEY `Client_Adresse_FK` (`IdAdresse`),
  CONSTRAINT `Client_Adresse_FK` FOREIGN KEY (`IdAdresse`) REFERENCES `adresse` (`IdAdresse`),
  CONSTRAINT `Client_Compte0_FK` FOREIGN KEY (`IdCompte`) REFERENCES `compte` (`IdCompte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commande` (
  `IdCommande` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `IdClient` int(11) NOT NULL,
  PRIMARY KEY (`IdCommande`),
  KEY `Commande_Client_FK` (`IdClient`),
  CONSTRAINT `Commande_Client_FK` FOREIGN KEY (`IdClient`) REFERENCES `client` (`IdClient`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commande`
--

LOCK TABLES `commande` WRITE;
/*!40000 ALTER TABLE `commande` DISABLE KEYS */;
/*!40000 ALTER TABLE `commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compte`
--

DROP TABLE IF EXISTS `compte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compte` (
  `IdCompte` int(11) NOT NULL AUTO_INCREMENT,
  `Login` varchar(15) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `IdTypeCompte` int(11) NOT NULL,
  PRIMARY KEY (`IdCompte`),
  KEY `Compte_TypeCompte_FK` (`IdTypeCompte`),
  CONSTRAINT `Compte_TypeCompte_FK` FOREIGN KEY (`IdTypeCompte`) REFERENCES `typecompte` (`IdTypeCompte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compte`
--

LOCK TABLES `compte` WRITE;
/*!40000 ALTER TABLE `compte` DISABLE KEYS */;
/*!40000 ALTER TABLE `compte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detailcommande`
--

DROP TABLE IF EXISTS `detailcommande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detailcommande` (
  `IdLivre` int(11) NOT NULL,
  `IdCommande` int(11) NOT NULL,
  `Quantite` int(11) NOT NULL,
  PRIMARY KEY (`IdLivre`,`IdCommande`),
  KEY `detailCommande_Commande0_FK` (`IdCommande`),
  CONSTRAINT `detailCommande_Commande0_FK` FOREIGN KEY (`IdCommande`) REFERENCES `commande` (`IdCommande`),
  CONSTRAINT `detailCommande_Livre_FK` FOREIGN KEY (`IdLivre`) REFERENCES `livre` (`IdLivre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detailcommande`
--

LOCK TABLES `detailcommande` WRITE;
/*!40000 ALTER TABLE `detailcommande` DISABLE KEYS */;
/*!40000 ALTER TABLE `detailcommande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libraire`
--

DROP TABLE IF EXISTS `libraire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libraire` (
  `IdLibraire` int(11) NOT NULL AUTO_INCREMENT,
  `IdCompte` int(11) NOT NULL,
  PRIMARY KEY (`IdLibraire`),
  UNIQUE KEY `Libraire_Compte_AK` (`IdCompte`),
  CONSTRAINT `Libraire_Compte_FK` FOREIGN KEY (`IdCompte`) REFERENCES `compte` (`IdCompte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libraire`
--

LOCK TABLES `libraire` WRITE;
/*!40000 ALTER TABLE `libraire` DISABLE KEYS */;
/*!40000 ALTER TABLE `libraire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livre`
--

DROP TABLE IF EXISTS `livre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `livre` (
  `IdLivre` int(11) NOT NULL AUTO_INCREMENT,
  `Titre` varchar(50) NOT NULL,
  `Auteur` varchar(50) NOT NULL,
  `NombrePages` int(11) NOT NULL,
  `Genre` varchar(30) NOT NULL,
  `Prix` int(11) NOT NULL,
  PRIMARY KEY (`IdLivre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livre`
--

LOCK TABLES `livre` WRITE;
/*!40000 ALTER TABLE `livre` DISABLE KEYS */;
/*!40000 ALTER TABLE `livre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typecompte`
--

DROP TABLE IF EXISTS `typecompte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typecompte` (
  `IdTypeCompte` int(11) NOT NULL,
  `Type` varchar(20) NOT NULL,
  PRIMARY KEY (`IdTypeCompte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typecompte`
--

LOCK TABLES `typecompte` WRITE;
/*!40000 ALTER TABLE `typecompte` DISABLE KEYS */;
/*!40000 ALTER TABLE `typecompte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'cda_librairie'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-01 11:22:17
