-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: employee_attendance_monitoring
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'testuser','testpassword','2024-08-31 06:42:22','2024-08-31 14:15:16','2024-08-31 14:15:16'),(2,'richard_nelson','asbhbwu2h3jkwkjw','2024-08-31 08:28:06','2024-08-31 15:28:06','2024-08-31 15:31:26'),(3,'rio_anugrah','kskhdhdue2u228829wiiwks','2024-08-31 08:29:56','2024-08-31 15:29:56','2024-08-31 15:31:26'),(4,'bayu_nugroho','ksjkue88u82yw82w7ey','2024-08-31 08:30:42','2024-08-31 15:30:42','2024-08-31 15:30:53'),(5,'naftael_bagas','i2ue73e73uh38eu82u2999','2024-08-31 08:31:58','2024-08-31 15:31:58','2024-08-31 15:32:06'),(6,'ritchie_t','ijdue7y72yw72y8ij2kjkw','2024-08-31 08:32:55','2024-08-31 15:32:55','2024-08-31 15:33:25'),(7,'michael_mulyono','ksiiu82uehu38d9i0ie0j28u','2024-08-31 08:33:25','2024-08-31 15:33:25','2024-08-31 15:35:00'),(8,'willliam_hariono','kwjiuwh8u93ii29i3o2k3ok','2024-08-31 08:35:00','2024-08-31 15:35:00','2024-08-31 15:35:00'),(9,'rizki_winata','ku7ey82ij99k2w99jw28un2wi','2024-08-31 08:35:00','2024-08-31 15:35:00','2024-08-31 15:35:00'),(10,'christian_alex','kw289uw9u92oju7yhgdg64','2024-08-31 08:35:00','2024-08-31 15:35:00','2024-08-31 15:35:00'),(11,'casey_t','msi2u8ygyeyge7y892jj19','2024-08-31 08:35:00','2024-08-31 15:35:00','2024-08-31 15:35:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-31 15:41:42
