-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: orderbook
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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `A_id` varchar(13) NOT NULL,
  `A_name` varchar(20) DEFAULT NULL,
  `A_pwd` varchar(20) DEFAULT NULL,
  `A_value` int(3) DEFAULT NULL,
  PRIMARY KEY (`A_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('2015122400001','q','1234',0),('2015122400002','e','1234',1);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `B_id` varchar(20) NOT NULL,
  `B_name` varchar(64) DEFAULT NULL,
  `B_author` varchar(20) DEFAULT NULL,
  `B_price` decimal(10,2) DEFAULT NULL,
  `B_press` varchar(64) DEFAULT NULL,
  `B_store` int(6) DEFAULT NULL,
  PRIMARY KEY (`B_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('7-04-000069-5','解析几何','俄武器',111.00,'高等教育出版社',15),('7-04-002413-6','艺术概论','俄武器',35.00,'高等教育出版社',15),('7-04-004054-9','公共关系学','俄武器',25.00,'高等教育出版社',25),('7-04-004203-7','马克思主义哲学原理','俄武器',313.00,'高等教育出版社',3),('7-04-005168-0','复变函数与积分变换','俄武器',33.00,'高等教育出版社',22),('978-7-118-02207-0','编译原理','俄武器',22.00,'高等教育出版社',133),('978-7-8123-241-7','JavaEE编程','俄武器',53.00,'高等教育出版社',1);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookin`
--

DROP TABLE IF EXISTS `bookin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookin` (
  `BI_id` varchar(13) NOT NULL,
  `BI_date` varchar(20) DEFAULT NULL,
  `B_id` varchar(20) DEFAULT NULL,
  `B_no` int(6) DEFAULT NULL,
  `A_id` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`BI_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookin`
--

LOCK TABLES `bookin` WRITE;
/*!40000 ALTER TABLE `bookin` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookout`
--

DROP TABLE IF EXISTS `bookout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookout` (
  `BO_id` varchar(13) NOT NULL,
  `BO_date` varchar(20) DEFAULT NULL,
  `B_id` varchar(20) DEFAULT NULL,
  `B_no` int(6) DEFAULT NULL,
  `A_id` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`BO_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookout`
--

LOCK TABLES `bookout` WRITE;
/*!40000 ALTER TABLE `bookout` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booktable`
--

DROP TABLE IF EXISTS `booktable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booktable` (
  `BT_id` varchar(13) NOT NULL,
  `BT_date` varchar(20) DEFAULT NULL,
  `B_id` varchar(20) DEFAULT NULL,
  `B_no` int(6) DEFAULT NULL,
  `U_id` varchar(13) DEFAULT NULL,
  `BT_sure` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`BT_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booktable`
--

LOCK TABLES `booktable` WRITE;
/*!40000 ALTER TABLE `booktable` DISABLE KEYS */;
INSERT INTO `booktable` VALUES ('1','2015-12-24 16:11:30','7-04-000069-5',1,'00001','no');
/*!40000 ALTER TABLE `booktable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `C_id` varchar(13) NOT NULL,
  `U_id` varchar(13) DEFAULT NULL,
  `B_id` varchar(20) DEFAULT NULL,
  `B_no` int(6) DEFAULT NULL,
  PRIMARY KEY (`C_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lackrecord`
--

DROP TABLE IF EXISTS `lackrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lackrecord` (
  `LR_id` varchar(13) NOT NULL,
  `LR_date` varchar(20) DEFAULT NULL,
  `B_id` varchar(20) DEFAULT NULL,
  `B_no` int(6) DEFAULT NULL,
  `LR_sure` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`LR_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lackrecord`
--

LOCK TABLES `lackrecord` WRITE;
/*!40000 ALTER TABLE `lackrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `lackrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material` (
  `M_id` varchar(13) NOT NULL,
  `M_date` varchar(20) DEFAULT NULL,
  `B_id` varchar(20) DEFAULT NULL,
  `B_no` int(6) DEFAULT NULL,
  PRIMARY KEY (`M_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `U_id` varchar(13) NOT NULL,
  `U_name` varchar(20) DEFAULT NULL,
  `U_pwd` varchar(20) DEFAULT NULL,
  `U_phone` varchar(16) DEFAULT NULL,
  `U_value` int(3) DEFAULT NULL,
  PRIMARY KEY (`U_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('2015122400001','e','1234','13000000000',1),('2015122400002','q','1234','13111111111',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-19 16:44:49
