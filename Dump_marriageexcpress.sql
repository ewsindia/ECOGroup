CREATE DATABASE  IF NOT EXISTS `marriageexpress` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `marriageexpress`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: marriageexpress
-- ------------------------------------------------------
-- Server version	5.5.25

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
-- Table structure for table `statesprovinces`
--

DROP TABLE IF EXISTS `statesprovinces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statesprovinces` (
  `StateCode` char(2) DEFAULT NULL,
  `StateName` varchar(45) DEFAULT NULL,
  `StateID` int(11) NOT NULL AUTO_INCREMENT,
  `CountryID` int(11) NOT NULL,
  PRIMARY KEY (`StateID`),
  KEY `StatesProvinces_CountryID` (`CountryID`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statesprovinces`
--

LOCK TABLES `statesprovinces` WRITE;
/*!40000 ALTER TABLE `statesprovinces` DISABLE KEYS */;
INSERT INTO `statesprovinces` VALUES ('AL','Alabama',1,1),('AK','Alaska',2,1),('AZ','Arizona',3,1),('AR','Arkansas',4,1),('CA','California',5,1),('CO','Colorado',6,1),('CT','Connecticut',7,1),('DE','Delaware',8,1),('DC','District of Columbia',9,1),('FL','Florida',10,1),('GA','Georgia',11,1),('HI','Hawaii',12,1),('ID','Idaho',13,1),('IL','Illinois',14,1),('IN','Indiana',15,1),('IA','Iowa',16,1),('KS','Kansas',17,1),('KY','Kentucky',18,1),('LA','Louisiana',19,1),('ME','Maine',20,1),('MT','Montana',21,1),('NE','Nebraska',22,1),('NV','Nevada',23,1),('NH','New Hampshire',24,1),('NJ','New Jersey',25,1),('NM','New Mexico',26,1),('NY','New York',27,1),('NC','North Carolina',28,1),('ND','North Dakota',29,1),('OH','Ohio',30,1),('OK','Oklahoma',31,1),('OR','Oregon',32,1),('MD','Maryland',33,1),('MA','Massachusetts',34,1),('MI','Michigan',35,1),('MN','Minnesota',36,1),('MS','Mississippi',37,1),('MO','Missouri',38,1),('PA','Pennsylvania',39,1),('RI','Rhode Island',40,1),('SC','South Carolina',41,1),('SD','South Dakota',42,1),('TN','Tennessee',43,1),('TX','Texas',44,1),('UT','Utah',45,1),('VT','Vermont',46,1),('VA','Virginia',47,1),('WA','Washington',48,1),('WV','West Virginia',49,1),('WI','Wisconsin',50,1),('WY','Wyoming',51,1),('MH','Maharashtra',52,2),('AP','Andhra Pradesh',53,2),('DL','Delhi',54,2),('AN','Andaman & Nicobar',55,2),('AR','Arunachal Pradesh',56,2),('AS','Assam',57,2),('BR','Bihar',58,2),('CH','Chandigarh',59,2),('CT','Chhattisgarh',60,2),('DD','Daman & Diu',61,2),('DN','Dadra and Nagar Haveli',62,2),('GA','Goa',63,2),('GJ','Gujarat',64,2),('HP','Himachal Pradesh',65,2),('HR','Haryana',66,2),('JH','Jharkhand',67,2),('JK','Jammu & Kashmir',68,2),('KA','Karnataka',69,2),('KL','Kerala',70,2),('LD','Lakshadweep',71,2),('ML','Meghalaya',72,2),('MN','Manipur',73,2),('MP','Madhya Pradesh',74,2),('MZ','Mizoram',75,2),('NL','Nagaland',76,2),('OR','Orissa',77,2),('PB','Punjab',78,2),('PY','Pondicherry',79,2),('RJ','Rajasthan',80,2),('SK','Sikkim',81,2),('TN','Tamil Nadu',82,2),('TR','Tripura',83,2),('UP','Uttar Pradesh',84,2),('UT','Uttarakhand',85,2),('WB','West Bengal',86,2);
/*!40000 ALTER TABLE `statesprovinces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `singlefieldmaster`
--

DROP TABLE IF EXISTS `singlefieldmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `singlefieldmaster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=420 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `singlefieldmaster`
--

LOCK TABLES `singlefieldmaster` WRITE;
/*!40000 ALTER TABLE `singlefieldmaster` DISABLE KEYS */;
INSERT INTO `singlefieldmaster` VALUES (1,'High School','Education',NULL),(2,'Bachelor','Education',NULL),(3,'Masters','Education',NULL),(4,'Associates degree','Education',NULL),(5,'PhD','Education',NULL),(6,'Technical School','Education',NULL),(7,'MD','Education',NULL),(8,'Hindu','ReligionCast',NULL),(9,'Sikh','ReligionCast',NULL),(10,'Christianity','ReligionCast',NULL),(11,'Other','ReligionCast',NULL),(12,'Ahmedi','ReligionCast',NULL),(13,'Athiest','ReligionCast',NULL),(14,'Bhori','ReligionCast',NULL),(15,'Buddhisim','ReligionCast',NULL),(16,'Buddhism - Thai','ReligionCast',NULL),(17,'Buddhism - Tibetian','ReligionCast',NULL),(18,'Christianity - Anglican','ReligionCast',NULL),(19,'Christianity - Baptist','ReligionCast',NULL),(20,'Christianity - Born Again','ReligionCast',NULL),(21,'Christianity - Catholic','ReligionCast',NULL),(22,'Christianity - Catholic Kananaya','ReligionCast',NULL),(23,'Christianity - Catholic Latin','ReligionCast',NULL),(24,'Christianity - Catholic Malankara','ReligionCast',NULL),(25,'Christianity - Catholic Roman','ReligionCast',NULL),(26,'Christianity - Catholic Syrian','ReligionCast',NULL),(27,'Christianity - CMS','ReligionCast',NULL),(28,'Christianity - CSI','ReligionCast',NULL),(29,'Christianity - Evangelical','ReligionCast',NULL),(30,'Christianity - Jacobite','ReligionCast',NULL),(31,'Christianity - Marthomite','ReligionCast',NULL),(32,'Christianity - Nadar','ReligionCast',NULL),(33,'Christianity - Orthodox','ReligionCast',NULL),(34,'Christianity - Pentacost','ReligionCast',NULL),(35,'Christianity - Protestant','ReligionCast',NULL),(36,'Christianity- Malayalam','ReligionCast',NULL),(37,'Dawoodi Bhora','ReligionCast',NULL),(38,'Hindu - K Kokanastha','ReligionCast',NULL),(39,'Hindu - Adi Dravida','ReligionCast',NULL),(40,'Hindu - Agamudayaar','ReligionCast',NULL),(41,'Hindu - Agarwal','ReligionCast',NULL),(42,'Hindu - Arora','ReligionCast',NULL),(43,'Hindu - Arya Vysya','ReligionCast',NULL),(44,'Hindu - Balija Naidu','ReligionCast',NULL),(45,'Hindu - Bengali','ReligionCast',NULL),(46,'Hindu - Bhandari','ReligionCast',NULL),(47,'Hindu - Billava','ReligionCast',NULL),(48,'Hindu - Brahmin','ReligionCast',NULL),(49,'Hindu - Brahmin Anavil','ReligionCast',NULL),(50,'Hindu - Brahmin Bengali','ReligionCast',NULL),(51,'Hindu - Brahmin Davadnya','ReligionCast',NULL),(52,'Hindu - Brahmin Deshastha','ReligionCast',NULL),(53,'Hindu - Brahmin Garhwali','ReligionCast',NULL),(54,'Hindu - Brahmin Gaur','ReligionCast',NULL),(55,'Hindu - Brahmin Gowd Saraswat','ReligionCast',NULL),(56,'Hindu - Brahmin Gujarati','ReligionCast',NULL),(57,'Hindu - Brahmin Havyaka','ReligionCast',NULL),(58,'Hindu - Brahmin Kanada Madhva','ReligionCast',NULL),(59,'Hindu - Brahmin Kanyakubja','ReligionCast',NULL),(60,'Hindu - Brahmin Kokanastha','ReligionCast',NULL),(61,'Hindu - Brahmin Kumoani','ReligionCast',NULL),(62,'Hindu - Brahmin Maharashtrian','ReligionCast',NULL),(63,'Hindu - Brahmin Maithil','ReligionCast',NULL),(64,'Hindu - Brahmin Nagar','ReligionCast',NULL),(65,'Hindu - Brahmin Pareek','ReligionCast',NULL),(66,'Hindu - Brahmin Punjabi','ReligionCast',NULL),(67,'Hindu - Brahmin Saryuparin','ReligionCast',NULL),(68,'Hindu - Brahmin Smartha','ReligionCast',NULL),(69,'Hindu - Brahmin Telugu','ReligionCast',NULL),(70,'Hindu - Bramhan Bhumihar','ReligionCast',NULL),(71,'Hindu - Bunt','ReligionCast',NULL),(72,'Hindu - Chettiar','ReligionCast',NULL),(73,'Hindu - Coorgi','ReligionCast',NULL),(74,'Hindu - Daraji','ReligionCast',NULL),(75,'Hindu - Devanga','ReligionCast',NULL),(76,'Hindu - Dheevara','ReligionCast',NULL),(77,'Hindu - Digambar','ReligionCast',NULL),(78,'Hindu - Ezhava','ReligionCast',NULL),(79,'Hindu - Ezhuthassan','ReligionCast',NULL),(80,'Hindu - Gold Smith','ReligionCast',NULL),(81,'Hindu - Gounder','ReligionCast',NULL),(82,'Hindu - Gowda','ReligionCast',NULL),(83,'Hindu - Gujarati','ReligionCast',NULL),(84,'Hindu - Gupta','ReligionCast',NULL),(85,'Hindu - Iyengar','ReligionCast',NULL),(86,'Hindu - Iyer','ReligionCast',NULL),(87,'Hindu - Jat','ReligionCast',NULL),(88,'Hindu - Jatav','ReligionCast',NULL),(89,'Hindu - Kamboj','ReligionCast',NULL),(90,'Hindu - Kamma','ReligionCast',NULL),(91,'Hindu - Kapu','ReligionCast',NULL),(92,'Hindu - Kashmiri Pandit','ReligionCast',NULL),(93,'Hindu - Kayastha','ReligionCast',NULL),(94,'Hindu - Kerala Malaylee Namboodiri','ReligionCast',NULL),(95,'Hindu - Khandelwal','ReligionCast',NULL),(96,'Hindu - Khatri','ReligionCast',NULL),(97,'Hindu - Kongu Vellala Gounder','ReligionCast',NULL),(98,'Hindu - Kshatriya','ReligionCast',NULL),(99,'Hindu - Kumaoni','ReligionCast',NULL),(100,'Hindu - Kumbara','ReligionCast',NULL),(101,'Hindu - Kurmi','ReligionCast',NULL),(102,'Hindu - Kuruhina Shetty','ReligionCast',NULL),(103,'Hindu - Lingayat','ReligionCast',NULL),(104,'Hindu - Lohana','ReligionCast',NULL),(105,'Hindu - Maharashtrian','ReligionCast',NULL),(106,'Hindu - Maheshwari','ReligionCast',NULL),(107,'Hindu - Maratha','ReligionCast',NULL),(108,'Hindu - Maruthuvar','ReligionCast',NULL),(109,'Hindu - Marwari','ReligionCast',NULL),(110,'Hindu - Matang','ReligionCast',NULL),(111,'Hindu - Mathur','ReligionCast',NULL),(112,'HIndu - Mathurvaishya','ReligionCast',NULL),(113,'Hindu - Menon','ReligionCast',NULL),(114,'Hindu - Mudaliar','ReligionCast',NULL),(115,'Hindu - Mudaliar Arcot','ReligionCast',NULL),(116,'Hindu - Mudaliar Saiva','ReligionCast',NULL),(117,'Hindu - Mudaliar Senguntha','ReligionCast',NULL),(118,'Hindu - Mukulathur','ReligionCast',NULL),(119,'Hindu - Mutharaiyar','ReligionCast',NULL),(120,'Hindu - Nadar','ReligionCast',NULL),(121,'Hindu - Naidu','ReligionCast',NULL),(122,'Hindu - Nair','ReligionCast',NULL),(123,'Hindu - Nambiar','ReligionCast',NULL),(124,'Hindu - Nayaka','ReligionCast',NULL),(125,'Hindu - Padmashali','ReligionCast',NULL),(126,'Hindu - Patel','ReligionCast',NULL),(127,'Hindu - Patel Desai','ReligionCast',NULL),(128,'Hindu - Patel Kadva','ReligionCast',NULL),(129,'Hindu - Patel Leva','ReligionCast',NULL),(130,'Hindu - Pillai','ReligionCast',NULL),(131,'Hindu - Prajapati','ReligionCast',NULL),(132,'Hindu - Punjabi','ReligionCast',NULL),(133,'Hindu - Rajput','ReligionCast',NULL),(134,'Hindu - Reddy','ReligionCast',NULL),(135,'Hindu - Saiva Pillai','ReligionCast',NULL),(136,'Hindu - Scheduled Caste','ReligionCast',NULL),(137,'Hindu - Sindhi','ReligionCast',NULL),(138,'Hindu - Sowrashtra','ReligionCast',NULL),(139,'Hindu - Sozhiya Vellalar','ReligionCast',NULL),(140,'Hindu - Tamil','ReligionCast',NULL),(141,'Hindu - Tamil Yadava','ReligionCast',NULL),(142,'Hindu - Telgu','ReligionCast',NULL),(143,'Hindu - Teli','ReligionCast',NULL),(144,'Hindu - Thevar','ReligionCast',NULL),(145,'Hindu - Thiyya','ReligionCast',NULL),(146,'Hindu - Udayar','ReligionCast',NULL),(147,'Hindu - Vaishnav','ReligionCast',NULL),(148,'Hindu - Vaishnav Bania','ReligionCast',NULL),(149,'Hindu - Vaishnav Bhatia','ReligionCast',NULL),(150,'Hindu - Vaishnav Vania','ReligionCast',NULL),(151,'Hindu - Vanniyakullak Shatriya','ReligionCast',NULL),(152,'Hindu - Vanniyar','ReligionCast',NULL),(153,'Hindu - Varier','ReligionCast',NULL),(154,'Hindu - Veerashaiva','ReligionCast',NULL),(155,'Hindu - Vellama','ReligionCast',NULL),(156,'Hindu - Vilakkithala Nair','ReligionCast',NULL),(157,'Hindu - Vishwakarma','ReligionCast',NULL),(158,'Hindu - Viswabrahmin','ReligionCast',NULL),(159,'Hindu - Vokaliga','ReligionCast',NULL),(160,'Hindu - Vysya','ReligionCast',NULL),(161,'Hindu - Yadav','ReligionCast',NULL),(162,'Islam','ReligionCast',NULL),(163,'Islam - Shia','ReligionCast',NULL),(164,'Islam - Sunni','ReligionCast',NULL),(165,'Hindu Nair Veluthedath','ReligionCast',NULL),(166,'Islam - Bangla','ReligionCast',NULL),(167,'Ismaili','ReligionCast',NULL),(168,'Jain','ReligionCast',NULL),(169,'Jain Digambar','ReligionCast',NULL),(170,'Jain Swetamber','ReligionCast',NULL),(171,'Sikh - Clean Shaven','ReligionCast',NULL),(172,'Sikh - Gursikh','ReligionCast',NULL),(173,'Sikh - Jat','ReligionCast',NULL),(174,'Sikh - Kesadhari','ReligionCast',NULL),(175,'Sikh - Khatri','ReligionCast',NULL),(176,'Sikh - Ramqharia','ReligionCast',NULL),(177,'Spiritualism','ReligionCast',NULL),(178,'Zoroastrain Parsi','ReligionCast',NULL),(179,'Assamese','Culture',NULL),(180,'Bengali','Culture',NULL),(181,'Bhori','Culture',NULL),(182,'Bihari','Culture',NULL),(183,'Chattisgarhi','Culture',NULL),(184,'East Indian','Culture',NULL),(185,'Garhwali','Culture',NULL),(186,'Goan','Culture',NULL),(187,'Gujarati','Culture',NULL),(188,'Haryanvi','Culture',NULL),(189,'Hyderabadi','Culture',NULL),(190,'Islamic','Culture',NULL),(191,'Jain','Culture',NULL),(192,'kannada','Culture',NULL),(193,'Kashmiri','Culture',NULL),(194,'Kerala','Culture',NULL),(195,'Kokani','Culture',NULL),(196,'kumauni','Culture',NULL),(197,'kumouni','Culture',NULL),(198,'Lakhnow','Culture',NULL),(199,'Maharashtrian','Culture',NULL),(200,'Mamun','Culture',NULL),(201,'Marathi','Culture',NULL),(202,'Mixed','Culture',NULL),(203,'MP','Culture',NULL),(204,'Nepali','Culture',NULL),(205,'North Indian','Culture',NULL),(206,'Oriya','Culture',NULL),(207,'Other','Culture',NULL),(208,'Pakistani','Culture',NULL),(209,'Punjabi','Culture',NULL),(210,'Rajasthani','Culture',NULL),(211,'Sindhi (Indian)','Culture',NULL),(212,'Sindhi (Pak)','Culture',NULL),(213,'Sinhala','Culture',NULL),(214,'South Indian','Culture',NULL),(215,'Up','Culture',NULL),(216,'Zoroastrian Irani','Culture',NULL),(217,'Academic','Occupation',NULL),(218,'Accounting','Occupation',NULL),(219,'Administrative','Occupation',NULL),(220,'Air Hostess','Occupation',NULL),(221,'Architect','Occupation',NULL),(222,'Armed Forces','Occupation',NULL),(223,'Astrologer','Occupation',NULL),(224,'AVIATION','Occupation',NULL),(225,'Banking','Occupation',NULL),(226,'Business Owner','Occupation',NULL),(227,'Call Center','Occupation',NULL),(228,'Chartered Accountant','Occupation',NULL),(229,'Choreographer','Occupation',NULL),(230,'Clerical','Occupation',NULL),(231,'College Student','Occupation',NULL),(232,'Company Secretary','Occupation',NULL),(233,'Construction','Occupation',NULL),(234,'Consultant','Occupation',NULL),(235,'Customer Services','Occupation',NULL),(236,'Economist','Occupation',NULL),(237,'Engineer','Occupation',NULL),(238,'Event Management','Occupation',NULL),(239,'Executive','Occupation',NULL),(240,'Fashion Design','Occupation',NULL),(241,'Finance ','Occupation',NULL),(242,'Food Services-Hotel','Occupation',NULL),(243,'Government','Occupation',NULL),(244,'Graphic Designer','Occupation',NULL),(245,'Human Resource','Occupation',NULL),(246,'Interior Designer','Occupation',NULL),(247,'IT Professional','Occupation',NULL),(248,'Journalist','Occupation',NULL),(249,'Lawyer','Occupation',NULL),(250,'Make up Artist','Occupation',NULL),(251,'Manager','Occupation',NULL),(252,'Media','Occupation',NULL),(253,'Medical - Dentist','Occupation',NULL),(254,'Medical - Doctor','Occupation',NULL),(255,'Medical Transcriptionist','Occupation',NULL),(256,'Merchandiser','Occupation',NULL),(257,'Merchant Navy','Occupation',NULL),(258,'Microbiologist','Occupation',NULL),(259,'Modeling/Acting','Occupation',NULL),(260,'NGO','Occupation',NULL),(261,'Not Working','Occupation',NULL),(262,'Nurse','Occupation',NULL),(263,'Nutritionist','Occupation',NULL),(264,'Others','Occupation',NULL),(265,'Pharmacist','Occupation',NULL),(266,'Photographer','Occupation',NULL),(267,'Pilot','Occupation',NULL),(268,'Professor ','Occupation',NULL),(269,'Psychologist','Occupation',NULL),(270,'Research Associate','Occupation',NULL),(271,'Retailer','Occupation',NULL),(272,'Sales/Marketing','Occupation',NULL),(273,'Scientist','Occupation',NULL),(274,'Self Employed','Occupation',NULL),(275,'Software Profession','Occupation',NULL),(276,'Sportsman','Occupation',NULL),(277,'Teacher','Occupation',NULL),(278,'Technical','Occupation',NULL),(279,'Telecom','Occupation',NULL),(280,'Therapist','Occupation',NULL),(281,'Tourism Hotel Management','Occupation',NULL),(282,'Unemployed','Occupation',NULL),(283,'Web Designer','Occupation',NULL),(284,'Writer','Occupation',NULL),(285,'American','Nationality',NULL),(286,'British','Nationality',NULL),(287,'Canadian','Nationality',NULL),(288,'Indian','Nationality',NULL),(289,'Australian','Nationality',NULL),(290,'United Arab emirates','Nationality',NULL),(291,'Pakistani','Nationality',NULL),(292,'Bahraini','Nationality',NULL),(293,'Bangladeshi','Nationality',NULL),(294,'Danish','Nationality',NULL),(295,'Emarati','Nationality',NULL),(296,'French','Nationality',NULL),(297,'German','Nationality',NULL),(298,'Jamaican','Nationality',NULL),(299,'Kenyan','Nationality',NULL),(300,'Kuwaiti','Nationality',NULL),(301,'Malaysian','Nationality',NULL),(302,'Mauritian','Nationality',NULL),(303,'Moroccan','Nationality',NULL),(304,'Nepali','Nationality',NULL),(305,'Netherland','Nationality',NULL),(306,'New Zealand','Nationality',NULL),(307,'Norwegian','Nationality',NULL),(308,'Omani','Nationality',NULL),(309,'Portuguese','Nationality',NULL),(310,'Russian','Nationality',NULL),(311,'Saudi','Nationality',NULL),(312,'Singaporean','Nationality',NULL),(313,'South Africian','Nationality',NULL),(314,'Spanish','Nationality',NULL),(315,'Sri Lankan','Nationality',NULL),(316,'Swiss','Nationality',NULL),(317,'Thai','Nationality',NULL),(318,'Turkish','Nationality',NULL),(319,'Zambian','Nationality',NULL),(320,'Australian','Passport',NULL),(321,'British','Passport',NULL),(322,'Canadian','Passport',NULL),(323,'Indian','Passport',NULL),(324,'Pakistani','Passport',NULL),(325,'United States (USA -Citizen)','Passport',NULL),(326,'United States (Green card)','Passport',NULL),(327,'United States (H- visa)','Passport',NULL),(328,'United States (Student visa)','Passport',NULL),(329,'Gulf work permit','Passport',NULL),(330,'New Zealand','Passport',NULL),(331,'Bangladesh','Passport',NULL),(332,'Other','Passport',NULL),(333,'Singapore','Passport',NULL),(334,'50,000Rs. or Less','CurrentIncomeLevel',NULL),(335,'50,000Rs. to 1,50,000Rs.','CurrentIncomeLevel',NULL),(336,'1,50,000Rs. to 3,00,000Rs.','CurrentIncomeLevel',NULL),(337,'3,00,000Rs. to 5,00,000Rs.','CurrentIncomeLevel',NULL),(338,'5,00,000Rs. to 10,00,000Rs.','CurrentIncomeLevel',NULL),(339,'10,00,000Rs. to 20,00,000Rs.','CurrentIncomeLevel',NULL),(340,'20,00,000Rs. to 50,00,000Rs.','CurrentIncomeLevel',NULL),(341,'above 50,00,000Rs.','CurrentIncomeLevel',NULL),(342,'4ft 5inc - 135cms','Height',NULL),(343,'4ft 6inc - 137cms','Height',NULL),(344,'4ft  7inc - 140cms','Height',NULL),(345,'4ft 8inc -  142cms','Height',NULL),(346,'4ft 9inc - 145cms','Height',NULL),(347,'4ft 10inc - 147cms','Height',NULL),(348,'4ft 11inc - 150cms','Height',NULL),(349,'5 ft - 152cms','Height',NULL),(350,'5ft 1inc - 155cms','Height',NULL),(351,'5ft 2inc - 157cms','Height',NULL),(352,'5ft 3inc - 160cms','Height',NULL),(353,'5ft 4inc - 162cms','Height',NULL),(354,'5ft 5inc - 165cms','Height',NULL),(355,'5ft 6inc - 167cms','Height',NULL),(356,'5ft 7inc - 170cms','Height',NULL),(357,'5ft 8inc - 172cms','Height',NULL),(358,'5ft 9inc - 175cms','Height',NULL),(359,'5ft 10inc - 177cms','Height',NULL),(360,'5ft 11inc - 180cms','Height',NULL),(361,'6ft - 183cms','Height',NULL),(362,'6ft 1inc - 186cms','Height',NULL),(363,'6ft 2inc - 188cms','Height',NULL),(364,'44kg - 97lbs','Weight',NULL),(365,'45kg - 99lbs','Weight',NULL),(366,'46kg - 101lbs','Weight',NULL),(367,'47kg - 104lbs','Weight',NULL),(368,'48kg - 106lbs','Weight',NULL),(369,'49kg - 108lbs','Weight',NULL),(370,'50kg - 110lbs','Weight',NULL),(371,'51kg - 112lbs','Weight',NULL),(372,'52kg - 115lbs','Weight',NULL),(373,'53kg - 117lbs','Weight',NULL),(374,'54kg - 119lbs','Weight',NULL),(375,'55kg - 121lbs','Weight',NULL),(376,'56kg - 123lbs','Weight',NULL),(377,'57kg - 126lbs','Weight',NULL),(378,'58kg - 128lbs','Weight',NULL),(379,'59kg - 130lbs','Weight',NULL),(380,'60kg - 132lbs','Weight',NULL),(381,'61kg - 134lbs','Weight',NULL),(382,'62kg - 137lbs','Weight',NULL),(383,'63kg - 139lbs','Weight',NULL),(384,'64kg - 141lbs','Weight',NULL),(385,'65kg - 143lbs','Weight',NULL),(386,'66kg - 146lbs','Weight',NULL),(387,'67kg - 148lbs','Weight',NULL),(388,'68kg - 150lbs','Weight',NULL),(389,'69kg - 152lbs','Weight',NULL),(390,'70kg - 154lbs','Weight',NULL),(391,'71kg - 157lbs','Weight',NULL),(392,'72kg - 159lbs','Weight',NULL),(393,'73kg - 161lbs','Weight',NULL),(394,'74kg - 163lbs','Weight',NULL),(395,'75kg - 165lbs','Weight',NULL),(396,'76kg - 168lbs','Weight',NULL),(397,'77kg - 170lbs','Weight',NULL),(398,'78kg - 172lbs','Weight',NULL),(399,'79kg - 174lbs','Weight',NULL),(400,'80kg - 176lbs','Weight',NULL),(401,'81kg - 179lbs','Weight',NULL),(402,'82kg - 181lbs','Weight',NULL),(403,'83kg - 183lbs','Weight',NULL),(404,'84kg - 185lbs','Weight',NULL),(405,'85kg - 187lbs','Weight',NULL),(406,'86kg - 190lbs','Weight',NULL),(407,'87kg - 192lbs','Weight',NULL),(408,'88kg - 194lbs','Weight',NULL),(409,'89kg - 196lbs','Weight',NULL),(410,'90kg - 198lbs','Weight',NULL),(411,'91kg - 201lbs','Weight',NULL),(412,'92kg - 203lbs','Weight',NULL),(413,'93kg - 205lbs','Weight',NULL),(414,'94kg - 207lbs','Weight',NULL),(415,'95kg - 209lbs','Weight',NULL),(416,'96kg - 212lbs','Weight',NULL),(417,'97kg - 214lbs','Weight',NULL),(418,'98kg - 216lbs','Weight',NULL),(419,'100kg - 220lbs','Weight',NULL);
/*!40000 ALTER TABLE `singlefieldmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `writtenby` int(11) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `middlename` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `displayname` varchar(100) DEFAULT NULL,
  `forwaht` varchar(100) DEFAULT NULL,
  `timeformarriage` varchar(100) DEFAULT NULL COMMENT 'time in months',
  `gender` varchar(1) NOT NULL,
  `maritalstatus` int(2) NOT NULL,
  `dob` date NOT NULL,
  `tob` time NOT NULL,
  `contactno` varchar(15) DEFAULT NULL,
  `issecured` tinyint(4) DEFAULT NULL,
  `timeforcall` time DEFAULT NULL,
  `persontocontact` varchar(45) DEFAULT NULL,
  `lastdegree` int(11) DEFAULT NULL,
  `profession` int(11) DEFAULT NULL,
  `familystatus` int(11) DEFAULT NULL,
  `annualincome` int(11) DEFAULT NULL,
  `livingwith` varchar(45) DEFAULT NULL,
  `fatheralive` varchar(5) DEFAULT NULL,
  `motheralive` varchar(5) DEFAULT NULL,
  `marriedbrother` int(11) DEFAULT NULL,
  `unmarriedbrother` int(11) DEFAULT NULL,
  `marriedsister` int(11) DEFAULT NULL,
  `unmarredsister` int(11) DEFAULT NULL,
  `countrycode` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `address1` varchar(250) DEFAULT NULL,
  `bornin` int(11) DEFAULT NULL,
  `growupin` int(11) DEFAULT NULL,
  `ihave` varchar(45) DEFAULT NULL,
  `relocatable` varchar(5) DEFAULT NULL,
  `nationality` int(11) DEFAULT NULL,
  `passport` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `built` varchar(45) DEFAULT NULL,
  `complexion` varchar(45) DEFAULT NULL,
  `eyecolor` varchar(45) DEFAULT NULL,
  `haircolor` varchar(45) DEFAULT NULL,
  `food` varchar(45) DEFAULT NULL,
  `candrink` varchar(5) DEFAULT NULL,
  `cansmoke` varchar(5) DEFAULT NULL,
  `religion` int(11) DEFAULT NULL,
  `manglik` varchar(5) DEFAULT NULL,
  `culture` int(11) DEFAULT NULL,
  `language` int(11) DEFAULT NULL,
  `lifestyle` varchar(100) DEFAULT NULL,
  `randomno` int(6) DEFAULT NULL,
  `verificatoncode` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `isactive` tinyint(4) NOT NULL DEFAULT '0',
  `isdeleted` tinyint(4) NOT NULL DEFAULT '0',
  `password` varchar(250) DEFAULT NULL,
  `ismobileverified` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `lastdegreeid` (`lastdegree`),
  KEY `professionid` (`profession`),
  KEY `annualincomeid` (`annualincome`),
  KEY `widthid` (`weight`),
  KEY `heightid` (`height`),
  KEY `countymasterid` (`countrycode`),
  KEY `statemasterid` (`state`),
  CONSTRAINT `annualincomeid` FOREIGN KEY (`annualincome`) REFERENCES `singlefieldmaster` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `countymasterid` FOREIGN KEY (`countrycode`) REFERENCES `country` (`CountryID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `heightid` FOREIGN KEY (`height`) REFERENCES `singlefieldmaster` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `lastdegreeid` FOREIGN KEY (`lastdegree`) REFERENCES `singlefieldmaster` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `professionid` FOREIGN KEY (`profession`) REFERENCES `singlefieldmaster` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `statemasterid` FOREIGN KEY (`state`) REFERENCES `statesprovinces` (`StateID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `widthid` FOREIGN KEY (`weight`) REFERENCES `singlefieldmaster` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `CountryID` int(11) NOT NULL AUTO_INCREMENT,
  `CountryCode` char(2) DEFAULT NULL,
  `CountryName` varchar(45) DEFAULT NULL,
  `sortorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CountryID`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'US','United States',2),(2,'IN','India',1),(3,NULL,'UK',3),(4,NULL,'Canada',4),(5,NULL,'Pakistan',5),(6,NULL,'Australia',6),(7,NULL,'UAE',7),(8,NULL,'Saudi Arabia',8),(9,NULL,'Kuwait',9),(10,NULL,'Oman',10),(11,NULL,'Singapore',11),(12,NULL,'Thailand',12),(13,NULL,'New Zealand',13),(14,NULL,'Algeria',14),(15,NULL,'Austria',15),(16,NULL,'Bahamas',16),(17,NULL,'Bahrain',17),(18,NULL,'Bangladesh',18),(19,NULL,'Belgium',19),(20,NULL,'Bermuda',20),(21,NULL,'Brazil',21),(22,NULL,'Cayman Islands',22),(23,NULL,'Cyprus',23),(24,NULL,'Cuba',24),(25,NULL,'Denmark',25),(26,NULL,'Egypt',26),(27,NULL,'Fiji',27),(28,NULL,'Finland',28),(29,NULL,'France',29),(30,NULL,'Germany',30),(31,NULL,'Greece',31),(32,NULL,'Greenland',32),(33,NULL,'Hong Kong',33),(34,NULL,'Indonesia',34),(35,NULL,'Iran',35),(36,NULL,'Ireland',36),(37,NULL,'Italy',37),(38,NULL,'Jamaica',38),(39,NULL,'Japan',39),(40,NULL,'Jordan',40),(41,NULL,'Kenya',41),(42,NULL,'Lebanon',42),(43,NULL,'Libyan Arab Jamahiriya',43),(44,NULL,'Luxembourg',44),(45,NULL,'Malaysia',45),(46,NULL,'Mexico',46),(47,NULL,'Nepal',47),(48,NULL,'Netherlands',48),(49,NULL,'Nigeria',49),(50,NULL,'Norway',50),(51,NULL,'Oman',51),(52,NULL,'Philippines',52),(53,NULL,'Portugal',53),(54,NULL,'Qatar',54),(55,NULL,'South Africa',55),(56,NULL,'Spain',56),(57,NULL,'Sri Lanka',57),(58,NULL,'Sweden',58),(59,NULL,'Switzerland',59),(60,NULL,'Tanzania',60),(61,NULL,'Turkey',61);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendlist`
--

DROP TABLE IF EXISTS `friendlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friendlist` (
  `senderid` int(11) NOT NULL,
  `reciverid` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `senttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `friendsenderid` (`senderid`),
  KEY `friendreciverid` (`reciverid`),
  CONSTRAINT `friendreciverid` FOREIGN KEY (`reciverid`) REFERENCES `members` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `friendsenderid` FOREIGN KEY (`senderid`) REFERENCES `members` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendlist`
--

LOCK TABLES `friendlist` WRITE;
/*!40000 ALTER TABLE `friendlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `friendlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(10) NOT NULL,
  `senderid` int(7) NOT NULL,
  `reciverid` int(7) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `messages` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sentdate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sendermasterid` (`senderid`),
  KEY `recivermasterid` (`reciverid`),
  CONSTRAINT `recivermasterid` FOREIGN KEY (`reciverid`) REFERENCES `members` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `sendermasterid` FOREIGN KEY (`senderid`) REFERENCES `members` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fevoritelist`
--

DROP TABLE IF EXISTS `fevoritelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fevoritelist` (
  `myid` int(7) NOT NULL,
  `reciverid` int(7) NOT NULL,
  PRIMARY KEY (`myid`,`reciverid`),
  KEY `mayfevmasterid` (`myid`),
  KEY `revicerfevmasteid` (`reciverid`),
  CONSTRAINT `mayfevmasterid` FOREIGN KEY (`myid`) REFERENCES `members` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `revicerfevmasteid` FOREIGN KEY (`reciverid`) REFERENCES `members` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fevoritelist`
--

LOCK TABLES `fevoritelist` WRITE;
/*!40000 ALTER TABLE `fevoritelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `fevoritelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'marriageexpress'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-18 11:02:24
