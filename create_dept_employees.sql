CREATE DATABASE  IF NOT EXISTS `testdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `testdb`;
-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: 172.17.0.2    Database: testdb
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `dept_employees`
--

DROP TABLE IF EXISTS `dept_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dept_employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `department_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_dept_employees_employee` (`employee_id`),
  KEY `fk_dept_employees_department` (`department_id`),
  CONSTRAINT `fk_dept_employees_department` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  CONSTRAINT `fk_dept_employees_employee` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept_employees`
--

LOCK TABLES `dept_employees` WRITE;
/*!40000 ALTER TABLE `dept_employees` DISABLE KEYS */;
INSERT INTO `dept_employees` VALUES (128,57,3),(129,80,3),(130,86,3),(131,18,4),(132,94,4),(133,85,6),(134,9,4),(135,93,2),(136,6,5),(137,28,6),(138,24,6),(139,67,2),(140,32,4),(141,45,4),(142,53,5),(143,62,2),(144,7,4),(145,40,2),(146,61,2),(147,37,2),(148,48,5),(149,58,5),(150,42,3),(151,60,2),(152,92,5),(153,74,2),(154,17,2),(155,90,6),(156,23,2),(157,73,2),(158,20,6),(159,29,5),(160,38,2),(161,71,2),(162,1,3),(163,33,4),(164,22,4),(165,21,5),(166,47,3),(167,19,3),(168,52,3),(169,51,3),(170,64,3),(171,95,6),(172,44,5),(173,39,5),(174,68,3),(175,59,6),(176,99,5),(177,91,2),(178,72,6),(179,66,6),(180,97,3),(181,35,2),(182,5,2),(183,27,3),(184,14,6),(185,84,4),(186,96,5),(187,12,5),(188,55,5),(189,65,3),(190,50,3),(191,46,3),(192,11,4),(193,100,5),(194,54,5),(195,4,5),(196,34,5),(197,75,2),(198,76,6),(199,79,2),(200,78,3),(201,77,4),(202,87,6),(203,69,3),(204,43,3),(205,31,5),(206,3,6),(207,88,3),(208,15,3),(209,82,2),(210,36,5),(211,26,6),(212,25,5),(213,41,4),(214,10,6),(215,56,5),(216,70,3),(217,81,6),(218,98,3),(219,49,3),(220,8,2),(221,83,3),(222,63,6),(223,89,6),(224,30,5),(225,16,6),(226,13,5),(227,2,5);
/*!40000 ALTER TABLE `dept_employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-09 12:10:19
