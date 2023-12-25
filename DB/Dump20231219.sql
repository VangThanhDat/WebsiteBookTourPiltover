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
-- Table structure for table `HotelRevenue`
--

DROP TABLE IF EXISTS `HotelRevenue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HotelRevenue` (
  `hotel_name` varchar(255) NOT NULL,
  `hotel_price` double DEFAULT NULL,
  `total_hotel_booking` int DEFAULT NULL,
  `total_hotel_revenue` double DEFAULT NULL,
  PRIMARY KEY (`hotel_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HotelRevenue`
--

LOCK TABLES `HotelRevenue` WRITE;
/*!40000 ALTER TABLE `HotelRevenue` DISABLE KEYS */;
/*!40000 ALTER TABLE `HotelRevenue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MonthRevenue`
--

DROP TABLE IF EXISTS `MonthRevenue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MonthRevenue` (
  `month` varchar(255) NOT NULL,
  `total_hotel_revenue` double DEFAULT NULL,
  `total_tour_revenue` double DEFAULT NULL,
  `total_transport_revenue` double DEFAULT NULL,
  PRIMARY KEY (`month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MonthRevenue`
--

LOCK TABLES `MonthRevenue` WRITE;
/*!40000 ALTER TABLE `MonthRevenue` DISABLE KEYS */;
/*!40000 ALTER TABLE `MonthRevenue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Revenue`
--

DROP TABLE IF EXISTS `Revenue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Revenue` (
  `total_revenue` double NOT NULL,
  `total_hotel_revenue` double DEFAULT NULL,
  `total_tour_revenue` double DEFAULT NULL,
  `total_transport_revenue` double DEFAULT NULL,
  PRIMARY KEY (`total_revenue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Revenue`
--

LOCK TABLES `Revenue` WRITE;
/*!40000 ALTER TABLE `Revenue` DISABLE KEYS */;
/*!40000 ALTER TABLE `Revenue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TourRevenue`
--

DROP TABLE IF EXISTS `TourRevenue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TourRevenue` (
  `total_name` varchar(255) NOT NULL,
  `adult_bookings` double DEFAULT NULL,
  `adult_price` double DEFAULT NULL,
  `children_bookings` double DEFAULT NULL,
  `children_price` double DEFAULT NULL,
  `total_revenue` double DEFAULT NULL,
  PRIMARY KEY (`total_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TourRevenue`
--

LOCK TABLES `TourRevenue` WRITE;
/*!40000 ALTER TABLE `TourRevenue` DISABLE KEYS */;
/*!40000 ALTER TABLE `TourRevenue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TransportRevenue`
--

DROP TABLE IF EXISTS `TransportRevenue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TransportRevenue` (
  `transport_name` varchar(255) NOT NULL,
  `total_transport_booking` int DEFAULT NULL,
  `total_transport_revenue` double DEFAULT NULL,
  `transport_price` double DEFAULT NULL,
  PRIMARY KEY (`transport_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TransportRevenue`
--

LOCK TABLES `TransportRevenue` WRITE;
/*!40000 ALTER TABLE `TransportRevenue` DISABLE KEYS */;
/*!40000 ALTER TABLE `TransportRevenue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `ID` bigint NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Fullname` varchar(50) DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `Gender` tinyint(1) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Create_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `Update_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Error_count` int DEFAULT '0',
  `Banned_time` datetime DEFAULT NULL,
  `is_Delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `Phone` (`Phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1234567890,'haycaibat123@gmail.com','$2a$10$mmomGkpGAgweMLe.FCvC9ucNywt4yWMrYBqUWIRZT/ThPEyjVsTte','0868916170','Dư Trường Hây','2003-04-21',1,'Cà Mau','2023-11-09 00:00:00','2023-12-18 00:00:00',0,NULL,0),(1878551850,'trongllqpc04382@fpt.edu.vn','$2a$10$HGVBvtFBJTv8/qh2nSWabeK9Ei1n67P9hEblQqqRL9SFvN20lwLTy','0933989981','Lê Lâm QUốc Trọng','2001-01-01',1,'Cần THơ','2023-12-15 00:00:00','2023-12-15 00:00:00',0,NULL,1),(2251729652,'testlan5@gmail.com','$2a$10$xKGbTyHlrxlgxR9lhSOeeOT1VM4eXPjgeFminLk3foUjuZNzNKB4m','0933827198','Test Lan 3','2001-01-01',1,'Cần Thơ','2023-12-18 00:00:00','2023-12-18 00:00:00',0,NULL,1),(2345673452,'thinhnh123@gmail.com','$2a$10$ryLS35Al0CW10x2Vxm2Io.4NMh2fciXRmz3mtOhGI25GCAbsw6.Eu','0941599055','Nguyễn Hưng Thịnh','2003-06-21',1,'Cà Mau','2023-11-09 00:00:00','2023-12-04 00:00:00',0,NULL,1),(2722187319,'testlan2@gmail.com','$2a$10$tNkoY2JSNYbia1VeajfGruP.ngFgRjNOWmF50Q89kFGhXTpbg2owi','0933827192','Test Lan 2','2001-01-01',1,'Cần Thơ','2023-12-07 00:00:00','2023-12-07 00:00:00',0,NULL,1),(2995274878,'haydt123@gmail.com','$2a$10$6CszqyF.QY85SytDBCiNeOGJuyxGdtMv6MV9C.uqZ7TUG0xpwPXTi','0977888881','Dư Trường Hây 2','2001-01-01',1,'Cà Mau','2023-12-14 00:00:00','2023-12-14 00:00:00',0,NULL,0),(3456789012,'hay123','$2a$10$mmomGkpGAgweMLe.FCvC9ucNywt4yWMrYBqUWIRZT/ThPEyjVsTte','0941599053','Dư Trường Hây','2001-01-01',0,NULL,'2023-12-03 04:15:23','2023-12-18 01:01:47',0,NULL,0),(4807867129,'haycaibat123456@gmail.com','$2a$10$9VPY2iTi9e7R.qSgOqOnVep4IYN7FAbWIfZGgx9Kr21ahJpwTrWjy','0977888889','Dư Trường Hây 2','2001-01-01',1,'Cà Mau','2023-12-14 00:00:00','2023-12-14 00:00:00',0,NULL,0),(5198092250,'thinhne607@gmail.com','$2a$10$Y1BCfTzaGGmDnlVuwUPMOOd4mOZE8p71UPguM8OHC8ZNKTlPzAQiS','0918427619 ','Thịnh nè ','2001-02-02',1,'Cần Thơ','2023-12-18 00:00:00','2023-12-18 00:00:00',0,NULL,0),(5846766475,'datvtpc04247@fpt.edu.vn','$2a$10$nnNnr11A9CiEplrmDssV6OthDuhXvLzaERi.PXQi5f8iAJQ4wHcXq','0941599035','Vạng Thành Đạt Mail','2001-01-01',1,'Cà Mau','2023-12-14 00:00:00','2023-12-14 00:00:00',0,NULL,0),(5863016893,'testlan1@gmail.com','$2a$10$MlVtSBzip93CSsU7XJ.AhOz7aTsia01XnJWOfpyh8r8oCBBARKimS','0909080801','Tester Vip Pro','2001-01-01',1,'nới test ở một nơi xa lạ với vùng trời','2023-12-07 00:00:00','2023-12-07 00:00:00',0,NULL,0),(6245835351,'123@123123c.asasd','$2a$10$mmomGkpGAgweMLe.FCvC9ucNywt4yWMrYBqUWIRZT/ThPEyjVsTte','112312312313','123','2001-01-01',1,'123','2023-11-30 00:00:00','2023-12-04 23:26:58',0,NULL,0),(6446447926,'haycaibat12345@gmail.com','$2a$10$sUYJy1JoTjzGdGykHmadUu3JKVOt2NO3bNjLDcERKPQUbufTGuAcy','0977888888','Dư Trường Hây 2','2001-01-01',1,'Cà Mau','2023-12-07 00:00:00',NULL,0,NULL,0),(6948437030,'hehe123@gmail.com','$2a$10$fejxQtNJkfeJqh71bZPlNOzI6jOTpipW07T9LKOKfHaAMLD7b2Dzy','0912345678','Hehe123','2001-01-01',1,'Hehe','2023-12-14 00:00:00','2023-12-14 00:00:00',0,NULL,0),(7392344033,'td27022003@gmail.com','$2a$10$5lkr6bQOYtuwLJYk.WZpau.njh3sPPtPw2.DO2W7qO9M2Fh/FrQEm','0123654789','Vạng Thành Đạt','2001-01-01',1,'CanTho','2023-12-14 00:00:00','2023-12-14 00:00:00',0,NULL,1),(8314586180,'thinhcaibat06@gmail.com','$2a$10$/QDiJ7qRza18V9GNKOe3VO7lnphuQmNqKYGTU35UN..tnGeJH5XNK','0948342514','Nguyễn Hưng Thịnh','2001-01-01',1,'Ấp Cái Bát, xã Tân Hưng Tây, huyện Phú Tân, tỉnh Cà Mau','2023-12-18 00:00:00','2023-12-18 00:00:00',0,NULL,0),(8846136545,'testlan3@gmail.com','$2a$10$t0K5oZ8Ldx.OYA11pGmwKOCYGhP.qrnDYyZcW8sITG92TDXJfXWIO','0933827194','Test Lan 3','2001-01-01',1,'Cần Thơ','2023-12-14 00:00:00','2023-12-18 00:38:17',0,NULL,1),(9730426725,'lhtho1803@gmail.com','$2a$10$67A1Cv/9DNtHLgDPSJw8eepJGdzobXaDt9MwFBAV0fQ/7ihBBUpVi','0854252230','Lê Hoàng Thọ','2003-03-18',1,'An Giang','2023-12-13 00:00:00','2023-12-13 00:00:00',0,NULL,0),(9884715110,'haydt.dev@gmail.com','$2a$10$TM2ekDXjvN9Sk7/3hHjDTOrI9r/79W2dd/4VSv7KBhdvouygG.UT2','0878990789','Dư Trường Hây Test 2 change ifo','2001-01-01',1,'Cần Thơ','2023-12-18 00:00:00','2023-12-18 00:00:00',0,NULL,1),(9903510727,'testlan4@gmail.com','$2a$10$JX548nspp9UKyuI3woMQ7uOvieHpL7DSTuZSvxrZ6Uf95rYUAxOgC','0933827197','Test Lan 4','2001-01-01',1,'Cần Thơ','2023-12-14 00:00:00','2023-12-14 00:00:00',0,NULL,1),(9999876890,'datvt@gmail.com','$2a$10$pC3CKJm4VXOOw0tejmfoSu/V1yzhCRAaKNyd3zAzTDjyaLrBaODKW','0978675667','Vạng Thành Đạt','2003-07-17',1,'Cà Mau','2023-12-04 22:40:25','2023-12-04 23:21:20',0,NULL,0);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authorities`
--

DROP TABLE IF EXISTS `authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authorities` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `AccountID` bigint DEFAULT NULL,
  `RoleId` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `AccountID` (`AccountID`),
  KEY `RoleId` (`RoleId`),
  CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`AccountID`) REFERENCES `accounts` (`ID`),
  CONSTRAINT `authorities_ibfk_2` FOREIGN KEY (`RoleId`) REFERENCES `roles` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorities`
--

LOCK TABLES `authorities` WRITE;
/*!40000 ALTER TABLE `authorities` DISABLE KEYS */;
INSERT INTO `authorities` VALUES (1,1234567890,'ADMIN'),(2,1234567890,'USER'),(3,1234567890,'EMPLOYEE'),(4,2345673452,'USER'),(5,3456789012,'USER'),(6,2345673452,'ADMIN'),(7,9999876890,'USER'),(8,4807867129,'USER'),(9,2995274878,'USER'),(10,8846136545,'USER'),(11,9903510727,'USER'),(13,5846766475,'USER'),(14,6948437030,'USER'),(17,7392344033,'USER'),(18,1878551850,'USER'),(19,9884715110,'USER'),(20,5198092250,'USER'),(21,8314586180,'USER');
/*!40000 ALTER TABLE `authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_detail`
--

DROP TABLE IF EXISTS `booking_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_detail` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `BookingID` bigint DEFAULT NULL,
  `Adult` int DEFAULT NULL,
  `Children` int DEFAULT NULL,
  `Surcharge` int DEFAULT NULL,
  `Booking_time` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `BookingID` (`BookingID`),
  CONSTRAINT `booking_detail_ibfk_1` FOREIGN KEY (`BookingID`) REFERENCES `bookings` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_detail`
--

LOCK TABLES `booking_detail` WRITE;
/*!40000 ALTER TABLE `booking_detail` DISABLE KEYS */;
INSERT INTO `booking_detail` VALUES (41,51,1,0,552000,'2023-12-17 23:09:10'),(42,52,1,0,559200,'2023-12-17 23:23:30'),(43,53,1,0,559200,'2023-12-17 23:30:30'),(44,54,3,0,1677600,'2023-12-18 15:03:16'),(45,55,2,0,512000,'2023-12-18 15:04:36'),(46,56,2,1,1656000,'2023-12-18 15:29:19');
/*!40000 ALTER TABLE `booking_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `Tour_DateID` bigint DEFAULT NULL,
  `DiscountID` bigint DEFAULT NULL,
  `Total_price` int DEFAULT NULL,
  `Total_passengers` int DEFAULT NULL,
  `Create_User` bigint DEFAULT NULL,
  `Create_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `Update_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `Update_User` bigint DEFAULT NULL,
  `Status` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Create_User` (`Create_User`),
  KEY `Update_User` (`Update_User`),
  KEY `Tour_DateID` (`Tour_DateID`),
  KEY `DiscountID` (`DiscountID`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`Create_User`) REFERENCES `accounts` (`ID`),
  CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`Update_User`) REFERENCES `accounts` (`ID`),
  CONSTRAINT `bookings_ibfk_3` FOREIGN KEY (`Tour_DateID`) REFERENCES `tour_dates` (`Id`),
  CONSTRAINT `bookings_ibfk_4` FOREIGN KEY (`DiscountID`) REFERENCES `discounts` (`Id`),
  CONSTRAINT `bookings_chk_1` CHECK ((`Status` in (0,1,2)))
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (51,30,NULL,7452000,1,1234567890,'2023-12-17 23:08:17','2023-12-17 23:08:17',1234567890,1),(52,31,NULL,7549200,1,1234567890,'2023-12-17 23:23:30','2023-12-17 23:23:30',1234567890,0),(53,31,NULL,7549200,1,1234567890,'2023-12-17 23:27:37','2023-12-18 00:23:17',1234567890,2),(54,31,NULL,22647600,3,5198092250,'2023-12-18 15:02:54','2023-12-18 15:02:54',5198092250,1),(55,35,NULL,6912000,2,5198092250,'2023-12-18 15:03:55','2023-12-18 15:03:55',5198092250,1),(56,30,NULL,22356000,3,8314586180,'2023-12-18 15:28:53','2023-12-18 15:28:53',8314586180,1);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discounts` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Percentage` float DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  `Code` varchar(10) DEFAULT NULL,
  `Create_User` bigint DEFAULT NULL,
  `Create_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `Update_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `Update_User` bigint DEFAULT NULL,
  `is_Delete` tinyint(1) DEFAULT '0',
  `min` float DEFAULT NULL,
  `max` float DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Code` (`Code`),
  KEY `Create_User` (`Create_User`),
  KEY `Update_User` (`Update_User`),
  CONSTRAINT `discounts_ibfk_1` FOREIGN KEY (`Create_User`) REFERENCES `accounts` (`ID`),
  CONSTRAINT `discounts_ibfk_2` FOREIGN KEY (`Update_User`) REFERENCES `accounts` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` VALUES (2,'Giảm 50% tối đa 1 triệu',50,100,'DISCOUNT01',2345673452,'2023-11-09 01:25:59','2023-11-09 01:25:59',1234567890,1,100000,1000000),(3,'Giảm 30% tối đa 1 triệu',30,100,'DISCOUNT02',1234567890,'2023-11-09 01:25:59','2023-11-09 01:25:59',2345673452,1,100000,1000000),(4,'Giảm 10% tối đa 1 triệu',10,100,'DISCOUNT03',1234567890,'2023-11-09 01:25:59','2023-11-19 01:25:59',2345673452,1,100000,1000000),(5,'Giảm 15% tối đa 1 triệu',15,100,'DISCOUNT04',2345673452,'2023-11-09 01:25:59','2023-11-09 01:25:59',1234567890,1,100000,1000000),(6,'Giảm 20% tối đa 1 triệu',20,100,'DISCOUNT05',1234567890,'2023-11-30 00:16:15','2023-12-06 19:50:00',2345673452,1,100000,1000000),(7,'Giảm 5% tối đa 1 triệu',5,100,'DISCOUNT06',1234567890,'2023-11-30 00:19:41','2023-11-30 00:19:41',1234567890,1,100000,1000000),(8,'Giảm 6% tối đa 1 triệu',6,100,'DISCOUNT07',1234567890,'2023-11-30 00:23:39','2023-11-30 00:23:39',1234567890,1,100000,1000000),(9,'Giảm 9% tối đa 1 triệu',9,100,'DISCOUNT08',1234567890,'2023-11-30 00:25:24','2023-11-30 00:25:24',1234567890,1,100000,1000000),(10,'Giảm 50% tối đa 1 triệu',50,100,'TB09O0J81H',1234567890,'2023-11-30 01:14:21','2023-11-30 01:14:21',1234567890,1,100000,1000000),(11,'Giảm 25% tối đa 1 triệu',25,100,'DISCOUNT09',1234567890,'2023-11-30 04:23:59','2023-11-30 04:23:59',1234567890,1,100000,1000000),(12,'Giảm 35% tối đa 1 triệu',35,100,'DISCOUNT10',1234567890,'2023-11-30 11:37:16','2023-11-30 11:37:16',1234567890,1,100000,1000000),(14,'Giảm 13% tối đa 1 triệu',13,100,'DISCOUNT11',2345673452,'2023-11-30 11:46:40','2023-11-30 11:46:40',2345673452,1,100000,1000000),(15,'Giảm 7% tối đa 1 triệu',7,100,'DISCOUNT21',2345673452,'2023-11-30 11:48:34','2023-11-30 11:48:34',2345673452,1,100000,1000000),(16,'Giảm 50% tối đa 1 triệu',50,100,'DISCOUNT12',2345673452,'2023-11-30 11:53:26','2023-11-30 11:53:26',2345673452,1,100000,1000000),(17,'Giảm 50% tối đa 1 triệu',50,100,'DISCOUNT13',2345673452,'2023-11-30 14:26:56','2023-11-30 14:26:56',1234567890,1,100000,1000000),(18,'Giảm 10% tối đa 1 triệu',10,100,'DISCOUNT14',1234567890,'2023-11-30 15:15:10','2023-11-30 15:15:10',1234567890,1,100000,1000000),(19,'Giảm 40% tối đa 1 triệu',40,100,'DISCOUNT99',2345673452,'2023-11-30 15:26:50','2023-11-30 15:26:50',2345673452,1,100000,1000000),(20,'Giảm 60% tối đa 1 triệu',60,100,'DISCOUNT16',1234567890,'2023-11-30 15:30:26','2023-11-30 15:30:26',1234567890,1,100000,1000000),(21,'Giảm 55% tối đa 1 triệu',55,100,'DISCOUNT17',1234567890,'2023-11-30 15:32:35','2023-11-30 15:32:35',2345673452,1,100000,1000000),(22,'Giảm 41% tối đa 1 triệu',41,99,'OD95V4P70U',1234567890,'2023-11-30 15:35:02','2023-11-30 15:35:02',1234567890,0,100000,1000000),(23,'Giảm 42% tối đa 1 triệu',42,100,'YV45I1N31T',1234567890,'2023-11-30 15:35:30','2023-11-30 15:35:30',1234567890,0,100000,1000000),(25,'Giảm 43% tối đa 1 triệu',43,100,'IY66C6T94M',1234567890,'2023-11-30 15:39:32','2023-11-30 15:39:32',1234567890,1,100000,1000000),(26,'Giảm 45% tối đa 1 triệu',45,100,'BW07Q8J22J',1234567890,'2023-11-30 15:40:48','2023-11-30 15:40:48',1234567890,1,100000,1000000),(27,'Giảm 10% tối đa 1 triệu',10,100,'CM00T6E87B',1234567890,'2023-11-30 15:40:51','2023-11-30 15:40:51',1234567890,1,100000,1000000),(28,'Giảm 5% tối đa 1 triệu',5,100,'TP66D7E69T',1234567890,'2023-11-30 17:09:46','2023-11-30 17:09:46',1234567890,0,100000,1000000),(29,'Giảm 5% tối đa 1 triệu',5,100,'UV67U8P50I',1234567890,'2023-11-30 17:10:34','2023-11-30 17:10:34',1234567890,0,100000,1000000),(30,'Giảm 15% tối đa 1 triệu',15,100,'SO77W9C57V',1234567890,'2023-11-30 17:12:19','2023-11-30 17:12:19',1234567890,0,100000,1000000),(31,'Giảm 20% tối đa 1 triệu',20,100,'UK76V3A17L',1234567890,'2023-11-30 17:16:28','2023-11-30 17:16:28',1234567890,0,100000,1000000),(32,'Giảm 35% tối đa 1 triệu',35,100,'KO62P2G62O',1234567890,'2023-11-30 17:20:03','2023-11-30 17:20:03',1234567890,0,100000,1000000),(33,'Giảm 33% tối đa 1 triệu',33,100,'XV47F9G30A',1234567890,'2023-11-30 17:23:02','2023-11-30 17:23:02',1234567890,0,100000,1000000),(34,'Giảm 11% tối đa 1 triệu',11,100,'OL54Q7B94L',1234567890,'2023-11-30 17:23:02','2023-11-30 17:23:02',1234567890,0,100000,1000000),(35,'Giảm 12% tối đa 1 triệu',12,100,'BG05R6K08C',1234567890,'2023-11-30 17:26:18','2023-11-30 17:26:18',1234567890,1,100000,1000000),(36,'Giảm 43% tối đa 1 triệu',100,100,'UK74Y4H22Q',1234567890,'2023-12-04 04:31:53','2023-12-15 02:53:23',1234567890,0,100000,1000000),(37,'Giảm 34% tối đa 1 triệu',34,99,'DN12S8F47C',1234567890,'2023-12-06 05:58:54','2023-12-06 05:58:54',1234567890,0,100000,1000000),(38,'Giảm 40% tối đa 1 triệu',40,100,'LW91Z3A84M',1234567890,'2023-12-06 06:05:48','2023-12-06 14:32:31',1234567890,1,100000,1000000),(39,'Giảm 51% tối đa 1 triệu',51,99,'DF64L7Q79L',1234567890,'2023-12-06 06:07:35','2023-12-06 14:30:40',2345673452,0,100000,1000000),(40,'Giảm 25% tối đa 1 triệu',25,99,'SJ76Z8M85K',1234567890,'2023-12-06 15:28:49','2023-12-06 15:28:49',1234567890,1,100000,1000000),(41,'giảm 5%',5,50,'VO27V9J81I',1234567890,'2023-12-14 19:54:42','2023-12-14 19:54:42',1234567890,0,100000,500000),(42,'giảm 10%',10,100,'QD74T5P37P',1234567890,'2023-12-14 20:21:15','2023-12-14 20:21:15',1234567890,1,100000,500000),(43,'Giảm 10%',10,100,'RE99F0N53Y',1234567890,'2023-12-15 04:34:15','2023-12-15 04:34:15',1234567890,0,100000,1000000),(44,'Mừng giáng sinh 24/12 - giảm 12%',12,25,'KV94K5U09Q',1234567890,'2023-12-18 07:37:09','2023-12-18 14:37:39',1234567890,1,1200000,240000);
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotels` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `Star` int DEFAULT NULL,
  `Address` text,
  `Create_User` bigint DEFAULT NULL,
  `Create_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `Update_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `Update_User` bigint DEFAULT NULL,
  `is_Delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `Create_User` (`Create_User`),
  KEY `Update_User` (`Update_User`),
  CONSTRAINT `hotels_ibfk_1` FOREIGN KEY (`Create_User`) REFERENCES `accounts` (`ID`),
  CONSTRAINT `hotels_ibfk_2` FOREIGN KEY (`Update_User`) REFERENCES `accounts` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
INSERT INTO `hotels` VALUES (1,'Khách Sạn Motel',1500000,4,'rgrer, Xã Xuân Lập, Huyện Lâm Bình, Tỉnh Tuyên Quang',NULL,'2023-11-09 01:25:59','2023-12-15 02:19:10',1234567890,0),(2,'Khách Sạn A',2000000,5,'rgre, Thị trấn Na Hang, Huyện Na Hang, Tỉnh Tuyên Quang',NULL,'2023-11-09 01:25:59','2023-12-15 02:20:06',1234567890,0),(6,'V Hotel Nha Trang',2784000,4,'8 Hùng Vương, Phường Lộc Thọ, Thành phố Nha Trang, Tỉnh Khánh Hòa',NULL,'2023-12-04 14:35:00','2023-12-14 18:37:08',1234567890,0),(9,'DTX Hotel Nha Trang',494000,4,'3A,Đường Quan Tran, Phường Lộc Thọ, Thành phố Nha Trang, Tỉnh Khánh Hòa',NULL,'2023-12-07 03:52:47','2023-12-07 03:52:47',NULL,0),(10,'Atlantic Nha Trang Hotel',870000,4,'17/11A, Nguyen Thi Minh Khai , Phường Lộc Thọ, Thành phố Nha Trang, Tỉnh Khánh Hòa',NULL,'2023-12-07 03:57:46','2023-12-07 03:57:46',NULL,0),(12,'Hotel CT',250000,2,'Số 423, Phường Ba Láng, Quận Cái Răng, Thành phố Cần Thơ',1234567890,'2023-12-07 11:50:11','2023-12-07 11:50:11',1234567890,0),(14,'Hoang Yen Hotel',1049000,4,'5 An Dương Vương, Phường Nguyễn Văn Cừ, Thành phố Quy Nhơn, Tỉnh Bình Định',1234567890,'2023-12-14 18:16:19','2023-12-14 18:16:19',1234567890,0),(15,'Ha Long Essence Hotel',5328000,3,'Kỳ Quan, Phường Bãi Cháy, Thành phố Hạ Long, Tỉnh Quảng Ninh',1234567890,'2023-12-14 18:49:17','2023-12-14 18:49:17',1234567890,0),(16,'Sài Gòn - Bản Giốc Resort',900000,4,'Đường tỉnh 206, Xóm Bản Giốc, Xã Đàm Thuỷ, Huyện Trùng Khánh, Tỉnh Cao Bằng',NULL,'2023-12-14 19:05:36','2023-12-14 19:05:54',1234567890,0),(17,'Mườn Thanh Hotel',2000000,5,'Khu E1, Phường Cái Khế, Quận Ninh Kiều, Thành phố Cần Thơ',1234567890,'2023-12-14 20:35:08','2023-12-14 20:35:08',1234567890,0),(18,'UTT Hotel',1000000,2,'111A, Phường Đồng Xuân, Quận Hoàn Kiếm, Thành phố Hà Nội',1234567890,'2023-12-15 02:21:05','2023-12-15 02:21:05',1234567890,0),(19,'Hotel Cà Mau ',1000000,3,'Đường 305, Phường 1, Thành phố Cà Mau, Tỉnh Cà Mau',1234567890,'2023-12-15 03:10:04','2023-12-15 03:10:04',1234567890,0),(20,'Khách sạn B',200000,2,'Số 234, Chọn Phường/Xã, Thành phố Cà Mau, Tỉnh Cà Mau',NULL,'2023-12-15 04:28:26','2023-12-15 04:29:38',1234567890,1),(21,'Hotel Vũ Hà ',1200000,3,'Đường 123 , Phường An Khánh, Quận Ninh Kiều, Thành phố Cần Thơ',1234567890,'2023-12-16 22:47:25','2023-12-16 22:47:25',1234567890,0),(22,'Hotel Tuấn Nguyễn ',1000000,3,'63 Đường Trần Hưng Đạo , Phường Dương Đông, Thành phố Phú Quốc, Tỉnh Kiên Giang',1234567890,'2023-12-17 16:31:34','2023-12-17 16:31:34',1234567890,0),(23,'Huong Giang Bungalow',1200000,3,'Trần Hưng Đạo, Phường Dương Đông, Thành phố Phú Quốc, Tỉnh Kiên Giang',1234567890,'2023-12-17 16:33:11','2023-12-17 16:33:11',1234567890,0),(24,'Thị Trấn Hoàng Hôn',1100000,3,'Thị trấn Địa Trung Hải , Phường An Thới, Thành phố Phú Quốc, Tỉnh Kiên Giang',1234567890,'2023-12-17 16:34:16','2023-12-17 16:34:16',1234567890,0),(25,'AN Boutique Hotel',1200000,3,'138 Bùi Thị Xuân, Phường 2, Thành phố Đà Lạt, Tỉnh Lâm Đồng',1234567890,'2023-12-17 19:04:27','2023-12-17 19:04:27',1234567890,0),(26,'Bazan Hotel Dalat',1100000,3,'36 To Hien Thanh, Phường 9, Thành phố Đà Lạt, Tỉnh Lâm Đồng',1234567890,'2023-12-17 19:05:25','2023-12-17 19:05:25',1234567890,0),(27,'Carnival Hotel',900000,2,'42 Đường Bùi Thị Xuân, Phường 2, Thành phố Đà Lạt, Tỉnh Lâm Đồng',1234567890,'2023-12-17 19:06:00','2023-12-17 19:06:00',1234567890,0),(28,'Khách Sạn Sapa',500000,1,'Số 323, Phường Sa Pa, Thị xã Sa Pa, Tỉnh Lào Cai',NULL,'2023-12-17 20:54:34','2023-12-17 20:56:44',1234567890,0),(29,'Venue Hotel',1200000,3,'24 Ton Dan, Phường Vĩnh Hòa, Thành phố Nha Trang, Tỉnh Khánh Hòa',1234567890,'2023-12-17 21:04:43','2023-12-17 21:04:43',1234567890,0),(30,'Apus Hotel',1300000,3,'95/9 Hung Vuong Street, Phường Lộc Thọ, Thành phố Nha Trang, Tỉnh Khánh Hòa',1234567890,'2023-12-17 21:05:17','2023-12-17 21:05:17',1234567890,0),(31,'Azura Gold Hotel & Apartment',2300000,4,'64/2 Tran Phu Street,, Phường Lộc Thọ, Thành phố Nha Trang, Tỉnh Khánh Hòa',1234567890,'2023-12-17 21:05:43','2023-12-17 21:05:43',1234567890,0),(32,'Nguyễn Tuấn Hotel',1000000,2,'Thị trấn U Minh , Thị trấn U Minh, Huyện U Minh, Tỉnh Cà Mau',1234567890,'2023-12-17 21:39:04','2023-12-17 21:39:04',1234567890,0),(33,'Hà Tuấn Hotel',1300000,3,'Đất Mũi, Xã Đất Mũi, Huyện Ngọc Hiển, Tỉnh Cà Mau',1234567890,'2023-12-17 21:40:39','2023-12-17 21:40:39',1234567890,0),(34,'Hanoi Paradise Hotel',1200000,3,'62 Hang Bac Street, Phường Đồng Xuân, Quận Hoàn Kiếm, Thành phố Hà Nội',1234567890,'2023-12-17 22:41:02','2023-12-17 22:41:02',1234567890,0),(35,'The Sono Hotel ',300000,1,'56A Hàng Đậu, Xã Hương Sơn, Huyện Mỹ Đức, Thành phố Hà Nội',NULL,'2023-12-17 22:41:39','2023-12-17 22:56:59',1234567890,0),(36,'Eclipse Legend Hotel',1200000,3,'36 Hang Voi, Phường Phúc Tân, Quận Hoàn Kiếm, Thành phố Hà Nội',1234567890,'2023-12-17 22:42:00','2023-12-17 22:42:00',1234567890,0),(37,'Tăng Hà Hotel',300000,1,'JP9W+5H8, Xã Hương Sơn, Huyện Mỹ Đức, Thành phố Hà Nội',1234567890,'2023-12-17 22:58:20','2023-12-17 22:58:20',1234567890,0),(38,'Q Garden Villa ',400000,1,'41 Dương Văn An, Phường Tây Lộc, Thành phố Huế, Tỉnh Thừa Thiên Huế',1234567890,'2023-12-17 23:10:04','2023-12-17 23:10:04',1234567890,0),(39,'Hue Nino Hotel',400000,1,'14 Nguyen Cong Tru Street, Phường Thuận Lộc, Thành phố Huế, Tỉnh Thừa Thiên Huế',1234567890,'2023-12-17 23:10:49','2023-12-17 23:10:49',1234567890,0),(40,'Vina Spa Hotel',350000,1,'57 Nguyễn Công Trứ, Phường Gia Hội, Thành phố Huế, Tỉnh Thừa Thiên Huế',1234567890,'2023-12-17 23:11:11','2023-12-17 23:11:11',1234567890,0),(41,'Ngọc Bích Hotel ',400000,1,'23 Lê Bình, Phường Hòa Hiệp Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng',1234567890,'2023-12-17 23:12:13','2023-12-17 23:12:13',1234567890,0),(42,'SOCO Hotel',350000,1,'305 Nguyen Van Thoai, Phường Hòa Hiệp Nam, Quận Liên Chiểu, Thành phố Đà Nẵng',1234567890,'2023-12-17 23:12:35','2023-12-17 23:12:35',1234567890,0),(43,'Shara Hotel',300000,1,'52 - 53 Phan Liem, Phường Hòa Khánh Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng',1234567890,'2023-12-17 23:13:06','2023-12-17 23:13:06',1234567890,0);
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `Like_User` bigint DEFAULT NULL,
  `PostID` bigint DEFAULT NULL,
  `Is_Like` tinyint(1) DEFAULT NULL,
  `Like_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `Unlike_at` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Like_User` (`Like_User`),
  KEY `PostID` (`PostID`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`Like_User`) REFERENCES `accounts` (`ID`),
  CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`PostID`) REFERENCES `posts` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,1234567890,1,1,'2023-11-09 01:21:42','2023-11-09 01:21:42'),(2,1234567890,2,1,'2023-12-01 00:00:00','2023-12-01 00:00:00'),(3,2345673452,1,1,'2023-11-09 01:21:42','2023-11-09 01:21:42'),(4,2345673452,2,1,'2023-11-30 11:32:42','2023-11-30 11:32:42'),(5,6245835351,2,1,'2023-12-02 00:00:00','2023-12-01 00:00:00'),(6,6245835351,1,1,NULL,NULL),(7,1234567890,7,1,NULL,NULL),(8,6948437030,3,1,NULL,NULL),(10,7392344033,2,1,NULL,NULL),(11,1234567890,4,0,NULL,'2023-12-16 00:00:00'),(12,1234567890,12,0,NULL,'2023-12-16 00:00:00');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `Create_User` bigint DEFAULT NULL,
  `Title` text,
  `Description` text,
  `Content` text,
  `Create_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `Update_at` datetime DEFAULT NULL,
  `Update_User` bigint DEFAULT NULL,
  `is_Delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `Create_User` (`Create_User`),
  KEY `Update_User` (`Update_User`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`Create_User`) REFERENCES `accounts` (`ID`),
  CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`Update_User`) REFERENCES `accounts` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1234567890,'Tiêu đề bài viết 999','Mô tả bài viết 963','Trạng thái bài viết 1','2023-11-09 01:21:42','2023-12-04 11:32:47',1234567890,1),(2,1234567890,'<p><span style=\"color: var(--tw-prose-bold);\">Hà Nội - Hòn Ngọc Sáng Tạo và Di Sản Văn Hóa Lâu Dài</span></p>','<p><span style=\"color: rgb(55, 65, 81);\">Hà Nội, thủ đô lịch sử của Việt Nam, là một thành phố quyến rũ với sự kết hợp hài hòa giữa văn hóa truyền thống và sự phát triển hiện đại. Đây không chỉ là trung tâm chính trị của đất nước mà còn là nơi lưu giữ nhiều giá trị văn hóa, lịch sử và nghệ thuật độc đáo.</span></p>','<p><span style=\"color: rgb(55, 65, 81);\">Hà Nội hứa hẹn một hành trình đưa du khách trở lại thời kỳ lịch sử với những di tích lâu dài như Văn Miếu - Quốc Tử Giám, nơi tôn vinh các học giả vĩ đại, và Tháp Báo Tháp Hòa Lạc, là biểu tượng của thành phố. Hoàng Thành Thăng Long, di tích lịch sử quan trọng, là chứng nhận cho sức sống và lòng dũng cảm của nhân dân Hà Nội qua các thời kỳ.</span></p><p><span style=\"color: rgb(55, 65, 81);\">Phố Cổ Hà Nội là một labirint phố nhỏ với những ngôi nhà cổ xinh xắn, những góc phố tấp nập và các quán cà phê độc đáo. Đây là nơi lưu giữ bức tranh hình thành từ thời kỳ cổ đại, nơi mà cuộc sống truyền thống hòa mình vào không khí hiện đại.</span></p><p><span style=\"color: rgb(55, 65, 81);\">Hà Nội được biết đến với hệ thống ẩm thực đa dạng và phong phú. Đến đây, du khách sẽ có cơ hội thưởng thức những món ăn truyền thống như bún chả, phở, bánh cuốn tại các quán nhỏ ven đường.</span></p><p><span style=\"color: rgb(55, 65, 81);\">Hà Nội không chỉ là nơi đậm chất lịch sử mà còn là trung tâm nghệ thuật và giáo dục với nhiều bảo tàng và triển lãm nghệ thuật. Làng nghề truyền thống như làm lịch và làm đèn lồng tạo nên những sản phẩm độc đáo.</span></p><p><span class=\"ql-cursor\">﻿</span>Hồ Gươm là biểu tượng của thành phố, nơi mà người dân và du khách có thể tận hưởng không khí trong lành, thư giãn và tham gia các hoạt động vui chơi giải trí.</p><p>Hà Nội, với vẻ đẹp lâu dài và văn hóa sâu sắc, là điểm đến tuyệt vời cho những ai muốn khám phá và hiểu rõ hơn về đất nước và con người Việt Nam.</p>','2023-11-09 01:21:42','2023-12-18 12:39:39',1234567890,0),(3,2345673452,'Tiêu đề bài viết 3','Mô tả bài viết 3','Trạng thái bài viết 3','2023-11-09 01:21:42',NULL,NULL,1),(4,2345673452,'Tiêu đề bài viết 4','Mô tả bài viết 4','Trạng thái bài viết 4','2023-11-30 08:53:08',NULL,NULL,1),(5,2345673452,'Tiêu đề bài viết 5','Mô tả bài viết 5','Trạng thái bài viết 5','2023-11-30 08:53:10',NULL,NULL,1),(6,1234567890,'Tiêu đề bài viết 6','Mô tả bài viết 6','Trạng thái bài viết 6','2023-11-30 08:53:11',NULL,NULL,1),(7,1234567890,'Tiêu đề bài viết 7','Mô tả bài viết 7','Trạng thái bài viết 7','2023-11-30 08:53:12',NULL,NULL,1),(8,1234567890,'hb','hhjn','hbbh','2023-12-04 04:34:09',NULL,NULL,1),(9,1234567890,'<p><span style=\"color: rgb(55, 65, 81);\">Hạ Long - Hành Trình Khám Phá Thế Giới Dưới Biển</span></p>','<p><span style=\"color: rgb(55, 65, 81);\">Hạ Long không chỉ là vẻ đẹp của những đảo đá hùng vĩ trên mặt nước, mà còn là thế giới đầy bí ẩn dưới đáy biển, nơi nổi tiếng với đa dạng sinh quyển và hệ sinh thái biển phong phú. Đây là điểm đến lý tưởng cho những người yêu thích hoạt động thám hiểm dưới nước và muốn khám phá vẻ đẹp biển cả của Việt Nam.</span></p>','<p>Hạ Long không chỉ nổi tiếng với những chuyến du thuyền trên mặt nước, mà còn là điểm đến hấp dẫn cho những người đam mê lặn biển. Khu vực này có nhiều điểm lặn tuyệt vời như Đảo Tuần Châu, Cống Đỏ, nơi du khách có thể chiêm ngưỡng những rặng san hô đầy màu sắc, những loài cá độc đáo và cả những đoạn hải cảng bí ẩn.</p><p>Hệ sinh thái biển Hạ Long còn bao gồm khu vực bảo tồn cá ngừ, nơi đàn cá ngừ lớn đến hàng nghìn con tạo nên một bức tranh sinh động dưới lòng biển. Du khách có thể tham gia các tour lặn chuyên nghiệp để khám phá vùng biển này, tận hưởng trải nghiệm thú vị và học hỏi về hệ sinh thái biển động.</p><p>Ngoài ra, du khách có cơ hội thưởng thức các món ăn đặc sản từ hải sản tươi ngon tại các nhà hàng ven biển, tận hưởng không khí biển cả trong lành và hương vị độc đáo của miền đất Hạ Long.</p><p>Hạ Long không chỉ là vùng đất của những hòn đảo nổi tiếng mà còn là điểm đến đắm chìm trong vẻ đẹp kỳ bí của thế giới dưới biển, tạo nên một trải nghiệm du lịch độc đáo và không thể quên.</p>','2023-12-14 19:59:08','2023-12-18 12:37:25',1234567890,0),(10,1234567890,'<p><span style=\"color: rgb(55, 65, 81);\">Hạ Long - Hòn Ngọc Viễn Đông</span></p>','<p><span style=\"color: rgb(55, 65, 81);\">Hạ Long, một trong những điểm đến hấp dẫn nhất tại Việt Nam, nổi tiếng với vẻ đẹp hoang sơ, hùng vĩ và huyền bí của hàng nghìn đảo đá đặc trưng. Là một phần của Quần thể Khu du lịch Hạ Long - Bái Tử Long, Hạ Long mang đến cho du khách trải nghiệm tuyệt vời trong một không gian tự nhiên độc đáo, nơi đất và biển hòa quyện tạo nên một bức tranh thiên nhiên tuyệt vời.</span></p>','<p>Hạ Long được UNESCO công nhận là Di sản Thế giới với hệ thống đá độc đáo và hình thành từ hàng triệu năm. Những hòn đảo đá và hang động lạ mắt như Hang Sửng Sốt, Hang Đầu Gỗ, và Hang Thien Cung là những điểm thăm quan không thể bỏ lỡ. Du khách có cơ hội thưởng thức cảnh đẹp huyền bí của Hạ Long thông qua các chuyến tham quan bằng thuyền truyền thống hoặc tàu du lịch sang trọng.</p><p>Bên cạnh vẻ đẹp tự nhiên, Hạ Long còn nổi tiếng với đội ngũ tàu cá độc đáo, mỗi chiếc tàu mang theo một cái tên độc đáo và đặc sản biển độc đáo. Du khách có thể thưởng thức các món hải sản tươi ngon ngay trên tàu và tận hưởng không khí trầm lắng của vịnh biển.</p><p>Khu vực xung quanh Hạ Long còn có các điểm du lịch thú vị như Vịnh Lan Hạ, khu du lịch Quan Lạn và Bãi Cháy. Du lịch Hạ Long không chỉ mang lại trải nghiệm về thiên nhiên tuyệt vời mà còn là cơ hội để hiểu rõ hơn về văn hóa dân dụ độc đáo của người dân nơi đây. Hạ Long - hòn ngọc viễn đông, là điểm đến mê hoặc và đầy kỳ vọng cho những ai yêu thích sự hòa quyện giữa con người và thiên nhiên.</p>','2023-12-14 20:26:00','2023-12-18 12:32:21',1234567890,0),(11,1234567890,'<p>Giới thiều về chuyến du lịch Cần Thơ</p>','<p><span style=\"color: rgb(55, 65, 81);\">Cần Thơ, thành phố lớn nhất và là trung tâm kinh tế của miền Tây Nam Bộ Việt Nam, nổi tiếng với sự pha trộn độc đáo giữa văn hóa truyền thống và sự hiện đại sôi động. Khám phá Cần Thơ là hành trình đưa du khách vào thế giới của những con kênh rợp cỏ xanh mướt, những cây cầu nổi tiếng như Cầu Cần Thơ cùng với những di tích lịch sử và văn hóa độc đáo.</span></p>','<p>Du lịch Cần Thơ là cơ hội để trải nghiệm cuộc sống sôi động trên những con đường nước của miền Tây. Bắt đầu ngày mới bằng một chuyến thăm thị trấn Cần Thơ, du khách sẽ được tận hưởng không khí trong lành của các quán cà phê ven sông và thưởng thức hương vị đặc trưng của ẩm thực miền Tây.</p><p>Một điểm đặc sắc không thể bỏ qua là Chợ Nổi Cần Thơ - một trung tâm mua sắm truyền thống nằm giữa lòng sông Hậu. Đây không chỉ là nơi để mua sắm những sản phẩm độc đáo, mà còn là cơ hội để hiểu rõ hơn về cuộc sống và nền văn hóa của người dân miền Tây.</p><p>Du khách cũng không thể bỏ qua cơ hội tham gia vào những chuyến thuyền đêm trên sông, nơi họ có thể ngắm nhìn cảnh hoàng hôn tuyệt vời và thưởng thức các màn hình trình diễn nghệ thuật ánh sáng trên nước. Các điểm du lịch lịch sử như Bảo tàng Cần Thơ và di tích lịch sử Cần Giờ là những điểm đến thú vị dành cho những ai muốn khám phá lịch sử và văn hóa độc đáo của thành phố.</p><p>Du lịch Cần Thơ không chỉ là hành trình khám phá, mà còn là trải nghiệm tận hưởng văn hóa và đẹp tự nhiên tại miền Tây sông nước.</p>','2023-12-15 04:32:28','2023-12-18 12:19:25',1234567890,0),(12,1234567890,'<p>Khám Phá Vẻ Đẹp Bí Ẩn của Hạ Long Bay</p>','Tham gia chuyến phiêu lưu tuyệt vời này để khám phá một trong những kỳ quan tự nhiên tuyệt vời nhất thế giới - Hạ Long Bay. Được UNESCO công nhận là di sản thế giới, vịnh Hạ Long là một hòn ngọc nổi tiếng với những hòn đảo đá vôi lạ mắt, hang động kỳ diệu và cảnh đẹp biển hùng vĩ. Hãy tham gia chúng tôi trong hành trình này để trải nghiệm sự hòa mình vào vẻ đẹp bí ẩn của Hạ Long Bay.','Hạ Long Bay, thiên đường của những hòn đảo đá vôi hùng vĩ và những hang động kỳ diệu, nằm bên bờ biển phía bắc của Việt Nam, là một trong những điểm đến tuyệt vời nhất cho những người yêu thiên nhiên và muốn tận hưởng sự hòa mình vào vẻ đẹp bí ẩn của biển cả.<br>Hạ Long Bay có hơn 1.600 hòn đảo, mỗi hòn mang đến một câu chuyện riêng biệt với những dãy núi đá vôi hiên ngang, mọc lên từ biển như những tác phẩm nghệ thuật tự nhiên. Nước biển xanh ngắt, trong veo, tạo nên bức tranh huyền bí và quyến rũ. Những bức tượng đá tự nhiên khác nhau, từ hình con rồng, hình chú voi đến những ngọn đèn cổ thụ, tạo nên một thế giới đáng kinh ngạc và độc đáo.<br>Các hang động lớn nhỏ trải dài khắp vịnh, mỗi hang mang đến những bí mật riêng tư của nó. Các hành trình thuyền kayak sẽ đưa bạn qua những con ngõ đáng kinh ngạc, nơi ánh sáng từ mặt trời chiếu qua tạo nên những bức tranh ánh sáng và bóng tối tuyệt vời. Bạn cũng có cơ hội thăm thú vị khu dự trữ sinh quyển Hòn Gai, nơi quần thể động vật biển phong phú và đa dạng đang sinh sống.<br>Hạ Long Bay không chỉ là một địa điểm du lịch nổi tiếng, mà còn là một trải nghiệm tâm linh, nơi bạn có thể tận hưởng hòa mình vào vẻ đẹp tuyệt vời của thiên nhiên và cảm nhận sự tĩnh lặng và huyền bí của biển cả. Chuyến du lịch đến Hạ Long Bay là một hành trình khám phá không ngừng, nơi bạn sẽ đắm chìm trong vẻ đẹp huyền bí và bình yên của thiên nhiên tạo dựng.','2023-12-16 07:57:02','2023-12-18 02:18:30',1234567890,0);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prices` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `Adult_price` int DEFAULT NULL,
  `Children_price` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prices`
--

LOCK TABLES `prices` WRITE;
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
INSERT INTO `prices` VALUES (1,380000,350000),(2,600000,580000),(3,4290000,3220000),(4,1000000,1000000),(5,2000000,2000000),(6,100000,90000),(7,6000000,6000000),(8,2000000,2000000),(9,843000,843000),(10,400000,400000),(11,700000,700000),(12,500000,500000),(13,2000000,2000000),(14,200000,200000),(15,2500000,2500000),(16,450000,450000),(17,3000,3000),(18,6900000,6900000),(19,6990000,6990000),(20,2500000,2500000),(21,3000000,3000000),(22,2000000,2000000),(23,3200000,3200000),(24,2500000,2500000),(25,2000000,2000000),(26,2000000,2000000),(27,1000000,1000000),(28,800000,800000),(29,900000,900000),(30,900000,900000),(31,750000,750000),(32,800000,800000),(33,900000,900000),(34,990000,990000),(35,800000,800000);
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `Id` varchar(10) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES ('ADMIN','Administor'),('ADMIN_API','Admin API'),('EMPLOYEE','Employee'),('USER','User default');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Không công khai'),(2,'Công khai'),(3,'Hủy bỏ');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_dates`
--

DROP TABLE IF EXISTS `tour_dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_dates` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `TourID` bigint DEFAULT NULL,
  `StatusID` bigint DEFAULT NULL,
  `Initiate_date` datetime DEFAULT NULL,
  `End_date` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `StatusID` (`StatusID`),
  KEY `TourID` (`TourID`),
  CONSTRAINT `tour_dates_ibfk_1` FOREIGN KEY (`StatusID`) REFERENCES `status` (`Id`),
  CONSTRAINT `tour_dates_ibfk_2` FOREIGN KEY (`TourID`) REFERENCES `tours` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_dates`
--

LOCK TABLES `tour_dates` WRITE;
/*!40000 ALTER TABLE `tour_dates` DISABLE KEYS */;
INSERT INTO `tour_dates` VALUES (1,1,2,'2023-12-14 00:00:00','2023-12-16 00:00:00'),(2,2,2,'2024-01-15 00:00:00','2024-01-25 00:00:00'),(3,1,2,'2024-01-15 00:00:00','2024-01-24 00:00:00'),(4,3,2,'2023-12-12 00:00:00','2023-12-14 00:00:00'),(5,4,2,'2023-12-12 00:00:00','2023-12-14 00:00:00'),(6,5,2,'2023-12-12 00:00:00','2023-12-14 00:00:00'),(7,6,2,'2024-01-15 00:00:00','2024-01-25 00:00:00'),(8,7,2,'2024-01-15 00:00:00','2024-01-25 00:00:00'),(10,10,2,'2024-12-12 00:00:00','2024-12-15 00:00:00'),(11,1,2,'2023-12-18 00:00:00','2023-12-20 00:00:00'),(14,1,3,'2023-12-11 00:00:00','2023-12-30 00:00:00'),(15,15,2,'2023-12-19 00:00:00','2023-12-20 00:00:00'),(16,15,2,'2023-12-09 00:00:00','2023-12-09 00:00:00'),(17,6,2,'2023-12-22 00:00:00','2023-12-23 00:00:00'),(21,2,1,'2024-02-10 00:00:00','2024-02-23 00:00:00'),(22,16,2,'2023-12-23 00:00:00','2023-12-23 00:00:00'),(23,17,2,'2023-12-24 00:00:00','2023-12-25 00:00:00'),(24,18,3,'2023-12-23 00:00:00','2023-12-23 00:00:00'),(25,5,3,'2023-12-24 00:00:00','2023-12-26 00:00:00'),(26,19,2,'2023-12-24 00:00:00','2023-12-27 00:00:00'),(27,20,2,'2023-12-25 00:00:00','2023-12-28 00:00:00'),(30,22,2,'2023-12-25 00:00:00','2023-12-27 00:00:00'),(31,23,2,'2023-12-26 00:00:00','2023-12-28 00:00:00'),(32,22,2,'2023-12-28 00:00:00','2023-12-30 00:00:00'),(33,24,2,'2023-12-25 00:00:00','2023-12-28 00:00:00'),(34,25,2,'2023-12-25 00:00:00','2023-12-28 00:00:00'),(35,27,2,'2023-12-25 00:00:00','2023-12-28 00:00:00'),(36,28,2,'2023-12-26 00:00:00','2023-12-29 00:00:00'),(37,26,2,'2023-12-28 00:00:00','2023-12-30 00:00:00'),(38,29,2,'2023-12-25 00:00:00','2023-12-27 00:00:00'),(39,29,1,'2023-12-28 00:00:00','2023-12-30 00:00:00'),(40,30,2,'2023-12-25 00:00:00','2023-12-26 00:00:00'),(41,31,2,'2023-12-25 00:00:00','2023-12-25 00:00:00'),(42,31,2,'2023-12-26 00:00:00','2023-12-26 00:00:00'),(43,31,2,'2023-12-27 00:00:00','2023-12-27 00:00:00'),(44,32,2,'2023-12-25 00:00:00','2023-12-25 00:00:00'),(45,32,2,'2023-12-26 00:00:00','2023-12-26 00:00:00'),(47,33,2,'2023-12-25 00:00:00','2023-12-25 00:00:00'),(48,34,2,'2023-12-25 00:00:00','2023-12-25 00:00:00'),(49,35,2,'2023-12-25 00:00:00','2023-12-25 00:00:00'),(50,36,2,'2023-12-25 00:00:00','2023-12-25 00:00:00'),(51,37,2,'2023-12-25 00:00:00','2023-12-25 00:00:00'),(52,38,2,'2023-12-25 00:00:00','2023-12-25 00:00:00'),(53,39,2,'2023-12-25 00:00:00','2023-12-25 00:00:00');
/*!40000 ALTER TABLE `tour_dates` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `tour_plan`
--

DROP TABLE IF EXISTS `tour_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_plan` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `Tour_Date_ID` bigint DEFAULT NULL,
  `TransportID` bigint DEFAULT NULL,
  `Start_name` varchar(50) DEFAULT NULL,
  `Start_address` text,
  `Start_time` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Tour_Date_ID` (`Tour_Date_ID`),
  KEY `TransportID` (`TransportID`),
  CONSTRAINT `tour_plan_ibfk_1` FOREIGN KEY (`Tour_Date_ID`) REFERENCES `tour_dates` (`Id`),
  CONSTRAINT `tour_plan_ibfk_2` FOREIGN KEY (`TransportID`) REFERENCES `transports` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_plan`
--

LOCK TABLES `tour_plan` WRITE;
/*!40000 ALTER TABLE `tour_plan` DISABLE KEYS */;
INSERT INTO `tour_plan` VALUES (1,1,1,'Start Location 1','Start Address 1','2023-12-01 08:00:00'),(2,2,2,'Start Location 2','Start Address 2','2024-02-15 09:00:00'),(3,4,2,'Start Location 3','Start Address 3','2024-03-15 09:00:00'),(4,3,2,'Start Location 1','Start Address 2','2024-01-17 13:00:00'),(5,3,1,'Ha Long','Ha Long ','2023-04-15 09:00:00'),(6,5,1,'Start Location 5','Start Location 5','2024-02-15 09:00:00'),(7,6,1,'Start Location 5','Start Location 5','2024-02-15 09:00:00'),(8,7,1,'Start Location 5','Start Location 5','2024-02-15 09:00:00'),(9,8,2,'Start Location 5','Start Location 5','2024-02-15 09:00:00'),(11,10,1,'Cần Thơ ','509 Trần Hưng Đạo ','2023-12-12 21:40:00'),(13,14,2,'fefwe','332','2023-12-29 03:56:00'),(16,21,1,'Quy Nhơn','Nguyễn Văn Cừ','2024-02-09 18:27:00'),(17,22,2,'cần thơ','Thành Phố Cần Thơ ','2023-12-22 20:38:00'),(18,23,2,'Mũi Cà Mau ','Tỉnh Cà Mau','2023-12-23 03:15:00'),(19,23,1,'Khu du lịch Khai Long ','Tỉnh Cà Mau','2023-12-24 03:16:00'),(20,24,1,'Khu A','Tỉnh Cà Mau','2023-12-23 00:30:00'),(21,25,1,'Cần Thơ ','509 Trần Hưng Đạo ','2023-12-24 22:41:00'),(22,26,12,'Cần Thơ ','509 Trần Hưng Đạo ','2023-12-24 22:51:00'),(23,26,12,'Cần Thơ ','Bến Ninh Kiều','2023-12-26 22:51:00'),(24,27,2,'Cần Thơ','số 123, Cái Răng','2023-12-25 08:00:00'),(25,27,1,'Cần thơ','số 245','2023-12-26 08:00:00'),(26,27,12,'Cần Thơ','số 345','2023-12-28 06:01:00'),(27,3,1,'Cần Thơ','Cần Thơ số 345','2023-04-14 09:00:00'),(30,30,2,'Phú Quốc ','An Thới, Phú Quốc, An Thoi, Phú Quốc, Việt Nam','2023-12-25 08:00:00'),(31,30,14,'KHÁM PHÁ NAM ĐẢO PHÚ QUỐC ',' LẶN NGẮM SAN HÔ - CHECK IN ĐỊA TRUNG HẢI - SUNSET TOWN','2023-12-26 07:00:00'),(32,30,14,'MUA SẮM – CHIA TAY PHÚ QUỐC','An Thới, Phú Quốc, Việt Nam ','2023-12-27 07:00:00'),(33,31,13,'TP. HCM - PHÚ QUỐC','BÃI SAO - THỊ TRẤN HOÀNG HÔN','2023-12-26 07:00:00'),(34,31,12,'VINPEARL SAFARI PHÚ QUỐC','GRAND WORLD - VINWONDERS - CUNG ĐIỆN HẢI DƯƠNG','2023-12-27 07:00:00'),(35,31,12,'MUA SẮM - CHIA TAY PHÚ QUỐC','An Thới, Phú Quốc, Việt Nam ','2023-12-28 07:05:00'),(36,32,13,' Phú Quốc','An Thới, Phú Quốc, An Thoi, Phú Quốc, Việt Nam','2023-12-28 08:00:00'),(37,32,14,'KHÁM PHÁ NAM ĐẢO PHÚ QUỐC','LẶN NGẮM SAN HÔ - CHECK IN ĐỊA TRUNG HẢI - SUNSET TOWN','2023-12-29 07:00:00'),(38,32,14,'MUA SẮM – CHIA TAY PHÚ QUỐC','An Thới, Phú Quốc, Việt Nam','2023-12-30 07:00:00'),(39,33,12,'TP.HCM - TP. ĐÀ LẠT','141 Bùi Thị Xuân, thành phố Đà Lạt','2023-12-25 20:00:00'),(40,33,12,'TEA RESORT THÁC PRENN','Khu du lịch Đà Lạt','2023-12-26 07:00:00'),(41,33,12,'NÔNG TRẠI CÚN - CÁNH ĐỒNG HOA CẨM TÚ CẦU','Khu du lịch Đà Lạt ','2023-12-27 07:00:00'),(42,33,12,'MÊ LINH COFFEE GARDEN','Khu du lịch Đà Lạt ','2023-12-28 07:00:00'),(43,34,12,'TP.HỒ CHÍ MINH - ĐÀ LẠT','Khu du lịch Đà Lạt ','2023-12-25 20:30:00'),(44,34,12,'THIÊN ĐƯỜNG SĂN MÂY - ĐỒI CHÈ CẦU ĐẤT','Khu du lịch Đà Lạt ','2023-12-26 05:00:00'),(45,34,12,'THÁC DATANLA - PHIM TRƯỜNG HAPPY HILL','Khu du lịch Đà Lạt ','2023-12-27 07:00:00'),(46,34,12,'MÊ LINH COFFEE GARDEN ','Khu du lịch Đà Lạt ','2023-12-28 07:00:00'),(47,35,12,'TPHCM - BÌNH THUẬN - KHÁNH HÒA','Khu du lịch Nha Trang','2023-12-25 06:00:00'),(48,35,12,'BIỂN BÃI DÀI - CITY NHA TRANG - VINWONDERS ','Khu du lịch Nha Trang ','2023-12-26 07:10:00'),(49,35,12,'VỊNH NHA TRANG - KDL CON SẺ TRE','Khu du lịch Nha Trang ','2023-12-27 07:00:00'),(50,35,12,'CHỢ ĐẦM - CHIA TAY NHA TRANG','Khu du lịch Nha Trang ','2023-12-28 07:00:00'),(51,36,12,'TPHCM - BÌNH THUẬN - KHÁNH HÒA','Khu du lịch Nha Trang ','2023-12-26 20:30:00'),(52,36,12,'BIỂN BÃI DÀI - LÀNG YẾN MAI SINH','Khu du lịch Nha Trang ','2023-12-27 07:30:00'),(53,36,12,'VỊNH SAN HÔ - TẮM BÙN KHOÁNG NÓNG','Khu du lịch Nha Trang ','2023-12-28 07:30:00'),(54,36,12,'CHỢ ĐẦM - CHIA TAY NHA TRANG','Khu du lịch Nha Trang ','2023-12-29 07:30:00'),(55,37,12,'Thị Trấn Sapa','Thị Trấn Sapa','2023-12-28 05:00:00'),(56,38,12,'Khám Phá Thiên Nhiên và Văn Hóa Cà Mau','Cà Mau','2023-12-25 07:00:00'),(57,38,12,'Khám Phá Đời Sống Vùng Đất Cà Mau','Cà Mau ','2023-12-26 07:00:00'),(58,40,12,'TP. HCM - TIỀN GIANG - CẦN THƠ','Cần Thơ ','2023-12-25 05:00:00'),(59,40,2,'CHỢ NỔI CÁI RĂNG','Cần Thơ ','2023-12-26 05:00:00'),(60,37,12,'Thăm Dinh Thự Imperial và Trở Về ','Dinh Thự Imperial','2023-12-29 07:00:00'),(61,41,12,'Cần Thơ ','Tây Đô, Cần Thơ ','2023-12-25 05:00:00'),(62,42,12,'Cần Thơ ','Cần Thơ ','2023-12-26 05:00:00'),(63,43,12,'Cần Thơ ','Cần Thơ ','2023-12-27 05:00:00'),(64,44,1,'Hà Nội','Hà Nội ','2023-12-25 07:00:00'),(65,45,1,'Hà Nội','Hà Nội','2023-12-26 07:00:00'),(66,47,1,'CHÙA HƯƠNG ','Hà Nội ','2023-12-25 08:00:00'),(67,48,1,'Huế ','Huế','2023-12-25 18:00:00'),(68,49,1,'Cố Đô Huế','Huế ','2023-12-25 07:30:00'),(69,50,1,'Huế ','Huế ','2023-12-25 06:00:00'),(70,51,1,'Rừng Dừa 7 Mẫu','Đà Nẵng','2023-12-25 07:30:00'),(71,52,1,'Thánh Địa Mỹ Sơn','Đà Nẵng','2023-12-25 08:00:00'),(72,53,1,'Cù Lao Chàm - Bãi Ông','Đà Nẵng','2023-12-25 07:30:00');
/*!40000 ALTER TABLE `tour_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_plan_detail`
--

DROP TABLE IF EXISTS `tour_plan_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_plan_detail` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `Tour_Plan_ID` bigint DEFAULT NULL,
  `Description` text,
  `Start_time` time DEFAULT NULL,
  `End_time` time DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Tour_Plan_ID` (`Tour_Plan_ID`),
  CONSTRAINT `tour_plan_detail_ibfk_1` FOREIGN KEY (`Tour_Plan_ID`) REFERENCES `tour_plan` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_plan_detail`
--

LOCK TABLES `tour_plan_detail` WRITE;
/*!40000 ALTER TABLE `tour_plan_detail` DISABLE KEYS */;
INSERT INTO `tour_plan_detail` VALUES (1,1,'Plan Detail 1','08:00:00','12:00:00'),(2,2,'Plan Detail 2','09:00:00','13:00:00'),(4,11,'Tắm biển, đua thuyền ','22:41:00','22:48:00'),(5,4,'aaa','14:55:00','17:55:00'),(8,13,'aaaaab53453','07:50:00','18:53:00'),(11,18,'Tham quan chụp ảnh ','10:16:00','14:16:00'),(12,19,'Đi chơi các trò chơi ở khu du lịch ','10:17:00','12:17:00'),(13,20,'Đi ăn sáng tại nhà hàng','07:30:00','08:30:00'),(14,22,'Khám phá những đặc sản của Cần Thơ ','22:55:00','23:30:00'),(15,23,'Chụp ảnh lưu niệm ','23:03:00','23:50:00'),(16,2,'Chụp ảnh lưu niệm ','23:03:00','23:50:00'),(17,24,'Ăn sáng trên tàu','08:05:00','09:30:00'),(18,24,'Đi dạo chợ Cái Răng','14:00:00','16:00:00'),(19,25,'Ăn sáng','08:15:00','09:45:00'),(20,25,'Tiếp tục tham quan chợ nổi','10:00:00','16:15:00'),(21,26,'Ăn sáng','06:01:00','07:10:00'),(22,26,'Trải nghiệm cà phê vợt miền nam ','07:11:00','09:00:00'),(23,26,'Ngắm hoàng hôn trên cầu Cái Răng','17:00:00','18:00:00'),(26,30,'Sáng: HDV công ty đón khách tại Ga đi nội địa – Sân bay Quốc tế Tân Sơn Nhất, hỗ trợ Đoàn làm thủ tục đáp chuyến bay đi Phú Quốc theo giờ đã chọn. Đến nơi, xe và Hướng dẫn viên địa phương đón Quý khách đưa đoàn đi tham quan:  Cơ sở sản xuất rượu vang sim (loại vang riêng của đảo): tại đây du khách có thể tìm hiểu quy trình sản xuất rượu sim Phú Quốc như thế nào, có điểm gì khác biệt mà sao lại cho ra những chai rượu thực sự “xuất sắc”, bên cạnh đó còn có thể mua quà về biếu tặng người thân. Vườn tiêu Phú Quốc là địa điểm du lịch được nhiều du khách, đặc biệt là giới trẻ yêu thích nhờ sở hữu những hàng tiêu xanh mướt, những lối nhỏ chạy dọc như mê cung cùng với vô vàn trải nghiệm độc đáo mà bạn sẽ phải nuối tiếc nếu bỏ qua trên hành trình du ngoạn đảo ngọc xinh đẹp của mình. Dinh Cậu, Dinh Bà biểu tượng đặc trưng về vùng đất tâm linh của Phú Quốc. Ngoài ra, nhờ vào vị thế đắc địa nằm trên ghềnh đá hướng ra biển nên Dinh Cậu sở hữu cảnh sắc hùng vĩ, hưởng trọn không khí biển mát mẻ, cực kỳ dễ chịu.','08:00:00','10:00:00'),(27,30,'Trưa: Đoàn dùng bữa trưa tại nhà hàng, về khách sạn nhận phòng nghỉ ngơi.','11:00:00','14:00:00'),(28,30,'Chiều: Xe và HDV đưa đoàn khởi hành đến Bắc đảo Phú Quốc: Khám phá \"Châu Âu thu nhỏ\" Grand World - \"Thành phố không ngủ\". (Không tính phí vào cổng - Chi phí vui chơi tự túc) - Tham quan Kiến trúc nhà Tre độc đáo - Khu mái Vòm ánh sáng đổi màu độc đáo Clarke Quay - Khám phá Công viên Urban Park:  Quy tụ nhiều tác phẩm nghệ thuật độc đáo, mang đậm nét lãng mạn, cổ điễn, đậm chất Ý. - Ngắm dòng sông Venice phong cách Italia - Tháp hẹn hò - Thưởng thức show diễn Tinh hoa Việt Nam – Show diễn triệu đô ví như bức tranh hoàn hảo vẽ lại hành trình \"xuyên không\" ngược thời gian khám phá tinh hoa đời sống cổ xưa của người Việt. (Giá vé tự túc) Thưởng thức Show nhạc nước vô cùng hoành tráng và vô vàn cảm xúc tuyệt vời tại kênh đào Grand World.','14:00:00','17:00:00'),(29,30,'Tối: Quý khách dùng bữa tối tự túc.','18:00:00','20:52:00'),(30,30,'21h00: Xe đưa đoàn về lại trung tâm thị trấn Dương Đông.  Nghỉ đêm tại Phú Quốc','21:00:00','21:20:00'),(31,31,'Sáng: Quý khách dậy sớm ngắm cảnh bình minh trên Đảo Ngọc, dùng điểm tâm sáng tại khách sạn. Xe và Hướng dẫn viên đón Qúy khách bắt đầu khám phá Nam đảo:  Khu di tích lịch sử Nhà Tù Phú Quốc: Được mệnh danh là địa ngục trần gian, nơi đã từng trải qua hai thời kỳ thực dân Pháp và đế quốc Mỹ. Xe đưa Qúy khách đến cảng biển, lên tàu và bắt đầu cuộc trải nghiệm hành trình Câu cá lặn ngắm san hô trên tàu. Qúy khách được cung cấp thiết bị câu cá (dây câu, mồi) và được trang bị áo phao, kính lặn, ống thở khi tham gia lặn biển ngắm san hô. Quý khách trải nghiệm bữa ăn trên tàu. Bắt đầu với chương trình Đi bộ dưới đáy biển, ngắm nhìn những rạng san hô và những chú cá đa dạng màu sắc và chụp những bức hình/quay những video clip về làm kỉ niệm, sống ảo. (Chi phí tự túc).','07:05:00','11:10:00'),(32,31,'Chiều: Tàu di chuyển về lại cảng, tiếp đó tham quan:  Thăm quan và viếng Chùa Hộ Quốc (Thiền Viện Trúc Lâm Hộ Quốc): Đây cũng là một địa điểm tham quan tâm linh mới của Phú Quốc. Check-in Địa Trung Hải – Sunset Town (Thị Trấn Hoàng Hôn) chạm tới sự tinh xảo ở mọi góc nhìn. Với lối kiến trúc Địa Trung Hải nhưng không kém phần sang trọng, tất cả các công trình biểu tượng tại đây đều mang lại cho du khách cảm nhận như lạc vào một châu Âu thu nhỏ. Sự chăm chút tỉ mỉ của chủ đầu tư trong từng công trình, các chi tiết giả cổ cầu kỳ hoặc những tấm áo mới đầy màu sắc như: quảng trường con Sò, đài phun nước Trevi, bút đá tháp Obelisk, ... Cầu Hôn – Kiss Bridge được thiết kế riêng dựa trên đặc tính về địa hình, thổ nhưỡng của vùng đất này. Nhìn từ xa, cây cầu như một dải lụa giữa đại dương lam ngọc gồm hai phần vươn mình ôm trọn bờ cát trắng, hướng đến nhau, hợp vào làm một thể thống nhất nhưng không chạm nhau, ví như cảm giác rung động của hai người yêu nhau trước nụ hôn lãng mạn. Quý khách có thể đứng từ bên bờ chụp toàn cảnh KISS BRIDGE khi ánh hoàn hôn vừa buông xuống (tự túc chi phí nếu quý khách muốn lên cầu tham quan)','14:00:00','17:50:00'),(33,31,'Tối:  Quý khách dùng cơm tối. Tự do tham quan Chợ Đêm.','18:00:00','21:00:00'),(34,32,'Sáng: Quý khách dùng điểm tâm sáng Buffet tại khách sạn. Sau đó, tắm biển tự do hoặc nghỉ ngơi tự do tại khách sạn.','07:05:00','09:00:00'),(35,32,'Trưa: Quý khách làm thủ tục trả phòng khách sạn. Đoàn tới nhà hàng dùng bữa trưa.  Xe đưa đoàn đi tham quan:  Cơ sở chế biến nước Mắm Phú Quốc: Quý khách tham quan nhà thùng lâu đời và tìm hiểu về quy trình chế biến nước mắm cá cơm truyền thống lâu đời của người dân Phú Quốc. Quý khách có thể mua về làm quà tặng hoặc dùng cho việc nấu ăn trong gia đình hằng ngày. Khu nuôi cấy Ngọc Trai: Một trong những nét đặc trưng mà du khách không thể bỏ qua khi đến với Phú Quốc. Quý khách được tìm hiểu về quy trình nuôi cấy ngọc trai, được tận mắt chứng kiến quá trình mỗ trai lấy ngọc và có cơ hội sỡ hữu những sản phẩm ngọc trai chính hiệu mang đến sự may mắn và thịnh vượng.','09:05:00','13:30:00'),(36,32,'Chiều: Đến giờ hẹn xe và HDV đưa Quý khách ra sân bay bay về lại TPHCM. Kết thúc chương trình Phú Quốc 3 ngày 2 đêm và hẹn gặp lại du khách trong chuyến hành trình tiếp theo.','14:00:00','16:00:00'),(40,33,'Sáng: HDV đón khách tại Sân bay Tân Sơn Nhất làm thủ tục bay đi Phú Quốc. Đến nơi Xe và HDV ở Phú Quốc sẽ đón quý khách đưa đoàn về lại trung tâm Phú Quốc. Đoàn dùng điểm tâm sáng tại nhà hàng sau đó tham quan:  Khu du lịch Suối Tranh: Một trong những dòng suối đẹp như bức tranh mà thiên nhiên đã vẽ và ban tặng cho Phú Quốc. Dinh Cậu – Dinh Bà: Biểu tượng tín ngưỡng của người dân hải đảo (nơi họ tìm đến khấn nguyện cho mỗi chuyến ra khơi).','07:05:00','12:00:00'),(41,33,'Trưa: Đoàn dùng bữa trưa tại nhà hàng, sau đó về khách sạn nhận phòng nghỉ ngơi.  15h00: Đến giờ hẹn xe và HDV đưa đoàn đi:  Bãi Sao: Một trong những bãi biển với làn nước xanh biếc, bở cát trắng mịn nổi tiếng tại Phú Quốc. Đến Bãi Sao, quý khách tự do nghỉ ngơi, vui chơi và tắm biển Thị trấn Hoàng Hôn – Sunset Town: Với lối kiến trúc Địa Trung Hải nhưng không kém phần sang trọng, tất cả các công trình biểu tượng tại đây đều mang lại cho du khách cảm nhận như lạc vào một châu Âu thu nhỏ. Sự chăm chút tỉ mỉ của chủ đầu tư trong từng công trình như: quảng trường con Sò, đài phun nước Trevi, bút đá tháp Obelisk, ... Cầu Hôn – Kiss Bridge: Được thiết kế riêng dựa trên đặc tính về địa hình, thổ nhưỡng của vùng đất này. Nhìn từ xa, cây cầu như một dải lụa giữa đại dương lam ngọc gồm hai phần vươn mình ôm trọn bờ cát trắng, hướng đến nhau, hợp vào làm một thể thống nhất nhưng không chạm nhau, ví như cảm giác rung động của hai người yêu nhau trước nụ hôn lãng mạn. Quý khách có thể đứng từ bên bờ chụp toàn cảnh Kiss Bridge khi ánh hoàn hôn vừa buông xuống (tự túc chi phí nếu quý khách muốn lên cầu tham quan)','14:00:00','17:00:00'),(42,33,'Tối: Sau bữa tối tại nhà hàng đoàn vui chơi tự do dạo chợ đêm Dương Đông để tận hưởng trọn vẹn hơn vẻ đẹp Phú Quốc về đêm.','18:30:00','22:00:00'),(43,34,'Sáng: Quý khách dùng điểm tâm sáng tại khách sạn.  08h00: Xe đưa đoàn đi về phía Bắc đảo tham quan:  Vinpearl Safari (Đã bao gồm vé tham quan) là mô hình công viên chăm sóc - bảo tồn động vật bán hoang dã đầu tiên và lớn nhất tại Việt Nam được xây dựng theo chuẩn safari thế giới. Vinpearl Safari Phú Quốc với diện tích lên đến 380ha, nơi đang bảo tồn 4500 cá thể, 1200 loài thực vật và 200 loài động vật: + Tận tay cho những chú hưu cao cổ thân thiện ăn hay chạm vào bộ lông mềm mượt của những chú vượn cáo tinh nghịch. + Trải nghiệm cảm giác \"thú ngắm người\" với hành trình xâm nhập bằng xe bus vào lãnh địa của chúa tể vùng hoang dã hay những loài động vật quý hiếm. + Và còn vô vàn trải nghiệm thú vị đang chờ đợi quý khách khám phá.','07:00:00','11:00:00'),(44,34,'Trưa: Đoàn nghỉ ngơi dùng bữa trưa tại nhà hàng.','11:00:00','13:00:00'),(45,34,'Tự do check-in khám phá Grand World Phú Quốc – thiên đường mua sắm, ẩm thực, vui chơi giải trí “không ngủ” tập hợp nhiều nét tinh hoa kiến trúc thế giới, nhiều show diễn thú vị. Khám phá Công Viên Urban Park: Quy tụ nhiều tác phẩm nghệ thuật độc đáo, mang đậm nét lãng mạn, cổ điễn, đậm chất Ý. Du Ngoạn Dòng Sông Venice (Ý) (chi phí tự túc) Khu phố đèn lồng Shanghai: Tọa lạc ngay cổng vào dự án, lấy cảm hứng thiết kế từ những con phố sầm uất của Thượng Hải, khu phố như một China Town thu nhỏ trên đảo Ngọc trù phú. Khu mái vòm ánh sáng đổi màu độc đáo phong cách Clarke Quay. Khu phố đi bộ với chợ đêm dân gian lấy ý tưởng từ khu Asiatique tại Thái Lan, khu phố đi bộ Mallorca phục vụ cho những nhu cầu vui chơi, giải trí… Show Tinh hoa Việt Nam là show diễn thực cảnh được dàn dựng kết hợp với công nghệ trình chiếu hiện đại, quy mô bậc nhất từ trước tới nay. Đại show trình diễn vào: 20:15 - 21:00 (chi phí tự túc) Biểu diễn nhạc nước diễn ra lúc 21:30 Các mini show sôi động: 08:00 - 19:00, 19:15 - 21:00 hàng ngày','14:00:00','17:00:00'),(46,34,'Tối: Quý khách tự do vui chơi và dùng bữa tối tự túc tại Grand World. Đến giờ hẹn xe đón quý khách về lại trung tâm.','18:00:00','23:00:00'),(47,35,'Sáng: Quý khách dùng điểm tâm sáng tại khách sạn. Sau đó, tắm biển tự do hoặc nghỉ ngơi tự do tại khách sạn.','07:05:00','10:05:00'),(48,35,'Trưa: Đoàn làm thủ tục trả phòng. Sau đó, đến nhà hàng dùng bữa trưa sau đó tham quan:  Cơ sở chế biến nước mắm Phú Quốc: Quý khách tham quan nhà thùng lâu đời và tìm hiểu về quy trình chế biến nước mắm cá cơm truyền thống lâu đời của người dân Phú Quốc. Quý khách có thể mua về làm quà tặng hoặc dùng cho việc nấu ăn trong gia đình hằng ngày. Khu nuôi cấy ngọc trai một trong những nét đặc trưng mà du khách không thể bỏ qua khi đến với Phú Quốc. Quý khách được tìm hiểu về quy trình nuôi cấy ngọc trai, được tận mắt chứng kiến quá trình mỗ trai lấy ngọc và có cơ hội sỡ hữu những sản phẩm ngọc trai chính hiệu mang đến sự may mắn và thịnh vượng. Tới giờ Xe và HDV đưa Quý khách ra sân bay bay về lại TP.HCM. Kết thúc chương trình Phú Quốc 3 ngày 2 đêm và hẹn gặp lại du khách trong chuyến hành trình tiếp theo.','11:05:00','15:05:00'),(49,36,'Sáng: HDV công ty đón khách tại Ga đi nội địa – Sân bay Quốc tế Tân Sơn Nhất, hỗ trợ Đoàn làm thủ tục đáp chuyến bay đi Phú Quốc theo giờ đã chọn. Đến nơi, xe và Hướng dẫn viên địa phương đón Quý khách đưa đoàn đi tham quan: Cơ sở sản xuất rượu vang sim (loại vang riêng của đảo): tại đây du khách có thể tìm hiểu quy trình sản xuất rượu sim Phú Quốc như thế nào, có điểm gì khác biệt mà sao lại cho ra những chai rượu thực sự “xuất sắc”, bên cạnh đó còn có thể mua quà về biếu tặng người thân. Vườn tiêu Phú Quốc là địa điểm du lịch được nhiều du khách, đặc biệt là giới trẻ yêu thích nhờ sở hữu những hàng tiêu xanh mướt, những lối nhỏ chạy dọc như mê cung cùng với vô vàn trải nghiệm độc đáo mà bạn sẽ phải nuối tiếc nếu bỏ qua trên hành trình du ngoạn đảo ngọc xinh đẹp của mình. Dinh Cậu, Dinh Bà biểu tượng đặc trưng về vùng đất tâm linh của Phú Quốc. Ngoài ra, nhờ vào vị thế đắc địa nằm trên ghềnh đá hướng ra biển nên Dinh Cậu sở hữu cảnh sắc hùng vĩ, hưởng trọn không khí biển mát mẻ, cực kỳ dễ chịu.','08:00:00','10:00:00'),(50,36,'Trưa: Đoàn dùng bữa trưa tại nhà hàng, về khách sạn nhận phòng nghỉ ngơi.','11:00:00','13:00:00'),(51,36,'Chiều: Xe và HDV đưa đoàn khởi hành đến Bắc đảo Phú Quốc: Khám phá \"Châu Âu thu nhỏ\" Grand World - \"Thành phố không ngủ\". (Không tính phí vào cổng - Chi phí vui chơi tự túc) - Tham quan Kiến trúc nhà Tre độc đáo - Khu mái Vòm ánh sáng đổi màu độc đáo Clarke Quay - Khám phá Công viên Urban Park: Quy tụ nhiều tác phẩm nghệ thuật độc đáo, mang đậm nét lãng mạn, cổ điễn, đậm chất Ý. - Ngắm dòng sông Venice phong cách Italia - Tháp hẹn hò - Thưởng thức show diễn Tinh hoa Việt Nam – Show diễn triệu đô ví như bức tranh hoàn hảo vẽ lại hành trình \"xuyên không\" ngược thời gian khám phá tinh hoa đời sống cổ xưa của người Việt. (Giá vé tự túc) Thưởng thức Show nhạc nước vô cùng hoành tráng và vô vàn cảm xúc tuyệt vời tại kênh đào Grand World.','14:10:00','17:10:00'),(52,36,'Tối: Quý khách dùng bữa tối tự túc.	21h00: Xe đưa đoàn về lại trung tâm thị trấn Dương Đông. Nghỉ đêm tại Phú Quốc','18:10:00','22:10:00'),(53,37,'Sáng: Quý khách dậy sớm ngắm cảnh bình minh trên Đảo Ngọc, dùng điểm tâm sáng tại khách sạn. Xe và Hướng dẫn viên đón Qúy khách bắt đầu khám phá Nam đảo: Khu di tích lịch sử Nhà Tù Phú Quốc: Được mệnh danh là địa ngục trần gian, nơi đã từng trải qua hai thời kỳ thực dân Pháp và đế quốc Mỹ. Xe đưa Qúy khách đến cảng biển, lên tàu và bắt đầu cuộc trải nghiệm hành trình Câu cá lặn ngắm san hô trên tàu. Qúy khách được cung cấp thiết bị câu cá (dây câu, mồi) và được trang bị áo phao, kính lặn, ống thở khi tham gia lặn biển ngắm san hô. Quý khách trải nghiệm bữa ăn trên tàu. Bắt đầu với chương trình Đi bộ dưới đáy biển, ngắm nhìn những rạng san hô và những chú cá đa dạng màu sắc và chụp những bức hình/quay những video clip về làm kỉ niệm, sống ảo. (Chi phí tự túc).','07:11:00','11:11:00'),(54,37,'Chiều: Tàu di chuyển về lại cảng, tiếp đó tham quan: Thăm quan và viếng Chùa Hộ Quốc (Thiền Viện Trúc Lâm Hộ Quốc): Đây cũng là một địa điểm tham quan tâm linh mới của Phú Quốc. Check-in Địa Trung Hải – Sunset Town (Thị Trấn Hoàng Hôn) chạm tới sự tinh xảo ở mọi góc nhìn. Với lối kiến trúc Địa Trung Hải nhưng không kém phần sang trọng, tất cả các công trình biểu tượng tại đây đều mang lại cho du khách cảm nhận như lạc vào một châu Âu thu nhỏ. Sự chăm chút tỉ mỉ của chủ đầu tư trong từng công trình, các chi tiết giả cổ cầu kỳ hoặc những tấm áo mới đầy màu sắc như: quảng trường con Sò, đài phun nước Trevi, bút đá tháp Obelisk, ... Cầu Hôn – Kiss Bridge được thiết kế riêng dựa trên đặc tính về địa hình, thổ nhưỡng của vùng đất này. Nhìn từ xa, cây cầu như một dải lụa giữa đại dương lam ngọc gồm hai phần vươn mình ôm trọn bờ cát trắng, hướng đến nhau, hợp vào làm một thể thống nhất nhưng không chạm nhau, ví như cảm giác rung động của hai người yêu nhau trước nụ hôn lãng mạn. Quý khách có thể đứng từ bên bờ chụp toàn cảnh KISS BRIDGE khi ánh hoàn hôn vừa buông xuống (tự túc chi phí nếu quý khách muốn lên cầu tham quan)','14:11:00','17:11:00'),(55,37,'Tối: Quý khách dùng cơm tối. Tự do tham quan Chợ Đêm.	','18:11:00','22:12:00'),(56,38,'	 Sáng: Quý khách dùng điểm tâm sáng Buffet tại khách sạn. Sau đó, tắm biển tự do hoặc nghỉ ngơi tự do tại khách sạn.','07:12:00','09:12:00'),(57,38,'Trưa: Quý khách làm thủ tục trả phòng khách sạn. Đoàn tới nhà hàng dùng bữa trưa. Xe đưa đoàn đi tham quan: Cơ sở chế biến nước Mắm Phú Quốc: Quý khách tham quan nhà thùng lâu đời và tìm hiểu về quy trình chế biến nước mắm cá cơm truyền thống lâu đời của người dân Phú Quốc. Quý khách có thể mua về làm quà tặng hoặc dùng cho việc nấu ăn trong gia đình hằng ngày. Khu nuôi cấy Ngọc Trai: Một trong những nét đặc trưng mà du khách không thể bỏ qua khi đến với Phú Quốc. Quý khách được tìm hiểu về quy trình nuôi cấy ngọc trai, được tận mắt chứng kiến quá trình mỗ trai lấy ngọc và có cơ hội sỡ hữu những sản phẩm ngọc trai chính hiệu mang đến sự may mắn và thịnh vượng.','09:12:00','11:12:00'),(58,38,'Chiều: Đến giờ hẹn xe và HDV đưa Quý khách ra sân bay bay về lại TPHCM. Kết thúc chương trình Phú Quốc 3 ngày 2 đêm và hẹn gặp lại du khách trong chuyến hành trình tiếp theo.','14:12:00','17:12:00'),(59,39,'Đêm 1: TP.HCM - TP. ĐÀ LẠT Tối 20h30, Xe và Hướng dẫn viên của Đất Việt Tour đón quý khách tại điểm hẹn, sắp xếp hành lý, gửi lời chào thân ái tới Quý khách. Xe khởi hành, bắt đầu hành trình Tour du lịch Đà Lạt - Tea Resort Thác Prenn - Nông Trại Cún - MeLinh Coffee3 ngày 3 đêm.  Quý khách nghỉ ngơi trên xe. ','20:30:00','23:55:00'),(60,40,'Sáng: Cùng đón bình minh trong không khí se lạnh của vùng cao nguyên, Đoàn có mặt tại Đà Lạt, vệ sinh cá nhân và dùng điểm tâm tại nhà hàng. Đoàn khám phá: Tea Resort Thác Prenn  Đầu tiên sau khi vào cổng, quý khách sẽ được xe điện đưa đón đi tham quan một vòng khu nghỉ dưỡng, ngay lập tức quý khách sẽ được đắm chìm trong muôn vàn góc ảnh tuyệt đẹp. Đặc biệt là trải nghiệm Đi bộ check-in xuyên lòng thác Prenn. Tắm biển ở độ cao 1.200m nghe có vẻ lạ nhưng đây chắc chắc sẽ là một trải nghiệm không thể nào quên với biển xanh - cát trắng - nắng vàng ấm áp không khác gì đang đi tắm biển thật. Quý khách trải nghiệm các trò chơi cảm giác mạnh như thảm bay, max air, hay ngắm toàn cảnh Tea Resort Prenn với vũ trụ bay 39M. Nếu đi cùng con trẻ, quý khách cũng có thể cùng con tham gia các trò chơi tại khu vui chơi trẻ em như đua xe mô tô, xem phim thực tế ảo 9D... Hoặc đối với những bạn thích không gian yên tĩnh thì có thể điều xe tham quan một vòng thác Prenn - đền thờ Âu Lạc','07:00:00','10:20:00'),(61,40,'Trưa: Dùng bữa trưa tại nhà hàng. Đoàn về lại trung tâm, nhận phòng khách sạn nghỉ ngơi.','11:00:00','13:30:00'),(62,40,'Chiều: Đoàn tiếp tục tham quan các địa điểm nổi tiếng tại thành phố ngàn hoa.  Quảng Trường Lâm Viên: Tọa lạc giữa \"trái tim\" của thành phố hoa, hướng ra hồ Xuân Hương, không chỉ mang đến không gian rộng lớn, thoáng mát với nhiều hoạt động giải trí mà Quảng Trường Lâm Viên còn ấn tượng với công trình nghệ thuật khổng lồ với khối bông hoa dã quỳ và khối nụ hoa được thiết kế bằng kính màu lạ mắt. Đừng quên lưu giữ lại cùng gia đình những bức ảnh thú vị này. Thiền Viện Trúc Lâm: Đến nơi đây, du khách như trút bỏ hết ưu tư, phiền muộn, thiện viện mang đến một cảnh quan thanh khiết tuyệt vời.Du khách dâng hương, cầu xin an bình, may mắn.Vẻ đẹp Phật giáo hài hòa cùng thiên nhiên và muôn sắc hoa. Rất nhiều loài hoa đẹp và quý hiếm như Sim Tím, bông Gòn úc, Phù Dung…khiến khung cảnh càng thêm thơ mộng.','14:00:00','17:30:00'),(63,40,'Tối: Qúy khách thay đổi khẩu vị tối bằng bữa tiệc Buffet Rau hoành tráng tại nhà hàng với hầu hết các loại rau sạch tại Đà Lạt. Đặc biệt, rau được dùng không giới hạn. Cách bài trí và phục vụ tại nhà hàng cũng khiến các thực khách khó tính nhất cũng phải hài lòng.  Quý khách tự do vui chơi, khám phá Đà Lạt với Chợ Đêm Âm Phủ, hãy sắm cho mình những chiếc khăn choàng và nón được đan từ những đôi bàn tay tài hoa nhưng không kém phần tỉ mỉ. Xung quanh chợ hoăc các khu phố, dễ dàng bắt gặp hình ảnh quay quần bên nhau cùng ly sữa nóng, chiếc bánh rán nóng hổi. Những món ăn dân dã mà đặc trưng rất Đà Lạt. ','18:00:00','22:00:00'),(64,41,'Sáng: Quý khách dùng điểm tâm sáng. Tiếp tục tham quan, khám phá:  Nông Trại Cún - Puppy Farm: Đến với Puppy Farm bạn sẽ được hòa mình trong thế giới đầy thú vị của những chú cún. Với diện tích rộng lớn nên nông trại cún Puppy Farm Đà Lạt không chỉ có là nơi nuôi những chú cún dễ thương mà ở đây còn có những cánh đồng hoa rộng lớn và vườn nông sản công nghệ cao: Vườn cà chua cherry đủ màu và đủ loại, Vườn dâu Tây treo công nghệ, Vườn dưa pepino (dưa hấu nam mỹ) Vườn cây nguyên sinh nhiệt đới , vườn sen đá + xương rồng đủ loại , Đồi hoa lavender, cánh bướm, Cẩm Tú cầu...v.v..... Đặt biệt hái dâu tại vườn với quy mô lớn (tự túc phí hái dâu) Nhà Thờ Domaine: được xây dựng với kiến trúc Châu Âu, nằm trên ngọn đồi Mai Anh tuyệt đẹp, nhà thờ là nơi không thể thiếu trong chuyến hành trình hấp dẫn này.','07:00:00','10:30:00'),(65,41,'Trưa: Quý khách dùng bữa trưa tại nhà hàng. Về khách sạn nghỉ ngơi.','11:00:00','13:45:00'),(66,41,'Chiều: Quý khách tham quan danh thắng Đà Lạt.  Ga Cổ Đà Lạt: là nhà ga tàu hỏa của thành phố Đà Lạt. Đây được xem là nhà ga lâu đời nhất ở Việt Nam và Đông Dương, Qúy khách có thể trải nghiệm Với tuyến đường 7 km, tàu sẽ đưa du khách khám phá phố núi. Tuy chạy tốc độ rất chậm và đầu tàu kêu to, thế nhưng, đây là nơi hấp dẫn của nhà ga phục vụ du khách tham quan ngắm cảnh trên đường đi. Cánh Đồng Hoa Cẩm Tú Cầu có nhiều Background với decor chú trọng vẻ đẹp của tự nhiên. Ngoài hoa trọng điểm là hoa CẨM TÚ CẦU có thêm hoa hướng dương, hoa nữ hoàng xanh… phục vụ nhu cầu đa dạng của quý khách. Bên cạnh đó là những tiểu cảnh đặc sắc như cầu tình yêu, vầng trăng cổ tích và nấc thang lên thiên đường,...Quý khách cũng được check - in Cầu Vàng phiên bản Đà Lạt tại đây Đà Lạt View Coffee: Nếu như cổng trời của chùa Linh Quy Pháp Ấn ở Bảo Lộc đã làm mưa gió trong suốt thời gian qua. Thì bây giờ không phải đi tới gần 200km mới được check in mà chỉ cần đi ngay tới Dalat View là bạn đã có thể làm được rồi, đã có những bức hình chụp với Cổng Trời Đà Lạt siêu hot. Điểm ấn tượng nhất là Cây cầu màu đỏ dài khoảng gần 40m với 1 vòng cung uốn lượn, giúp bạn thoả sức có được những bức ảnh lung linh.','14:00:00','17:45:00'),(67,41,'Tối: Đoàn dùng bữa tối tại nhà hàng sau đó về lại trung tâm Tp. Đà Lạt nghỉ ngơi, dạo chợ đêm Đà Lạt hoặc tự do tham gia trải nghiệm:.  Giao Lưu Cồng Chiêng Tây Nguyên bằng các tiết mục biểu diễn Cồng Chiêng của đồng bào, với ánh lửa bập bùng hòa theo lời ca điệu múa của các Sơn Nam, Sơn Nữ. Quý khách có dịp tìm hiểu về phong tục của người dân tộc K’ho cùng uống Rượu Cần, Ăn Thịt Nướng. Chụp ảnh lưu niệm cùng các nghệ sĩ đồng bào với trang phục đặc sắc.(Chi phí tự túc).','18:00:00','22:45:00'),(68,42,'Sáng: Quý khách dùng điểm tâm sáng và làm thủ tục trả phòng.  Chợ Đà Lạt - Du khách sẽ choáng ngợp bởi hàng ngàn loại rau củ, hàng trăm loại trái cây và đủ các loại hoa khoe sắc. Tiếng cười nói, tiếng trao đổi mua bán cùng dòng người thông thương đổ về đây. Tất cả tạo nên bức tranh thương mại sống động và vui vẻ. Bạn hãy chọn cho mình những món quà ý nghĩa tại đây nhé. Mê Linh Coffee Garden là quán cà phê có một không hai tại Đà Lạt, những ngôi nhà bằng gỗ và những con đường bằng gỗ được bao quanh bởi vườn cà phê xanh mướt cực quyến rũ, Mê Linh Coffee Garden còn rất biết cách chiều lòng hội mê sống ảo khi thiết kế vô vàn tiểu cảnh xịn sò, bonus vườn hoa quanh năm khoe sắc rực rỡ của Lavender, hoa hướng dương, hay những khung cảnh với vẻ đẹp không góc chết được “triệu view” của các tín đồ selfi: Cổng trời vô cực, con đường lồng chim, Trái Tim view hồ, ghế tình nhân,….Chụp hình với những chú Cún dễ thương, đáng yêu tại khu vực Công viên Chó và những người bạn…','07:00:00','10:30:00'),(69,42,'Trưa: Đoàn dừng chân dùng bữa trưa tại Bảo Lộc. Khởi hành về TP. Hồ Chí Minh','11:00:00','16:00:00'),(70,43,'TP.HỒ CHÍ MINH - ĐÀ LẠT Tối: 20h30, Xe và Hướng dẫn viên của Đất Việt Tour đón quý khách tại điểm hẹn, sắp xếp hành lý, gửi lời chào thân ái đến quý khách. Xe khởi hành, bắt đầu hành trình Tour du lịch Đà Lạt - Thiên đường săn mây 3 ngày 3 đêm.   Quý khách nghỉ ngơi trên xe.','20:30:00','23:59:00'),(71,44,'05h00: Đến Cầu Đất, đoàn đến với khu vực :  Thiên đường săn mây - Cầu Đất Panorama để đón bình mình lên, ngắm và chụp hình với những đám mây trắng bồng bềnh. Quý khách sẽ được thỏa sức check in với những tiểu cảnh đẹp mê người nơi đây. Ngoài ra, Quý khách cũng có thể thuê những bộ trang phục theo nhiều phong cách: Cổ trang, Mông Cổ…để chụp những bộ ảnh độc đáo (chi phí thuê trang phục tự túc). 06h30: Quý khách dùng điểm tâm sáng tại nhà hàng Panorama.  07h30: Tiếp tục khám phá những điểm tham quan hấp dẫn tại khu vực Cầu Đất:  Đồi chè Cầu Đất: Xanh bạt ngàn là điểm đến tiếp theo trong hành trình săn mây của chúng ta. Với độ cao 1650 mét so với mực nước biển cùng những dãy chè xanh tươi nối dài bất tận, đồi chè Cầu Đất đẹp đến ngỡ ngàng dưới làn sương sớm của bình mình chớm nở.  Check – in với Cánh đồng điện gió trên đồi chè xanh mát. Sau khi khám phá các điểm tham quan nổi tiếng tại khu vực Cầu Đất, đoàn di chuyển về trung tâm Thành Phố Đà Lạt. Đoàn ghé khu vực Trại Mát tham quan:  Chùa Linh Phước hay còn gọi là Chùa Ve Chai - Một trong những danh thắng nổi tiếng của Đà Lạt với công trình kiến trúc khảm sành đặc sắc. Từ những chén, đĩa, ấm, tách đập nhỏ ra và ghép chúng lại với nhau tạo thành một ngôi chùa độc đáo này. Chùa Linh Phước vừa là một nơi tôn giáo tín ngưỡng vừa là một địa điểm du lịch lý tưởng dành cho du khách.','05:00:00','10:30:00'),(72,44,'Trưa: Dùng bữa trưa tại nhà hàng. Đoàn về khách san nhận phòng nghỉ ngơi.','11:00:00','13:30:00'),(73,44,'Chiều: Đoàn tiếp tục tham quan các địa điểm nổi tiếng tại thành phố Đà Lạt.  Quảng Trường Lâm Viên: Tọa lạc giữa \"trái tim\" của thành phố hoa, hướng ra hồ Xuân Hương, không chỉ mang đến không gian rộng lớn, thoáng mát với nhiều hoạt động giải trí mà Quảng Trường Lâm Viên còn ấn tượng với công trình nghệ thuật khổng lồ với khối bông hoa dã quỳ và khối nụ hoa được thiết kế bằng kính màu lạ mắt. Đừng quên lưu giữ lại cùng gia đình những bức ảnh thú vị này. KDL Lá Phong – Khám phá một Nhật Bản đẹp ngỡ ngàng giữa lòng Đà Lạt. Trong khu du lịch Lá Phong trồng hơn 2000 cây lá Phong, khoảng 500 cây Anh Đào, 20.000 cây Tùng Bút. Có nhiều cây đã hơn 10 năm tuổi và hàng trăm các loại cây lá kim đặc hữu quý hiếm ở Đà Lạt.  Tới đây Quý khách được chiêm ngưỡng kiến trúc độc đáo của Nhà Trăm Mái với diện tích lên đến 300m2 và có tới 132 chiếc mái – địa điểm check in cực chất. Ngoài ra Nhà trống nằm ngay bên cạnh căn nhà mái được thiết kế trông như một chiếc trống siêu to khổng lồ. Bên trong được mô phỏng bằng những bức tranh độc đáo và lạ mắt thu hút những ai yêu thích nghệ thuật. Quán Cà phê Kokoro: nằm ở ngay bên cạnh hồ cá Koi. Quán cafe được thiết kế theo phong cách đơn giản với bức tường trắng in chữ Nhật Bản. Đây cũng chính là background siêu xinh để bạn có thể thỏa thích bấm máy chụp hình theo concept Nhật Bản thơ mộng. Hồ cá Koi đậm chất Nhật Bản: Chẳng phải ngẫu nhiên mà khu du lịch Rừng Lá Phong lại được ví von là \"Tiểu Nhật Bản\" ở Đà Lạt. Tại đây nuôi đến 230 chú cá Koi độc đáo, được lấy giống từ xứ sở hoa Anh Đào. Xung quanh hồ còn có những tiểu cảnh và cây cối giúp khung cảnh trở nên bắt mắt hơn. Từ hồ cá Koi bạn có thể phóng tầm mắt nhìn ra núi rừng Đà Lạt tuyệt đẹp không thể diễn tả bằng từ ngữ nào Tham quan vườn hồng – hồng treo gió: Quý khách chiêm ngưỡng những cây hồng nặng trĩu trái, quan khu vực làm hồng sấy, vườn hồng treo gió. Tại đây, quý khách còn có thể tham gia làm hồng sấy, hồng giòn, hồng treo gió và thưởng thức những món đặc sản ngon miệng chế biến từ trái hồng. Ngoài ra, bạn cũng có thể mua những món đặc sản ưng ý để dành tặng cho người thân, bạn bè…','14:00:00','17:30:00'),(74,44,'Tối: Quý khách thay đổi khẩu vị tối bằng bữa tiệc Buffet Rau hoành tráng tại nhà hàng với hầu hết các loại rau sạch tại Đà Lạt. Đặc biệt, rau được dùng không giới hạn. Cách bài trí và phục vụ tại nhà hàng cũng khiến các thực khách khó tính nhất cũng phải hài lòng.  Quý khách tự do vui chơi, khám phá Đà Lạt với Chợ Đêm Âm Phủ, hãy sắm cho mình những chiếc khăn choàng và nón được đan từ những đôi bàn tay tài hoa nhưng không kém phần tỉ mỉ. Xung quanh chợ hoăc các khu phố, dễ dàng bắt gặp hình ảnh quay quần bên nhau cùng ly sữa nóng, chiếc bánh rán nóng hổi. Những món ăn dân dã mà đặc trưng rất Đà Lạt.','18:00:00','23:00:00'),(75,45,'Sáng: Quý khách dùng điểm tâm sáng. Bắt đầu hành trình tham quan, khám phá TP. Đà Lạt:  Phim Trường Happy Hill: có vị trí đắc địa bên bờ hồ Tuyền Lâm mệnh danh “ trái tim” thành phố ngàn hoa, một bên là đồi thông xanh ngát và một bên là hồ nước trong xanh, tạo nên một khung cảnh thiên nhiên tuyệt đẹp, một bầu không khí vô cùng trong lành. Trong phim trường có nhiều góc sống ảo lạc lối, hút hồn như mạng nhện khổng lồ, vườn cúc họa mi, con đường hoa cẩm tú cầu, đảo trái tim, ghế gỗ, nhà trên cây, cầu gỗ, ngoài ra quý khách có thể thuê trang phục cổ trang để chụp hình sống ảo. (Thuê trang phục tự túc, giá tham khảo 120,000 – 150,000/ bộ). Khám phá Thác Datanla - là thác nước đẹp nhất và nổi tiếng nhất tại thành phố Đà Lạt. Thác Datanla với độ cao cao hơn 20m. Vị trí nằm giữa đèo Prenn và ở thượng nguồn nên dòng chảy của thác rất ổn định và nước trong hồ thì êm đềm quanh năm. Đến với thác Datanla, Quý khách còn có cơ hội trải nghiệm cảm giác tự điều khiển máng trượt xuyên qua rừng thông vô cùng hấp dẫn. (Chi phí máng trượt tự túc)','07:00:00','10:30:00'),(76,45,'Trưa: Quý khách dùng bữa trưa tại nhà hàng. Về khách sạn nghỉ ngơi.','11:00:00','13:30:00'),(77,45,'Chiều: Quý khách tham quan phía Bắc Cao Nguyên Đà Lạt.  Nhà thờ Domaine: được xây dựng với kiến trúc Châu Âu, nằm trên ngọn đồi Mai Anh tuyệt đẹp, nhà thờ là nơi không thể thiếu trong chuyến hành trình hấp dẫn này. Nông trại cún - Puppy Farm: Đến với Puppy Farm bạn sẽ được hòa mình trong thế giới đầy thú vị của những chú cún. Với diện tích rộng lớn nên nông trại cún Puppy Farm Đà Lạt còn có những cánh đồng hoa rộng lớn và vườn nông sản công nghệ cao: Vườn cà chua cherry đủ màu và đủ loại, Vườn dâu Tây treo công nghệ, Vườn dưa pepino (dưa hấu nam mỹ) Vườn cây nguyên sinh nhiệt đới, vườn sen đá + xương rồng đủ loại, Đồi hoa lavender, cánh bướm, Cẩm Tú cầu...v.v..... Đặt biệt hái dâu tại vườn với quy mô lớn (tự túc phí hái dâu)','14:00:00','17:00:00'),(78,45,'Tối: Đoàn dùng bữa tối tại nhà hàng, sau đó là chương trình tự do của quý khách.','18:00:00','23:00:00'),(79,46,'Sáng: Quý khách dùng điểm tâm sáng và làm thủ tục trả phòng.  Chợ Đà Lạt - Du khách sẽ choáng ngợp bởi hàng ngàn loại rau củ, hàng trăm loại trái cây và đủ các loại hoa khoe sắc. Tiếng cười nói, tiếng trao đổi mua bán cùng dòng người thông thương đổ về đây. Tất cả tạo nên bức tranh thương mại sống động và vui vẻ. Bạn hãy chọn cho mình những món quà ý nghĩa tại đây nhé. Đoàn khởi hành về TP.HCM, HDV đưa quý khách đến:  Mê Linh Coffee Garden: là quán cà phê có một không hai tại Đà Lạt, những ngôi nhà bằng gỗ và những con đường bằng gỗ được bao quanh bởi vườn cà phê xanh mướt cực quyến rũ, Mê Linh Coffee Garden còn rất biết cách chiều lòng hội mê sống ảo khi thiết kế vô vàn tiểu cảnh xịn sò, bonus vườn hoa quanh năm khoe sắc rực rỡ của Lavender, hoa hướng dương, hay những khung cảnh với vẻ đẹp không góc chết được “triệu view” của các tín đồ selfi: Cổng trời vô cực, con đường lồng chim, Trái Tim view hồ, ghế tình nhân,….Chụp hình với những chú Cún dễ thương, đáng yêu tại khu vực Công viên Chó và những người bạn…','07:00:00','22:00:00'),(80,46,'Trưa: Đoàn dừng chân dùng bữa trưa tại Bảo Lộc. Khởi hành về TP.HCM.','11:00:00','14:00:00'),(81,46,'Chiều: Về đến điểm đón ban đầu, chia tay và hẹn gặp lại Quý khách.','14:00:00','17:00:00'),(82,47,'Sáng: Xe và Hướng dẫn viên của Du Lịch Đất Việt đón quý khách tại điểm hẹn, sắp xếp hành lý. Xe khởi hành, bắt đầu hành trình Tour Du Lịch Nha Trang - KDL Con Sẻ Tre - Tiệc Bar Nổi - VinWonders 4 ngày 3 đêm.  Đến với địa phận tỉnh Đồng Nai, quý khách dừng chân dùng điểm tâm.','06:10:00','08:10:00'),(83,47,'Trưa: Đến với Bình Thuận, Quý khách dừng chân dùng bữa trưa. HDV đưa đoàn đi quan khu vực liên tỉnh Bình Thuận - Ninh Thuận, Quý khách được giới thiệu về phong cảnh, con người qua các địa danh. Đoàn dừng chân thư giãn và chụp hình với Biển Cà Ná.  Ngoạn cảnh cánh đồng muối Cà Ná được mệnh danh là “kho muối” lớn nhất nước với những hạt muối đậm đà là một trong những nguyên liệu làm ra loại mắm thơm ngon. Đến tham quan làng muối Cà Ná, bạn sẽ được tận mắt chứng kiến cách người dân sản xuất, làm muối cho hạt sạch, trắng đẹp, nơi đây còn được giới chuyên môn đánh giá là loại muối tốt nhất ở Đông Nam Á. Tiếp tục hành trình đưa Quý khách đến với thành phố biển Nha Trang, nhận phòng và nghỉ ngơi.','11:10:00','13:10:00'),(84,47,'Tối: Quý khách dùng cơm tối tại nhà hàng.  Tại thành phố Nha Trang, từ lâu đã nổi tiếng với các một loạt các hoạt động về đêm níu giữ du khách đến đây. Bạn có thể tận hưởng không khí trong lành của biển cả ven đường Trần Phú, hoặc vô tư mua sắm tại các cung đường khu Chợ Đêm, hay thả hồn du dương theo tiếng nhạc của các bạn nghệ sĩ đường phố. Tất cả tạo nên một bức tranh về thành phố náo nhiệt hấp dẫn du khách.','18:10:00','23:10:00'),(85,48,'Sáng: Đoàn ăn sáng. Xe đưa Quý khách tham quan các thắng cảnh:  Bãi Dài: Với bãi cát dài và mịn màng, khi thủy triều rút, du khách sẽ không khỏi ngạc nhiên khi thấy hiện ra trước mắt là cả một bờ cát trắng trải dài mênh mông. Vào buổi sáng mặt nước bãi dài trong vắt như một tấm thủy tinh phản chiếu. Cả bầu trời như nằm gọn trong lòng biển. Quý khách nhận ghế lều cùng sinh hoạt và tắm biển tự do, thưởng thức hải sản tươi sống, tham gia các môn thể thao trên biển như: Mô tô nước.... (Chi phí tự túc)','19:10:00','22:30:00'),(86,48,'Trưa: Quý khách về lại Nha Trang dùng bữa trưa tại nhà hàng.','11:10:00','13:20:00'),(87,48,'Chiều: Quý khách đi tàu ca tốc để sang đảo ngọc quý khách chiêm ngưỡng Vịnh Nha Trang và toàn cảnh thành phố thơ mộng. Quý khách thử sức mình với các trò chơi cảm giác mạnh như: đu quay dây văng, đu quay lộn đầu, tàu lượn siêu tốc,…. Thỏa sức mình với những trò chơi trong nhà hay những bộ phim 4D đầy ấn tượng.  Quý khách tham quan Vườn thú Quý Vương với những động vật hoang giã của rừng xanh như hổ, sư tử trắng, báo, tê giác, hưu cao cổ,…. Tham quan đồi Vạn Hoa với hàng trăm loại hoa khoe sắc, check in tiểu hoang mạc của Châu Phi với vườn xương rồng vô cũng đặc sắc, khám phá vườn Nhật Bản với nhà Nhật, cổng trời, …. Tham quan thế giới đại dương đầy màu sắc tại Thủy Cung Vinwonders cùng với khoảng gần 10.000 sinh vật biển đang tung tăng bới lội. Quý khách check in khung trời Châu Âu tại Quảng Trường Đại Dương. Đặc biệt đến đây quý khách chiên ngưỡng màn trình diễn lung linh đầy sắc màu của chương trình nhạc nước diễn ra vào lúc 19h các ngày trong tuần..','14:00:00','17:10:00'),(88,48,'Tối: Xe đưa Quý khách đến nhà hàng dùng cơm chiều. Quý khách nghỉ ngơi tự do.','18:10:00','23:13:00'),(89,49,'Sáng: Đoàn dùng điểm tâm sáng, quý khách chuẩn bị kính bơi, kem chống nắng và áo tắm để bắt đầu hành trình chinh phục đại dương xanh:  Đoàn có mặt tại Cảng Vĩnh Trường, tàu sẽ đưa quý khách khám phá Vịnh Nha Trang, hòa mình vào không gian xanh mát của biển cả và đất trời, quý khách ngắm nhìn toàn cảnh các hòn nổi tiếng tại Nha Trang  Đến KDL Con Sẻ Tre: Quý khách thỏa sức ngâm mình trong làn nước trong xanh sẽ là kỉ niệm không thể quên trong chuyến du lịch Nha Trang của quý khách. Quý khách sẽ khám phá không gian thoải mái giữa vùng biển xinh đẹp, nhận ghế lều tự do nghỉ ngơi, tắm biển hoặc tham quan chụp ảnh lưu niệm tại hòn đảo này. Thưởng thức tiệc bar nổi trên biển (rượu và trái cây ) quý khách vừa hoà mình giữa đại dương mênh mông, vừa thưởng thức ly rượu vang, lát trái cây rất thú vị. Trên thuyền là “giàn âm thanh độc – dị” tổ hợp từ vật dụng dê thương: thùng chai nước, lon bia, mặt bàn, dép lào…kết hợp với âm thanh loa kẹo kéo đem lại cho quý khách nụ cười thoải mái.','07:00:00','11:00:00'),(90,49,'Trưa: Quý khách dùng cơm tại nhà hàng trên đảo.','11:00:00','13:30:00'),(91,49,'Chiều: Thư giãn trên những chiếc ghế bố hay tự do tắm biển. Quý khách cũng có thể tham gia lặn biển, các trò chơi thể thao dưới nước như: Moto nước, dù lượn…. (chi phí tự túc)  Kết thúc chuyến du ngoạn, Tàu đưa Quý khách về lại đất liền. Đoàn về khách sạn nghỉ ngơi tự do.','14:00:00','17:15:00'),(92,49,'Tối: Quý khách dùng cơm tối tại nhà hàng. Nghỉ đêm tại Nha Trang','18:15:00','22:15:00'),(93,50,'Sáng: Quý khách dùng điểm tâm sáng. Làm thủ tục trả phòng, xe đưa đoàn tham quan:  Chợ Đầm: Đây là khu chợ lớn nhất của thành phố Nha Trang. Du khách đến đây không chỉ để mua sắm các loại đặc sản, quà lưu niệm, chiêm ngưỡng các loại sản vật mà còn có cơ hội thưởng thức các món ăn dân giã của người dân ngay tại đây..','07:00:00','10:20:00'),(94,50,'Trưa: Quý khách dùng bữa trưa tại Cà Ná. Đoàn khởi hành về TP.HCM. Dọc theo quốc lộ, Xe đưa Quý khách dừng chân mua sắm đặc sản địa phương tại các cơ sở uy tín.','11:00:00','13:10:00'),(95,50,'Chiều: Về đến TPHCM, chia tay và hẹn gặp lại Quý khách.  KÍNH CHÚC QUÝ KHÁCH CÓ CHUYỂN THAM QUAN BỔ ÍCH  Thứ tự các điểm tham quan có thể thay đổi cho phù hợp với tình hình thực tế nhưng vẫn đảm bảo thực hiện đầy đủ nội dung chương trình. Quy định của Resort/ khách sạn: giờ nhận phòng: 14h00 – 15h00. Giờ trả phòng 12h00 (Nếu quý khách đến sớm, Resort/ khách sạn sẽ bố trí cho nhận phòng trong trường hợp có phòng trống. Trường hợp chưa có phòng, quý khách vui lòng dùng nước mát trong thời gian chờ đợi)','14:00:00','17:00:00'),(96,51,'Tối: 20h00, Xe và Hướng dẫn viên của Du Lịch Đất Việt đón quý khách tại điểm hẹn, sắp xếp hành lý, gửi lời chào thân ái cùng lời chúc tết đầu năm tới Quý khách. Xe khởi hành, bắt đầu hành trình Tour Du Lịch Nha Trang - Vịnh San Hô 3 ngày 3 đêm. Quý khách nghỉ ngơi trên xe.  Trên đường đi, HDV tổ chức hoạt náo, gắn kết các thành viên đã tham gia Ngôi Nhà Chung Đất Việt. Quý khách nghỉ ngơi tự do trên xe.','20:30:00','23:55:00'),(97,52,'Sáng: Khi bình mình vừa đến, Đoàn cũng có mặt tại Cam Ranh. Quý khách vệ sinh cá nhân. Dùng điểm tâm sáng tại nhà hàng. Nghỉ ngơi sau chặng di chuyển dài. Đoàn tham quan:  Bãi Dài: Với bãi cát dài và mịn màng, khi thủy triều rút, du khách sẽ không khỏi ngạc nhiên khi thấy hiện ra trước mắt là cả một bờ cát trắng trải dài mênh mông. Vào buổi sáng mặt nước bãi dài trong vắt như một tấm thủy tinh phản chiếu. Cả bầu trời như nằm gọn trong lòng biển. Quý khách nhận ghế lều cùng sinh hoạt và tắm biển tự do, thưởng thức hải sản tươi sống, tham gia các môn thể thao trên biển như: Chèo thuyền Kayak, Mô tô nước…( Chi phí tự túc) Khu Tưởng Niệm Chiến Sĩ Gạc Ma: xây dựng tại xã Cam Hải Đông – huyện Cam Lâm, trên tuyến Đại lộ Nguyễn Tất Thành cách trung tâm TP. nơi nàyhơn 20 km. Một địa điểm tâm linh nhằm tưởng nhớ 64 chiến sĩ hải quân Việt Nam đã hy sinh anh dũng trong ngày 14 – 03 – 1988, khi đang thực hiện nhiệm vụ bảo vệ chủ quyền của Tổ quốc tại đảo Gạc Ma thuộc quần đảo Trường Sa.','07:30:00','10:30:00'),(98,52,'Trưa: Quý khách đến với thành phố biển Nha Trang dùng bữa trưa tại nhà hàng. Đoàn về khách sạn nhận phòng và nghỉ ngơi tự do.','11:00:00','13:30:00'),(99,52,'Chiều: Quý khách đi tàu ca tốc để sang đảo ngọc quý khách chiên ngưỡng Vịnh Nha Trang và toàn cảnh thành phố thơ mộng. Quý khách thử sức mình với các trò chơi cảm giác mạnh như: đu quay dây văng, đu quay lộn đầu, tàu lượn siêu tốc, …. Thỏa sức mình với những trò chơi trong nhà hay những bộ phim 4D đầy ấn tượng.  Quý khách tham quan Vườn thú Quý Vương với những động vật hoang giã của rừng xanh như hổ, sư tử trắng, báo, tê giác, hưu cao cổ,…. Tham quan đồi Vạn Hoa với hàng trăm loại hoa khoe sắc, check in tiểu hoang mạc của Châu Phi với vườn xương rồng vô cũng đặc sắc, khám phá vườn Nhật Bản với nhà Nhật, cổng trời, …. Tham quan thế giới đại dương đầy màu sắc tại Thủy Cung Vinwonders cùng với khoảng gần 10.000 sinh vật biển đang tung tăng bới lội. Quý khách check in khung trời Châu Âu tại Quảng Trường Đại Dương. Đặc biệt đến đây quý khách chiêm ngưỡng màn trình diễn lung linh đầy sắc màu của chương trình nhạc nước diễn ra vào lúc 19h các ngày trong tuần..','14:00:00','17:30:00'),(100,52,'Tối: Xe đưa Quý khách đến nhà hàng dùng cơm chiều.  Tại thành phố Nha Trang, từ lâu đã nổi tiếng với các một loạt các hoạt động về đêm níu giữ du khách đến đây. Bạn có thể tận hưởng không khí trong lành của biển cả ven đường Trần Phú, hoặc vô tư mua sắm tại các cung đường khu Chợ Đêm, hay thả hồn du dương theo tiếng nhạc của các bạn nghệ sĩ đường phố. Tất cả tạo nên một bức tranh về thành phố náo nhiêt hấp dẫn du khách.  Quý khách nghỉ ngơi tự do.','18:00:00','23:30:00'),(101,53,'Sáng: Đoàn dùng điểm tâm sáng, bắt đầu khám phá cuộc sống và văn hóa của ngư dân vịnh biển Nha Trang.  Vịnh San Hô: tàu sẽ đưa quý khách tới tham quan Bè Hải Sản của người dân nơi đây. Tại đây quý khách sẽ được khám phá và tìm hiểu về những loại hải sản, cảm giác hòa mình vào thiên nhiên, được đón nhận những làn gió mát mẻ mang đậm hơi biển đặc trưng của vùng biển. Quý khách đến đảo, quý khách sẽ được trải nghiệm dịch vụ tại khu du lịch bao gồm  Ghế nằm nghỉ ngơi, Ghế tắm nắng, Tắm hồ bơi, Tắm biển, Tắm tráng nước ngọt','07:30:00','10:30:00'),(102,53,'Trưa: Quý khách dùng bữa trưa tại nhà hàng.  Tham chương trình sân bọt tuyết thỏa sức đùa nghịch với tuyết diễn ra từ 13h00 – 13h30  Ngoài ra ở đây quý khách có thể tham gia các trò chơi trên biển như dù bay, moto nước, phao chuối, kayak. Các trò chơi dưới biển như lặn bình hơi hoặc đi bộ dưới đáy biển để ngắm san hô (Chi phí tự túc)','11:00:00','13:30:00'),(103,53,'Chiều: Tiếp tục các chương trình tham quan trong KDL.  Đoàn lên tàu về lại đất liền. Về khách sạn nghỉ ngơi hoăc tự do trải nghiệm dịch vụ thư giản:  Tắm Bùn Khoáng Nóng: Lớp bùn khoáng cực mịn được thiên nhiên ưu đãi cho Nha trang. Quý khách thoải mái lựa chọn ngâm bùn khoáng nóng trong bồn gỗ riêng biệt, ngâm bùn khoáng tập thể, ngâm nước khoáng nóng, hồ bơi khoáng ấm, thư giãn dưới thác nước đôi, ôn tuyền thuỷ liệu pháp, vật lý trị liệu, Khoáng Tiên Sa và Hồ Bơi khoáng lạnh… (chi phí tự túc ).','14:00:00','17:30:00'),(104,53,'Tối: Quý khách dùng cơm tối tại nhà hàng. Nghỉ đêm tại Nha Trang','18:30:00','22:30:00'),(105,54,'Sáng: Quý khách dùng điểm tâm sáng. Làm thủ tục trả phòng, xe đưa đoàn tham quan:  Chợ Đầm: Đây là khu chợ lớn nhất của thành phố Nha Trang. Du khách đến đây không chỉ để mua sắm các loại đặc sản Nha Trang, quà lưu niệm, chiêm ngưỡng các loại sản vật mà còn có cơ hội thưởng thức các món ăn dân giã của người dân ngay tại đây..','07:30:00','22:30:00'),(106,54,'Trưa: Quý khách dùng bữa trưa tại Cà Ná. Đoàn khởi hành về TP.HCM. Dọc theo quốc lộ, Xe đưa Quý khách dừng chân mua sắm đặc sản địa phương tại các cơ sở uy tín.','11:00:00','13:30:00'),(107,54,'Chiều: Về đến TPHCM, chia tay và hẹn gặp lại Quý khách.  Lưu ý:  Thứ tự các điểm tham quan có thể thay đổi cho phù hợp với tình hình thực tế nhưng vẫn đảm bảo thực hiện đầy đủ nội dung chương trình. Quy định của Resort/ khách sạn: giờ nhận phòng: 14h00 – 15h00. Giờ trả phòng 12h00','14:30:00','17:30:00'),(108,55,'Đón Khách Lên Xe','05:00:00','05:30:00'),(109,56,'Buổi Sáng:  7:00 AM: Điểm tụ hợp làm đầu hành trình: Trung tâm thành phố Cà Mau. 8:00 AM - 10:00 AM: Tham quan Công viên Đất Mũi Cà Mau - điểm cực nam của Việt Nam, ngắm bình minh và khám phá di tích cột cờ Đất Mũi. 10:30 AM - 12:30 PM: Ghé thăm Cồn cát Vĩnh Trung - một bãi cát trắng tinh khoái.','07:00:00','13:00:00'),(110,56,'Buổi Chiều:  1:30 PM - 3:30 PM: Tới Khu du lịch rừng tràm Trần Văn Khéo để trải nghiệm thuyền thúng giữa rừng tràm và học về sinh thái nơi đây. 4:00 PM - 6:00 PM: Quay trở về trung tâm thành phố Cà Mau, tìm hiểu về văn hóa và ẩm thực đặc trưng tại khu chợ hoặc khu vực quán ăn địa phương.','13:30:00','18:00:00'),(111,57,'Buổi Sáng:  8:00 AM: Khởi hành từ trung tâm thành phố. 9:00 AM - 11:30 AM: Tham quan Vườn Trái Cây Cù Lao Mạ - khám phá vườn trái cây nhiệt đới và thưởng thức trái cây tươi ngon. 12:00 PM - 1:30 PM: Dùng cơm trưa tại nhà hàng địa phương.','07:35:00','13:30:00'),(112,55,'Xuất phát đến Sapa','05:00:00','07:00:00'),(113,57,'Buổi Chiều:  2:30 PM - 4:30 PM: Ghé thăm Khu di tích Làng Chài Mũi Cà Mau - hiểu thêm về cuộc sống và nghề cá truyền thống của người dân nơi đây. 5:00 PM: Kết thúc chuyến đi tại trung tâm thành phố Cà Mau hoặc điểm xuất phát.','14:00:00','17:00:00'),(114,55,'Thưởng thức bữa trưa tại nhà hàng địa phương, nơi bạn có thể trải nghiệm các món ẩm thực đặc trưng.','12:00:00','13:00:00'),(115,58,'Điểm đón:  05h15: Nhà văn hóa Thanh Niên (04 Phạm Ngọc Thạch, Quận 1)  05h30: Cây xăng đối diện bến xe Miền Tây.  Sáng: Xe và Hướng dẫn viên đón quý khách tại điểm hẹn. Chào mừng các thành viên của đoàn đã tham gia. Xe khởi hành, đoàn di chuyển dọc theo quốc lộ 1A xuôi về miền Đồng Bằng Sông Cửu Long.  Đến với Tiền Giang Quý khách điểm tâm với đặc sản hủ tiếu Mỹ Tho - là món ăn trứ danh lâu đời. Những sợi hủ tiếu dai ngon cùng nước lèo xương, mực ngọt lịm. Trải lên sợi bánh là sườn non, thịt nạt, gan, tim heo, tôm thẻ, hẹ, rau, giá sống. Khiến ta nhớ hoài. Đoàn tiếp tục đến bến đò 30/04. Lên du thuyền, ngắm dòng sông Tiền hiền hậu, ôm cả một vùng kinh tế lớn. Được nghe câu hò, câu hát của cô gái miệt vườn, cùng ngắm cảnh 04 cù lao Long, Lân, Qui, Phụng sừng sửng trên sông, cảm giác thú vị vô cùng.  - Ngắm bè nuôi cá nổi: Thuyền chạy dọc theo những bè cá nổi, để du khách tìm hiểu cách nuôi cá trên sông của người dân địa phương và ngắm nhìn cầu Rạch Miễu.  - Tham quan Cù Lao Thới Sơn: Du khách tản bộ trên đường làng, tham quan vườn cây ăn trái, thưởng thức các loại trái cây theo mùa và nghe đờn ca tài tử Nam Bộ. Đến tham quan trại nuôi ong mật, tham quan lò kẹo dừa, thưởng thức trà mật ong chanh, rượu chuối hột và bánh mứt. Trải nghiệm cảm giác chèo len lỏi trong rạch nhỏ ngắm nhìn hai hàng dừa nước thiên nhiên và phong cảnh đơn sơ của miệt vườn. Đội chiếc nón lá đặc trưng nam bộ, bạn hãy lưu giữ cho mình những những kiểu ảnh cực xinh cùng những cô gái quê với nụ cười trong trẻo.','07:00:00','10:30:00'),(116,58,'Trưa: Đoàn dùng bữa trưa tại nhà hàng trên cù lao với nhiều món ăn đặc sản địa phương như: cá tai tượng chiên xù, Canh chua cá lóc vô cùng hấp dẫn. Tiếng gió vi vu theo những rặng dừa, tiếng sóng nước xô đẩy rì rào, một buổi ăn trưa thật bình dị và thư thái.','11:00:00','13:20:00'),(117,58,'Chiều: Chia tay với người dân xứ Cù Lao, Quý khách tiếp tục hành trình đi về miền Cần Thơ. Đoàn nhận phòng khách sạn, nghỉ ngơi, ngắm nhìn toàn cảnh cầu Cần Thơ vươn dài.','14:00:00','17:00:00'),(118,58,'Tối: Xe đưa đến bến Ninh Kiều, Đoàn tham gia chương trình: “Thưởng ngoạn du thuyền trên sông Hậu\". Cùng thưởng thức nghệ thuật Đờn Ca Tài Tử với những chất giọng ấm cúng trữ tình, đậm chất Miền Tây Nam Bộ, dùng bữa tối trên du thuyền là nét văn hóa cao sang từ ngàn xưa, mà bất cứ du khách đến đây đều muốn trải nghiệm. Thành phố Cần Thơ hay được dân giang yêu kiều đặt cho cái tên “Tây Đô\" vốn dĩ đông đúc, sôi nổi từ lâu mà ca dao từng khen tặng \"Cần Thơ có bến Ninh Kiều/Có dòng sông đẹp với nhiều giai nhân\"... Du khách sẽ ngỡ ngàng với vẻ đẹp lung linh, lộng lẫy cùng ánh đèn rực rỡ sắc màu tại Bến Ninh Kiều, hay choáng ngợp trước công trình mới đang thu hút giới trẻ: Cầu đi bộ Bông Sen vô cùng độc đáo.','18:00:00','22:05:00'),(119,59,'05h00: Quý khách dậy sớm, cùng tìm hiểu văn hóa của người dân Cần Thơ với chuyến đò tham quan đặc sắc:  - Chợ nổi Cái Răng: Hơn 100 năm hình thành và phát triển, chợ nổi Cái Răng trở thành biểu tượng du lịch đặc trưng của TP. Cần Thơ. Hãy đến tham quan Chợ nổi, để cùng cảm nhận thực sự cuộc sống miền sông nước, cùng nhau lắng nghe giọng hò ngọt ngào của cô gái chèo ghe đùa vui với người yêu: “Cái Răng, Ba Láng, Vàm Xáng, Xà No/ Anh có thương em xin sắm một cái đò/ Để em qua lại mua cò gởi anh’’. Từ rất sớm người dân từ mọi nơi đã đổ về tập trung tại Chợ để buôn bán hàng hóa nào là: Xoài, nhãn, sầu riêng, măng cụt, chôm chôm, dưa, khoai …trên những chiếc xuồng bấp bênh người dân vội vã và mong muốn sớm bán hết hàng hóa để kịp khi ánh bình minh. Chợ Nổi đại diện cho văn hóa Miền Tây sông nước. 07h00: Đoàn ăn dùng điểm tâm sáng.  08h30: Làm thủ tục trả phòng và khởi hành tham quan:  - Căn nhà màu tím: Điểm tham quan đang được Quý khách săn đón thời gian gần đây. Đây là Phim trường Coffee với nhiều tiểu cảnh được thiết kế rất độc đáo chỉ toàn họa tiết với gam màu tím chủ đạo rất thích hợp với du khách thích chụp ảnh và yêu màu tím, chắc chắn sẽ mang đến cho quý khách một trải nghiệm tuyệt vời. - Đền Vua Hùng: Có tổng diện tích khoảng 39.000 m2, gồm 14 ngôi đền được xây dựng để thờ các vị vua Hùng đã có công dựng và giữ nước. Đền bao gồm các hạng mục chính: đền thờ chính, nhà điều hành, nhà dịch vụ, nghi môn, nhà bia, sân đường, cây xanh, hồ điều hòa… Khối đền chính cao 19,5 m, diện tích gần 1.300 m2, nằm giữa hồ nước cảnh quan đồ sộ.','05:00:00','11:30:00'),(120,59,'Trưa: Đoàn dùng cơm trưa tại nhà hàng.','12:00:00','13:30:00'),(121,59,'Chiều: Đoàn khởi hành về lại TP. HCM, trên đường về Quý khách dừng chân mua sắm đặc sản địa phương như: bánh Pía, nem chua, bánh dừa và trái cây ngon.. làm quà tặng cho người thân. Về đến TP. HCM, chia tay và hẹn gặp lại Quý khách.','14:00:00','17:00:00'),(122,55,'Thăm thị trấn Sapa, dạo quanh các khu chợ địa phương như Chợ Sapa và tham quan các cửa hàng nghệ thuật','15:00:00','17:00:00'),(123,60,'Ăn sáng và chuẩn bị ','07:00:00','08:00:00'),(124,60,'Thăm Dinh Thự Imperial','08:00:00','10:00:00'),(125,60,'Trở Về Cần Thơ','12:00:00','15:00:00'),(126,61,'05h00: Hướng dẫn viên đón quý khách tại số 46 – đường Hai Bà Trưng (Đối diện tượng đài Bác Hồ bến Ninh Kiều). Quý khách làm thủ tục lên thuyền máy khởi hành tham quan:  - Tham quan chợ nổi Cái Răng: Chợ nổi là đặc sản của miền Tây. Nếu đến Cần Thơ mà bạn chưa đi chợ nổi Cái Răng thì đó thật sự là thiếu sót lớn. Chợ thường hoạt động từ mờ sáng nên bạn phải dậy sớm nếu muốn tận hưởng trọn vẹn không khí nhộn nhịp trên chợ. Thời gian lý tưởng nhất để đi chợ nổi là khoảng 5h - 7h. - Tham quan cơ sở sản xuất Hủ Tiếu.','05:00:00','07:00:00'),(127,61,'07h00: Về lại bến Ninh Kiều, Xe và HDV đón quý khách về khách sạn hoặc điểm hẹn nội ô Q.Ninh Kiều – TP.Cần Thơ (Quý khách tự túc dùng điểm tâm sáng).  09h00: Xe và HDV đón quý khách tại khách sạn hoặc điểm hẹn nội ô Q.Ninh Kiều – TP.Cần Thơ khởi hành đi tham quan nhà cổ Bình Thủy.  - Nhà cổ Bình Thuỷ ngày càng nổi tiếng sau khi quay nhiều bộ phim nổi tiếng như: Những nẻo đường phù sa, Người đẹp Tây Đô, Nợ đời, Người tình. Nhiều du khách tìm đến nơi đây cũng vì tò mò với lối kiến trúc xa hoa từ trăm năm trước nhưng vẫn được gìn giữ nguyên vẹn đến ngày nay.','07:00:00','09:00:00'),(128,61,'10h00: Quý khách di chuyển đến với làng sinh thái Cồn Sơn:  - Tham quan làng cá bè Cồn Sơn.  Trưa quý khách dùng cơm với các món ăn đậm chất miền Tây tại nhà dân địa phương và tự do nghỉ ngơi.  - Trải nghiệm làm các loại bánh ngon dân dã mang đậm chất Nam Bộ. - Tham quan Vườn trái cây sạch: Chôm Chôm/Bưởi/Cam/Nhãn hay Vú Sữa (tùy vào từng thởi điểm). - Chiêm ngưỡng tuyệt chiêu “cá Lóc bay” của người nông dân sông Hậu và tham quan vườn Ổi sạch.','10:00:00','15:30:00'),(129,61,'16h00: Quý khách trở về đất liền, Xe và HDV đưa quý khách đến điểm hẹn (Nội ô Cần Thơ) hoặc điểm đón ban đầu kết thúc chuyến hành trình tham quan','16:00:00','17:30:00'),(130,62,'05h00: Hướng dẫn viên đón quý khách tại số 46 – đường Hai Bà Trưng (Đối diện tượng đài Bác Hồ bến Ninh Kiều). Quý khách làm thủ tục lên thuyền máy khởi hành tham quan: - Tham quan chợ nổi Cái Răng: Chợ nổi là đặc sản của miền Tây. Nếu đến Cần Thơ mà bạn chưa đi chợ nổi Cái Răng thì đó thật sự là thiếu sót lớn. Chợ thường hoạt động từ mờ sáng nên bạn phải dậy sớm nếu muốn tận hưởng trọn vẹn không khí nhộn nhịp trên chợ. Thời gian lý tưởng nhất để đi chợ nổi là khoảng 5h - 7h. - Tham quan cơ sở sản xuất Hủ Tiếu.','05:00:00','07:00:00'),(131,62,'07h00: Về lại bến Ninh Kiều, Xe và HDV đón quý khách về khách sạn hoặc điểm hẹn nội ô Q.Ninh Kiều – TP.Cần Thơ (Quý khách tự túc dùng điểm tâm sáng). 09h00: Xe và HDV đón quý khách tại khách sạn hoặc điểm hẹn nội ô Q.Ninh Kiều – TP.Cần Thơ khởi hành đi tham quan nhà cổ Bình Thủy. - Nhà cổ Bình Thuỷ ngày càng nổi tiếng sau khi quay nhiều bộ phim nổi tiếng như: Những nẻo đường phù sa, Người đẹp Tây Đô, Nợ đời, Người tình. Nhiều du khách tìm đến nơi đây cũng vì tò mò với lối kiến trúc xa hoa từ trăm năm trước nhưng vẫn được gìn giữ nguyên vẹn đến ngày nay.','07:00:00','09:00:00'),(132,62,'10h00: Quý khách di chuyển đến với làng sinh thái Cồn Sơn: - Tham quan làng cá bè Cồn Sơn. Trưa quý khách dùng cơm với các món ăn đậm chất miền Tây tại nhà dân địa phương và tự do nghỉ ngơi. - Trải nghiệm làm các loại bánh ngon dân dã mang đậm chất Nam Bộ. - Tham quan Vườn trái cây sạch: Chôm Chôm/Bưởi/Cam/Nhãn hay Vú Sữa (tùy vào từng thởi điểm). - Chiêm ngưỡng tuyệt chiêu “cá Lóc bay” của người nông dân sông Hậu và tham quan vườn Ổi sạch.	10:00:00','10:00:00','15:30:00'),(133,62,'16h00: Quý khách trở về đất liền, Xe và HDV đưa quý khách đến điểm hẹn (Nội ô Cần Thơ) hoặc điểm đón ban đầu kết thúc chuyến hành trình tham quan','16:30:00','17:31:00'),(134,63,'05h00: Hướng dẫn viên đón quý khách tại số 46 – đường Hai Bà Trưng (Đối diện tượng đài Bác Hồ bến Ninh Kiều). Quý khách làm thủ tục lên thuyền máy khởi hành tham quan: - Tham quan chợ nổi Cái Răng: Chợ nổi là đặc sản của miền Tây. Nếu đến Cần Thơ mà bạn chưa đi chợ nổi Cái Răng thì đó thật sự là thiếu sót lớn. Chợ thường hoạt động từ mờ sáng nên bạn phải dậy sớm nếu muốn tận hưởng trọn vẹn không khí nhộn nhịp trên chợ. Thời gian lý tưởng nhất để đi chợ nổi là khoảng 5h - 7h. - Tham quan cơ sở sản xuất Hủ Tiếu.','05:00:00','07:00:00'),(135,63,'07h00: Về lại bến Ninh Kiều, Xe và HDV đón quý khách về khách sạn hoặc điểm hẹn nội ô Q.Ninh Kiều – TP.Cần Thơ (Quý khách tự túc dùng điểm tâm sáng). 09h00: Xe và HDV đón quý khách tại khách sạn hoặc điểm hẹn nội ô Q.Ninh Kiều – TP.Cần Thơ khởi hành đi tham quan nhà cổ Bình Thủy. - Nhà cổ Bình Thuỷ ngày càng nổi tiếng sau khi quay nhiều bộ phim nổi tiếng như: Những nẻo đường phù sa, Người đẹp Tây Đô, Nợ đời, Người tình. Nhiều du khách tìm đến nơi đây cũng vì tò mò với lối kiến trúc xa hoa từ trăm năm trước nhưng vẫn được gìn giữ nguyên vẹn đến ngày nay.','07:00:00','09:00:00'),(136,63,'10h00: Quý khách di chuyển đến với làng sinh thái Cồn Sơn: - Tham quan làng cá bè Cồn Sơn. Trưa quý khách dùng cơm với các món ăn đậm chất miền Tây tại nhà dân địa phương và tự do nghỉ ngơi. - Trải nghiệm làm các loại bánh ngon dân dã mang đậm chất Nam Bộ. - Tham quan Vườn trái cây sạch: Chôm Chôm/Bưởi/Cam/Nhãn hay Vú Sữa (tùy vào từng thởi điểm). - Chiêm ngưỡng tuyệt chiêu “cá Lóc bay” của người nông dân sông Hậu và tham quan vườn Ổi sạch.','10:00:00','15:30:00'),(137,63,'16h00: Quý khách trở về đất liền, Xe và HDV đưa quý khách đến điểm hẹn (Nội ô Cần Thơ) hoặc điểm đón ban đầu kết thúc chuyến hành trình tham quan','16:00:00','17:30:00'),(138,64,'Sáng: 7h45- 8h30 Xe và hướng dẫn viên đón quý khách tại điểm hẹn. Sau đó quy khách tham quan chùa Trấn Quốc được xây dựng cách đây 1000 năm.  Quý khách tham quan Lăng Chủ tịch Hồ Chí Minh - nơi an nghỉ cuối cùng của vị lãnh tụ kính yêu của dân tộc Việt Nam, và Nhà Sàn Bác Hồ - nơi Bác ở và làm việc từ năm 1958 đến năm 1969. Điểm dừng chân tiếp theo là Chùa Một Cột - ngôi chùa có kiến trúc độc đáo mang dáng dấp của một đài sen mọc lên giữa lòng hồ vuông vắn.','07:00:00','09:00:00'),(139,64,'LƯU Ý: Thứ 2 và thứ 6 chỉ tham quan bên ngoài, do Lăng đóng cửa  Lựa chọn 1: Thứ Ba, Thứ Năm, Thứ Bảy, Chủ Nhật Thăm Bảo Tàng Dân Tộc Học - nơi lưu giữ những tư liệu, hiện vật về đời sống sinh hoạt, văn hóa, phong tục tập quán của 54 dân tộc Việt Nam.  Lựa chọn 2: Thứ Hai, Thứ Tư, Thứ Sáu Thăm làng nghề gốm sứ Bát Tràng - nằm bên bờ tả ngạn sông Hồng, cách trung tâm thủ đô Hà Nội hơn 10km về phía Đông – Nam.  13:00 Quý khách nghỉ ngơi, ăn trưa tại nhà hàng trong phố cổ.  14:00 Quý khách đi tham quan Văn Miếu Quốc Tử Giám - trường đại học đầu tiên của Việt Nam thờ Khổng Tử. Điểm dừng chân cuối cùng là Hồ Hoàn Kiếm và Đền Ngọc Sơn.','13:00:00','15:30:00'),(140,64,'16:00 Xe đưa Quý khách về khách sạn. Kết thúc chương trình.','16:00:00','18:00:00'),(141,65,'Sáng: 7h45- 8h30 Xe và hướng dẫn viên đón quý khách tại điểm hẹn. Sau đó quy khách tham quan chùa Trấn Quốc được xây dựng cách đây 1000 năm. Quý khách tham quan Lăng Chủ tịch Hồ Chí Minh - nơi an nghỉ cuối cùng của vị lãnh tụ kính yêu của dân tộc Việt Nam, và Nhà Sàn Bác Hồ - nơi Bác ở và làm việc từ năm 1958 đến năm 1969. Điểm dừng chân tiếp theo là Chùa Một Cột - ngôi chùa có kiến trúc độc đáo mang dáng dấp của một đài sen mọc lên giữa lòng hồ vuông vắn.','07:00:00','09:00:00'),(142,65,'LƯU Ý: Thứ 2 và thứ 6 chỉ tham quan bên ngoài, do Lăng đóng cửa Lựa chọn 1: Thứ Ba, Thứ Năm, Thứ Bảy, Chủ Nhật Thăm Bảo Tàng Dân Tộc Học - nơi lưu giữ những tư liệu, hiện vật về đời sống sinh hoạt, văn hóa, phong tục tập quán của 54 dân tộc Việt Nam. Lựa chọn 2: Thứ Hai, Thứ Tư, Thứ Sáu Thăm làng nghề gốm sứ Bát Tràng - nằm bên bờ tả ngạn sông Hồng, cách trung tâm thủ đô Hà Nội hơn 10km về phía Đông – Nam. 13:00 Quý khách nghỉ ngơi, ăn trưa tại nhà hàng trong phố cổ. 14:00 Quý khách đi tham quan Văn Miếu Quốc Tử Giám - trường đại học đầu tiên của Việt Nam thờ Khổng Tử. Điểm dừng chân cuối cùng là Hồ Hoàn Kiếm và Đền Ngọc Sơn.','13:00:00','15:30:00'),(143,65,'16:00 Xe đưa Quý khách về khách sạn. Kết thúc chương trình.	','16:00:00','18:00:00'),(144,66,'8h30: Xe và hướng dẫn viên đón quý khách tại điểm hẹn khởi hành đi chùa Hương.  10h15: Đoàn tới bến Đục và đi bộ lên bến Đục.  10h30: Quý khách đi thuyền dọc theo suối Yến (4 km), thưởng thức cảnh đẹp thơ mộng dọc 2 bên dòng sông và dòng nước trong mát với những thảm tảo tuyệt đẹp. Quý khách đến bến Thiên Trù và thăm quan chùa Thiên Trù.','08:00:00','10:30:00'),(145,66,'12h15: Quý khách ăn trưa tại nhà hàng địa phương.  13h15: Quý khách tham quan toàn cảnh chùa Hương leo núi (5km) hoặc đi cáp. Sau đó quý khách đi thuyền dọc theo suối Yên quay trở lại bến Đục.','12:00:00','15:30:00'),(146,66,'16h30: Quý khách lên xe trở về Hà Nội. 18h30: Về đến Hà Nội. Kết thúc tour.','16:30:00','18:30:00'),(147,67,'THỜI GIAN: 18H00 – 21H00 Hành trình sẽ đưa quý khách đến với Quán bánh Huế để thưởng thức các món bánh đặc sản của xứ Huế.  Khi đến với Huế nhất định bạn phải dành thời gian thưởng thức món bánh bèo Huế. Vị ngọt mềm của bánh bèo hòa quyện với nhân tôm, hành phi và nước chấm đậm đà, chắc chắn sẽ khiến bạn ăn một lần sẽ lưu luyến mãi.Món tiếp theo là Bánh nậm Huế là món ăn dân dã nổi tiếng ở Huế. Món có hương vị thơm ngon, mềm mịn thoang thoảng vị tôm.Bánh bột lọc Huế được biết tới là một món ăn rất đặc trưng của Huế. Bánh bột lọc nhân tôm thịt, vỏ ngoài dai dai mềm mềm ăn kèm với nước mắm ruốc làm tăng thêm vị đậm đà.HDV sẽ hướng dẫn bạn cách để thưởng thức món Bánh khoái và Nem lụi đúng điệu, giúp bạn cảm nhận hết vị ngon của món ănMón ăn tiếp theo là Bún Bò Huế, món mà bất kì du khách nào khi đến Huế cũng không thể bỏ lỡ.Cuối cùng, HDV sẽ dẫn Quý khách đến một quán chè Huế lâu năm và khá nổi tiếng. Quán có tận 20 món với nhiều loại chè khác nhau.21h00 Kết thúc chương trình Hue Food Tour, HDV và xe xích lô sẽ đưa quý khách trở về điểm đón và chào tạm biệt hẹn gặp lại trong những chương trình sau.  Menu: Bánh bèo/Bánh nậm/Bánh lọc/Bánh khoái/Nem lụi/Bún bò Huế/Chè Huế  Thứ tự tham quan có thể thay đổi nhưng vẫn đảm bảo đầy đủ điểm trong chương trình.','18:00:00','21:00:00'),(148,68,'07:30 – 08:30 Xe và hướng dẫn viên đón quý khách tại khách sạn. Khởi hành đi Huế theo hướng hầm Hải Vân.  09:15-9:45 Quý khách được tham quan Đầm Lập An, nơi được ví như ‘Tuyệt tình cốc Huế’ hiện hữu với khung cảnh nên thơ hữu tình.','07:30:00','10:00:00'),(149,68,'11h00: Quý Khách tham quan Lăng Khải Định – công trình kiến trúc Âu – Á  độc đáo, được kết hợp hài hòa giữa khung cảnh nên thơ của núi rừng. 12h00: Quý khách dừng chân nghỉ ngơi ăn trưa tại nhà hàng.','11:00:00','13:30:00'),(150,68,'13h30: Xe sẽ đưa quý khách đến viếng chùa Thiên Mụ, một ngôi chùa cổ kính tại xứ Huế được xây dựng từ thời Tiên chúa Nguyễn Hoàng, nơi trải qua những thăng trầm trong nhiều giai đoạn lịch sử đầy biến động. Đại Nội – Hoàng cung của 13 triều vua Nhà Nguyễn. Quý khách thăm Ngọ Môn, lầu Ngũ Phụng, cung Diên Thọ, cung Trường Sanh, Hiển Lâm Các & Thế Miếu. Khởi hành về lại Đà Nẵng.','14:00:00','17:30:00'),(151,68,'18:00-18:30 Trả khách tại điểm hẹn. Kết thúc chương trình. Xin chào và hẹn gặp lại.','18:00:00','18:30:00'),(152,69,'06h00: HDV đón khách tại khách sạn sau đó cùng trải nghiệm đạp xe dọc bờ sông Hương thơ mộng tận hưởng bầu không khí mát mẻ vào buổi sớm mai. Đoàn dừng tham quan chùa Thiên Mụ, tại đây quý khách ngắm cảnh đầu nguồn sông Hương buổi bình minh. 07h30: Đoàn thưởng thức đặc sản bún bò Huế, tham quan Phủ Vĩnh Quốc Công Nguyễn Hữu Độ nằm trong quán coffee KODO, rảo bước quanh khu vườn thanh trà, hoa lá xanh mướt, nhâm nhi tách trà/coffee và lắng nghe giai thoại Cố đô xưa.  09h00: Đoàn lên thuyền rồng thưởng ngoạn dòng sông Hương, tại đây, quý khách thả cá hồi hướng công đức, góp phần tái tạo nguồn lợi thuỷ hải sản trên sông Hương.','06:00:00','09:00:00'),(153,69,'10h00: Thuyến đáp tại bến. Xe đón đoàn di chuyển đến chùa Thọ Đức.  10h30 - 11h30: Hoạt động tại chùa. Thực hành Thiền đi bộ “Thiền theo vòng tròn” - Thiền chánh niệm: buông bỏ mọi phiền não, dịu tâm trí và cơ thể, tái tạo năng lượng tích cực. Trà đạo cùng sư Thầy bên cạnh hồ cá Koi cùng tiếng nước róc rách, nơi đây bạn thật sự cảm nhận sự bình yên, trong bầu không gian thanh tịnh và lắng nghe hơi thở tâm hồn mình.','10:00:00','11:30:00'),(154,69,'12h00: Đoàn ăn trưa tại nhà hàng theo thực đơn dinh dưỡng, cân bằng cho sức khoẻ.','12:00:00','13:00:00'),(155,69,'14h30: Đoàn ghé thăm Ngôi Nhà Hoa của những mảnh đời kém may mắn nhưng trái tim luôn trọn vẹn và tinh khôi. Tại đây, bạn được khám phá Mật Ngữ Hoa, trao đổi ngôn ngữ ký hiệu và trải nghiệm làm hoa giấy.  15h30: Xe đưa đoàn tham quan làng hương Thuỷ Xuân và trải nghiệm làm hương truyền thống và có những bức hình check in độc đáo. 16h00: Đoàn di chuyển lên đồi Vọng Cảnh, thực hành ngồi thiền và ngắm nhìn vẻ đẹp của dòng sông Hương thượng nguồn, sự chuyển màu của thiên nhiên và hoàng hôn buông xuống. 17h00: Kết thúc chương trình, xe và HDV đưa đoàn về điểm hẹn ban đầu, tạm biệt và hẹn gặp lại quý khách trong những hành trình tiếp theo.','14:30:00','17:00:00'),(156,70,'07h30: Xe và HDV sẽ đón khách tại điểm hẹn trung tâm thành phố Đà Nẵng, khởi hành tham quan Rừng Dừa 7 Mẫu.','07:30:00','08:30:00'),(157,70,'09h00: Quý khách di chuyển bằng thuyền thúng khám phá Rừng dừa. Du khách như lạc vào khung cảnh yên bình của Miền Tây sông nước.  Quý khách trải nghiệm: giăng lưới, quăng chài, kéo rớ cá, câu cua, đua thuyền thúng... Được hướng dẫn và tự tay làm nên những sản phẩm từ lá dừa như: mũ, kính, đồng hồ đeo tay....  Xem và thưởng thức kỹ năng chém nước của các bác lái thuyền.  Tham gia các trò chơi dưới nước: đi cầu khỉ, vượt phao, đạp xe qua cầu....  Các trò chơi teambuilding như: đua thuyền thúng, đập niêu, kéo co, thi câu cá, đi thăng bằng trên tre....','09:00:00','23:30:00'),(158,70,'11h30: Dùng bữa trưa tại nhà hàng  Đoàn nghỉ ngơi tại nhà hàng, thưởng thức văn nghệ cây nhà lá vườn.','11:30:00','15:00:00'),(159,70,'15h30: Chia tay Rừng Dừa, Xe và HDV đưa Đoàn về điểm đón ban đầu. Kết thúc chương trình. Thân ái chào và hẹn gặp lại.','15:30:00','17:30:00'),(160,71,'08:00-8:30  Xe và hướng dẫn đón quý khách tại khách sạn, khởi hành đi Mỹ Sơn.','08:00:00','08:30:00'),(161,71,'09:30 Xe đưa quý khách tìm về với vẻ đẹp bí ẩn, huyền ảo của di sản văn hóa thế giới. Du khách có cơ hội khám phá Mỹ Sơn, tham quan khu Thánh địa lâu đời của Vương Quốc Chăm Pa với những đền tháp rêu phong bí ẩn từ thế kỉ VII.Thưởng thức chương trình ca múa Chăm đặc sắc, thăm Trung Tâm Thánh Mẫu Trà Kiệu - đặt trên nền móng Kinh Thành xưa của người Chăm (Kinh thành Sư Tử).','09:30:00','11:30:00'),(162,71,'11:30 Dùng bữa trưa tại nhà hàng.','11:30:00','12:55:00'),(163,71,'13:00-14:00 Xe đưa khách về lại khách sạn. Xin chào và hẹn gặp lại.','13:00:00','15:30:00'),(164,72,'7:30-8:30 Xe và hướng dẫn viên đón Quý khách tại khách sạn, khởi hành đi Cù Lao Chàm. Quý khách sẽ đi trên tuyến đường 5 sao của Đà Nẵng và Hội An, qua những khu resort đẹp nhất Đà Nẵng để đến cảng biển Cửa Đại cách trung tâm Đà Nẵng 30km về hướng Đông Nam.','07:30:00','08:30:00'),(165,72,'9:15-9:45 Quý khách lên cano cao tốc đi ra đảo, ngoạn cảnh biển Cửa Đại. Cù Lao Chàm cách biển Cửa Đại 8 hải lý về hướng Đông. Quý khách sẽ có thời gian thưởng ngoạn cảm giác mạnh khi cano cao tốc lướt trên biển xanh. 9:40 – 10:00 Cano cập cảng Bãi Làng Cù Lao. Tại đây Quý khách sẽ được hướng dẫn tham quan khu trưng bày nền văn hóa Sa Huỳnh, khu bảo tồn biển Cù Lao Chàm, chùa Hải Tạng cổ, chợ hải sản Tân Hiệp với các món hải sản đặc sắc để làm quà.','09:15:00','10:00:00'),(166,72,'11:00 Tham gia hoạt động lặn ngắm san hô. 12:00 Ăn trưa và nghỉ ngơi trên đảo.  Đoàn lên cano rời Bãi Ông về lại đất liền.  Cano cập cảng sông Hoài. Xe đưa Quý khách về điểm hẹn.','11:00:00','12:00:00'),(167,72,'14:30-15:30 Kết thúc chuyến tham quan. Chia tay Quý khách và Hẹn Gặp Lại','14:30:00','15:30:00');
/*!40000 ALTER TABLE `tour_plan_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tours`
--

DROP TABLE IF EXISTS `tours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tours` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `PriceID` bigint DEFAULT NULL,
  `CreateID` bigint DEFAULT NULL,
  `TransportID` bigint DEFAULT NULL,
  `HotelID` bigint DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Description` text,
  `Image` varchar(1000) DEFAULT NULL,
  `Destination_address` text,
  `Available_spaces` int DEFAULT NULL,
  `Create_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `Active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`Id`),
  KEY `PriceID` (`PriceID`),
  KEY `CreateID` (`CreateID`),
  KEY `HotelID` (`HotelID`),
  KEY `TransportID` (`TransportID`),
  CONSTRAINT `tours_ibfk_1` FOREIGN KEY (`PriceID`) REFERENCES `prices` (`Id`),
  CONSTRAINT `tours_ibfk_2` FOREIGN KEY (`CreateID`) REFERENCES `accounts` (`ID`),
  CONSTRAINT `tours_ibfk_3` FOREIGN KEY (`HotelID`) REFERENCES `hotels` (`Id`),
  CONSTRAINT `tours_ibfk_4` FOREIGN KEY (`TransportID`) REFERENCES `transports` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours`
--

LOCK TABLES `tours` WRITE;
/*!40000 ALTER TABLE `tours` DISABLE KEYS */;
INSERT INTO `tours` VALUES (1,1,1234567890,1,15,'Hạ Long-Sapa-Hồ Chí Minh-4N3D','Đối với nhiều người, cảnh biển của Vịnh Hạ Long đồng nghĩa với Việt Nam. Du thuyền buồm trên làn nước xanh ngọc lục bảo giữa hàng ngàn hòn đảo và đảo nhỏ gồ ghề, dừng lại ở những hang động ngoạn mục mà qua đó du khách có thể đi lang thang, xem những thành tạo ấn tượng, hàng thế kỷ. Vẻ đẹp huyền bí của Vịnh Hạ Long đã khiến nó trở thành một điểm thu hút trong danh sách xô trong nước, nhưng vẫn có thể tìm thấy những góc hẻo lánh để gọi là của riêng bạn.','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F060131220896168?alt=media&token=8d0a3e23-0d51-480b-8800-74c5d3c1cb60','HD7-35, Châu Mỹ, Phường Bãi Cháy, Thành phố Hạ Long, Tỉnh Quảng Ninh',16,'2023-11-09 00:00:00',0),(2,3,1234567890,1,14,'(Tối Mồng 1,2,3,4 Tết)Quy Nhơn-Phú Yên, 4n4đ','Tham quan, vui chơi đầu năm mới trong khách sạn 4* ở thành phố Qui Nhơn, với nhiều dịch vụ khuyến mãi','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F035489930879475?alt=media&token=0448ebdb-158a-43d9-87b5-f0b973e849c3','5 An Dương Vương, Phường Nguyễn Văn Cừ, Thành phố Quy Nhơn, Tỉnh Bình Định',10,'2023-11-09 00:00:00',0),(3,3,1234567890,1,6,'Tối Mồng 1,2,3,4 Tết) Nha Trang,Biển Nhũ Tiên-Khám','Nằm trên một dải hoang sơ của bờ biển phía Nam, Nha Trang là một sân chơi cho những người yêu thích ánh nắng mặt trời. Những ngày ở đây được dành để ăn uống với hải sản ngon, lặn với ống thở quanh những hòn đảo tuyệt đẹp và tiệc tùng trên cát sau khi trời tối. Nha Trang tuyên bố chủ quyền đối với một số khu nghỉ mát sang trọng tốt nhất của đất nước và các môn thể thao dưới nước ly kỳ. Bất chấp sự bùng nổ phát triển, các làng chài đầy màu sắc và các nhà hàng ven sông thanh bình chỉ cách đó một quãng ngắn.','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F961014355997554?alt=media&token=63e2e7b2-c1f7-42c4-a19e-58546d7bc911','8 Hùng Vương, Phường Lộc Thọ, Thành phố Nha Trang, Tỉnh Khánh Hòa',20,'2023-11-09 01:25:59',0),(4,2,1234567890,1,16,'Tour Thác Bản Giốc 2 Ngày 1 Đêm','Tour thác Bản Giốc - Cao Bằng là cuộc phiêu lưu đẹp như tranh vẽ, dẫn khách khám phá thác nước hùng vĩ nhất Đông Nam Á. Tận hưởng cảm giác thư thái, ngắm thác đẹp mê hồn, và khám phá văn hóa độc đáo của người dân tộc dân dụ Cao Bằng. Một hành trình ngắn gọn, đầy ấn tượng, mang đến trải nghiệm độc đáo của vùng miền Việt Nam.','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F536191345583977?alt=media&token=8b143f42-39b7-4b7b-a71c-7cb014ff03b9','Đường tỉnh 206, Xóm Bản Giốc, Xã Đàm Thuỷ, Huyện Trùng Khánh, Tỉnh Cao Bằng',20,'2023-11-09 01:25:59',0),(5,2,1234567890,1,2,'Tour tham quan lòng hồ hang','Tour tham quan \"Lòng Hồ Hang\" là hành trình khám phá hang động độc đáo với những hồ nước trong xanh và không gian yên bình, mang đến trải nghiệm thú vị với vẻ đẹp tự nhiên huyền bí.','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F226332969423038?alt=media&token=e544b6ba-728f-4509-8c33-17a263ccce35','a, Thị trấn Na Hang, Huyện Na Hang, Tỉnh Tuyên Quang',30,'2023-11-09 01:25:59',0),(6,2,1234567890,1,18,'Ngắm Hồ Gươm','Thăm quan cảnh đẹp và lịch sử của một trong những khu du lịch nổi tiếng nhất Việt Nam','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F184172734705683?alt=media&token=37e7ab28-a1df-43a1-9740-bed3524a40b5','Hồ Gươm, Phường Hàng Trống, Quận Hoàn Kiếm, Thành phố Hà Nội',100,'2023-11-09 01:25:59',0),(7,2,1234567890,2,1,'Tour 7','Description 7','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F009499992024835?alt=media&token=205c73d1-5f2b-4568-8cd2-cf9c3818f773','rgre, Xã Xuân Lập, Huyện Lâm Bình, Tỉnh Tuyên Quang',20,'2023-11-09 01:25:59',0),(10,6,1234567890,1,12,'Tour tham quan miền Nam(Cần Thơ)','Tham quan chợ nổi cần thơ, trải nghiệm được cuộc sống hằng ngày của người dân trên ghe ở trợ nổi Cần Thơ','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F342805544042728?alt=media&token=631320eb-5cdb-4dcd-9264-857d0a3eb559','Phạm Hùng, Phường Lê Bình, Quận Cái Răng, Thành phố Cần Thơ',10,'2023-12-04 00:00:00',0),(14,10,1234567890,1,9,'Chuyến tham quan Nha Trang','Tham quan, trải nghiệm và vui chơi','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F625043461857559?alt=media&token=0a204f5b-ad58-4b08-966f-79a19920c26d','123, Phường Vĩnh Thọ, Thành phố Nha Trang, Tỉnh Khánh Hòa',20,NULL,0),(15,11,1234567890,2,12,'Ngắm cảnh','Tham quan cảnh đẹp cực chill','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F622034689081602?alt=media&token=98087056-8d0c-4a0a-aa42-e9e28540acaf','Số 123, Phường Ba Láng, Quận Cái Răng, Thành phố Cần Thơ',30,NULL,0),(16,12,1234567890,12,17,'CanTho Tour','Tham Quan Cần Thơ','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F554702757219679?alt=media&token=f1184a83-c4bb-4f24-852a-34fe603f1286','1234, Phường Cái Khế, Quận Ninh Kiều, Thành phố Cần Thơ',10,NULL,0),(17,13,1234567890,2,19,'Cà Mau Tour','Tour đi là ghiền với những đặc sản vô cùng ngon và tươi ','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F990432926350546?alt=media&token=2f76c7bc-0116-4fa8-aff5-f8d0c0edfec6','Đường 305, Phường Tân Xuyên, Thành phố Cà Mau, Tỉnh Cà Mau',100,NULL,0),(18,14,1234567890,2,20,'Cà Mau 2','Chuyến đi tới Cà Mau','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F395857969644566?alt=media&token=40769a7f-3cf7-4b73-88c6-ca1d72afe515','Số 234, Phường 5, Thành phố Cà Mau, Tỉnh Cà Mau',200,NULL,0),(19,15,1234567890,12,12,'Du lịch Cần Thơ 2 ngày 3 đêm ','Du lịch trải nghiệm cuộc sống miền Tây sông nước với đầy những điều thú vị. Ngoài những món ăn tươi ngon ra thì bạn còn được trải nghiệm khung cảnh làn nước vô cùng đẹp ','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F044028881244361?alt=media&token=ca57bb2c-0997-48dd-b0f0-6a3709d731cb','Đường 123 , Phường Lê Bình, Quận Cái Răng, Thành phố Cần Thơ',100,NULL,0),(20,16,1234567890,1,12,'Tour Cần Thơ','Tham quan chợ nổi Cái Răng','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F153722375630365?alt=media&token=4242395c-e163-4621-9dd9-4d3633c7936f','Số 123, Phường Ba Láng, Quận Cái Răng, Thành phố Cần Thơ',20,NULL,0),(22,18,1234567890,2,22,'PHÚ QUỐC | CÂU CÁ | LẶN NGẮM SAN HÔ | THỊ TRẤN HOÀ','Đó là một danh sách các địa điểm tuyệt vời trên đảo Phú Quốc ở Việt Nam! Phú Quốc có nhiều điểm đến hấp dẫn như Câu Cá, Lặn Ngắm San Hô, Thị Trấn Hoàng Hôn và Cầu Hôn.\n\nCâu Cá: Hoạt động câu cá thường thu hút du khách yêu thích điều câu cá, đây là hoạt động giải trí thú vị và thú vị trên đảo.\n\nLặn Ngắm San Hô: Phú Quốc nổi tiếng với vẻ đẹp dưới nước tuyệt vời, đặc biệt là hoạt động lặn ngắm san hô. Đây là cơ hội để khám phá vẻ đẹp tự nhiên của đại dương với rất nhiều loài san hô và động vật biển khác.\n\nThị Trấn Hoàng Hôn: Đây là một khu vực tại Phú Quốc nổi tiếng với bãi biển đẹp và không gian romantically được đặt tên theo hoàng hôn, thường thu hút du khách muốn tận hưởng cảnh đẹp vào lúc hoàng hôn.\n\nCầu Hôn: Đây có thể là một điểm đến lãng mạn và độc đáo, có thể là cầu cảm xúc và tình yêu của những cặp đôi.\n\nPhú Quốc là một điểm đến tuyệt vời cho du lịch, cung cấp nhiều trải nghiệm khám phá vẻ đẹp tự nhiên và văn hóa độc đáo của Việt Nam.','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F188917567449858?alt=media&token=f39af188-17a2-432e-8993-805c6ad6d234','63 Đường Trần Hưng Đạo , Phường Dương Đông, Thành phố Phú Quốc, Tỉnh Kiên Giang',20,NULL,1),(23,19,1234567890,13,24,'PHÚ QUỐC | THỊ TRẤN HOÀNG HÔN | VINPEARL SAFARI | ','Thị Trấn Hoàng Hôn Sunset Town\nVườn Thú Bán Hoang Dã - Vinpearl Safari \nThiên Đường Mua Sắm, Vui Chơi Giải Trí - Grand World','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F461162249067451?alt=media&token=482aba5f-3d90-41d4-945f-3b18cc3f73fd','Thị trấn Địa Trung Hải , Phường An Thới, Thành phố Phú Quốc, Tỉnh Kiên Giang',30,NULL,1),(24,20,1234567890,12,27,'ĐÀ LẠT | TEA RESORT THÁC PRENN | NÔNG TRẠI CÚN | M','à Lạt là một thành phố nằm ở miền Trung Việt Nam với khí hậu mát mẻ và cảnh quan thiên nhiên đẹp. Các địa điểm bạn liệt kê có thể là những điểm đến thú vị:\n\nTea Resort Thác Prenn: Điểm đến này có thể kết hợp cả trải nghiệm thưởng thức trà và tận hưởng cảnh quan thiên nhiên xung quanh thác nước Prenn. Đây là một điểm du lịch phổ biến ở Đà Lạt.\n\nNông Trại Cún: Nông trại là nơi du khách có thể tìm hiểu về cuộc sống nông dân tại Đà Lạt, trải nghiệm công việc trồng trọt, chăm sóc cây trồng và động vật nông sản.\n\nMê Linh Coffee: Đây có thể là một quán cà phê hay trang trại cà phê nằm giữa cảnh quan núi non tại Đà Lạt. Đây là nơi để thưởng thức cà phê ngon và tận hưởng không gian yên bình.\n\nĐà Lạt nổi tiếng với vùng đất đầy hoa và sự thơ mộng, cung cấp nhiều hoạt động thú vị như thăm các vườn hoa, thác nước, và thưởng thức ẩm thực đặc sản.','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F449617657432131?alt=media&token=e06d28eb-c551-4336-9c92-8c56fe09f651','138 Bùi Thị Xuân, Phường 2, Thành phố Đà Lạt, Tỉnh Lâm Đồng',30,'2023-12-17 20:32:42',1),(25,21,1234567890,12,25,'ĐÀ LẠT: THIÊN ĐƯỜNG SĂN MÂY | KOKORO COFFEE | MELI','\nĐà Lạt thực sự có nhiều điểm đến thú vị và độc đáo!\n\nThiên Đường Săn Mây: Đây có thể là một điểm dừng chân tuyệt vời để tận hưởng không gian yên bình, ngắm cảnh thiên nhiên và săn lùng những bức ảnh đẹp với đám mây.\n\nKokoro Coffee: Đây có thể là một quán cà phê độc đáo với không gian thiên nhiên, mang đến trải nghiệm thưởng thức cà phê và thư giãn giữa không gian xanh mát.\n\nMelinH Garden: Điểm đến này có thể là một khu vườn xinh đẹp, nơi bạn có thể tận hưởng vẻ đẹp của thiên nhiên, cây cối và thảo mộc đặc trưng của Đà Lạt.\n\nPuppy Farm: Nếu bạn yêu thích động vật, đây có thể là một trang trại nơi nuôi những chú chó nhỏ. Thường là nơi du khách có thể thăm và tương tác với các bé chó.\n\nNhững địa điểm này cho thấy sự đa dạng của Đà Lạt, từ cảnh đẹp tự nhiên đến không gian cà phê độc đáo và trải nghiệm với động vật. Đây chắc chắn là những điểm đến thú vị cho du khách muốn khám phá sự độc đáo của thành phố này.','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F857022566021823?alt=media&token=997d71cb-73be-4e77-9d8e-22a89a3e2b3e','42 Đường Bùi Thị Xuân, Phường 12, Thành phố Đà Lạt, Tỉnh Lâm Đồng',30,'2023-12-17 20:53:27',1),(26,22,NULL,1,28,'SAPA | LÀO CAI','Sapa, thị trấn nằm tại vùng núi Tây Bắc Việt Nam, nổi tiếng với những cánh đồng bậc thang tuyệt vời, nền văn hóa dân tộc độc đáo và cảnh đẹp hùng vĩ của dãy núi Hoàng Liên. Du khách có thể tham gia các cuộc phiêu lưu trekking đến các bản làng dân tộc, thăm thác nước bản Cát Cát, và tận hưởng không khí trong lành của vùng cao nguyên.','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F246509827826960?alt=media&token=96779e9b-fd77-48b8-b4f1-92977fac89f4','Khu Du Lịch Sapa Eco, Phường Sa Pa, Thị xã Sa Pa, Tỉnh Lào Cai',200,'2023-12-17 21:03:38',1),(27,23,1234567890,12,31,'NHA TRANG | KDL CON SẺ TRE | TIỆC BAR NỔI | VINWON','KDL Con Sẻ Tre (Khu Du Lịch Con Sẻ Tre): Đây có thể là một khu du lịch, nơi bạn có thể trải nghiệm không gian xanh mát với các cây tre và hoạt động giải trí như đi dạo, thư giãn và khám phá thiên nhiên.\n\nTiệc Bar Nổi: Có thể là một địa điểm giải trí với tiệc bar trên biển, thường có âm nhạc, đồ uống và không gian thư giãn giữa biển khơi.\n\nVinWonders: Đây là một công viên giải trí lớn tại Nha Trang, thu hút du khách với các trò chơi, cảnh quan và các hoạt động giải trí khác phù hợp cho mọi đối tượng từ trẻ em đến người lớn.\n\nNhững địa điểm này mang lại sự đa dạng trong trải nghiệm du lịch ở Nha Trang, từ việc khám phá thiên nhiên đến thư giãn, giải trí và trải nghiệm vui chơi gia đình.','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F627827728344726?alt=media&token=2b390a69-d887-43f1-b94d-ca0567a73c19','64/2 Tran Phu Street, Phường Vĩnh Thọ, Thành phố Nha Trang, Tỉnh Khánh Hòa',30,'2023-12-17 21:08:53',1),(28,24,1234567890,12,29,'NHA TRANG | VỊNH SAN HÔ | VINWONDERS/CITY TOUR','Nha Trang là điểm đến tuyệt vời cho việc thưởng ngoạn vẻ đẹp của vịnh san hô và trải nghiệm các hoạt động giải trí đa dạng.\n\nVịnh San Hô: Đây là một trong những điểm nổi tiếng của Nha Trang, nơi bạn có cơ hội tham gia các tour lặn ngắm san hô hoặc đi thuyền kính dưới nước để ngắm nhìn vẻ đẹp của đại dương và hệ sinh thái san hô.\n\nVinWonders/City Tour: VinWonders có thể là một công viên giải trí lớn với nhiều trò chơi, cảnh quan và hoạt động giải trí. Nếu ngoài VinWonders bạn còn muốn khám phá thêm về thành phố, có thể tham gia city tour để khám phá các địa danh, văn hóa và ẩm thực đặc trưng của Nha Trang.\n\nKết hợp giữa việc khám phá vịnh san hô tuyệt vời và trải nghiệm giải trí ở VinWonders, cùng với việc tham quan thành phố để hiểu rõ hơn về văn hóa địa phương, sẽ mang đến cho bạn một chuyến đi thú vị và đa dạng ở Nha Trang.','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F046320561592760?alt=media&token=6cc6ae02-c05e-4b6d-bb4c-ccfb7d68cbf8','Đường 123 , Phường Vĩnh Thọ, Thành phố Nha Trang, Tỉnh Khánh Hòa',30,'2023-12-17 21:24:36',1),(29,25,1234567890,12,19,'CÀ MAU TOUR ','Ngày 1: Khám Phá Thiên Nhiên và Văn Hóa Cà Mau\n\nBuổi Sáng:\n\n7:00 AM: Điểm tụ hợp làm đầu hành trình: Trung tâm thành phố Cà Mau.\n8:00 AM - 10:00 AM: Tham quan Công viên Đất Mũi Cà Mau - điểm cực nam của Việt Nam, ngắm bình minh và khám phá di tích cột cờ Đất Mũi.\n10:30 AM - 12:30 PM: Ghé thăm Cồn cát Vĩnh Trung - một bãi cát trắng tinh khoái.\nBuổi Chiều:\n\n1:30 PM - 3:30 PM: Tới Khu du lịch rừng tràm Trần Văn Khéo để trải nghiệm thuyền thúng giữa rừng tràm và học về sinh thái nơi đây.\n4:00 PM - 6:00 PM: Quay trở về trung tâm thành phố Cà Mau, tìm hiểu về văn hóa và ẩm thực đặc trưng tại khu chợ hoặc khu vực quán ăn địa phương.\nNgày 2: Khám Phá Đời Sống Vùng Đất Cà Mau\n\nBuổi Sáng:\n\n8:00 AM: Khởi hành từ trung tâm thành phố.\n9:00 AM - 11:30 AM: Tham quan Vườn Trái Cây Cù Lao Mạ - khám phá vườn trái cây nhiệt đới và thưởng thức trái cây tươi ngon.\n12:00 PM - 1:30 PM: Dùng cơm trưa tại nhà hàng địa phương.\nBuổi Chiều:\n\n2:30 PM - 4:30 PM: Ghé thăm Khu di tích Làng Chài Mũi Cà Mau - hiểu thêm về cuộc sống và nghề cá truyền thống của người dân nơi đây.\n5:00 PM: Kết thúc chuyến đi tại trung tâm thành phố Cà Mau hoặc điểm xuất phát.','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F594367546011239?alt=media&token=582d9eaf-cf07-4314-be9c-a7b6e66173e0','Phường 2 , Phường 1, Thành phố Cà Mau, Tỉnh Cà Mau',30,'2023-12-17 21:44:00',1),(30,26,1234567890,2,12,'Cần Thơ - Chợ Nổi Cái Răng','Du Xuân Sông Nước Miền Tây\nĐược thiên nhiên ưu đãi cho yếu tố địa hình sông nước với những vườn trái cây trĩu quả, những cánh đồng lúa thẳng cánh cò bay, vì thế nên miền Tây luôn là điểm đến lý tưởng để du khách hòa mình vào thiên nhiên, sau những ngày làm việc bận rộn nơi phố thị ồn ào. Mỗi tỉnh miền Tây có một màu sắc riêng, mỗi đặc trưng riêng, cùng iVIVU khám phá ngay hôm nay!\n\nNhững trải nghiệm thú vị trong chương trình\n- Tham quan Cù Lao Thới Sơn.\n\n- Trải Nghiệm Chợ Nổi Cái Răng.\n\n- Thưởng Thức Đặc Sản Miền Sông Nước.\n\n- Thưởng ngoạn du thuyền trên sông Hậu.','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F628082979140996?alt=media&token=2a13ab28-3fa1-4c81-a0c5-262902392897','509 Trần Hưng Đạo , Phường Lê Bình, Quận Cái Răng, Thành phố Cần Thơ',30,'2023-12-17 22:01:28',1),(31,27,1234567890,12,12,'Cần Thơ City - Một Ngày Tây Đô','Về vùng hoang dã sông nước miền Tây\nCần Thơ là thành phố lớn thứ tư của Việt Nam với nền kinh tế phát triển, cùng với đó là sự phát triển mạnh mẽ của ngành du lịch. Thành phố này có nhiều điểm đến thú vị và độc đáo như chợ nổi Cái Răng, vườn trái cây Cồn Sơn, khu di tích Bình Thủy, chùa Ông, đài tưởng niệm tướng Nguyễn Trung Trực, khu du lịch sinh thái Tràm Chim và khu du lịch sinh thái Bảy Núi, không chỉ hình ảnh ghe thuyền tấp nập trên sông, vườn trái cây xanh ngát, nét văn hóa cổ kính Đông – Tây, mà còn là dịp thưởng thức các món đặc sản ẩm thực Tây Nam Bộ và gặp gỡ giao lưu với những con người miền Tây hiền lành, thân thiện – chất phác. Cùng iVIVU khám phá ngay hôm nay ! \n\nNhững trải nghiệm thú vị trong chương trình\n- Chợ nổi Cái Răng là một trong những chợ nổi lớn nhất và nổi tiếng nhất ở đồng bằng sông Cửu Long. Du khách có thể tận mắt thấy cảnh các thuyền nhỏ của người dân đưa hàng hóa đến chợ, hoặc tham gia trải nghiệm ẩm thực đặc sắc của miền Tây như lẩu cá linh, bánh xèo, bún nước lèo...\n\n- Khu di tích Bình Thủy là một ngôi nhà cổ kiểu Pháp nằm ngay trên bờ sông Hậu, với kiến trúc độc đáo và lịch sử phong phú. Đây là một trong những địa điểm thu hút nhiều du khách tới tham quan và khám phá về lịch sử và văn hóa địa phương.\n\n- Vườn trái cây Cồn Sơn là một điểm đến thú vị để khám phá và thưởng thức các loại trái cây nhiệt đới như xoài, dừa, sầu riêng...','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F790796903718900?alt=media&token=1335166c-fff1-4bb6-9cf9-75623c99aee3','Trần Hưng Đạo , Phường Lê Bình, Quận Cái Răng, Thành phố Cần Thơ',30,'2023-12-17 22:23:37',1),(32,28,1234567890,1,34,'Tour Hà Nội 1N: Tham Quan Phố Cổ','Nét văn hóa Thủ đô ngàn năm văn hiến\nHà Nội là thủ đô của Việt Nam và cũng là một thành phố có truyền thống, lịch sử và văn hóa lâu đời. Khu phố cổ và thành cổ thu hút du khách với vẻ cổ kính của các con phố nghề đặc trưng và các di tích nổi bật như Văn Miếu – Quốc Tử Giám. Cùng iVIVU khám phá thêm mảnh đất Thủ đô ngay hôm nay!\n\nNhững trải nghiệm thú vị trong chương trình\nKhám phá Hà Nội đừng nên bỏ qua...\n\n- Chùa Trấn Quốc: ngôi chùa lâu đời nhất ở Thăng Long – Hà Nội khi có lịch sử lên đến 1500 năm, được trang Thrillist uy tín bình chọn là một trong những ngôi chùa đẹp nhất thế giới.\n\n- Văn Miếu Quốc Tử Giám: ngôi trường đại học đầu tiên của Việt Nam, không chỉ là di tích lịch sử nổi tiếng của thủ đô Hà Nội mà còn là nơi chứa đựng những giá trị tinh hoa văn hóa của những giai đoạn lịch sử phong kiến trước kia và lưu giữ những giá trị truyền thống của đất Việt.','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F799567607035822?alt=media&token=a0d87fb7-7bce-48b1-aaed-0a86c3972858','36 Hang Voi, Phường Hàng Mã, Quận Hoàn Kiếm, Thành phố Hà Nội',35,'2023-12-17 22:44:32',1),(33,29,1234567890,1,37,'Tour Hà Nội 1N: Tham quan Chùa Hương','Vãn cảnh lễ Chùa Hương Tích\nChùa Hương là một trong những ngôi chùa lớn nhất tại Việt Nam cách Hà nội khoảng 80 km về phía Nam, với lễ hội chùa Hương kéo dài từ tháng 1-3 âm lịch hàng năm đã thu hút hàng trăm nghìn lượt khách hàng năm về du ngoạn cảnh chùa với không khí mát mẻ và thả hồn mình trong dòng sông Yến tại chốn linh thiêng. Cùng iVIVU khám phá ngay hôm nay!\n\nNhững trải nghiệm thú vị trong chương trình\nVãn cảnh chùa Hương không thể bỏ qua...\n\n- Chùa Thiên Trù: được ví như một lâu đài nguy nga, tráng lệ “Biệt chiếm nhất nam thiên” giữa núi rừng Hương Sơn.\n\n- Suối Yên: còn mang tên Yến Vĩ, vì có hình dáng tựa như chiếc đuôi xòe rộng của một con chim yến, với dòng nước trong vắt trôi êm ả giữa núi đồi xanh ngắt.','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F835006099415932?alt=media&token=db950bf0-0c52-40f3-82b8-4c9c16879c7c','JP9W+5H8, Xã Hương Sơn, Huyện Mỹ Đức, Thành phố Hà Nội',30,'2023-12-17 22:59:32',1),(34,30,1234567890,1,38,'Tour Huế 1N: Ẩm Thực Cố Đô Huế','Ẩm Thực Cố Đô\nHuế trong suy nghĩ của nhiều người vẫn luôn là một miền đất đẹp, cổ kính, uy nghi của lăng tẩm pha lẫn sự dịu dàng của sông Hương xanh biếc và sự lãng mạn của cầu Tràng Tiền lấp lánh mỗi tối. Nhưng đâu chỉ có thế, Huế còn là mảnh đất của nền ẩm thực trù phú, ngon, bổ, rẻ đúng điệu. Hãy cùng khám phá Huế Food Tour bằng xích lô, loại phương tiện được ưa thích bởi sự chậm rãi của nó khi đi trên những cung đường đẹp, nhàn nhã ngắm cảnh, quan sát những nét vẽ hiện ra mà chỉ khi ngồi trên những chiếc xích lô mới có thể cảm nhận được. Cùng iVIVU khám phá ngay hôm nay! \n\nNhững trải nghiệm thú vị trong chương trình\n- Thưởng thức các món ăn truyền thống và hương vị của món ăn Huế\n\n- Tìm hiểu về ẩm thực và nét tinh hoa trong món ăn Huế\n\n- Chiêm ngưỡng cảnh đẹp thành phố về đêm bằng xích lô','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F308534530553526?alt=media&token=2f7d6782-378c-40a2-b1cd-495bc75362eb','Tây Lộc , Phường Tây Lộc, Thành phố Huế, Tỉnh Thừa Thiên Huế',30,'2023-12-17 23:14:41',1),(35,31,1234567890,1,39,'Tour Huế 1N: Hành Trình Cố Đô Huế','Đến Với Đất Kinh Thành\nTour Huế 1 ngày là lựa chọn không thể bỏ qua khi du lịch cố đô Huế với nhiều điểm đến hấp dẫn, tìm hiểu về văn hóa lịch sử cố đô qua các công trình kiến trúc Hoàng cung, lăng tẩm dưới triều đại nhà Nguyễn, tham quan các làng nghề truyền thống và trải nghiệm ẩm thực cung đình vô cùng đặc sắc, được khởi hành từ Huế. Cùng iVIVU khám phá ngay hôm nay ! \n\nNhững trải nghiệm thú vị trong chương trình\nHuế City Tour 1 Ngày Từ Huế tham quan:\n\n- Lăng Khải Định: Đến xứ Huế mộng mơ đừng bỏ qua lăng Khải Định Huế - điểm check-in sống ảo tuyệt đẹp, nổi bật với kiến trúc được thiết kế công phu, tinh xảo, mang vẻ đẹp đầy tính nghệ thuật.\n\n- Chùa Thiên Mụ: Vẻ đẹp của ngôi chùa được tạo nên từ sự hòa quyện giữa giá trị lịch sử, tâm linh và giá trị văn hóa nghệ thuật độc đáo.\n\n- Đại Nội Huế, hay còn được gọi là Hoàng Thành Huế, là vòng thành thứ 2 nằm bên trong Kinh thành Huế. Di tích này không chỉ có ý nghĩa quan trọng trong việc bảo vệ cung điện, miếu thờ và Tử Cẩm Thành mà giờ đây còn trở thành điểm đến hấp dẫn bật nhất tại Huế. Dù các triều đại vua chúa Nguyễn đã suy tàn, song những bí ẩn về chốn thâm cung của những đời vua đã từng cai trị ở đây vẫn còn.','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F541963047410724?alt=media&token=59bbd083-5888-4e53-bc06-dbe59ecae4c3','Thuận Lộc , Phường Thuận Lộc, Thành phố Huế, Tỉnh Thừa Thiên Huế',30,'2023-12-17 23:18:00',1),(36,32,1234567890,1,38,'Tour Huế 1N: Huế Sống Lành - Đi Để Trở Về','Huế - Nơi Ký Ức Trở Về\nHuế có sông Hương hiền hòa thơ mộng, có núi Ngự thông reo vi vu giữa trời xanh. Huế có Kinh Thành, nơi chứng kiến biết bao sự đổi thay quyền cai trị đất nước, lúc thịnh lúc suy. Huế có lăng tẩm đền đài lưu dấu ngàn thu của các bậc Vua Chúa. Huế có Thiên Mụ, ngôi cổ tự hùng thiêng trải qua bao thế hệ. Những hồi chuông Thiên Mụ còn mãi ngân vang từ ngàn xưa cho tới tận ngàn đời sau. Huế khiến ai đặt chân đến bỗng nhiên bước chầm chậm hẳn lại, đẹp đến mê hồn bởi màu xanh trong như ngọc bích, bởi ôm trọn bóng của sự sống dọc hai bên bờ. Cùng iVIVU khám phá ngay!\n\nNhững trải nghiệm thú vị trong chương trình\n- Trải nghiệm đạp xe dọc bờ sông Hương tận hưởng bầu không khí trong lành vào sớm ban mai.\n\n- Thiền định an nhiên.\n\n- Ghé thăm ngôi nhà của những mảnh đời gặp khó khăn về thính giác nhưng lại đầy lạc quan, lắng nghe những câu chuyện và trao đổi ngôn ngữ ký hiệu, làm hoa giấy cùng thành phẩm mang về...\n\n- Du thuyền sông Hương thưởng thức trà và bánh ngọt.','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F319290829452431?alt=media&token=612a6778-babf-4915-9551-e0e297c97d5f','Gia Hội , Phường Gia Hội, Thành phố Huế, Tỉnh Thừa Thiên Huế',30,'2023-12-17 23:22:08',1),(37,33,1234567890,1,41,'Tour Đà Nẵng 1N: Rừng Dừa 7 Mẫu','Nam Bộ Trong Lòng Phố Hội\nRừng dừa Bảy Mẫu là khu du lịch sinh thái nổi tiếng ở Hội An. Đến đây, bạn sẽ được trải nghiệm ngồi thuyền thúng tham quan khu rừng dừa xanh mướt giữa không gian yên bình, được chiêm ngưỡng tiết mục múa thúng, đua thuyền và thưởng thức đặc sản địa phương…Cùng iVIVU khám phá ngay hôm nay! \n\nNhững trải nghiệm thú vị trong chương trình\nHoạt động Rừng Dừa 7 Mẫu dành cho những du khách thích trải nghiệm sự mới lạ, nhiệt huyết, hòa mình vào không khí ồn ào, náo nhiệt...vì chính du khách sẽ thưởng thức:\n\n- Di chuyển lên thuyền thúng một loại thuyền đặc trưng ở đây để di chuyển vào tham quan rừng dừa.\n\n- Trải nghiệm các trò chơi vô cùng vui nhộn như thử sức với hoạt động chèo thúng, tham gia trải nghiệm trở thành người nông dân với các hoạt động câu cá, bắt cua, quăng chài lưới,…\n\n- Quý khách sẽ được chiêm ngưỡng kỹ thuật chèo thuyền và quăng lưới điệu nghệ của những người nông dân chân chất.','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F376683678222172?alt=media&token=c5eddf24-8dd4-4917-b6d0-6c4b58e31a1c','Hiệp Bắc , Phường Hòa Hiệp Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng',30,'2023-12-17 23:27:18',1),(38,34,1234567890,1,43,'Tour Đà Nẵng 1N: Thánh Địa Mỹ Sơn','Khám Phá Vương Quốc Chăm Pa\nĐà Nẵng luôn thu hút du khách với bề dày lịch sử, văn hóa, ẩm thực đặc sắc, những bãi biển tuyệt đẹp và phong cảnh thiên nhiên hữu tình. Đây là quê hương của các di sản văn hóa, lịch sử thế giới được UNESCO công nhận như phố cổ Hội An,  thánh địa Mỹ Sơn, bài Chòi...Cảm nhận vùng đất này như một bản giao hưởng tuyệt vời của một nền văn hóa, lịch sử giàu bản sắc hòa cùng thiên nhiên tươi đẹp và sự phát triển mạnh mẽ hướng đến tương lai. Cùng iVIVU khám phá ngay hôm nay!\n\nNhững trải nghiệm thú vị trong chương trình\n- Thánh địa Mỹ Sơn là di sản lịch sử nổi tiếng của tỉnh Quảng Nam với quần thể kiến trúc gồm nhiều đền đài Chăm Pa vô cùng độc đáo.','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F285291274511730?alt=media&token=102fdc6d-6449-4166-8590-5ec020ae2c8e','Hiệp Nam , Phường Hòa Hiệp Nam, Quận Liên Chiểu, Thành phố Đà Nẵng',30,'2023-12-17 23:37:05',1),(39,35,1234567890,1,43,'Tour Đà Nẵng 1N: Cù Lao Chàm - Bãi Ông','Cù Lao Chàm\nCù Lao Chàm đã được UNESCO công nhận là khu dự trữ sinh quyển của thế giới. Nơi đây bảo tồn tới 950 loài thủy sinh. Khách du lịch tới đây hoàn toàn bị thu hút bởi thiên nhiên hoang sơ và những làng chài yên bình, thơ mộng. Cùng iVIVU khám phá ngay hôm nay!\n\nNhững trải nghiệm thú vị trong chương trình\n- Tham gia các hoạt động tắm biển, lặn biển, vui chơi trên biển,...\n\n- Câu cá cùng ngư dân, cắm trại ven biển, lặn biển ngắm san hô, thưởng thức hải sản tươi ngon\n\n ','https://firebasestorage.googleapis.com/v0/b/duantotnghiep-1f58b.appspot.com/o/tour-img%2F599698649579353?alt=media&token=99c5e5a0-2903-4e64-b804-04c9cb059e82','Khách Nam, Phường Hòa Khánh Nam, Quận Liên Chiểu, Thành phố Đà Nẵng',30,'2023-12-17 23:44:16',1);
/*!40000 ALTER TABLE `tours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transports`
--

DROP TABLE IF EXISTS `transports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transports` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `Seating_capacity` int DEFAULT NULL,
  `Create_User` bigint DEFAULT NULL,
  `Create_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `Update_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `Update_User` bigint DEFAULT NULL,
  `is_Delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `Create_User` (`Create_User`),
  KEY `Update_User` (`Update_User`),
  CONSTRAINT `transports_ibfk_1` FOREIGN KEY (`Create_User`) REFERENCES `accounts` (`ID`),
  CONSTRAINT `transports_ibfk_2` FOREIGN KEY (`Update_User`) REFERENCES `accounts` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transports`
--

LOCK TABLES `transports` WRITE;
/*!40000 ALTER TABLE `transports` DISABLE KEYS */;
INSERT INTO `transports` VALUES (1,'Xe Bus',200000,50,NULL,'2023-12-05 17:15:29','2023-12-17 16:36:13',1234567890,0),(2,'Tàu',800000,100,NULL,'2023-12-05 00:00:00','2023-12-17 16:35:55',1234567890,0),(12,'Xe khách 16 chỗ ',800000,16,NULL,'2023-12-14 20:31:58','2023-12-17 16:35:39',1234567890,0),(13,'Máy bay ',1200000,200,NULL,'2023-12-17 16:34:57','2023-12-17 16:35:15',1234567890,0),(14,'Xe khách 18 chỗ ',1000000,18,NULL,'2023-12-17 16:36:36','2023-12-17 22:38:40',1234567890,0);
/*!40000 ALTER TABLE `transports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'Piltover_Travel'
--

--
-- Dumping routines for database 'Piltover_Travel'
--
/*!50003 DROP PROCEDURE IF EXISTS `Booking_Cancel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `Booking_Cancel`(
in bid bigint,
in upUser bigint,
in newStatus int
)
BEGIN
	UPDATE bookings
SET
	Update_at = CONVERT_TZ(NOW(), 'UTC', 'Asia/Ho_Chi_Minh') ,
	Update_User = upUser,
	Status = newStatus
	WHERE Id =bid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Booking_Count` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `Booking_Count`(in status_in int,OUT count_out INT)
BEGIN
	select COUNT(*) into count_out from bookings where bookings.Status=status_in;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Booking_Count0_1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `Booking_Count0_1`(out count_out int)
BEGIN
	select COUNT(*) into count_out from bookings where bookings.status<2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Booking_CountByTourDateId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `Booking_CountByTourDateId`(
in Tour_DateID bigint,
OUT count_out INT)
BEGIN
 SELECT
        COALESCE(SUM(bookings.Total_passengers), 0)
    INTO
        count_out
    FROM
        bookings
    WHERE
        bookings.Status < 2
        AND bookings.Tour_DateID = Tour_DateID;

    -- If the sum is null (no matching records) or zero, set count_out to 0
    IF count_out IS NULL OR count_out = 0 THEN
        SET count_out = 0;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Booking_Outdated` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `Booking_Outdated`()
BEGIN
SELECT Piltover_Travel.bookings.Id FROM Piltover_Travel.bookings inner join Piltover_Travel.tour_dates on Piltover_Travel.bookings.Tour_DateID = Piltover_Travel.tour_dates.Id 
where Piltover_Travel.bookings.Status = 0 and  Piltover_Travel.tour_dates.Initiate_date > current_timestamp() && DATEDIFF(Piltover_Travel.tour_dates.Initiate_date, current_timestamp()) <= 3;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CallHomeTour` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CallHomeTour`()
BEGIN
    -- Truy vấn SQL để tính tổng doanh thu
SELECT
    T.Id as tourID,
    T.Name AS name_tour,
    T.Image as image,
    H.Name AS hotel_name,
    H.Star AS hotel_star,
    T.Destination_address as start_address,
    TP.Start_time as start_time,
    P.Adult_price as adult_price,
    P.Children_price as children_price,
    TR.Name AS transport_name
FROM tours T
INNER JOIN prices P ON T.PriceID = P.Id
INNER JOIN hotels H ON T.HotelID = H.Id
INNER JOIN tour_dates TD ON T.Id = TD.TourID
INNER JOIN tour_plan TP ON TD.id = TP.Tour_Date_ID
INNER JOIN transports TR ON T.TransportID = TR.Id
WHERE TD.StatusID = 2 and T.Active = 1
AND (T.Id, TP.Start_time) IN (
    SELECT T2.Id, MIN(TP2.Start_time)
    FROM tours T2
    INNER JOIN tour_dates TD2 ON T2.Id = TD2.TourID
    INNER JOIN tour_plan TP2 ON TD2.id = TP2.Tour_Date_ID
    WHERE T.Id = T2.Id
    GROUP BY T2.Id
);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CallHomeTourSearch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CallHomeTourSearch`(IN start_date DATE, IN tour_name VARCHAR(255), IN start_address VARCHAR(255), IN min_price DECIMAL(10, 2), IN max_price DECIMAL(10, 2))
BEGIN
    -- Truy vấn SQL để tính tổng doanh thu
SELECT
    T.Id as tourID,
    T.Name AS name_tour,
    T.Image as image,
    H.Name AS hotel_name,
    H.Star as hotel_star,
    T.Destination_address as start_address,
    TD.Initiate_date AS start_time,
    P.Adult_price as adult_price,
    P.Children_price as children_price,
    TR.Name AS transport_name
FROM tours T
INNER JOIN prices P ON T.PriceID = P.Id
INNER JOIN hotels H ON T.HotelID = H.Id
INNER JOIN (
    SELECT 
        TD.TourID, 
        MIN(TD.Initiate_date) AS Start_time
    FROM tour_dates TD
    WHERE TD.Initiate_date >= start_date OR start_date IS NULL
    GROUP BY TD.TourID
) TMP ON T.Id = TMP.TourID
INNER JOIN tour_dates TD ON TMP.TourID = TD.TourID AND TMP.Start_time = TD.Initiate_date
INNER JOIN transports TR ON T.TransportID = TR.Id
WHERE TD.StatusID = 2 and T.Active = 1
AND (tour_name IS NULL OR T.Name LIKE CONCAT('%', tour_name, '%'))
AND (start_address IS NULL OR T.Destination_address LIKE CONCAT('%', start_address, '%'))
AND (P.Adult_price >= min_price AND (max_price = -1 OR P.Adult_price <= max_price));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CallHotelRevenue` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CallHotelRevenue`(IN startDate DATE, IN endDate DATE)
BEGIN
    -- Truy vấn SQL để tính tổng doanh thu
SELECT
    H.Name AS hotel_name,
    H.Price AS hotel_price,
    SUM(H.Price) AS total_hotel_revenue,
    COUNT(*) AS total_hotel_booking
FROM
    hotels AS H
    JOIN tours AS T ON H.Id = T.HotelID
    JOIN tour_dates AS TD ON T.Id = TD.TourID
    JOIN bookings AS B ON TD.Id = B.Tour_DateID
    JOIN booking_detail AS BD ON B.Id = BD.BookingID
    JOIN prices AS P ON T.PriceID = P.Id
WHERE
    B.Status = 1
    AND BD.Booking_time BETWEEN startDate AND endDate
GROUP BY
    hotel_name, hotel_price
ORDER BY
    total_hotel_revenue DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CallMonthTotalRevenue` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CallMonthTotalRevenue`(IN startDate DATE, IN endDate DATE)
BEGIN
    -- Truy vấn SQL để tính tổng doanh thu
  SELECT
    DATE_FORMAT(BD.Booking_time, '%Y-%m') AS month,
    SUM(BD.Adult * P.Adult_price + BD.Children * P.Children_price) AS total_tour_revenue,
    SUM(IFNULL(H.Price, 0)) AS total_hotel_revenue,
    SUM(IFNULL(TP.Price, 0)) AS total_transport_revenue
FROM
    booking_detail AS BD
    JOIN bookings AS B ON BD.BookingID = B.Id
    JOIN tour_dates AS TD1 ON B.Tour_DateID = TD1.Id
    JOIN tours AS T ON TD1.TourID = T.Id
    JOIN prices AS P ON T.PriceID = P.Id
    LEFT JOIN hotels AS H ON T.HotelID = H.Id
    LEFT JOIN accounts AS A ON B.Create_User = A.ID
    LEFT JOIN tour_plan AS TPT ON TD1.TourID = TPT.ID
    LEFT JOIN transports AS TP ON TPT.TransportID = TP.Id
WHERE
    B.Status = 1
    AND BD.Booking_time BETWEEN startDate AND endDate
GROUP BY
    month
ORDER BY
    month;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CallStartAddress` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CallStartAddress`()
BEGIN
    -- Truy vấn SQL để tính tổng doanh thu
	SELECT DISTINCT  start_address as start_address FROM tour_plan;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CallTotalRevenue` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CallTotalRevenue`(IN startDate DATE, IN endDate DATE)
BEGIN
    -- Truy vấn SQL để tính tổng doanh thu
	SELECT
    SUM(BD.Adult * P.Adult_price + BD.Children * P.Children_price) AS total_tour_revenue,
    SUM(H.Price) AS total_hotel_revenue,
    SUM(TP.Price) AS total_transport_revenue,
    SUM(BD.Adult * P.Adult_price + BD.Children * P.Children_price) + SUM(H.Price) + SUM(TP.Price) AS total_revenue
FROM
     booking_detail AS BD
    JOIN bookings AS B ON BD.BookingID = B.Id
    JOIN tour_dates AS TD1 ON B.Tour_DateID = TD1.Id
    JOIN tours AS T ON TD1.TourID = T.Id
    JOIN prices AS P ON T.PriceID = P.Id
    LEFT JOIN hotels AS H ON T.HotelID = H.Id
    LEFT JOIN accounts AS A ON B.Create_User = A.ID
    LEFT JOIN tour_plan AS TPT ON TD1.TourID = TPT.ID
    LEFT JOIN transports AS TP ON TPT.TransportID = TP.Id
WHERE
    B.Status = 1
    AND BD.Booking_time BETWEEN startDate AND endDate;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CallTourRevenue` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CallTourRevenue`(IN startDate DATE, IN endDate DATE)
BEGIN
    -- Truy vấn SQL để tính tổng doanh thu
SELECT
    T.Name AS total_name,
    P.Adult_price AS adult_price,
    P.Children_price AS children_price,
    SUM(BD.Adult) AS adult_bookings,
    SUM(BD.Children) AS children_bookings,
    SUM(BD.Adult * P.Adult_price + BD.Children * P.Children_price) AS total_revenue
FROM
    bookings AS B
    JOIN booking_detail AS BD ON B.Id = BD.BookingID
    JOIN tour_dates AS TD ON B.Tour_DateID = TD.Id
    JOIN tours AS T ON TD.TourID = T.Id
    JOIN prices AS P ON T.PriceID = P.Id
WHERE
    B.status = 1 AND BD.Booking_time BETWEEN startDate AND endDate
GROUP BY
    T.Name, P.Adult_price, P.Children_price
ORDER BY
	total_revenue DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CallTransportRevenue` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CallTransportRevenue`(IN startDate DATE, IN endDate DATE)
BEGIN
    -- Truy vấn SQL để tính tổng doanh thu
SELECT
    T.Name AS transport_name,
    T.Price AS transport_price,
    COUNT(BD.Id) AS total_transport_booking,
    SUM(T.Price) AS total_transport_revenue
FROM
    transports AS T
    JOIN tour_plan AS TP ON T.Id = TP.TransportID
    JOIN tour_dates AS TD ON TP.ID = TD.TourID
    JOIN bookings AS B ON TD.Id = B.Tour_DateID
    JOIN booking_detail AS BD ON B.Id = BD.BookingID
WHERE
    B.Status = 1 and BD.Booking_time BETWEEN startDate AND endDate
GROUP BY
    T.Name, T.Price
ORDER BY
    total_transport_revenue DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CancelBooking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CancelBooking`(
in bid bigint,
in upUser bigint,
in newStatus int
)
BEGIN
	UPDATE bookings
SET
	Update_at = CONVERT_TZ(NOW(), 'UTC', 'Asia/Ho_Chi_Minh') ,
	Update_User = upUser,
	Status = newStatus
	WHERE Id =bid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CheckUserLike` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CheckUserLike`(IN userId INT, IN postId INT)
BEGIN
	SELECT Is_Like FROM likes WHERE Like_User = userId AND PostID = postId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CountLikePost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CountLikePost`(IN id INT)
BEGIN
	SELECT COUNT(*)
	FROM likes
	WHERE Is_Like = 1 AND PostID = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Discount_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `Discount_Insert`(
    IN name VARCHAR(255),
    IN percentage float,
    IN amount int,
    IN create_User bigint,
    IN min float,
    IN max float
)
BEGIN
DECLARE v_Code VARCHAR(10);
    
    REPEAT
        SET v_Code = CONCAT(
            CHAR(FLOOR(65 + RAND() * 26)),
            CHAR(FLOOR(65 + RAND() * 26)),
            FLOOR(RAND() * 10),
            FLOOR(RAND() * 10),
            CHAR(FLOOR(65 + RAND() * 26)),
            FLOOR(RAND() * 10),
            CHAR(FLOOR(65 + RAND() * 26)),
            FLOOR(RAND() * 10),
            FLOOR(RAND() * 10),
            CHAR(FLOOR(65 + RAND() * 26))
        );
    UNTIL NOT EXISTS (SELECT 1 FROM `Piltover_Travel`.`discounts` WHERE `Code` = v_Code) END REPEAT;

    INSERT INTO discounts 
    (`Name`, `Percentage`, `Amount`, `Code`, `Create_User`, `Create_at`, `Update_at`, `Update_User`, `is_Delete`, `min`, `max`)
    VALUES
    (name, percentage, amount, v_Code, create_User, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, create_User, 0, min, max);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Discount_ReadAll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `Discount_ReadAll`()
BEGIN
	SELECT * FROM discounts;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Discount_ReadOneByID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `Discount_ReadOneByID`(in id_in bigint)
BEGIN
	SELECT * FROM discounts where discounts.id=id_in;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Discount_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `Discount_Update`(
	IN did bigint,
	IN name VARCHAR(255),
    IN percentage float,
    IN amount int,
    IN Update_User bigint,
    IN min float,
    IN max float
)
BEGIN
	UPDATE 
		discounts
	SET
		Name = name,
		Percentage = percentage,
		Amount = amount,
		Update_at = CONVERT_TZ(NOW(), 'UTC', 'Asia/Ho_Chi_Minh') ,
		Update_User = Update_User,
		min = min,
		max = max
	WHERE
		discounts.Id = did
        and
        discounts.is_Delete=0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FindAllHistory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `FindAllHistory`()
BEGIN
	select * from bookings;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllPosts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `GetAllPosts`()
BEGIN
	SELECT *
	FROM posts
	WHERE is_Delete = 0
    ORDER BY id DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetLike` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `GetLike`(IN userId INT, IN postId INT)
BEGIN
	SELECT * FROM likes WHERE Like_User = userId AND PostID = postId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetListTourPlan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `GetListTourPlan`(in bid bigint)
BEGIN
	select tp.* from tour_plan tp
	join tour_dates td on tp.Tour_Date_ID=td.id
	join bookings b on b.Tour_DateID=td.id
	where b.id=bid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetListTourPlanDetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `GetListTourPlanDetail`(in bid bigint)
BEGIN
	select tpd.* from tour_plan_detail tpd
	join tour_plan tp on tp.id=tpd.Tour_Plan_ID
	join tour_dates td on tp.Tour_Date_ID=td.id
	join bookings b on b.Tour_DateID=td.id
	where b.id=bid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetRandomPosts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `GetRandomPosts`()
BEGIN
	SELECT * FROM posts WHERE is_Delete = 0 ORDER BY RAND() LIMIT 3;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `History_OfAccount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `History_OfAccount`(
    IN p_uname VARCHAR(50)
)
BEGIN
        SELECT 
            ac.ID AS userID,
            ac.fullname,
            bd.BookingID,
            bd.Adult,
            bd.Children,
            b.Create_at AS book_date,
            b.Total_price as total_price,
            b.Status AS booking_status,
            d.Name AS discount_name,
            d.Percentage AS discount_percentage,
            d.code AS discount_code,
            t.id AS tour_id,
            t.name AS tour_name,
            t.Description AS tour_description,
            tp.name AS transport_name,
            td.Initiate_date AS start_date,
            tpl.Start_address AS start_address,
            tpl_dt.Start_time as start_time,
            tpl_dt.End_time as end_time
        FROM 
            booking_detail AS bd
            JOIN bookings AS b ON b.id = bd.BookingID
            JOIN accounts AS ac ON b.create_User = ac.ID
            JOIN discounts AS d ON d.id = b.DiscountID
            JOIN tour_dates AS td ON td.Id = b.Tour_DateID
            JOIN tours AS t ON t.id = td.TourID
            JOIN transports AS tp ON tp.id = t.TransportID
            JOIN tour_plan AS tpl ON tpl.Tour_Date_ID = td.id
            JOIN tour_plan_detail AS tpl_dt ON tpl_dt.Tour_Plan_ID = tpl.id
        WHERE
            ac.Email = p_uname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `History_ReadAll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `History_ReadAll`(
    IN p_uname bigint
)
BEGIN
        SELECT 
           *
		FROM
			bookings 
        WHERE
            bookings.Create_User = p_uname
		ORDER BY
		bookings.Create_at  DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `History_ReadOne` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `History_ReadOne`(
    IN p_uname bigint,
    IN p_bookingid bigint
)
BEGIN
		SELECT 
           bd.*
        FROM 
            booking_detail as bd
            join bookings as b
            on bd.BookingID=b.id
        WHERE
			b.Create_User=p_uname
            and
            bd.BookingID=p_bookingid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertDiscount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `InsertDiscount`(
    IN name VARCHAR(255),
    IN percentage float,
    IN amount int,
    IN create_User bigint,
    IN min float,
    IN max float
)
BEGIN
DECLARE v_Code VARCHAR(10);
    
    REPEAT
        SET v_Code = CONCAT(
            CHAR(FLOOR(65 + RAND() * 26)),
            CHAR(FLOOR(65 + RAND() * 26)),
            FLOOR(RAND() * 10),
            FLOOR(RAND() * 10),
            CHAR(FLOOR(65 + RAND() * 26)),
            FLOOR(RAND() * 10),
            CHAR(FLOOR(65 + RAND() * 26)),
            FLOOR(RAND() * 10),
            FLOOR(RAND() * 10),
            CHAR(FLOOR(65 + RAND() * 26))
        );
    UNTIL NOT EXISTS (SELECT 1 FROM `Piltover_Travel`.`discounts` WHERE `Code` = v_Code) END REPEAT;

    INSERT INTO discounts 
    (`Name`, `Percentage`, `Amount`, `Code`, `Create_User`, `Create_at`, `Update_at`, `Update_User`, `is_Delete`, `min`, `max`)
    VALUES
    (name, percentage, amount, v_Code, create_User, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, create_User, 0, min, max);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ReadDetailBooking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `ReadDetailBooking`(
in bid bigint
)
BEGIN
	select*from booking_detail where BookingID=bid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-19  0:41:03
