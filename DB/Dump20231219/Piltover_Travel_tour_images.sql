-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: database-piltover.cdqh2olum68q.us-east-1.rds.amazonaws.com    Database: Piltover_Travel
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `tour_images`
--

DROP TABLE IF EXISTS `tour_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_images` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `TourID` bigint DEFAULT NULL,
  `Path` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `TourID` (`TourID`),
  CONSTRAINT `tour_images_ibfk_1` FOREIGN KEY (`TourID`) REFERENCES `tours` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_images`
--

LOCK TABLES `tour_images` WRITE;
/*!40000 ALTER TABLE `tour_images` DISABLE KEYS */;
INSERT INTO `tour_images` VALUES (12,2,'https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F661386240931109?alt=media&token=a847ee16-9fa9-4130-a3a2-cd266c78f111'),(13,18,'https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F581635959326932?alt=media&token=f94bd57f-2dde-43f9-a1b6-801d6809bd53'),(14,18,'https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F920909106453739?alt=media&token=8339df70-a456-4ee9-b080-0a364fe09182'),(16,26,'https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F680860214654729?alt=media&token=2d516146-cd2d-4fc4-965f-786607d0818d'),(17,26,'https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F584335458692249?alt=media&token=4e21d1d7-07e2-4a4e-9d81-cda3a9cb3fc6'),(18,26,'https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F062869755835052?alt=media&token=27025894-0acb-40f3-adc8-571ab076b4ec');
/*!40000 ALTER TABLE `tour_images` ENABLE KEYS */;
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

-- Dump completed on 2023-12-19  0:37:03
