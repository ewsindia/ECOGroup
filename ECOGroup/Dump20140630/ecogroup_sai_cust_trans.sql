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
-- Table structure for table `sai_cust_trans`
--

DROP TABLE IF EXISTS `sai_cust_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sai_cust_trans` (
  `tid` bigint(10) NOT NULL AUTO_INCREMENT,
  `custid` bigint(11) NOT NULL,
  `shopid` bigint(11) NOT NULL,
  `amount` double NOT NULL,
  `discount_p` float NOT NULL,
  `discount_c` float NOT NULL,
  `satus` binary(1) NOT NULL DEFAULT '0',
  `trans_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`tid`),
  KEY `customer_master_id` (`custid`),
  KEY `shoep_master_id` (`shopid`),
  KEY `custid_fk` (`custid`),
  KEY `shopeid_fk` (`shopid`),
  CONSTRAINT `custid_fk` FOREIGN KEY (`custid`) REFERENCES `sai_customer_master` (`custid`) ON UPDATE CASCADE,
  CONSTRAINT `shopeid_fk` FOREIGN KEY (`shopid`) REFERENCES `sai_shop_master` (`shopid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sai_cust_trans`
--

LOCK TABLES `sai_cust_trans` WRITE;
/*!40000 ALTER TABLE `sai_cust_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `sai_cust_trans` ENABLE KEYS */;
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
