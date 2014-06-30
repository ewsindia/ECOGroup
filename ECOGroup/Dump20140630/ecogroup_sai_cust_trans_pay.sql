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
-- Table structure for table `sai_cust_trans_pay`
--

DROP TABLE IF EXISTS `sai_cust_trans_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sai_cust_trans_pay` (
  `tid` bigint(20) NOT NULL AUTO_INCREMENT,
  `custid` bigint(11) NOT NULL,
  `shopid` bigint(11) NOT NULL,
  `amount` double NOT NULL,
  `trans_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`tid`),
  KEY `customer_master_id_fk` (`custid`),
  KEY `shope_master_id_fk` (`shopid`),
  KEY `custid_fk_1` (`custid`),
  KEY `shopeid_fk_1` (`shopid`),
  CONSTRAINT `custid_fk_1` FOREIGN KEY (`custid`) REFERENCES `sai_customer_master` (`custid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shopeid_fk_1` FOREIGN KEY (`shopid`) REFERENCES `sai_shop_master` (`shopid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sai_cust_trans_pay`
--

LOCK TABLES `sai_cust_trans_pay` WRITE;
/*!40000 ALTER TABLE `sai_cust_trans_pay` DISABLE KEYS */;
/*!40000 ALTER TABLE `sai_cust_trans_pay` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-30 13:02:42
