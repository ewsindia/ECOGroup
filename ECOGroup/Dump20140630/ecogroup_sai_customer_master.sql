CREATE DATABASE  IF NOT EXISTS `ecogroup` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ecogroup`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: ecogroup
-- ------------------------------------------------------
-- Server version	5.5.20

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
-- Table structure for table `sai_customer_master`
--

DROP TABLE IF EXISTS `sai_customer_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sai_customer_master` (
  `custid` bigint(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `mobile` bigint(10) NOT NULL,
  `password` varchar(500) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `medicine_details` varchar(1000) DEFAULT NULL,
  `bdate` date DEFAULT NULL,
  `tal` varchar(50) NOT NULL,
  `dist` varchar(50) NOT NULL,
  `Add1` varchar(200) DEFAULT NULL,
  `Add2` varchar(200) DEFAULT NULL,
  `pin` int(6) DEFAULT NULL,
  `discount_given` double NOT NULL DEFAULT '0',
  `discount_paid` double NOT NULL DEFAULT '0',
  `isActive` bit(1) NOT NULL DEFAULT b'1',
  `isEmailVerified` bit(1) NOT NULL DEFAULT b'0',
  `isMobileVerified` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`custid`),
  UNIQUE KEY `mobile_UNIQUE` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sai_customer_master`
--

LOCK TABLES `sai_customer_master` WRITE;
/*!40000 ALTER TABLE `sai_customer_master` DISABLE KEYS */;
INSERT INTO `sai_customer_master` VALUES (1,'Vijay',NULL,NULL,9860323340,'123456',NULL,NULL,NULL,'','',NULL,NULL,NULL,0,0,'','\0','\0'),(2,'Aviraj',NULL,NULL,9881210099,'123456',NULL,NULL,NULL,'','',NULL,NULL,NULL,0,0,'','\0','\0');
/*!40000 ALTER TABLE `sai_customer_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-30 13:02:43
