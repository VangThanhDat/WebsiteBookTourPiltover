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
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-19  0:35:07
