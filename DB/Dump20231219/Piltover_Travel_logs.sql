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
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `AccountID` bigint DEFAULT NULL,
  `Login_time` datetime DEFAULT NULL,
  `Logout_time` datetime DEFAULT NULL,
  `Ip_address` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `AccountID` (`AccountID`),
  CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`AccountID`) REFERENCES `accounts` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,1234567890,'2023-12-17 23:27:37','2023-12-17 23:27:37','123'),(2,2345673452,'2023-12-17 23:27:37','2023-12-17 23:27:37','123'),(3,1234567890,'2023-12-18 00:00:00',NULL,'1.1.1.1'),(4,1234567890,NULL,'2023-12-18 00:00:00','1.1.1.1'),(5,1234567890,NULL,'2023-12-18 00:00:00','1.1.1.1'),(6,1234567890,NULL,'2023-12-18 00:00:00','0:0:0:0:0:0:0:1'),(7,1234567890,NULL,'2023-12-18 00:00:00','0:0:0:0:0:0:0:1'),(8,1234567890,NULL,'2023-12-18 00:00:00','0:0:0:0:0:0:0:1'),(9,1234567890,NULL,'2023-12-18 00:00:00','0:0:0:0:0:0:0:1'),(10,1234567890,NULL,'2023-12-18 00:00:00','0:0:0:0:0:0:0:1'),(11,1234567890,NULL,'2023-12-18 00:00:00','0:0:0:0:0:0:0:1'),(12,1234567890,NULL,'2023-12-18 00:00:00','0:0:0:0:0:0:0:1'),(13,1234567890,'2023-12-18 00:00:00',NULL,'1.1.1.1'),(14,1234567890,NULL,'2023-12-18 00:00:00','0:0:0:0:0:0:0:1'),(15,1234567890,'2023-12-18 00:00:00',NULL,'1.1.1.1'),(16,1234567890,NULL,'2023-12-18 00:00:00','0:0:0:0:0:0:0:1'),(17,1234567890,'2023-12-18 00:00:00',NULL,'1.1.1.1'),(18,1234567890,NULL,'2023-12-18 00:00:00','0:0:0:0:0:0:0:1'),(19,1234567890,NULL,'2023-12-18 00:00:00','0:0:0:0:0:0:0:1'),(20,1234567890,'2023-12-18 00:00:00',NULL,NULL),(21,1234567890,'2023-12-18 00:00:00',NULL,NULL),(22,1234567890,'2023-12-18 00:00:00',NULL,NULL),(23,1234567890,NULL,'2023-12-18 00:00:00','0:0:0:0:0:0:0:1'),(24,1234567890,'2023-12-18 00:00:00',NULL,NULL),(25,1234567890,'2023-12-18 00:00:00',NULL,NULL),(26,1234567890,'2023-12-18 00:00:00',NULL,NULL),(27,1234567890,NULL,'2023-12-18 00:00:00','127.0.0.1'),(28,9884715110,'2023-12-18 00:00:00',NULL,NULL),(29,9884715110,NULL,'2023-12-18 00:00:00','127.0.0.1'),(30,1234567890,'2023-12-18 00:00:00',NULL,NULL),(31,1234567890,NULL,'2023-12-18 00:00:00','127.0.0.1'),(32,1234567890,'2023-12-18 00:00:00',NULL,NULL),(33,1234567890,'2023-12-18 00:00:00',NULL,NULL),(34,4807867129,'2023-12-18 00:00:00',NULL,NULL),(35,9884715110,'2023-12-18 00:00:00',NULL,NULL),(36,9884715110,'2023-12-18 00:00:00',NULL,NULL),(37,1234567890,'2023-12-18 00:00:00',NULL,NULL),(38,1234567890,NULL,'2023-12-18 00:00:00','0:0:0:0:0:0:0:1'),(39,9884715110,'2023-12-18 00:00:00',NULL,NULL),(40,1234567890,'2023-12-18 00:00:00',NULL,NULL),(41,1234567890,'2023-12-18 00:00:00',NULL,NULL),(42,9884715110,NULL,'2023-12-18 00:00:00','127.0.0.1'),(43,1234567890,NULL,'2023-12-18 00:00:00','127.0.0.1'),(44,5198092250,'2023-12-18 00:00:00',NULL,NULL),(45,1234567890,'2023-12-18 00:00:00',NULL,NULL),(46,5198092250,NULL,'2023-12-18 00:00:00','127.0.0.1'),(47,5198092250,'2023-12-18 00:00:00',NULL,NULL),(48,5198092250,NULL,'2023-12-18 00:00:00','127.0.0.1'),(49,1234567890,NULL,'2023-12-18 00:00:00','127.0.0.1'),(50,8314586180,'2023-12-18 00:00:00',NULL,NULL),(51,8314586180,NULL,'2023-12-18 00:00:00','127.0.0.1'),(52,1234567890,'2023-12-18 00:00:00',NULL,NULL);
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
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

-- Dump completed on 2023-12-19  0:35:30
