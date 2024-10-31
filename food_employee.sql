-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: food
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Emp_id` int NOT NULL,
  `ename` varchar(100) NOT NULL,
  `emp_g` varchar(10) DEFAULT NULL,
  `eage` int NOT NULL,
  `emp_phone` bigint NOT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Manes','Male',24,9458184201,'Manes@24'),(2,'Rashid','Male',22,9458176231,'Rashid@22'),(3,'Joe','Female',23,9458179054,'Joe@23'),(4,'Sulai Man','Male',28,9458165412,'SulaiMAn@28'),(5,'Maneswini','Female',20,9458176321,'Maneswini@20'),(6,'Alex Johnson','Male',26,9876543210,'Alex@26'),(7,'Emily Davis','Female',29,8765432109,'Emily@29'),(8,'Michael Smith','Male',35,7654321098,'Michael@35'),(9,'Sophia Brown','Female',22,6543210987,'Sophia@22'),(10,'Daniel Garcia','Male',30,5432109876,'Daniel@30'),(11,'Olivia Martinez','Female',24,4321098765,'Olivia@24'),(12,'James Wilson','Male',28,3210987654,'James@28'),(13,'Isabella Taylor','Female',23,2109876543,'Isabella@23'),(14,'William Anderson','Male',31,1098765432,'William@31'),(15,'Ava Thompson','Female',27,9871234560,'Ava@27'),(16,'Benjamin Lee','Male',29,8765431201,'Benjamin@29'),(17,'Charlotte Harris','Female',25,7654321032,'Charlotte@25'),(18,'Ethan Clark','Male',34,6543210245,'Ethan@34'),(19,'Mia Lewis','Female',21,5432101356,'Mia@21'),(20,'Daniel Robinson','Male',30,4321092467,'Daniel@30'),(21,'Amelia Walker','Female',26,3210983578,'Amelia@26'),(22,'Logan Hall','Male',33,2109874689,'Logan@33'),(23,'Avery Allen','Female',22,1098765790,'Avery@22'),(24,'Lucas Young','Male',28,9871234567,'Lucas@28'),(25,'Sofia King','Female',24,8762345678,'Sofia@24'),(26,'Jackson Wright','Male',29,7653456789,'Jackson@29'),(27,'Grace Scott','Female',25,6544567890,'Grace@25'),(28,'Henry Green','Male',32,5435678901,'Henry@32'),(29,'Chloe Adams','Female',23,4326789012,'Chloe@23'),(30,'Liam Baker','Male',27,3217890123,'Liam@27'),(31,'Ella Gonzalez','Female',20,2108901234,'Ella@20'),(32,'Noah Nelson','Male',34,1099012345,'Noah@34'),(33,'Aria Carter','Female',26,9870123456,'Aria@26'),(34,'Jameson Mitchell','Male',30,8761234567,'Jameson@30'),(35,'Scarlett Perez','Female',22,7652345678,'Scarlett@22'),(36,'Mason Roberts','Male',31,6543456789,'Mason@31'),(37,'Layla Turner','Female',24,5434567890,'Layla@24'),(38,'Carter Phillips','Male',28,4325678901,'Carter@28'),(39,'Victoria Campbell','Female',27,3216789012,'Victoria@27'),(40,'Sebastian Parker','Male',33,2107890123,'Sebastian@33'),(41,'Zoe Evans','Female',25,1098901234,'Zoe@25'),(42,'Jackson Edwards','Male',29,9871234567,'Jackson@29'),(43,'Hannah Collins','Female',22,8762345678,'Hannah@22'),(44,'Gabriel Stewart','Male',31,7653456789,'Gabriel@31'),(45,'Lily Morris','Female',26,6544567890,'Lily@26'),(202,'Yokeesh','Male',21,9941345678,'Yokeesh@24');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-30 23:14:46
