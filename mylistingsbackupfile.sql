-- MySQL dump 10.13  Distrib 5.5.35, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mylistings
-- ------------------------------------------------------
-- Server version	5.5.35-0+wheezy1

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
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `end_time` varchar(255) COLLATE utf8_bin NOT NULL,
  `event_date` datetime NOT NULL,
  `event_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `price` double NOT NULL,
  `promoter_id` bigint(20) NOT NULL,
  `start_time` varchar(255) COLLATE utf8_bin NOT NULL,
  `venue_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5C6729A3F3167CD` (`venue_id`),
  KEY `FK5C6729A8C4FE327` (`promoter_id`),
  CONSTRAINT `FK5C6729A8C4FE327` FOREIGN KEY (`promoter_id`) REFERENCES `promoter` (`id`),
  CONSTRAINT `FK5C6729A3F3167CD` FOREIGN KEY (`venue_id`) REFERENCES `venue` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,0,'4AM','2014-05-03 00:00:00','Thirsty Ear 9th Birthday',3,4,'11PM',1),(2,0,'11pm','2014-06-28 00:00:00','Birthday Booze',0,1,'9pm',4),(3,0,'1am','2014-06-28 00:00:00','Live Music DJs',4,2,'7pm',2),(4,0,'2pm','2014-05-10 00:00:00','Table Football Comp',2.5,1,'10am',3);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promoter`
--

DROP TABLE IF EXISTS `promoter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promoter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `promoter_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `promoter_telephone` varchar(255) COLLATE utf8_bin NOT NULL,
  `promoter_website` varchar(255) COLLATE utf8_bin NOT NULL,
  `promter_email` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promoter`
--

LOCK TABLES `promoter` WRITE;
/*!40000 ALTER TABLE `promoter` DISABLE KEYS */;
INSERT INTO `promoter` VALUES (1,0,'Drowned In Sound','01141234567','drownedinsound.com','events@drownedinsound.com'),(2,0,'Harley Live','01142345578','www.theharley.co.uk','harleylive@theharley.co.uk'),(3,0,'No Uniform','07854856197','Facebook.com/nouniform','nouniform@gmail.com'),(4,0,'Thirsty Ear','07943157100','www.thirstyear.co.uk','bookings@thirstyear.co.uk');
/*!40000 ALTER TABLE `promoter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venue`
--

DROP TABLE IF EXISTS `venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `venue_address` varchar(255) COLLATE utf8_bin NOT NULL,
  `venue_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `venue_post_code` varchar(255) COLLATE utf8_bin NOT NULL,
  `venue_telephone` varchar(255) COLLATE utf8_bin NOT NULL,
  `venue_website` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue`
--

LOCK TABLES `venue` WRITE;
/*!40000 ALTER TABLE `venue` DISABLE KEYS */;
INSERT INTO `venue` VALUES (1,0,'334 Glossop Road','The Harley','S10 2HW','0114278353','www.theharley.co.uk'),(2,0,'Queens Road','Queens Social Club','S2 4DG','01142725544','https://www.facebook.com/Queenssocialclub‎'),(3,0,'2 Milton St','Corporation','S1 4JU','0114 276 0262','www.corporation.org.uk'),(4,0,'Arundel St','The Lughole','S1 4RE','0114 272 2650','http://www.skiddle.com/venues/50682/');
/*!40000 ALTER TABLE `venue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-28 18:42:16
