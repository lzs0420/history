-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: warehouse_m
-- ------------------------------------------------------
-- Server version	5.6.24-log

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
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `work_id` varchar(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `job` varchar(64) DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`work_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('00001','ddd',1,'male','saleman','111111');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ware`
--

DROP TABLE IF EXISTS `ware`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ware` (
  `ware_id` varchar(11) NOT NULL,
  `ware_name` varchar(64) DEFAULT NULL,
  `ware_business` varchar(20) DEFAULT NULL,
  `ware_brand` varchar(20) DEFAULT NULL,
  `ware_real` int(10) DEFAULT NULL,
  `ware_type` varchar(10) DEFAULT NULL,
  `ware_min` int(10) DEFAULT NULL,
  `ware_pricein` decimal(10,2) DEFAULT NULL,
  `ware_priceout` decimal(10,2) DEFAULT NULL,
  `ware_mfdate` varchar(10) DEFAULT NULL,
  `ware_indate` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ware_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ware`
--

LOCK TABLES `ware` WRITE;
/*!40000 ALTER TABLE `ware` DISABLE KEYS */;
/*!40000 ALTER TABLE `ware` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ware_in`
--

DROP TABLE IF EXISTS `ware_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ware_in` (
  `in_id` varchar(11) NOT NULL,
  `ware_id` varchar(11) NOT NULL,
  `in_quantity` int(10) DEFAULT NULL,
  `in_time` varchar(10) DEFAULT NULL,
  `in_price` decimal(10,2) DEFAULT NULL,
  `work_id` varchar(11) DEFAULT NULL,
  `in_approve` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`in_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ware_in`
--

LOCK TABLES `ware_in` WRITE;
/*!40000 ALTER TABLE `ware_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `ware_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ware_out`
--

DROP TABLE IF EXISTS `ware_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ware_out` (
  `out_id` varchar(11) NOT NULL,
  `ware_id` varchar(11) NOT NULL,
  `out_quantity` int(10) DEFAULT NULL,
  `out_time` varchar(10) DEFAULT NULL,
  `out_price` decimal(10,2) DEFAULT NULL,
  `work_id` varchar(11) DEFAULT NULL,
  `out_approve` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`out_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ware_out`
--

LOCK TABLES `ware_out` WRITE;
/*!40000 ALTER TABLE `ware_out` DISABLE KEYS */;
INSERT INTO `ware_out` VALUES ('00001','00001',1,'2015-12-24',1.00,'00001','no');
/*!40000 ALTER TABLE `ware_out` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-19 16:45:45
