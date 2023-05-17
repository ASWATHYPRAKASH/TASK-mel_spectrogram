-- MySQL dump 10.13  Distrib 8.0.24, for macos11 (x86_64)
--
-- Host: localhost    Database: mel_script
-- ------------------------------------------------------
-- Server version	8.0.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data` (
  `uuid` varchar(36) NOT NULL,
  `videofile` varchar(100) DEFAULT NULL,
  `audiofile` varchar(100) DEFAULT NULL,
  `melfile` varchar(100) DEFAULT NULL,
  `uploaded_on` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` VALUES ('00d7348e-bdcd-42f7-bbdc-5605a1bb23d6','uploads/00d7348e-bdcd-42f7-bbdc-5605a1bb23d6.mp4','uploads/00d7348e-bdcd-42f7-bbdc-5605a1bb23d6.mp3','uploads/00d7348e-bdcd-42f7-bbdc-5605a1bb23d6.png','2023-05-17 22:35:50'),('22a8e3b0-37c9-40f6-92ab-00d0c9b2136b','uploads/22a8e3b0-37c9-40f6-92ab-00d0c9b2136b.mp4','uploads/22a8e3b0-37c9-40f6-92ab-00d0c9b2136b.mp3','uploads/22a8e3b0-37c9-40f6-92ab-00d0c9b2136b.png','2023-05-17 19:37:58'),('232d79e1-9084-4aa9-937c-200c26c38d68','uploads/232d79e1-9084-4aa9-937c-200c26c38d68.mp4','uploads/232d79e1-9084-4aa9-937c-200c26c38d68.mp3','uploads/232d79e1-9084-4aa9-937c-200c26c38d68.png','2023-05-17 22:04:57'),('40418bfa-3e67-433b-9360-f2fb5a2cd9c3','uploads/40418bfa-3e67-433b-9360-f2fb5a2cd9c3.mp4','uploads/40418bfa-3e67-433b-9360-f2fb5a2cd9c3.mp3','uploads/40418bfa-3e67-433b-9360-f2fb5a2cd9c3.png','2023-05-17 22:07:17'),('6d9c0601-81e2-4de1-a768-610666cd726b','uploads/6d9c0601-81e2-4de1-a768-610666cd726b.mp4','uploads/6d9c0601-81e2-4de1-a768-610666cd726b.mp3','uploads/6d9c0601-81e2-4de1-a768-610666cd726b.png','2023-05-17 22:40:11');
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-18  0:20:44
