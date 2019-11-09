-- MySQL dump 10.16  Distrib 10.1.38-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: demo
-- ------------------------------------------------------
-- Server version	10.1.38-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `password` varchar(1000) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `social_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `account_ibfk_1` (`social_id`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`social_id`) REFERENCES `socialinfo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (26,NULL,NULL,NULL),(27,NULL,NULL,NULL),(28,'torihoang@gmail.com','$2a$10$FzUdOc29fp/wPAQzDbDTEO3zkT2khAWZDYvTEpHmOPL.HjjBtb14O',NULL),(29,'torihoang20@gmail.com','$2a$10$Hqk8XHmOk5tGQZEGt2VO6.1lXqdnQQWlg.VN9I..l8.4YG.krQn4m',NULL),(30,'torihoang21@gmail.com','$2a$10$DAhx4.crwXiivO34YqwbXuw63HKE7xt1tvt6vefwHIH96lFpvcYQW',NULL),(31,'torihoang23@gmail.com','$2a$10$vb/Ue4LnpBgn6oqisuzDguE/8RA3fOmp8TfFeuaLngEgC6rYzvUci',NULL),(32,NULL,NULL,1);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-09 14:31:22
