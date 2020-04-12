-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: database-1.cqdedei6udfi.us-east-1.rds.amazonaws.com    Database: localhost
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `Instructor`
--

DROP TABLE IF EXISTS `Instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Instructor` (
  `Instructor ID` int(11) NOT NULL,
  `First Name` varchar(120) NOT NULL,
  `Last Name` varchar(45) NOT NULL,
  `Office Building` varchar(45) DEFAULT NULL,
  `Office Number` varchar(45) DEFAULT NULL,
  `Email` varchar(45) NOT NULL,
  `Phone Number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Instructor ID`),
  UNIQUE KEY `Instructor ID_UNIQUE` (`Instructor ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Instructor`
--

LOCK TABLES `Instructor` WRITE;
/*!40000 ALTER TABLE `Instructor` DISABLE KEYS */;
INSERT INTO `Instructor` VALUES (1,'','Lu',NULL,'269','tommy.lu@dtcc.edu','3025735475'),(2,'','Sciallo',NULL,'268','frank.sciallo@dtcc.edu','3024345564'),(3,'','An',NULL,'263','jin.an@dtcc.edu','3025735453'),(4,'','Ding',NULL,'255','tding@dtcc.edu','3025735455'),(5,'','Schaller',NULL,NULL,'justin.schaller@dtcc.edu	','3025715300'),(6,'','Monsen',NULL,NULL,'vincent.monsen@dtcc.edu	',NULL),(7,'','Machahge',NULL,'250','billy.machage@dtcc.edu','3026575162'),(8,'','Rice',NULL,NULL,'mrice13@dtcc.edu',NULL),(9,'','Smith',NULL,'210F','msmit164@dtcc.edu','3026575193'),(10,'','Wierzbicki',NULL,NULL,'rwierzbi@dtcc.edu','3025715300'),(11,'','Mcbride',NULL,NULL,'cmcbrid3@dtcc.edu	',NULL),(12,'','Colon',NULL,NULL,'ncolon4@dtcc.edu	','3024345547'),(13,'','Hutt',NULL,'210H','jennifer.hutt@dtcc.edu','3025715324'),(14,'','Baker',NULL,'B132','Jennifer.Baker@dtcc.edu','3024543909'),(15,'','McGonegal',NULL,'B134','kmcgoneg@dtcc.edu','3024533773'),(16,'','Paola',NULL,'B133','jpaola@dtcc.edu','3024533765'),(17,'','Manrakhan',NULL,'B134','wmanrakh@dtcc.edu','3022923821'),(18,'','Bhat',NULL,NULL,'abhat@dtcc.edu',NULL),(19,'','Gusakov',NULL,NULL,'dgusakov@dtcc.edu	',NULL),(20,'','Bertelsen',NULL,NULL,'jbertels@dtcc.edu','3025715300');
/*!40000 ALTER TABLE `Instructor` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-10 21:04:07
