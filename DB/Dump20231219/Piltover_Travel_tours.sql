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
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-19  0:36:09