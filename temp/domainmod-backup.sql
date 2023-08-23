-- mysqldump-php https://github.com/ifsnop/mysqldump-php
--
-- Host: tools_domainmod-db	Database: tools
-- ------------------------------------------------------
-- Server version 	5.7.43
-- Date: Wed, 23 Aug 2023 01:31:42 +0000

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
-- Table structure for table `api_registrars`
--

DROP TABLE IF EXISTS `api_registrars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_registrars` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `req_account_username` tinyint(1) NOT NULL DEFAULT '0',
  `req_account_password` tinyint(1) NOT NULL DEFAULT '0',
  `req_account_id` tinyint(1) NOT NULL DEFAULT '0',
  `req_reseller_id` tinyint(1) NOT NULL DEFAULT '0',
  `req_api_app_name` tinyint(1) NOT NULL DEFAULT '0',
  `req_api_key` tinyint(1) NOT NULL DEFAULT '0',
  `req_api_secret` tinyint(1) NOT NULL DEFAULT '0',
  `req_ip_address` tinyint(1) NOT NULL DEFAULT '0',
  `lists_domains` tinyint(1) NOT NULL DEFAULT '0',
  `ret_expiry_date` tinyint(1) NOT NULL DEFAULT '0',
  `ret_dns_servers` tinyint(1) NOT NULL DEFAULT '0',
  `ret_privacy_status` tinyint(1) NOT NULL DEFAULT '0',
  `ret_autorenewal_status` tinyint(1) NOT NULL DEFAULT '0',
  `notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_registrars`
--

