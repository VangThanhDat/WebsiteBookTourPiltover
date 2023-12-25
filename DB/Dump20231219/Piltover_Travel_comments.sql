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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `Comment_User` bigint DEFAULT NULL,
  `PostID` bigint DEFAULT NULL,
  `Comment_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `Update_at` datetime DEFAULT NULL,
  `Content` varchar(100) DEFAULT NULL,
  `is_Delete` bit(1) DEFAULT b'0',
  PRIMARY KEY (`Id`),
  KEY `Comment_User` (`Comment_User`),
  KEY `PostID` (`PostID`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`Comment_User`) REFERENCES `accounts` (`ID`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`PostID`) REFERENCES `posts` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,1234567890,1,'2023-11-29 10:31:00','2023-11-29 10:31:00','Cảnh đẹp',_binary '\0'),(2,1234567890,2,'2023-11-29 10:31:00','2023-11-29 10:31:00','Tôi muôn book tour này',_binary '\0'),(3,1234567890,2,'2023-11-29 10:31:01','2023-11-29 10:31:01','Dịch vụ rất tốt',_binary '\0'),(4,1234567890,2,'2023-11-29 10:31:02','2023-11-29 10:31:02','Tôi rất hài lòng',_binary '\0'),(5,1234567890,2,'2023-11-29 10:46:13','2023-11-29 10:46:36','Người buồn, cảnh có vui đâu bao giờ',_binary '\0'),(6,1234567890,2,'2023-11-30 09:45:40',NULL,'Đừng đổ lỗi cho cơn mưa',_binary '\0'),(7,1234567890,2,'2023-11-30 09:45:41',NULL,'Hữu duyên sẽ gặp lại',_binary '\0'),(8,1234567890,2,'2023-11-30 09:45:43',NULL,'Dịch vụ tốt',_binary '\0'),(9,1234567890,2,'2023-11-30 09:45:45',NULL,'Tôi rất hài lòng về chất lượng ở đây',_binary '\0'),(10,1234567890,2,'2023-11-30 09:45:47',NULL,'Nếu được đi du lịch 1 lần nữa tôi sẽ chọn ở đây',_binary '\0'),(11,1234567890,2,'2023-11-30 09:46:07',NULL,'Chât lượng phục vụ cao',_binary '\0'),(12,1234567890,2,'2023-11-30 09:46:09',NULL,'Tương tác tốt',_binary ''),(13,2345673452,2,'2023-11-30 18:33:42',NULL,'Cảnh đẹp hữu tình',_binary '\0'),(14,2345673452,1,'2023-12-04 04:11:21',NULL,'Tương tác tốt',_binary '\0'),(15,2345673452,2,'2023-12-04 04:27:49',NULL,'Cảnh đẹp hữu tình',_binary '\0'),(16,1234567890,7,'2023-12-06 18:11:01',NULL,'123',_binary '\0'),(17,2345673452,2,'2023-12-14 05:11:15',NULL,'in',_binary '\0'),(18,6948437030,3,'2023-12-14 06:34:21',NULL,'Cảnh deep',_binary '\0'),(20,7392344033,2,'2023-12-14 20:17:20','2023-12-14 20:17:46','Tour chất lượng tốt giá còn rẻ',_binary ''),(21,1234567890,12,'2023-12-16 09:51:32',NULL,'Hii',_binary '\0'),(22,5198092250,11,'2023-12-18 07:55:31',NULL,'tt',_binary '');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
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

-- Dump completed on 2023-12-19  0:37:18
