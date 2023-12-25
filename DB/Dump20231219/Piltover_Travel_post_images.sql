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
-- Table structure for table `post_images`
--

DROP TABLE IF EXISTS `post_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_images` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `PostID` bigint DEFAULT NULL,
  `Path` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `PostID` (`PostID`),
  CONSTRAINT `post_images_ibfk_1` FOREIGN KEY (`PostID`) REFERENCES `posts` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_images`
--

LOCK TABLES `post_images` WRITE;
/*!40000 ALTER TABLE `post_images` DISABLE KEYS */;
INSERT INTO `post_images` VALUES (8,1,'https://firebasestorage.googleapis.com/v0/b/duanthuctap-quizzedu.appspot.com/o/hoang-thanh-thang-long-3.jpg?alt=media&token=06b13186-53db-4c60-a59f-b3d844404b74'),(9,1,'https://firebasestorage.googleapis.com/v0/b/duanthuctap-quizzedu.appspot.com/o/hoang-thanh-thang-long-9.jpg?alt=media&token=1c4c56c5-11b7-459a-a976-94deca64b55d'),(10,2,'https://firebasestorage.googleapis.com/v0/b/duanthuctap-quizzedu.appspot.com/o/hoang-thanh-thang-long-8.jpg?alt=media&token=ae3892da-e8e6-46e3-9426-5916a9ecd15b'),(11,2,'https://firebasestorage.googleapis.com/v0/b/duanthuctap-quizzedu.appspot.com/o/hoang-thanh-thang-long-7.jpg?alt=media&token=570ee0c0-2476-4abb-8943-4d15da80b19b'),(12,3,'https://firebasestorage.googleapis.com/v0/b/duanthuctap-quizzedu.appspot.com/o/hoang-thanh-thang-long-6.jpg?alt=media&token=fe0a2151-8c60-46c1-889d-e0658dcc3510'),(13,3,'https://firebasestorage.googleapis.com/v0/b/duanthuctap-quizzedu.appspot.com/o/hoang-thanh-thang-long-5.jpg?alt=media&token=17ae49d7-9464-44a2-b857-f98d382bc3a2'),(14,1,'https://firebasestorage.googleapis.com/v0/b/duanthuctap-quizzedu.appspot.com/o/hoang-thanh-thang-long-7.jpg?alt=media&token=570ee0c0-2476-4abb-8943-4d15da80b19b'),(15,4,'https://firebasestorage.googleapis.com/v0/b/duanthuctap-quizzedu.appspot.com/o/hoang-thanh-thang-long-7.jpg?alt=media&token=570ee0c0-2476-4abb-8943-4d15da80b19b'),(16,5,'https://firebasestorage.googleapis.com/v0/b/duanthuctap-quizzedu.appspot.com/o/hoang-thanh-thang-long-6.jpg?alt=media&token=fe0a2151-8c60-46c1-889d-e0658dcc3510'),(17,6,'https://firebasestorage.googleapis.com/v0/b/duanthuctap-quizzedu.appspot.com/o/hoang-thanh-thang-long-8.jpg?alt=media&token=ae3892da-e8e6-46e3-9426-5916a9ecd15b'),(18,7,'https://firebasestorage.googleapis.com/v0/b/duanthuctap-quizzedu.appspot.com/o/hoang-thanh-thang-long-9.jpg?alt=media&token=1c4c56c5-11b7-459a-a976-94deca64b55d'),(19,8,'https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/04-12-2023113353AM_t%E1%BA%A3i%20xu%E1%BB%91ng.jpg?alt=media&token=0d7ea3ec-3551-4467-96e9-d749b3229dde'),(20,9,'https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/15-12-2023025854AM_vinh-baitulong-5.jpg?alt=media&token=74210495-4e9a-448f-88a0-7bb5414323b9'),(21,10,'https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/15-12-2023032545AM_ta%CC%89i%20xu%C3%B4%CC%81ng.jpg?alt=media&token=c69c67f4-6a3e-4161-a932-a34aea6a2a8a'),(22,10,'https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/15-12-2023032546AM_t%E1%BA%A3i%20xu%E1%BB%91ng1.jpg?alt=media&token=9bdda7e0-aea9-4597-b040-e0ff7fbe8cf0'),(23,10,'https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/15-12-2023032546AM_vinh-baitulong-5.jpg?alt=media&token=08269224-aa4e-4185-9a96-b0404e92b1e8'),(24,11,'https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/15-12-2023113225AM_hoang-thanh-thang-long-3.webp?alt=media&token=8eb3047b-099f-4076-be1b-441f5ae1e472'),(25,12,'https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/16-12-2023025649PM_hoang-thanh-thang-long-3.jpg?alt=media&token=610b41e4-3dad-456d-ab84-e5af70e1e980'),(26,12,'https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/16-12-2023025651PM_hoang-thanh-thang-long-5.jpg?alt=media&token=1641bcf6-cf77-4cae-abcb-2d38feff24e0'),(27,12,'https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/16-12-2023025652PM_hoang-thanh-thang-long-6.jpg?alt=media&token=1697eb3c-0a9a-49a5-9ca3-372b9d2c59ed'),(28,12,'https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/16-12-2023025654PM_hoang-thanh-thang-long-7.jpg?alt=media&token=cf786bed-d612-48cd-afed-64b8ab32cafb'),(29,12,'https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/16-12-2023025656PM_hoang-thanh-thang-long-8.jpg?alt=media&token=7cea1a43-1430-4bf9-ab02-70b555d13461'),(30,12,'https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/16-12-2023025657PM_hoang-thanh-thang-long-9.jpg?alt=media&token=fa6f68bb-66c6-49f8-9214-c69898e47335');
/*!40000 ALTER TABLE `post_images` ENABLE KEYS */;
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

-- Dump completed on 2023-12-19  0:36:48