LOCK TABLES `api_registrars` WRITE;
/*!40000 ALTER TABLE `api_registrars` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `api_registrars` VALUES (1,'Above.com',0,0,0,0,0,1,0,0,1,1,1,1,1,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(2,'DNSimple',0,0,0,0,0,1,0,0,1,1,1,1,1,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(3,'DreamHost',0,0,0,0,0,1,0,0,1,1,1,0,1,'DreamHost does not currently allow the WHOIS privacy status of a domain to be retrieved via their API, so all domains added to the Domain Queue from a DreamHost account will have their WHOIS privacy status set to No by default.','2023-07-06 08:23:29','1970-01-01 00:00:00'),(4,'Dynadot',0,0,0,0,0,1,0,1,1,1,1,1,1,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(5,'eNom',1,1,0,0,0,0,0,0,1,1,1,1,1,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(6,'Fabulous',1,1,0,0,0,0,0,0,1,1,1,1,1,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(7,'Freenom',1,1,0,0,0,0,0,0,1,1,1,1,1,'Freenom currently only gives API access to reseller accounts.','2023-07-06 08:23:29','1970-01-01 00:00:00'),(8,'Gandi',0,0,0,0,0,1,0,0,1,1,1,0,1,'Gandi does not currently allow the WHOIS privacy status of a domain to be retrieved via their API, so all domains added to the Domain Queue from a Gandi account will have their WHOIS privacy status set to No by default.','2023-07-06 08:23:29','1970-01-01 00:00:00'),(9,'GoDaddy',0,0,0,0,0,1,1,0,1,1,1,1,1,'When retrieving your list of domains from GoDaddy, the current limit is 1,000 domains. If you have more than this you should export the full list of domains from GoDaddy and paste it into the <strong>Domains to add</strong> field when adding domains via the Domain Queue.','2023-07-06 08:23:29','1970-01-01 00:00:00'),(10,'Internet.bs',0,0,0,0,0,1,1,0,1,1,1,1,1,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(11,'Name.com',1,0,0,0,0,1,0,0,1,1,1,1,1,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(12,'NameBright',1,0,0,0,1,0,1,0,1,1,1,1,1,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(13,'Namecheap',1,0,0,0,0,1,0,1,1,1,1,1,1,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(14,'NameSilo',0,0,0,0,0,1,0,0,1,1,1,1,1,'NameSilo\'s domains have 6 possible statuses: Active, Expired (grace period), Expired (restore period), Expired (pending delete), Inactive, and Pending Outbound Transfer<BR><BR>When retrieving your list of domains via the API, <STRONG>Inactive</STRONG> domains are not returned.<BR><BR>When retrieving the details of a specific domain via the API, <STRONG>Inactive</STRONG> and <STRONG>Expired (pending delete)</STRONG> domains will not return any data.','2023-07-06 08:23:29','1970-01-01 00:00:00'),(15,'OpenSRS',1,0,0,0,0,1,0,1,1,1,1,1,1,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(16,'ResellerClub',0,0,0,1,0,1,0,0,0,1,1,1,0,'ResellerClub does not allow users to retrieve a list of their domains via the API, nor do they return the Auto Renewal status when retrieving the details of a domain. All domains imported via the API will have their Auto Renewal status set to No by default.','2023-07-06 08:23:29','1970-01-01 00:00:00'),(17,'Cloudflare',1,0,1,0,0,1,0,0,1,1,1,1,1,'','2023-07-06 08:23:29','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `api_registrars` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `api_registrars` with 17 row(s)
--

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `stakeholder` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `creation_type_id` tinyint(2) NOT NULL DEFAULT '2',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `categories` VALUES (1,'[no category]','[no stakeholder]','',1,0,'2023-07-06 08:23:29','1970-01-01 00:00:00'),(2,'Sales Page','','',2,1,'2023-07-06 08:41:32','2023-07-10 08:16:37'),(3,'Corporate','','',2,1,'2023-07-06 08:41:41','1970-01-01 00:00:00'),(4,'Ecommerce','','',2,1,'2023-07-06 08:41:48','2023-07-10 08:16:18');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `categories` with 4 row(s)
--

--
-- Table structure for table `creation_types`
--

DROP TABLE IF EXISTS `creation_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creation_types` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creation_types`
--

LOCK TABLES `creation_types` WRITE;
/*!40000 ALTER TABLE `creation_types` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `creation_types` VALUES (1,'Installation','2023-07-06 08:23:29'),(2,'Manual','2023-07-06 08:23:29'),(3,'Bulk Updater','2023-07-06 08:23:29'),(4,'Manual or Bulk Updater','2023-07-06 08:23:29'),(5,'Queue','2023-07-06 08:23:29'),(6,'CSV Importer','2023-07-06 08:23:29');
/*!40000 ALTER TABLE `creation_types` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `creation_types` with 6 row(s)
--

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `symbol_order` tinyint(1) NOT NULL DEFAULT '0',
  `symbol_space` tinyint(1) NOT NULL DEFAULT '0',
  `notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `currencies` VALUES (1,'ALL','Albania Lek','Lek',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(2,'AFN','Afghanistan Afghani','؋',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(3,'ARS','Argentina Peso','$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(4,'AWG','Aruba Guilder','ƒ',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(5,'AUD','Australia Dollar','$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(6,'AZN','Azerbaijan New Manat','ман',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(7,'BSD','Bahamas Dollar','$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(8,'BBD','Barbados Dollar','$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(9,'BYR','Belarus Ruble','p.',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(10,'BZD','Belize Dollar','BZ$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(11,'BMD','Bermuda Dollar','$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(12,'BOB','Bolivia Boliviano','$b',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(13,'BAM','Bosnia and Herzegovina Convertible Marka','KM',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(14,'BWP','Botswana Pula','P',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(15,'BGN','Bulgaria Lev','лв',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(16,'BRL','Brazil Real','R$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(17,'BND','Brunei Darussalam Dollar','$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(18,'KHR','Cambodia Riel','៛',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(19,'CAD','Canada Dollar','$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(20,'KYD','Cayman Islands Dollar','$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(21,'CLP','Chile Peso','$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(22,'CNY','China Yuan Renminbi','¥',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(23,'COP','Colombia Peso','$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(24,'CRC','Costa Rica Colon','₡',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(25,'HRK','Croatia Kuna','kn',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(26,'CUP','Cuba Peso','₱',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(27,'CZK','Czech Republic Koruna','Kč',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(28,'DKK','Denmark Krone','kr',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(29,'DOP','Dominican Republic Peso','RD$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(30,'XCD','East Caribbean Dollar','$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(31,'EGP','Egypt Pound','£',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(32,'SVC','El Salvador Colon','$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(33,'EEK','Estonia Kroon','kr',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(34,'EUR','Euro Member Countries','€',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(35,'FKP','Falkland Islands (Malvinas) Pound','£',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(36,'FJD','Fiji Dollar','$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(37,'GHC','Ghana Cedis','¢',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(38,'GIP','Gibraltar Pound','£',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(39,'GTQ','Guatemala Quetzal','Q',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(40,'GGP','Guernsey Pound','£',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(41,'GYD','Guyana Dollar','$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(42,'HNL','Honduras Lempira','L',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(43,'HKD','Hong Kong Dollar','$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(44,'HUF','Hungary Forint','Ft',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(45,'ISK','Iceland Krona','kr',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(46,'INR','India Rupee','Rs',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(47,'IDR','Indonesia Rupiah','Rp',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(48,'IRR','Iran Rial','﷼',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(49,'IMP','Isle of Man Pound','£',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(50,'ILS','Israel Shekel','₪',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(51,'JMD','Jamaica Dollar','J$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(52,'JPY','Japan Yen','¥',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(53,'JEP','Jersey Pound','£',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(54,'KZT','Kazakhstan Tenge','лв',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(55,'KPW','Korea (North) Won','₩',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(56,'KRW','Korea (South) Won','₩',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(57,'KGS','Kyrgyzstan Som','лв',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(58,'LAK','Laos Kip','₭',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(59,'LVL','Latvia Lat','Ls',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(60,'LBP','Lebanon Pound','£',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(61,'LRD','Liberia Dollar','$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(62,'LTL','Lithuania Litas','Lt',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(63,'MKD','Macedonia Denar','ден',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(64,'RM','Malaysia Ringgit','RM',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(65,'MUR','Mauritius Rupee','₨',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(66,'MXN','Mexico Peso','$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(67,'MNT','Mongolia Tughrik','₮',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(68,'MZN','Mozambique Metical','MT',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(69,'NAD','Namibia Dollar','$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(70,'NPR','Nepal Rupee','₨',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(71,'ANG','Netherlands Antilles Guilder','ƒ',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(72,'NZD','New Zealand Dollar','$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(73,'NIO','Nicaragua Cordoba','C$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(74,'NGN','Nigeria Naira','₦',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(75,'NOK','Norway Krone','kr',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(76,'OMR','Oman Rial','﷼',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(77,'PKR','Pakistan Rupee','₨',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(78,'PAB','Panama Balboa','B/.',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(79,'PYG','Paraguay Guarani','Gs',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(80,'PEN','Peru Nuevo Sol','S/.',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(81,'PHP','Philippines Peso','₱',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(82,'PLN','Poland Zloty','zł',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(83,'QAR','Qatar Riyal','﷼',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(84,'RON','Romania New Leu','lei',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(85,'RUB','Russia Ruble','руб',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(86,'SHP','Saint Helena Pound','£',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(87,'SAR','Saudi Arabia Riyal','﷼',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(88,'RSD','Serbia Dinar','Дин.',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(89,'SCR','Seychelles Rupee','₨',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(90,'SGD','Singapore Dollar','$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(91,'SBD','Solomon Islands Dollar','$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(92,'SOS','Somalia Shilling','S',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(93,'ZAR','South Africa Rand','R',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(94,'LKR','Sri Lanka Rupee','₨',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(95,'SEK','Sweden Krona','kr',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(96,'CHF','Switzerland Franc','CHF',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(97,'SRD','Suriname Dollar','$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(98,'SYP','Syria Pound','£',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(99,'TWD','Taiwan New Dollar','NT$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(100,'THB','Thailand Baht','฿',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(101,'TTD','Trinidad and Tobago Dollar','TT$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(102,'TRY','Turkey Lira','₺',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(103,'TVD','Tuvalu Dollar','$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(104,'UAH','Ukraine Hryvna','₴',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(105,'GBP','United Kingdom Pound','£',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(106,'USD','United States Dollar','$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(107,'UYU','Uruguay Peso','$U',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(108,'UZS','Uzbekistan Som','лв',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(109,'VEF','Venezuela Bolivar','Bs',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(110,'VND','Viet Nam Dong','₫',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(111,'YER','Yemen Rial','﷼',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(112,'ZWD','Zimbabwe Dollar','Z$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(113,'AED','Emirati Dirham','د.إ',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(114,'MYR','Malaysian Ringgit','RM',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(115,'KWD','Kuwaiti Dinar','ك',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(116,'MAD','Moroccan Dirham','م.',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(117,'IQD','Iraqi Dinar','د.ع',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(118,'BDT','Bangladeshi Taka','Tk',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(119,'BHD','Bahraini Dinar','BD',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(120,'KES','Kenyan Shilling','KSh',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(121,'XOF','CFA Franc','CFA',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(122,'JOD','Jordanian Dinar','JD',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(123,'TND','Tunisian Dinar','د.ت',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(124,'GHS','Ghanaian Cedi','GH¢',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(125,'XAF','Central African CFA Franc BEAC','FCFA',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(126,'DZD','Algerian Dinar','دج',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(127,'XPF','CFP Franc','F',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(128,'UGX','Ugandan Shilling','USh',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(129,'TZS','Tanzanian Shilling','TZS',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(130,'ETB','Ethiopian Birr','Br',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(131,'GEL','Georgian Lari','GEL',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(132,'CUC','Cuban Convertible Peso','CUC$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(133,'MMK','Burmese Kyat','K',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(134,'LYD','Libyan Dinar','LD',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(135,'ZMK','Zambian Kwacha','ZK',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(136,'ZMW','Zambian Kwacha','ZK',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(137,'MOP','Macau Pataca','MOP$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(138,'AMD','Armenian Dram','AMD',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(139,'AOA','Angolan Kwanza','Kz',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(140,'PGK','Papua New Guinean Kina','K',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(141,'MGA','Malagasy Ariary','Ar',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(142,'VUV','Ni-Vanuatu Vatu','VT',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(143,'SDG','Sudanese Pound','SDG',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(144,'MWK','Malawian Kwacha','MK',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(145,'RWF','Rwandan Franc','FRw',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(146,'GMD','Gambian Dalasi','D',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(147,'MVR','Maldivian Rufiyaa','Rf',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(148,'CDF','Congolese Franc','FC',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(149,'DJF','Djiboutian Franc','Fdj',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(150,'HTG','Haitian Gourde','G',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(151,'WST','Samoan Tala','$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(152,'GNF','Guinean Franc','FG',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(153,'CVE','Cape Verdean Escudo','$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(154,'TOP','Tongan Pa\'anga','T$',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(155,'MDL','Moldovan Leu','MDL',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(156,'SLL','Sierra Leonean Leone','Le',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(157,'BIF','Burundian Franc','FBu',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(158,'MRO','Mauritanian Ouguiya','UM',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(159,'BTN','Bhutanese Ngultrum','Nu.',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(160,'SZL','Swazi Lilangeni','SZL',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(161,'TJS','Tajikistani Somoni','TJS',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(162,'TMT','Turkmenistani Manat','m',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(163,'LSL','Basotho Loti','LSL',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(164,'KMF','Comoran Franc','CF',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(165,'STD','Sao Tomean Dobra','STD',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00'),(166,'SPL','Seborgan Luigino','SPL',0,0,'','2023-07-06 08:23:29','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `currencies` with 166 row(s)
--

--
-- Table structure for table `currency_conversions`
--

DROP TABLE IF EXISTS `currency_conversions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency_conversions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `currency_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `conversion` decimal(12,4) NOT NULL,
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency_conversions`
--

LOCK TABLES `currency_conversions` WRITE;
/*!40000 ALTER TABLE `currency_conversions` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `currency_conversions` VALUES (1,114,1,0.0000,'2023-07-06 08:46:47','2023-08-23 01:04:25'),(2,64,1,1.0000,'2023-07-07 06:35:19','2023-08-23 01:04:38'),(3,114,2,0.0000,'2023-07-07 06:37:41','2023-08-23 00:01:02'),(4,64,2,0.0000,'2023-07-07 06:37:41','2023-08-23 00:01:03'),(5,114,3,0.2153,'2023-07-07 06:50:21','2023-08-23 00:01:04'),(6,64,3,1.0859,'2023-07-07 06:50:21','2023-08-23 00:01:05'),(7,64,4,1.0000,'2023-07-10 08:20:07','2023-08-23 00:01:05'),(8,64,5,5.0430,'2023-07-11 02:57:05','2023-08-23 00:01:06'),(9,64,6,1.0000,'2023-07-11 02:59:39','2023-08-23 00:01:07'),(10,64,7,1.0000,'2023-07-11 03:02:07','2023-08-23 00:01:07'),(11,64,8,5.0430,'2023-07-11 03:04:06','2023-08-23 00:01:08'),(12,64,9,1.0000,'2023-07-11 03:06:37','2023-08-23 00:01:09'),(13,64,10,5.0430,'2023-07-11 03:11:07','2023-08-23 00:01:09'),(14,64,11,5.0430,'2023-07-11 03:12:48','2023-08-23 00:01:10'),(15,114,4,0.0000,'2023-07-12 02:31:05','2023-08-23 00:01:05'),(16,114,5,1.0000,'2023-07-12 02:31:05','2023-08-23 00:01:05'),(17,114,6,0.0000,'2023-07-12 02:31:06','2023-08-23 00:01:07'),(18,114,7,0.0000,'2023-07-12 02:31:06','2023-08-23 00:01:07'),(19,114,8,1.0000,'2023-07-12 02:31:06','2023-08-23 00:01:07'),(20,114,9,0.0000,'2023-07-12 02:31:07','2023-08-23 00:01:09'),(21,114,10,1.0000,'2023-07-12 02:31:07','2023-08-23 00:01:09'),(22,114,11,1.0000,'2023-07-12 02:31:07','2023-08-23 00:01:09');
/*!40000 ALTER TABLE `currency_conversions` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `currency_conversions` with 22 row(s)
--

--
-- Table structure for table `custom_field_types`
--

DROP TABLE IF EXISTS `custom_field_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_types`
--

LOCK TABLES `custom_field_types` WRITE;
/*!40000 ALTER TABLE `custom_field_types` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `custom_field_types` VALUES (1,'Check Box','2023-07-06 08:23:29','1970-01-01 00:00:00'),(2,'Text','2023-07-06 08:23:29','1970-01-01 00:00:00'),(3,'Text Area','2023-07-06 08:23:29','1970-01-01 00:00:00'),(4,'Date','2023-07-06 08:23:29','1970-01-01 00:00:00'),(5,'Time Stamp','2023-07-06 08:23:29','1970-01-01 00:00:00'),(6,'URL','2023-07-06 08:23:29','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `custom_field_types` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `custom_field_types` with 6 row(s)
--

--
-- Table structure for table `dns`
--

DROP TABLE IF EXISTS `dns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dns1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dns2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dns3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dns4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dns5` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dns6` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dns7` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dns8` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dns9` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dns10` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip1` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `ip2` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `ip3` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `ip4` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `ip5` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `ip6` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `ip7` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `ip8` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `ip9` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `ip10` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number_of_servers` tinyint(2) NOT NULL DEFAULT '0',
  `creation_type_id` tinyint(2) NOT NULL DEFAULT '2',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dns`
--

LOCK TABLES `dns` WRITE;
/*!40000 ALTER TABLE `dns` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `dns` VALUES (1,'[no dns]','ns1.no-dns.com','ns2.no-dns.com','','','','','','','','','','','','','','','','','','','',2,1,0,'2023-07-06 08:23:29','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `dns` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `dns` with 1 row(s)
--

--
-- Table structure for table `domain_field_data`
--

DROP TABLE IF EXISTS `domain_field_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domain_field_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `domain_id` int(10) unsigned NOT NULL,
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `sales_person` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domain_field_data`
--

LOCK TABLES `domain_field_data` WRITE;
/*!40000 ALTER TABLE `domain_field_data` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `domain_field_data` VALUES (7,7,'2023-07-12 02:29:53','2023-07-21 07:43:43','Ain','Kenny Lai','018-2381122'),(8,8,'2023-07-17 08:44:40','2023-08-02 03:43:32','','Syed Abdul Rahman Bin Syed Yusof','013 - 763 4066'),(9,9,'2023-07-18 03:58:26','2023-08-02 03:46:46','','Mohd. Izuddin Bin Hashim ','012 - 561 0278'),(10,10,'2023-07-18 07:25:47','2023-08-02 03:50:08','','',''),(11,11,'2023-07-18 07:31:39','2023-08-02 03:54:05','','Tie Hieng Ngieng ','016 - 884 4899'),(12,12,'2023-07-18 07:35:50','2023-08-02 04:00:33','','Bon Azfan ','019 - 601 5532'),(13,13,'2023-07-18 07:43:14','2023-08-02 03:51:54','','Mohd Effendi','016 - 600 9099'),(14,14,'2023-07-18 08:01:27','2023-08-02 03:53:10','','Norita Mohd Hanapi ','012 - 337 7430'),(15,15,'2023-07-20 07:36:50','2023-08-02 03:41:09','','Johan Arif ','017 - 634 4566'),(16,16,'2023-07-20 07:42:43','2023-08-02 03:57:14','','Mohd Hamizol Bin Mustafa ','013 - 973 5349 '),(17,17,'2023-07-20 08:25:53','2023-08-02 03:58:15','','Mohd Hamizol Bin Mustafa ','012 - 610 5404'),(18,18,'2023-07-20 08:33:44','2023-08-02 03:59:19','','Proton Senawang Wanija 3S ','011 - 1078 6897 '),(19,19,'2023-07-20 08:44:00','2023-08-02 04:01:28','','Adam ','017-645 9107'),(20,20,'2023-07-21 03:56:26','2023-08-02 04:02:55','','Marliana Anisa (mell) ','010 - 900 8407'),(21,21,'2023-07-21 04:04:37','2023-07-26 03:05:57','Hairol','Azabaijan Bin Bahrudin','011 - 3749 1367'),(22,22,'2023-07-21 04:08:20','2023-08-02 04:07:07','Zulaikha','Muhammad Nadzim Farhan Bin Rosli','019 - 956 6650'),(23,23,'2023-07-21 04:13:11','2023-08-10 03:29:04','Zulaikha','Heffendy Mohamad','013 - 337 9709'),(24,24,'2023-07-21 04:17:31','2023-07-26 03:15:11','En Faris','Kak rose',''),(25,25,'2023-07-21 04:21:05','2023-07-26 03:15:52','En Faris','Mohamad Zamzam bin Mahmud','012 - 612 5621'),(26,26,'2023-07-21 07:34:26','2023-07-26 03:13:07','Hairol','Muhammad Irfan Bin Ezaham ','017 - 473 6066'),(27,27,'2023-07-21 07:46:48','2023-08-10 03:19:06','Intan','Syarifah Hakimah','013 - 984 7023'),(28,28,'2023-07-21 08:03:41','2023-07-31 09:01:31','','Laily Ibrahim',' 012 - 332 1830'),(29,29,'2023-07-21 08:13:35','2023-07-26 03:16:53','Zulaikha','Mohd Fadli ','019 - 623 9923'),(30,30,'2023-07-21 08:23:07','2023-07-26 03:17:34','Ain','Syazwan Rosdi','019 - 335 5497'),(31,31,'2023-07-21 08:25:25','2023-07-26 03:18:46','Ain','Mohd Nizal Che Lah','016 - 630 5692'),(32,32,'2023-07-21 08:29:25','2023-08-10 03:54:44','Intan','Vangines @ Nes Ak Jupong','019 - 815 7648'),(33,33,'2023-07-21 08:33:08','1970-01-01 00:00:00','','Nor Fauziah Achmad Nawawi','011 - 1030 3757'),(34,34,'2023-07-21 08:42:23','1970-01-01 00:00:00','','Hakimie ','018 - 470 4219'),(35,35,'2023-07-21 08:44:35','2023-07-27 08:36:14','','Abu Hasan Din Bin Azali','016 - 499 5979'),(36,36,'2023-07-24 02:22:46','1970-01-01 00:00:00','','Mohd Zaiful Hairy Bin Saad','017 - 503 1981'),(37,37,'2023-07-24 02:27:14','1970-01-01 00:00:00','','Azhar Bin Lop Abu Bakar','019 - 277 0636'),(38,38,'2023-07-24 02:30:43','1970-01-01 00:00:00','','Muhammad Shahrur Bin Munizar ','017 - 248 1412'),(39,39,'2023-07-24 07:11:10','1970-01-01 00:00:00','','Haziq Suhaimi','011 - 1078 0287'),(40,40,'2023-07-24 07:52:51','1970-01-01 00:00:00','','Kyle Nimbar','010-968 7141'),(41,41,'2023-07-24 08:01:05','1970-01-01 00:00:00','Aishah','Noriahno Binti Mohamad Kasim','012-696 7706'),(42,42,'2023-07-24 08:07:35','1970-01-01 00:00:00','','Yeo Ming Soon','016 - 646 1285'),(43,43,'2023-07-24 08:16:57','1970-01-01 00:00:00','','Alex Lee ',' 017-716 3768'),(44,44,'2023-07-24 08:26:22','1970-01-01 00:00:00','','Juriza Binti Abdul Johar','019-911 2127'),(45,45,'2023-07-24 08:31:10','1970-01-01 00:00:00','','Fendi Zainal','017-633 3431'),(46,46,'2023-07-24 08:34:07','1970-01-01 00:00:00','','Siti Nur Sakinah Binti Abdul Wahib','017 - 716 6481'),(47,47,'2023-07-24 08:40:39','1970-01-01 00:00:00','Aishah','Muhamad Ikmal Bin Md Isa','017 - 449 6759'),(48,48,'2023-07-24 08:49:34','1970-01-01 00:00:00','Aishah','Mohammad Yazid Bin Yaman','012 - 807 9897'),(49,49,'2023-07-25 02:30:36','1970-01-01 00:00:00','','Lee Boon Fong','012 - 762 1622'),(50,50,'2023-07-25 02:33:57','1970-01-01 00:00:00','','Amilshah','019 - 338 6883'),(51,51,'2023-07-25 02:38:17','1970-01-01 00:00:00','','Hasril Honda',' 012 - 975 9198'),(52,52,'2023-07-25 02:43:48','1970-01-01 00:00:00','','Hanim ',' 012 - 332 8772'),(53,53,'2023-07-25 02:54:56','1970-01-01 00:00:00','','Mohamed Bari Bin Ahamed Elias','019 - 348 0148'),(54,54,'2023-07-25 02:57:34','1970-01-01 00:00:00','','Mohd Borhan ','012 - 337 0048'),(55,55,'2023-07-25 03:00:58','1970-01-01 00:00:00','','syahrastani sudheer','013 - 317 7708'),(56,56,'2023-07-25 03:10:32','1970-01-01 00:00:00','','Shahrul Izzat Bin Ramle','017 - 287 0219'),(57,57,'2023-07-25 04:14:35','1970-01-01 00:00:00','','Mohamed Daniel Bin Abd Hamid','019 - 662 9720'),(58,58,'2023-07-25 04:18:22','1970-01-01 00:00:00','','Mohd Lutfi','010 - 552 4358'),(59,59,'2023-07-25 04:25:12','1970-01-01 00:00:00','','Azli Abdullah','014 - 824 5858'),(60,60,'2023-07-25 04:30:18','1970-01-01 00:00:00','','Salmidi Bin Muda ( MIDI )','016 - 921 6080'),(61,61,'2023-07-25 04:44:05','1970-01-01 00:00:00','','Md Zaini bin Dahalan','019 - 788 9998'),(62,62,'2023-07-25 07:23:31','1970-01-01 00:00:00','','Yasir Abu Bakar','016 - 557 4765'),(63,63,'2023-07-25 07:50:38','1970-01-01 00:00:00','','Muhammad Nur Aiman Bin Md Haneff','011 - 5694 8975'),(64,64,'2023-07-25 07:56:00','1970-01-01 00:00:00','','Siti Aminah Binti Nadi','019 - 533 6604'),(65,65,'2023-07-25 08:00:27','1970-01-01 00:00:00','','Ashmar Bin Ibrahim','012 - 483 1450'),(66,66,'2023-07-25 08:04:18','1970-01-01 00:00:00','Aishah','Tun Mohd Faizul Bin Tun Ahmad','013-630 6001'),(67,67,'2023-07-25 08:13:14','1970-01-01 00:00:00','','Sukri Yahaya','019 - 425 4828'),(68,68,'2023-07-25 08:19:04','1970-01-01 00:00:00','','Abdul Hafis Bin Ishak ','019 - 493 8493'),(69,69,'2023-07-25 08:23:12','1970-01-01 00:00:00','','Henny Chua','017 - 415 5582 & 011 - 5501 1261'),(70,70,'2023-07-25 08:26:24','1970-01-01 00:00:00','Izzad ','Faqiha Zul','014 - 516 5024'),(71,71,'2023-07-25 08:32:54','1970-01-01 00:00:00','','Mohd Herrul Mukmin Bin Mat Tarmez ','019-305 5348'),(72,72,'2023-07-26 03:49:21','1970-01-01 00:00:00','','Dayang Sofiah Binti Mohd Yassin','013 - 725 2286'),(73,73,'2023-07-26 03:57:58','1970-01-01 00:00:00','','Nurulintanaswana Binti Md Hanapi','011 - 1446 6267'),(74,74,'2023-07-26 04:08:02','1970-01-01 00:00:00','','Muhammad Nazreen Bin Mohd Nasir','013 - 612 9167'),(75,75,'2023-07-26 04:19:48','1970-01-01 00:00:00','','Mohd Dan Bin Jati','012 - 675 4700'),(76,76,'2023-07-26 04:39:17','1970-01-01 00:00:00','','Nurul Azira','013 - 809 2403'),(77,77,'2023-07-26 04:42:26','1970-01-01 00:00:00','',' Carmen Chew','012 - 362 0600'),(78,78,'2023-07-26 04:47:59','1970-01-01 00:00:00','','Dinie','017 - 236 6506'),(79,79,'2023-07-26 04:52:35','1970-01-01 00:00:00','','Mastura','012 - 911 1162'),(80,80,'2023-07-26 06:56:23','1970-01-01 00:00:00','','Khairul Anuar Bin Mustapha ','016 - 717 8042'),(81,81,'2023-07-26 06:59:52','2023-08-02 04:06:03','','Nazir ','013 - 618 3837'),(82,82,'2023-07-26 07:08:06','1970-01-01 00:00:00','','Noralain Ahmad Fatry (Ann)','012 - 921 8000'),(83,83,'2023-07-26 07:15:49','1970-01-01 00:00:00','','Yvonne Lim','016 - 267 3787'),(84,84,'2023-07-26 07:21:24','1970-01-01 00:00:00','','Mohd Faizal Bin.Omar','013 - 392 7580'),(85,85,'2023-07-26 07:31:07','1970-01-01 00:00:00','','Mohamad Khalid Bin Abdul Gani','013 - 835 6535'),(86,86,'2023-07-26 07:36:27','1970-01-01 00:00:00','','Danny Chong','012 - 757 2688'),(87,87,'2023-07-26 07:51:21','2023-08-10 07:12:37','','Abdul Rauf Bin T.Qiamuddin','012 - 296 4142'),(88,88,'2023-07-26 08:32:13','1970-01-01 00:00:00','','Jennifer Anak Lenggai','017 - 226 3081'),(89,89,'2023-07-26 08:36:24','1970-01-01 00:00:00','',' Alvis Ng','019 - 873 3919'),(90,90,'2023-07-26 08:42:54','2023-08-02 04:07:57','','Mohd Farid Hadzuri ','012 - 760 7719'),(91,91,'2023-07-27 06:35:35','1970-01-01 00:00:00','','Chey ','016 - 247 9160'),(92,92,'2023-07-27 06:40:32','1970-01-01 00:00:00','','Miss Yan','010 - 370 2072'),(93,93,'2023-07-27 07:01:03','1970-01-01 00:00:00','','',''),(94,94,'2023-07-27 07:03:06','1970-01-01 00:00:00','','',''),(95,95,'2023-07-27 07:27:31','1970-01-01 00:00:00','','Aiman Zayn ','011 - 5880 3677'),(96,96,'2023-07-27 07:37:50','1970-01-01 00:00:00','','Rita Sani ','017 - 641 3595'),(97,97,'2023-07-31 07:07:30','2023-08-16 07:58:53','','Leslie Kok','012 - 277 1166'),(98,98,'2023-07-31 07:16:13','1970-01-01 00:00:00','','Najaa','013 - 726 4112'),(99,99,'2023-07-31 07:25:41','1970-01-01 00:00:00','','Sahrol ','017 - 620 9566'),(100,100,'2023-07-31 07:43:58','1970-01-01 00:00:00','Aishah','Mohd Azrin Yaacob ( Rain Yaacob ) ','019 - 360 7702'),(101,101,'2023-07-31 08:32:22','1970-01-01 00:00:00','','Muhammad Nor Hakim Saadon','017 - 740 3402'),(102,102,'2023-07-31 08:46:20','1970-01-01 00:00:00','','Sheema Zahari','019 - 284 3895'),(103,103,'2023-08-02 04:30:15','1970-01-01 00:00:00','','Othman Bin Mohd Yusof','019 - 884 9898'),(104,104,'2023-08-02 04:52:02','1970-01-01 00:00:00','','Mohd Azhar Bin Hashim ','011 - 1685 7570'),(105,105,'2023-08-03 08:52:18','2023-08-03 08:54:24','','Azrul Hisham Bin Baharuddin ','017 - 631 6087'),(106,106,'2023-08-04 02:29:06','1970-01-01 00:00:00','','Noor Hasyimah Binti Haris','012 - 516 5571'),(107,107,'2023-08-04 02:32:57','1970-01-01 00:00:00','','Shuhaimi Bin Abdul Ghani','012 - 974 4783'),(108,108,'2023-08-04 03:28:58','1970-01-01 00:00:00','','Aron Len ','016-945 8556'),(109,109,'2023-08-04 03:31:30','1970-01-01 00:00:00','','Abdul Razak Hanapi','019 - 654 4243'),(110,110,'2023-08-04 07:30:05','1970-01-01 00:00:00','','Alexster Ambri ','019 - 468 4353'),(111,111,'2023-08-04 07:35:36','1970-01-01 00:00:00','','Fazawati','019 - 970 8686'),(112,112,'2023-08-04 07:38:34','1970-01-01 00:00:00','','Roslan Bin Ismail ','017 - 740 0558'),(113,113,'2023-08-04 08:00:57','1970-01-01 00:00:00','','Abd Avis ','019 - 557 1155'),(114,114,'2023-08-04 08:06:32','1970-01-01 00:00:00','','Aliff Nur Hakim Bin Mohd Zamli ','014 - 506 2962'),(115,115,'2023-08-04 08:08:50','2023-08-04 08:09:35','','Nurul Azami ','011 - 3700 7879'),(116,116,'2023-08-04 08:12:54','1970-01-01 00:00:00','','Shirley Amber Mitsubishi','012 - 806 0423'),(117,117,'2023-08-04 08:16:13','1970-01-01 00:00:00','','Zaliha Daud','012 - 603 5198'),(118,118,'2023-08-04 08:39:13','1970-01-01 00:00:00','','Rohayu Pauzi','014 - 846 5151'),(119,119,'2023-08-04 08:43:21','1970-01-01 00:00:00','','Deen ','017 - 512 8625'),(120,120,'2023-08-04 08:48:11','1970-01-01 00:00:00','','Safri Halim ','018 - 224 4020'),(121,121,'2023-08-04 08:50:01','1970-01-01 00:00:00','','Ain Norshal','012 - 702 1484'),(122,122,'2023-08-07 08:00:09','1970-01-01 00:00:00','','Hairul Suffian Hamsah ','019 - 334 4543'),(123,123,'2023-08-07 08:04:24','1970-01-01 00:00:00','','Mazni Aiksan ','012 - 611 2510'),(124,124,'2023-08-07 08:08:40','1970-01-01 00:00:00','','Kua Mei Yan','012 - 3033 995'),(125,125,'2023-08-07 08:14:23','1970-01-01 00:00:00','','Kok Zeer Suai ','018 - 256 1898'),(126,126,'2023-08-07 08:19:06','1970-01-01 00:00:00','','Taa Perodua ','013 - 939 9035'),(127,127,'2023-08-07 08:23:27','1970-01-01 00:00:00','','Moharrizal','011 - 5634 2166'),(128,128,'2023-08-08 06:57:29','2023-08-08 06:58:01','','Muhammad Shahryzan','019 - 480 0803'),(129,129,'2023-08-08 07:07:43','1970-01-01 00:00:00','','Kamal ','016 - 933 9677'),(130,130,'2023-08-08 07:10:15','1970-01-01 00:00:00','','Mohd Khairi B Ahmad Fauzi (Hairi Fauzi)','016 - 410 1254'),(131,131,'2023-08-08 07:47:50','1970-01-01 00:00:00','','Honda Nilai ','014 - 630 4800'),(132,132,'2023-08-08 07:50:59','1970-01-01 00:00:00','','Mohd Rizal Bin Sapri','017 - 309 7737'),(133,133,'2023-08-08 07:55:53','1970-01-01 00:00:00','','Andrew chan','017 - 555 5320'),(134,134,'2023-08-08 08:04:15','1970-01-01 00:00:00','','Sharina','016 - 553 3744'),(135,135,'2023-08-08 08:16:18','1970-01-01 00:00:00','','Abdul Hayyi bin Ilais','019 - 911 5900'),(136,136,'2023-08-08 08:19:11','1970-01-01 00:00:00','','Ika Jessica','012 - 312 9791'),(137,137,'2023-08-08 08:30:05','1970-01-01 00:00:00','','Mohd Khairul bin Mat','012 - 554 3161'),(138,138,'2023-08-08 08:45:14','1970-01-01 00:00:00','','Dinie Faridah Binti Shaharuddin ','018 - 250 4990'),(139,139,'2023-08-09 08:06:24','1970-01-01 00:00:00','','AdrianHor','016 - 441 1500'),(140,140,'2023-08-09 08:08:45','1970-01-01 00:00:00','','Siti ','011 - 2543 4123'),(141,141,'2023-08-09 08:12:07','1970-01-01 00:00:00','','Mohd Ferza','017 - 934 8751'),(142,142,'2023-08-10 02:34:23','1970-01-01 00:00:00','','Kelly','010 - 900 8922'),(143,143,'2023-08-10 02:39:12','1970-01-01 00:00:00','','Wan Kamarudin Bin Wan Mohamad','017 - 250 7317'),(144,144,'2023-08-10 02:43:15','1970-01-01 00:00:00','','Zalina ','017 - 522 3224'),(145,145,'2023-08-10 07:04:44','1970-01-01 00:00:00','','Halim Wahid','013 - 242 4932'),(146,146,'2023-08-10 07:35:00','1970-01-01 00:00:00','','Cheryl Wong','016 - 212 3993'),(147,147,'2023-08-10 07:37:00','1970-01-01 00:00:00','','Farisha','012 - 981 1421'),(148,148,'2023-08-10 07:47:53','1970-01-01 00:00:00','','Hishamudin','016 - 606 0070'),(149,149,'2023-08-10 07:59:24','1970-01-01 00:00:00','','Mohd Firdaus Bin Md Nasir ',' 011 - 5542 8982'),(150,150,'2023-08-10 08:07:18','1970-01-01 00:00:00','','Dyla','012 - 554 5155'),(151,151,'2023-08-10 08:19:48','1970-01-01 00:00:00','','Hisam Isuzu ','014 - 949 2306'),(152,152,'2023-08-10 08:26:09','1970-01-01 00:00:00','',' Iezalman','013 - 768 1618'),(153,153,'2023-08-10 08:30:45','1970-01-01 00:00:00','','Dzulkarnain Bin Hassan','011 - 3255 9900'),(154,154,'2023-08-11 07:10:17','1970-01-01 00:00:00','','Nurul Ain ','017 - 212 5257'),(155,155,'2023-08-11 07:13:48','1970-01-01 00:00:00','','Mr. K.K. Yew','012 - 908 9412'),(156,156,'2023-08-11 07:16:43','1970-01-01 00:00:00','','Adhar','019 - 956 6617'),(157,157,'2023-08-11 07:19:07','1970-01-01 00:00:00','','Alvin Ong ','016 - 668 7975'),(158,158,'2023-08-11 07:24:02','1970-01-01 00:00:00','','Shazi ','012 - 204 9527'),(159,159,'2023-08-11 07:43:28','1970-01-01 00:00:00','','Gordon Chan','010 - 402 0703'),(160,160,'2023-08-11 08:30:13','1970-01-01 00:00:00','','Eric Yeow','011-6559 0781'),(161,161,'2023-08-15 04:17:39','1970-01-01 00:00:00','','Zureen Abd Sani ','012 - 700 7834'),(162,162,'2023-08-15 04:20:59','1970-01-01 00:00:00','','Sabrina ','012 - 242 7259'),(163,163,'2023-08-15 04:45:53','1970-01-01 00:00:00','','',''),(164,164,'2023-08-16 02:19:52','1970-01-01 00:00:00','','Nurul','012 - 204 2846'),(165,165,'2023-08-16 02:24:09','1970-01-01 00:00:00','','Syairazi','016 - 209 4709'),(166,166,'2023-08-16 02:31:35','1970-01-01 00:00:00','','Aidy Bin Ahmad','012 - 828 1313'),(167,167,'2023-08-16 06:40:03','1970-01-01 00:00:00','','Shahrul','013 - 340 9994'),(168,168,'2023-08-16 06:42:04','1970-01-01 00:00:00','','Faizal (Jan Bosnia)',' 019 - 900 0587'),(169,169,'2023-08-16 06:44:53','1970-01-01 00:00:00','','Suriani ','013 - 211 1747'),(170,170,'2023-08-16 06:53:28','1970-01-01 00:00:00','',' Hazel Tan ','018 - 911 5033'),(171,171,'2023-08-16 06:57:30','1970-01-01 00:00:00','','Lina Salleh','012 - 388 3067 / 019 - 833 8865'),(172,172,'2023-08-16 07:29:30','1970-01-01 00:00:00','','Suriani (Sue)','017 - 973 1443'),(173,173,'2023-08-16 07:35:41','1970-01-01 00:00:00','','Mohd Afnan ','016 - 820 7536'),(174,174,'2023-08-16 07:50:15','1970-01-01 00:00:00','','Yazid ','012 - 358 3612'),(175,175,'2023-08-17 02:36:50','1970-01-01 00:00:00','','Mohd Faizul Bin Ibrahim','018 - 465 7396'),(176,176,'2023-08-17 04:00:45','1970-01-01 00:00:00','','Dominic Yii ','014 - 663 7795'),(177,177,'2023-08-17 04:03:01','1970-01-01 00:00:00','','Tommy Tang Tung Ngie','016 - 232 9154'),(178,178,'2023-08-17 04:14:41','1970-01-01 00:00:00','','Mei ','010 - 716 3163'),(179,179,'2023-08-17 06:41:30','1970-01-01 00:00:00','','Mohamad Nizamuddin Bin Kamal Arifin ','011 - 3342 6505'),(180,180,'2023-08-17 06:49:07','1970-01-01 00:00:00','','Azman Hj Ismail ','017 - 218 7057'),(181,181,'2023-08-17 06:55:01','1970-01-01 00:00:00','','Faris Haiqal ','012 - 985 1912'),(182,182,'2023-08-17 07:33:44','1970-01-01 00:00:00','','Jas Lam ','014 - 928 0668'),(183,183,'2023-08-17 07:39:42','1970-01-01 00:00:00','','Zulizan Bin Jumiran',' 013 - 406 0450'),(184,184,'2023-08-17 07:45:46','1970-01-01 00:00:00','','Linda ','018 - 255 6346'),(185,185,'2023-08-17 07:50:06','1970-01-01 00:00:00','','Khabir Zain ','012 - 307 9492'),(186,186,'2023-08-17 07:53:41','1970-01-01 00:00:00','','Omar Khalifa Bin Mohamad Akbar','016 - 769 7861'),(187,187,'2023-08-17 07:57:50','1970-01-01 00:00:00','','Nur Fashihah Binti Amdan','013 - 499 6172'),(188,188,'2023-08-18 02:55:11','1970-01-01 00:00:00','','Ahmad ','019 - 279 7725'),(189,189,'2023-08-18 04:17:50','1970-01-01 00:00:00','','Muhammad Razmin Bin Sulaiman','016 - 206 1982'),(190,190,'2023-08-18 04:26:00','1970-01-01 00:00:00','','Dya Hidayah ','019 - 779 1089'),(191,191,'2023-08-18 06:28:42','1970-01-01 00:00:00','','Amran Tahar','011 - 5552 1622'),(192,192,'2023-08-18 06:36:40','1970-01-01 00:00:00','','Nurhayati Binti Abu Hassan','018 - 958 1981'),(193,193,'2023-08-18 06:42:58','1970-01-01 00:00:00','','A J Ismail','017 - 249 5173'),(194,194,'2023-08-18 06:49:46','1970-01-01 00:00:00','','Norzila Binti Kusnin','018 - 971 6468'),(195,195,'2023-08-18 06:59:49','1970-01-01 00:00:00','','Ain Proton','019 - 326 1162'),(196,196,'2023-08-18 07:18:03','1970-01-01 00:00:00','','Muhammad Yahya Bin Norazam','012 - 642 6346');
/*!40000 ALTER TABLE `domain_field_data` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `domain_field_data` with 190 row(s)
--

--
-- Table structure for table `domain_fields`
--

DROP TABLE IF EXISTS `domain_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domain_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `field_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `creation_type_id` tinyint(2) NOT NULL DEFAULT '2',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domain_fields`
--

LOCK TABLES `domain_fields` WRITE;
/*!40000 ALTER TABLE `domain_fields` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `domain_fields` VALUES (1,'Sales Person','sales_person',2,'','',2,1,'2023-07-06 08:30:02','2023-07-12 03:56:21'),(5,'Client Name','client_name',2,'','',2,1,'2023-07-06 08:44:21','1970-01-01 00:00:00'),(6,'Client Phone No.','client_phone',2,'','',2,1,'2023-07-10 08:15:40','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `domain_fields` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `domain_fields` with 3 row(s)
--

--
-- Table structure for table `domain_queue`
--

DROP TABLE IF EXISTS `domain_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domain_queue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `api_registrar_id` smallint(5) NOT NULL DEFAULT '0',
  `domain_id` int(10) unsigned NOT NULL DEFAULT '0',
  `owner_id` int(10) unsigned NOT NULL DEFAULT '0',
  `registrar_id` int(10) unsigned NOT NULL DEFAULT '0',
  `account_id` int(10) unsigned NOT NULL DEFAULT '0',
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tld` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL DEFAULT '1970-01-01',
  `cat_id` int(10) unsigned NOT NULL DEFAULT '0',
  `dns_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hosting_id` int(10) unsigned NOT NULL DEFAULT '0',
  `autorenew` tinyint(1) NOT NULL DEFAULT '0',
  `privacy` tinyint(1) NOT NULL DEFAULT '0',
  `processing` tinyint(1) NOT NULL DEFAULT '0',
  `ready_to_import` tinyint(1) NOT NULL DEFAULT '0',
  `finished` tinyint(1) NOT NULL DEFAULT '0',
  `already_in_domains` tinyint(1) NOT NULL DEFAULT '0',
  `already_in_queue` tinyint(1) NOT NULL DEFAULT '0',
  `invalid_domain` tinyint(1) NOT NULL DEFAULT '0',
  `copied_to_history` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domain_queue`
--

LOCK TABLES `domain_queue` WRITE;
/*!40000 ALTER TABLE `domain_queue` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `domain_queue` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `domain_queue` with 0 row(s)
--

--
-- Table structure for table `domain_queue_history`
--

DROP TABLE IF EXISTS `domain_queue_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domain_queue_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `api_registrar_id` smallint(5) NOT NULL DEFAULT '0',
  `domain_id` int(10) unsigned NOT NULL DEFAULT '0',
  `owner_id` int(10) unsigned NOT NULL DEFAULT '0',
  `registrar_id` int(10) unsigned NOT NULL DEFAULT '0',
  `account_id` int(10) unsigned NOT NULL DEFAULT '0',
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tld` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL DEFAULT '1970-01-01',
  `cat_id` int(10) unsigned NOT NULL DEFAULT '0',
  `dns_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hosting_id` int(10) unsigned NOT NULL DEFAULT '0',
  `autorenew` tinyint(1) NOT NULL DEFAULT '0',
  `privacy` tinyint(1) NOT NULL DEFAULT '0',
  `already_in_domains` tinyint(1) NOT NULL DEFAULT '0',
  `already_in_queue` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domain_queue_history`
--

LOCK TABLES `domain_queue_history` WRITE;
/*!40000 ALTER TABLE `domain_queue_history` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `domain_queue_history` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `domain_queue_history` with 0 row(s)
--

--
-- Table structure for table `domain_queue_list`
--

DROP TABLE IF EXISTS `domain_queue_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domain_queue_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `api_registrar_id` smallint(5) NOT NULL DEFAULT '0',
  `domain_count` int(6) NOT NULL DEFAULT '0',
  `owner_id` int(10) unsigned NOT NULL DEFAULT '0',
  `registrar_id` int(10) unsigned NOT NULL DEFAULT '0',
  `account_id` int(10) unsigned NOT NULL DEFAULT '0',
  `processing` tinyint(1) NOT NULL DEFAULT '0',
  `ready_to_import` tinyint(1) NOT NULL DEFAULT '0',
  `finished` tinyint(1) NOT NULL DEFAULT '0',
  `copied_to_history` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domain_queue_list`
--

LOCK TABLES `domain_queue_list` WRITE;
/*!40000 ALTER TABLE `domain_queue_list` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `domain_queue_list` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `domain_queue_list` with 0 row(s)
--

--
-- Table structure for table `domain_queue_list_history`
--

DROP TABLE IF EXISTS `domain_queue_list_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domain_queue_list_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `api_registrar_id` smallint(5) NOT NULL DEFAULT '0',
  `domain_count` int(6) NOT NULL DEFAULT '0',
  `owner_id` int(10) unsigned NOT NULL DEFAULT '0',
  `registrar_id` int(10) unsigned NOT NULL DEFAULT '0',
  `account_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domain_queue_list_history`
--

LOCK TABLES `domain_queue_list_history` WRITE;
/*!40000 ALTER TABLE `domain_queue_list_history` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `domain_queue_list_history` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `domain_queue_list_history` with 0 row(s)
--

--
-- Table structure for table `domain_queue_temp`
--

DROP TABLE IF EXISTS `domain_queue_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domain_queue_temp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(10) unsigned NOT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL DEFAULT '1970-01-01',
  `ns1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ns2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ns3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ns4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ns5` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ns6` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ns7` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ns8` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ns9` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ns10` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `autorenew` tinyint(1) NOT NULL DEFAULT '0',
  `privacy` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `domain` (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domain_queue_temp`
--

LOCK TABLES `domain_queue_temp` WRITE;
/*!40000 ALTER TABLE `domain_queue_temp` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `domain_queue_temp` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `domain_queue_temp` with 0 row(s)
--

--
-- Table structure for table `domains`
--

DROP TABLE IF EXISTS `domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domains` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int(10) unsigned NOT NULL DEFAULT '1',
  `registrar_id` int(10) unsigned NOT NULL DEFAULT '1',
  `account_id` int(10) unsigned NOT NULL DEFAULT '1',
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tld` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL DEFAULT '1970-01-01',
  `cat_id` int(10) unsigned NOT NULL DEFAULT '1',
  `fee_id` int(10) unsigned NOT NULL DEFAULT '0',
  `total_cost` decimal(10,2) NOT NULL,
  `dns_id` int(10) unsigned NOT NULL DEFAULT '1',
  `ip_id` int(10) unsigned NOT NULL DEFAULT '1',
  `hosting_id` int(10) unsigned NOT NULL DEFAULT '1',
  `function` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autorenew` tinyint(1) NOT NULL DEFAULT '0',
  `privacy` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(2) NOT NULL DEFAULT '1',
  `fee_fixed` tinyint(1) NOT NULL DEFAULT '0',
  `creation_type_id` tinyint(2) NOT NULL DEFAULT '2',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `domain` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domains`
--

LOCK TABLES `domains` WRITE;
/*!40000 ALTER TABLE `domains` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `domains` VALUES (7,2,1,1,'toyotakl.com','com','2023-11-23',2,2,55.00,1,1,1,'','',0,0,1,1,2,7,'2023-07-12 02:29:53','2023-08-23 01:04:38'),(8,2,1,1,'hondapasirgudang.com','com','2023-05-09',2,2,55.00,1,1,6,'','',0,0,1,1,2,11,'2023-07-17 08:44:40','2023-08-23 01:04:38'),(9,2,1,1,'mitsubishikualaterengganu.com','com','2023-06-16',2,2,55.00,1,1,7,'','',0,0,1,1,2,11,'2023-07-18 03:58:26','2023-08-23 01:04:38'),(10,2,1,1,'mitsubishipenang.com','com','2023-06-20',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-07-18 07:25:47','2023-08-23 01:04:38'),(11,2,1,1,'mitsubishisarawak.com','com','2023-07-08',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-07-18 07:31:39','2023-08-23 01:04:38'),(12,2,1,1,'mitsubishisabah.com','com','2023-07-12',2,2,55.00,1,1,5,'','',0,0,1,1,2,11,'2023-07-18 07:35:50','2023-08-23 01:04:38'),(13,2,1,1,'toyotapenang.com','com','2023-06-20',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-07-18 07:43:14','2023-08-23 01:04:38'),(14,2,1,1,'peroduarawang.my','my','2023-06-21',2,3,100.00,1,1,8,'','',0,0,1,1,2,11,'2023-07-18 08:01:27','2023-08-02 03:53:10'),(15,2,1,1,'hondaselangor.com','com','2023-02-19',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-07-20 07:36:50','2023-08-23 01:04:38'),(16,2,1,1,'peroduakuantan.com','com','2023-02-19',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-07-20 07:42:43','2023-08-23 01:04:38'),(17,2,1,1,'toyotashahalam.com','com','2023-07-11',2,2,55.00,1,1,5,'','',0,0,1,1,2,11,'2023-07-20 08:25:53','2023-08-23 01:04:38'),(18,2,1,1,'protonsenawangofficial.com','com','2023-07-11',2,2,55.00,1,1,5,'','',0,0,1,1,2,11,'2023-07-20 08:33:44','2023-08-23 01:04:38'),(19,2,1,1,'mitsubishiselangor.com','com','2023-07-19',2,2,55.00,1,1,5,'','',0,0,1,1,2,11,'2023-07-20 08:44:00','2023-08-23 01:04:38'),(20,2,1,1,'isuzupahang.com','com','2023-07-19',2,2,55.00,1,1,5,'','',0,0,1,1,2,11,'2023-07-21 03:56:26','2023-08-23 01:04:38'),(21,2,1,1,'protonkelantan.com','com','2023-07-31',2,2,55.00,1,1,5,'','',0,0,1,1,2,11,'2023-07-21 04:04:37','2023-08-23 01:04:38'),(22,2,1,1,'protonkuantan.com','com','2023-08-01',2,2,55.00,1,1,5,'','',0,0,1,1,2,11,'2023-07-21 04:08:20','2023-08-23 01:04:38'),(23,2,1,1,'protonampang.com','com','2023-08-02',2,2,55.00,1,1,5,'','',0,0,1,1,2,11,'2023-07-21 04:13:11','2023-08-23 01:04:38'),(24,2,1,1,'protonmelaka.com','com','2023-08-04',2,2,55.00,1,1,5,'','',0,0,1,1,2,11,'2023-07-21 04:17:31','2023-08-23 01:04:38'),(25,2,1,1,'protonsungaipetani.com','com','2023-08-04',2,2,55.00,1,1,5,'','',0,0,1,1,2,11,'2023-07-21 04:21:05','2023-08-23 01:04:38'),(26,2,1,1,'protonkedah.com','com','2023-08-02',2,2,55.00,1,1,5,'','',0,0,1,1,2,11,'2023-07-21 07:34:26','2023-08-23 01:04:38'),(27,2,1,1,'protonkotabharu.com','com','2023-07-31',2,2,55.00,1,1,5,'','',0,0,1,1,2,11,'2023-07-21 07:46:48','2023-08-23 01:04:38'),(28,2,1,1,'hondashahalam.com.my','com.my','2023-12-06',2,4,80.00,1,1,5,'','',0,0,1,1,2,11,'2023-07-21 08:03:41','2023-07-31 09:01:31'),(29,2,1,1,'mitsubishimelaka.com','com','2023-08-24',2,2,55.00,1,1,5,'','',0,0,1,1,2,11,'2023-07-21 08:13:35','2023-08-23 01:04:38'),(30,2,1,1,'protonnegerisembilan.com','com','2023-09-06',2,2,55.00,1,1,5,'','',0,0,1,1,2,11,'2023-07-21 08:23:07','2023-08-23 01:04:38'),(31,2,1,1,'mitsubishimotorsmelaka.com','com','2023-09-20',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-07-21 08:25:25','2023-08-23 01:04:38'),(32,2,1,1,'toyotabintulu.com','com','2023-09-21',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-07-21 08:29:25','2023-08-23 01:04:38'),(33,2,1,1,'hartanahselangor.com.my','com.my','2023-09-27',2,4,80.00,1,1,8,'','',0,0,1,1,2,11,'2023-07-21 08:33:08','1970-01-01 00:00:00'),(34,2,1,1,'protonnilai.com','com','2023-09-26',2,2,55.00,1,1,5,'','',0,0,1,1,2,11,'2023-07-21 08:42:23','2023-08-23 01:04:38'),(35,2,1,1,'toyotakulim.com','com','2023-09-26',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-07-21 08:44:35','2023-08-23 01:04:38'),(36,2,1,1,'toyotalangkawi.com','com','2023-10-12',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-07-24 02:22:46','2023-08-23 01:04:38'),(37,2,1,1,'hondasungaibuloh.com','com','2023-10-12',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-07-24 02:27:14','2023-08-23 01:04:38'),(38,2,1,1,'mitsubishiampang.com','com','2023-10-20',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-07-24 02:30:43','2023-08-23 01:04:38'),(39,2,1,1,'protonseremban.my','my','2023-09-26',2,3,100.00,1,1,8,'','',0,0,1,1,2,11,'2023-07-24 07:11:10','1970-01-01 00:00:00'),(40,2,1,1,'mitsubishimiri.com','com','2023-11-28',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-07-24 07:52:51','2023-08-23 01:04:38'),(41,2,1,1,'hondabanting.my','my','2023-11-29',2,3,100.00,1,1,6,'','',0,0,1,1,2,11,'2023-07-24 08:01:05','1970-01-01 00:00:00'),(42,2,1,1,'toyotamelaka.com','com','2023-12-06',2,2,55.00,1,1,6,'','',0,0,1,1,2,11,'2023-07-24 08:07:35','2023-08-23 01:04:38'),(43,2,1,1,'hondajohor.com','com','2023-11-29',2,2,55.00,1,1,6,'','',0,0,1,1,2,11,'2023-07-24 08:16:57','2023-08-23 01:04:38'),(44,2,1,1,'peroduasegamat.com','com','2023-12-09',2,2,55.00,1,1,6,'','',0,0,1,1,2,11,'2023-07-24 08:26:22','2023-08-23 01:04:38'),(45,2,1,1,'peroduaseremban.com','com','2023-12-09',2,2,55.00,1,1,6,'','',0,0,1,1,2,11,'2023-07-24 08:31:10','2023-08-23 01:04:38'),(46,2,1,1,'protonshahalam.my','my','2023-12-06',2,3,100.00,1,1,6,'','',0,0,1,1,2,11,'2023-07-24 08:34:07','1970-01-01 00:00:00'),(47,2,1,1,'mitsubishisungaipetani.com','com','2023-11-29',2,2,55.00,1,1,6,'','',0,0,1,1,2,11,'2023-07-24 08:40:39','2023-08-23 01:04:38'),(48,2,1,1,'toyotasarawak.com','com','2023-11-30',2,2,55.00,1,1,6,'','',0,0,1,1,2,11,'2023-07-24 08:49:34','2023-08-23 01:04:38'),(49,2,1,1,'protonbatupahat.com','com','2023-12-06',2,2,55.00,1,1,5,'','',0,0,1,1,2,11,'2023-07-25 02:30:36','2023-08-23 01:04:38'),(50,2,1,1,'peroduakajang.com','com','2023-12-06',2,2,55.00,1,1,5,'','',0,0,1,1,2,11,'2023-07-25 02:33:57','2023-08-23 01:04:38'),(51,2,1,1,'hondadamansara.com','com','2023-12-06',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-07-25 02:38:17','2023-08-23 01:04:38'),(52,2,1,1,'mitsubishishahalam.com','com','2023-12-06',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-07-25 02:43:48','2023-08-23 01:04:38'),(53,2,1,1,'peroduakl.my','my','2023-12-06',2,3,100.00,1,1,5,'','',0,0,1,1,2,11,'2023-07-25 02:54:56','1970-01-01 00:00:00'),(54,2,1,1,'hondakl.com','com','2023-12-06',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-07-25 02:57:34','2023-08-23 01:04:38'),(55,2,1,1,'mitsubishikl.com','com','2023-12-06',2,2,55.00,1,1,6,'','',0,0,1,1,2,11,'2023-07-25 03:00:58','2023-08-23 01:04:38'),(56,2,1,1,'peroduasetiaalam.com','com','2023-12-06',2,2,55.00,1,1,6,'','',0,0,1,1,2,11,'2023-07-25 03:10:32','2023-08-23 01:04:38'),(57,2,1,1,'toyotanearme.com','com','2023-12-06',2,2,55.00,1,1,6,'','',0,0,1,1,2,11,'2023-07-25 04:14:35','2023-08-23 01:04:38'),(58,2,1,1,'mitsubishiperak.com','com','2023-12-06',2,2,55.00,1,1,6,'','',0,0,1,1,2,11,'2023-07-25 04:18:22','2023-08-23 01:04:38'),(59,2,1,1,'peroduaterengganu.com','com','2023-12-06',2,2,55.00,1,1,6,'','',0,0,1,1,2,11,'2023-07-25 04:25:12','2023-08-23 01:04:38'),(60,2,1,1,'mitsubishikuantan.com','com','2023-12-06',2,2,55.00,1,1,6,'','',0,0,1,1,2,11,'2023-07-25 04:30:18','2023-08-23 01:04:38'),(61,2,1,1,'toyotajohor.com','com','2023-12-06',2,2,55.00,1,1,6,'','',0,0,1,1,2,11,'2023-07-25 04:44:05','2023-08-23 01:04:38'),(62,2,1,1,'peroduasabah.my','my','2023-12-04',2,3,100.00,1,1,7,'','',0,0,1,1,2,11,'2023-07-25 07:23:31','1970-01-01 00:00:00'),(63,2,1,1,'peroduamelaka.com','com','2023-12-05',2,2,55.00,1,1,6,'','',0,0,1,1,2,11,'2023-07-25 07:50:38','2023-08-23 01:04:38'),(64,2,1,1,'protonsandakan.com','com','2023-12-06',2,2,55.00,1,1,7,'','',0,0,1,1,2,11,'2023-07-25 07:56:00','2023-08-23 01:04:38'),(65,2,1,1,'peroduajuru.com','com','2023-12-07',2,2,55.00,1,1,7,'','',0,0,1,1,2,11,'2023-07-25 08:00:27','2023-08-23 01:04:38'),(66,2,1,1,'mitsubishiterengganu.com','com','2023-12-08',2,2,55.00,1,1,7,'','',0,0,1,1,2,11,'2023-07-25 08:04:18','2023-08-23 01:04:38'),(67,2,1,1,'peroduajitra.com','com','2023-12-09',2,2,55.00,1,1,7,'','',0,0,1,1,2,11,'2023-07-25 08:13:14','2023-08-23 01:04:38'),(68,2,1,1,'peroduataiping.com','com','2023-12-09',2,2,55.00,1,1,7,'','',0,0,1,1,2,11,'2023-07-25 08:19:04','2023-08-23 01:04:38'),(69,2,1,1,'peroduataipingkamunting.com','com','2023-12-09',2,2,55.00,1,1,7,'','',0,0,1,1,2,11,'2023-07-25 08:23:12','2023-08-23 01:04:38'),(70,2,1,1,'mitsubishibandarbarubangi.com','com','2023-12-14',2,2,55.00,1,1,7,'','',0,0,1,1,2,11,'2023-07-25 08:26:24','2023-08-23 01:04:38'),(71,2,1,1,'mitsubishipuchong.com','com','2023-12-14',2,2,55.00,1,1,7,'','',0,0,1,1,2,11,'2023-07-25 08:32:54','2023-08-23 01:04:38'),(72,2,1,1,'nissanjohorbahru.com','com','2023-12-15',2,2,55.00,1,1,7,'','',0,0,1,1,2,11,'2023-07-26 03:49:21','2023-08-23 01:04:38'),(73,2,1,1,'mitsubishibangi.com','com','2023-12-15',2,2,55.00,1,1,7,'','',0,0,1,1,2,11,'2023-07-26 03:57:58','2023-08-23 01:04:38'),(74,2,1,1,'ezymitsubishi.com','com','2023-12-15',2,2,55.00,1,1,7,'','',0,0,1,1,2,11,'2023-07-26 04:08:02','2023-08-23 01:04:38'),(75,2,1,1,'protonsenawangahmad.com','com','2023-12-16',2,2,55.00,1,1,7,'','',0,0,1,1,2,11,'2023-07-26 04:19:48','2023-08-23 01:04:38'),(76,2,1,1,'mitsubishibangi.my','my','2023-12-16',2,3,100.00,1,1,7,'','',0,0,1,1,2,11,'2023-07-26 04:39:17','1970-01-01 00:00:00'),(77,2,1,1,'nissankl.my','my','2023-12-16',2,3,100.00,1,1,7,'','',0,0,1,1,2,11,'2023-07-26 04:42:26','1970-01-01 00:00:00'),(78,2,1,1,'peroduabangsar.my','my','2023-12-16',2,3,100.00,1,1,7,'','',0,0,1,1,2,11,'2023-07-26 04:47:59','1970-01-01 00:00:00'),(79,2,1,1,'hondashahalam3s.com','com','2023-12-20',2,2,55.00,1,1,7,'','',0,0,1,1,2,11,'2023-07-26 04:52:35','2023-08-23 01:04:38'),(80,2,1,1,'peroduabatupahat.com','com','2023-12-20',2,2,55.00,1,1,7,'','',0,0,1,1,2,11,'2023-07-26 06:56:23','2023-08-23 01:04:38'),(81,2,1,1,'peroduamuar.com','com','2023-12-21',2,2,55.00,1,1,7,'','',0,0,1,1,2,11,'2023-07-26 06:59:52','2023-08-23 01:04:38'),(82,2,1,1,'toyotakuantan.my','my','2023-12-21',2,3,100.00,1,1,7,'','',0,0,1,1,2,11,'2023-07-26 07:08:06','1970-01-01 00:00:00'),(83,2,1,1,'mitsubishiklang.com','com','2023-12-22',2,2,55.00,1,1,7,'','',0,0,1,1,2,11,'2023-07-26 07:15:49','2023-08-23 01:04:38'),(84,2,1,1,'peroduaampang.com','com','2023-12-27',2,2,55.00,1,1,7,'','',0,0,1,1,2,11,'2023-07-26 07:21:24','2023-08-23 01:04:38'),(85,2,1,1,'peroduamiri.com','com','2023-12-27',2,2,55.00,1,1,7,'','',0,0,1,1,2,11,'2023-07-26 07:31:07','2023-08-23 01:04:38'),(86,2,1,1,'mitsubishijohor.com','com','2023-12-27',2,2,55.00,1,1,7,'','',0,0,1,1,2,11,'2023-07-26 07:36:27','2023-08-23 01:04:38'),(87,2,1,1,'peroduapenang.com','com','2024-03-06',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-07-26 07:51:21','2023-08-23 01:04:38'),(88,2,1,1,'mitsubishieamampang.com','com','2023-12-29',2,2,55.00,1,1,5,'','',0,0,1,1,2,11,'2023-07-26 08:32:13','2023-08-23 01:04:38'),(89,2,1,1,'toyotabangsar.com','com','2023-12-29',2,2,55.00,1,1,7,'','',0,0,1,1,2,11,'2023-07-26 08:36:24','2023-08-23 01:04:38'),(90,2,1,1,'peroduabatupahat.my','my','2023-12-30',2,3,100.00,1,1,8,'','',0,0,1,1,2,11,'2023-07-26 08:42:54','2023-08-02 04:07:57'),(91,2,1,1,'peroduapuchong.com','com','2023-04-13',2,2,55.00,1,1,10,'','',0,0,1,1,2,11,'2023-07-27 06:35:35','2023-08-23 01:04:38'),(92,2,1,1,'mitsubishiipoh.my','my','2023-07-25',2,3,100.00,1,1,11,'','',0,0,1,1,2,11,'2023-07-27 06:40:32','1970-01-01 00:00:00'),(93,2,1,1,'pakarcuckoo.com','com','2023-08-18',2,2,55.00,1,1,13,'','',0,0,1,1,2,11,'2023-07-27 07:01:03','2023-08-23 01:04:38'),(94,2,1,1,'bisnescuckoo.com','com','2023-08-18',2,2,55.00,1,1,13,'','',0,0,1,1,2,11,'2023-07-27 07:03:06','2023-08-23 01:04:38'),(95,2,1,1,'protonselangor.my','my','2023-08-26',2,3,100.00,1,1,15,'','',0,0,1,1,2,11,'2023-07-27 07:27:31','1970-01-01 00:00:00'),(96,2,1,1,'protonnilai.my','my','2023-10-11',2,3,100.00,1,1,16,'','',0,0,1,1,2,11,'2023-07-27 07:37:50','1970-01-01 00:00:00'),(97,2,1,1,'protontemerloh.com','com','2024-03-08',2,2,55.00,1,1,6,'','',0,0,1,1,2,11,'2023-07-31 07:07:30','2023-08-23 01:04:38'),(98,2,1,1,'hondabanting.com','com','2023-12-06',2,2,55.00,1,1,17,'','',0,0,1,1,2,11,'2023-07-31 07:16:13','2023-08-23 01:04:38'),(99,2,1,1,'hondaklang.com','com','2023-12-06',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-07-31 07:25:41','2023-08-23 01:04:38'),(100,2,1,1,'toyotanegerisembilan.com','com','2024-01-03',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-07-31 07:43:58','2023-08-23 01:04:38'),(101,2,1,1,'nissanpahang.com','com','2024-01-04',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-07-31 08:32:22','2023-08-23 01:04:38'),(102,2,1,1,'hondaseremban.com','com','2024-01-04',2,2,55.00,1,1,6,'','',0,0,1,1,2,11,'2023-07-31 08:46:20','2023-08-23 01:04:38'),(103,2,1,1,'toyotamiri.com','com','2024-01-04',2,2,55.00,1,1,6,'','',0,0,1,1,2,11,'2023-08-02 04:30:15','2023-08-23 01:04:38'),(104,2,1,1,'peroduasungaipetani.com','com','2024-01-10',2,2,55.00,1,1,6,'','',0,0,1,1,2,11,'2023-08-02 04:52:02','2023-08-23 01:04:38'),(105,2,1,1,'mitsubishisitiawan.com','com','2024-01-11',2,2,55.00,1,1,7,'','',0,0,1,1,2,11,'2023-08-03 08:52:18','2023-08-23 01:04:38'),(106,2,1,1,'nissansungaipetani.com','com','2024-01-12',2,2,55.00,1,1,6,'','',0,0,1,1,2,11,'2023-08-04 02:29:06','2023-08-23 01:04:38'),(107,2,1,1,'peroduanilai.my','my','2024-01-17',2,3,100.00,1,1,8,'','',0,0,1,1,2,11,'2023-08-04 02:32:57','1970-01-01 00:00:00'),(108,2,1,1,'mitsubishitemerloh.com','com','2024-01-18',2,2,55.00,1,1,6,'','',0,0,1,1,2,11,'2023-08-04 03:28:58','2023-08-23 01:04:38'),(109,2,1,1,'isuzuklang.com','com','2024-01-19',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-08-04 03:31:30','2023-08-23 01:04:38'),(110,2,1,1,'protonbintulu.com','com','2024-01-19',2,2,55.00,1,1,5,'','',0,0,1,1,2,11,'2023-08-04 07:30:05','2023-08-23 01:04:38'),(111,2,1,1,'hondakualaterengganu.com','com','2024-01-21',2,2,55.00,1,1,6,'','',0,0,1,1,2,11,'2023-08-04 07:35:36','2023-08-23 01:04:38'),(112,2,1,1,'isuzujohor.com','com','2024-01-21',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-08-04 07:38:34','2023-08-23 01:04:38'),(113,2,1,1,'peroduaipohsales.com','com','2024-01-30',2,2,55.00,1,1,7,'','',0,0,1,1,2,11,'2023-08-04 08:00:57','2023-08-23 01:04:38'),(114,2,1,1,'toyotaterengganu.com','com','2024-01-30',2,2,55.00,1,1,7,'','',0,0,1,1,2,11,'2023-08-04 08:06:32','2023-08-23 01:04:38'),(115,2,1,1,'peroduabangsarroy.com','com','2024-01-30',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-08-04 08:08:50','2023-08-23 01:04:38'),(116,2,1,1,'mitsubishikotakinabalu.com','com','2024-01-31',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-08-04 08:12:54','2023-08-23 01:04:38'),(117,2,1,1,'hondaseremban.my','my','2024-02-01',2,3,100.00,1,1,8,'','',0,0,1,1,2,11,'2023-08-04 08:16:13','1970-01-01 00:00:00'),(118,2,1,1,'toyotakelantan.com','com','2024-02-01',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-08-04 08:39:13','2023-08-23 01:04:38'),(119,2,1,1,'peroduakl.com.my','com.my','2024-02-02',2,4,80.00,1,1,8,'','',0,0,1,1,2,11,'2023-08-04 08:43:21','1970-01-01 00:00:00'),(120,2,1,1,'peroduabangsar.com.my','com.my','2024-02-02',2,4,80.00,1,1,8,'','',0,0,1,1,2,11,'2023-08-04 08:48:11','1970-01-01 00:00:00'),(121,2,1,1,'toyotakotabharu.com','com','2024-02-02',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-08-04 08:50:01','2023-08-23 01:04:38'),(122,2,1,1,'promosiprotonnilai.com','com','2024-02-03',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-08-07 08:00:09','2023-08-23 01:04:38'),(123,2,1,1,'hondakl.my','my','2024-02-04',2,3,100.00,1,1,8,'','',0,0,1,1,2,11,'2023-08-07 08:04:24','1970-01-01 00:00:00'),(124,2,1,1,'hondapuchong.com','com','2024-02-05',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-08-07 08:08:40','2023-08-23 01:04:38'),(125,2,1,1,'mitsubishibalakong.com','com','2024-02-07',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-08-07 08:14:23','2023-08-23 01:04:38'),(126,2,1,1,'taaperodua.com','com','2024-02-07',2,2,55.00,1,1,6,'','',0,0,1,1,2,11,'2023-08-07 08:19:06','2023-08-23 01:04:38'),(127,2,1,1,'hondapromo.my','my','2024-02-07',2,3,100.00,1,1,8,'','',0,0,1,1,2,11,'2023-08-07 08:23:27','1970-01-01 00:00:00'),(128,2,1,1,'julidatransport.com','com','2024-02-09',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-08-08 06:57:29','2023-08-23 01:04:38'),(129,2,1,1,'toyotatopsaleskuantan.com','com','2024-02-09',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-08-08 07:07:43','2023-08-23 01:04:38'),(130,2,1,1,'hondataiping.com','com','2024-02-09',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-08-08 07:10:15','2023-08-23 01:04:38'),(131,2,1,1,'hondanilai.com','com','2024-04-07',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-08-08 07:47:50','2023-08-23 01:04:38'),(132,2,1,1,'hondaglenmarie.my','my','2024-02-10',2,3,100.00,1,1,8,'','',0,0,1,1,2,11,'2023-08-08 07:50:59','1970-01-01 00:00:00'),(133,2,1,1,'fordsungaipetani.com','com','2024-02-11',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-08-08 07:55:53','2023-08-23 01:04:38'),(134,2,1,1,'nissanperak.com','com','2024-02-13',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-08-08 08:04:15','2023-08-23 01:04:38'),(135,2,1,1,'hartanahkelantan.com.my','com.my','2024-02-14',2,4,80.00,1,1,8,'','',0,0,1,1,2,11,'2023-08-08 08:16:18','1970-01-01 00:00:00'),(136,2,1,1,'toyotabahau.com','com','2024-02-16',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-08-08 08:19:11','2023-08-23 01:04:38'),(137,2,1,1,'peroduajurusales.com','com','2024-02-16',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-08-08 08:30:05','2023-08-23 01:04:38'),(138,2,1,1,'mitsubishijohorbahru.com','com','2024-02-17',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-08-08 08:45:14','2023-08-23 01:04:38'),(139,2,1,1,'hondapenang.com','com','2024-02-20',2,2,55.00,1,1,2,'','',0,0,1,1,2,11,'2023-08-09 08:06:24','2023-08-23 01:04:38'),(140,2,1,1,'nissankl.com.my','com.my','2024-02-22',2,4,80.00,1,1,2,'','',0,0,1,1,2,11,'2023-08-09 08:08:45','1970-01-01 00:00:00'),(141,2,1,1,'subaruselangor.com','com','2024-05-23',2,2,55.00,1,1,2,'','',0,0,1,1,2,11,'2023-08-09 08:12:07','2023-08-23 01:04:38'),(142,2,1,1,'hondakelantan.my','my','2024-03-01',2,3,100.00,1,1,2,'','',0,0,1,1,2,11,'2023-08-10 02:34:23','1970-01-01 00:00:00'),(143,2,1,1,'proton1kpromo.com','com','2024-03-01',2,2,55.00,1,1,2,'','',0,0,1,1,2,11,'2023-08-10 02:39:12','2023-08-23 01:04:38'),(144,2,1,1,'peroduapenang.my','my','2024-03-02',2,3,100.00,1,1,2,'','',0,0,1,1,2,11,'2023-08-10 02:43:15','1970-01-01 00:00:00'),(145,2,1,1,'peroduajohorsegamat.com','com','2024-03-03',2,2,55.00,1,1,2,'','',0,0,1,1,2,11,'2023-08-10 07:04:44','2023-08-23 01:04:38'),(146,2,1,1,'protonampang.com.my','com.my','2024-03-07',2,4,80.00,1,1,2,'','',0,0,1,1,2,11,'2023-08-10 07:35:00','1970-01-01 00:00:00'),(147,2,1,1,'protonshahalam.com.my','com.my','2024-03-07',2,4,80.00,1,1,2,'','',0,0,1,1,2,11,'2023-08-10 07:37:00','1970-01-01 00:00:00'),(148,2,1,1,'perodua-shahalam.com','com','2024-03-08',2,2,55.00,1,1,2,'','',0,0,1,1,2,11,'2023-08-10 07:47:53','2023-08-23 01:04:38'),(149,2,1,1,'mitsubishimelakafirdaus.com','com','2024-03-08',2,2,55.00,1,1,2,'','',0,0,1,1,2,11,'2023-08-10 07:59:24','2023-08-23 01:04:38'),(150,2,1,1,'safetytechconsultancy.com','com','2024-03-13',2,2,55.00,1,1,2,'','',0,0,1,1,2,11,'2023-08-10 08:07:18','2023-08-23 01:04:38'),(151,2,1,1,'isuzujohorbahru.com','com','2024-03-13',2,2,55.00,1,1,2,'','',0,0,1,1,2,11,'2023-08-10 08:19:48','2023-08-23 01:04:38'),(152,2,1,1,'peroduapuchong.com.my','com.my','2024-03-13',2,4,80.00,1,1,2,'','',0,0,1,1,2,11,'2023-08-10 08:26:09','1970-01-01 00:00:00'),(153,2,1,1,'peroduasungaibuloh.com','com','2024-03-13',2,2,55.00,1,1,2,'','',0,0,1,1,2,11,'2023-08-10 08:30:45','2023-08-23 01:04:38'),(154,2,1,1,'hondakualalumpur.my','my','2024-03-16',2,3,100.00,1,1,2,'','',0,0,1,1,2,11,'2023-08-11 07:10:17','1970-01-01 00:00:00'),(155,2,1,1,'nissankuantan.com','com','2024-03-16',2,2,55.00,1,1,2,'','',0,0,1,1,2,11,'2023-08-11 07:13:48','2023-08-23 01:04:38'),(156,2,1,1,'nissankelantan.com','com','2024-03-20',2,2,55.00,1,1,2,'','',0,0,1,1,2,11,'2023-08-11 07:16:43','2023-08-23 01:04:38'),(157,2,1,1,'fordkl.com','com','2024-03-20',2,2,55.00,1,1,2,'','',0,0,1,1,2,11,'2023-08-11 07:19:07','2023-08-23 01:04:38'),(158,2,1,1,'hondashahalamsales.com','com','2024-03-21',2,2,55.00,1,1,2,'','',0,0,1,1,2,11,'2023-08-11 07:24:02','2023-08-23 01:04:38'),(159,2,1,1,'mitsubishimelakabygordon.com','com','2024-03-22',2,2,55.00,1,1,2,'','',0,0,1,1,2,11,'2023-08-11 07:43:28','2023-08-23 01:04:38'),(160,2,1,1,'fordmelaka.com','com','2024-03-22',2,2,55.00,1,1,2,'','',0,0,1,1,2,11,'2023-08-11 08:30:13','2023-08-23 01:04:38'),(161,2,1,1,'protonjb.com','com','2024-03-24',2,2,55.00,1,1,2,'','',0,0,1,1,2,11,'2023-08-15 04:17:39','2023-08-23 01:04:38'),(162,2,1,1,'protonpuchong.com.my','com.my','2024-03-25',2,4,80.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-15 04:20:59','1970-01-01 00:00:00'),(163,2,1,1,'resdong.com','com','2023-07-26',4,2,55.00,1,1,14,'','',0,0,1,1,2,11,'2023-08-15 04:45:53','2023-08-23 01:04:38'),(164,2,1,1,'hondabangi.my','my','2024-05-30',2,3,100.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-16 02:19:52','1970-01-01 00:00:00'),(165,2,1,1,'peroduaselangorsales.com','com','2024-05-31',2,2,55.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-16 02:24:09','2023-08-23 01:04:38'),(166,2,1,1,'peroduasabah.com.my','com.my','2024-05-31',2,4,80.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-16 02:31:35','1970-01-01 00:00:00'),(167,2,1,1,'hondasetapak.com','com','2024-06-02',2,2,55.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-16 06:40:03','2023-08-23 01:04:38'),(168,2,1,1,'peroduaalorsetar.com','com','2024-06-02',2,2,55.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-16 06:42:04','2023-08-23 01:04:38'),(169,2,1,1,'peroduakajangsales.com','com','2024-06-07',2,2,55.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-16 06:44:53','2023-08-23 01:04:38'),(170,2,1,1,'peroduaselangor.net','net','2024-06-07',2,5,60.00,1,1,4,'','',0,0,1,0,2,11,'2023-08-16 06:53:28','2023-08-23 01:04:24'),(171,2,1,1,'protoncarsofficial.com','com','2024-06-09',2,2,55.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-16 06:57:30','2023-08-23 01:04:38'),(172,2,1,1,'suenissankuantan.com','com','2024-01-20',2,2,55.00,1,1,5,'','',0,0,1,1,2,11,'2023-08-16 07:29:30','2023-08-23 01:04:38'),(173,2,1,1,'isuzukuantan.com','com','2024-01-20',2,2,55.00,1,1,5,'','',0,0,1,1,2,11,'2023-08-16 07:35:41','2023-08-23 01:04:38'),(174,2,1,1,'hondakuantan.com','com','2024-01-01',2,2,55.00,1,1,8,'','',0,0,1,1,2,11,'2023-08-16 07:50:15','2023-08-23 01:04:38'),(175,2,1,1,'peroduakedah.com','com','2024-03-26',2,2,55.00,1,1,5,'','',0,0,1,1,2,11,'2023-08-17 02:36:50','2023-08-23 01:04:38'),(176,2,1,1,'peroduasarawak.my','my','2024-06-09',2,3,100.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-17 04:00:45','1970-01-01 00:00:00'),(177,2,1,1,'peroduamiriofficial.com','com','2024-06-09',2,2,55.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-17 04:03:01','2023-08-23 01:04:38'),(178,2,1,1,'hondakualalumpur.com.my','com.my','2024-06-14',2,4,80.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-17 04:14:41','1970-01-01 00:00:00'),(179,2,1,1,'eastchaeffeur.com','com','2024-06-14',2,2,55.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-17 06:41:30','2023-08-23 01:04:38'),(180,2,1,1,'peroduashahalamofficial.com','com','2024-06-15',2,2,55.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-17 06:49:07','2023-08-23 01:04:38'),(181,2,1,1,'hondapetalingjaya.my','my','2024-06-15',2,3,100.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-17 06:55:01','1970-01-01 00:00:00'),(182,2,1,1,'protonpuchong.com','com','2024-06-16',2,2,55.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-17 07:33:44','2023-08-23 01:04:38'),(183,2,1,1,'peroduakualaterengganu.com','com','2024-06-16',2,2,55.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-17 07:39:42','2023-08-23 01:04:38'),(184,2,1,1,'protonselayang.com','com','2024-06-16',2,2,55.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-17 07:45:46','2023-08-23 01:04:38'),(185,2,1,1,'keretarecondbangi.com','com','2024-06-20',2,2,55.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-17 07:50:06','2023-08-23 01:04:38'),(186,2,1,1,'peroduanegerisembilan.com','com','2024-06-20',2,2,55.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-17 07:53:41','2023-08-23 01:04:38'),(187,2,1,1,'protonperlis.com','com','2024-06-20',2,2,55.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-17 07:57:50','2023-08-23 01:04:38'),(188,2,1,1,'peroduacorporatesales.com','com','2024-06-20',2,2,55.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-18 02:55:11','2023-08-23 01:04:38'),(189,2,1,1,'peroduaklang.com.my','com.my','2024-06-22',2,4,80.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-18 04:17:50','1970-01-01 00:00:00'),(190,2,1,1,'volkswagensetiaalam.com','com','2024-06-22',2,2,55.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-18 04:26:00','2023-08-23 01:04:38'),(191,2,1,1,'hondaterengganu.com','com','2024-06-27',2,2,55.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-18 06:28:42','2023-08-23 01:04:38'),(192,2,1,1,'mitsubishimuarjohor.com','com','2024-06-28',2,2,55.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-18 06:36:40','2023-08-23 01:04:38'),(193,2,1,1,'protonmuar.com','com','2024-06-28',2,2,55.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-18 06:42:58','2023-08-23 01:04:38'),(194,2,1,1,'nurseryselangor.com','com','2024-06-29',2,2,55.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-18 06:49:46','2023-08-23 01:04:38'),(195,2,1,1,'protonsalesterkini.com','com','2024-06-29',2,2,55.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-18 06:59:49','2023-08-23 01:04:38'),(196,2,1,1,'cowaysalesmalaysia.com','com','2024-07-03',2,2,55.00,1,1,4,'','',0,0,1,1,2,11,'2023-08-18 07:18:03','2023-08-23 01:04:38');
/*!40000 ALTER TABLE `domains` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `domains` with 190 row(s)
--

--
-- Table structure for table `dw_servers`
--

DROP TABLE IF EXISTS `dw_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dw_servers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `host` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `protocol` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `port` int(5) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `api_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hash` longtext COLLATE utf8_unicode_ci NOT NULL,
  `notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `dw_accounts` int(10) unsigned NOT NULL,
  `dw_dns_zones` int(10) unsigned NOT NULL,
  `dw_dns_records` int(10) unsigned NOT NULL,
  `build_status` tinyint(1) NOT NULL DEFAULT '0',
  `build_start_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `build_end_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `build_time` int(10) unsigned NOT NULL DEFAULT '0',
  `has_ever_been_built` tinyint(1) NOT NULL DEFAULT '0',
  `build_status_overall` tinyint(1) NOT NULL DEFAULT '0',
  `build_start_time_overall` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `build_end_time_overall` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `build_time_overall` int(10) unsigned NOT NULL DEFAULT '0',
  `has_ever_been_built_overall` tinyint(1) NOT NULL DEFAULT '0',
  `creation_type_id` tinyint(2) NOT NULL DEFAULT '2',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dw_servers`
--

LOCK TABLES `dw_servers` WRITE;
/*!40000 ALTER TABLE `dw_servers` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `dw_servers` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `dw_servers` with 0 row(s)
--

--
-- Table structure for table `fees`
--

DROP TABLE IF EXISTS `fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `registrar_id` int(10) unsigned NOT NULL,
  `tld` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `initial_fee` decimal(10,2) NOT NULL,
  `renewal_fee` decimal(10,2) NOT NULL,
  `transfer_fee` decimal(10,2) NOT NULL,
  `privacy_fee` decimal(10,2) NOT NULL,
  `misc_fee` decimal(10,2) NOT NULL,
  `currency_id` int(10) unsigned NOT NULL,
  `fee_fixed` tinyint(1) NOT NULL DEFAULT '0',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees`
--

LOCK TABLES `fees` WRITE;
/*!40000 ALTER TABLE `fees` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `fees` VALUES (2,1,'com',55.00,55.00,55.00,0.00,0.00,64,1,'2023-07-07 06:35:18','2023-08-23 01:04:38'),(3,1,'my',100.00,100.00,100.00,0.00,0.00,64,1,'2023-07-21 02:04:53','2023-08-23 00:01:10'),(4,1,'com.my',80.00,80.00,80.00,0.00,0.00,64,1,'2023-07-21 02:05:20','2023-08-23 00:01:10'),(5,1,'net',60.00,60.00,60.00,0.00,0.00,64,0,'2023-08-23 01:04:24','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `fees` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `fees` with 4 row(s)
--

--
-- Table structure for table `goal_activity`
--

DROP TABLE IF EXISTS `goal_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goal_activity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `old_version` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `new_version` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `agent` longtext COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `new_activity` tinyint(1) NOT NULL DEFAULT '1',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal_activity`
--

LOCK TABLES `goal_activity` WRITE;
/*!40000 ALTER TABLE `goal_activity` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `goal_activity` VALUES (1,'i','n/a','4.19.0','10.0.1.245','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36','en-GB,en;q=0.9',0,'2023-07-06 08:23:30','2023-07-06 08:23:47');
/*!40000 ALTER TABLE `goal_activity` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `goal_activity` with 1 row(s)
--

--
-- Table structure for table `hosting`
--

DROP TABLE IF EXISTS `hosting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hosting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `creation_type_id` tinyint(2) NOT NULL DEFAULT '2',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hosting`
--

LOCK TABLES `hosting` WRITE;
/*!40000 ALTER TABLE `hosting` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `hosting` VALUES (1,'[no hosting]','','',1,0,'2023-07-06 08:23:29','1970-01-01 00:00:00'),(2,'NetKL - seniclosesales.com','https://netkl.com/','',2,1,'2023-07-14 01:36:13','1970-01-01 00:00:00'),(3,'NetKL - protonipoh.com','https://netkl.com/','',2,1,'2023-07-14 03:24:57','1970-01-01 00:00:00'),(4,'NetKL - peroduaalorsetar.com','https://netkl.com/','',2,1,'2023-07-14 03:25:27','1970-01-01 00:00:00'),(5,'NetKL - toyotashahalam.com','http://toyotashahalam.com/cpanel','',2,1,'2023-07-14 03:36:23','2023-07-14 03:52:08'),(6,'NetKL - hondapasirgudang.com','http://hondapasirgudang.com/cpanel','',2,1,'2023-07-14 03:46:12','2023-07-26 03:41:10'),(7,'NetKL - mitsubishikualaterengganu.com','http://mitsubishikualaterengganu.com/cpanel','',2,1,'2023-07-14 03:49:18','1970-01-01 00:00:00'),(8,'NetKL - hondaklang.com','http://hondaklang.com/cpanel','',2,1,'2023-07-14 03:54:25','1970-01-01 00:00:00'),(9,'NetKL - peroduakluang.com','http://peroduakluang.com/cpanel','',2,1,'2023-07-26 03:41:02','2023-07-26 03:41:32'),(10,'NetKL - peroduapuchong.com','http://peroduapuchong.com/cpanel','',2,1,'2023-07-26 03:46:59','1970-01-01 00:00:00'),(11,'NetKL - mitsubishiipoh.my',' https://mitsubishiipoh.my/cpanel','',2,1,'2023-07-26 03:47:45','1970-01-01 00:00:00'),(12,'NetKL - protonmelaka.my','http://protonmelaka.my/cpanel','',2,1,'2023-07-26 03:49:02','1970-01-01 00:00:00'),(13,'NetKL - pakarcuckoo.com','http://pakarcuckoo.com/cpanel','',2,1,'2023-07-26 03:50:20','1970-01-01 00:00:00'),(14,'GB Network - resdong.com','https://resdong.com/cpanel','',2,1,'2023-07-26 03:52:01','1970-01-01 00:00:00'),(15,'GB Network - protonselangor.my','https://protonselangor.my/cpanel','',2,1,'2023-07-26 03:53:11','1970-01-01 00:00:00'),(16,'GB Network - protonnilai.my','https://protonnilai.my/cpanel','',2,1,'2023-07-26 03:54:06','1970-01-01 00:00:00'),(17,'ServerFreak - Web Ultimate Pemaju Digital','','',2,1,'2023-07-31 06:59:11','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `hosting` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `hosting` with 17 row(s)
--

--
-- Table structure for table `ip_addresses`
--

DROP TABLE IF EXISTS `ip_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_addresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `rdns` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `creation_type_id` tinyint(2) NOT NULL DEFAULT '2',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_addresses`
--

LOCK TABLES `ip_addresses` WRITE;
/*!40000 ALTER TABLE `ip_addresses` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `ip_addresses` VALUES (1,'[no ip address]','-','-','',1,0,'2023-07-06 08:23:29','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `ip_addresses` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `ip_addresses` with 1 row(s)
--

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `languages` VALUES (1,'English (Canada)','en_CA.UTF-8','2023-07-06 08:23:29'),(2,'English (United States)','en_US.UTF-8','2023-07-06 08:23:29'),(3,'German','de_DE.UTF-8','2023-07-06 08:23:29'),(4,'Spanish','es_ES.UTF-8','2023-07-06 08:23:29'),(5,'French','fr_FR.UTF-8','2023-07-06 08:23:29'),(6,'Italian','it_IT.UTF-8','2023-07-06 08:23:29'),(7,'Dutch','nl_NL.UTF-8','2023-07-06 08:23:29'),(8,'Polish','pl_PL.UTF-8','2023-07-06 08:23:29'),(9,'Portuguese','pt_PT.UTF-8','2023-07-06 08:23:29'),(10,'Russian','ru_RU.UTF-8','2023-07-06 08:23:29');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `languages` with 10 row(s)
--

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `area` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `extra` longtext COLLATE utf8_unicode_ci NOT NULL,
  `url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `log` with 0 row(s)
--

--
-- Table structure for table `owners`
--

DROP TABLE IF EXISTS `owners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `creation_type_id` tinyint(2) NOT NULL DEFAULT '2',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owners`
--

LOCK TABLES `owners` WRITE;
/*!40000 ALTER TABLE `owners` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `owners` VALUES (1,'[no owner]','',1,0,'2023-07-06 08:23:29','1970-01-01 00:00:00'),(2,'Pemaju Digital','',2,1,'2023-07-06 08:29:02','2023-07-06 08:29:16');
/*!40000 ALTER TABLE `owners` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `owners` with 2 row(s)
--

--
-- Table structure for table `registrar_accounts`
--

DROP TABLE IF EXISTS `registrar_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registrar_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int(10) unsigned NOT NULL,
  `registrar_id` int(10) unsigned NOT NULL,
  `email_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reseller` tinyint(1) NOT NULL DEFAULT '0',
  `reseller_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `api_app_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `api_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `api_secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `api_ip_id` int(10) unsigned NOT NULL DEFAULT '0',
  `notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `creation_type_id` tinyint(2) NOT NULL DEFAULT '2',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `registrar_id` (`registrar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrar_accounts`
--

LOCK TABLES `registrar_accounts` WRITE;
/*!40000 ALTER TABLE `registrar_accounts` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `registrar_accounts` VALUES (1,2,1,'','pemaju','','',0,'','','','',0,'',2,1,'2023-07-06 08:30:48','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `registrar_accounts` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `registrar_accounts` with 1 row(s)
--

--
-- Table structure for table `registrars`
--

DROP TABLE IF EXISTS `registrars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registrars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `api_registrar_id` tinyint(3) NOT NULL DEFAULT '0',
  `notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `creation_type_id` tinyint(2) NOT NULL DEFAULT '2',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrars`
--

LOCK TABLES `registrars` WRITE;
/*!40000 ALTER TABLE `registrars` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `registrars` VALUES (1,'GB Network','https://www.gbnetwork.my/',0,'',2,1,'2023-07-06 08:27:28','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `registrars` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `registrars` with 1 row(s)
--

--
-- Table structure for table `scheduler`
--

DROP TABLE IF EXISTS `scheduler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheduler` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `interval` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Daily',
  `expression` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0 7 * * * *',
  `last_run` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `last_duration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `next_run` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `sort_order` int(4) NOT NULL DEFAULT '1',
  `is_running` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduler`
--

LOCK TABLES `scheduler` WRITE;
/*!40000 ALTER TABLE `scheduler` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `scheduler` VALUES (1,'Domain Queue Processing','domain-queue','Retrieves information for domains in the queue and adds them to DomainMOD.','Every 5 Minutes','*/5 * * * * *','2023-08-23 01:30:01',' (<em>0s</em>)','2023-08-23 01:35:00',10,0,1,'2023-07-06 08:23:29','1970-01-01 00:00:00'),(2,'Send Expiration Email','expiration-email','Sends an email out to everyone who\'s subscribed, letting them know of upcoming Domain & SSL Certificate expirations.<BR><BR>Users can subscribe via their User Profile.<BR><BR>Administrators can set the FROM email address and the number of days in the future to display in the email via System Settings.','Daily','0 0 * * * *','2023-08-23 00:01:00',' (<em>0s</em>)','2023-08-24 00:00:00',20,0,1,'2023-07-06 08:23:29','1970-01-01 00:00:00'),(3,'Update Conversion Rates','update-conversion-rates','Retrieves the current currency conversion rates and updates the entire system, which keeps all of the financial information in DomainMOD accurate and up-to-date.<BR><BR>Users can set their default currency via their User Profile.','Daily','0 0 * * * *','2023-08-23 00:01:10',' (<em>0s</em>)','2023-08-24 00:00:00',40,0,1,'2023-07-06 08:23:29','1970-01-01 00:00:00'),(4,'System Cleanup','cleanup','<em>Domains:</em> Converts all domain entries to lowercase.<BR><BR> <em>TLDs:</em> Updates all TLD entries in the database to ensure their accuracy.<BR><BR> <em>Segments:</em> Compares the Segment data to the domain database and records the status of each domain. This keeps the Segment filtering data up-to-date and running smoothly.<BR><BR><em>Fees:</em> Cross-references the Domain, SSL Certificate, and fee tables, making sure that everything is accurate. It also deletes all unused fees.','Daily','0 0 * * * *','2023-08-23 00:01:10',' (<em>0s</em>)','2023-08-24 00:00:00',60,0,1,'2023-07-06 08:23:29','1970-01-01 00:00:00'),(5,'Check For New Version','check-new-version','Checks to see if there is a newer version of DomainMOD available to download.','Daily','0 0 * * * *','2023-07-14 00:01:02',' (<em>0s</em>)','1970-01-01 00:00:00',80,0,0,'2023-07-06 08:23:29','1970-01-01 00:00:00'),(6,'Data Warehouse Build','data-warehouse-build','Rebuilds the Data Warehouse so that you have the most up-to-date information available.','Daily','0 0 * * * *','2023-07-14 00:01:02',' (<em>0s</em>)','1970-01-01 00:00:00',100,0,0,'2023-07-06 08:23:29','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `scheduler` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `scheduler` with 6 row(s)
--

--
-- Table structure for table `segment_data`
--

DROP TABLE IF EXISTS `segment_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `segment_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `segment_id` int(10) unsigned NOT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  `missing` tinyint(1) NOT NULL DEFAULT '0',
  `filtered` tinyint(1) NOT NULL DEFAULT '0',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segment_data`
--

LOCK TABLES `segment_data` WRITE;
/*!40000 ALTER TABLE `segment_data` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `segment_data` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `segment_data` with 0 row(s)
--

--
-- Table structure for table `segments`
--

DROP TABLE IF EXISTS `segments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `segments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `segment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number_of_domains` int(6) NOT NULL,
  `notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `creation_type_id` tinyint(2) NOT NULL DEFAULT '2',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segments`
--

LOCK TABLES `segments` WRITE;
/*!40000 ALTER TABLE `segments` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `segments` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `segments` with 0 row(s)
--

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `full_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'http://',
  `db_version` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `upgrade_available` tinyint(1) NOT NULL DEFAULT '0',
  `email_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `large_mode` tinyint(1) NOT NULL DEFAULT '0',
  `default_category_domains` int(10) unsigned NOT NULL DEFAULT '0',
  `default_category_ssl` int(10) unsigned NOT NULL DEFAULT '0',
  `default_dns` int(10) unsigned NOT NULL DEFAULT '0',
  `default_host` int(10) unsigned NOT NULL DEFAULT '0',
  `default_ip_address_domains` int(10) unsigned NOT NULL DEFAULT '0',
  `default_ip_address_ssl` int(10) unsigned NOT NULL DEFAULT '0',
  `default_owner_domains` int(10) unsigned NOT NULL DEFAULT '0',
  `default_owner_ssl` int(10) unsigned NOT NULL DEFAULT '0',
  `default_registrar` int(10) unsigned NOT NULL DEFAULT '0',
  `default_registrar_account` int(10) unsigned NOT NULL DEFAULT '0',
  `default_ssl_provider_account` int(10) unsigned NOT NULL DEFAULT '0',
  `default_ssl_type` int(10) unsigned NOT NULL DEFAULT '0',
  `default_ssl_provider` int(10) unsigned NOT NULL DEFAULT '0',
  `expiration_days` int(3) NOT NULL DEFAULT '60',
  `email_signature` int(10) unsigned NOT NULL DEFAULT '1',
  `currency_converter` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'erh',
  `use_smtp` tinyint(1) NOT NULL DEFAULT '0',
  `smtp_server` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_protocol` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'tls',
  `smtp_port` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '587',
  `smtp_email_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `debug_mode` tinyint(1) NOT NULL DEFAULT '0',
  `local_php_log` tinyint(1) NOT NULL DEFAULT '0',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `settings` VALUES (1,'https://domain.digitaldeveloper.my/','4.19.0',0,'domain@digitaldeveloper.my',0,1,1,1,1,1,1,2,1,1,1,0,4,1,60,11,'erh',1,'mail.digitaldeveloper.my','ssl','465','domain@digitaldeveloper.my','domain@digitaldeveloper.my','1qaz2wsx!@#',0,0,'2023-07-06 08:23:29','2023-07-11 03:16:13');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `settings` with 1 row(s)
--

--
-- Table structure for table `ssl_accounts`
--

DROP TABLE IF EXISTS `ssl_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssl_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int(10) unsigned NOT NULL,
  `ssl_provider_id` int(10) unsigned NOT NULL,
  `email_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reseller` tinyint(1) NOT NULL DEFAULT '0',
  `reseller_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `creation_type_id` tinyint(2) NOT NULL DEFAULT '2',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `ssl_provider_id` (`ssl_provider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssl_accounts`
--

LOCK TABLES `ssl_accounts` WRITE;
/*!40000 ALTER TABLE `ssl_accounts` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `ssl_accounts` VALUES (1,2,1,'','pemaju','',0,'','',2,1,'2023-07-06 08:40:43','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `ssl_accounts` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `ssl_accounts` with 1 row(s)
--

--
-- Table structure for table `ssl_cert_field_data`
--

DROP TABLE IF EXISTS `ssl_cert_field_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssl_cert_field_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ssl_id` int(10) unsigned NOT NULL,
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssl_cert_field_data`
--

LOCK TABLES `ssl_cert_field_data` WRITE;
/*!40000 ALTER TABLE `ssl_cert_field_data` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `ssl_cert_field_data` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `ssl_cert_field_data` with 0 row(s)
--

--
-- Table structure for table `ssl_cert_fields`
--

DROP TABLE IF EXISTS `ssl_cert_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssl_cert_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `field_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `creation_type_id` tinyint(2) NOT NULL DEFAULT '2',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssl_cert_fields`
--

LOCK TABLES `ssl_cert_fields` WRITE;
/*!40000 ALTER TABLE `ssl_cert_fields` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `ssl_cert_fields` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `ssl_cert_fields` with 0 row(s)
--

--
-- Table structure for table `ssl_cert_types`
--

DROP TABLE IF EXISTS `ssl_cert_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssl_cert_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `creation_type_id` tinyint(2) NOT NULL DEFAULT '2',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssl_cert_types`
--

LOCK TABLES `ssl_cert_types` WRITE;
/*!40000 ALTER TABLE `ssl_cert_types` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `ssl_cert_types` VALUES (1,'Web Server SSL/TLS Certificate','',1,0,'2023-07-06 08:23:29','1970-01-01 00:00:00'),(2,'S/MIME and Authentication Certificate','',1,0,'2023-07-06 08:23:29','1970-01-01 00:00:00'),(3,'Object Code Signing Certificate','',1,0,'2023-07-06 08:23:29','1970-01-01 00:00:00'),(4,'Digital ID','',1,0,'2023-07-06 08:23:29','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `ssl_cert_types` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `ssl_cert_types` with 4 row(s)
--

--
-- Table structure for table `ssl_certs`
--

DROP TABLE IF EXISTS `ssl_certs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssl_certs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int(10) unsigned NOT NULL,
  `ssl_provider_id` int(10) unsigned NOT NULL,
  `account_id` int(10) unsigned NOT NULL,
  `domain_id` int(10) unsigned NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `ip_id` int(10) unsigned NOT NULL,
  `cat_id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL DEFAULT '1970-01-01',
  `fee_id` int(10) unsigned NOT NULL,
  `total_cost` decimal(10,2) NOT NULL,
  `notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(2) NOT NULL DEFAULT '1',
  `fee_fixed` tinyint(1) NOT NULL DEFAULT '0',
  `creation_type_id` tinyint(2) NOT NULL DEFAULT '2',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssl_certs`
--

LOCK TABLES `ssl_certs` WRITE;
/*!40000 ALTER TABLE `ssl_certs` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `ssl_certs` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `ssl_certs` with 0 row(s)
--

--
-- Table structure for table `ssl_fees`
--

DROP TABLE IF EXISTS `ssl_fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssl_fees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ssl_provider_id` int(10) unsigned NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `initial_fee` decimal(10,2) NOT NULL,
  `renewal_fee` decimal(10,2) NOT NULL,
  `misc_fee` decimal(10,2) NOT NULL,
  `currency_id` int(10) unsigned NOT NULL,
  `fee_fixed` tinyint(1) NOT NULL DEFAULT '0',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssl_fees`
--

LOCK TABLES `ssl_fees` WRITE;
/*!40000 ALTER TABLE `ssl_fees` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `ssl_fees` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `ssl_fees` with 0 row(s)
--

--
-- Table structure for table `ssl_providers`
--

DROP TABLE IF EXISTS `ssl_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssl_providers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `creation_type_id` tinyint(2) NOT NULL DEFAULT '2',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssl_providers`
--

LOCK TABLES `ssl_providers` WRITE;
/*!40000 ALTER TABLE `ssl_providers` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `ssl_providers` VALUES (1,'Let&#039;s Encrypt','https://www.gbnetwork.my/','',2,1,'2023-07-06 08:37:59','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `ssl_providers` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `ssl_providers` with 1 row(s)
--

--
-- Table structure for table `timezones`
--

DROP TABLE IF EXISTS `timezones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timezones` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `timezone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=517 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timezones`
--

LOCK TABLES `timezones` WRITE;
/*!40000 ALTER TABLE `timezones` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `timezones` VALUES (1,'Africa/Abidjan','2023-07-06 08:23:29'),(2,'Africa/Accra','2023-07-06 08:23:29'),(3,'Africa/Addis_Ababa','2023-07-06 08:23:29'),(4,'Africa/Algiers','2023-07-06 08:23:29'),(5,'Africa/Asmara','2023-07-06 08:23:29'),(6,'Africa/Asmera','2023-07-06 08:23:29'),(7,'Africa/Bamako','2023-07-06 08:23:29'),(8,'Africa/Bangui','2023-07-06 08:23:29'),(9,'Africa/Banjul','2023-07-06 08:23:29'),(10,'Africa/Bissau','2023-07-06 08:23:29'),(11,'Africa/Blantyre','2023-07-06 08:23:29'),(12,'Africa/Brazzaville','2023-07-06 08:23:29'),(13,'Africa/Bujumbura','2023-07-06 08:23:29'),(14,'Africa/Cairo','2023-07-06 08:23:29'),(15,'Africa/Casablanca','2023-07-06 08:23:29'),(16,'Africa/Ceuta','2023-07-06 08:23:29'),(17,'Africa/Conakry','2023-07-06 08:23:29'),(18,'Africa/Dakar','2023-07-06 08:23:29'),(19,'Africa/Dar_es_Salaam','2023-07-06 08:23:29'),(20,'Africa/Djibouti','2023-07-06 08:23:29'),(21,'Africa/Douala','2023-07-06 08:23:29'),(22,'Africa/El_Aaiun','2023-07-06 08:23:29'),(23,'Africa/Freetown','2023-07-06 08:23:29'),(24,'Africa/Gaborone','2023-07-06 08:23:29'),(25,'Africa/Harare','2023-07-06 08:23:29'),(26,'Africa/Johannesburg','2023-07-06 08:23:29'),(27,'Africa/Juba','2023-07-06 08:23:29'),(28,'Africa/Kampala','2023-07-06 08:23:29'),(29,'Africa/Khartoum','2023-07-06 08:23:29'),(30,'Africa/Kigali','2023-07-06 08:23:29'),(31,'Africa/Kinshasa','2023-07-06 08:23:29'),(32,'Africa/Lagos','2023-07-06 08:23:29'),(33,'Africa/Libreville','2023-07-06 08:23:29'),(34,'Africa/Lome','2023-07-06 08:23:29'),(35,'Africa/Luanda','2023-07-06 08:23:29'),(36,'Africa/Lubumbashi','2023-07-06 08:23:29'),(37,'Africa/Lusaka','2023-07-06 08:23:29'),(38,'Africa/Malabo','2023-07-06 08:23:29'),(39,'Africa/Maputo','2023-07-06 08:23:29'),(40,'Africa/Maseru','2023-07-06 08:23:29'),(41,'Africa/Mbabane','2023-07-06 08:23:29'),(42,'Africa/Mogadishu','2023-07-06 08:23:29'),(43,'Africa/Monrovia','2023-07-06 08:23:29'),(44,'Africa/Nairobi','2023-07-06 08:23:29'),(45,'Africa/Ndjamena','2023-07-06 08:23:29'),(46,'Africa/Niamey','2023-07-06 08:23:29'),(47,'Africa/Nouakchott','2023-07-06 08:23:29'),(48,'Africa/Ouagadougou','2023-07-06 08:23:29'),(49,'Africa/Porto-Novo','2023-07-06 08:23:29'),(50,'Africa/Sao_Tome','2023-07-06 08:23:29'),(51,'Africa/Timbuktu','2023-07-06 08:23:29'),(52,'Africa/Tripoli','2023-07-06 08:23:29'),(53,'Africa/Tunis','2023-07-06 08:23:29'),(54,'Africa/Windhoek','2023-07-06 08:23:29'),(55,'America/Adak','2023-07-06 08:23:29'),(56,'America/Anchorage','2023-07-06 08:23:29'),(57,'America/Anguilla','2023-07-06 08:23:29'),(58,'America/Antigua','2023-07-06 08:23:29'),(59,'America/Araguaina','2023-07-06 08:23:29'),(60,'America/Argentina/Buenos_Aires','2023-07-06 08:23:29'),(61,'America/Argentina/Catamarca','2023-07-06 08:23:29'),(62,'America/Argentina/ComodRivadavia','2023-07-06 08:23:29'),(63,'America/Argentina/Cordoba','2023-07-06 08:23:29'),(64,'America/Argentina/Jujuy','2023-07-06 08:23:29'),(65,'America/Argentina/La_Rioja','2023-07-06 08:23:29'),(66,'America/Argentina/Mendoza','2023-07-06 08:23:29'),(67,'America/Argentina/Rio_Gallegos','2023-07-06 08:23:29'),(68,'America/Argentina/Salta','2023-07-06 08:23:29'),(69,'America/Argentina/San_Juan','2023-07-06 08:23:29'),(70,'America/Argentina/San_Luis','2023-07-06 08:23:29'),(71,'America/Argentina/Tucuman','2023-07-06 08:23:29'),(72,'America/Argentina/Ushuaia','2023-07-06 08:23:29'),(73,'America/Aruba','2023-07-06 08:23:29'),(74,'America/Asuncion','2023-07-06 08:23:29'),(75,'America/Atikokan','2023-07-06 08:23:29'),(76,'America/Atka','2023-07-06 08:23:29'),(77,'America/Bahia','2023-07-06 08:23:29'),(78,'America/Bahia_Banderas','2023-07-06 08:23:29'),(79,'America/Barbados','2023-07-06 08:23:29'),(80,'America/Belem','2023-07-06 08:23:29'),(81,'America/Belize','2023-07-06 08:23:29'),(82,'America/Blanc-Sablon','2023-07-06 08:23:29'),(83,'America/Boa_Vista','2023-07-06 08:23:29'),(84,'America/Bogota','2023-07-06 08:23:29'),(85,'America/Boise','2023-07-06 08:23:29'),(86,'America/Buenos_Aires','2023-07-06 08:23:29'),(87,'America/Cambridge_Bay','2023-07-06 08:23:29'),(88,'America/Campo_Grande','2023-07-06 08:23:29'),(89,'America/Cancun','2023-07-06 08:23:29'),(90,'America/Caracas','2023-07-06 08:23:29'),(91,'America/Catamarca','2023-07-06 08:23:29'),(92,'America/Cayenne','2023-07-06 08:23:29'),(93,'America/Cayman','2023-07-06 08:23:29'),(94,'America/Chicago','2023-07-06 08:23:29'),(95,'America/Chihuahua','2023-07-06 08:23:29'),(96,'America/Coral_Harbour','2023-07-06 08:23:29'),(97,'America/Cordoba','2023-07-06 08:23:29'),(98,'America/Costa_Rica','2023-07-06 08:23:29'),(99,'America/Creston','2023-07-06 08:23:29'),(100,'America/Cuiaba','2023-07-06 08:23:29'),(101,'America/Curacao','2023-07-06 08:23:29'),(102,'America/Danmarkshavn','2023-07-06 08:23:29'),(103,'America/Dawson','2023-07-06 08:23:29'),(104,'America/Dawson_Creek','2023-07-06 08:23:29'),(105,'America/Denver','2023-07-06 08:23:29'),(106,'America/Detroit','2023-07-06 08:23:29'),(107,'America/Dominica','2023-07-06 08:23:29'),(108,'America/Edmonton','2023-07-06 08:23:29'),(109,'America/Eirunepe','2023-07-06 08:23:29'),(110,'America/El_Salvador','2023-07-06 08:23:29'),(111,'America/Ensenada','2023-07-06 08:23:29'),(112,'America/Fort_Wayne','2023-07-06 08:23:29'),(113,'America/Fortaleza','2023-07-06 08:23:29'),(114,'America/Glace_Bay','2023-07-06 08:23:29'),(115,'America/Godthab','2023-07-06 08:23:29'),(116,'America/Goose_Bay','2023-07-06 08:23:29'),(117,'America/Grand_Turk','2023-07-06 08:23:29'),(118,'America/Grenada','2023-07-06 08:23:29'),(119,'America/Guadeloupe','2023-07-06 08:23:29'),(120,'America/Guatemala','2023-07-06 08:23:29'),(121,'America/Guayaquil','2023-07-06 08:23:29'),(122,'America/Guyana','2023-07-06 08:23:29'),(123,'America/Halifax','2023-07-06 08:23:29'),(124,'America/Havana','2023-07-06 08:23:29'),(125,'America/Hermosillo','2023-07-06 08:23:29'),(126,'America/Indiana/Indianapolis','2023-07-06 08:23:29'),(127,'America/Indiana/Knox','2023-07-06 08:23:29'),(128,'America/Indiana/Marengo','2023-07-06 08:23:29'),(129,'America/Indiana/Petersburg','2023-07-06 08:23:29'),(130,'America/Indiana/Tell_City','2023-07-06 08:23:29'),(131,'America/Indiana/Vevay','2023-07-06 08:23:29'),(132,'America/Indiana/Vincennes','2023-07-06 08:23:29'),(133,'America/Indiana/Winamac','2023-07-06 08:23:29'),(134,'America/Indianapolis','2023-07-06 08:23:29'),(135,'America/Inuvik','2023-07-06 08:23:29'),(136,'America/Iqaluit','2023-07-06 08:23:29'),(137,'America/Jamaica','2023-07-06 08:23:29'),(138,'America/Jujuy','2023-07-06 08:23:29'),(139,'America/Juneau','2023-07-06 08:23:29'),(140,'America/Kentucky/Louisville','2023-07-06 08:23:29'),(141,'America/Kentucky/Monticello','2023-07-06 08:23:29'),(142,'America/Knox_IN','2023-07-06 08:23:29'),(143,'America/Kralendijk','2023-07-06 08:23:29'),(144,'America/La_Paz','2023-07-06 08:23:29'),(145,'America/Lima','2023-07-06 08:23:29'),(146,'America/Los_Angeles','2023-07-06 08:23:29'),(147,'America/Louisville','2023-07-06 08:23:29'),(148,'America/Lower_Princes','2023-07-06 08:23:29'),(149,'America/Maceio','2023-07-06 08:23:29'),(150,'America/Managua','2023-07-06 08:23:29'),(151,'America/Manaus','2023-07-06 08:23:29'),(152,'America/Marigot','2023-07-06 08:23:29'),(153,'America/Martinique','2023-07-06 08:23:29'),(154,'America/Matamoros','2023-07-06 08:23:29'),(155,'America/Mazatlan','2023-07-06 08:23:29'),(156,'America/Mendoza','2023-07-06 08:23:29'),(157,'America/Menominee','2023-07-06 08:23:29'),(158,'America/Merida','2023-07-06 08:23:29'),(159,'America/Metlakatla','2023-07-06 08:23:29'),(160,'America/Mexico_City','2023-07-06 08:23:29'),(161,'America/Miquelon','2023-07-06 08:23:29'),(162,'America/Moncton','2023-07-06 08:23:29'),(163,'America/Monterrey','2023-07-06 08:23:29'),(164,'America/Montevideo','2023-07-06 08:23:29'),(165,'America/Montreal','2023-07-06 08:23:29'),(166,'America/Montserrat','2023-07-06 08:23:29'),(167,'America/Nassau','2023-07-06 08:23:29'),(168,'America/New_York','2023-07-06 08:23:29'),(169,'America/Nipigon','2023-07-06 08:23:29'),(170,'America/Nome','2023-07-06 08:23:29'),(171,'America/Noronha','2023-07-06 08:23:29'),(172,'America/North_Dakota/Beulah','2023-07-06 08:23:29'),(173,'America/North_Dakota/Center','2023-07-06 08:23:29'),(174,'America/North_Dakota/New_Salem','2023-07-06 08:23:29'),(175,'America/Ojinaga','2023-07-06 08:23:29'),(176,'America/Panama','2023-07-06 08:23:29'),(177,'America/Pangnirtung','2023-07-06 08:23:29'),(178,'America/Paramaribo','2023-07-06 08:23:29'),(179,'America/Phoenix','2023-07-06 08:23:29'),(180,'America/Port-au-Prince','2023-07-06 08:23:29'),(181,'America/Port_of_Spain','2023-07-06 08:23:29'),(182,'America/Porto_Acre','2023-07-06 08:23:29'),(183,'America/Porto_Velho','2023-07-06 08:23:29'),(184,'America/Puerto_Rico','2023-07-06 08:23:29'),(185,'America/Rainy_River','2023-07-06 08:23:29'),(186,'America/Rankin_Inlet','2023-07-06 08:23:29'),(187,'America/Recife','2023-07-06 08:23:29'),(188,'America/Regina','2023-07-06 08:23:29'),(189,'America/Resolute','2023-07-06 08:23:29'),(190,'America/Rio_Branco','2023-07-06 08:23:29'),(191,'America/Rosario','2023-07-06 08:23:29'),(192,'America/Santa_Isabel','2023-07-06 08:23:29'),(193,'America/Santarem','2023-07-06 08:23:29'),(194,'America/Santiago','2023-07-06 08:23:29'),(195,'America/Santo_Domingo','2023-07-06 08:23:29'),(196,'America/Sao_Paulo','2023-07-06 08:23:29'),(197,'America/Scoresbysund','2023-07-06 08:23:29'),(198,'America/Shiprock','2023-07-06 08:23:29'),(199,'America/Sitka','2023-07-06 08:23:29'),(200,'America/St_Barthelemy','2023-07-06 08:23:29'),(201,'America/St_Johns','2023-07-06 08:23:29'),(202,'America/St_Kitts','2023-07-06 08:23:29'),(203,'America/St_Lucia','2023-07-06 08:23:29'),(204,'America/St_Thomas','2023-07-06 08:23:29'),(205,'America/St_Vincent','2023-07-06 08:23:29'),(206,'America/Swift_Current','2023-07-06 08:23:29'),(207,'America/Tegucigalpa','2023-07-06 08:23:29'),(208,'America/Thule','2023-07-06 08:23:29'),(209,'America/Thunder_Bay','2023-07-06 08:23:29'),(210,'America/Tijuana','2023-07-06 08:23:29'),(211,'America/Toronto','2023-07-06 08:23:29'),(212,'America/Tortola','2023-07-06 08:23:29'),(213,'America/Vancouver','2023-07-06 08:23:29'),(214,'America/Virgin','2023-07-06 08:23:29'),(215,'America/Whitehorse','2023-07-06 08:23:29'),(216,'America/Winnipeg','2023-07-06 08:23:29'),(217,'America/Yakutat','2023-07-06 08:23:29'),(218,'America/Yellowknife','2023-07-06 08:23:29'),(219,'Antarctica/Casey','2023-07-06 08:23:29'),(220,'Antarctica/Davis','2023-07-06 08:23:29'),(221,'Antarctica/DumontDUrville','2023-07-06 08:23:29'),(222,'Antarctica/Macquarie','2023-07-06 08:23:29'),(223,'Antarctica/Mawson','2023-07-06 08:23:29'),(224,'Antarctica/McMurdo','2023-07-06 08:23:29'),(225,'Antarctica/Palmer','2023-07-06 08:23:29'),(226,'Antarctica/Rothera','2023-07-06 08:23:29'),(227,'Antarctica/South_Pole','2023-07-06 08:23:29'),(228,'Antarctica/Syowa','2023-07-06 08:23:29'),(229,'Antarctica/Vostok','2023-07-06 08:23:29'),(230,'Arctic/Longyearbyen','2023-07-06 08:23:29'),(231,'Asia/Aden','2023-07-06 08:23:29'),(232,'Asia/Almaty','2023-07-06 08:23:29'),(233,'Asia/Amman','2023-07-06 08:23:29'),(234,'Asia/Anadyr','2023-07-06 08:23:29'),(235,'Asia/Aqtau','2023-07-06 08:23:29'),(236,'Asia/Aqtobe','2023-07-06 08:23:29'),(237,'Asia/Ashgabat','2023-07-06 08:23:29'),(238,'Asia/Ashkhabad','2023-07-06 08:23:29'),(239,'Asia/Baghdad','2023-07-06 08:23:29'),(240,'Asia/Bahrain','2023-07-06 08:23:29'),(241,'Asia/Baku','2023-07-06 08:23:29'),(242,'Asia/Bangkok','2023-07-06 08:23:29'),(243,'Asia/Beirut','2023-07-06 08:23:29'),(244,'Asia/Bishkek','2023-07-06 08:23:29'),(245,'Asia/Brunei','2023-07-06 08:23:29'),(246,'Asia/Calcutta','2023-07-06 08:23:29'),(247,'Asia/Choibalsan','2023-07-06 08:23:29'),(248,'Asia/Chongqing','2023-07-06 08:23:29'),(249,'Asia/Chungking','2023-07-06 08:23:29'),(250,'Asia/Colombo','2023-07-06 08:23:29'),(251,'Asia/Dacca','2023-07-06 08:23:29'),(252,'Asia/Damascus','2023-07-06 08:23:29'),(253,'Asia/Dhaka','2023-07-06 08:23:29'),(254,'Asia/Dili','2023-07-06 08:23:29'),(255,'Asia/Dubai','2023-07-06 08:23:29'),(256,'Asia/Dushanbe','2023-07-06 08:23:29'),(257,'Asia/Gaza','2023-07-06 08:23:29'),(258,'Asia/Harbin','2023-07-06 08:23:29'),(259,'Asia/Hebron','2023-07-06 08:23:29'),(260,'Asia/Ho_Chi_Minh','2023-07-06 08:23:29'),(261,'Asia/Hong_Kong','2023-07-06 08:23:29'),(262,'Asia/Hovd','2023-07-06 08:23:29'),(263,'Asia/Irkutsk','2023-07-06 08:23:29'),(264,'Asia/Istanbul','2023-07-06 08:23:29'),(265,'Asia/Jakarta','2023-07-06 08:23:29'),(266,'Asia/Jayapura','2023-07-06 08:23:29'),(267,'Asia/Jerusalem','2023-07-06 08:23:29'),(268,'Asia/Kabul','2023-07-06 08:23:29'),(269,'Asia/Kamchatka','2023-07-06 08:23:29'),(270,'Asia/Karachi','2023-07-06 08:23:29'),(271,'Asia/Kashgar','2023-07-06 08:23:29'),(272,'Asia/Kathmandu','2023-07-06 08:23:29'),(273,'Asia/Katmandu','2023-07-06 08:23:29'),(274,'Asia/Khandyga','2023-07-06 08:23:29'),(275,'Asia/Kolkata','2023-07-06 08:23:29'),(276,'Asia/Krasnoyarsk','2023-07-06 08:23:29'),(277,'Asia/Kuala_Lumpur','2023-07-06 08:23:29'),(278,'Asia/Kuching','2023-07-06 08:23:29'),(279,'Asia/Kuwait','2023-07-06 08:23:29'),(280,'Asia/Macao','2023-07-06 08:23:29'),(281,'Asia/Macau','2023-07-06 08:23:29'),(282,'Asia/Magadan','2023-07-06 08:23:29'),(283,'Asia/Makassar','2023-07-06 08:23:29'),(284,'Asia/Manila','2023-07-06 08:23:29'),(285,'Asia/Muscat','2023-07-06 08:23:29'),(286,'Asia/Nicosia','2023-07-06 08:23:29'),(287,'Asia/Novokuznetsk','2023-07-06 08:23:29'),(288,'Asia/Novosibirsk','2023-07-06 08:23:29'),(289,'Asia/Omsk','2023-07-06 08:23:29'),(290,'Asia/Oral','2023-07-06 08:23:29'),(291,'Asia/Phnom_Penh','2023-07-06 08:23:29'),(292,'Asia/Pontianak','2023-07-06 08:23:29'),(293,'Asia/Pyongyang','2023-07-06 08:23:29'),(294,'Asia/Qatar','2023-07-06 08:23:29'),(295,'Asia/Qyzylorda','2023-07-06 08:23:29'),(296,'Asia/Rangoon','2023-07-06 08:23:29'),(297,'Asia/Riyadh','2023-07-06 08:23:29'),(298,'Asia/Saigon','2023-07-06 08:23:29'),(299,'Asia/Sakhalin','2023-07-06 08:23:29'),(300,'Asia/Samarkand','2023-07-06 08:23:29'),(301,'Asia/Seoul','2023-07-06 08:23:29'),(302,'Asia/Shanghai','2023-07-06 08:23:29'),(303,'Asia/Singapore','2023-07-06 08:23:29'),(304,'Asia/Taipei','2023-07-06 08:23:29'),(305,'Asia/Tashkent','2023-07-06 08:23:29'),(306,'Asia/Tbilisi','2023-07-06 08:23:29'),(307,'Asia/Tehran','2023-07-06 08:23:29'),(308,'Asia/Tel_Aviv','2023-07-06 08:23:29'),(309,'Asia/Thimbu','2023-07-06 08:23:29'),(310,'Asia/Thimphu','2023-07-06 08:23:29'),(311,'Asia/Tokyo','2023-07-06 08:23:29'),(312,'Asia/Ujung_Pandang','2023-07-06 08:23:29'),(313,'Asia/Ulaanbaatar','2023-07-06 08:23:29'),(314,'Asia/Ulan_Bator','2023-07-06 08:23:29'),(315,'Asia/Urumqi','2023-07-06 08:23:29'),(316,'Asia/Ust-Nera','2023-07-06 08:23:29'),(317,'Asia/Vientiane','2023-07-06 08:23:29'),(318,'Asia/Vladivostok','2023-07-06 08:23:29'),(319,'Asia/Yakutsk','2023-07-06 08:23:29'),(320,'Asia/Yekaterinburg','2023-07-06 08:23:29'),(321,'Asia/Yerevan','2023-07-06 08:23:29'),(322,'Atlantic/Azores','2023-07-06 08:23:29'),(323,'Atlantic/Bermuda','2023-07-06 08:23:29'),(324,'Atlantic/Canary','2023-07-06 08:23:29'),(325,'Atlantic/Cape_Verde','2023-07-06 08:23:29'),(326,'Atlantic/Faeroe','2023-07-06 08:23:29'),(327,'Atlantic/Faroe','2023-07-06 08:23:29'),(328,'Atlantic/Jan_Mayen','2023-07-06 08:23:29'),(329,'Atlantic/Madeira','2023-07-06 08:23:29'),(330,'Atlantic/Reykjavik','2023-07-06 08:23:29'),(331,'Atlantic/South_Georgia','2023-07-06 08:23:29'),(332,'Atlantic/St_Helena','2023-07-06 08:23:29'),(333,'Atlantic/Stanley','2023-07-06 08:23:29'),(334,'Australia/ACT','2023-07-06 08:23:29'),(335,'Australia/Adelaide','2023-07-06 08:23:29'),(336,'Australia/Brisbane','2023-07-06 08:23:29'),(337,'Australia/Broken_Hill','2023-07-06 08:23:29'),(338,'Australia/Canberra','2023-07-06 08:23:29'),(339,'Australia/Currie','2023-07-06 08:23:29'),(340,'Australia/Darwin','2023-07-06 08:23:29'),(341,'Australia/Eucla','2023-07-06 08:23:29'),(342,'Australia/Hobart','2023-07-06 08:23:29'),(343,'Australia/LHI','2023-07-06 08:23:29'),(344,'Australia/Lindeman','2023-07-06 08:23:29'),(345,'Australia/Lord_Howe','2023-07-06 08:23:29'),(346,'Australia/Melbourne','2023-07-06 08:23:29'),(347,'Australia/North','2023-07-06 08:23:29'),(348,'Australia/NSW','2023-07-06 08:23:29'),(349,'Australia/Perth','2023-07-06 08:23:29'),(350,'Australia/Queensland','2023-07-06 08:23:29'),(351,'Australia/South','2023-07-06 08:23:29'),(352,'Australia/Sydney','2023-07-06 08:23:29'),(353,'Australia/Tasmania','2023-07-06 08:23:29'),(354,'Australia/Victoria','2023-07-06 08:23:29'),(355,'Australia/West','2023-07-06 08:23:29'),(356,'Australia/Yancowinna','2023-07-06 08:23:29'),(357,'Brazil/Acre','2023-07-06 08:23:29'),(358,'Brazil/DeNoronha','2023-07-06 08:23:29'),(359,'Brazil/East','2023-07-06 08:23:29'),(360,'Brazil/West','2023-07-06 08:23:29'),(361,'Canada/Atlantic','2023-07-06 08:23:29'),(362,'Canada/Central','2023-07-06 08:23:29'),(363,'Canada/East-Saskatchewan','2023-07-06 08:23:29'),(364,'Canada/Eastern','2023-07-06 08:23:29'),(365,'Canada/Mountain','2023-07-06 08:23:29'),(366,'Canada/Newfoundland','2023-07-06 08:23:29'),(367,'Canada/Pacific','2023-07-06 08:23:29'),(368,'Canada/Saskatchewan','2023-07-06 08:23:29'),(369,'Canada/Yukon','2023-07-06 08:23:29'),(370,'Chile/Continental','2023-07-06 08:23:29'),(371,'Chile/EasterIsland','2023-07-06 08:23:29'),(372,'Cuba','2023-07-06 08:23:29'),(373,'Egypt','2023-07-06 08:23:29'),(374,'Eire','2023-07-06 08:23:29'),(375,'Europe/Amsterdam','2023-07-06 08:23:29'),(376,'Europe/Andorra','2023-07-06 08:23:29'),(377,'Europe/Athens','2023-07-06 08:23:29'),(378,'Europe/Belfast','2023-07-06 08:23:29'),(379,'Europe/Belgrade','2023-07-06 08:23:29'),(380,'Europe/Berlin','2023-07-06 08:23:29'),(381,'Europe/Bratislava','2023-07-06 08:23:29'),(382,'Europe/Brussels','2023-07-06 08:23:29'),(383,'Europe/Bucharest','2023-07-06 08:23:29'),(384,'Europe/Budapest','2023-07-06 08:23:29'),(385,'Europe/Busingen','2023-07-06 08:23:29'),(386,'Europe/Chisinau','2023-07-06 08:23:29'),(387,'Europe/Copenhagen','2023-07-06 08:23:29'),(388,'Europe/Dublin','2023-07-06 08:23:29'),(389,'Europe/Gibraltar','2023-07-06 08:23:29'),(390,'Europe/Guernsey','2023-07-06 08:23:29'),(391,'Europe/Helsinki','2023-07-06 08:23:29'),(392,'Europe/Isle_of_Man','2023-07-06 08:23:29'),(393,'Europe/Istanbul','2023-07-06 08:23:29'),(394,'Europe/Jersey','2023-07-06 08:23:29'),(395,'Europe/Kaliningrad','2023-07-06 08:23:29'),(396,'Europe/Kiev','2023-07-06 08:23:29'),(397,'Europe/Lisbon','2023-07-06 08:23:29'),(398,'Europe/Ljubljana','2023-07-06 08:23:29'),(399,'Europe/London','2023-07-06 08:23:29'),(400,'Europe/Luxembourg','2023-07-06 08:23:29'),(401,'Europe/Madrid','2023-07-06 08:23:29'),(402,'Europe/Malta','2023-07-06 08:23:29'),(403,'Europe/Mariehamn','2023-07-06 08:23:29'),(404,'Europe/Minsk','2023-07-06 08:23:29'),(405,'Europe/Monaco','2023-07-06 08:23:29'),(406,'Europe/Moscow','2023-07-06 08:23:29'),(407,'Europe/Nicosia','2023-07-06 08:23:29'),(408,'Europe/Oslo','2023-07-06 08:23:29'),(409,'Europe/Paris','2023-07-06 08:23:29'),(410,'Europe/Podgorica','2023-07-06 08:23:29'),(411,'Europe/Prague','2023-07-06 08:23:29'),(412,'Europe/Riga','2023-07-06 08:23:29'),(413,'Europe/Rome','2023-07-06 08:23:29'),(414,'Europe/Samara','2023-07-06 08:23:29'),(415,'Europe/San_Marino','2023-07-06 08:23:29'),(416,'Europe/Sarajevo','2023-07-06 08:23:29'),(417,'Europe/Simferopol','2023-07-06 08:23:29'),(418,'Europe/Skopje','2023-07-06 08:23:29'),(419,'Europe/Sofia','2023-07-06 08:23:29'),(420,'Europe/Stockholm','2023-07-06 08:23:29'),(421,'Europe/Tallinn','2023-07-06 08:23:29'),(422,'Europe/Tirane','2023-07-06 08:23:29'),(423,'Europe/Tiraspol','2023-07-06 08:23:29'),(424,'Europe/Uzhgorod','2023-07-06 08:23:29'),(425,'Europe/Vaduz','2023-07-06 08:23:29'),(426,'Europe/Vatican','2023-07-06 08:23:29'),(427,'Europe/Vienna','2023-07-06 08:23:29'),(428,'Europe/Vilnius','2023-07-06 08:23:29'),(429,'Europe/Volgograd','2023-07-06 08:23:29'),(430,'Europe/Warsaw','2023-07-06 08:23:29'),(431,'Europe/Zagreb','2023-07-06 08:23:29'),(432,'Europe/Zaporozhye','2023-07-06 08:23:29'),(433,'Europe/Zurich','2023-07-06 08:23:29'),(434,'Greenwich','2023-07-06 08:23:29'),(435,'Hongkong','2023-07-06 08:23:29'),(436,'Iceland','2023-07-06 08:23:29'),(437,'Indian/Antananarivo','2023-07-06 08:23:29'),(438,'Indian/Chagos','2023-07-06 08:23:29'),(439,'Indian/Christmas','2023-07-06 08:23:29'),(440,'Indian/Cocos','2023-07-06 08:23:29'),(441,'Indian/Comoro','2023-07-06 08:23:29'),(442,'Indian/Kerguelen','2023-07-06 08:23:29'),(443,'Indian/Mahe','2023-07-06 08:23:29'),(444,'Indian/Maldives','2023-07-06 08:23:29'),(445,'Indian/Mauritius','2023-07-06 08:23:29'),(446,'Indian/Mayotte','2023-07-06 08:23:29'),(447,'Indian/Reunion','2023-07-06 08:23:29'),(448,'Iran','2023-07-06 08:23:29'),(449,'Israel','2023-07-06 08:23:29'),(450,'Jamaica','2023-07-06 08:23:29'),(451,'Japan','2023-07-06 08:23:29'),(452,'Kwajalein','2023-07-06 08:23:29'),(453,'Libya','2023-07-06 08:23:29'),(454,'Mexico/BajaNorte','2023-07-06 08:23:29'),(455,'Mexico/BajaSur','2023-07-06 08:23:29'),(456,'Mexico/General','2023-07-06 08:23:29'),(457,'Pacific/Apia','2023-07-06 08:23:29'),(458,'Pacific/Auckland','2023-07-06 08:23:29'),(459,'Pacific/Chatham','2023-07-06 08:23:29'),(460,'Pacific/Chuuk','2023-07-06 08:23:29'),(461,'Pacific/Easter','2023-07-06 08:23:29'),(462,'Pacific/Efate','2023-07-06 08:23:29'),(463,'Pacific/Enderbury','2023-07-06 08:23:29'),(464,'Pacific/Fakaofo','2023-07-06 08:23:29'),(465,'Pacific/Fiji','2023-07-06 08:23:29'),(466,'Pacific/Funafuti','2023-07-06 08:23:29'),(467,'Pacific/Galapagos','2023-07-06 08:23:29'),(468,'Pacific/Gambier','2023-07-06 08:23:29'),(469,'Pacific/Guadalcanal','2023-07-06 08:23:29'),(470,'Pacific/Guam','2023-07-06 08:23:29'),(471,'Pacific/Honolulu','2023-07-06 08:23:29'),(472,'Pacific/Johnston','2023-07-06 08:23:29'),(473,'Pacific/Kiritimati','2023-07-06 08:23:29'),(474,'Pacific/Kosrae','2023-07-06 08:23:29'),(475,'Pacific/Kwajalein','2023-07-06 08:23:29'),(476,'Pacific/Majuro','2023-07-06 08:23:29'),(477,'Pacific/Marquesas','2023-07-06 08:23:29'),(478,'Pacific/Midway','2023-07-06 08:23:29'),(479,'Pacific/Nauru','2023-07-06 08:23:29'),(480,'Pacific/Niue','2023-07-06 08:23:29'),(481,'Pacific/Norfolk','2023-07-06 08:23:29'),(482,'Pacific/Noumea','2023-07-06 08:23:29'),(483,'Pacific/Pago_Pago','2023-07-06 08:23:29'),(484,'Pacific/Palau','2023-07-06 08:23:29'),(485,'Pacific/Pitcairn','2023-07-06 08:23:29'),(486,'Pacific/Pohnpei','2023-07-06 08:23:29'),(487,'Pacific/Ponape','2023-07-06 08:23:29'),(488,'Pacific/Port_Moresby','2023-07-06 08:23:29'),(489,'Pacific/Rarotonga','2023-07-06 08:23:29'),(490,'Pacific/Saipan','2023-07-06 08:23:29'),(491,'Pacific/Samoa','2023-07-06 08:23:29'),(492,'Pacific/Tahiti','2023-07-06 08:23:29'),(493,'Pacific/Tarawa','2023-07-06 08:23:29'),(494,'Pacific/Tongatapu','2023-07-06 08:23:29'),(495,'Pacific/Truk','2023-07-06 08:23:29'),(496,'Pacific/Wake','2023-07-06 08:23:29'),(497,'Pacific/Wallis','2023-07-06 08:23:29'),(498,'Pacific/Yap','2023-07-06 08:23:29'),(499,'Poland','2023-07-06 08:23:29'),(500,'Portugal','2023-07-06 08:23:29'),(501,'Singapore','2023-07-06 08:23:29'),(502,'Turkey','2023-07-06 08:23:29'),(503,'US/Alaska','2023-07-06 08:23:29'),(504,'US/Aleutian','2023-07-06 08:23:29'),(505,'US/Arizona','2023-07-06 08:23:29'),(506,'US/Central','2023-07-06 08:23:29'),(507,'US/East-Indiana','2023-07-06 08:23:29'),(508,'US/Eastern','2023-07-06 08:23:29'),(509,'US/Hawaii','2023-07-06 08:23:29'),(510,'US/Indiana-Starke','2023-07-06 08:23:29'),(511,'US/Michigan','2023-07-06 08:23:29'),(512,'US/Mountain','2023-07-06 08:23:29'),(513,'US/Pacific','2023-07-06 08:23:29'),(514,'US/Pacific-New','2023-07-06 08:23:29'),(515,'US/Samoa','2023-07-06 08:23:29'),(516,'Zulu','2023-07-06 08:23:29');
/*!40000 ALTER TABLE `timezones` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `timezones` with 516 row(s)
--

--
-- Table structure for table `user_settings`
--

DROP TABLE IF EXISTS `user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `default_language` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en_US.UTF-8',
  `default_currency` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `default_timezone` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Asia/Kuala_Lumpur',
  `default_category_domains` int(10) unsigned NOT NULL DEFAULT '0',
  `default_category_ssl` int(10) unsigned NOT NULL DEFAULT '0',
  `default_dns` int(10) unsigned NOT NULL DEFAULT '0',
  `default_host` int(10) unsigned NOT NULL DEFAULT '0',
  `default_ip_address_domains` int(10) unsigned NOT NULL DEFAULT '0',
  `default_ip_address_ssl` int(10) unsigned NOT NULL DEFAULT '0',
  `default_owner_domains` int(10) unsigned NOT NULL DEFAULT '0',
  `default_owner_ssl` int(10) unsigned NOT NULL DEFAULT '0',
  `default_registrar` int(10) unsigned NOT NULL DEFAULT '0',
  `default_registrar_account` int(10) unsigned NOT NULL DEFAULT '0',
  `default_ssl_provider_account` int(10) unsigned NOT NULL DEFAULT '0',
  `default_ssl_type` int(10) unsigned NOT NULL DEFAULT '0',
  `default_ssl_provider` int(10) unsigned NOT NULL DEFAULT '0',
  `expiration_emails` tinyint(1) NOT NULL DEFAULT '0',
  `number_of_domains` int(5) NOT NULL DEFAULT '50',
  `number_of_ssl_certs` int(5) NOT NULL DEFAULT '50',
  `display_domain_owner` tinyint(1) NOT NULL DEFAULT '0',
  `display_domain_registrar` tinyint(1) NOT NULL DEFAULT '0',
  `display_domain_account` tinyint(1) NOT NULL DEFAULT '1',
  `display_domain_expiry_date` tinyint(1) NOT NULL DEFAULT '1',
  `display_domain_category` tinyint(1) NOT NULL DEFAULT '1',
  `display_domain_dns` tinyint(1) NOT NULL DEFAULT '1',
  `display_domain_host` tinyint(1) NOT NULL DEFAULT '0',
  `display_domain_ip` tinyint(1) NOT NULL DEFAULT '0',
  `display_domain_tld` tinyint(1) NOT NULL DEFAULT '1',
  `display_domain_fee` tinyint(1) NOT NULL DEFAULT '1',
  `display_ssl_owner` tinyint(1) NOT NULL DEFAULT '1',
  `display_ssl_provider` tinyint(1) NOT NULL DEFAULT '0',
  `display_ssl_account` tinyint(1) NOT NULL DEFAULT '1',
  `display_ssl_domain` tinyint(1) NOT NULL DEFAULT '1',
  `display_ssl_type` tinyint(1) NOT NULL DEFAULT '1',
  `display_ssl_expiry_date` tinyint(1) NOT NULL DEFAULT '1',
  `display_ssl_ip` tinyint(1) NOT NULL DEFAULT '0',
  `display_ssl_category` tinyint(1) NOT NULL DEFAULT '0',
  `display_ssl_fee` tinyint(1) NOT NULL DEFAULT '0',
  `display_inactive_assets` tinyint(1) NOT NULL DEFAULT '1',
  `display_dw_intro_page` tinyint(1) NOT NULL DEFAULT '1',
  `dark_mode` tinyint(1) NOT NULL DEFAULT '0',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `dispcdf_sales_person` tinyint(1) NOT NULL DEFAULT '0',
  `dispcdf_client_name` tinyint(1) NOT NULL DEFAULT '0',
  `dispcdf_client_phone` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_settings`
--

LOCK TABLES `user_settings` WRITE;
/*!40000 ALTER TABLE `user_settings` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `user_settings` VALUES (1,1,'en_US.UTF-8','RM','Asia/Kuala_Lumpur',0,0,0,0,0,0,0,0,0,0,0,0,0,1,50,50,0,1,0,1,0,0,1,0,0,0,1,0,1,1,1,1,0,0,0,1,1,1,'2023-07-06 08:23:29','2023-07-21 07:50:29',1,1,1),(2,2,'en_US.UTF-8','USD','Asia/Kuala_Lumpur',1,1,1,1,1,1,2,1,1,1,0,4,1,1,50,50,0,0,1,1,1,1,0,0,1,1,1,0,1,1,1,1,0,0,0,1,1,0,'2023-07-07 06:37:40','2023-07-07 06:39:41',0,0,0),(3,3,'en_US.UTF-8','USD','Asia/Kuala_Lumpur',1,1,1,1,1,1,2,1,1,1,0,4,1,1,50,50,0,0,1,1,1,1,0,0,1,1,1,0,1,1,1,1,0,0,0,1,1,0,'2023-07-07 06:50:20','2023-07-07 07:07:15',0,0,0),(4,4,'en_US.UTF-8','RM','Asia/Kuala_Lumpur',1,1,1,1,1,1,2,1,1,1,0,4,1,1,50,50,0,0,1,1,1,1,0,0,1,1,1,0,1,1,1,1,0,0,0,1,1,0,'2023-07-10 08:20:07','2023-07-10 08:23:58',0,0,0),(5,5,'en_US.UTF-8','MYR','Asia/Kuala_Lumpur',1,1,1,1,1,1,2,1,1,1,0,4,1,1,50,50,0,0,1,1,1,1,0,0,1,1,1,0,1,1,1,1,0,0,0,1,1,0,'2023-07-11 02:57:05','2023-07-11 02:57:48',0,0,0),(6,6,'en_US.UTF-8','RM','Asia/Kuala_Lumpur',1,1,1,1,1,1,2,1,1,1,0,4,1,1,50,50,0,0,1,1,1,1,0,0,1,1,1,0,1,1,1,1,0,0,0,1,1,0,'2023-07-11 02:59:38','2023-07-11 02:59:58',0,0,0),(7,7,'en_US.UTF-8','RM','Asia/Kuala_Lumpur',1,1,1,1,1,1,2,1,1,1,0,4,1,1,50,50,0,0,1,1,1,1,0,0,1,1,1,0,1,1,1,1,0,0,0,1,1,0,'2023-07-11 03:02:07','2023-07-11 03:02:29',0,0,0),(8,8,'en_US.UTF-8','MYR','Asia/Kuala_Lumpur',1,1,1,1,1,1,2,1,1,1,0,4,1,1,50,50,0,0,1,1,1,1,0,0,1,1,1,0,1,1,1,1,0,0,0,1,1,0,'2023-07-11 03:04:05','2023-07-11 03:04:34',0,0,0),(9,9,'en_US.UTF-8','RM','Asia/Kuala_Lumpur',1,1,1,1,1,1,2,1,1,1,0,4,1,1,50,50,0,0,1,1,1,1,0,0,1,1,1,0,1,1,1,1,0,0,0,1,1,0,'2023-07-11 03:06:37','2023-07-11 03:07:34',0,0,0),(10,10,'en_US.UTF-8','MYR','Asia/Kuala_Lumpur',1,1,1,1,1,1,2,1,1,1,0,4,1,1,50,50,0,0,1,1,1,1,0,0,1,1,1,0,1,1,1,1,0,0,0,1,1,0,'2023-07-11 03:11:06','2023-07-11 03:12:11',0,0,0),(11,11,'en_US.UTF-8','MYR','Asia/Kuala_Lumpur',1,1,1,1,1,1,2,1,1,1,0,4,1,1,50,50,0,0,1,1,1,1,0,0,1,1,1,0,1,1,1,1,0,0,0,1,1,0,'2023-07-11 03:12:47','2023-07-25 07:56:56',0,0,0);
/*!40000 ALTER TABLE `user_settings` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `user_settings` with 11 row(s)
--

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `new_password` tinyint(1) NOT NULL DEFAULT '1',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `read_only` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `number_of_logins` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `creation_type_id` tinyint(2) NOT NULL DEFAULT '2',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `insert_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `users` VALUES (1,'Domain','Administrator','admin','ezzeriq@gmail.com','$2y$10$Bzdc/ixwnUSSwwnfl.l0cOG4x6hBnKPaWmZEQYpRKb01wi1bQ.gxq',0,1,0,1,55,'2023-08-23 01:03:45',1,0,'2023-07-06 08:23:29','2023-08-23 01:03:45'),(2,'Ali','Ahmad','ali','ali@gmail.com','$2y$10$vi/kb5MdCHWzFdcjYk2WWuZ38mooOYfkr0pYzt8y38bCFWpu1d54a',1,0,1,1,0,'1970-01-01 00:00:00',2,1,'2023-07-07 06:37:40','2023-07-07 06:39:41'),(3,'Ezrix','Jaafar','ezrix','ezzeriq.jaafar@gmail.com','$2y$10$2UqqO18n0gSFQf6l5Xny5eNfZhOXhG7yEyJjOVIu5M56crAyaEJrG',1,0,1,1,0,'1970-01-01 00:00:00',2,1,'2023-07-07 06:50:20','2023-07-07 07:07:24'),(4,'Rasyid','Razali','rasyid','rasyidwebdesign@gmail.com','$2y$10$lYajdBLX/m07XB2NHMuB2..55kev.fGNWnZAjeTQ8pcaRsTiIURQy',0,0,0,1,4,'2023-08-02 02:28:36',2,1,'2023-07-10 08:20:07','2023-08-02 02:28:36'),(5,'Hairol Hakimi','Hairol Hanim','hairol','hairol@pemajudigital.com','$2y$10$GkFsxnrm/ZXiAjcOQcvZjOChlcH5cdaUpHb4FK03pkOXiHfdqui6G',0,0,0,1,1,'2023-07-12 01:59:10',2,1,'2023-07-11 02:57:05','2023-07-12 01:59:28'),(6,'Nor Ain','Mohd Razali','norain','ain@pemajudigital.com','$2y$10$tBgwg0y8EcZcbrNw01uqlOwZbWgl8CO0dtbFFb2w18iwJzVUk86q.',0,0,0,1,2,'2023-07-26 02:57:53',2,1,'2023-07-11 02:59:38','2023-07-26 02:57:53'),(7,'Intan Nurfarzana','Suhaimi','intan','intan@pemajudigital.com','$2y$10$slqXpjglT2XhcYeE7z/2A.47OwhCyLhjjb0IW3Zv0DT3l5EYnwgMK',0,0,0,1,4,'2023-07-26 02:55:31',2,1,'2023-07-11 03:02:07','2023-07-26 02:55:31'),(8,'Nurzulaikha','Sa&#039;ari','zulaikha','zulaikha@pemajudigital.com','$2y$10$SDcfDWC0k84nIV9EVfQSauMd0ypebLYDvde0EE6ZuHI7KeaYkEBn6',0,0,0,1,3,'2023-07-31 04:52:44',2,1,'2023-07-11 03:04:05','2023-07-31 04:52:44'),(9,'Norfaezah','Mohamad Nor','faezah','faezah@pemajudigital.com','$2y$10$TwbOthAn5OykIjNCdSf0v.7rKfk0uH2owC1G3ttzCOe/vvQUqYdwm',0,0,0,1,1,'2023-07-12 02:07:23',2,1,'2023-07-11 03:06:37','2023-07-12 02:07:34'),(10,'Noraisyah','Jaafar','aisyah','aisyah@pemajudigital.com','$2y$10$qlDSOHOePPzuqLdbqSU3pulJAShV2B7ih5VY4LScOcFqJyS7iiQQa',0,0,0,1,3,'2023-07-26 02:58:43',2,1,'2023-07-11 03:11:06','2023-07-26 02:58:43'),(11,'Jasnita','Mustafa','coordinator','coordinator@pemajudigital.com','$2y$10$/qX5qLsrdNy73U7O2uk0fepqGTsNQlff4fHqzdByk/sXsx0OzXCFi',0,0,0,1,42,'2023-08-22 04:11:28',2,1,'2023-07-11 03:12:47','2023-08-22 04:11:28');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `users` with 11 row(s)
--

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on: Wed, 23 Aug 2023 01:31:43 +0000
