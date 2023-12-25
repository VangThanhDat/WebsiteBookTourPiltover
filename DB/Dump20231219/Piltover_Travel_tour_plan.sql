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
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-19  0:35:38
