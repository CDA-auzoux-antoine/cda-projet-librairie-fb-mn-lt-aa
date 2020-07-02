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
  `id_adresse_adresse` int(10) NOT NULL AUTO_INCREMENT,
  `numeroDeRue_adresse` int(5) NOT NULL,
  `rue_adresse` varchar(50) NOT NULL,
  `cp_adresse` int(5) NOT NULL,
  `ville_adresse` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_adresse_adresse`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresse`
--

LOCK TABLES `adresse` WRITE;
/*!40000 ALTER TABLE `adresse` DISABLE KEYS */;
INSERT INTO `adresse` VALUES (1,78552,'7th',89401,'Dhi as Sufal'),(2,9,'Union',52543,'Zuyevka'),(3,2792,'Mifflin',79079,'Korem'),(4,742,'Troy',48533,'Vejprnice'),(5,5248,'Milwaukee',18256,'Sloboda'),(6,26216,'Barnett',84594,'Qal‘at al Andalus'),(7,10,'Texas',84826,'Palanit'),(8,86072,'Huxley',40668,'Guiniculalay'),(9,80975,'Pawling',94184,'Bergem'),(10,11477,'Killdeer',12543,'Jiji'),(11,85,'Lakeland',18100,'Bluefields'),(12,4,'Columbus',16144,'Caldono'),(13,80,'Vidon',92188,'Burmakino'),(14,4,'Hallows',31309,'Mishixiang'),(15,7,'Debra',68897,'Xuebu'),(16,7603,'Nelson',37423,'Nancun'),(17,31,'Shopko',98431,'Stodolishche'),(18,1,'Declaration',26962,'Mufulira'),(19,3,'Coleman',60472,'Ramos West'),(20,3,'Oak Valley',67757,'Cikarang'),(21,3,'Sunnyside',42257,'Bremen'),(22,25644,'Crowley',57667,'Bandeirantes'),(23,4737,'Dunning',12953,'Río Segundo'),(24,14,'Helena',35346,'Nachalovo'),(25,974,'School',20872,'Bystrytsya'),(26,98,'Blackbird',50527,'Pawa'),(27,7115,'Corry',46389,'Gangjia'),(28,4,'Ilene',45546,'Gomel'),(29,1,'Corry',42199,'San Jose'),(30,1,'Aberg',36718,'Ochër'),(31,6,'Canary',95097,'Huangxikou'),(32,55263,'Maple',44299,'Boavista'),(33,0,'Hoard',97301,'Charagua'),(34,6355,'Clarendon',40039,'Gornyye Klyuchi'),(35,9,'Mandrake',24032,'Shangdu'),(36,20,'Starling',25193,'Jomboy'),(37,6726,'Farwell',81677,'München'),(38,94,'Shopko',69796,'Yulin'),(39,7610,'Fallview',58760,'Jingdang'),(40,679,'Superior',97067,'Nanjie'),(41,8,'Onsgard',91247,'Apeldoorn'),(42,8099,'Welch',49083,'Fujieda'),(43,57199,'North',57304,'Daciyao'),(44,65,'Manley',15368,'San Nicolás de los Arroyos'),(45,3,'Derek',60282,'Rongkou'),(46,744,'5th',79523,' Na Hang'),(47,4,'Killdeer',90545,'Shiziling'),(48,408,'5th',67346,'Kafr az Zayyat'),(49,23,'Northfield',18649,'Haikou'),(50,6683,'Shopko',10437,'Estreito Câmara de Lobos');
/*!40000 ALTER TABLE `adresse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id_client` int(6) NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(50) NOT NULL,
  `prenom_client` varchar(50) NOT NULL,
  `id_adresse_adresse` int(6) NOT NULL,
  `compte_login_compte` varchar(100) NOT NULL,
  `isActive` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id_client`),
  KEY `FK_client_id_adresse_adresse` (`id_adresse_adresse`),
  KEY `FK_client_compte_login_compte` (`compte_login_compte`),
  CONSTRAINT `FK_client_compte_login_compte` FOREIGN KEY (`compte_login_compte`) REFERENCES `compte` (`login_Compte`),
  CONSTRAINT `FK_client_id_adresse_adresse` FOREIGN KEY (`id_adresse_adresse`) REFERENCES `adresse` (`id_adresse_adresse`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'nomClientDansLAdb','prenomClientDansLAdb',1,'client',0),(2,'Kingsly','Montel',2,'Antonia',0),(3,'Cleopatra','Arnison',3,'Ian',0),(4,'Percival','Frodsham',4,'Francesco',0),(5,'Twila','Thornbarrow',5,'Ava',0),(6,'Randy','Commander',6,'Annabell',0),(7,'Nichole','Svanetti',7,'Syd',0),(8,'Cassandre','Burgen',8,'Ursala',0),(9,'Troy','Shoebrook',9,'Talia',0),(10,'Dina','Mangenet',10,'Goddard',0),(11,'Bearnard','Normanvell',11,'Gale',0),(12,'Jules','Tytherton',12,'Lefty',0),(13,'Gussi','Hultberg',13,'Elane',0),(14,'Retha','Rawlison',14,'Georgianna',0),(15,'Nikola','Quinsee',15,'Doria',0),(16,'Marietta','Schriren',16,'Gaile',0),(17,'Lou','Hymas',17,'Terencio',0),(18,'Myca','Menco',18,'Corbett',0),(19,'Hamlin','Vondracek',19,'Maximilian',0),(20,'Charla','Crome',20,'Alfy',0),(21,'Sibella','Blyde',21,'Audra',0),(22,'Marris','Duiged',22,'Neron',0),(23,'Elvin','Colclough',23,'Aymer',0),(24,'Nobie','Hariot',24,'Sheri',0),(25,'Jermain','Yushkov',25,'Arabelle',0),(26,'Allyson','Rule',26,'Christel',0),(27,'Evania','Hayle',27,'Christine',0),(28,'Meaghan','Imos',28,'Mack',0),(29,'Boone','Lound',29,'Annnora',0),(30,'Savina','MacAnelley',30,'Katine',0),(31,'Ronica','Lockyear',31,'Brita',0),(32,'Jo-anne','Rosle',32,'Jessey',0),(33,'Heddi','Graddon',33,'Kimberley',0),(34,'Milena','Landeg',34,'Verile',0),(35,'Amalie','Sustin',35,'Elayne',0),(36,'Barby','Tring',36,'Shari',0),(37,'Lorna','Creighton',37,'Julieta',0),(38,'Yancy','Josse',38,'Rod',0),(39,'Elbert','Dimblebee',39,'Man',0),(40,'Jarrod','Oen',40,'Prentiss',0),(41,'Tatiana','Risely',41,'Belle',0),(42,'Cherlyn','Offell',42,'Diann',0),(43,'Korie','Elnough',43,'Agata',0),(44,'Tiffani','Petracchi',44,'Clarey',0),(45,'Bert','Dewett',45,'Baron',0),(46,'Eugenio','Dudson',46,'Elonore',0),(47,'Mic','Backshaw',47,'Rogerio',0),(48,'Marilee','Pilley',48,'Essa',0),(49,'Reid','Snewin',49,'Tressa',0),(50,'Ardath','Lillee',50,'Morlee',0);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commande` (
  `id_commande_Commande` int(10) NOT NULL AUTO_INCREMENT,
  `id_client` int(6) NOT NULL,
  `date_Commande` date DEFAULT NULL,
  PRIMARY KEY (`id_commande_Commande`,`id_client`),
  KEY `FK_Commande_id_client` (`id_client`),
  CONSTRAINT `FK_Commande_id_client` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`)
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
  `login_Compte` varchar(100) NOT NULL,
  `password_Compte` varchar(200) NOT NULL,
  PRIMARY KEY (`login_Compte`),
  UNIQUE KEY `login_Compte` (`login_Compte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compte`
--

LOCK TABLES `compte` WRITE;
/*!40000 ALTER TABLE `compte` DISABLE KEYS */;
INSERT INTO `compte` VALUES ('Agata','a3c76b514b5597f2b8360a48d9eec5ae'),('Alfy','5dbb6d9aaa84892d7d0c10d314d12d39'),('Annabell','0e566e7d403c1f5a2057c04bc2f3acff'),('Annnora','6fad932085f7490b628b760e189317a5'),('antoine','0e5091a25295e44fea9957638527301f'),('Antonia','84198b8a17ab6f361639a3adb1cc88b2'),('Arabelle','a5a743964ae7ee4b907b4f95d38ef8ea'),('Audra','46f63be17853f1e6e6ca4a06ceb5601a'),('Ava','4985671f0cd0929bc6ab3c5d4d4dab4d'),('Aymer','9ad112ad10d3b47283de6da2d98cc98c'),('Baron','645df83bf1b728a38c53a69178acebf6'),('Belle','f001fa191cf90ab1d1336628b6c46101'),('Brita','a719b56e16e2f2deac769c780217c9a4'),('Christel','9c607315b22f1ce38e87558f7c5897ba'),('Christine','c317e24671d726f44a536689a0d44104'),('Clarey','61189ab7f3787739a9de15e8231f2973'),('client','62608e08adc29a8d6dbc9754e659f125'),('Corbett','d12d66832c79f7341dcd6435673853ad'),('Diann','720c78bbaf761dbc3caa8c03fe907266'),('Doria','9396d8764a94054c678dd37734781f34'),('Elane','ea81bb0019e01dad4f04418aea9768b0'),('Elayne','1c9f5d3f06274dfb437f94f27e963934'),('Elonore','ba43c2083f146d693aa732f5e44840ac'),('Essa','789e16e1c441b0dc9c6bf45d2c41dc01'),('fethi','c7a75ed80463fa35c64e78dcf28312f0'),('Francesco','67fb0692f6f7aa3c04968c0c1e4dbcb4'),('Gaile','489cccd63b2c0b0f95cd9633a5345937'),('Gale','295af79b7b2deab9298ea80dba4fcf80'),('Georgianna','4649b729c77b0b7b86683245af803aa7'),('Goddard','2a6ae60c695d3fd44ea0cb5c5ccfe1cb'),('Ian','3e1e81d56500057817ea2acce79a6664'),('Jessey','ee4880d4a384acb0c9ab217efcd86b23'),('Julieta','ab1459c7e61b4b10e29e72ae1aa0a4e1'),('Katine','e87c402ad2e2db6795f51223dbdd3e23'),('Kimberley','70cb66fc48f15c95343bd7f5cf32a9a4'),('Lefty','6b2b61f197441ea9a7a415a2898c5c4d'),('loreen','1483efba881726cfa09f1451f4dbbbb5'),('Mack','10b0e6445ad46e7121a2dc109f0d40fc'),('Man','08e4915ae54137052ac6a23c7fdd183f'),('Maximilian','1df2f6639f8bea13a4e65c230c4fa000'),('mohamed','309cd3800aacbd003ac36199fa537295'),('Morlee','779989a90de7fd7db76eaf6212f0ffe0'),('Neron','2ae1ab4433d6ef2eb26cedf9d1699a19'),('Prentiss','8174ca01b2c545bf132f6cce6bb38f8d'),('Rod','abcc3ee69fd00960af12fec0489f3043'),('Rogerio','fbc0d1e74574284a7b01481833c8545b'),('Shari','96c8933201ab059c46f04366b1889821'),('Sheri','260bf9f903e5c4196947a319461760e2'),('Syd','b1dbc28b915523e608342f93850399c8'),('Talia','2712dc6dca41c044f184543ca522561e'),('Terencio','1f9aac44552f8a6136977491ac0950a9'),('Tressa','7edd93021be4d5560d060689d5b8a515'),('Ursala','7bf594e2b6be4f2cddf030529f1d13f1'),('Verile','f79127d2e90d88ca85de3311f1bb2262');
/*!40000 ALTER TABLE `compte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detailscommande`
--

DROP TABLE IF EXISTS `detailscommande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detailscommande` (
  `id_commande_Commande` int(10) NOT NULL,
  `id_livre` int(6) NOT NULL,
  `quantite` int(3) NOT NULL,
  `prixUnitaire` decimal(5,2) DEFAULT NULL,
  KEY `FK_detailsCommande_id_commande_Commande` (`id_commande_Commande`),
  CONSTRAINT `FK_detailsCommande_id_commande_Commande` FOREIGN KEY (`id_commande_Commande`) REFERENCES `commande` (`id_commande_Commande`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detailscommande`
--

LOCK TABLES `detailscommande` WRITE;
/*!40000 ALTER TABLE `detailscommande` DISABLE KEYS */;
/*!40000 ALTER TABLE `detailscommande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libraire`
--

DROP TABLE IF EXISTS `libraire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libraire` (
  `id_libraire` int(6) NOT NULL AUTO_INCREMENT,
  `prenom_Libraire` varchar(50) NOT NULL,
  `nom_Libraire` varchar(50) NOT NULL,
  `compte_login_compte` varchar(100) NOT NULL,
  PRIMARY KEY (`id_libraire`),
  KEY `FK_Libraire_compte_login_compte` (`compte_login_compte`),
  CONSTRAINT `FK_Libraire_compte_login_compte` FOREIGN KEY (`compte_login_compte`) REFERENCES `compte` (`login_Compte`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libraire`
--

LOCK TABLES `libraire` WRITE;
/*!40000 ALTER TABLE `libraire` DISABLE KEYS */;
INSERT INTO `libraire` VALUES (1,'nechab','mohammed','mohamed'),(2,'touron','loreen','loreen'),(3,'auzoux','antoine','antoine'),(4,'benseddik','fethi','fethi');
/*!40000 ALTER TABLE `libraire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livre`
--

DROP TABLE IF EXISTS `livre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `livre` (
  `id_livre` int(6) NOT NULL AUTO_INCREMENT,
  `titre_livre` varchar(50) NOT NULL,
  `auteur_livre` varchar(50) DEFAULT NULL,
  `nombreDePages_livre` int(4) DEFAULT NULL,
  `Genre_livre` varchar(50) DEFAULT NULL,
  `prix_livre` decimal(5,2) NOT NULL,
  `quantite` int(3) DEFAULT NULL,
  PRIMARY KEY (`id_livre`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livre`
--

LOCK TABLES `livre` WRITE;
/*!40000 ALTER TABLE `livre` DISABLE KEYS */;
INSERT INTO `livre` VALUES (1,'Dennis the Menace Christmas A','Mougenel',265,'Comedy',8.39,30),(2,'King of Germany','Fahrenbach',278,'Comedy',1.17,860),(3,'Philadelphia Experiment II','Longbone',276,'Action|Adventure|Sci-Fi',7.86,840),(4,'Curse of the Golden Flower Man cheng ','Causon',200,'Action|Drama',10.29,430),(5,'Skin Game','Remer',227,'Comedy|Romance|Western',6.64,590),(6,'Absolon','Norgate',253,'Action|Sci-Fi|Thriller',5.60,720),(7,'10 Items or Less','Lamblin',250,'Comedy|Drama|Romance',7.36,90),(8,'Satan Bug ','Priestley',222,'Sci-Fi|Thriller',8.60,950),(9,'Legend of the Village Warriors Bangrajan','Caseri',256,'Action|Drama|War',1.53,220),(10,'M','Blagburn',252,'Crime|Drama|Film-Noir|Thriller',1.10,870),(11,'Hamlet,Prince of Denmark','Chaffe',280,'Drama',3.69,910),(12,'Big Stan','MacDermott',203,'Comedy',7.78,870),(13,'Hotel Pacific Zaklete rewiry','Bernhard',257,'Drama',4.19,970),(14,'West of Memphis','Gors',267,'Documentary',9.58,390),(15,'Righteous Kill','Kingman',299,'Crime|Mystery|Thriller',7.24,300),(16,'Celestial Wives of the Meadow Mari ','Huyton',218,'Drama',1.58,570),(17,'Benny\'s Video','MacCague',279,'Drama|Horror',8.96,490),(18,'Rosetta','Larderot',265,'Drama',5.93,290),(19,'Uncommon Valor','Hamly',260,'Action|War',4.39,640),(20,'Stealth','Kildea',242,'Action|Adventure|Sci-Fi|Thriller',6.95,670),(21,'Boom!','Lumm',292,'Drama',8.40,310),(22,'Equinox','Beades',257,'Drama|Mystery|Thriller',7.95,210),(23,'Come Blow Your Horn','Witherup',278,'Comedy',4.43,740),(24,'Demon Lover Diary','McCaghan',274,'Documentary',10.52,20),(25,'Heart of America','Dodshon',297,'Drama',9.24,780),(26,'Bullfighter and the Lady','Middiff',217,'Action|Drama|Romance',8.38,590),(27,'Affair of Love,An Liaison pornographique,Une','Stoggell',221,'Drama|Romance',5.55,0),(28,'Hairdresser\'s Husband,The Le mari de la coiffeuse','Amorine',234,'Comedy|Drama|Romance',1.94,690),(29,'Running Free','Valenta',249,'Adventure|Children|Drama',5.86,760),(30,'Quick Change','Richardes',293,'Comedy|Crime',9.10,860),(31,'Frontier of the Dawn La frontière de l\'aube','Ambrosoli',204,'Drama',1.36,970),(32,'Man with One Red Shoe ','Levicount',249,'Comedy|Thriller',2.42,870),(33,'Sweeney Todd: The Demon Barber of Fleet Street','Rozec',289,'Crime|Horror',7.83,650),(34,'Most Dangerous Game ','Vasilmanov',288,'Adventure|Mystery|Thriller',4.16,910),(35,'Repossessed','MacKniely',262,'Comedy',4.12,680),(36,'Baby Mama','Stidever',202,'Comedy',3.31,790),(37,'See the Sea','Hurrell',201,'Thriller',9.19,910),(38,'Changing Habits','Shelly',256,'Comedy|Drama',6.02,740);
/*!40000 ALTER TABLE `livre` ENABLE KEYS */;
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

-- Dump completed on 2020-07-02 18:14:30
