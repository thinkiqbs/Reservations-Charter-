-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: reservations
-- ------------------------------------------------------
-- Server version	8.0.20

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

--
-- Table structure for table `accountstatus`
--

DROP TABLE IF EXISTS `accountstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accountstatus` (
  `statusID` int NOT NULL AUTO_INCREMENT,
  `Status` varchar(20) NOT NULL,
  `Status Description` varchar(200) NOT NULL,
  PRIMARY KEY (`statusID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountstatus`
--

LOCK TABLES `accountstatus` WRITE;
/*!40000 ALTER TABLE `accountstatus` DISABLE KEYS */;
INSERT INTO `accountstatus` VALUES (1,'Active','User is active ');
/*!40000 ALTER TABLE `accountstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_status`
--

DROP TABLE IF EXISTS `booking_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_status` (
  `statusID` int NOT NULL AUTO_INCREMENT,
  `Status` varchar(20) NOT NULL,
  `Status Description` varchar(200) NOT NULL,
  PRIMARY KEY (`statusID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_status`
--

LOCK TABLES `booking_status` WRITE;
/*!40000 ALTER TABLE `booking_status` DISABLE KEYS */;
INSERT INTO `booking_status` VALUES (1,'Booked','Room is occupies\n');
/*!40000 ALTER TABLE `booking_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cha_aircraft`
--

DROP TABLE IF EXISTS `cha_aircraft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cha_aircraft` (
  `ID` int DEFAULT NULL,
  `AircraftName` varchar(50) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cha_aircraft`
--

LOCK TABLES `cha_aircraft` WRITE;
/*!40000 ALTER TABLE `cha_aircraft` DISABLE KEYS */;
/*!40000 ALTER TABLE `cha_aircraft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cha_airports`
--

DROP TABLE IF EXISTS `cha_airports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cha_airports` (
  `ID` int DEFAULT NULL,
  `AirportName` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `GPS_Cordinates` varchar(50) DEFAULT NULL,
  `AdditionalFeeProfile` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cha_airports`
--

LOCK TABLES `cha_airports` WRITE;
/*!40000 ALTER TABLE `cha_airports` DISABLE KEYS */;
/*!40000 ALTER TABLE `cha_airports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cha_bookings_search`
--

DROP TABLE IF EXISTS `cha_bookings_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cha_bookings_search` (
  `ID` int DEFAULT NULL,
  `Names` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Airport_From` varchar(50) DEFAULT NULL,
  `Airport_To` varchar(50) DEFAULT NULL,
  `DateofTravel` date DEFAULT NULL,
  `BookingStatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cha_bookings_search`
--

LOCK TABLES `cha_bookings_search` WRITE;
/*!40000 ALTER TABLE `cha_bookings_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `cha_bookings_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cha_invoice`
--

DROP TABLE IF EXISTS `cha_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cha_invoice` (
  `ID` int DEFAULT NULL,
  `BookingId` int DEFAULT NULL,
  `QuotationID` int DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `AirportFrom` varchar(50) DEFAULT NULL,
  `AirportTo` varchar(50) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `ValidFrom` date DEFAULT NULL,
  `ValidTo` date DEFAULT NULL,
  `PricePerNM` int DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `AccountDR` varchar(50) DEFAULT NULL,
  `AccountCR` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cha_invoice`
--

LOCK TABLES `cha_invoice` WRITE;
/*!40000 ALTER TABLE `cha_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `cha_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cha_payment`
--

DROP TABLE IF EXISTS `cha_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cha_payment` (
  `ID` int DEFAULT NULL,
  `BookingId` int DEFAULT NULL,
  `InvoiceID` int DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `AirportFrom` varchar(50) DEFAULT NULL,
  `AirportTo` varchar(50) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `ValidFrom` date DEFAULT NULL,
  `ValidTo` date DEFAULT NULL,
  `PricePerNM` int DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `AccountDR` varchar(50) DEFAULT NULL,
  `AccountCR` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cha_payment`
--

LOCK TABLES `cha_payment` WRITE;
/*!40000 ALTER TABLE `cha_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `cha_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cha_quotation`
--

DROP TABLE IF EXISTS `cha_quotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cha_quotation` (
  `ID` int DEFAULT NULL,
  `BookingId` int DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `AirportFrom` varchar(50) DEFAULT NULL,
  `AirportTo` varchar(50) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `ValidFrom` date DEFAULT NULL,
  `ValidTo` date DEFAULT NULL,
  `PricePerNM` int DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cha_quotation`
--

LOCK TABLES `cha_quotation` WRITE;
/*!40000 ALTER TABLE `cha_quotation` DISABLE KEYS */;
/*!40000 ALTER TABLE `cha_quotation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cha_rates`
--

DROP TABLE IF EXISTS `cha_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cha_rates` (
  `ID` int DEFAULT NULL,
  `Aircraft_type` varchar(50) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `ValidFrom` date DEFAULT NULL,
  `ValidTo` date DEFAULT NULL,
  `PricePerNM` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cha_rates`
--

LOCK TABLES `cha_rates` WRITE;
/*!40000 ALTER TABLE `cha_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `cha_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gl_account`
--

DROP TABLE IF EXISTS `gl_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gl_account` (
  `idAccount_Type` int NOT NULL,
  `Account_Number` int DEFAULT NULL,
  `Account_Description` varchar(200) DEFAULT NULL,
  `AccountType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAccount_Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gl_account`
--

LOCK TABLES `gl_account` WRITE;
/*!40000 ALTER TABLE `gl_account` DISABLE KEYS */;
INSERT INTO `gl_account` VALUES (1,1100,'Accounts Receivables ','Balance Sheet ');
/*!40000 ALTER TABLE `gl_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_name`
--

DROP TABLE IF EXISTS `hotel_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_name` (
  `idHotel_Name` int NOT NULL,
  `Hotel_Name` varchar(45) DEFAULT NULL,
  `Hotel_Description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idHotel_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_name`
--

LOCK TABLES `hotel_name` WRITE;
/*!40000 ALTER TABLE `hotel_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotel_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `idInvoices` int NOT NULL AUTO_INCREMENT,
  `Reservation_Number` int DEFAULT NULL,
  `Checkin` varchar(45) DEFAULT NULL,
  `Checkout` varchar(45) DEFAULT NULL,
  `LineItem` varchar(45) DEFAULT NULL,
  `Amount` double DEFAULT NULL,
  PRIMARY KEY (`idInvoices`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `idLocation` int NOT NULL,
  `Location_Description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idLocation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `idNotifications` int NOT NULL,
  `CreateDate` varchar(45) DEFAULT NULL,
  `Content` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idNotifications`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_status`
--

DROP TABLE IF EXISTS `payment_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_status` (
  `statusID` int NOT NULL AUTO_INCREMENT,
  `Status` varchar(20) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`statusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_status`
--

LOCK TABLES `payment_status` WRITE;
/*!40000 ALTER TABLE `payment_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persons` (
  `idPersons` int NOT NULL,
  `Names` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPersons`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_bookings`
--

DROP TABLE IF EXISTS `room_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_bookings` (
  `idRoom_Bookings` int NOT NULL,
  `Reservation_Number` int DEFAULT NULL,
  `Startdate` date DEFAULT NULL,
  `Durationindays` int DEFAULT NULL,
  `Booking_Status` varchar(45) DEFAULT NULL,
  `Checkin` date DEFAULT NULL,
  `checkout` date DEFAULT NULL,
  PRIMARY KEY (`idRoom_Bookings`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_bookings`
--

LOCK TABLES `room_bookings` WRITE;
/*!40000 ALTER TABLE `room_bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_charge`
--

DROP TABLE IF EXISTS `room_charge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_charge` (
  `idRoom_Charge` int NOT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  PRIMARY KEY (`idRoom_Charge`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_charge`
--

LOCK TABLES `room_charge` WRITE;
/*!40000 ALTER TABLE `room_charge` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_charge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_type`
--

DROP TABLE IF EXISTS `room_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_type` (
  `Room_ID` int NOT NULL AUTO_INCREMENT,
  `Room_type` varchar(50) DEFAULT NULL,
  `Room_Description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Room_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_type`
--

LOCK TABLES `room_type` WRITE;
/*!40000 ALTER TABLE `room_type` DISABLE KEYS */;
INSERT INTO `room_type` VALUES (1,'Cottage','Cottage ');
/*!40000 ALTER TABLE `room_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomkey`
--

DROP TABLE IF EXISTS `roomkey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roomkey` (
  `idRoomkey` int NOT NULL,
  `RoomNumber` int DEFAULT NULL,
  `Roomtype` varchar(45) DEFAULT NULL,
  `Barcode` varchar(45) DEFAULT NULL,
  `Issued_data` date DEFAULT NULL,
  `Active` tinyint DEFAULT NULL,
  `IsMaster` tinyint DEFAULT NULL,
  PRIMARY KEY (`idRoomkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomkey`
--

LOCK TABLES `roomkey` WRITE;
/*!40000 ALTER TABLE `roomkey` DISABLE KEYS */;
/*!40000 ALTER TABLE `roomkey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `Room_ID` int NOT NULL,
  `Number` int DEFAULT NULL,
  `Description` int DEFAULT NULL,
  `roomtype` varchar(45) DEFAULT NULL,
  `Roomstatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Room_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomstatus`
--

DROP TABLE IF EXISTS `roomstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roomstatus` (
  `statusID` int NOT NULL AUTO_INCREMENT,
  `Status` varchar(20) NOT NULL,
  `Description` varchar(200) NOT NULL,
  PRIMARY KEY (`statusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomstatus`
--

LOCK TABLES `roomstatus` WRITE;
/*!40000 ALTER TABLE `roomstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `roomstatus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-14  9:18:26
