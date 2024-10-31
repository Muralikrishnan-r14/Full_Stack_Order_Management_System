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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `c_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `cphone` bigint NOT NULL,
  `payment` int NOT NULL,
  `pstatus` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `orderid` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `fee`
--

DROP TABLE IF EXISTS `fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fee` (
  `roll` int NOT NULL,
  `feedeposit` decimal(10,2) NOT NULL,
  `month` varchar(20) NOT NULL,
  PRIMARY KEY (`roll`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee`
--

LOCK TABLES `fee` WRITE;
/*!40000 ALTER TABLE `fee` DISABLE KEYS */;
/*!40000 ALTER TABLE `fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food` (
  `Food_id` int NOT NULL,
  `Foodname` varchar(100) NOT NULL,
  `Food_size` varchar(50) NOT NULL,
  `prize` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES (1,'Pizza','Large',499.00),(2,'Burger','Medium',249.00),(3,'Pasta','Small',199.00),(4,'Salad','Large',299.00),(5,'Sandwich','Small',149.00),(6,'Sushi','Medium',399.00),(7,'Taco','Small',99.00),(8,'Fries','Large',79.00),(9,'Steak','Large',799.00),(10,'Chicken Wings','Medium',349.00),(11,'Burrito','Large',299.00),(12,'Nachos','Medium',199.00),(13,'Soup','Small',99.00),(14,'Ice Cream','Large',149.00),(15,'Hot Dog','Medium',129.00),(16,'Spaghetti','Small',179.00),(17,'Dumplings','Medium',229.00),(18,'Ramen','Large',249.00),(19,'Curry','Medium',199.00),(20,'Pizza','Medium',399.00),(21,'Falafel','Small',109.00),(22,'BBQ Ribs','Large',599.00),(23,'Grilled Cheese','Small',89.00),(24,'Chicken Salad','Medium',249.00),(25,'Lasagna','Large',449.00),(26,'Muffin','Small',59.00),(27,'Pancakes','Medium',129.00),(28,'Egg Roll','Small',79.00),(29,'Veggie Burger','Medium',199.00),(30,'Fish Curry','Large',599.00),(31,'Prawn Curry','Medium',349.00),(32,'Paneer Tikka','Small',199.00),(33,'Momos','Medium',149.00),(34,'Pav Bhaji','Large',229.00),(35,'Chole Bhature','Large',199.00),(36,'Vada Pav','Small',49.00),(37,'Dosa','Medium',129.00),(38,'Idli','Small',39.00),(39,'Sambar Rice','Large',149.00),(40,'Biryani','Large',299.00),(41,'Aloo Paratha','Medium',99.00),(42,'Masala Dosa','Large',149.00),(43,'Chicken Kebab','Medium',249.00),(44,'Veg Thali','Large',199.00),(45,'Chicken Thali','Large',299.00),(46,'Fish Fry','Medium',299.00),(47,'Chicken Biryani','Large',349.00),(48,'Mutton Biryani','Large',499.00),(49,'Paneer Butter Masala','Medium',249.00),(50,'Veg Biryani','Medium',199.00),(51,'Rajma Rice','Large',129.00),(52,'Chana Masala','Medium',159.00),(53,'Aloo Gobi','Medium',139.00),(54,'Gulab Jamun','Small',59.00),(55,'Jalebi','Small',49.00),(56,'Rasgulla','Small',69.00),(57,'Chaat','Medium',89.00),(58,'Samosa','Small',29.00),(59,'Pani Puri','Medium',79.00),(60,'Chicken Roll','Medium',149.00),(61,'Veg Roll','Small',99.00),(62,'Malai Kofta','Medium',199.00),(63,'Dal Tadka','Large',129.00),(64,'Butter Naan','Small',39.00),(65,'Garlic Naan','Medium',59.00),(66,'Egg Curry','Medium',149.00),(67,'Palak Paneer','Medium',249.00),(68,'Mixed Veg Curry','Large',199.00),(69,'Plain Paratha','Small',19.00),(70,'Stuffed Kulcha','Medium',89.00),(71,'Chicken Curry','Large',299.00),(72,'Mutton Curry','Large',399.00),(73,'Paneer Paratha','Medium',99.00),(74,'Egg Biryani','Medium',179.00),(75,'Fish Biryani','Large',349.00),(76,'Chicken Fry','Medium',199.00),(77,'Mutton Fry','Large',499.00),(78,'Veg Pulao','Large',149.00),(79,'Jeera Rice','Medium',99.00),(80,'Plain Rice','Large',59.00),(81,'Curd Rice','Large',79.00),(82,'Aloo Tikki','Small',49.00),(83,'Onion Pakoda','Small',39.00),(84,'Masala Chai','Small',20.00),(85,'Cold Coffee','Medium',69.00),(86,'Mango Lassi','Medium',59.00),(87,'Falooda','Large',99.00),(88,'Gajar Halwa','Small',69.00),(89,'Pasta Alfredo','Large',299.00),(90,'French Fries','Medium',79.00),(91,'Brownie','Small',99.00),(92,'Cheesecake','Medium',159.00),(93,'Chocolate Shake','Medium',89.00),(94,'Milkshake','Large',119.00),(95,'Fruit Salad','Large',139.00),(96,'Chicken Shawarma','Medium',149.00),(97,'Veg Shawarma','Small',99.00),(98,'Mushroom Masala','Medium',199.00),(99,'Paneer 65','Medium',149.00),(100,'Chicken 65','Medium',199.00);
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderfood`
--

DROP TABLE IF EXISTS `orderfood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderfood` (
  `OrderF_id` int NOT NULL,
  `C_id` int DEFAULT NULL,
  `Emp_id` int DEFAULT NULL,
  `Food_id` int DEFAULT NULL,
  `Food_qty` int NOT NULL,
  `Total_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`OrderF_id`),
  KEY `C_id` (`C_id`),
  KEY `Emp_id` (`Emp_id`),
  KEY `Food_id` (`Food_id`),
  CONSTRAINT `orderfood_ibfk_1` FOREIGN KEY (`C_id`) REFERENCES `customer` (`c_id`),
  CONSTRAINT `orderfood_ibfk_2` FOREIGN KEY (`Emp_id`) REFERENCES `employee` (`Emp_id`),
  CONSTRAINT `orderfood_ibfk_3` FOREIGN KEY (`Food_id`) REFERENCES `food` (`Food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderfood`
--

LOCK TABLES `orderfood` WRITE;
/*!40000 ALTER TABLE `orderfood` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderfood` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-30 23:16:45
