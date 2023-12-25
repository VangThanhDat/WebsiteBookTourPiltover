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
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-19  0:36:40
