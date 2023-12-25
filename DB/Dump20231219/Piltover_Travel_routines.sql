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

-- Dump completed on 2023-12-19  0:38:37
