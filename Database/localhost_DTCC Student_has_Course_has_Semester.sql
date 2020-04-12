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
-- Table structure for table `DTCC Student_has_Course_has_Semester`
--

DROP TABLE IF EXISTS `DTCC Student_has_Course_has_Semester`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DTCC Student_has_Course_has_Semester` (
  `DTCC Student_id` int(11) NOT NULL,
  `Course_has_Semester_Course_Course ID` int(11) NOT NULL,
  `Course_has_Semester_Semester_id` int(11) NOT NULL,
  PRIMARY KEY (`DTCC Student_id`,`Course_has_Semester_Course_Course ID`,`Course_has_Semester_Semester_id`),
  KEY `fk_DTCC Student_has_Course_has_Semester_Course_has_Semester_idx` (`Course_has_Semester_Course_Course ID`,`Course_has_Semester_Semester_id`),
  KEY `fk_DTCC Student_has_Course_has_Semester_DTCC Student1_idx` (`DTCC Student_id`),
  CONSTRAINT `fk_DTCC Student_has_Course_has_Semester_Course_has_Semester1` FOREIGN KEY (`Course_has_Semester_Course_Course ID`, `Course_has_Semester_Semester_id`) REFERENCES `Course_has_Semester` (`Course_Course ID`, `Semester_id`),
  CONSTRAINT `fk_DTCC Student_has_Course_has_Semester_DTCC Student1` FOREIGN KEY (`DTCC Student_id`) REFERENCES `DTCC Student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DTCC Student_has_Course_has_Semester`
--

LOCK TABLES `DTCC Student_has_Course_has_Semester` WRITE;
/*!40000 ALTER TABLE `DTCC Student_has_Course_has_Semester` DISABLE KEYS */;
/*!40000 ALTER TABLE `DTCC Student_has_Course_has_Semester` ENABLE KEYS */;
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

-- Dump completed on 2020-04-10 21:04:08
