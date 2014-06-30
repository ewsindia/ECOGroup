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
-- Table structure for table `sai_shop_customer`
--

DROP TABLE IF EXISTS `sai_shop_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sai_shop_customer` (
  `shopid` bigint(7) NOT NULL,
  `custid` bigint(7) NOT NULL,
  PRIMARY KEY (`shopid`,`custid`),
  KEY `custid_fk` (`custid`),
  KEY `custid_fk_2` (`custid`),
  KEY `shopeid_fk_2` (`shopid`),
  CONSTRAINT `custid_fk_2` FOREIGN KEY (`custid`) REFERENCES `sai_customer_master` (`custid`) ON UPDATE CASCADE,
  CONSTRAINT `shopeid_fk_2` FOREIGN KEY (`shopid`) REFERENCES `sai_shop_master` (`shopid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sai_shop_customer`
--

LOCK TABLES `sai_shop_customer` WRITE;
/*!40000 ALTER TABLE `sai_shop_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `sai_shop_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sai_unauthorised_access`
--

DROP TABLE IF EXISTS `sai_unauthorised_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sai_unauthorised_access` (
  `mobile` bigint(10) NOT NULL,
  `message_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sai_unauthorised_access`
--

LOCK TABLES `sai_unauthorised_access` WRITE;
/*!40000 ALTER TABLE `sai_unauthorised_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `sai_unauthorised_access` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `sai_shop_master`
--

DROP TABLE IF EXISTS `sai_shop_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sai_shop_master` (
  `shopid` bigint(11) NOT NULL AUTO_INCREMENT,
  `shopname` varchar(200) NOT NULL,
  `ownername` varchar(200) NOT NULL,
  `mobile` bigint(10) NOT NULL COMMENT 'this is also used as user id',
  `email` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `tal` varchar(100) DEFAULT NULL,
  `dist` varchar(100) DEFAULT NULL,
  `add1` varchar(200) DEFAULT NULL,
  `add2` varchar(200) DEFAULT NULL,
  `pin` int(6) DEFAULT NULL,
  `comments` varchar(1000) DEFAULT NULL,
  `isAcive` bit(1) NOT NULL DEFAULT b'1',
  `isEmailVerified` bit(1) NOT NULL DEFAULT b'0',
  `isMobileVerified` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`shopid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sai_shop_master`
--

LOCK TABLES `sai_shop_master` WRITE;
/*!40000 ALTER TABLE `sai_shop_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `sai_shop_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sai_tree`
--

DROP TABLE IF EXISTS `sai_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sai_tree` (
  `parentid` bigint(11) NOT NULL,
  `childid` bigint(11) NOT NULL,
  PRIMARY KEY (`childid`,`parentid`),
  KEY `custid_fk_4` (`childid`),
  KEY `custid_fk_5` (`parentid`),
  CONSTRAINT `custid_fk_4` FOREIGN KEY (`childid`) REFERENCES `sai_customer_master` (`custid`) ON UPDATE CASCADE,
  CONSTRAINT `custid_fk_5` FOREIGN KEY (`parentid`) REFERENCES `sai_customer_master` (`custid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sai_tree`
--

LOCK TABLES `sai_tree` WRITE;
/*!40000 ALTER TABLE `sai_tree` DISABLE KEYS */;
/*!40000 ALTER TABLE `sai_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sai_discounts`
--

DROP TABLE IF EXISTS `sai_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sai_discounts` (
  `parent` double NOT NULL,
  `child` double NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  UNIQUE KEY `parent_UNIQUE` (`parent`),
  UNIQUE KEY `child_UNIQUE` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sai_discounts`
--

LOCK TABLES `sai_discounts` WRITE;
/*!40000 ALTER TABLE `sai_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sai_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sai_verifier`
--

DROP TABLE IF EXISTS `sai_verifier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sai_verifier` (
  `id` bigint(11) NOT NULL,
  `emailToken` varchar(1000) DEFAULT NULL,
  `mobileOTP` varchar(20) DEFAULT NULL,
  `isShop` bit(1) DEFAULT b'1',
  `validtill` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sai_verifier`
--

LOCK TABLES `sai_verifier` WRITE;
/*!40000 ALTER TABLE `sai_verifier` DISABLE KEYS */;
/*!40000 ALTER TABLE `sai_verifier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sai_users`
--

DROP TABLE IF EXISTS `sai_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sai_users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `previleges` varchar(500) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `mobile` (`mobile`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sai_users`
--

LOCK TABLES `sai_users` WRITE;
/*!40000 ALTER TABLE `sai_users` DISABLE KEYS */;
INSERT INTO `sai_users` VALUES ('Admin','admin',9860323340,'vijaygthorat@gmail.com','all');
/*!40000 ALTER TABLE `sai_users` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2014-06-30 13:37:16
