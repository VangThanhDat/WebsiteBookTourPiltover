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
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-19  0:36:01
