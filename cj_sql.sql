-- MySQL dump 10.13  Distrib 5.6.35, for osx10.9 (x86_64)
--
-- Host: localhost    Database: cj_sql
-- ------------------------------------------------------
-- Server version	5.6.35

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
-- Current Database: `cj_sql`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cj_sql` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cj_sql`;

--
-- Table structure for table `eleve`
--

DROP TABLE IF EXISTS `eleve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eleve` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `age` varchar(3) DEFAULT NULL,
  `lieu` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eleve`
--

LOCK TABLES `eleve` WRITE;
/*!40000 ALTER TABLE `eleve` DISABLE KEYS */;
INSERT INTO `eleve` VALUES (1,'SPARROW','Jack Edward','30','Totuga'),(2,'GOO','gle','20','Silicon valley'),(3,'COPINE','Laurie','33','Bordeaux'),(4,'JOURDAN','Clément','36','Bordeaux'),(5,'DUPONT','Pierre','40','Paris'),(6,'DURAND','Michel','30','Bordeaux'),(7,'MARTIN','Jean','40','Bordeaux'),(8,'DUPUIS','Marie','36','Bordeaux'),(9,'DUMONT','Elise','25','Bordeaux'),(10,'LENOM','Paul','30','Bordeaux');
/*!40000 ALTER TABLE `eleve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resa`
--

DROP TABLE IF EXISTS `resa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resa` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `duree` time NOT NULL,
  `eleve_id` int(11) NOT NULL,
  `salles_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resa`
--

LOCK TABLES `resa` WRITE;
/*!40000 ALTER TABLE `resa` DISABLE KEYS */;
INSERT INTO `resa` VALUES (1,'2017-09-25 09:00:00','01:00:00',1,1),(2,'2017-09-25 10:15:00','00:45:00',2,1),(3,'2017-09-26 10:00:00','02:00:00',7,1),(4,'2017-09-25 00:00:00','10:30:00',3,5),(5,'2017-09-25 14:00:00','02:00:00',8,5),(6,'2017-09-25 12:30:00','01:00:00',4,3),(7,'2017-09-25 14:00:00','03:00:00',5,6),(8,'2017-09-25 14:00:00','01:00:00',6,6),(9,'2017-09-26 10:00:00','02:00:00',9,6),(10,'2017-09-26 14:00:00','03:45:00',10,6);
/*!40000 ALTER TABLE `resa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salles`
--

DROP TABLE IF EXISTS `salles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salles`
--

LOCK TABLES `salles` WRITE;
/*!40000 ALTER TABLE `salles` DISABLE KEYS */;
INSERT INTO `salles` VALUES (1,'Salle de dojo'),(2,'Salle de réunion'),(3,'Salle de repos'),(4,'Cuisine'),(5,'Bureau'),(6,'OpenSpace');
/*!40000 ALTER TABLE `salles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-25 14:34:15
