-- MySQL dump 10.13  Distrib 5.5.35, for Linux (x86_64)
--
-- Host: localhost    Database: u4187818_florentinproject
-- ------------------------------------------------------
-- Server version	5.5.35-33.0

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(32) NOT NULL,
  `company_id` varchar(32) NOT NULL,
  `tax_id` varchar(32) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,1,'asd','asd','','','','asd','','admin','',176,2761),(2,2,'алёна олеговна','Логоновская','','','','addr2','','admin','',176,22761),(10,10,'sdfsdf','','','','','test','','','',176,2761),(4,4,'Илья','','','','','test','','admin','',176,22761),(17,17,'Artamonov','','','','','','','admin','',176,22761),(11,11,'sdfs','','','','','','','','',176,2761),(13,13,'ilya','','','','','addr1','addr1','','',176,2761),(18,18,'etst','','','','','','','','',176,2761),(19,19,'werwer','','','','','','','','',176,2761),(20,20,'234234','','','','','','','','',176,2761),(21,21,'123','','','','','1111111','','','',176,2761),(22,22,'Анна ','','','','','','','','',176,22761),(23,23,'Anna','','','','','','','','',176,22761),(24,24,'rfnz','','','','','','','','',176,22761);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affiliate`
--

DROP TABLE IF EXISTS `affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(32) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affiliate`
--

LOCK TABLES `affiliate` WRITE;
/*!40000 ALTER TABLE `affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `affiliate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affiliate_transaction`
--

DROP TABLE IF EXISTS `affiliate_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affiliate_transaction`
--

LOCK TABLES `affiliate_transaction` WRITE;
/*!40000 ALTER TABLE `affiliate_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `affiliate_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute`
--

DROP TABLE IF EXISTS `attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute`
--

LOCK TABLES `attribute` WRITE;
/*!40000 ALTER TABLE `attribute` DISABLE KEYS */;
INSERT INTO `attribute` VALUES (1,6,1),(2,6,5),(3,6,3),(4,3,1),(5,3,2),(6,3,3),(7,3,4),(8,3,5),(9,3,6),(10,3,7),(11,3,8);
/*!40000 ALTER TABLE `attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_description`
--

DROP TABLE IF EXISTS `attribute_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_description`
--

LOCK TABLES `attribute_description` WRITE;
/*!40000 ALTER TABLE `attribute_description` DISABLE KEYS */;
INSERT INTO `attribute_description` VALUES (1,1,'Description'),(2,1,'No. of Cores'),(4,1,'test 1'),(5,1,'test 2'),(6,1,'test 3'),(7,1,'test 4'),(8,1,'test 5'),(9,1,'test 6'),(10,1,'test 7'),(11,1,'test 8'),(3,1,'Clockspeed');
/*!40000 ALTER TABLE `attribute_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_group`
--

DROP TABLE IF EXISTS `attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_group`
--

LOCK TABLES `attribute_group` WRITE;
/*!40000 ALTER TABLE `attribute_group` DISABLE KEYS */;
INSERT INTO `attribute_group` VALUES (3,2),(4,1),(5,3),(6,4);
/*!40000 ALTER TABLE `attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_group_description`
--

DROP TABLE IF EXISTS `attribute_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_group_description`
--

LOCK TABLES `attribute_group_description` WRITE;
/*!40000 ALTER TABLE `attribute_group_description` DISABLE KEYS */;
INSERT INTO `attribute_group_description` VALUES (3,1,'Память'),(4,1,'Technical'),(5,1,'Материнская плата'),(6,1,'Процессор');
/*!40000 ALTER TABLE `attribute_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (9,'Idee',1),(7,'Главная страница',1),(10,'Доставка цветов',1),(11,'ПЕРСОНАЛЬНЫЙ ЗАКАЗ',1),(12,'КОРПОРАТИВНЫЙ СЕРВИС',1);
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner_image`
--

DROP TABLE IF EXISTS `banner_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner_image`
--

LOCK TABLES `banner_image` WRITE;
/*!40000 ALTER TABLE `banner_image` DISABLE KEYS */;
INSERT INTO `banner_image` VALUES (121,12,'','data/33.jpg'),(116,7,'','data/24.jpg'),(118,9,'','data/07.jpg'),(104,10,'','data/28.jpg'),(111,11,'','data/31.jpg'),(115,7,'','data/25.jpg'),(114,7,'','data/27.jpg'),(113,7,'','data/01.jpg'),(112,7,'','data/26.jpg'),(117,7,'','data/30.jpg'),(119,9,'','data/26.jpg');
/*!40000 ALTER TABLE `banner_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner_image_description`
--

DROP TABLE IF EXISTS `banner_image_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner_image_description`
--

LOCK TABLES `banner_image_description` WRITE;
/*!40000 ALTER TABLE `banner_image_description` DISABLE KEYS */;
INSERT INTO `banner_image_description` VALUES (115,1,7,'55'),(118,1,9,'Idee'),(121,1,12,'КОРПОРАТИВНЫЙ СЕРВИС'),(111,1,11,'ПЕРСОНАЛЬНЫЙ ЗАКАЗ'),(116,1,7,'Пионовидные розы Анджи Романтик'),(104,1,10,'Доставка цветов'),(114,1,7,'33'),(113,1,7,'Романтика и свежие цветы с доставкой'),(112,1,7,'Яркие и аароматные розы в шляпных коробках'),(117,1,7,'77'),(119,1,9,'Idee');
/*!40000 ALTER TABLE `banner_image_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (59,'',0,0,1,0,1,'2014-06-06 14:11:14','2014-06-06 14:11:14');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_description`
--

DROP TABLE IF EXISTS `category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_h1` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_description`
--

LOCK TABLES `category_description` WRITE;
/*!40000 ALTER TABLE `category_description` DISABLE KEYS */;
INSERT INTO `category_description` VALUES (59,1,'Цветы','','','','','');
/*!40000 ALTER TABLE `category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_filter`
--

DROP TABLE IF EXISTS `category_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_filter`
--

LOCK TABLES `category_filter` WRITE;
/*!40000 ALTER TABLE `category_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_path`
--

DROP TABLE IF EXISTS `category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_path`
--

LOCK TABLES `category_path` WRITE;
/*!40000 ALTER TABLE `category_path` DISABLE KEYS */;
INSERT INTO `category_path` VALUES (59,59,0);
/*!40000 ALTER TABLE `category_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_to_layout`
--

DROP TABLE IF EXISTS `category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_to_layout`
--

LOCK TABLES `category_to_layout` WRITE;
/*!40000 ALTER TABLE `category_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_to_store`
--

DROP TABLE IF EXISTS `category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_to_store`
--

LOCK TABLES `category_to_store` WRITE;
/*!40000 ALTER TABLE `category_to_store` DISABLE KEYS */;
INSERT INTO `category_to_store` VALUES (59,0);
/*!40000 ALTER TABLE `category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (176,'Российская Федерация','RU','RUS','',0,1);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=837 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon`
--

LOCK TABLES `coupon` WRITE;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
INSERT INTO `coupon` VALUES (470,'Скидочный купон 15% для 4mee-mail@list.ru','98151118','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:19'),(471,'Скидочный купон 15% для Nadine07@inbox.ru','35600344','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:19'),(472,'Скидочный купон 15% для Zhanna05@bk.ru','63955340','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:19'),(465,'Скидочный купон 15% для ksenia.ovchinnikova@gmail.com','13474565','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:18'),(466,'Скидочный купон 15% для l.u.315@mail.ru','98606407','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:18'),(467,'Скидочный купон 15% для liyas@me.com','73597575','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:19'),(468,'Скидочный купон 15% для m2608-olga@mail.ru','43960250','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:19'),(469,'Скидочный купон 15% для Anastasia_2811@hotmail.com','58683131','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:19'),(456,'Скидочный купон 15% для nikaromina@mail.ru','88350565','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:17'),(457,'Скидочный купон 15% для lobanova.elvira@gmail.com','24318327','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:17'),(458,'Скидочный купон 15% для polinasd@mail.ru','41440759','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:17'),(459,'Скидочный купон 15% для ma-ru-sa@yandex.ru','94457014','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:17'),(460,'Скидочный купон 15% для larisa@clickavia.ru','74878429','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:18'),(461,'Скидочный купон 15% для galina.kasjanova@gmail.com','84056110','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:18'),(462,'Скидочный купон 15% для eliska2003@mail.ru','25312890','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:18'),(463,'Скидочный купон 15% для la.vie.aimant@gmail.com','23482519','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:18'),(464,'Скидочный купон 15% для julkarputova@gmail.com','89652740','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:18'),(435,'Скидочный купон 15% для darya.vasilchikova@gmail.com','61214906','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:10'),(436,'Скидочный купон 15% для i.afanasyeva87@mail.ru','08827627','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:11'),(437,'Скидочный купон 15% для press-anastasiya@ya.ru','67118919','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:11'),(438,'Скидочный купон 15% для nastya.mes.1994@mail.ru','86966061','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:11'),(439,'Скидочный купон 15% для 909-906-31-80@mail.ru','17256205','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:12'),(440,'Скидочный купон 15% для marykon@rambler.ru','98653719','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:12'),(441,'Скидочный купон 15% для taratorkina@gmail.com','41020107','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:13'),(442,'Скидочный купон 15% для kati_ona@mail.ru','79329830','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:13'),(443,'Скидочный купон 15% для uventlaw@gmail.com','55406455','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:13'),(444,'Скидочный купон 15% для mkhazagaeva@mail.ru','10947030','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:13'),(445,'Скидочный купон 15% для tikhonova_e@mail.ru','12203179','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:14'),(446,'Скидочный купон 15% для mar7na@gmail.com','00197392','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:14'),(447,'Скидочный купон 15% для morgencafe@mail.ru','83236677','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:14'),(448,'Скидочный купон 15% для annie_1911@mail.ru','56126316','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:14'),(449,'Скидочный купон 15% для silaeva.ekaterina@gmail.com','53673363','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:15'),(450,'Скидочный купон 15% для enricapokr@gmail.com','26199006','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:15'),(451,'Скидочный купон 15% для gaisinal1@yandex.ru','21986551','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:15'),(452,'Скидочный купон 15% для sunnyangele@gmail.com','15268322','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:15'),(453,'Скидочный купон 15% для tkogut@mail.ru','58980411','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:15'),(454,'Скидочный купон 15% для falcons@inbox.ru','92981942','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:15'),(455,'Скидочный купон 15% для ev.a@inbox.ru','02967367','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:15'),(432,'Скидочный купон 15% для marina.erpuleva@gmail.com','31823991','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:10'),(433,'Скидочный купон 15% для kponizkova@yandex.ru','11646190','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:10'),(434,'Скидочный купон 15% для xoma13@list.ru','29519020','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:10'),(426,'Скидочный купон 15% для danilovaov@gmail.com','11660910','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:09'),(427,'Скидочный купон 15% для artamonova2@yandex.ru','21102135','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:09'),(428,'Скидочный купон 15% для muhametova@list.ru','31499228','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:09'),(429,'Скидочный купон 15% для katrin_ka_05@mail.ru','82264565','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:09'),(430,'Скидочный купон 15% для liza.tsyplenkova@gmail.com','51059151','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:10'),(431,'Скидочный купон 15% для show-u@mail.ru','16036379','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:10'),(393,'Скидочный купон 15% для irina.asta@gmail.com','84554708','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:04'),(394,'Скидочный купон 15% для ekaterinamakhlina@gmail.com','23060622','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:04'),(395,'Скидочный купон 15% для plaggy@inbox.ru','87556877','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:04'),(396,'Скидочный купон 15% для Oksana.yukovleva@rambler.ru','08073081','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:04'),(397,'Скидочный купон 15% для ttsives@inbox.ru','32578459','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:04'),(398,'Скидочный купон 15% для mayasha@yandex.ru','75571689','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:05'),(399,'Скидочный купон 15% для emagasin@yandex.ru','32389958','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:05'),(400,'Скидочный купон 15% для vitsko_tuta@mail.ru','64494297','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:05'),(401,'Скидочный купон 15% для a.nikiforova@bk.ru','34418804','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:05'),(402,'Скидочный купон 15% для alenka-a-a-a@yandex.ru','34040822','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:05'),(403,'Скидочный купон 15% для shirikne@yandex.ru','94072458','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:05'),(404,'Скидочный купон 15% для aika83@list.ru','89610583','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:05'),(405,'Скидочный купон 15% для znelli19@mail.ru','81369392','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:06'),(406,'Скидочный купон 15% для hoper63@inbox.ru','79566674','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:06'),(407,'Скидочный купон 15% для kewinka@mail.ru','97110687','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:06'),(408,'Скидочный купон 15% для dashuny_91@bk.ru','44848566','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:06'),(409,'Скидочный купон 15% для yana07.07@mail.ru','69142058','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:06'),(410,'Скидочный купон 15% для 79265817843@mail.ru','89344073','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:06'),(411,'Скидочный купон 15% для m00ny@mail.ru','68364128','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:06'),(412,'Скидочный купон 15% для novikovamaryana@gmail.com','40124779','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:06'),(413,'Скидочный купон 15% для yulia.prilutskaya@mail.ru','68377755','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:07'),(414,'Скидочный купон 15% для belayaovechka@lenta.ru','68807523','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:07'),(415,'Скидочный купон 15% для elmira49@mail.ru','24955138','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:07'),(416,'Скидочный купон 15% для ornella_s@list.ru','03930625','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:07'),(417,'Скидочный купон 15% для fidgee@yandex.ru','34201646','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:07'),(418,'Скидочный купон 15% для ykozlovskaya@gmail.com','31605737','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:08'),(419,'Скидочный купон 15% для lyasik-love@mail.ru','11251430','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:08'),(420,'Скидочный купон 15% для pucca@inbox.ru','71367400','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:08'),(421,'Скидочный купон 15% для ali-savelieva@yandex.ru','71986239','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:08'),(422,'Скидочный купон 15% для laverlist@mail.ru','28875036','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:08'),(423,'Скидочный купон 15% для ritashelmakova@yahoo.com','14018214','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:08'),(424,'Скидочный купон 15% для truderung@gmail.com','33996893','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:09'),(425,'Скидочный купон 15% для dzeku@yandex.ru','97058330','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:09'),(299,'Скидочный купон 15% для tufelka_s@mail.ru','29742693','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:50'),(300,'Скидочный купон 15% для Katie.design@yandex.ru','55765601','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:50'),(301,'Скидочный купон 15% для Sunnygirl3110@gmail.com','59420027','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:50'),(302,'Скидочный купон 15% для ssmirnovdd@mail.ru','94266588','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:50'),(303,'Скидочный купон 15% для mara777@yandex.ru','34150084','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:50'),(304,'Скидочный купон 15% для margoshipilova@yandex.ru','45991895','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:50'),(305,'Скидочный купон 15% для chernovnn@gmail.com','73763821','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:51'),(306,'Скидочный купон 15% для annfed1@gmail.com','14779542','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:51'),(307,'Скидочный купон 15% для eg_el@mail.com','85674418','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:51'),(308,'Скидочный купон 15% для tukasupaya@gmail.com','80687524','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:51'),(309,'Скидочный купон 15% для ridel_kristina@mail.ru','78906107','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:51'),(310,'Скидочный купон 15% для ekshurygina@mail.ru','47331749','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:51'),(311,'Скидочный купон 15% для anastasiakulik@gmail.com','10543620','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:51'),(312,'Скидочный купон 15% для ek.markanova@gmail.com','58822059','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:51'),(313,'Скидочный купон 15% для dashagp@gmail.com','84834898','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:52'),(314,'Скидочный купон 15% для biola@ngs.ru','42158438','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:52'),(315,'Скидочный купон 15% для thefelislynx@gmail.com','38253457','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:52'),(316,'Скидочный купон 15% для ikrainov@gmail.com','13922310','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:52'),(317,'Скидочный купон 15% для ann_fallen@gmail.com','79216190','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:52'),(318,'Скидочный купон 15% для seafish17@yahoo.com','29402684','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:52'),(319,'Скидочный купон 15% для sportyspice@mail.ru','30963433','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:52'),(320,'Скидочный купон 15% для db@sportinyou.ru','61584670','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:52'),(321,'Скидочный купон 15% для golubcova_ideal@mail.ru','49009891','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:52'),(322,'Скидочный купон 15% для Kristina.galustyan@gmail.com','73088821','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:53'),(323,'Скидочный купон 15% для 2697238@mail.ru','70704930','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:53'),(324,'Скидочный купон 15% для hisashasmith@mail.ru','08743437','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:53'),(325,'Скидочный купон 15% для fionak@yandex.ru','23611527','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:53'),(326,'Скидочный купон 15% для ange_diable@bk.ru','72559666','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:53'),(327,'Скидочный купон 15% для mirik.ru@mail.ru','62591791','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:53'),(328,'Скидочный купон 15% для belovaval@mail.ru','56479741','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:53'),(329,'Скидочный купон 15% для guestsecret777@gmail.com','09213380','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:54'),(330,'Скидочный купон 15% для ingakireeva@gmail.com','42438983','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:54'),(331,'Скидочный купон 15% для komissarova.eka@gmail.com','13210114','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:54'),(332,'Скидочный купон 15% для vikusik-pm@ya.ru','65141451','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:54'),(333,'Скидочный купон 15% для innusik11@rambler.ru','26159843','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:54'),(334,'Скидочный купон 15% для Julia_mit1807@mail.ru','08576306','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:54'),(335,'Скидочный купон 15% для yanshin@me.com','52752887','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:54'),(336,'Скидочный купон 15% для 89261143266@mail.ru','28131533','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:54'),(337,'Скидочный купон 15% для maria.shitsle@gmail.com','14791120','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:55'),(338,'Скидочный купон 15% для mansamoro@mail.ru','86749694','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:55'),(339,'Скидочный купон 15% для mariamaslennikova@mail.ru','75882554','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:55'),(340,'Скидочный купон 15% для shmelevstas@gmail.ru','35639960','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:55'),(341,'Скидочный купон 15% для Natalia.vasilkova@mail.ru','23833931','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:55'),(342,'Скидочный купон 15% для zeldman@mail.ru','59444271','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:55'),(343,'Скидочный купон 15% для schirinaa@mail.ru','74999321','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:55'),(344,'Скидочный купон 15% для shoodesign@mail.ru','88467958','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:55'),(345,'Скидочный купон 15% для odarka.skazka@gmail.com','23042247','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:55'),(346,'Скидочный купон 15% для mokusha@mail.ru','18049656','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:55'),(347,'Скидочный купон 15% для ak.aspr.promotion@gmail.com','03486693','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:55'),(348,'Скидочный купон 15% для rublevaolia@gmail.com','43902483','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:55'),(349,'Скидочный купон 15% для evgeniamasloboeva@gmail.com','78790150','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:56'),(350,'Скидочный купон 15% для Alexandra.shlyaeva@gmail.com','85470820','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:56'),(351,'Скидочный купон 15% для polnikovaml@gmail.com','16872605','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:56'),(352,'Скидочный купон 15% для benderskaya@gmail.com','99502229','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:56'),(353,'Скидочный купон 15% для ilmitrofanova1@yandex.ru','08798196','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:56'),(354,'Скидочный купон 15% для v.lomonosova@gmail.com','52250341','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:56'),(355,'Скидочный купон 15% для karmensmr@gmail.com','91807755','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:57'),(356,'Скидочный купон 15% для svetlans_ob@mail.ru','59471650','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:57'),(357,'Скидочный купон 15% для ryzhryzh@gmail.com','41922777','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:57'),(358,'Скидочный купон 15% для olgafedorova88@gmail.com','88281689','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:57'),(359,'Скидочный купон 15% для vall.molchanova@gmail.com','75932387','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:57'),(360,'Скидочный купон 15% для cherry10@yandex.ru','22327821','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:57'),(361,'Скидочный купон 15% для bellatagarova@gmail.com','90317075','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:57'),(362,'Скидочный купон 15% для tarrka@rambler.ru','89284070','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:58'),(363,'Скидочный купон 15% для melhistinka@list.ru','55367028','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:58'),(364,'Скидочный купон 15% для stanchesss@gmail.com','15082291','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:58'),(365,'Скидочный купон 15% для evantipova@mail.ru','21180827','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:58'),(366,'Скидочный купон 15% для alya.kazimir@mail.ru','64503197','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:58'),(367,'Скидочный купон 15% для lealenka@yandex.ru','52311592','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:58'),(368,'Скидочный купон 15% для kudrizain@gmail.com','99910821','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:58'),(369,'Скидочный купон 15% для anna.stadukhina@gmail.com','82880045','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:59'),(370,'Скидочный купон 15% для m.titkova@gmail.com','38468323','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:59'),(371,'Скидочный купон 15% для shm_elena@bk.ru','45459268','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:59'),(372,'Скидочный купон 15% для amarezza@gmail.com','05992000','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:59'),(373,'Скидочный купон 15% для m.kaprina@mail.ru','27716169','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:59'),(374,'Скидочный купон 15% для maria.bourdina@gmail.com','80462696','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:59'),(375,'Скидочный купон 15% для leralistopadova@gmail.com','02194773','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:59'),(376,'Скидочный купон 15% для st.robakidze@gmail.com','25245137','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:59'),(377,'Скидочный купон 15% для homa_ne@mail.ru','89840328','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:00'),(378,'Скидочный купон 15% для anika-tihaya@mail.ru','25340200','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:00'),(379,'Скидочный купон 15% для zoya.menshova@gmail.com','31867498','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:00'),(380,'Скидочный купон 15% для maxim@ivanov.name','90141419','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:00'),(381,'Скидочный купон 15% для miamura@mail.ru','38220392','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:00'),(382,'Скидочный купон 15% для brattseva@gmail.com','72673665','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:00'),(383,'Скидочный купон 15% для polinapanfilova1@gmail.com','63027906','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:00'),(384,'Скидочный купон 15% для nika-sun@mail.ru','91994976','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:00'),(385,'Скидочный купон 15% для ekaterina2029@yandex.ru','69861688','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:01'),(386,'Скидочный купон 15% для olgatugay@gmail.com','74409044','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:01'),(387,'Скидочный купон 15% для mulia7@yandex.ru','34692640','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:01'),(388,'Скидочный купон 15% для olgafedo@mail.ru','63992658','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:02'),(389,'Скидочный купон 15% для ola.terekhova@gmail.com','42448125','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:02'),(390,'Скидочный купон 15% для viktory0608@mail.ru','46435867','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:03'),(391,'Скидочный купон 15% для krmartynova@mail.ru','22547943','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:03'),(392,'Скидочный купон 15% для dimalevenets@gmail.com','22138611','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:03'),(291,'Скидочный купон 15% для Olyasergeeva90@mail.ru','06081295','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:49'),(292,'Скидочный купон 15% для Ata.55@mail.ru','48913356','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:49'),(293,'Скидочный купон 15% для Egor.forty.four@gmail.com','36968014','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:49'),(294,'Скидочный купон 15% для suzie@mail.ru','27339908','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:49'),(295,'Скидочный купон 15% для jlevitski@mail.ru','40552406','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:49'),(296,'Скидочный купон 15% для alyona.azarenko@gmail.com','29642104','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:49'),(297,'Скидочный купон 15% для rudaevaoi@gmail.com','69038170','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:50'),(298,'Скидочный купон 15% для floers@rambler.ru','89368242','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:34:50'),(473,'Скидочный купон 15% для Anna.kim.v@gmail.com','00731930','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:19'),(474,'Скидочный купон 15% для Zoopark2003@inbox.ru','64474557','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:20'),(475,'Скидочный купон 15% для Skv1994@mail.ru','00703138','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:20'),(476,'Скидочный купон 15% для shaasya@gmail.com','31283673','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:20'),(477,'Скидочный купон 15% для katerine909@hotmail.com','64572868','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:21'),(478,'Скидочный купон 15% для 2915652@gmail.com','20564924','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:21'),(479,'Скидочный купон 15% для o-kiseleva@inbox.ru','89319582','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:21'),(480,'Скидочный купон 15% для unique-fille@rambler.ru','50976601','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:21'),(481,'Скидочный купон 15% для polinovka@inbox.ru','94711382','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:21'),(482,'Скидочный купон 15% для mila_chernyshova@hotmail.com','22850988','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:22'),(483,'Скидочный купон 15% для zykkova@mail.ru','81865670','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:22'),(484,'Скидочный купон 15% для volegovaolga@gmail.com','66712620','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:22'),(485,'Скидочный купон 15% для sofiaoleynik@gmail.com','99101922','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:22'),(486,'Скидочный купон 15% для destino1992@mail.ru','09708585','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:22'),(487,'Скидочный купон 15% для one2three4five6@yandex.ru','56101897','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:22'),(488,'Скидочный купон 15% для ganihinadaria@gmail.com','45850959','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:23'),(489,'Скидочный купон 15% для o_l_g_@mail.ru','85983103','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:23'),(490,'Скидочный купон 15% для poverxserdca@gmail.com','07372027','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:35:23'),(775,'Скидочный купон 15% для highsight@mail.ru','12884201','P',15.0000,1,0,0.0000,'2014-07-24','2019-07-23',0,'0',1,'2014-07-24 22:29:12'),(492,'Скидочный купон 15% для dandrey@inbox.ru','90798186','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:45'),(493,'Скидочный купон 15% для alreadyhasbeen@mail.ru','66396316','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:46'),(494,'Скидочный купон 15% для max.oxana@gmail.com','03213477','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:46'),(495,'Скидочный купон 15% для polly.pol@mail.ru','63357576','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:46'),(496,'Скидочный купон 15% для prizzma@inbox.ru','44425170','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:46'),(497,'Скидочный купон 15% для room302@inbox.ru','70933982','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:46'),(498,'Скидочный купон 15% для medvedeva_89@rambler.ru','20353929','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:46'),(499,'Скидочный купон 15% для m-171700@yandex.ru','24388032','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:46'),(500,'Скидочный купон 15% для gal4onok.net@mail.ru','47388984','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:47'),(501,'Скидочный купон 15% для anastasiyasizova@gmail.com','96615327','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:47'),(502,'Скидочный купон 15% для luki4eva@list.ru','34153234','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:47'),(503,'Скидочный купон 15% для inga_berezovets@mail.ru','66246559','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:47'),(504,'Скидочный купон 15% для jul.lukina@gmail.com','27696324','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:47'),(505,'Скидочный купон 15% для alexeeva.ann@gmail.com','98530693','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:47'),(506,'Скидочный купон 15% для mkandlin@mail.ru','00732077','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:47'),(507,'Скидочный купон 15% для annimagines@writeme.com','69013595','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:47'),(508,'Скидочный купон 15% для levelinterior@mail.ru','15378406','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:48'),(509,'Скидочный купон 15% для krestik-13@mail.ru','15911830','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:48'),(510,'Скидочный купон 15% для aleksa_disign@mail.ru','80390965','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:48'),(511,'Скидочный купон 15% для olga-ershkova@mail.ru','85510450','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:48'),(512,'Скидочный купон 15% для tasya_tender@mail.ru','97661621','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:48'),(513,'Скидочный купон 15% для ksuwaksuwa@gmail.com','01208505','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:48'),(514,'Скидочный купон 15% для pokrovskaya.msk@gmail.com','43441989','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:49'),(515,'Скидочный купон 15% для ekaterinapolushina@gmail.com','42936334','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:49'),(516,'Скидочный купон 15% для mailfornatali@mail.ru','09904114','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:49'),(517,'Скидочный купон 15% для vertualochka@rambler.ru','13497441','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:49'),(518,'Скидочный купон 15% для olka2907@rambler.ru','67476150','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:49'),(519,'Скидочный купон 15% для ev-a87@yandex.ru','33286516','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:49'),(520,'Скидочный купон 15% для elenagalieva@list.ru','30570511','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:49'),(521,'Скидочный купон 15% для miamlik@mail.ru','74947343','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:50'),(522,'Скидочный купон 15% для alexsia4@yandex.ru','98959341','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:50'),(523,'Скидочный купон 15% для girlfriend07@mail.ru','66920072','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:50'),(524,'Скидочный купон 15% для Katie_17@bk.ru','92997904','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:50'),(525,'Скидочный купон 15% для Irina-a@list.ru','38791129','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:50'),(526,'Скидочный купон 15% для lalalastyle@hotmail.com','80473779','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:51'),(527,'Скидочный купон 15% для lilianachijova@mail.ru','25025733','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:51'),(528,'Скидочный купон 15% для dianagerald7@gmail.com','82240172','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:51'),(529,'Скидочный купон 15% для elizaveta_khodina91@mail.ru','94194282','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:51'),(530,'Скидочный купон 15% для tosista@gmail.com','11848529','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:51'),(531,'Скидочный купон 15% для shkodina@yahoo.com','02148465','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:51'),(532,'Скидочный купон 15% для mura1331@rambler.ru','58948657','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:51'),(533,'Скидочный купон 15% для aneeechkaa@gmail.com','96527348','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:51'),(534,'Скидочный купон 15% для nicebettygirl@gmail.com','31116305','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:52'),(535,'Скидочный купон 15% для popova77045@yandex.ru','40813467','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:52'),(536,'Скидочный купон 15% для khomutova-nastya@mail.ru','24000568','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:52'),(537,'Скидочный купон 15% для flamma.j2@gmail.com','01963346','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:52'),(538,'Скидочный купон 15% для adevyatkina@gmail.com','34696530','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:52'),(539,'Скидочный купон 15% для voffka.kosyakov@gmail.com','51075636','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:52'),(540,'Скидочный купон 15% для sokolova.art@gmail.com','03597067','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:52'),(541,'Скидочный купон 15% для millernataly@ya.ru','15237690','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:53'),(542,'Скидочный купон 15% для ozudina@gmail.com','05860054','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:53'),(543,'Скидочный купон 15% для theblondesalad@yandex.ru','14050309','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:53'),(544,'Скидочный купон 15% для pavel.taptygin@hotmail.com','54724284','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:53'),(545,'Скидочный купон 15% для gadanilina@yandex.ru','70735624','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:53'),(546,'Скидочный купон 15% для darialukovnikova@gmail.com','00909330','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:53'),(547,'Скидочный купон 15% для chugunova.inna@gmail.com','73465340','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:54'),(548,'Скидочный купон 15% для rmpiskareva@gmail.com','71103839','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:54'),(549,'Скидочный купон 15% для janna_s@mail.ru','80225364','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:54'),(550,'Скидочный купон 15% для k-kati@list.ru','24317603','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:54'),(551,'Скидочный купон 15% для dnatashka@yandex.ru','94946333','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:54'),(552,'Скидочный купон 15% для ksidorova@me.com','34261558','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:54'),(553,'Скидочный купон 15% для asjaf@bk.ru','46088520','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:54'),(554,'Скидочный купон 15% для khairullin@gmail.com','95150189','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:55'),(555,'Скидочный купон 15% для evgenymuho@gmail.com','46209421','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:55'),(556,'Скидочный купон 15% для aakurzina@gmail.com','74788162','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:55'),(557,'Скидочный купон 15% для politelena@mail.ru','65040148','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:55'),(558,'Скидочный купон 15% для ksenia.mekhanik@gmail.com','54255938','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:55'),(559,'Скидочный купон 15% для novikovaks4@gmail.com','54838944','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:55'),(560,'Скидочный купон 15% для shmeleva-project@yandex.ru','30201727','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:55'),(561,'Скидочный купон 15% для m-medvedeva@list.ru','21011486','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:56'),(562,'Скидочный купон 15% для gurova.ann@gmail.com','70128493','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:56'),(563,'Скидочный купон 15% для tmakarenko@yandex.ru','87555998','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:56'),(564,'Скидочный купон 15% для oxana.nv@gmail.com','90897958','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:56'),(565,'Скидочный купон 15% для a.sinenkova@gmail.com','95808665','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:56'),(566,'Скидочный купон 15% для gugnina-ann@mail.ru','56630567','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:56'),(567,'Скидочный купон 15% для dboutko@gmail.com','11169037','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:57'),(568,'Скидочный купон 15% для laktionova.n@gmail.com','00669148','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:57'),(569,'Скидочный купон 15% для fishka114@ya.ru','52737272','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:57'),(570,'Скидочный купон 15% для shablevich@gmail.com','83478948','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:36:58'),(571,'Скидочный купон 15% для alenaalshanova@gmail.com','94484753','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:00'),(572,'Скидочный купон 15% для snezhnost412@gmail.com','70950225','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:00'),(573,'Скидочный купон 15% для tufelka_s@mail.ru','49701429','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:01'),(574,'Скидочный купон 15% для natvi86@mail.ru','65634913','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:01'),(575,'Скидочный купон 15% для gkhisametdinova@mail.ru','35061497','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:01'),(576,'Скидочный купон 15% для ol.baskakova@gmail.com','48249483','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:01'),(577,'Скидочный купон 15% для das-denisov@mail.ru','35239324','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:02'),(578,'Скидочный купон 15% для m.petoukhova@gmail.com','87725857','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:02'),(579,'Скидочный купон 15% для aquiz@yandex.ru','24338292','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:02'),(580,'Скидочный купон 15% для d.burdina@irus.ru','91585307','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:02'),(581,'Скидочный купон 15% для katieromanova@gmail.com','82065102','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:02'),(582,'Скидочный купон 15% для vsmish@gmail.com','77424886','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:02'),(583,'Скидочный купон 15% для ljdanova@mail.ru','21802710','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:02'),(584,'Скидочный купон 15% для tina_46@mail.ru','76729686','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:02'),(585,'Скидочный купон 15% для likeness@mail.ru','77217134','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:03'),(586,'Скидочный купон 15% для cherechnj@list.ru','77514265','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:03'),(587,'Скидочный купон 15% для for-good-mail@yandex.ru','34540547','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:03'),(588,'Скидочный купон 15% для olgapopova@mac.com','10896653','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:03'),(589,'Скидочный купон 15% для a_sima@mail.ru','26496723','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:03'),(590,'Скидочный купон 15% для fayzulina.alina@gmail.com','36468010','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:03'),(591,'Скидочный купон 15% для kartinka987@mail.ru','35430790','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:03'),(592,'Скидочный купон 15% для a-nikulina@inbox.ru','77832254','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:03'),(593,'Скидочный купон 15% для arina_flyugova@gmail.com','89235367','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:04'),(594,'Скидочный купон 15% для kkhas.ks@gmail.com','80369352','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:04'),(595,'Скидочный купон 15% для design@tvoy-svet.ru','79475362','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:04'),(596,'Скидочный купон 15% для malatok2006@yandex.ru','93415942','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:04'),(597,'Скидочный купон 15% для boton4ik83@mail.ru','75518186','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:05'),(598,'Скидочный купон 15% для lo-lo8787@mail.ru','00192609','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:05'),(599,'Скидочный купон 15% для dukoctb@gmail.com','43585193','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:05'),(600,'Скидочный купон 15% для ek-le@yandex.ru','33481798','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:05'),(601,'Скидочный купон 15% для petrovooshka@ukr.net','24994643','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:05'),(602,'Скидочный купон 15% для 19991624@rambler.ru','65180173','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:05'),(603,'Скидочный купон 15% для nadya.skazka@gmail.com','31172005','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:05'),(604,'Скидочный купон 15% для jmm.daria@gmail.com','23239100','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:06'),(605,'Скидочный купон 15% для anastasivanova@gmail.com','48974309','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:06'),(606,'Скидочный купон 15% для n.y.kuz@mail.ru','71661294','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:06'),(607,'Скидочный купон 15% для aksenovajul@list.ru','39058090','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:06'),(608,'Скидочный купон 15% для anastasiakraynikova@gmail.com','20310214','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:06'),(609,'Скидочный купон 15% для sirotkina.ek@yandex.ru','09142038','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:06'),(610,'Скидочный купон 15% для hello.anias@gmail.com','19421264','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:06'),(611,'Скидочный купон 15% для kate.warkentin@gmail.com','15895696','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:06'),(612,'Скидочный купон 15% для vorobeisofya@gmail.com','51753783','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:07'),(613,'Скидочный купон 15% для marina_244@list.ru','68678859','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:07'),(614,'Скидочный купон 15% для tamara.ermand@gmail.com','79171601','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:07'),(615,'Скидочный купон 15% для mikhailovayana@list.ru','17052807','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:07'),(616,'Скидочный купон 15% для olbelykh@gmail.com','97113839','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:07'),(617,'Скидочный купон 15% для horeklove@gmail.com','69637023','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:07'),(618,'Скидочный купон 15% для lusiollax@gmail.com','82987997','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:07'),(619,'Скидочный купон 15% для stasy_k@mail.ru','59166135','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:07'),(620,'Скидочный купон 15% для el1925@mail.ru','73501886','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:07'),(621,'Скидочный купон 15% для patimatisaeva69@mail.ru','73933061','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:08'),(622,'Скидочный купон 15% для patimatisaeva69@mail.tu','25993757','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:08'),(623,'Скидочный купон 15% для bns-1@yandex.ru','56317553','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:08'),(624,'Скидочный купон 15% для i.velichko102@gmail.com','80287043','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:08'),(625,'Скидочный купон 15% для anya.eroshenko@gmail.com','32652154','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:08'),(626,'Скидочный купон 15% для sunnygirl3110@gmail.ru','53270745','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:08'),(627,'Скидочный купон 15% для whlhrtd@gmail.com','27691019','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:08'),(628,'Скидочный купон 15% для napalkova-v@mail.ru','03673905','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:08'),(629,'Скидочный купон 15% для d.ivanova1993@mail.ru','15036461','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:08'),(630,'Скидочный купон 15% для 9266812535@bk.ru','78874116','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:08'),(631,'Скидочный купон 15% для tinikon@mail.ru','87496576','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:09'),(632,'Скидочный купон 15% для fonina.olga@gmail.com','82201152','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:09'),(633,'Скидочный купон 15% для sofja-ganicheva@rambler.ru','64428024','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:09'),(634,'Скидочный купон 15% для katik.86@mail.ru','79100258','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:09'),(635,'Скидочный купон 15% для notsimple84@mail.ru','89643290','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:09'),(636,'Скидочный купон 15% для Tanya.makhnovskaya@gmail.com','41042457','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:09'),(637,'Скидочный купон 15% для Ls6400057@yandex.ru','79948084','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:09'),(638,'Скидочный купон 15% для eovikova@li.ru','98390867','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:09'),(639,'Скидочный купон 15% для eaytuganova@gmail.com','61093996','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:10'),(640,'Скидочный купон 15% для mrs.happy.platonova@mail.ru','98002578','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:10'),(641,'Скидочный купон 15% для artamonova2@yandex.ru','35205944','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:10'),(642,'Скидочный купон 15% для Alexandra.cake@mail.ru','77264830','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:10'),(643,'Скидочный купон 15% для L_daxa@mail.ru','92910779','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:10'),(644,'Скидочный купон 15% для M_dresvyanskaya@mail.ru','56861543','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:10'),(645,'Скидочный купон 15% для anastasiyasizova@gmail.com','95344671','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:10'),(646,'Скидочный купон 15% для tarskix@gmail.com','38766964','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:11'),(647,'Скидочный купон 15% для abitantebox@gmail.com','15511196','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:11'),(648,'Скидочный купон 15% для p.chibisova@gmail.com','77171400','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:11'),(649,'Скидочный купон 15% для nutsushka@gmail.com','92328930','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:11'),(650,'Скидочный купон 15% для mariazarodova@gmail.com','79637268','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:11'),(651,'Скидочный купон 15% для anastasiarom@bk.ru','60871727','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:11'),(652,'Скидочный купон 15% для designisthepower@yandex.ru','33446335','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:11'),(653,'Скидочный купон 15% для ikrainov@gmail.com','46625922','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:11'),(654,'Скидочный купон 15% для ugrozabusam@gmail.com','77448914','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:12'),(655,'Скидочный купон 15% для vol4ok@gmail.com','98004167','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:12'),(656,'Скидочный купон 15% для irinagermanovna1@gmail.com','39092336','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:12'),(657,'Скидочный купон 15% для deepl@me.com','99737844','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:12'),(658,'Скидочный купон 15% для mmatrice@gmail.com','58727755','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:12'),(659,'Скидочный купон 15% для Helen-insar@yandex.ru','55595058','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:12'),(660,'Скидочный купон 15% для Inna.sid@gmail.com','95718066','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:12'),(661,'Скидочный купон 15% для lizavetak@yandex.ru','92950294','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:12'),(662,'Скидочный купон 15% для kisatich@gmail.com','95651106','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:13'),(663,'Скидочный купон 15% для viktoriyaslavina@mail.ru','54404983','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:13'),(664,'Скидочный купон 15% для anet944@rambler.ru','34313961','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:13'),(665,'Скидочный купон 15% для sinazina@gmail.com','05606435','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:13'),(666,'Скидочный купон 15% для fairysfair@gmail.com','99009054','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:13'),(667,'Скидочный купон 15% для tischenko.natalia@gmail.com','48386009','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:13'),(668,'Скидочный купон 15% для kv_d@rambler.ru','43962571','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:13'),(669,'Скидочный купон 15% для aleksandrahome@gmail.com','92156304','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:14'),(670,'Скидочный купон 15% для klevochkina@hotmail.com','19309732','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:14'),(671,'Скидочный купон 15% для popovai@mail.ru','55915998','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:14'),(672,'Скидочный купон 15% для aschedr@gmail.com','28432041','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:14'),(673,'Скидочный купон 15% для nadine07@inbox.ru','24587418','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:14'),(674,'Скидочный купон 15% для galina.kasjanova@gmail.com','34711925','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:14'),(675,'Скидочный купон 15% для mvalenso@gmail.com','41599460','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:15'),(676,'Скидочный купон 15% для jusika_peps@mail.ru','10339631','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:15'),(677,'Скидочный купон 15% для herbina_06@mail.ru','98851924','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:15'),(678,'Скидочный купон 15% для Ekaterina-l@yandex.ru','39437681','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:15'),(679,'Скидочный купон 15% для Jen1a@list.ru','63956547','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:15'),(680,'Скидочный купон 15% для An.baryshnikova@gmail.com','47022231','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:15'),(681,'Скидочный купон 15% для O_l_g_@mail.ru','91509732','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:15'),(682,'Скидочный купон 15% для Irina.chekhonina@gmail.com','56422237','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:15'),(683,'Скидочный купон 15% для Gulina.nv@gmail.com','41105578','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:15'),(684,'Скидочный купон 15% для sashaintouch@gmail.com','16037336','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:15'),(685,'Скидочный купон 15% для jumangyster@gmail.com','38524839','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:16'),(686,'Скидочный купон 15% для asya.krumina@gmail.com','46158311','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:16'),(687,'Скидочный купон 15% для mamapolinosa@gmail.com','42186767','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:16'),(688,'Скидочный купон 15% для elkabgk@gmail.com','26998150','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:16'),(689,'Скидочный купон 15% для anutason@gmail.com','80127410','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:16'),(690,'Скидочный купон 15% для alagich.k@gmail.com','92464578','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:16'),(691,'Скидочный купон 15% для tatianademidova@mail.ru','67524196','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:16'),(692,'Скидочный купон 15% для mastusha@yandex.ru','68549947','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:37:16'),(693,'Скидочный купон 15% для einini@yandex.ru','94857956','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:03'),(694,'Скидочный купон 15% для 9262237403@mail.ru','09243919','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:03'),(695,'Скидочный купон 15% для katizade@icloud.com','66196952','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:03'),(696,'Скидочный купон 15% для rimka_52@hotmail.com','79558816','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:03'),(697,'Скидочный купон 15% для architect.sukhanova@gmail.com','29098557','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:04'),(698,'Скидочный купон 15% для arinab@list.ru','37065140','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:04'),(699,'Скидочный купон 15% для 0002494@gmail.com','65924330','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:04'),(700,'Скидочный купон 15% для nsinayskaya@mail.ru','28496548','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:04'),(701,'Скидочный купон 15% для emingazova@gmail.com','44618170','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:04'),(702,'Скидочный купон 15% для buasha1@ya.ru','77527923','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:04'),(703,'Скидочный купон 15% для Louisa_o@msn.com','31463665','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:04'),(704,'Скидочный купон 15% для Orange.free@mail.ru','40394677','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:04'),(705,'Скидочный купон 15% для blinalla@rambler.ru','93873560','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:05'),(706,'Скидочный купон 15% для brownbabies@gmail.com','11289302','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:05'),(707,'Скидочный купон 15% для yanafiesta1982@yandex.ru','33869303','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:05'),(708,'Скидочный купон 15% для panova.nataliiia@gmail.com','23268827','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:05'),(709,'Скидочный купон 15% для tanuki12@rambler.ru','00334935','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:05'),(710,'Скидочный купон 15% для kitanna@yandex.ru','04297209','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:05'),(711,'Скидочный купон 15% для pankovalena88@gmail.com','57540561','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:08'),(712,'Скидочный купон 15% для ikatrini@gmail.com','77655825','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:08'),(713,'Скидочный купон 15% для Dmitry.monarev@gmail.com','74713052','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:08'),(714,'Скидочный купон 15% для Bubnilka1@yandex.ru','36098082','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:08'),(715,'Скидочный купон 15% для Katja-shmakova@mail.ru','72567173','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:09'),(716,'Скидочный купон 15% для vitakareva@gmail.com','82720967','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:09'),(717,'Скидочный купон 15% для evgeniy.karev@bk.ru','33752274','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:09'),(718,'Скидочный купон 15% для kate_gg@mail.ru','77346063','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:09'),(719,'Скидочный купон 15% для timatio@mail.ru','21891418','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:10'),(720,'Скидочный купон 15% для lyubov.polimatidi@gmail.com','68966528','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:10'),(721,'Скидочный купон 15% для a-nikulina@inbox.ru','79390037','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:10'),(722,'Скидочный купон 15% для slastena2358@mail.ru','65125647','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:10'),(723,'Скидочный купон 15% для dos07@mail.ru','71575640','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:10'),(724,'Скидочный купон 15% для praslovan@bk.ru','43607784','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:10'),(725,'Скидочный купон 15% для nesterova-natalia@yandex.ru','60260425','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:10'),(726,'Скидочный купон 15% для Pika_ch@mail.ru','92738004','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:11'),(727,'Скидочный купон 15% для a.dyuzheva@inbox.ru','15150454','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:11'),(728,'Скидочный купон 15% для Janefilimonova@gmail.com','70347073','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:11'),(729,'Скидочный купон 15% для Darya.Efimenko@fesmos.ru','09893941','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:11'),(730,'Скидочный купон 15% для nika.photo@mail.ru','10499330','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:11'),(731,'Скидочный купон 15% для shmeleva-project@yandex.ru','73577003','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:12'),(732,'Скидочный купон 15% для super.gruzdeva@yandex.ru','03663382','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:12'),(733,'Скидочный купон 15% для Aliceinwonderlandr@mail.ru','25144545','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:12'),(734,'Скидочный купон 15% для Nns2012@inbox.ru','47330527','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:12'),(735,'Скидочный купон 15% для ganaarzumanova@yandex.ru','77346365','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:13'),(736,'Скидочный купон 15% для olkagalitskaya@gmail.com','52075896','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:13'),(737,'Скидочный купон 15% для Mypovod@gmail.com','30974317','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:13'),(738,'Скидочный купон 15% для aleksandra.rudaskova@rambler.ru','04098255','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:13'),(739,'Скидочный купон 15% для dos07@mail.ru','88831475','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:13'),(740,'Скидочный купон 15% для kadelinka@yandex.ru','57295157','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:13'),(741,'Скидочный купон 15% для vishny_1992@mail.ru','03446415','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:14'),(742,'Скидочный купон 15% для Basova.maria@gmail.com','70351808','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:14'),(743,'Скидочный купон 15% для 1107800ai@gmail.ru','67060715','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:14'),(744,'Скидочный купон 15% для abramova_valentine@mail.ru','42483853','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:14'),(745,'Скидочный купон 15% для s.f.elf@mail.ru','18662709','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:14'),(746,'Скидочный купон 15% для roll.up.roll.up@gmail.com','63471347','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:14'),(747,'Скидочный купон 15% для olikkrolik007@gmail.com','94291234','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:14'),(748,'Скидочный купон 15% для natalie_smile@mail.ru','46174694','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:15'),(749,'Скидочный купон 15% для stepanchenko07@gmail.com','35051037','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:15'),(750,'Скидочный купон 15% для e-sosnovskaya@ya.ru','36339698','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:15'),(751,'Скидочный купон 15% для s.semipyatnov@gmail.com','01613946','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:15'),(752,'Скидочный купон 15% для stomp77@mail.ru','55380122','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:15'),(753,'Скидочный купон 15% для i.otunchiev@gmail.com','62761923','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:15'),(754,'Скидочный купон 15% для tatiana.yakushkina@gmail.com','54640510','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:15'),(755,'Скидочный купон 15% для valechka.che@gmail.com','56074439','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:15'),(756,'Скидочный купон 15% для Kuzneas@gmail.com','86676892','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:16'),(757,'Скидочный купон 15% для Koledaolya@yandex.ru','95794929','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:16'),(758,'Скидочный купон 15% для Krilatskiehills@gmail.com','38332327','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:16'),(759,'Скидочный купон 15% для Liliya_zhukova@mail.ru','82425602','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:16'),(760,'Скидочный купон 15% для lenaandalena1@rambler.ru','16973882','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:16'),(761,'Скидочный купон 15% для Elenagalieva@list.ru','35174256','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:17'),(762,'Скидочный купон 15% для Ostrovnayae@mail.ru','97910078','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:17'),(763,'Скидочный купон 15% для margaritka06@mail.ru','20066087','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:17'),(764,'Скидочный купон 15% для elizaveta_khodina91@mail.ru','57484297','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:17'),(765,'Скидочный купон 15% для katbackett@gmail.com','70301860','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:17'),(766,'Скидочный купон 15% для skvselena@gmail.com','44144815','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:17'),(767,'Скидочный купон 15% для ludmila-sercons@mail.ru','70139804','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:17'),(768,'Скидочный купон 15% для anastasia@avizhich.com','53184051','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:18'),(769,'Скидочный купон 15% для Janisj@mail.ru','97004608','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:18'),(770,'Скидочный купон 15% для Sofia.dozorets@gmail.com','91138175','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:18'),(771,'Скидочный купон 15% для T.chichina@gmail.com','17795629','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:19'),(772,'Скидочный купон 15% для Anya_mishina@mail.ru','93723132','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:19'),(773,'Скидочный купон 15% для Mayami_beach@mail.ru','82218187','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:19'),(774,'Скидочный купон 15% для Kichenko.maria@gmail.com','29999639','P',15.0000,1,0,0.0000,'2014-07-23','2019-07-22',0,'0',1,'2014-07-23 00:38:20'),(776,'Скидочный купон 15% для shmelevstas@gmail.com','77625558','P',15.0000,1,0,0.0000,'2014-07-24','2019-07-23',0,'0',1,'2014-07-24 22:29:12'),(777,'Скидочный купон 15% для katerinakulish23@mail.ru','57629244','P',15.0000,1,0,0.0000,'2014-07-24','2019-07-23',0,'0',1,'2014-07-24 22:29:12'),(778,'Скидочный купон 15% для lizavetak@yandex.ru','03422363','P',15.0000,1,0,0.0000,'2014-07-24','2019-07-23',0,'0',1,'2014-07-24 22:29:12'),(779,'Скидочный купон 15% для natalixen_5@mail.ru','43184081','P',15.0000,1,0,0.0000,'2014-07-24','2019-07-23',0,'0',1,'2014-07-24 22:29:12'),(780,'Скидочный купон 15% для anya-bzzz@mail.ru','63318783','P',15.0000,1,0,0.0000,'2014-07-24','2019-07-23',0,'0',1,'2014-07-24 22:29:12'),(781,'Скидочный купон 15% для annsokolova94@bk.ru','43425854','P',15.0000,1,0,0.0000,'2014-07-24','2019-07-23',0,'0',1,'2014-07-24 22:29:12'),(782,'Скидочный купон 15% для klevochkina@hotmail.com','09622145','P',15.0000,1,0,0.0000,'2014-07-24','2019-07-23',0,'0',1,'2014-07-24 22:29:13'),(783,'Скидочный купон 15% для Tatiana.mushaeva@gmail.com','44284080','P',15.0000,1,0,0.0000,'2014-07-24','2019-07-23',0,'0',1,'2014-07-24 22:29:13'),(784,'Скидочный купон 15% для sofiaoleynik@gmail.com','30007720','P',15.0000,1,0,0.0000,'2014-07-24','2019-07-23',0,'0',1,'2014-07-24 22:29:13'),(785,'Скидочный купон 10% для lyapunovaa@list.ru','bHlhcHVub','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:44:08'),(786,'Скидочный купон 10% для lyapunovaa@list.ru','bHlhcHVub','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:47:15'),(787,'Скидочный купон 10% для lyapunovaa@list.ru','bHlhcHVub','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:48:09'),(788,'Скидочный купон 10% для lyapunovaa@list.ru','bHlhcHVub','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:51:05'),(789,'Скидочный купон 10% для lyapunovaa@list.ru','bHlhcHVub','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:53:11'),(790,'Скидочный купон 10% для zudilina@gmail.com','enVkaWxpb','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:53:11'),(791,'Скидочный купон 10% для zudilina@gmail.com','enVkaWxpb','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:24'),(792,'Скидочный купон 10% для Indima_karasevi@mail.ru','SW5kaW1hX','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:24'),(793,'Скидочный купон 10% для daryabalandina@gmail.com','ZGFyeWFiY','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:24'),(794,'Скидочный купон 10% для elena-zam@yandex.ru','ZWxlbmEte','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:24'),(795,'Скидочный купон 10% для yulews@mail.ru','eXVsZXdzQ','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:24'),(796,'Скидочный купон 10% для anulya29@mail.ru','YW51bHlhM','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:24'),(797,'Скидочный купон 10% для S_888@list.ru','U184ODhAb','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:24'),(798,'Скидочный купон 10% для Malekovalily@gmail.com','TWFsZWtvd','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:24'),(799,'Скидочный купон 10% для A84anna@yandex.ru','QTg0YW5uY','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:24'),(800,'Скидочный купон 10% для K_i_tty@mail.ru','S19pX3R0e','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:24'),(801,'Скидочный купон 10% для d.jefferson@mail.ru','ZC5qZWZmZ','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:24'),(802,'Скидочный купон 10% для dashylia33@gmail.com','ZGFzaHlsa','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:24'),(803,'Скидочный купон 10% для asutka.04.95@mail.ru','YXN1dGthL','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:24'),(804,'Скидочный купон 10% для al.kitaeva2015@yandex.ru','YWwua2l0Y','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:24'),(805,'Скидочный купон 10% для mirzoevasv@mail.ru','bWlyem9ld','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:25'),(806,'Скидочный купон 10% для maseika@yandex.ru','bWFzZWlrY','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:25'),(807,'Скидочный купон 10% для Liza_saveleva@list.ru','TGl6YV9zY','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:25'),(808,'Скидочный купон 10% для Kropyleva.rsm@yandex.ru','S3JvcHlsZ','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:25'),(809,'Скидочный купон 10% для iphone738@gmail.com','aXBob25lN','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:25'),(810,'Скидочный купон 10% для Viestyle@mail.ru','Vmllc3R5b','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:25'),(811,'Скидочный купон 10% для anie_k_s@mail.ru','YW5pZV9rX','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:25'),(812,'Скидочный купон 10% для e_parshina@bk.ru','ZV9wYXJza','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:25'),(813,'Скидочный купон 10% для annet.vasileva@mail.ru','YW5uZXQud','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:25'),(814,'Скидочный купон 10% для kaneht@ya.ru','a2FuZWh0Q','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:25'),(815,'Скидочный купон 10% для oayaseneva@inbox.ru','b2F5YXNlb','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:25'),(816,'Скидочный купон 10% для Asemenova@yahoo.com','QXNlbWVub','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:25'),(817,'Скидочный купон 10% для Lovefunsmile@mail.ru','TG92ZWZ1b','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:25'),(818,'Скидочный купон 10% для Media.larissa@mail.ru','TWVkaWEub','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:25'),(819,'Скидочный купон 10% для ymashkova86@mail.ru','eW1hc2hrb','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:25'),(820,'Скидочный купон 10% для Eumisam@yandex.ru','RXVtaXNhb','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:25'),(821,'Скидочный купон 10% для Yanakabanova@yandex.ru','WWFuYWthY','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:25'),(822,'Скидочный купон 10% для Zaira.khanova@icloud.com','WmFpcmEua','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:25'),(823,'Скидочный купон 10% для ivanzagoskin@inbox.ru','aXZhbnphZ','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:26'),(824,'Скидочный купон 10% для vodolagina.diana@mail.ru','dm9kb2xhZ','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:26'),(825,'Скидочный купон 10% для 4215599@mail.ru','NDIxNTU5O','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:26'),(826,'Скидочный купон 10% для Soldatkina.elya@mail.ru','U29sZGF0a','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:26'),(827,'Скидочный купон 10% для jassy16mur@gmail.com','amFzc3kxN','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:26'),(828,'Скидочный купон 10% для Asiyatabueva@yandex.ru','QXNpeWF0Y','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:26'),(829,'Скидочный купон 10% для tterekhova@gmail.com','dHRlcmVra','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:26'),(830,'Скидочный купон 10% для nastya-shuv@mail.ru','bmFzdHlhL','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:26'),(831,'Скидочный купон 10% для Calvaire7@yandex.ru','Q2FsdmFpc','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:26'),(832,'Скидочный купон 10% для a-mama-eva@mail.ru','YS1tYW1hL','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:26'),(833,'Скидочный купон 10% для nataly-13@list.ru','bmF0YWx5L','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:26'),(834,'Скидочный купон 10% для Lyudmila_bass@mail.ru','THl1ZG1pb','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:26'),(835,'Скидочный купон 10% для maksim17091988@yandex.ru','bWFrc2ltM','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:26'),(836,'Скидочный купон 10% для Insane_vt@bk.ru','SW5zYW5lX','P',10.0000,1,0,0.0000,'2014-10-28','2019-10-27',0,'0',1,'2014-10-28 22:56:26');
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_category`
--

DROP TABLE IF EXISTS `coupon_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_category`
--

LOCK TABLES `coupon_category` WRITE;
/*!40000 ALTER TABLE `coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_history`
--

DROP TABLE IF EXISTS `coupon_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_history`
--

LOCK TABLES `coupon_history` WRITE;
/*!40000 ALTER TABLE `coupon_history` DISABLE KEYS */;
INSERT INTO `coupon_history` VALUES (5,721,241,21,-750.0000,'2014-08-30 22:43:48');
/*!40000 ALTER TABLE `coupon_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_product`
--

DROP TABLE IF EXISTS `coupon_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_product`
--

LOCK TABLES `coupon_product` WRITE;
/*!40000 ALTER TABLE `coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (1,'Рубль','RUB','','p','0',1.00000000,1,'2014-11-17 16:49:30');
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field`
--

DROP TABLE IF EXISTS `custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  `location` varchar(32) NOT NULL,
  `position` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field`
--

LOCK TABLES `custom_field` WRITE;
/*!40000 ALTER TABLE `custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_description`
--

DROP TABLE IF EXISTS `custom_field_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_description`
--

LOCK TABLES `custom_field_description` WRITE;
/*!40000 ALTER TABLE `custom_field_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_to_customer_group`
--

DROP TABLE IF EXISTS `custom_field_to_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field_to_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_to_customer_group`
--

LOCK TABLES `custom_field_to_customer_group` WRITE;
/*!40000 ALTER TABLE `custom_field_to_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field_to_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_value`
--

DROP TABLE IF EXISTS `custom_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_value`
--

LOCK TABLES `custom_field_value` WRITE;
/*!40000 ALTER TABLE `custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_value_description`
--

DROP TABLE IF EXISTS `custom_field_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_value_description`
--

LOCK TABLES `custom_field_value_description` WRITE;
/*!40000 ALTER TABLE `custom_field_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,0,'Илья Константинович','Ульянов','ilya.artamonov73@gmail.com','asd','','2c2cdb36b4df671d1d045d8f5dc83c6e4e9d4949','87315bd92','a:0:{}','',0,1,1,'::1',1,1,'','2014-06-10 18:52:51'),(2,0,'алёна олеговна','Логоновская','mu-bro@mail.ru2','+7 (908) 476 8744','','666c822c755157c8587b611c834de1b838e5e983','b0970a03d','a:1:{i:40;i:3;}','a:0:{}',0,2,1,'::1',1,1,'','2014-06-11 10:21:09'),(11,0,'sdfs','','ilya.artamono22v@b-leader.ru','+7 (322) 423 4242','','5bf5fb71e45205073a4039600052c963800156e3','ffc01cd0a','a:1:{i:40;i:1;}','',0,11,1,'::1',1,1,'','2014-06-25 00:48:18'),(4,0,'Илья','','mu-bro@mail.ru','+7 (123) 123 1231','','da26f8bab5b552c78a238280c92654dea3a977f2','99cc602d2','a:1:{i:40;i:2;}','',0,4,1,'::1',1,1,'','2014-06-23 12:35:29'),(17,0,'Artamonov','','ilya.artamonov@b-leader.ru','+7 (123) 123 1231','','9ec361e93163c7abf18ced08b790fb4e06b04797','7ce3e4e11','a:1:{i:40;i:2;}','',0,17,1,'::1',1,1,'','2014-07-18 19:41:08'),(10,0,'sdfsdf','','ilya.asdfrtamonov@b-leader.ru','+7 (324) 534 5353','','0e9f56458862d0ce7c048469c67220315a98abc5','e2b7a748c','a:1:{i:40;i:1;}','',0,10,1,'::1',1,1,'','2014-06-25 00:45:17'),(13,0,'ilya','','ilya.arta22monov@b-leader.ru','+7 (232) 342 3423','','f401b51543ab49183cab5e8680a338dd3df00023','e1aeb32f8','a:1:{i:28;i:1;}','',0,13,1,'::1',1,1,'','2014-06-25 01:53:18'),(18,0,'etst','','te324st@test.test','+7 (234) 234 2342','','6da2beea43f75c2f992591ac51c0bfd0af3c5053','7ad4836c6','a:1:{i:40;i:1;}','',0,18,1,'::1',1,1,'','2014-08-30 21:49:26'),(19,0,'werwer','','teswert@test.test','+7 (234) 234 2423','','3cc59ddc0f8a12b7f1e0710117f344ac56e0c880','2206f8f67','a:1:{i:40;i:1;}','',0,19,1,'::1',1,1,'','2014-08-30 21:57:21'),(20,0,'234234','','tes324t@test.test','+7 (343) 242 3423','','e0f7670a64dc992d6e97b359cba7e438f15a306c','e773d99d4','a:1:{i:40;i:1;}','',0,20,1,'::1',1,1,'','2014-08-30 21:59:44'),(21,0,'123','','test123@test.test','+7 (123) 123 1231','','5dbca6dfa9d4dbc02d95a7eca7dc0fca8d192f2a','59dd6acd9','a:0:{}','',0,21,1,'::1',1,1,'','2014-08-30 22:04:39'),(22,0,'Анна ','','windswept@list.ru','+7 (999) 999 9999','','a14a373dee8510750e288683e288e975faff9184','b4185d186','a:6:{i:40;i:1;i:67;i:4;i:41;i:1;i:71;i:1;i:73;i:2;i:72;i:1;}','',0,22,1,'178.238.175.168',1,1,'','2014-09-25 17:04:04'),(23,0,'Anna','','hahhh@mail.ru','+7 (888) 888 8888','','695b1882a1a70a3027fa2041fc180c93ec391213','738cfcfc6','a:0:{}','',0,23,1,'178.238.175.168',1,1,'','2014-09-25 17:07:27'),(24,0,'rfnz','','wjdh@mail.ru','+7 (777) 777 7777','','281b2b619bd14fb6f4b18854c90f8365ae5ccb6f','9cffd3f05','a:0:{}','',0,24,1,'178.238.175.168',1,1,'','2014-09-25 17:08:15');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_ban_ip`
--

DROP TABLE IF EXISTS `customer_ban_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`customer_ban_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_ban_ip`
--

LOCK TABLES `customer_ban_ip` WRITE;
/*!40000 ALTER TABLE `customer_ban_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_ban_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_field`
--

DROP TABLE IF EXISTS `customer_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_field` (
  `customer_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_id`,`custom_field_id`,`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_field`
--

LOCK TABLES `customer_field` WRITE;
/*!40000 ALTER TABLE `customer_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_group`
--

DROP TABLE IF EXISTS `customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `company_id_display` int(1) NOT NULL,
  `company_id_required` int(1) NOT NULL,
  `tax_id_display` int(1) NOT NULL,
  `tax_id_required` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_group`
--

LOCK TABLES `customer_group` WRITE;
/*!40000 ALTER TABLE `customer_group` DISABLE KEYS */;
INSERT INTO `customer_group` VALUES (1,0,0,0,0,0,1);
/*!40000 ALTER TABLE `customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_group_description`
--

DROP TABLE IF EXISTS `customer_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_group_description`
--

LOCK TABLES `customer_group_description` WRITE;
/*!40000 ALTER TABLE `customer_group_description` DISABLE KEYS */;
INSERT INTO `customer_group_description` VALUES (1,1,'Default','test');
/*!40000 ALTER TABLE `customer_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_history`
--

DROP TABLE IF EXISTS `customer_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_history`
--

LOCK TABLES `customer_history` WRITE;
/*!40000 ALTER TABLE `customer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_ip`
--

DROP TABLE IF EXISTS `customer_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_ip`
--

LOCK TABLES `customer_ip` WRITE;
/*!40000 ALTER TABLE `customer_ip` DISABLE KEYS */;
INSERT INTO `customer_ip` VALUES (1,1,'::1','2014-06-10 18:52:52'),(2,2,'::1','2014-06-11 10:21:10'),(10,10,'::1','2014-06-25 00:45:17'),(4,4,'::1','2014-06-23 12:35:30'),(17,17,'::1','2014-07-18 19:41:09'),(11,11,'::1','2014-06-25 00:48:18'),(13,13,'::1','2014-06-25 01:53:19'),(18,18,'::1','2014-08-30 21:49:27'),(19,19,'::1','2014-08-30 21:57:22'),(20,20,'::1','2014-08-30 21:59:45'),(21,21,'::1','2014-08-30 22:04:40'),(22,22,'178.238.175.168','2014-09-25 17:04:08'),(23,23,'178.238.175.168','2014-09-25 17:07:40'),(24,24,'178.238.175.168','2014-09-25 17:08:26');
/*!40000 ALTER TABLE `customer_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_online`
--

DROP TABLE IF EXISTS `customer_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_online`
--

LOCK TABLES `customer_online` WRITE;
/*!40000 ALTER TABLE `customer_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_reward`
--

DROP TABLE IF EXISTS `customer_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_reward`
--

LOCK TABLES `customer_reward` WRITE;
/*!40000 ALTER TABLE `customer_reward` DISABLE KEYS */;
INSERT INTO `customer_reward` VALUES (7,2,0,'Заказ №: 158',-1,'2014-07-03 23:32:56'),(6,2,43,'№ заказа: 43',700,'2014-06-19 14:17:49'),(11,17,0,'За участие в конкурсе',100,'2014-07-18 20:10:49'),(12,17,0,'12',10000,'2014-07-18 20:12:58');
/*!40000 ALTER TABLE `customer_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_transaction`
--

DROP TABLE IF EXISTS `customer_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_transaction`
--

LOCK TABLES `customer_transaction` WRITE;
/*!40000 ALTER TABLE `customer_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dates`
--

DROP TABLE IF EXISTS `dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dates`
--

LOCK TABLES `dates` WRITE;
/*!40000 ALTER TABLE `dates` DISABLE KEYS */;
INSERT INTO `dates` VALUES (23,'23.07.2014'),(24,'27.06.2014'),(25,'30.06.2014'),(26,'24.06.2014');
/*!40000 ALTER TABLE `dates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download`
--

DROP TABLE IF EXISTS `download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download`
--

LOCK TABLES `download` WRITE;
/*!40000 ALTER TABLE `download` DISABLE KEYS */;
/*!40000 ALTER TABLE `download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download_description`
--

DROP TABLE IF EXISTS `download_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download_description`
--

LOCK TABLES `download_description` WRITE;
/*!40000 ALTER TABLE `download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `download_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extension`
--

DROP TABLE IF EXISTS `extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=435 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extension`
--

LOCK TABLES `extension` WRITE;
/*!40000 ALTER TABLE `extension` DISABLE KEYS */;
INSERT INTO `extension` VALUES (23,'payment','cod'),(22,'total','shipping'),(57,'total','sub_total'),(58,'total','tax'),(59,'total','total'),(428,'module','menu'),(390,'total','credit'),(387,'shipping','flat'),(349,'total','handling'),(350,'total','low_order_fee'),(389,'total','coupon'),(432,'payment','liqpay'),(431,'shipping','free'),(393,'total','reward'),(398,'total','voucher'),(407,'payment','free_checkout'),(429,'module','banner'),(430,'module','onecheckout'),(433,'shipping','pickup'),(434,'module','slideshow');
/*!40000 ALTER TABLE `extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filter`
--

DROP TABLE IF EXISTS `filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filter`
--

LOCK TABLES `filter` WRITE;
/*!40000 ALTER TABLE `filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filter_description`
--

DROP TABLE IF EXISTS `filter_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filter_description`
--

LOCK TABLES `filter_description` WRITE;
/*!40000 ALTER TABLE `filter_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `filter_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filter_group`
--

DROP TABLE IF EXISTS `filter_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filter_group`
--

LOCK TABLES `filter_group` WRITE;
/*!40000 ALTER TABLE `filter_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `filter_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filter_group_description`
--

DROP TABLE IF EXISTS `filter_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filter_group_description`
--

LOCK TABLES `filter_group_description` WRITE;
/*!40000 ALTER TABLE `filter_group_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `filter_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geo_zone`
--

DROP TABLE IF EXISTS `geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geo_zone`
--

LOCK TABLES `geo_zone` WRITE;
/*!40000 ALTER TABLE `geo_zone` DISABLE KEYS */;
INSERT INTO `geo_zone` VALUES (3,'НДС','Облагаемые НДС','2010-02-26 22:33:24','2009-01-06 23:26:25');
/*!40000 ALTER TABLE `geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information`
--

DROP TABLE IF EXISTS `information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information`
--

LOCK TABLES `information` WRITE;
/*!40000 ALTER TABLE `information` DISABLE KEYS */;
INSERT INTO `information` VALUES (3,1,3,1),(4,1,1,1),(5,1,4,1),(6,1,2,1),(7,0,0,1),(8,0,0,1),(9,0,0,1),(10,0,0,1),(11,0,0,1),(12,0,0,1);
/*!40000 ALTER TABLE `information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information_description`
--

DROP TABLE IF EXISTS `information_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `left_description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `need_left_description` int(1) NOT NULL DEFAULT '0',
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_h1` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information_description`
--

LOCK TABLES `information_description` WRITE;
/*!40000 ALTER TABLE `information_description` DISABLE KEYS */;
INSERT INTO `information_description` VALUES (4,1,'О нас','&lt;p&gt;\r\n	О нас&lt;/p&gt;\r\n','',0,'','','',''),(3,1,'Политика Безопасности','&lt;p&gt;\r\n	Политика Безопасности&lt;/p&gt;\r\n','',0,'','','',''),(6,1,'Доставка цветов','&lt;p&gt;\r\n	&lt;strong&gt;Обратите внимание на правила доставки:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;div class=&quot;image_border&quot;&gt;\r\n	&lt;img alt=&quot;&quot; src=&quot;http://kofc.ru/florentinproject/image/data/flowers/border.png&quot; style=&quot;width: 562px; height: 250px; margin-bottom: 20px;&quot; /&gt;\r\n	&lt;div class=&quot;border_text&quot;&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;При оформлении заказа до 17.00,&lt;br /&gt;\r\n		мы осуществим доставку на следующий день.&lt;br /&gt;\r\n		Все заказы, оформленные позже указанного&lt;br /&gt;\r\n		времени, доставляются через день.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		В пределах МКАД - БЕСПЛАТНО.&lt;br /&gt;\r\n		За пределами МКАД - уточните&lt;br /&gt;\r\n		стоимость при формировании заказа.&lt;/span&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;\r\n	Хотим сообщить, что мы всегда рады сделать исключение! Позвоните нам и\\или пришлите письмо с темой “Срочная доставка!” на почту support@florentinproject.com, мы обязательно с Вами свяжемся и попробуем осуществить Ваш заказ раньше указанного срока, если это возможно!&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;em&gt;Если Вы предпочитаете более позднюю доставку, то всего лишь выберете необходимый день при оформлении заказа. Предоставьте нам всю необходимую информацию при оформлении заказа, и мы гарантируем надежность нашей услуги.&lt;/em&gt;&lt;/div&gt;\r\n&lt;style type=&quot;text/css&quot;&gt;\r\n.image_border {\r\nposition:relative;\r\ndisplay: inline-block;\r\n}\r\n.border_text {\r\nposition: absolute;\r\nright: 50px;\r\ntop: 50px;\r\nwidth: 290px;\r\n}&lt;/style&gt;\r\n','&lt;div&gt;\r\n	Свежие цветы от Florentin упакованы&lt;/div&gt;\r\n&lt;div&gt;\r\n	в водяной шар, и доставляются&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	в шляпных коробках.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Это позволяет не распаковывать&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	букет в течение 2-3 дней и хранить&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	его временно в коробке, если у вас&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	под рукой нет вазы.&lt;/div&gt;\r\n',1,'','','',''),(7,1,'IDÉE','&lt;div&gt;\r\n	&lt;em&gt;Являясь бесконечными ценителями прекрасного, мы решили создать флористический проект нового формата. Соединив специально отобранные сорта великолепных роз, элегантные французские шляпные коробки и практичность конструкции, мы&amp;nbsp;&lt;/em&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;em&gt;представляем вам то, что призвано доставить истинное цветочное удовольствие!&lt;/em&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Являясь бесконечными ценителями прекрасного, мы решили создать флористический проект нового формата. Соединив специально отобранные сорта великолепных роз, элегантные французские шляпные коробки и практичность конструкции, мы&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	представляем вам то, что призвано доставить истинное цветочное удовольствие!&lt;/div&gt;\r\n&lt;div&gt;\r\n	Каждый букет будет собран с любовью наших флористов, с особой аккуратностью доставлен нашей службой курьеров, и в дальнейшем будет дарить только прекрасные эмоции. Подари немного больше, чем просто цветы! Каждый букет будет собран с любовью наших флористов, с особой аккуратностью доставлен нашей службой курьеров, и в дальнейшем будет дарить только прекрасные эмоции. Подари немного больше, чем просто цветы!&lt;/div&gt;\r\n','',1,'','','',''),(8,1,'Персональный заказ','&lt;div&gt;\r\n	&lt;em&gt;Мы ценим уникальность каждого клиента и имеем возможность предложить вам персональное создание букета под вашу задачу. Свяжитесь с нашим менеджером&amp;nbsp;&lt;/em&gt;&lt;em&gt;или отправьте письмо с вашими пожеланиями и мы воплотим в жизнь любые цветочные идеи. &amp;nbsp;&lt;/em&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Являясь бесконечными ценителями прекрасного, мы решили создать флористический проект нового формата. Соединив специально отобранные сорта великолепных роз, элегантные французские шляпные коробки и практичность конструкции, мы&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	представляем вам то, что призвано доставить истинное цветочное удовольствие!&lt;/div&gt;\r\n&lt;div&gt;\r\n	Каждый букет будет собран с любовью наших флористов, с особой аккуратностью доставлен нашей службой курьеров, и в дальнейшем будет дарить только прекрасные эмоции. Подари немного больше, чем просто цветы! Каждый букет будет собран с любовью наших флористов, с особой аккуратностью доставлен нашей службой курьеров, и в дальнейшем будет дарить только прекрасные эмоции. Подари немного больше, чем просто цветы!&lt;/div&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;a class=&quot;button big_b blue_b&quot; href=&quot;#quick_order_box&quot; id=&quot;quick_order&quot; style=&quot;margin-top:10px;&quot;&gt;Отправить заявку&lt;/a&gt;&lt;/p&gt;','',1,'','','',''),(10,1,'Уход','&lt;div class=&quot;yhod&quot;&gt;\r\n	&lt;div class=&quot;yhod_block&quot;&gt;\r\n		&lt;div class=&quot;number&quot;&gt;\r\n			&lt;table&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;\r\n							1.&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;yhod_image&quot;&gt;\r\n			&lt;img src=&quot;catalog/view/theme/florentin/image/yhod_1.png&quot; /&gt;&lt;/div&gt;\r\n		&lt;div class=&quot;clear&quot;&gt;\r\n			&amp;nbsp;&lt;/div&gt;\r\n		&lt;div class=&quot;text&quot;&gt;\r\n			Свежие цветы от Florentin упакованы в водяной шар и доставляются в шляпной коробке. Такая упаковка может служить временной вазой, но не более 2-3 дней. Соответственно, у вас нет необходимости сразу распаковывать букет.&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;yhod_block&quot;&gt;\r\n		&lt;div class=&quot;number&quot;&gt;\r\n			&lt;table&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;\r\n							2.&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;yhod_image&quot;&gt;\r\n			&lt;img src=&quot;catalog/view/theme/florentin/image/yhod_2.png&quot; /&gt;&lt;/div&gt;\r\n		&lt;div class=&quot;clear&quot;&gt;\r\n			&amp;nbsp;&lt;/div&gt;\r\n		&lt;div class=&quot;text&quot;&gt;\r\n			Чтобы продлить жизнь цветам, вытащите букет из коробки, освободите от водяного шара и поставьте в вазу.&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;yhod_block&quot;&gt;\r\n		&lt;div class=&quot;number&quot;&gt;\r\n			&lt;table&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;\r\n							3.&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;yhod_image&quot;&gt;\r\n			&lt;img src=&quot;catalog/view/theme/florentin/image/yhod_3.png&quot; /&gt;&lt;/div&gt;\r\n		&lt;div class=&quot;clear&quot;&gt;\r\n			&amp;nbsp;&lt;/div&gt;\r\n		&lt;div class=&quot;text&quot;&gt;\r\n			Подрежьте стебли на 1-2 см под острым углом, очистите их от нижних листьев и шипов.&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;yhod_block&quot;&gt;\r\n		&lt;div class=&quot;number&quot;&gt;\r\n			&lt;table&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;\r\n							4.&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;yhod_image&quot;&gt;\r\n			&lt;img src=&quot;catalog/view/theme/florentin/image/yhod_4.png&quot; /&gt;&lt;/div&gt;\r\n		&lt;div class=&quot;clear&quot;&gt;\r\n			&amp;nbsp;&lt;/div&gt;\r\n		&lt;div class=&quot;text&quot;&gt;\r\n			Налейте в вазу холодную, чистую воду и добавьте удобрение из пластикового пакета в вазу с водой. Не используйте удобрение для других целей!&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;yhod_block&quot;&gt;\r\n		&lt;div class=&quot;number&quot;&gt;\r\n			&lt;table&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;\r\n							5.&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;yhod_image&quot;&gt;\r\n			&lt;img src=&quot;catalog/view/theme/florentin/image/yhod_5.png&quot; /&gt;&lt;/div&gt;\r\n		&lt;div class=&quot;clear&quot;&gt;\r\n			&amp;nbsp;&lt;/div&gt;\r\n		&lt;div class=&quot;text&quot;&gt;\r\n			Рекомендуем не срезать ленту, связывающую букет, для сохранения формы букета.&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;yhod_block&quot;&gt;\r\n		&lt;div class=&quot;number&quot;&gt;\r\n			&lt;table&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;\r\n							6.&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;yhod_image&quot;&gt;\r\n			&lt;img src=&quot;catalog/view/theme/florentin/image/yhod_6.png&quot; /&gt;&lt;/div&gt;\r\n		&lt;div class=&quot;clear&quot;&gt;\r\n			&amp;nbsp;&lt;/div&gt;\r\n		&lt;div class=&quot;text&quot;&gt;\r\n			Для продления жизни цветам рекомендуем поставить букет в прохладном месте, вдали от солнечных лучей.&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;style type=&quot;text/css&quot;&gt;\r\n.yhod {\r\n	margin-top:20px;\r\n}\r\n.yhod_block {\r\n	float:left;\r\n	width:280px;\r\n	min-height:240px;\r\n	padding: 0 20px;\r\n}\r\n.yhod_block .number {\r\n	font-family: \'carolinaregular\';\r\n	font-size: 32px;\r\n	letter-spacing: 0px;\r\n	color: #241F20;\r\n	float:left;\r\n        margin-top:12px;\r\n}\r\n.yhod_block .number td {\r\n	height:116px;\r\n	vertical-align:bottom;\r\n	font-size: 32px;\r\n	line-height: 30px;\r\n}\r\n.yhod_block .yhod_image {\r\n	float:left;\r\n	padding-left:10px;\r\n	text-align:left;\r\n}\r\n.yhod_block .text {\r\n	margin-top:5px;\r\n}&lt;/style&gt;\r\n','',0,'','','',''),(5,1,'Условия соглашения','&lt;p&gt;\r\n	Условия соглашения&lt;/p&gt;\r\n','',0,'','','',''),(9,1,'Корпоративный сервис ','&lt;p&gt;\r\n	Мы предлагаем новую услугу в сфере флористики для корпоративных клиентов. Наш подход позволяет подобрать цветы, размер и цвет коробки, отражающие фирменный стиль вашей компании. Мы готовы создать индивидуальный дизайн букета в шляпной коробке, исходя из поставленных задач и целей. Подобрать необходимый цвет, изменить размеры, изготовить коробки с вашим логотипом или в необходимом дизайне – все возможно!&lt;/p&gt;\r\n&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1;margin-top:0pt;margin-bottom:0pt;&quot;&gt;\r\n	&lt;b id=&quot;docs-internal-guid-f9ea41a7-b44f-c9de-9e30-86a8102c42d6&quot; style=&quot;font-weight:normal;&quot;&gt;&lt;span style=&quot;font-size: 9px; font-family: \'Times New Roman\'; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 570px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;padding-right:40px;&quot;&gt;\r\n				&lt;span style=&quot;font-size:13px;&quot;&gt;&lt;b id=&quot;docs-internal-guid-f9ea41a7-b44f-c9de-9e30-86a8102c42d6&quot; style=&quot;line-height: 12px; font-weight: normal;&quot;&gt;&lt;span style=&quot;font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: italic; vertical-align: baseline; white-space: pre-wrap;&quot;&gt;Яркий, свежий и необычный подарок для ваших незаменимых сотрудников, дорогих клиентов и партнеров.&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;b id=&quot;docs-internal-guid-f9ea41a7-b44f-c9de-9e30-86a8102c42d6&quot; style=&quot;line-height: 12px; font-weight: normal;&quot;&gt;&lt;span style=&quot;font-size:13px;font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: italic; vertical-align: baseline; white-space: pre-wrap;&quot;&gt;Необычная рекламная продукция или корпоративный продукт для различных мероприятий.&lt;/span&gt;&lt;/b&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Все букеты от Florentin упакованы в водяной шар и доставляются в шляпных коробках, это позволяет не распаковывать букет в течение 2-3 дней и хранить его временно в коробке, если у вас нет вазы под рукой.&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	В силу практичности нашей упаковки, вам всегда будет удобно преподнести такой букет и оставить прекрасное впечатление.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Отправьте заявку и наш менеджер свяжется с вами в ближайшее время.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;a class=&quot;button big_b blue_b&quot; href=&quot;#quick_order_box&quot; id=&quot;quick_order&quot; style=&quot;margin-top:10px;&quot;&gt;Отправить заявку&lt;/a&gt;&lt;/p&gt;\r\n','',1,'','','',''),(11,1,'Спец.предложение','&lt;div&gt;\r\n	&lt;em&gt;Мы ценим уникальность каждого клиента и имеем возможность предложить вам персональное создание букета под вашу задачу. Свяжитесь с нашим менеджером&amp;nbsp;&lt;/em&gt;&lt;em&gt;или отправьте письмо с вашими пожеланиями и мы воплотим в жизнь любые цветочные идеи. &amp;nbsp;&lt;/em&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Являясь бесконечными ценителями прекрасного, мы решили создать флористический проект нового формата. Соединив специально отобранные сорта великолепных роз, элегантные французские шляпные коробки и практичность конструкции, мы&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	представляем вам то, что призвано доставить истинное цветочное удовольствие!&lt;/div&gt;\r\n&lt;div&gt;\r\n	Каждый букет будет собран с любовью наших флористов, с особой аккуратностью доставлен нашей службой курьеров, и в дальнейшем будет дарить только прекрасные эмоции. Подари немного больше, чем просто цветы! Каждый букет будет собран с любовью наших флористов, с особой аккуратностью доставлен нашей службой курьеров, и в дальнейшем будет дарить только прекрасные эмоции. Подари немного больше, чем просто цветы!&lt;/div&gt;\r\n&lt;p&gt;\r\n	&lt;a class=&quot;button big_b blue_b&quot; href=&quot;#quick_order_box&quot; id=&quot;quick_order&quot; style=&quot;margin-top:10px;&quot;&gt;Отправить заявку&lt;/a&gt;&lt;/p&gt;\r\n','',1,'','','',''),(12,1,'Сотрудничество','&lt;p&gt;\r\n	Мы предлагаем новую услугу в сфере флористики для корпоративных клиентов. Наш подход позволяет подобрать цветы, размер и цвет коробки, отражающие фирменный стиль вашей компании. Мы готовы создать индивидуальный дизайн букета в шляпной коробке, исходя из поставленных задач и целей. Подобрать необходимый цвет, изменить размеры, изготовить коробки с вашим логотипом или в необходимом дизайне – все возможно!&lt;/p&gt;\r\n&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1;margin-top:0pt;margin-bottom:0pt;&quot;&gt;\r\n	&lt;b id=&quot;docs-internal-guid-f9ea41a7-b44f-c9de-9e30-86a8102c42d6&quot; style=&quot;font-weight:normal;&quot;&gt;&lt;span style=&quot;font-size: 9px; font-family: \'Times New Roman\'; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 570px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;padding-right:40px;&quot;&gt;\r\n				&lt;span style=&quot;font-size:13px;&quot;&gt;&lt;b id=&quot;docs-internal-guid-f9ea41a7-b44f-c9de-9e30-86a8102c42d6&quot; style=&quot;line-height: 12px; font-weight: normal;&quot;&gt;&lt;span style=&quot;font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: italic; vertical-align: baseline; white-space: pre-wrap;&quot;&gt;Яркий, свежий и необычный подарок для ваших незаменимых сотрудников, дорогих клиентов и партнеров.&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;b id=&quot;docs-internal-guid-f9ea41a7-b44f-c9de-9e30-86a8102c42d6&quot; style=&quot;line-height: 12px; font-weight: normal;&quot;&gt;&lt;span style=&quot;font-size:13px;font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: italic; vertical-align: baseline; white-space: pre-wrap;&quot;&gt;Необычная рекламная продукция или корпоративный продукт для различных мероприятий.&lt;/span&gt;&lt;/b&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Все букеты от Florentin упакованы в водяной шар и доставляются в шляпных коробках, это позволяет не распаковывать букет в течение 2-3 дней и хранить его временно в коробке, если у вас нет вазы под рукой.&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	В силу практичности нашей упаковки, вам всегда будет удобно преподнести такой букет и оставить прекрасное впечатление.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Отправьте заявку и наш менеджер свяжется с вами в ближайшее время.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;a class=&quot;button big_b blue_b&quot; href=&quot;#quick_order_box&quot; id=&quot;quick_order&quot; style=&quot;margin-top:10px;&quot;&gt;Отправить заявку&lt;/a&gt;&lt;/p&gt;\r\n','',1,'','','','');
/*!40000 ALTER TABLE `information_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information_to_layout`
--

DROP TABLE IF EXISTS `information_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information_to_layout`
--

LOCK TABLES `information_to_layout` WRITE;
/*!40000 ALTER TABLE `information_to_layout` DISABLE KEYS */;
INSERT INTO `information_to_layout` VALUES (8,0,15),(7,0,13),(6,0,14),(9,0,16),(11,0,17),(12,0,18);
/*!40000 ALTER TABLE `information_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information_to_store`
--

DROP TABLE IF EXISTS `information_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information_to_store`
--

LOCK TABLES `information_to_store` WRITE;
/*!40000 ALTER TABLE `information_to_store` DISABLE KEYS */;
INSERT INTO `information_to_store` VALUES (3,0),(4,0),(5,0),(6,0),(7,0),(8,0),(9,0),(10,0),(11,0),(12,0);
/*!40000 ALTER TABLE `information_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `filename` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'Russian','ru','ru_RU.UTF-8,ru_RU,russian','ru.png','russian','russian',1,1);
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layout`
--

DROP TABLE IF EXISTS `layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layout`
--

LOCK TABLES `layout` WRITE;
/*!40000 ALTER TABLE `layout` DISABLE KEYS */;
INSERT INTO `layout` VALUES (1,'Главная'),(2,'Продукт'),(3,'Категория'),(4,'По-умолчанию'),(5,'Производитель'),(6,'Аккаунт'),(7,'Оформление заказ'),(8,'Контакты'),(9,'Карта сайта'),(10,'Партнерская программа'),(11,'Информация'),(12,'OneCheckOut'),(13,'Информация - IDEE'),(14,'Информация - Доставка цветов'),(15,'Информация - ПЕРСОНАЛЬНЫЙ ЗАКАЗ'),(16,'Информация - КОРПОРАТИВНЫЙ СЕРВИС'),(17,'Информация - СПЕЦ.ПРЕДЛОЖЕНИЕ'),(18,'Информация - СОТРУДНИЧЕСТВО');
/*!40000 ALTER TABLE `layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layout_route`
--

DROP TABLE IF EXISTS `layout_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layout_route`
--

LOCK TABLES `layout_route` WRITE;
/*!40000 ALTER TABLE `layout_route` DISABLE KEYS */;
INSERT INTO `layout_route` VALUES (30,6,0,'account'),(17,10,0,'affiliate/'),(29,3,0,'product/category'),(26,1,0,'common/home'),(20,2,0,'product/product'),(22,5,0,'product/manufacturer'),(23,7,0,'checkout/'),(31,8,0,'information/contact'),(32,9,0,'information/sitemap'),(33,12,0,'onecheckout/'),(34,13,0,'information/information&amp;information_id=7'),(36,11,0,'information/information'),(37,14,0,'information/information&amp;information_id=7'),(38,15,0,'information/information&amp;information_id=8'),(39,16,0,'information/information&amp;information_id=9'),(40,17,0,'information/information&amp;information_id=11'),(41,18,0,'information/information&amp;information_id=12');
/*!40000 ALTER TABLE `layout_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `length_class`
--

DROP TABLE IF EXISTS `length_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `length_class`
--

LOCK TABLES `length_class` WRITE;
/*!40000 ALTER TABLE `length_class` DISABLE KEYS */;
INSERT INTO `length_class` VALUES (1,1.00000000),(2,10.00000000),(3,0.39370000);
/*!40000 ALTER TABLE `length_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `length_class_description`
--

DROP TABLE IF EXISTS `length_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `length_class_description`
--

LOCK TABLES `length_class_description` WRITE;
/*!40000 ALTER TABLE `length_class_description` DISABLE KEYS */;
INSERT INTO `length_class_description` VALUES (1,1,'Сантиметр','см'),(2,1,'Миллиметр','мм');
/*!40000 ALTER TABLE `length_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer_description`
--

DROP TABLE IF EXISTS `manufacturer_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturer_description` (
  `manufacturer_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_h1` varchar(255) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer_description`
--

LOCK TABLES `manufacturer_description` WRITE;
/*!40000 ALTER TABLE `manufacturer_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `manufacturer_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer_to_store`
--

DROP TABLE IF EXISTS `manufacturer_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer_to_store`
--

LOCK TABLES `manufacturer_to_store` WRITE;
/*!40000 ALTER TABLE `manufacturer_to_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `manufacturer_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `column_limit` int(11) NOT NULL DEFAULT '0',
  `style_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `color` varchar(21) NOT NULL,
  `column_width` int(11) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (24,'Главное меню',0,'top_menu','',0);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_route`
--

DROP TABLE IF EXISTS `menu_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_route` (
  `menu_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `menu_type` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `menu_type_2` varchar(255) CHARACTER SET utf8 NOT NULL,
  `route` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `information` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `submenu` int(11) NOT NULL,
  `delimiter` int(11) NOT NULL,
  `image` varchar(1024) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`menu_route_id`)
) ENGINE=InnoDB AUTO_INCREMENT=896 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_route`
--

LOCK TABLES `menu_route` WRITE;
/*!40000 ALTER TABLE `menu_route` DISABLE KEYS */;
INSERT INTO `menu_route` VALUES (891,24,0,'category','empty','',6,59,0,0,'',0),(892,24,0,'information','empty','',6,0,0,0,'',10),(893,24,0,'information','empty','',11,0,0,0,'',20),(894,24,0,'information','empty','',7,0,0,0,'',30),(895,24,0,'information','empty','',12,0,0,0,'',40);
/*!40000 ALTER TABLE `menu_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_route_description`
--

DROP TABLE IF EXISTS `menu_route_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_route_description` (
  `menu_id` int(11) NOT NULL,
  `menu_route_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 NOT NULL,
  `html` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`menu_id`,`menu_route_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_route_description`
--

LOCK TABLES `menu_route_description` WRITE;
/*!40000 ALTER TABLE `menu_route_description` DISABLE KEYS */;
INSERT INTO `menu_route_description` VALUES (24,891,1,'Цветы',''),(24,892,1,'Доставка',''),(24,893,1,'Спец.предложение',''),(24,894,1,'Idee',''),(24,895,1,'Сотрудничество','');
/*!40000 ALTER TABLE `menu_route_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option`
--

DROP TABLE IF EXISTS `option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option`
--

LOCK TABLES `option` WRITE;
/*!40000 ALTER TABLE `option` DISABLE KEYS */;
INSERT INTO `option` VALUES (17,'text',30),(15,'text',10),(14,'textarea',100),(13,'date',0),(16,'text',20),(18,'text',5),(19,'radio',0);
/*!40000 ALTER TABLE `option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_description`
--

DROP TABLE IF EXISTS `option_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_description`
--

LOCK TABLES `option_description` WRITE;
/*!40000 ALTER TABLE `option_description` DISABLE KEYS */;
INSERT INTO `option_description` VALUES (16,1,'Адрес доставки'),(14,1,'Текст послания'),(13,1,'Дата доставки'),(18,1,'Время доставки'),(15,1,'ФИО получателя'),(19,1,'Доставка'),(17,1,'Телефон получателя');
/*!40000 ALTER TABLE `option_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_value`
--

DROP TABLE IF EXISTS `option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_value`
--

LOCK TABLES `option_value` WRITE;
/*!40000 ALTER TABLE `option_value` DISABLE KEYS */;
INSERT INTO `option_value` VALUES (49,19,'no_image.jpg',0),(50,19,'no_image.jpg',0);
/*!40000 ALTER TABLE `option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_value_description`
--

DROP TABLE IF EXISTS `option_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_value_description`
--

LOCK TABLES `option_value_description` WRITE;
/*!40000 ALTER TABLE `option_value_description` DISABLE KEYS */;
INSERT INTO `option_value_description` VALUES (49,1,19,'В пределах МКАД'),(50,1,19,'За пределами МКАД');
/*!40000 ALTER TABLE `option_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(32) NOT NULL,
  `payment_company_id` varchar(32) NOT NULL,
  `payment_tax_id` varchar(32) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `payment_delivery_date` varchar(256) NOT NULL,
  `shipping_type` int(1) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(32) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `shipping_delivery_date` varchar(254) NOT NULL,
  `need2call` int(1) NOT NULL,
  `shipping_telephone` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `send_message` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=264 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,0,'INV-2013-00',0,'Мой Магазин','http://localhost/florentinproject/',0,1,'Илья Константинович','Артамонов','ilya.artamonov73@gmail.com','уеы','','Илья Константинович','Артамонов','','','','еуые','','еуые','','Российская Федерация',176,'Москва',2761,'','Оплата при доставке','cod','',0,'иля','вап','','вап','','вап','','Российская Федерация',176,'Москва',2761,'','Фиксированная стоимость доставки','flat.flat','',0,'','','',9605.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-10 17:33:02','2014-06-10 17:33:02'),(2,0,'INV-2013-00',0,'Мой Магазин','http://localhost/florentinproject/',0,1,'Илья Константинович','Артамонов','ilya.artamonov73@gmail.com','уеы','','Илья Константинович','Артамонов','','','','еуые','','еуые','','Российская Федерация',176,'Москва',2761,'','Оплата при доставке','cod','',0,'иля','вап','','вап','','вап','','Российская Федерация',176,'Москва',2761,'','Фиксированная стоимость доставки','flat.flat','',0,'','','',9605.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-10 17:35:27','2014-06-10 17:35:27'),(3,0,'INV-2013-00',0,'Мой Магазин','http://localhost/florentinproject/',0,1,'Илья Константинович','Артамонов','ilya.artamonov73@gmail.com','уеы','','Илья Константинович','Артамонов','','','','еуые','','еуые','','Российская Федерация',176,'Москва',2761,'','Оплата при доставке','cod','',0,'иля','вап','','вап','','вап','','Российская Федерация',176,'Москва',2761,'','Фиксированная стоимость доставки','flat.flat','',0,'','','',9605.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-10 17:39:48','2014-06-10 17:39:48'),(4,0,'INV-2013-00',0,'Мой Магазин','http://localhost/florentinproject/',0,1,'Илья Константинович','Артамонов','ilya.artamonov73@gmail.com','уеы','','Илья Константинович','Артамонов','','','','еуые','','еуые','','Российская Федерация',176,'Москва',2761,'','Оплата при доставке','cod','',0,'иля','вап','','вап','','вап','','Российская Федерация',176,'Москва',2761,'','Фиксированная стоимость доставки','flat.flat','',0,'','','',9605.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-10 17:41:55','2014-06-10 17:41:55'),(5,0,'INV-2013-00',0,'Мой Магазин','http://localhost/florentinproject/',0,1,'Илья Константинович','Артамонов','ilya.artamonov73@gmail.com','уеы','','Илья Константинович','Артамонов','','','','еуые','','еуые','','Российская Федерация',176,'Москва',2761,'','Оплата при доставке','cod','',0,'иля','вап','','вап','','вап','','Российская Федерация',176,'Москва',2761,'','Фиксированная стоимость доставки','flat.flat','',0,'','','',9605.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-10 17:42:26','2014-06-10 17:42:26'),(6,0,'INV-2013-00',0,'Мой Магазин','http://localhost/florentinproject/',0,1,'Илья Константинович','Артамонов','ilya.artamonov73@gmail.com','уеы','','Илья Константинович','Артамонов','','','','еуые','','еуые','','Российская Федерация',176,'Москва',2761,'','Оплата при доставке','cod','',0,'иля','вап','','вап','','вап','','Российская Федерация',176,'Москва',2761,'','Фиксированная стоимость доставки','flat.flat','',0,'','ываыва','',9605.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-10 17:42:31','2014-06-10 17:42:31'),(7,0,'INV-2013-00',0,'Мой Магазин','http://localhost/florentinproject/',0,1,'Илья Константинович','Артамонов','ilya.artamonov73@gmail.com','уеы','','Илья Константинович','Артамонов','','','','еуые','','еуые','','Российская Федерация',176,'Москва',2761,'','Оплата при доставке','cod','',0,'иля','вап','','вап','','вап','','Российская Федерация',176,'Москва',2761,'','Фиксированная стоимость доставки','flat.flat','',0,'','ываыва','',9605.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-10 17:42:52','2014-06-10 17:42:52'),(8,0,'INV-2013-00',0,'Мой Магазин','http://localhost/florentinproject/',0,1,'Илья Константинович','Артамонов','ilya.artamonov73@gmail.com','уеы','','Илья Константинович','Артамонов','','','','еуые','','еуые','','Российская Федерация',176,'Москва',2761,'','Оплата при доставке','cod','',0,'иля','вап','','вап','','вап','','Российская Федерация',176,'Москва',2761,'','Фиксированная стоимость доставки','flat.flat','',0,'','ываыва','',9605.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-10 17:43:37','2014-06-10 17:43:37'),(9,0,'INV-2013-00',0,'Мой Магазин','http://localhost/florentinproject/',0,1,'Илья Константинович','Артамонов','ilya.artamonov73@gmail.com','уеы','','Илья Константинович','Артамонов','','','','еуые','','еуые','','Российская Федерация',176,'Москва',2761,'','Оплата при доставке','cod','',0,'иля','вап','','вап','','вап','','Российская Федерация',176,'Москва',2761,'','Фиксированная стоимость доставки','flat.flat','',0,'','ываыва','',9605.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-10 17:44:04','2014-06-10 17:44:04'),(10,0,'INV-2013-00',0,'Мой Магазин','http://localhost/florentinproject/',0,1,'Илья Константинович','Артамонов','ilya.artamonov73@gmail.com','уеы','','Илья Константинович','Артамонов','','','','еуые','','еуые','','Российская Федерация',176,'Москва',2761,'','Оплата при доставке','cod','',0,'иля','вап','','вап','','вап','','Российская Федерация',176,'Москва',2761,'','Фиксированная стоимость доставки','flat.flat','',0,'','ываыва','',9605.0000,1,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-10 17:44:21','2014-06-10 17:44:32'),(11,0,'INV-2013-00',0,'Мой Магазин','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','123123','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Оплата при доставке','cod','',0,'алёна олеговна','Логоновская','','addr2','','admin','','Российская Федерация',176,'',22761,'','Фиксированная стоимость доставки','flat.flat','',0,'','','',6506.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-11 14:35:50','2014-06-11 14:35:50'),(12,0,'INV-2013-00',0,'Мой Магазин','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','123123','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Оплата при доставке','cod','',0,'алёна олеговна','Логоновская','','addr2','','admin','','Российская Федерация',176,'',22761,'','Фиксированная стоимость доставки','flat.flat','',0,'','','',6506.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-11 14:37:30','2014-06-11 14:37:30'),(13,0,'INV-2013-00',0,'Мой Магазин','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','123123','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Оплата при доставке','cod','',0,'алёна олеговна','Логоновская','','addr2','','admin','','Российская Федерация',176,'',22761,'','Фиксированная стоимость доставки','flat.flat','',0,'','','',6506.0000,1,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-11 14:40:40','2014-06-11 14:40:48'),(14,0,'INV-2013-00',0,'Мой Магазин','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','123123','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Оплата при доставке','cod','',0,'алёна олеговна','Логоновская','','addr2','','admin','','Российская Федерация',176,'',22761,'','Фиксированная стоимость доставки','flat.flat','',0,'','','',3205.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-11 14:41:05','2014-06-11 14:41:05'),(15,0,'INV-2013-00',0,'Мой Магазин','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','123123','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Оплата при доставке','cod','',0,'алёна олеговна','Логоновская','','addr2','','admin','','Российская Федерация',176,'',22761,'','Фиксированная стоимость доставки','flat.flat','',0,'','','',3205.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-11 14:41:33','2014-06-11 14:41:33'),(16,0,'INV-2013-00',0,'Мой Магазин','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','123123','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Оплата при доставке','cod','',0,'алёна олеговна','Логоновская','','addr2','','admin','','Российская Федерация',176,'',22761,'','Фиксированная стоимость доставки','flat.flat','',0,'','','',3205.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-11 14:42:02','2014-06-11 14:42:02'),(17,0,'INV-2013-00',0,'Мой Магазин','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','123123','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Оплата при доставке','cod','',0,'алёна олеговна','Логоновская','','addr2','','admin','','Российская Федерация',176,'',22761,'','Фиксированная стоимость доставки','flat.flat','',0,'','','',3205.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-11 14:42:32','2014-06-11 14:42:32'),(18,0,'INV-2013-00',0,'Мой Магазин','http://localhost/florentinproject/',0,1,'test','test','ilya.artamonov@b-leader.ru','tset','','test','test','','','','tset','','test','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'test','test','','tset','','test','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',551.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-12 15:27:33','2014-06-12 15:27:33'),(19,0,'INV-2013-00',0,'Мой Магазин','http://localhost/florentinproject/',0,1,'test','test','ilya.artamonov@b-leader.ru','tset','','test','test','','','','tset','','test','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'test','test','','tset','','test','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',551.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-12 15:27:45','2014-06-12 15:27:45'),(20,0,'INV-2013-00',0,'Мой Магазин','http://localhost/florentinproject/',0,1,'test','test','ilya.artamonov@b-leader.ru','tset','','test','test','','','','tset','','test','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'test','test','','tset','','test','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',551.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-12 15:28:13','2014-06-12 15:28:13'),(21,0,'INV-2013-00',0,'Мой Магазин','http://localhost/florentinproject/',0,1,'test','test','ilya.artamonov@b-leader.ru','tset','','test','test','','','','tset','','test','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'test','test','','tset','','test','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',551.0000,1,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-12 15:32:31','2014-06-12 15:32:35'),(22,0,'INV-2013-00',0,'Мой Магазин','http://localhost/florentinproject/',0,1,'rwe','wer','ilya.artamonov@b-leader.ru','ewr','','rwe','wer','','','','','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'rwe','wer','','','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',3200.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-12 15:39:47','2014-06-12 15:39:47'),(23,0,'INV-2013-00',0,'Мой Магазин','http://localhost/florentinproject/',0,1,'rwe','wer','ilya.artamonov@b-leader.ru','ewr','','rwe','wer','','','','','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'rwe','wer','','','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',3200.0000,1,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-12 15:40:21','2014-06-12 15:40:26'),(24,0,'INV-2013-00',0,'Мой Магазин','http://192.168.0.102/florentinproject/',0,1,'123','123','123@we.we','123','','123','123','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'123','123','','','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',3200.0000,0,0,0.0000,1,1,'RUB',1.00000000,'192.168.0.102','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-12 16:45:30','2014-06-12 16:45:30'),(25,0,'INV-2013-00',0,'Мой Магазин','http://192.168.0.102/florentinproject/',3,1,'123','123','123@we.we','123','','123','123','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'123','123','','','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',3200.0000,0,0,0.0000,1,1,'RUB',1.00000000,'192.168.0.102','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-12 17:01:31','2014-06-12 17:01:31'),(26,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','123123','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Оплата Банковской картой','liqpay','',0,'алёна олеговна','Логоновская','','addr2','','admin','','Российская Федерация',176,'',22761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',6501.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-16 17:22:40','2014-06-16 17:22:40'),(27,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','123123','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','',0,'алёна олеговна','Логоновская','','addr2','','admin','','Российская Федерация',176,'',22761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',6501.0000,1,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-16 17:22:51','2014-06-16 17:22:52'),(28,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','123123','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','',0,'алёна олеговна','Логоновская','','addr2','','admin','','Российская Федерация',176,'',22761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-16 17:34:04','2014-06-16 17:34:04'),(29,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','123123','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','',0,'алёна олеговна','Логоновская','','addr2','','admin','','Российская Федерация',176,'',22761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-16 18:02:56','2014-06-16 18:02:56'),(30,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','123123','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','',0,'алёна олеговна','Логоновская','','addr2','','admin','','Российская Федерация',176,'',22761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-16 18:03:16','2014-06-16 18:03:16'),(31,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','123123','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','',0,'алёна олеговна','Логоновская','','addr2','','admin','','Российская Федерация',176,'',22761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-16 18:03:29','2014-06-16 18:03:29'),(32,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','123123','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','',0,'алёна олеговна','Логоновская','','addr2','','admin','','Российская Федерация',176,'',22761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-16 18:06:11','2014-06-16 18:06:11'),(33,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','123123','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','',0,'алёна олеговна','Логоновская','','addr2','','admin','','Российская Федерация',176,'',22761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-16 18:06:30','2014-06-16 18:06:30'),(34,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','123123','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','',0,'алёна олеговна','Логоновская','','addr2','','admin','','Российская Федерация',176,'',22761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-16 18:10:15','2014-06-16 18:10:15'),(35,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','123123','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','',0,'алёна олеговна','Логоновская','','addr2','','admin','','Российская Федерация',176,'',22761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-16 18:10:23','2014-06-16 18:10:23'),(36,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','123123','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','',0,'алёна олеговна','Логоновская','','addr2','','admin','','Российская Федерация',176,'',22761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-16 18:11:02','2014-06-16 18:11:02'),(37,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','123123','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','',0,'алёна олеговна','Логоновская','','addr2','','admin','','Российская Федерация',176,'',22761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-16 18:12:07','2014-06-16 18:12:07'),(38,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','123123','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','',0,'алёна олеговна','Логоновская','','addr2','','admin','','Российская Федерация',176,'',22761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-16 18:12:13','2014-06-16 18:12:13'),(39,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','123123','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','',0,'алёна олеговна','Логоновская','','addr2','','admin','','Российская Федерация',176,'',22761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',202.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-17 12:06:09','2014-06-17 12:06:09'),(40,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','123123','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','',0,'алёна олеговна','Логоновская','','addr2','','admin','','Российская Федерация',176,'',22761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',202.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-17 12:17:03','2014-06-17 12:17:03'),(41,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','123123','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Оплата Банковской картой','liqpay','',0,'алёна олеговна','Логоновская','','addr2','','admin','','Российская Федерация',176,'',22761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',202.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-17 12:17:09','2014-06-17 12:17:09'),(42,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','+7 (908) 476 8744','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','',0,'алёна олеговна','Логоновская','','addr2','','admin','','Российская Федерация',176,'',22761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',100.0000,1,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-19 13:34:47','2014-06-19 13:34:50'),(43,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','+7 (908) 476 8744','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','',0,'алёна олеговна','Логоновская','','addr2','','admin','','Российская Федерация',176,'',22761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',100.0000,5,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-19 13:44:17','2014-06-19 14:17:49'),(44,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'123123','','ilya.artamonov@b-leader.ru','234234','','123123','','','','','test','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'','','','','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',303.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 17:29:14','2014-06-23 17:29:14'),(45,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'123123','','ilya.artamonov@b-leader.ru','234234','','123123','','','','','test','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'','','','','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',303.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 17:44:32','2014-06-23 17:44:32'),(46,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'123123','','ilya.artamonov@b-leader.ru','234234','','123123','','','','','test','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'','','','','','','','',0,'',0,'','','','',0,'','','',303.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 17:49:20','2014-06-23 17:49:20'),(47,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'123123','','ilya.artamonov@b-leader.ru','234234','','123123','','','','','test','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'','','','','','','','',0,'',0,'','','','',0,'','','',303.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 17:50:13','2014-06-23 17:53:32'),(48,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'qwessd','','ilya.artamonov@b-leader.ru','123','','qwessd','','','','','test','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 18:15:12','2014-06-23 18:15:12'),(49,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'qwessd','','ilya.artamonov@b-leader.ru','123','','qwessd','','','','','test','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 18:50:26','2014-06-23 18:50:26'),(50,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'qwessd','','ilya.artamonov@b-leader.ru','123','','qwessd','','','','','test','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 18:51:48','2014-06-23 18:51:48'),(51,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'qwessd','','ilya.artamonov@b-leader.ru','123','','qwessd','','','','','test','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 18:55:07','2014-06-23 18:55:07'),(52,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'qwessd','','ilya.artamonov@b-leader.ru','123','','qwessd','','','','','test','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 19:12:00','2014-06-23 19:12:00'),(53,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'qwessd','','ilya.artamonov@b-leader.ru','123','','qwessd','','','','','test','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 19:12:51','2014-06-23 19:12:51'),(54,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'qwessd','','ilya.artamonov@b-leader.ru','123','','qwessd','','','','','test','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 19:13:04','2014-06-23 19:13:04'),(55,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'qwessd','','ilya.artamonov@b-leader.ru','123','','qwessd','','','','','test','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 19:14:21','2014-06-23 19:14:35'),(56,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'tes t2 ','','ilya.artamonov@b-leader.ru','234','','tes t2 ','','','','','test addr','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 19:17:32','2014-06-23 19:17:32'),(57,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'tes t2 ','','ilya.artamonov@b-leader.ru','234','','tes t2 ','','','','','test addr','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 19:17:47','2014-06-23 19:17:47'),(58,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'tes t2 ','','ilya.artamonov@b-leader.ru','234','','tes t2 ','','','','','test addr','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','28.06.2014 04:00',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 19:20:32','2014-06-23 19:20:32'),(59,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'tes t2 ','','ilya.artamonov@b-leader.ru','234','','tes t2 ','','','','','test addr','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','28.06.2014 04:00',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 19:21:22','2014-06-23 19:21:25'),(60,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'ilya','','ilya.artamonov@b-leader.ru','qweqeqweqe','','ilya','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'alena','','','addr2','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 20:08:47','2014-06-23 20:08:47'),(61,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'ilya','','ilya.artamonov@b-leader.ru','qweqeqweqe','','ilya','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'alena','','','addr2','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','23.06.2014 05:00',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 20:35:14','2014-06-23 20:35:14'),(62,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'ilya','','ilya.artamonov@b-leader.ru','qweqeqweqe','','ilya','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'alena','','','addr2','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','23.06.2014 05:00',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 20:35:31','2014-06-23 20:35:31'),(63,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'ilya','','ilya.artamonov@b-leader.ru','qweqeqweqe','','ilya','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'alena','','','addr2','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','23.06.2014 05:00',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 20:39:53','2014-06-23 20:39:53'),(64,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'ilya','','ilya.artamonov@b-leader.ru','qweqeqweqe','','ilya','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'alena','','','addr2','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','23.06.2014 05:00',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 20:41:11','2014-06-23 20:41:11'),(65,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'ilya','','ilya.artamonov@b-leader.ru','qweqeqweqe','','ilya','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'alena','','','addr2','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','23.06.2014 05:00',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 20:42:09','2014-06-23 20:42:09'),(66,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'illya','','ilaer.wer@sd.fr','123123','','illya','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'alea','','','addr2','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','23.06.2014 04:00',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 21:13:26','2014-06-23 21:13:26'),(67,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'illya','','ilaer.wer@sd.fr','123123','','illya','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'alea','','','addr2','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','23.06.2014 04:00',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 21:13:53','2014-06-23 21:13:53'),(68,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'illya','','ilaer.wer@sd.fr','123123','','illya','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'alea','','','addr2','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','23.06.2014 04:00',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 21:14:24','2014-06-23 21:14:24'),(69,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'illya','','ilaer.wer@sd.fr','123123','','illya','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'alea','','','addr2','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','23.06.2014 05:00',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 21:24:43','2014-06-23 21:24:43'),(70,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'illya','','ilaer.wer@sd.fr','123123','','illya','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'alea','','','addr2','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','23.06.2014 05:00',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 21:26:45','2014-06-23 21:26:45'),(71,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'illya','','ilaer.wer@sd.fr','123123','','illya','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'alea','','','addr2','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','23.06.2014 05:00',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 21:27:09','2014-06-23 21:27:09'),(72,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'illya','','ilaer.wer@sd.fr','123123','','illya','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'alea','','','addr2','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','23.06.2014 05:00',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 21:27:40','2014-06-23 21:27:40'),(73,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'illya','','ilaer.wer@sd.fr','123123','','illya','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'alea','','','addr2','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','23.06.2014 05:00',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 21:28:08','2014-06-23 21:28:08'),(74,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'illya','','ilaer.wer@sd.fr','123123','','illya','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'alea','','','addr2','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','23.06.2014 05:00',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 21:29:14','2014-06-23 21:29:14'),(75,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'illya','','ilaer.wer@sd.fr','123123','','illya','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'alea','','','addr2','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','23.06.2014 05:00',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 21:30:00','2014-06-23 21:30:00'),(76,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'illya','','ilaer.wer@sd.fr','123123','','illya','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'alea','','','addr2','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','23.06.2014 05:00',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 21:30:22','2014-06-23 21:30:22'),(77,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'illya','','ilaer.wer@sd.fr','123123','','illya','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'alea','','','addr2','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','23.06.2014 05:00',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 21:30:41','2014-06-23 21:30:41'),(78,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'illya','','ilaer.wer@sd.fr','123123','','illya','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'alea','','','addr2','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','23.06.2014 05:00',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 21:31:13','2014-06-23 21:31:13'),(79,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'illya','','ilaer.wer@sd.fr','123123','','illya','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'alea','','','addr2','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','23.06.2014 05:00',0,'','','',101.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 21:33:02','2014-06-23 21:33:06'),(80,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'иля','','ilya.artamonov@b-leader.ru','123','','иля','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'alena','','','addre2','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','23.06.2014 04:00',0,'123','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 21:44:53','2014-06-23 21:44:53'),(81,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'иля','','ilya.artamonov@b-leader.ru','123','','иля','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'alena','','','addre2','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','23.06.2014 04:00',0,'123','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 21:44:56','2014-06-23 21:44:56'),(82,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'иля','','ilya.artamonov@b-leader.ru','123','','иля','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'alena','','','addre2','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','23.06.2014 04:00',0,'123','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 21:45:02','2014-06-23 21:45:02'),(83,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'иля','','ilya.artamonov@b-leader.ru','123','','иля','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'alena','','','addre2','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','23.06.2014 04:00',1,'123','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 21:45:16','2014-06-23 21:45:16'),(84,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'иля','','ilya.artamonov@b-leader.ru','123','','иля','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'alena','','','addre2','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','23.06.2014 04:00',1,'123','','',101.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 21:45:27','2014-06-23 21:45:28'),(85,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',5,1,'ewr','','ilya.artamonov@b-leader.ru','sdf','','ewr','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 22:20:04','2014-06-23 22:20:04'),(86,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',8,1,'sdsdf','','ilya.artamonov@b-leader.ru','sdfsdf','','sdsdf','','','','','sdfsf','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','25.06.2014 22:13',0,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 22:31:12','2014-06-23 22:31:12'),(87,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','qweqw','','awdasd','','','','','qweqwe','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','25.06.2014 22:13',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-23 22:34:47','2014-06-23 22:34:47'),(88,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','25.06.2014 22:13',0,'','','','','','','','',0,'',0,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 00:20:26','2014-06-24 00:20:26'),(89,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','25.06.2014 22:13',0,'123','','','123','','2761','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','24.06.2014 10:00',1,'123123aa','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 00:24:56','2014-06-24 00:24:56'),(90,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','25.06.2014 22:13',0,'123','','','123','','2761','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','24.06.2014 10:00',1,'123123aa','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 00:36:18','2014-06-24 00:36:18'),(91,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','25.06.2014 22:13',0,'123','','','123','','2761','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','24.06.2014 10:00',1,'123123aa','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 00:37:55','2014-06-24 00:37:55'),(92,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','25.06.2014 22:13',0,'123','','','123','','2761','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','24.06.2014 10:00',1,'123123aa','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 00:38:46','2014-06-24 00:38:46'),(93,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','25.06.2014 22:13',0,'123','','','123','','2761','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','24.06.2014 10:00',1,'123123aa','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 00:39:22','2014-06-24 00:39:22'),(94,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','25.06.2014 22:13',0,'alena','','','alena addr','','2761','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','24.06.2014 14:00',1,'123123aa','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 00:39:41','2014-06-24 00:39:41'),(95,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','25.06.2014 22:13',0,'alena','','','alena addr','','2761','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','24.06.2014 14:00',0,'123123aa','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 00:39:51','2014-06-24 00:39:51'),(96,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','25.06.2014 22:13',0,'alena','','','alena addr','','2761','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','24.06.2014 14:00',0,'123123aa','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 00:40:13','2014-06-24 00:40:13'),(97,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','25.06.2014 22:13',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 00:42:48','2014-06-24 00:42:48'),(98,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','25.06.2014 22:13',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 00:43:16','2014-06-24 00:43:16'),(99,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','24.06.2014 19:00',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 00:56:12','2014-06-24 00:56:12'),(100,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','29.06.2014 22:00',0,'alena','','','alena addr','','2761','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','28.06.2014 02:00',0,'123123aa','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 00:58:03','2014-06-24 00:58:03'),(101,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','29.06.2014 20:00',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 00:59:32','2014-06-24 01:00:57'),(102,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'alena2','','','alena addr','','2761','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','25.06.2014 09:00',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 01:02:55','2014-06-24 01:02:55'),(103,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'alena2','','','alena addr','','2761','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','25.06.2014 09:00',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 01:03:02','2014-06-24 01:03:02'),(104,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'alena2','','','alena addr','','2761','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','25.06.2014 09:00',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 01:06:04','2014-06-24 01:06:04'),(105,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'alena2','','','alena addr','','2761','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','25.06.2014 09:00',0,'','','',101.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 01:09:12','2014-06-24 01:09:18'),(106,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 01:20:08','2014-06-24 01:20:08'),(107,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','25.06.2014 20:00',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 01:24:47','2014-06-24 01:24:47'),(108,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','25.06.2014 20:00',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 01:26:42','2014-06-24 01:26:42'),(109,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','25.06.2014 20:00',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 01:35:29','2014-06-24 01:35:29'),(110,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','25.06.2014 20:00',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 01:36:44','2014-06-24 01:36:44'),(111,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','25.06.2014 20:00',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 01:36:50','2014-06-24 01:36:50'),(112,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','25.06.2014 20:00',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 01:37:26','2014-06-24 01:37:26'),(113,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','25.06.2014 20:00',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 01:41:45','2014-06-24 01:41:45'),(114,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','25.06.2014 20:00',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 01:45:09','2014-06-24 01:45:09'),(115,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 01:48:20','2014-06-24 01:48:20'),(116,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','25.06.2014 19:00',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 01:48:58','2014-06-24 01:48:58'),(117,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 01:49:48','2014-06-24 01:49:48'),(118,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','25.06.2014 20:00',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 01:49:59','2014-06-24 01:49:59'),(119,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 01:50:22','2014-06-24 01:50:22'),(120,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','25.06.2014 20:00',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 01:51:48','2014-06-24 01:51:48'),(121,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','25.06.2014 20:00',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 01:52:03','2014-06-24 01:52:06'),(122,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-24 01:57:34','2014-06-24 01:57:34'),(123,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','26.07.2014 14:30',1,'','','','','','','','',0,'',0,'','','','',0,'','test','',303.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-25 00:01:21','2014-06-25 00:01:21'),(124,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','26.07.2014 14:30',1,'','','','','','','','',0,'',0,'','','','',0,'','test','',303.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-25 00:01:39','2014-06-25 00:01:39'),(125,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','26.07.2014 14:30',1,'','','','','','','','',0,'',0,'','','','',0,'','test','',303.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-25 00:04:21','2014-06-25 00:04:30'),(126,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','25.06.2014 20:45',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-25 00:06:06','2014-06-25 00:06:10'),(127,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'123','','ilya.artamono2v@b-leader.ru','123','','123','','','','','test addr','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','25.06.2014 10:15',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-25 00:23:03','2014-06-25 00:23:05'),(128,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'ilia','','ilya.artamonov4@b-leader.ru','+7 (123) 123 1231','','ilia','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'alena','','','addr alena','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','25.06.2014 10:00',0,'','test','',101.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-25 00:28:00','2014-06-25 00:28:09'),(129,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'sdsf','','ilya.artamonov3@b-leader.ru','+7 (234) 324 2423','','sdsf','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'432','','','234','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','25.06.2014 10:00',1,'+7 (234) 324 2342','tes','',101.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-25 00:29:10','2014-06-25 00:29:13'),(130,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'234','','ilya.artamo3nov@b-leader.ru','+7 (234) 234 3242','','234','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'qweqwe','','','qweqwe','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','26.06.2014 11:45',1,'+7 (213) 142 3423','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-25 00:33:47','2014-06-25 00:33:47'),(131,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'234','','ilya.artamo3nov@b-leader.ru','+7 (234) 234 3242','','234','','','','','test se','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','18.07.2014 00:42',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-25 00:44:08','2014-06-25 00:44:24'),(132,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',11,1,'sdfs','','ilya.artamono22v@b-leader.ru','+7 (322) 423 4242','','sdfs','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'123','','','123','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','28.06.2014 11:45',1,'+7 (123) 123 1231','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-25 00:48:19','2014-06-25 00:48:19'),(133,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',12,1,'456456','','ilya.456artamonov@b-leader.ru','+7 (456) 456 4564','','456456','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'123123','','','123123','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','28.06.2014 11:45',1,'+7 (123) 123 1231','test','',101.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-25 00:49:36','2014-06-25 00:49:45'),(134,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',12,1,'456456','','ilya.456artamonov@b-leader.ru','+7 (456) 456 4564','','456456','','','','','addr','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',1,'','','','','','','','',0,'',0,'','','','',0,'','test','',101.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-25 01:09:48','2014-06-25 01:09:50'),(135,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',12,1,'456456','','ilya.456artamonov@b-leader.ru','+7 (456) 456 4564','','456456','','','','','addr','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-25 01:10:44','2014-06-25 01:10:44'),(136,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',12,1,'456456','','ilya.456artamonov@b-leader.ru','+7 (456) 456 4564','','456456','','','','','addr','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-25 01:12:56','2014-06-25 01:12:56'),(137,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',12,1,'456456','','ilya.456artamonov@b-leader.ru','+7 (456) 456 4564','','456456','','','','','addr','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',1,'','','','','','','','',0,'',0,'','','','',0,'','','',202.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-25 01:14:20','2014-06-25 01:14:20'),(138,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',12,1,'456456','','ilya.456artamonov@b-leader.ru','+7 (456) 456 4564','','456456','','','','','addr','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',1,'','','','','','','','',0,'',0,'','','','',0,'','','',202.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-25 01:14:56','2014-06-25 01:14:56'),(139,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',12,1,'456456','','ilya.456artamonov@b-leader.ru','+7 (456) 456 4564','','456456','','','','','addr','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',1,'','','','','','','','',0,'',0,'','','','',0,'','','',202.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-25 01:16:26','2014-06-25 01:16:26'),(140,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',12,1,'456456','','ilya.456artamonov@b-leader.ru','+7 (456) 456 4564','','456456','','','','','addr','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','26.06.2014 21:17',1,'','','','','','','','',0,'',0,'','','','',0,'','','',202.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-25 01:17:22','2014-06-25 01:17:22'),(141,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',12,1,'456456','','ilya.456artamonov@b-leader.ru','+7 (456) 456 4564','','456456','','','','','addr','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','26.06.2014 21:17',1,'','','','','','','','',0,'',0,'','','','',0,'','','',202.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-25 01:17:34','2014-06-25 01:17:35'),(142,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',12,1,'456456','','ilya.456artamonov@b-leader.ru','+7 (456) 456 4564','','456456','','','','','addr','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',0,'alena','','','adrr 3','','2761','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','28.06.2014 20:45',1,'+7 (343) 242 3423','test','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-25 01:27:02','2014-06-25 01:27:02'),(143,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',12,1,'456456','','ilya.456artamonov@b-leader.ru','+7 (456) 456 4564','','456456','','','','','addr','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'alena','','','adrr 3','','2761','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','28.06.2014 20:45',1,'+7 (343) 242 3423','test','',101.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-25 01:27:16','2014-06-25 01:27:17'),(144,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',12,1,'456456','','ilya.456artamonov@b-leader.ru','+7 (456) 456 4564','','456456','','','','','addr','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','26.06.2014 21:31',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-25 01:31:37','2014-06-25 01:31:37'),(145,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',12,1,'456456','','ilya.456artamonov@b-leader.ru','+7 (456) 456 4564','','456456','','','','','addr','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','26.06.2014 21:31',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-25 01:31:49','2014-06-25 01:31:50'),(146,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',13,1,'ilya','','ilya.arta22monov@b-leader.ru','+7 (232) 342 3423','','ilya','','','','','addr1','addr1','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'sdfsdf','','','addr3','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','26.06.2014 21:47',0,'','','',101.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-06-25 01:53:19','2014-06-25 01:53:24'),(147,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','+7 (908) 476 8744','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','03.07.2014 19:41',1,'','','','','','','','',0,'',0,'','','','',0,'','test  tst','test test',491.7500,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-03 23:04:30','2014-07-03 23:04:30'),(148,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','+7 (908) 476 8744','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','03.07.2014 19:41',1,'','','','','','','','',0,'',0,'','','','',0,'','test  tst','test test',491.7500,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-03 23:08:52','2014-07-03 23:08:52'),(149,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','+7 (908) 476 8744','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','03.07.2014 19:41',1,'','','','','','','','',0,'',0,'','','','',0,'','test  tst','sdfsdf',491.7500,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-03 23:09:21','2014-07-03 23:09:21'),(150,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','+7 (908) 476 8744','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','03.07.2014 19:41',1,'','','','','','','','',0,'',0,'','','','',0,'','test  tst','sdf',491.7500,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-03 23:09:31','2014-07-03 23:09:31'),(151,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','+7 (908) 476 8744','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','03.07.2014 19:41',1,'','','','','','','','',0,'',0,'','','','',0,'','test  tst','sdfsdfsdf',491.7500,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-03 23:09:46','2014-07-03 23:09:46'),(152,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','+7 (908) 476 8744','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','03.07.2014 19:41',1,'','','','','','','','',0,'',0,'','','','',0,'','test  tst','sdfsdfsdf',491.7500,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-03 23:10:57','2014-07-03 23:10:57'),(153,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','+7 (908) 476 8744','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','03.07.2014 19:41',1,'','','','','','','','',0,'',0,'','','','',0,'','test  tst','sdfsdf',491.7500,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-03 23:11:01','2014-07-03 23:11:01'),(154,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','+7 (908) 476 8744','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','03.07.2014 19:41',1,'','','','','','','','',0,'',0,'','','','',0,'','test  tst','dfg',491.7500,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-03 23:11:22','2014-07-03 23:11:22'),(155,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','+7 (908) 476 8744','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','03.07.2014 19:41',1,'','','','','','','','',0,'',0,'','','','',0,'','test  tst','dfg',491.7500,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-03 23:11:44','2014-07-03 23:11:44'),(156,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','+7 (908) 476 8744','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','',0,'234234','','','23423','','2761','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','03.07.2014 19:41',1,'+7 (324) 234 2342','test  tst','asd',491.7500,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-03 23:13:58','2014-07-03 23:13:58'),(157,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','+7 (908) 476 8744','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','',0,'234234','','','23423','','2761','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','03.07.2014 19:41',1,'+7 (324) 234 2342','test  tst','dfgdfgdg',491.7500,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-03 23:15:30','2014-07-03 23:15:30'),(158,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','+7 (908) 476 8744','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','',0,'234234','','','23423','','2761','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','03.07.2014 19:41',1,'+7 (324) 234 2342','test  tst','dfgdfgdg',491.7500,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-03 23:32:54','2014-07-03 23:32:56'),(159,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',2,1,'алёна олеговна','Логоновская','mu-bro@mail.ru2','+7 (908) 476 8744','','алёна олеговна','Логоновская','','','','addr2','','admin','','Российская Федерация',176,'',22761,'','Оплата Банковской картой','liqpay','05.07.2014 19:39',1,'','','','','','','','',0,'',0,'','','','',0,'','','dfgdfgdg',503.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-04 00:30:25','2014-07-04 00:30:25'),(160,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','05.07.2014 19:39',1,'','','','','','','','',0,'',0,'','','','',0,'','','dfgdfgdg',202.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-04 00:36:51','2014-07-04 00:36:51'),(161,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','05.07.2014 19:39',1,'','','','','','','','',0,'',0,'','','','',0,'','','dfgdfgdg',202.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-04 00:36:56','2014-07-04 00:36:58'),(162,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','05.07.2014 20:38',1,'','','','','','','','',0,'',0,'','','','',0,'','','dfgdfgdg',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-04 00:38:18','2014-07-04 00:38:18'),(163,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','05.07.2014 20:38',1,'','','','','','','','',0,'',0,'','','','',0,'','','dfgdfgdg',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-04 00:38:30','2014-07-04 00:38:30'),(164,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','05.07.2014 20:40',1,'','','','','','','','',0,'',0,'','','','',0,'','','dfgdfgdg',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-04 00:40:34','2014-07-04 00:40:34'),(165,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','05.07.2014 20:40',1,'','','','','','','','',0,'',0,'','','','',0,'','','dfgdfgdg',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-04 00:41:38','2014-07-04 00:41:38'),(166,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','05.07.2014 20:40',1,'','','','','','','','',0,'',0,'','','','',0,'','','dfgdfgdg',101.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-04 00:42:38','2014-07-04 00:42:42'),(167,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','05.07.2014 20:40',1,'','','','','','','','',0,'',0,'','','','',0,'','','dfgdfgdg',101.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-04 00:49:05','2014-07-04 00:49:07'),(168,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','05.07.2014 20:49',1,'','','','','','','','',0,'',0,'','','','',0,'','','dfgdfgdg',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-04 00:49:53','2014-07-04 00:49:53'),(169,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','05.07.2014 20:49',1,'','','','','','','','',0,'',0,'','','','',0,'','','dfgdfgdg',101.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-04 00:49:58','2014-07-04 00:49:59'),(170,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','05.07.2014 20:50',1,'','','','','','','','',0,'',0,'','','','',0,'','','dfgdfgdg',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-04 00:50:44','2014-07-04 00:50:44'),(171,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',9,1,'awdasd','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','awdasd','','','','','qweqwe2','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','05.07.2014 20:50',1,'','','','','','','','',0,'',0,'','','','',0,'','','dfgdfgdg',101.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-04 00:50:50','2014-07-04 00:50:51'),(172,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'ЙЦУ ФЫВ ','','ilya.artamonov@b-leader.ru','+7 (213) 213 1231','','ЙЦУ ФЫВ ','','','','','123','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 20:18:45','2014-07-06 20:18:45'),(173,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'ФЫВЫФ','','ilya.artamonov@b-leader.ru','+7 (123) 123 1313','','ФЫВЫФ','','','','','223','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 20:19:21','2014-07-06 20:19:21'),(174,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'ФЫВЫФ','','ilya.artamonov@b-leader.ru','+7 (123) 123 1313','','ФЫВЫФ','','','','','223','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 20:20:23','2014-07-06 20:20:23'),(175,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 20:44:11','2014-07-06 20:44:11'),(176,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 20:45:52','2014-07-06 20:45:52'),(177,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 20:46:31','2014-07-06 20:46:31'),(178,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 21:05:22','2014-07-06 21:05:22'),(179,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 21:06:46','2014-07-06 21:06:46'),(180,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','','',91.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 21:07:15','2014-07-06 21:07:15'),(181,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','','',91.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 21:14:38','2014-07-06 21:14:38'),(182,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','','',91.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 21:16:28','2014-07-06 21:16:28'),(183,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','На Вашу почту будет отправлено\nписьмо с деталями заказа.\nНаши менеджеры свяжутся с Вами,\nчтобы обсудить детали доставки.\nСпасибо, что выбрали нас!','',91.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 21:17:08','2014-07-06 21:17:08'),(184,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','На Вашу почту будет отправлено\nписьмо с деталями заказа.\nНаши менеджеры свяжутся с Вами,\nчтобы обсудить детали доставки.\nСпасибо, что выбрали нас!\nаааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааа','',91.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 21:17:21','2014-07-06 21:17:21'),(185,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','На Вашу почту будет отправлено\nписьмо с деталями заказа.\nНаши менеджеры свяжутся с Вами,\nчтобы обсудить детали доставки.\nСпасибо, что выбрали нас!\nаааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааooooooooooooooooooooooooooooooooooooooааааааааааааааааааааааааааааааааааааа','',91.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 21:24:35','2014-07-06 21:24:35'),(186,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','На Вашу почту будет отправлено\nписьмо с деталями заказа.\nНаши менеджеры свяжутся с Вами,\nчтобы обсудить детали доставки.\nСпасибо, что выбрали нас!\nаааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааooooooooooooooooooooooooooooooooooooooааааааааааааааааааааааааааааааааааааа','',91.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 21:25:25','2014-07-06 21:25:25'),(187,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','На Вашу почту будет отправлено\nписьмо с деталями заказа.\nНаши менеджеры свяжутся с Вами,\nчтобы обсудить детали доставки.\nСпасибо, что выбрали нас!\nаааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааooooooooooooooooooooooooooooooooooooooааааааааааааааааааааааааааааааааааааа','',91.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 21:53:16','2014-07-06 21:53:16'),(188,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','На Вашу почту будет отправлено\nписьмо с деталями заказа.\nНаши менеджеры свяжутся с Вами,\nчтобы обсудить детали доставки.\nСпасибо, что выбрали нас!\nаааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааooooooooooooooooooooooooooooooooooooooааааааааааааааааааааааааааааааааааааа','',91.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 21:59:01','2014-07-06 21:59:01'),(189,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','На Вашу почту будет отправлено\nписьмо с деталями заказа.\nНаши менеджеры свяжутся с Вами,\nчтобы обсудить детали доставки.\nСпасибо, что выбрали нас!\nаааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааooooooooooooooooooooooooooooooooooooooааааааааааааааааааааааааааааааааааааа','',91.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 21:59:38','2014-07-06 21:59:38'),(190,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','На Вашу почту будет отправлено\nписьмо с деталями заказа.\nНаши менеджеры свяжутся с Вами,\nчтобы обсудить детали доставки.\nСпасибо, что выбрали нас!\nаааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааooooooooooooooooooooooooooooooooooooooааааааааааааааааааааааааааааааааааааа','',91.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 21:59:55','2014-07-06 21:59:55'),(191,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','На Вашу почту будет отправлено\nписьмо с деталями заказа.\nНаши менеджеры свяжутся с Вами,\nчтобы обсудить детали доставки.\nСпасибо, что выбрали нас!\nаааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааooooooooooooooooooooooooooooooooooooooааааааааааааааааааааааааааааааааааааа','',91.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 22:00:44','2014-07-06 22:00:44'),(192,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','На Вашу почту будет отправлено\nписьмо с деталями заказа.\nНаши менеджеры свяжутся с Вами,\nчтобы обсудить детали доставки.\nСпасибо, что выбрали нас!\nаааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааooooooooooooooooooooooooooooooooooooooааааааааааааааааааааааааааааааааааааа','',91.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 22:04:52','2014-07-06 22:04:52'),(193,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','На Вашу почту будет отправлено\nписьмо с деталями заказа.\nНаши менеджеры свяжутся с Вами,\nчтобы обсудить детали доставки.\nСпасибо, что выбрали нас!\nаааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааooooooooooooooooooooooooooooooooooooooааааааааааааааааааааааааааааааааааааа','',91.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 22:07:37','2014-07-06 22:07:37'),(194,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','На Вашу почту будет отправлено\nписьмо с деталями заказа.\nНаши менеджеры свяжутся с Вами,\nчтобы обсудить детали доставки.\nСпасибо, что выбрали нас!\nаааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааooooooooooooooooooooooooooooooooooooooааааааааааааааааааааааааааааааааааааа','',91.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 22:08:02','2014-07-06 22:08:02'),(195,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','На Вашу почту будет отправлено\nписьмо с деталями заказа.\nНаши менеджеры свяжутся с Вами,\nчтобы обсудить детали доставки.\nСпасибо, что выбрали нас!\nаааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааooooooooooooooooooooooooooooooooooooooааааааааааааааааааааааааааааааааааааа','',91.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 22:10:58','2014-07-06 22:10:58'),(196,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','На Вашу почту будет отправлено\nписьмо с деталями заказа.\nНаши менеджеры свяжутся с Вами,\nчтобы обсудить детали доставки.\nСпасибо, что выбрали нас!\nаааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааooooooooooooooooooooooooooooooooooooooааааааааааааааааааааааааааааааааааааа','',91.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 22:11:04','2014-07-06 22:11:04'),(197,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','На Вашу почту будет отправлено\nписьмо с деталями заказа.\nНаши менеджеры свяжутся с Вами,\nчтобы обсудить детали доставки.\nСпасибо, что выбрали нас!\nаааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааooooooooooooooooooooooooooooooooooooooааааааааааааааааааааааааааааааааааааа','',91.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 22:12:43','2014-07-06 22:12:43'),(198,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','На Вашу почту будет отправлено\nписьмо с деталями заказа.\nНаши менеджеры свяжутся с Вами,\nчтобы обсудить детали доставки.\nСпасибо, что выбрали нас!\nаааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааooooooooooooooooooooooooooooooooooooooааааааааааааааааааааааааааааааааааааа','',91.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 22:25:32','2014-07-06 22:25:32'),(199,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','На Вашу почту будет отправлено\nписьмо с деталями заказа.\nНаши менеджеры свяжутся с Вами,\nчтобы обсудить детали доставки.\nСпасибо, что выбрали нас!\nаааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааooooooooooooooooooooooooooooooooooooooааааааааааааааааааааааааааааааааааааа','',91.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 22:26:04','2014-07-06 22:26:04'),(200,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','На Вашу почту будет отправлено\nписьмо с деталями заказа.\nНаши менеджеры свяжутся с Вами,\nчтобы обсудить детали доставки.\nСпасибо, что выбрали нас!\nаааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааooooooooooooooooooooooooooooooooooooooааааааааааааааааааааааааааааааааааааа','',91.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 22:26:17','2014-07-06 22:26:17'),(201,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','На Вашу почту будет отправлено\nписьмо с деталями заказа.\nНаши менеджеры свяжутся с Вами,\nчтобы обсудить детали доставки.\nСпасибо, что выбрали нас!\nаааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааooooooooooooooooooooooooooooooooooooooааааааааааааааааааааааааааааааааааааа','',91.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 22:27:31','2014-07-06 22:27:31'),(202,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','На Вашу почту будет отправлено\nписьмо с деталями заказа.\nНаши менеджеры свяжутся с Вами,\nчтобы обсудить детали доставки.\nСпасибо, что выбрали нас!\nаааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааooooooooooooooooooooooooooooooooooooooааааааааааааааааааааааааааааааааааааа','',91.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 22:27:50','2014-07-06 22:27:50'),(203,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','На Вашу почту будет отправлено\nписьмо с деталями заказа.\nНаши менеджеры свяжутся с Вами,\nчтобы обсудить детали доставки.\nСпасибо, что выбрали нас!\nаааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааooooooooooooooooooooooooooooooooooooooааааааааааааааааааааааааааааааааааааа','',91.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 22:28:06','2014-07-06 22:28:06'),(204,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','На Вашу почту будет отправлено\nписьмо с деталями заказа.\nНаши менеджеры свяжутся с Вами,\nчтобы обсудить детали доставки.\nСпасибо, что выбрали нас!\nаааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааooooooooooooooooooooooooooooooooooooooааааааааааааааааааааааааааааааааааааа','',91.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 22:28:29','2014-07-06 22:28:29'),(205,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','На Вашу почту будет отправлено\nписьмо с деталями заказа.\nНаши менеджеры свяжутся с Вами,\nчтобы обсудить детали доставки.\nСпасибо, что выбрали нас!\nаааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааooooooooooooooooooooooooooooooooooooooааааааааааааааааааааааааааааааааааааа','',91.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 22:28:40','2014-07-06 22:28:40'),(206,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','На Вашу почту будет отправлено\nписьмо с деталями заказа.\nНаши менеджеры свяжутся с Вами,\nчтобы обсудить детали доставки.\nСпасибо, что выбрали нас!\nаааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааooooooooooooooooooooooooooooooooooooooааааааааааааааааааааааааааааааааааааа','',91.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 22:28:52','2014-07-06 22:28:52'),(207,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'srdfgd','','ilya.artamonov@b-leader.ru','+7 (234) 324 2342','','srdfgd','','','','','sd34','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','08.07.2014 16:33',1,'','','','','','','','',0,'',0,'','','','',0,'','На Вашу почту будет отправлено\nписьмо с деталями заказа.\nНаши менеджеры свяжутся с Вами,\nчтобы обсудить детали доставки.\nСпасибо, что выбрали нас!\nаааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааooooooooooooooooooooooooooooooooooooooааааааааааааааааааааааааааааааааааааа','',91.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 22:29:50','2014-07-06 22:29:56'),(208,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'3424','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','3424','','','','','32343','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 18:32',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 22:32:44','2014-07-06 22:32:44'),(209,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'3424','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','3424','','','','','32343','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 18:32',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 22:33:28','2014-07-06 22:33:28'),(210,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'3424','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','3424','','','','','32343','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','08.07.2014 18:32',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 22:33:37','2014-07-06 22:33:37'),(211,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'3424','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','3424','','','','','32343','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 18:32',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 22:33:40','2014-07-06 22:33:40'),(212,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'3424','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','3424','','','','','32343','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 18:32',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 22:35:25','2014-07-06 22:35:25'),(213,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'3424','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','3424','','','','','32343','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 18:32',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 22:35:35','2014-07-06 22:35:35'),(214,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',14,1,'3424','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','3424','','','','','32343','32343','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 18:32',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 22:46:40','2014-07-06 22:46:40'),(215,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',14,1,'3424','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','3424','','','','','32343','32343','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','08.07.2014 18:32',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 22:47:00','2014-07-06 22:47:00'),(216,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',14,1,'3424','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','3424','','','','','32343','32343','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 18:32',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 22:47:06','2014-07-06 22:47:06'),(217,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',14,1,'3424','','ilya.artamonov@b-leader.ru','+7 (324) 234 2423','','3424','','','','','32343','32343','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 18:32',1,'','','','','','','','',0,'',0,'','','','',0,'','','',48.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 22:56:28','2014-07-06 22:56:28'),(218,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',15,1,'чсмчсм','','ilya.artamonov@b-leader.ru','+7 (123) 123 1231','','чсмчсм','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 18:32',1,'','','','','','','','',0,'',0,'','','','',0,'','','test',300.5000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 23:00:36','2014-07-06 23:00:36'),(219,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'234','','ilya.artamonov@b-leader.ru','+7 (234) 234 2342','','234','','','','','dsf','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 18:32',1,'','','','','','','','',0,'',0,'','','','',0,'','','test',300.5000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 23:03:30','2014-07-06 23:03:30'),(220,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',16,1,'234','','ilya.artamonov@b-leader.ru','+7 (234) 234 2342','','234','','','','','dsf','dsf','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','08.07.2014 18:32',1,'','','','','','','','',0,'',0,'','','','',0,'','','test',300.5000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 23:04:01','2014-07-06 23:04:01'),(221,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',16,1,'234','','ilya.artamonov@b-leader.ru','+7 (234) 234 2342','','234','','','','','dsf','dsf','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','08.07.2014 18:32',1,'','','','','','','','',0,'',0,'','','','',0,'','','test',300.5000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-06 23:04:13','2014-07-06 23:04:14'),(222,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',17,1,'Artamonov','','ilya.artamonov@b-leader.ru','+7 (123) 123 1231','','Artamonov','','','','','','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','20.07.2014 15:41',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-18 19:42:08','2014-07-18 19:42:08'),(223,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',17,1,'Artamonov','','ilya.artamonov@b-leader.ru','+7 (123) 123 1231','','Artamonov','','','','','','','admin','','Российская Федерация',176,'',22761,'','Наличными курьеру','cod','20.07.2014 15:41',1,'','','','','','','','',0,'',0,'','','','',0,'','','',101.0000,5,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-18 19:44:51','2014-07-18 20:03:42'),(224,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',1,1,'Илья Константинович','Ульянов','ilya.artamonov73@gmail.com','asd','','asd','asd','','','','asd','','admin','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','20.07.2014 15:49',1,'','','','','','','','',0,'',0,'','','','',0,'','','',3402.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-18 19:50:30','2014-07-18 19:50:30'),(225,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',1,1,'Илья Константинович','Ульянов','ilya.artamonov73@gmail.com','asd','','asd','asd','','','','asd','','admin','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','20.07.2014 15:49',1,'','','','','','','','',0,'',0,'','','','',0,'','','',3402.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-07-18 19:50:41','2014-07-18 19:50:43'),(226,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'123','','mu-brodsf@mail.ru','+7 (123) 123 1231','','123','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','01.09.2014 16:00',1,'','','','','','','','',0,'',0,'','','','',0,'','','',19800.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-30 21:12:12','2014-08-30 21:12:12'),(227,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'123','','mu-brodsf@mail.ru','+7 (123) 123 1231','','123','','','','','sdfs','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','01.09.2014 16:00',1,'','','','','','','','',0,'',0,'','','','',0,'','','',19800.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-30 21:29:35','2014-08-30 21:29:52'),(228,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'test','','testwer@test.test','+7 (234) 234 2342','','test','','','','','adrr2','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'tstes','','','adrr2','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','01.09.2014 17:42',1,'+7 (324) 234 2423','','',5000.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-30 21:42:29','2014-08-30 21:42:49'),(229,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'234234','','tes324t@test.test','+7 (343) 242 3423','','234234','','','','','1123111','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','01.09.2014 17:49',1,'','','','','','','','',0,'',0,'','','','',0,'','','',5000.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-30 21:59:33','2014-08-30 21:59:33'),(230,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',21,1,'123','','test123@test.test','+7 (123) 123 1231','','123','','','','','1111111','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','01.09.2014 17:49',1,'','','','','','','','',0,'',0,'','','','',0,'','','',5000.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-30 22:08:11','2014-08-30 22:08:11'),(231,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',21,1,'123','','test123@test.test','+7 (123) 123 1231','','123','','','','','1111111','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','01.09.2014 17:49',1,'','','','','','','','',0,'',0,'','','','',0,'','','',5000.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-30 22:08:29','2014-08-30 22:08:29'),(232,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',21,1,'123','','test123@test.test','+7 (123) 123 1231','','123','','','','','1111111','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','01.09.2014 17:49',1,'','','','','','','','',0,'',0,'','','','',0,'','','',5000.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-30 22:08:39','2014-08-30 22:08:43'),(233,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',21,1,'123','','test123@test.test','+7 (123) 123 1231','','123','','','','','1111111','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','01.09.2014 18:09',1,'','','','','','','','',0,'',0,'','','','',0,'','','',5000.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-30 22:09:12','2014-08-30 22:12:16'),(234,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',21,1,'123','','test123@test.test','+7 (123) 123 1231','','123','','','','','2222222','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','01.09.2014 18:20',1,'','','','','','','','',0,'',0,'','','','',0,'','','',5000.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-30 22:28:57','2014-08-30 22:28:57'),(235,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',21,1,'123','','test123@test.test','+7 (123) 123 1231','','123','','','','','22222222','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','01.09.2014 18:20',1,'','','','','','','','',0,'',0,'','','','',0,'','','',5000.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-30 22:29:16','2014-08-30 22:29:19'),(236,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',21,1,'123','','test123@test.test','+7 (123) 123 1231','','123','','','','','22222222222222','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'aaaaaaaaaa','','','1111111','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','01.09.2014 18:30',1,'+7 (123) 111 1111','','11111111111',5000.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-30 22:30:38','2014-08-30 22:30:38'),(237,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',21,1,'123','','test123@test.test','+7 (123) 123 1231','','123','','','','','222222222','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'aaaaaaaaaa','','','1111111','','2761','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','01.09.2014 18:30',1,'+7 (123) 111 1111','','11111111111',5000.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-30 22:33:31','2014-08-30 22:33:31'),(238,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',21,1,'123','','test123@test.test','+7 (123) 123 1231','','123','','','','','22222222','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'aaaaaaaaaa','','','1111111','','2761','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','01.09.2014 18:30',1,'+7 (123) 111 1111','','11111111111',5000.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-30 22:40:01','2014-08-30 22:40:01'),(239,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',21,1,'123','','test123@test.test','+7 (123) 123 1231','','123','','','','','2222222222','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'aaaaaaaaaa','','','1111111','','2761','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','01.09.2014 18:30',1,'+7 (123) 111 1111','','11111111111',5000.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-30 22:40:55','2014-08-30 22:40:55'),(240,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',21,1,'123','','test123@test.test','+7 (123) 123 1231','','123','','','','','2222222222','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'aaaaaaaaaa','','','1111111','','2761','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','01.09.2014 18:30',1,'+7 (123) 111 1111','','11111111111',5000.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-30 22:43:13','2014-08-30 22:43:13'),(241,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',21,1,'123','','test123@test.test','+7 (123) 123 1231','','123','','','','','2222222222','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'aaaaaaaaaa','','','1111111','','2761','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','01.09.2014 18:30',1,'+7 (123) 111 1111','','11111111111',4250.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-30 22:43:39','2014-08-30 22:43:48'),(242,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',21,1,'123','','test123@test.test','+7 (123) 123 1231','','123','','','','','2222222','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'cccccccccccccc','','','2222222','','','','Российская Федерация',176,'Москва',2761,'','Доставка в пределах МКАД (бесплатно)','free.free','01.09.2014 18:45',1,'+7 (111) 111 1111','','222222222222',5000.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-30 22:45:27','2014-08-30 22:45:33'),(243,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',21,1,'123','','test123@test.test','+7 (123) 123 1231','','123','','','','','1111111','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','',0,'zzzzzzzzz','','','1111111','','','','Российская Федерация',176,'Москва',2761,'','Самовывоз из магазина','pickup.pickup','01.09.2014 18:45',1,'+7 (111) 111 1111','','222222222222',5000.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-30 22:46:09','2014-08-30 22:46:15'),(244,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'qqqqq','','teqqst@test.test','+7 (211) 111 1111','','qqqqq','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','01.09.2014 18:47',1,'','','','','','','','',0,'',0,'','','','',0,'','','222222222222',5000.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-30 22:47:19','2014-08-30 22:47:19'),(245,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'qqqqq','','teqqst@test.test','+7 (211) 111 1111','','qqqqq','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','01.09.2014 18:47',1,'','','','','','','','',0,'',0,'','','','',0,'','','222222222222',5000.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-30 22:48:14','2014-08-30 22:48:14'),(246,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'qqqqq','','teqqst@test.test','+7 (211) 111 1111','','qqqqq','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','01.09.2014 18:47',1,'','','','','','','','',0,'',0,'','','','',0,'','','222222222222',10000.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-30 22:49:42','2014-08-30 22:49:54'),(247,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'123123123','','tes222t@test.test','+7 (222) 222 2222','','123123123','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','01.09.2014 18:51',1,'','','','','','','','',0,'',0,'','','','',0,'','','222222222222',5000.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-30 22:51:53','2014-08-30 22:51:59'),(248,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'111111','','test222@test.test','+7 (111) 111 1111','','111111','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','01.09.2014 18:55',1,'','','','','','','','',0,'',0,'','Самовывоз из магазина','pickup.pickup','',0,'','','222222222222',5500.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-30 23:01:51','2014-08-30 23:01:51'),(249,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'111111','','test222@test.test','+7 (111) 111 1111','','111111','','','','','','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','01.09.2014 18:55',1,'','','','','','','','',0,'',0,'','Самовывоз из магазина','pickup.pickup','',0,'','','222222222222',5500.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-30 23:03:06','2014-08-30 23:03:11'),(250,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'11111111','','tes222t@test.test','+7 (111) 111 1111','','11111111','','','','','22222222222','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','01.09.2014 19:09',1,'','','','22222222222','','','','',0,'',0,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','222222222222',10500.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-30 23:10:21','2014-08-30 23:10:21'),(251,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'11111111','','tes222t@test.test','+7 (111) 111 1111','','11111111','','','','','22222222222','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','01.09.2014 19:09',1,'','','','22222222222','','','','',0,'',0,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','222222222222',5500.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-31 00:04:13','2014-08-31 00:04:13'),(252,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'11111111','','tes222t@test.test','+7 (111) 111 1111','','11111111','','','','','22222222222','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','01.09.2014 19:09',1,'','','','22222222222','','','','',0,'',0,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','222222222222',5500.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-31 00:04:27','2014-08-31 00:04:27'),(253,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'11111111','','tes222t@test.test','+7 (111) 111 1111','','11111111','','','','','22222222222','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','01.09.2014 19:09',1,'','','','22222222222','','','','',0,'',0,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','222222222222',5500.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-31 00:04:38','2014-08-31 00:04:38'),(254,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'11111111','','tes222t@test.test','+7 (111) 111 1111','','11111111','','','','','22222222222','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','01.09.2014 19:09',1,'','','','22222222222','','','','',0,'',0,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','222222222222',5500.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-31 00:06:08','2014-08-31 00:06:08'),(255,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'11111111','','tes222t@test.test','+7 (111) 111 1111','','11111111','','','','','22222222222','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','01.09.2014 19:09',1,'','','','22222222222','','','','',0,'',0,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','222222222222',5500.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-31 00:08:33','2014-08-31 00:08:33'),(256,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'11111111','','tes222t@test.test','+7 (111) 111 1111','','11111111','','','','','22222222222','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','01.09.2014 19:09',1,'','','','22222222222','','','','',0,'',0,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','222222222222',5500.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-31 00:09:40','2014-08-31 00:09:40'),(257,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'11111111','','tes222t@test.test','+7 (111) 111 1111','','11111111','','','','','22222222222','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','01.09.2014 19:09',1,'','','','22222222222','','','','',0,'',0,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','222222222222',5500.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-31 00:12:20','2014-08-31 00:12:20'),(258,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'11111111','','tes222t@test.test','+7 (111) 111 1111','','11111111','','','','','22222222222','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','01.09.2014 19:09',1,'','','','22222222222','','','','',0,'',0,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','222222222222',5500.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-31 00:12:41','2014-08-31 00:12:41'),(259,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'11111111','','tes222t@test.test','+7 (111) 111 1111','','11111111','','','','','22222222222','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','01.09.2014 19:09',1,'','','','22222222222','','','','',0,'',0,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','222222222222',5500.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-31 00:13:22','2014-08-31 00:13:22'),(260,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'11111111','','tes222t@test.test','+7 (111) 111 1111','','11111111','','','','','22222222222','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','01.09.2014 19:09',1,'','','','22222222222','','','','',0,'',0,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','222222222222',5500.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-31 00:13:34','2014-08-31 00:13:34'),(261,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'11111111','','tes222t@test.test','+7 (111) 111 1111','','11111111','','','','','22222222222','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','01.09.2014 19:09',1,'','','','22222222222','','','','',0,'',0,'','Доставка в пределах МКАД (бесплатно)','free.free','',0,'','','222222222222',10000.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-31 00:13:50','2014-08-31 00:13:50'),(262,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'11111111','','tes222t@test.test','+7 (111) 111 1111','','11111111','','','','','22222222222','','','','Российская Федерация',176,'Москва',2761,'','Оплата Банковской картой','liqpay','01.09.2014 19:09',1,'','','','22222222222','','','','',0,'',0,'','Самовывоз из магазина','pickup.pickup','',0,'','','222222222222',10000.0000,0,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-31 00:13:57','2014-08-31 00:13:57'),(263,0,'INV-2013-00',0,'florentinproject.com','http://localhost/florentinproject/',0,1,'11111111','','tes222t@test.test','+7 (111) 111 1111','','11111111','','','','','22222222222','','','','Российская Федерация',176,'Москва',2761,'','Наличными курьеру','cod','01.09.2014 19:09',1,'','','','22222222222','','','','',0,'',0,'','Самовывоз из магазина','pickup.pickup','',0,'','','222222222222',10000.0000,2,0,0.0000,1,1,'RUB',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.33 Safari/535.11','ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4','2014-08-31 00:14:07','2014-08-31 00:14:08');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_download`
--

DROP TABLE IF EXISTS `order_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_download` (
  `order_download_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_download`
--

LOCK TABLES `order_download` WRITE;
/*!40000 ALTER TABLE `order_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_field`
--

DROP TABLE IF EXISTS `order_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_field` (
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_id`,`custom_field_id`,`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_field`
--

LOCK TABLES `order_field` WRITE;
/*!40000 ALTER TABLE `order_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_fraud`
--

DROP TABLE IF EXISTS `order_fraud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_fraud`
--

LOCK TABLES `order_fraud` WRITE;
/*!40000 ALTER TABLE `order_fraud` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_fraud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_history`
--

DROP TABLE IF EXISTS `order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_history`
--

LOCK TABLES `order_history` WRITE;
/*!40000 ALTER TABLE `order_history` DISABLE KEYS */;
INSERT INTO `order_history` VALUES (1,10,1,1,'','2014-06-10 17:44:32'),(2,13,1,1,'','2014-06-11 14:40:48'),(3,21,1,1,'','2014-06-12 15:32:35'),(4,23,1,1,'','2014-06-12 15:40:26'),(5,27,1,1,'','2014-06-16 17:22:52'),(6,42,1,1,'','2014-06-19 13:34:50'),(7,43,2,1,'','2014-06-19 13:44:20'),(8,43,5,0,'','2014-06-19 13:58:05'),(9,43,5,0,'','2014-06-19 13:59:43'),(10,43,1,0,'','2014-06-19 14:17:31'),(11,43,5,0,'','2014-06-19 14:17:49'),(12,47,2,1,'','2014-06-23 17:53:32'),(13,55,2,1,'','2014-06-23 19:14:35'),(14,59,2,1,'','2014-06-23 19:21:25'),(15,79,2,1,'','2014-06-23 21:33:06'),(16,84,2,1,'','2014-06-23 21:45:28'),(17,101,2,1,'','2014-06-24 01:00:57'),(18,105,2,1,'','2014-06-24 01:09:18'),(19,121,2,1,'','2014-06-24 01:52:06'),(20,125,2,1,'','2014-06-25 00:04:30'),(21,126,2,1,'','2014-06-25 00:06:10'),(22,127,2,1,'','2014-06-25 00:23:05'),(23,128,2,1,'','2014-06-25 00:28:09'),(24,129,2,1,'','2014-06-25 00:29:13'),(25,131,2,1,'','2014-06-25 00:44:24'),(26,133,2,1,'','2014-06-25 00:49:45'),(27,134,2,1,'','2014-06-25 01:09:50'),(28,141,2,1,'','2014-06-25 01:17:35'),(29,143,2,1,'','2014-06-25 01:27:17'),(30,145,2,1,'','2014-06-25 01:31:50'),(31,146,2,1,'','2014-06-25 01:53:24'),(32,158,2,1,'','2014-07-03 23:32:56'),(33,161,2,1,'','2014-07-04 00:36:58'),(34,166,2,1,'','2014-07-04 00:42:42'),(35,167,2,1,'','2014-07-04 00:49:07'),(36,169,2,1,'','2014-07-04 00:49:59'),(37,171,2,1,'','2014-07-04 00:50:51'),(38,207,2,1,'','2014-07-06 22:29:56'),(39,221,2,1,'','2014-07-06 23:04:14'),(40,223,2,1,'','2014-07-18 19:44:56'),(41,225,2,1,'','2014-07-18 19:50:43'),(42,223,5,1,'Комментарий, который пишет администратор','2014-07-18 20:01:11'),(43,223,5,1,'&gt;&gt; КОМЕНТАРИИ АДМИНИСТРАТОРА','2014-07-18 20:03:42'),(44,227,2,1,'','2014-08-30 21:29:52'),(45,228,2,1,'','2014-08-30 21:42:49'),(46,232,2,1,'','2014-08-30 22:08:43'),(47,233,2,1,'','2014-08-30 22:12:16'),(48,235,2,1,'','2014-08-30 22:29:19'),(49,241,2,1,'','2014-08-30 22:43:48'),(50,242,2,1,'','2014-08-30 22:45:33'),(51,243,2,1,'','2014-08-30 22:46:15'),(52,246,2,1,'','2014-08-30 22:49:54'),(53,247,2,1,'','2014-08-30 22:51:59'),(54,249,2,1,'','2014-08-30 23:03:11'),(55,263,2,1,'','2014-08-31 00:14:08');
/*!40000 ALTER TABLE `order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_option`
--

DROP TABLE IF EXISTS `order_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=220 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_option`
--

LOCK TABLES `order_option` WRITE;
/*!40000 ALTER TABLE `order_option` DISABLE KEYS */;
INSERT INTO `order_option` VALUES (1,1,1,1,0,'Дата доставки','04.06.2014 10:16','datetime'),(2,1,1,2,0,'Текст послания','test 1 tes 2 test 3 \ntest 4 tes 5 test 6 \ntest 1 tes 2 test 3 ','textarea'),(3,1,2,1,0,'Дата доставки','12.06.2014 15:00','datetime'),(4,2,3,1,0,'Дата доставки','04.06.2014 10:16','datetime'),(5,2,3,2,0,'Текст послания','test 1 tes 2 test 3 \ntest 4 tes 5 test 6 \ntest 1 tes 2 test 3 ','textarea'),(6,2,4,1,0,'Дата доставки','12.06.2014 15:00','datetime'),(7,3,5,1,0,'Дата доставки','04.06.2014 10:16','datetime'),(8,3,5,2,0,'Текст послания','test 1 tes 2 test 3 \ntest 4 tes 5 test 6 \ntest 1 tes 2 test 3 ','textarea'),(9,3,6,1,0,'Дата доставки','12.06.2014 15:00','datetime'),(10,4,7,1,0,'Дата доставки','04.06.2014 10:16','datetime'),(11,4,7,2,0,'Текст послания','test 1 tes 2 test 3 \ntest 4 tes 5 test 6 \ntest 1 tes 2 test 3 ','textarea'),(12,4,8,1,0,'Дата доставки','12.06.2014 15:00','datetime'),(13,5,9,1,0,'Дата доставки','04.06.2014 10:16','datetime'),(14,5,9,2,0,'Текст послания','test 1 tes 2 test 3 \ntest 4 tes 5 test 6 \ntest 1 tes 2 test 3 ','textarea'),(15,5,10,1,0,'Дата доставки','12.06.2014 15:00','datetime'),(16,6,11,1,0,'Дата доставки','04.06.2014 10:16','datetime'),(17,6,11,2,0,'Текст послания','test 1 tes 2 test 3 \ntest 4 tes 5 test 6 \ntest 1 tes 2 test 3 ','textarea'),(18,6,12,1,0,'Дата доставки','12.06.2014 15:00','datetime'),(19,7,13,1,0,'Дата доставки','04.06.2014 10:16','datetime'),(20,7,13,2,0,'Текст послания','test 1 tes 2 test 3 \ntest 4 tes 5 test 6 \ntest 1 tes 2 test 3 ','textarea'),(21,7,14,1,0,'Дата доставки','12.06.2014 15:00','datetime'),(22,8,15,1,0,'Дата доставки','04.06.2014 10:16','datetime'),(23,8,15,2,0,'Текст послания','test 1 tes 2 test 3 \ntest 4 tes 5 test 6 \ntest 1 tes 2 test 3 ','textarea'),(24,8,16,1,0,'Дата доставки','12.06.2014 15:00','datetime'),(25,9,17,1,0,'Дата доставки','04.06.2014 10:16','datetime'),(26,9,17,2,0,'Текст послания','test 1 tes 2 test 3 \ntest 4 tes 5 test 6 \ntest 1 tes 2 test 3 ','textarea'),(27,9,18,1,0,'Дата доставки','12.06.2014 15:00','datetime'),(28,10,19,1,0,'Дата доставки','04.06.2014 10:16','datetime'),(29,10,19,2,0,'Текст послания','test 1 tes 2 test 3 \ntest 4 tes 5 test 6 \ntest 1 tes 2 test 3 ','textarea'),(30,10,20,1,0,'Дата доставки','12.06.2014 15:00','datetime'),(31,11,21,1,0,'Дата доставки','05.06.2014 17:00','datetime'),(32,11,21,2,0,'Текст послания','вап','textarea'),(33,11,22,1,0,'Дата доставки','13.06.2014 13:00','datetime'),(34,11,22,2,0,'Текст послания','еуые','textarea'),(35,11,23,4,0,'Дата доставки','06.06.2014 13:00','datetime'),(36,11,23,7,0,'ФИО получателя','еыуе','text'),(37,11,23,3,0,'Адрес доставки','еуые','text'),(38,11,23,6,0,'Телефон получателя','еыуе','text'),(39,11,23,5,0,'Текст послания','еуые','textarea'),(40,12,24,1,0,'Дата доставки','05.06.2014 17:00','datetime'),(41,12,24,2,0,'Текст послания','вап','textarea'),(42,12,25,1,0,'Дата доставки','13.06.2014 13:00','datetime'),(43,12,25,2,0,'Текст послания','еуые','textarea'),(44,12,26,4,0,'Дата доставки','06.06.2014 13:00','datetime'),(45,12,26,7,0,'ФИО получателя','еыуе','text'),(46,12,26,3,0,'Адрес доставки','еуые','text'),(47,12,26,6,0,'Телефон получателя','еыуе','text'),(48,12,26,5,0,'Текст послания','еуые','textarea'),(49,13,27,1,0,'Дата доставки','05.06.2014 17:00','datetime'),(50,13,27,2,0,'Текст послания','вап','textarea'),(51,13,28,1,0,'Дата доставки','13.06.2014 13:00','datetime'),(52,13,28,2,0,'Текст послания','еуые','textarea'),(53,13,29,4,0,'Дата доставки','06.06.2014 13:00','datetime'),(54,13,29,7,0,'ФИО получателя','еыуе','text'),(55,13,29,3,0,'Адрес доставки','еуые','text'),(56,13,29,6,0,'Телефон получателя','еыуе','text'),(57,13,29,5,0,'Текст послания','еуые','textarea'),(58,14,30,1,0,'Дата доставки','11.06.2014 16:00','datetime'),(59,14,30,2,0,'Текст послания','у','textarea'),(60,15,31,1,0,'Дата доставки','11.06.2014 16:00','datetime'),(61,15,31,2,0,'Текст послания','у','textarea'),(62,16,32,1,0,'Дата доставки','11.06.2014 16:00','datetime'),(63,16,32,2,0,'Текст послания','у','textarea'),(64,17,33,1,0,'Дата доставки','11.06.2014 16:00','datetime'),(65,17,33,2,0,'Текст послания','у','textarea'),(66,18,34,4,0,'Дата доставки','12.06.2014 16:00','datetime'),(67,18,34,7,0,'ФИО получателя','aken','text'),(68,18,34,3,0,'Адрес доставки','wqer','text'),(69,18,34,6,0,'Телефон получателя','23423','text'),(70,18,34,5,0,'Текст послания','test etst','textarea'),(71,19,37,4,0,'Дата доставки','12.06.2014 16:00','datetime'),(72,19,37,7,0,'ФИО получателя','aken','text'),(73,19,37,3,0,'Адрес доставки','wqer','text'),(74,19,37,6,0,'Телефон получателя','23423','text'),(75,19,37,5,0,'Текст послания','test etst','textarea'),(76,20,40,4,0,'Дата доставки','12.06.2014 16:00','datetime'),(77,20,40,7,0,'ФИО получателя','aken','text'),(78,20,40,3,0,'Адрес доставки','wqer','text'),(79,20,40,6,0,'Телефон получателя','23423','text'),(80,20,40,5,0,'Текст послания','test etst','textarea'),(81,21,43,4,0,'Дата доставки','12.06.2014 16:00','datetime'),(82,21,43,7,0,'ФИО получателя','aken','text'),(83,21,43,3,0,'Адрес доставки','wqer','text'),(84,21,43,6,0,'Телефон получателя','23423','text'),(85,21,43,5,0,'Текст послания','test etst','textarea'),(86,22,46,1,0,'Дата доставки','12.06.2014 18:00','datetime'),(87,22,46,2,0,'Текст послания','dsf','textarea'),(88,23,47,1,0,'Дата доставки','12.06.2014 18:00','datetime'),(89,23,47,2,0,'Текст послания','dsf','textarea'),(90,24,48,1,0,'Дата доставки','06.06.2014 16:43','datetime'),(91,24,48,2,0,'Текст послания','test','textarea'),(92,25,49,1,0,'Дата доставки','06.06.2014 16:43','datetime'),(93,25,49,2,0,'Текст послания','test','textarea'),(94,26,50,1,0,'Дата доставки','19.06.2014','date'),(95,26,50,2,0,'Текст послания','цу','textarea'),(96,26,51,4,0,'Дата доставки','20.06.2014','date'),(97,26,51,8,0,'Время доставки','выа','text'),(98,26,51,7,0,'ФИО получателя','234','text'),(99,26,51,3,0,'Адрес доставки','234','text'),(100,26,51,6,0,'Телефон получателя','+7 (234) 424 2342','text'),(101,26,51,5,0,'Текст послания','ыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыы','textarea'),(102,26,52,1,0,'Дата доставки','11.06.2014 16:00','date'),(103,26,52,2,0,'Текст послания','у','textarea'),(104,27,53,1,0,'Дата доставки','19.06.2014','date'),(105,27,53,2,0,'Текст послания','цу','textarea'),(106,27,54,4,0,'Дата доставки','20.06.2014','date'),(107,27,54,8,0,'Время доставки','выа','text'),(108,27,54,7,0,'ФИО получателя','234','text'),(109,27,54,3,0,'Адрес доставки','234','text'),(110,27,54,6,0,'Телефон получателя','+7 (234) 424 2342','text'),(111,27,54,5,0,'Текст послания','ыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыы','textarea'),(112,27,55,1,0,'Дата доставки','11.06.2014 16:00','date'),(113,27,55,2,0,'Текст послания','у','textarea'),(114,28,56,4,0,'Дата доставки','25.06.2014','date'),(115,28,56,8,0,'Время доставки','234','text'),(116,28,56,7,0,'ФИО получателя','324','text'),(117,28,56,3,0,'Адрес доставки','sd','text'),(118,28,56,6,0,'Телефон получателя','+7 (234) 234 2342','text'),(119,28,56,5,0,'Текст послания','sdf','textarea'),(120,29,57,4,0,'Дата доставки','25.06.2014','date'),(121,29,57,8,0,'Время доставки','234','text'),(122,29,57,7,0,'ФИО получателя','324','text'),(123,29,57,3,0,'Адрес доставки','sd','text'),(124,29,57,6,0,'Телефон получателя','+7 (234) 234 2342','text'),(125,29,57,5,0,'Текст послания','sdf','textarea'),(126,30,58,4,0,'Дата доставки','25.06.2014','date'),(127,30,58,8,0,'Время доставки','234','text'),(128,30,58,7,0,'ФИО получателя','324','text'),(129,30,58,3,0,'Адрес доставки','sd','text'),(130,30,58,6,0,'Телефон получателя','+7 (234) 234 2342','text'),(131,30,58,5,0,'Текст послания','sdf','textarea'),(132,31,59,4,0,'Дата доставки','25.06.2014','date'),(133,31,59,8,0,'Время доставки','234','text'),(134,31,59,7,0,'ФИО получателя','324','text'),(135,31,59,3,0,'Адрес доставки','sd','text'),(136,31,59,6,0,'Телефон получателя','+7 (234) 234 2342','text'),(137,31,59,5,0,'Текст послания','sdf','textarea'),(138,32,60,4,0,'Дата доставки','25.06.2014','date'),(139,32,60,8,0,'Время доставки','234','text'),(140,32,60,7,0,'ФИО получателя','324','text'),(141,32,60,3,0,'Адрес доставки','sd','text'),(142,32,60,6,0,'Телефон получателя','+7 (234) 234 2342','text'),(143,32,60,5,0,'Текст послания','sdf','textarea'),(144,33,61,4,0,'Дата доставки','25.06.2014','date'),(145,33,61,8,0,'Время доставки','234','text'),(146,33,61,7,0,'ФИО получателя','324','text'),(147,33,61,3,0,'Адрес доставки','sd','text'),(148,33,61,6,0,'Телефон получателя','+7 (234) 234 2342','text'),(149,33,61,5,0,'Текст послания','sdf','textarea'),(150,34,62,4,0,'Дата доставки','25.06.2014','date'),(151,34,62,8,0,'Время доставки','234','text'),(152,34,62,7,0,'ФИО получателя','324','text'),(153,34,62,3,0,'Адрес доставки','sd','text'),(154,34,62,6,0,'Телефон получателя','+7 (234) 234 2342','text'),(155,34,62,5,0,'Текст послания','sdf','textarea'),(156,35,63,4,0,'Дата доставки','25.06.2014','date'),(157,35,63,8,0,'Время доставки','234','text'),(158,35,63,7,0,'ФИО получателя','324','text'),(159,35,63,3,0,'Адрес доставки','sd','text'),(160,35,63,6,0,'Телефон получателя','+7 (234) 234 2342','text'),(161,35,63,5,0,'Текст послания','sdf','textarea'),(162,36,64,4,0,'Дата доставки','25.06.2014','date'),(163,36,64,8,0,'Время доставки','234','text'),(164,36,64,7,0,'ФИО получателя','324','text'),(165,36,64,3,0,'Адрес доставки','sd','text'),(166,36,64,6,0,'Телефон получателя','+7 (234) 234 2342','text'),(167,36,64,5,0,'Текст послания','sdf','textarea'),(168,37,65,4,0,'Дата доставки','25.06.2014','date'),(169,37,65,8,0,'Время доставки','234','text'),(170,37,65,7,0,'ФИО получателя','324','text'),(171,37,65,3,0,'Адрес доставки','sd','text'),(172,37,65,6,0,'Телефон получателя','+7 (234) 234 2342','text'),(173,37,65,5,0,'Текст послания','sdf','textarea'),(174,38,66,4,0,'Дата доставки','25.06.2014','date'),(175,38,66,8,0,'Время доставки','234','text'),(176,38,66,7,0,'ФИО получателя','324','text'),(177,38,66,3,0,'Адрес доставки','sd','text'),(178,38,66,6,0,'Телефон получателя','+7 (234) 234 2342','text'),(179,38,66,5,0,'Текст послания','sdf','textarea'),(180,39,67,4,0,'Дата доставки','18.06.2014','date'),(181,39,67,8,0,'Время доставки','34','text'),(182,39,67,7,0,'ФИО получателя','345','text'),(183,39,67,3,0,'Адрес доставки','345','text'),(184,39,67,6,0,'Телефон получателя','+7 (534) 534 5345','text'),(185,39,67,5,0,'Текст послания','ert','textarea'),(186,39,68,4,0,'Дата доставки','25.06.2014','date'),(187,39,68,8,0,'Время доставки','234','text'),(188,39,68,7,0,'ФИО получателя','324','text'),(189,39,68,3,0,'Адрес доставки','sd','text'),(190,39,68,6,0,'Телефон получателя','+7 (234) 234 2342','text'),(191,39,68,5,0,'Текст послания','sdf','textarea'),(192,40,69,4,0,'Дата доставки','18.06.2014','date'),(193,40,69,8,0,'Время доставки','34','text'),(194,40,69,7,0,'ФИО получателя','345','text'),(195,40,69,3,0,'Адрес доставки','345','text'),(196,40,69,6,0,'Телефон получателя','+7 (534) 534 5345','text'),(197,40,69,5,0,'Текст послания','ert','textarea'),(198,40,70,4,0,'Дата доставки','25.06.2014','date'),(199,40,70,8,0,'Время доставки','234','text'),(200,40,70,7,0,'ФИО получателя','324','text'),(201,40,70,3,0,'Адрес доставки','sd','text'),(202,40,70,6,0,'Телефон получателя','+7 (234) 234 2342','text'),(203,40,70,5,0,'Текст послания','sdf','textarea'),(204,41,71,4,0,'Дата доставки','18.06.2014','date'),(205,41,71,8,0,'Время доставки','34','text'),(206,41,71,7,0,'ФИО получателя','345','text'),(207,41,71,3,0,'Адрес доставки','345','text'),(208,41,71,6,0,'Телефон получателя','+7 (534) 534 5345','text'),(209,41,71,5,0,'Текст послания','ert','textarea'),(210,41,72,4,0,'Дата доставки','25.06.2014','date'),(211,41,72,8,0,'Время доставки','234','text'),(212,41,72,7,0,'ФИО получателя','324','text'),(213,41,72,3,0,'Адрес доставки','sd','text'),(214,41,72,6,0,'Телефон получателя','+7 (234) 234 2342','text'),(215,41,72,5,0,'Текст послания','sdf','textarea'),(216,224,274,1,0,'Дата доставки','10.06.2014 21:13','date'),(217,224,274,2,0,'Текст послания','test','textarea'),(218,225,276,1,0,'Дата доставки','10.06.2014 21:13','date'),(219,225,276,2,0,'Текст послания','test','textarea');
/*!40000 ALTER TABLE `order_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=323 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product`
--

LOCK TABLES `order_product` WRITE;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
INSERT INTO `order_product` VALUES (1,1,41,'No 2','Товар 14',2,3200.0000,6400.0000,0.0000,0),(2,1,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(3,2,41,'No 2','Товар 14',2,3200.0000,6400.0000,0.0000,0),(4,2,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(5,3,41,'No 2','Товар 14',2,3200.0000,6400.0000,0.0000,0),(6,3,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(7,4,41,'No 2','Товар 14',2,3200.0000,6400.0000,0.0000,0),(8,4,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(9,5,41,'No 2','Товар 14',2,3200.0000,6400.0000,0.0000,0),(10,5,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(11,6,41,'No 2','Товар 14',2,3200.0000,6400.0000,0.0000,0),(12,6,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(13,7,41,'No 2','Товар 14',2,3200.0000,6400.0000,0.0000,0),(14,7,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(15,8,41,'No 2','Товар 14',2,3200.0000,6400.0000,0.0000,0),(16,8,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(17,9,41,'No 2','Товар 14',2,3200.0000,6400.0000,0.0000,0),(18,9,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(19,10,41,'No 2','Товар 14',2,3200.0000,6400.0000,0.0000,0),(20,10,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(21,11,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(22,11,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(23,11,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(24,12,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(25,12,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(26,12,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(27,13,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(28,13,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(29,13,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(30,14,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(31,15,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(32,16,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(33,17,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(34,18,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(35,18,28,'No 4','Товар 1',1,100.0000,100.0000,0.0000,400),(36,18,42,'No 7','Товар 15',4,90.0000,360.0000,0.0000,0),(37,19,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(38,19,28,'No 4','Товар 1',1,100.0000,100.0000,0.0000,400),(39,19,42,'No 7','Товар 15',4,90.0000,360.0000,0.0000,0),(40,20,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(41,20,28,'No 4','Товар 1',1,100.0000,100.0000,0.0000,400),(42,20,42,'No 7','Товар 15',4,90.0000,360.0000,0.0000,0),(43,21,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(44,21,28,'No 4','Товар 1',1,100.0000,100.0000,0.0000,400),(45,21,42,'No 7','Товар 15',4,90.0000,360.0000,0.0000,0),(46,22,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(47,23,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(48,24,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(49,25,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(50,26,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(51,26,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(52,26,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(53,27,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(54,27,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(55,27,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(56,28,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(57,29,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(58,30,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(59,31,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(60,32,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(61,33,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(62,34,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(63,35,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(64,36,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(65,37,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(66,38,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(67,39,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(68,39,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(69,40,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(70,40,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(71,41,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(72,41,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(73,42,47,'No 5','Товар 21',1,100.0000,100.0000,0.0000,300),(74,43,47,'No 5','',1,100.0000,100.0000,0.0000,300),(75,44,40,'No 1','Товар 11',3,101.0000,303.0000,0.0000,0),(76,45,40,'No 1','Товар 11',3,101.0000,303.0000,0.0000,0),(77,46,40,'No 1','Товар 11',3,101.0000,303.0000,0.0000,0),(78,47,40,'No 1','Товар 11',3,101.0000,303.0000,0.0000,0),(79,48,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(80,49,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(81,50,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(82,51,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(83,52,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(84,53,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(85,54,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(86,55,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(87,56,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(88,57,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(89,58,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(90,59,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(91,60,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(92,61,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(93,62,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(94,63,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(95,64,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(96,65,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(97,66,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(98,67,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(99,68,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(100,69,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(101,70,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(102,71,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(103,72,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(104,73,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(105,74,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(106,75,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(107,76,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(108,77,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(109,78,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(110,79,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(111,80,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(112,81,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(113,82,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(114,83,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(115,84,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(116,85,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(117,86,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(118,87,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(119,88,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(120,89,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(121,90,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(122,91,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(123,92,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(124,93,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(125,94,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(126,95,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(127,96,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(128,97,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(129,98,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(130,99,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(131,100,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(132,101,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(133,102,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(134,103,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(135,104,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(136,105,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(137,106,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(138,107,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(139,108,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(140,109,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(141,110,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(142,111,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(143,112,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(144,113,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(145,114,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(146,115,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(147,116,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(148,117,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(149,118,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(150,119,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(151,120,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(152,121,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(153,122,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(154,123,40,'No 1','Товар 11',3,101.0000,303.0000,0.0000,0),(155,124,40,'No 1','Товар 11',3,101.0000,303.0000,0.0000,0),(156,125,40,'No 1','Товар 11',3,101.0000,303.0000,0.0000,0),(157,126,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(158,127,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(159,128,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(160,129,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(161,130,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(162,131,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(163,132,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(164,133,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(165,134,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(166,135,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(167,136,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(168,137,40,'No 1','Товар 11',2,101.0000,202.0000,0.0000,0),(169,138,40,'No 1','Товар 11',2,101.0000,202.0000,0.0000,0),(170,139,40,'No 1','Товар 11',2,101.0000,202.0000,0.0000,0),(171,140,40,'No 1','Товар 11',2,101.0000,202.0000,0.0000,0),(172,141,40,'No 1','Товар 11',2,101.0000,202.0000,0.0000,0),(173,142,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(174,143,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(175,144,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(176,145,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(177,146,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(178,147,40,'No 1','Товар 11',2,101.0000,202.0000,0.0000,0),(179,147,47,'No 5','',3,100.0000,300.0000,0.0000,900),(180,148,40,'No 1','Товар 11',2,101.0000,202.0000,0.0000,0),(181,148,47,'No 5','',3,100.0000,300.0000,0.0000,900),(182,149,40,'No 1','Товар 11',2,101.0000,202.0000,0.0000,0),(183,149,47,'No 5','',3,100.0000,300.0000,0.0000,900),(184,150,40,'No 1','Товар 11',2,101.0000,202.0000,0.0000,0),(185,150,47,'No 5','',3,100.0000,300.0000,0.0000,900),(186,151,40,'No 1','Товар 11',2,101.0000,202.0000,0.0000,0),(187,151,47,'No 5','',3,100.0000,300.0000,0.0000,900),(188,152,40,'No 1','Товар 11',2,101.0000,202.0000,0.0000,0),(189,152,47,'No 5','',3,100.0000,300.0000,0.0000,900),(190,153,40,'No 1','Товар 11',2,101.0000,202.0000,0.0000,0),(191,153,47,'No 5','',3,100.0000,300.0000,0.0000,900),(192,154,40,'No 1','Товар 11',2,101.0000,202.0000,0.0000,0),(193,154,47,'No 5','',3,100.0000,300.0000,0.0000,900),(194,155,40,'No 1','Товар 11',2,101.0000,202.0000,0.0000,0),(195,155,47,'No 5','',3,100.0000,300.0000,0.0000,900),(196,156,40,'No 1','Товар 11',2,101.0000,202.0000,0.0000,0),(197,156,47,'No 5','',3,100.0000,300.0000,0.0000,900),(198,157,40,'No 1','Товар 11',2,101.0000,202.0000,0.0000,0),(199,157,47,'No 5','',3,100.0000,300.0000,0.0000,900),(200,158,40,'No 1','Товар 11',2,101.0000,202.0000,0.0000,0),(201,158,47,'No 5','',3,100.0000,300.0000,0.0000,900),(202,159,40,'No 1','Товар 11',3,101.0000,303.0000,0.0000,0),(203,159,28,'No 4','Товар 1',2,100.0000,200.0000,0.0000,800),(204,160,40,'No 1','Товар 11',2,101.0000,202.0000,0.0000,0),(205,161,40,'No 1','Товар 11',2,101.0000,202.0000,0.0000,0),(206,162,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(207,163,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(208,164,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(209,165,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(210,166,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(211,167,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(212,168,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(213,169,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(214,170,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(215,171,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(216,172,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(217,173,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(218,174,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(219,175,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(220,176,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(221,177,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(222,178,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(223,179,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(224,180,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(225,181,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(226,182,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(227,183,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(228,184,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(229,185,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(230,186,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(231,187,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(232,188,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(233,189,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(234,190,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(235,191,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(236,192,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(237,193,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(238,194,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(239,195,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(240,196,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(241,197,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(242,198,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(243,199,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(244,200,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(245,201,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(246,202,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(247,203,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(248,204,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(249,205,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(250,206,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(251,207,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(252,208,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(253,209,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(254,210,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(255,211,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(256,212,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(257,213,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(258,214,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(259,215,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(260,216,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(261,217,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(262,217,64,'No 3','Товар 01',1,500.0000,500.0000,0.0000,0),(263,218,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(264,218,64,'No 3','Товар 01',1,500.0000,500.0000,0.0000,0),(265,219,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(266,219,64,'No 3','Товар 01',1,500.0000,500.0000,0.0000,0),(267,220,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(268,220,64,'No 3','Товар 01',1,500.0000,500.0000,0.0000,0),(269,221,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(270,221,64,'No 3','Товар 01',1,500.0000,500.0000,0.0000,0),(271,222,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(272,223,40,'No 1','Товар 11',1,101.0000,101.0000,0.0000,0),(273,224,40,'No 1','Товар 11',2,101.0000,202.0000,0.0000,0),(274,224,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(275,225,40,'No 1','Товар 11',2,101.0000,202.0000,0.0000,0),(276,225,41,'No 2','Товар 14',1,3200.0000,3200.0000,0.0000,0),(277,226,42,'No 8','Товар 15',3,3800.0000,11400.0000,0.0000,0),(278,226,47,'No 5','',1,4400.0000,4400.0000,0.0000,300),(279,226,73,'Спец.2','Товар 15',1,4000.0000,4000.0000,0.0000,0),(280,227,42,'No 8','Товар 15',3,3800.0000,11400.0000,0.0000,0),(281,227,47,'No 5','',1,4400.0000,4400.0000,0.0000,300),(282,227,73,'Спец.2','Товар 15',1,4000.0000,4000.0000,0.0000,0),(283,228,40,'No 1','',1,5000.0000,5000.0000,0.0000,0),(284,229,40,'No 1','',1,5000.0000,5000.0000,0.0000,0),(285,230,40,'No 1','',1,5000.0000,5000.0000,0.0000,0),(286,231,40,'No 1','',1,5000.0000,5000.0000,0.0000,0),(287,232,40,'No 1','',1,5000.0000,5000.0000,0.0000,0),(288,233,40,'No 1','',1,5000.0000,5000.0000,0.0000,0),(289,234,40,'No 1','',1,5000.0000,5000.0000,0.0000,0),(290,235,40,'No 1','',1,5000.0000,5000.0000,0.0000,0),(291,236,40,'No 1','',1,5000.0000,5000.0000,0.0000,0),(292,237,40,'No 1','',1,5000.0000,5000.0000,0.0000,0),(293,238,40,'No 1','',1,5000.0000,5000.0000,0.0000,0),(294,239,40,'No 1','',1,5000.0000,5000.0000,0.0000,0),(295,240,40,'No 1','',1,5000.0000,5000.0000,0.0000,0),(296,241,40,'No 1','',1,5000.0000,5000.0000,0.0000,0),(297,242,40,'No 1','',1,5000.0000,5000.0000,0.0000,0),(298,243,40,'No 1','',1,5000.0000,5000.0000,0.0000,0),(299,244,40,'No 1','',1,5000.0000,5000.0000,0.0000,0),(300,245,40,'No 1','',1,5000.0000,5000.0000,0.0000,0),(301,246,40,'No 1','',2,5000.0000,10000.0000,0.0000,0),(302,247,40,'No 1','',1,5000.0000,5000.0000,0.0000,0),(303,248,41,'No 2','Товар 14',1,5500.0000,5500.0000,0.0000,0),(304,249,41,'No 2','Товар 14',1,5500.0000,5500.0000,0.0000,0),(305,250,40,'No 1','',1,5000.0000,5000.0000,0.0000,0),(306,250,41,'No 2','Товар 14',1,5500.0000,5500.0000,0.0000,0),(307,251,41,'No 2','Товар 14',1,5500.0000,5500.0000,0.0000,0),(308,252,41,'No 2','Товар 14',1,5500.0000,5500.0000,0.0000,0),(309,253,41,'No 2','Товар 14',1,5500.0000,5500.0000,0.0000,0),(310,254,41,'No 2','Товар 14',1,5500.0000,5500.0000,0.0000,0),(311,255,41,'No 2','Товар 14',1,5500.0000,5500.0000,0.0000,0),(312,256,41,'No 2','Товар 14',1,5500.0000,5500.0000,0.0000,0),(313,257,41,'No 2','Товар 14',1,5500.0000,5500.0000,0.0000,0),(314,258,41,'No 2','Товар 14',1,5500.0000,5500.0000,0.0000,0),(315,259,41,'No 2','Товар 14',1,5500.0000,5500.0000,0.0000,0),(316,260,41,'No 2','Товар 14',1,5500.0000,5500.0000,0.0000,0),(317,261,41,'No 2','Товар 14',1,5500.0000,5500.0000,0.0000,0),(318,261,64,'No 3','Товар 01',1,4500.0000,4500.0000,0.0000,0),(319,262,41,'No 2','Товар 14',1,5500.0000,5500.0000,0.0000,0),(320,262,64,'No 3','Товар 01',1,4500.0000,4500.0000,0.0000,0),(321,263,41,'No 2','Товар 14',1,5500.0000,5500.0000,0.0000,0),(322,263,64,'No 3','Товар 01',1,4500.0000,4500.0000,0.0000,0);
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
INSERT INTO `order_status` VALUES (1,1,'Ожидание'),(2,1,'В обработке'),(3,1,'Доставлено'),(7,1,'Отменено'),(5,1,'Сделка завершена'),(8,1,'Возврат'),(9,1,'Отмена и аннулирование'),(10,1,'Неудавшийся'),(11,1,'Возмещенный'),(12,1,'Полностью измененный'),(13,1,'Полный возврат');
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_total`
--

DROP TABLE IF EXISTS `order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `idx_orders_total_orders_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=853 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_total`
--

LOCK TABLES `order_total` WRITE;
/*!40000 ALTER TABLE `order_total` DISABLE KEYS */;
INSERT INTO `order_total` VALUES (1,1,'sub_total','Сумма','9 600 р.',9600.0000,1),(2,1,'shipping','Фиксированная стоимость доставки','5 р.',5.0000,3),(3,1,'total','Итого','9 605 р.',9605.0000,9),(4,2,'sub_total','Сумма','9 600 р.',9600.0000,1),(5,2,'shipping','Фиксированная стоимость доставки','5 р.',5.0000,3),(6,2,'total','Итого','9 605 р.',9605.0000,9),(7,3,'sub_total','Сумма','9 600 р.',9600.0000,1),(8,3,'shipping','Фиксированная стоимость доставки','5 р.',5.0000,3),(9,3,'total','Итого','9 605 р.',9605.0000,9),(10,4,'sub_total','Сумма','9 600 р.',9600.0000,1),(11,4,'shipping','Фиксированная стоимость доставки','5 р.',5.0000,3),(12,4,'total','Итого','9 605 р.',9605.0000,9),(13,5,'sub_total','Сумма','9 600 р.',9600.0000,1),(14,5,'shipping','Фиксированная стоимость доставки','5 р.',5.0000,3),(15,5,'total','Итого','9 605 р.',9605.0000,9),(16,6,'sub_total','Сумма','9 600 р.',9600.0000,1),(17,6,'shipping','Фиксированная стоимость доставки','5 р.',5.0000,3),(18,6,'total','Итого','9 605 р.',9605.0000,9),(19,7,'sub_total','Сумма','9 600 р.',9600.0000,1),(20,7,'shipping','Фиксированная стоимость доставки','5 р.',5.0000,3),(21,7,'total','Итого','9 605 р.',9605.0000,9),(22,8,'sub_total','Сумма','9 600 р.',9600.0000,1),(23,8,'shipping','Фиксированная стоимость доставки','5 р.',5.0000,3),(24,8,'total','Итого','9 605 р.',9605.0000,9),(25,9,'sub_total','Сумма','9 600 р.',9600.0000,1),(26,9,'shipping','Фиксированная стоимость доставки','5 р.',5.0000,3),(27,9,'total','Итого','9 605 р.',9605.0000,9),(28,10,'sub_total','Сумма','9 600 р.',9600.0000,1),(29,10,'shipping','Фиксированная стоимость доставки','5 р.',5.0000,3),(30,10,'total','Итого','9 605 р.',9605.0000,9),(31,11,'sub_total','Сумма','6 501 р.',6501.0000,1),(32,11,'shipping','Фиксированная стоимость доставки','5 р.',5.0000,3),(33,11,'total','Итого','6 506 р.',6506.0000,9),(34,12,'sub_total','Сумма','6 501 р.',6501.0000,1),(35,12,'shipping','Фиксированная стоимость доставки','5 р.',5.0000,3),(36,12,'total','Итого','6 506 р.',6506.0000,9),(37,13,'sub_total','Сумма','6 501 р.',6501.0000,1),(38,13,'shipping','Фиксированная стоимость доставки','5 р.',5.0000,3),(39,13,'total','Итого','6 506 р.',6506.0000,9),(40,14,'sub_total','Сумма','3 200 р.',3200.0000,1),(41,14,'shipping','Фиксированная стоимость доставки','5 р.',5.0000,3),(42,14,'total','Итого','3 205 р.',3205.0000,9),(43,15,'sub_total','Сумма','3 200 р.',3200.0000,1),(44,15,'shipping','Фиксированная стоимость доставки','5 р.',5.0000,3),(45,15,'total','Итого','3 205 р.',3205.0000,9),(46,16,'sub_total','Сумма','3 200 р.',3200.0000,1),(47,16,'shipping','Фиксированная стоимость доставки','5 р.',5.0000,3),(48,16,'total','Итого','3 205 р.',3205.0000,9),(49,17,'sub_total','Сумма','3 200 р.',3200.0000,1),(50,17,'shipping','Фиксированная стоимость доставки','5 р.',5.0000,3),(51,17,'total','Итого','3 205 р.',3205.0000,9),(52,18,'sub_total','Сумма','561 р.',561.0000,1),(53,18,'shipping','Доставка в пределах МКАД (бесплатно)','0 р.',0.0000,3),(54,18,'coupon','Купон (1111):','-10 р.',-10.0000,4),(55,18,'total','Итого','551 р.',551.0000,9),(56,19,'sub_total','Сумма','561 р.',561.0000,1),(57,19,'shipping','Доставка в пределах МКАД (бесплатно)','0 р.',0.0000,3),(58,19,'coupon','Купон (1111):','-10 р.',-10.0000,4),(59,19,'total','Итого','551 р.',551.0000,9),(60,20,'sub_total','Сумма','561 р.',561.0000,1),(61,20,'shipping','Доставка в пределах МКАД (бесплатно)','0 р.',0.0000,3),(62,20,'coupon','Купон (1111):','-10 р.',-10.0000,4),(63,20,'total','Итого','551 р.',551.0000,9),(64,21,'sub_total','Сумма','561 р.',561.0000,1),(65,21,'shipping','Доставка в пределах МКАД (бесплатно)','0 р.',0.0000,3),(66,21,'coupon','Купон (1111):','-10 р.',-10.0000,4),(67,21,'total','Итого','551 р.',551.0000,9),(68,22,'sub_total','Сумма','3 200 р.',3200.0000,1),(69,22,'shipping','Доставка в пределах МКАД (бесплатно)','0 р.',0.0000,3),(70,22,'total','Итого','3 200 р.',3200.0000,9),(71,23,'sub_total','Сумма','3 200 р.',3200.0000,1),(72,23,'shipping','Доставка в пределах МКАД (бесплатно)','0 р.',0.0000,3),(73,23,'total','Итого','3 200 р.',3200.0000,9),(74,24,'sub_total','Сумма','3 200 р.',3200.0000,1),(75,24,'shipping','Доставка в пределах МКАД (бесплатно)','0 р.',0.0000,3),(76,24,'total','Итого','3 200 р.',3200.0000,9),(77,25,'sub_total','Сумма','3 200 р.',3200.0000,1),(78,25,'shipping','Доставка в пределах МКАД (бесплатно)','0 р.',0.0000,3),(79,25,'total','Итого','3 200 р.',3200.0000,9),(80,26,'sub_total','Сумма','6 501<font class=\'rur\'>p</font>',6501.0000,1),(81,26,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(82,26,'total','Итого','6 501<font class=\'rur\'>p</font>',6501.0000,9),(83,27,'sub_total','Сумма','6 501<font class=\'rur\'>p</font>',6501.0000,1),(84,27,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(85,27,'total','Итого','6 501<font class=\'rur\'>p</font>',6501.0000,9),(86,28,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(87,28,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(88,28,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(89,29,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(90,29,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(91,29,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(92,30,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(93,30,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(94,30,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(95,31,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(96,31,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(97,31,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(98,32,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(99,32,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(100,32,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(101,33,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(102,33,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(103,33,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(104,34,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(105,34,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(106,34,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(107,35,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(108,35,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(109,35,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(110,36,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(111,36,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(112,36,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(113,37,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(114,37,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(115,37,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(116,38,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(117,38,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(118,38,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(119,39,'sub_total','Сумма','202<font class=\'rur\'>p</font>',202.0000,1),(120,39,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(121,39,'total','Итого','202<font class=\'rur\'>p</font>',202.0000,9),(122,40,'sub_total','Сумма','202<font class=\'rur\'>p</font>',202.0000,1),(123,40,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(124,40,'total','Итого','202<font class=\'rur\'>p</font>',202.0000,9),(125,41,'sub_total','Сумма','202<font class=\'rur\'>p</font>',202.0000,1),(126,41,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(127,41,'total','Итого','202<font class=\'rur\'>p</font>',202.0000,9),(128,42,'sub_total','Сумма','100<font class=\'rur\'>p</font>',100.0000,1),(129,42,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(130,42,'total','Итого','100<font class=\'rur\'>p</font>',100.0000,9),(131,43,'sub_total','Сумма','100<font class=\'rur\'>p</font>',100.0000,1),(132,43,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(133,43,'total','Итого','100<font class=\'rur\'>p</font>',100.0000,9),(134,44,'sub_total','Сумма','303<font class=\'rur\'>p</font>',303.0000,1),(135,44,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(136,44,'total','Итого','303<font class=\'rur\'>p</font>',303.0000,9),(137,45,'sub_total','Сумма','303<font class=\'rur\'>p</font>',303.0000,1),(138,45,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(139,45,'total','Итого','303<font class=\'rur\'>p</font>',303.0000,9),(140,46,'sub_total','Сумма','303<font class=\'rur\'>p</font>',303.0000,1),(141,46,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(142,46,'total','Итого','303<font class=\'rur\'>p</font>',303.0000,9),(143,47,'sub_total','Сумма','303<font class=\'rur\'>p</font>',303.0000,1),(144,47,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(145,47,'total','Итого','303<font class=\'rur\'>p</font>',303.0000,9),(146,48,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(147,48,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(148,48,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(149,49,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(150,49,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(151,49,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(152,50,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(153,50,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(154,50,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(155,51,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(156,51,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(157,51,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(158,52,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(159,52,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(160,52,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(161,53,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(162,53,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(163,53,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(164,54,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(165,54,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(166,54,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(167,55,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(168,55,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(169,55,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(170,56,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(171,56,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(172,56,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(173,57,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(174,57,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(175,57,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(176,58,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(177,58,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(178,58,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(179,59,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(180,59,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(181,59,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(182,60,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(183,60,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(184,60,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(185,61,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(186,61,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(187,61,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(188,62,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(189,62,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(190,62,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(191,63,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(192,63,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(193,63,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(194,64,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(195,64,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(196,64,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(197,65,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(198,65,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(199,65,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(200,66,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(201,66,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(202,66,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(203,67,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(204,67,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(205,67,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(206,68,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(207,68,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(208,68,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(209,69,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(210,69,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(211,69,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(212,70,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(213,70,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(214,70,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(215,71,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(216,71,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(217,71,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(218,72,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(219,72,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(220,72,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(221,73,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(222,73,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(223,73,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(224,74,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(225,74,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(226,74,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(227,75,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(228,75,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(229,75,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(230,76,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(231,76,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(232,76,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(233,77,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(234,77,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(235,77,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(236,78,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(237,78,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(238,78,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(239,79,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(240,79,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(241,79,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(242,80,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(243,80,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(244,80,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(245,81,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(246,81,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(247,81,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(248,82,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(249,82,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(250,82,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(251,83,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(252,83,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(253,83,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(254,84,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(255,84,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(256,84,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(257,85,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(258,85,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(259,85,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(260,86,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(261,86,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(262,86,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(263,87,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(264,87,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(265,87,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(266,88,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(267,88,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(268,88,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(269,89,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(270,89,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(271,89,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(272,90,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(273,90,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(274,90,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(275,91,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(276,91,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(277,91,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(278,92,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(279,92,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(280,92,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(281,93,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(282,93,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(283,93,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(284,94,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(285,94,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(286,94,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(287,95,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(288,95,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(289,95,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(290,96,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(291,96,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(292,96,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(293,97,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(294,97,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(295,97,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(296,98,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(297,98,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(298,98,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(299,99,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(300,99,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(301,99,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(302,100,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(303,100,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(304,100,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(305,101,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(306,101,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(307,101,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(308,102,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(309,102,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(310,102,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(311,103,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(312,103,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(313,103,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(314,104,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(315,104,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(316,104,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(317,105,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(318,105,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(319,105,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(320,106,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(321,106,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(322,106,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(323,107,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(324,107,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(325,107,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(326,108,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(327,108,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(328,108,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(329,109,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(330,109,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(331,109,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(332,110,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(333,110,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(334,110,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(335,111,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(336,111,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(337,111,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(338,112,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(339,112,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(340,112,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(341,113,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(342,113,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(343,113,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(344,114,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(345,114,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(346,114,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(347,115,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(348,115,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(349,115,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(350,116,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(351,116,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(352,116,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(353,117,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(354,117,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(355,117,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(356,118,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(357,118,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(358,118,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(359,119,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(360,119,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(361,119,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(362,120,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(363,120,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(364,120,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(365,121,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(366,121,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(367,121,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(368,122,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(369,122,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(370,122,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(371,123,'sub_total','Сумма','303<font class=\'rur\'>p</font>',303.0000,1),(372,123,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(373,123,'total','Итого','303<font class=\'rur\'>p</font>',303.0000,9),(374,124,'sub_total','Сумма','303<font class=\'rur\'>p</font>',303.0000,1),(375,124,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(376,124,'total','Итого','303<font class=\'rur\'>p</font>',303.0000,9),(377,125,'sub_total','Сумма','303<font class=\'rur\'>p</font>',303.0000,1),(378,125,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(379,125,'total','Итого','303<font class=\'rur\'>p</font>',303.0000,9),(380,126,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(381,126,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(382,126,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(383,127,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(384,127,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(385,127,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(386,128,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(387,128,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(388,128,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(389,129,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(390,129,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(391,129,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(392,130,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(393,130,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(394,130,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(395,131,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(396,131,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(397,131,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(398,132,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(399,132,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(400,132,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(401,133,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(402,133,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(403,133,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(404,134,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(405,134,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(406,134,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(407,135,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(408,135,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(409,135,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(410,136,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(411,136,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(412,136,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(413,137,'sub_total','Сумма','202<font class=\'rur\'>p</font>',202.0000,1),(414,137,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(415,137,'total','Итого','202<font class=\'rur\'>p</font>',202.0000,9),(416,138,'sub_total','Сумма','202<font class=\'rur\'>p</font>',202.0000,1),(417,138,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(418,138,'total','Итого','202<font class=\'rur\'>p</font>',202.0000,9),(419,139,'sub_total','Сумма','202<font class=\'rur\'>p</font>',202.0000,1),(420,139,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(421,139,'total','Итого','202<font class=\'rur\'>p</font>',202.0000,9),(422,140,'sub_total','Сумма','202<font class=\'rur\'>p</font>',202.0000,1),(423,140,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(424,140,'total','Итого','202<font class=\'rur\'>p</font>',202.0000,9),(425,141,'sub_total','Сумма','202<font class=\'rur\'>p</font>',202.0000,1),(426,141,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(427,141,'total','Итого','202<font class=\'rur\'>p</font>',202.0000,9),(428,142,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(429,142,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(430,142,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(431,143,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(432,143,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(433,143,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(434,144,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(435,144,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(436,144,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(437,145,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(438,145,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(439,145,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(440,146,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(441,146,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(442,146,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(443,147,'sub_total','Сумма','502<font class=\'rur\'>p</font>',502.0000,1),(444,147,'reward','Бонусные баллы (1)','0<font class=\'rur\'>p</font>',-0.2500,2),(445,147,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(446,147,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(447,147,'total','Итого','492<font class=\'rur\'>p</font>',491.7500,9),(448,148,'sub_total','Сумма','502<font class=\'rur\'>p</font>',502.0000,1),(449,148,'reward','Бонусные баллы (1)','0<font class=\'rur\'>p</font>',-0.2500,2),(450,148,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(451,148,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(452,148,'total','Итого','492<font class=\'rur\'>p</font>',491.7500,9),(453,149,'sub_total','Сумма','502<font class=\'rur\'>p</font>',502.0000,1),(454,149,'reward','Бонусные баллы (1)','0<font class=\'rur\'>p</font>',-0.2500,2),(455,149,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(456,149,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(457,149,'total','Итого','492<font class=\'rur\'>p</font>',491.7500,9),(458,150,'sub_total','Сумма','502<font class=\'rur\'>p</font>',502.0000,1),(459,150,'reward','Бонусные баллы (1)','0<font class=\'rur\'>p</font>',-0.2500,2),(460,150,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(461,150,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(462,150,'total','Итого','492<font class=\'rur\'>p</font>',491.7500,9),(463,151,'sub_total','Сумма','502<font class=\'rur\'>p</font>',502.0000,1),(464,151,'reward','Бонусные баллы (1)','0<font class=\'rur\'>p</font>',-0.2500,2),(465,151,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(466,151,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(467,151,'total','Итого','492<font class=\'rur\'>p</font>',491.7500,9),(468,152,'sub_total','Сумма','502<font class=\'rur\'>p</font>',502.0000,1),(469,152,'reward','Бонусные баллы (1)','0<font class=\'rur\'>p</font>',-0.2500,2),(470,152,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(471,152,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(472,152,'total','Итого','492<font class=\'rur\'>p</font>',491.7500,9),(473,153,'sub_total','Сумма','502<font class=\'rur\'>p</font>',502.0000,1),(474,153,'reward','Бонусные баллы (1)','0<font class=\'rur\'>p</font>',-0.2500,2),(475,153,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(476,153,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(477,153,'total','Итого','492<font class=\'rur\'>p</font>',491.7500,9),(478,154,'sub_total','Сумма','502<font class=\'rur\'>p</font>',502.0000,1),(479,154,'reward','Бонусные баллы (1)','0<font class=\'rur\'>p</font>',-0.2500,2),(480,154,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(481,154,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(482,154,'total','Итого','492<font class=\'rur\'>p</font>',491.7500,9),(483,155,'sub_total','Сумма','502<font class=\'rur\'>p</font>',502.0000,1),(484,155,'reward','Бонусные баллы (1)','0<font class=\'rur\'>p</font>',-0.2500,2),(485,155,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(486,155,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(487,155,'total','Итого','492<font class=\'rur\'>p</font>',491.7500,9),(488,156,'sub_total','Сумма','502<font class=\'rur\'>p</font>',502.0000,1),(489,156,'reward','Бонусные баллы (1)','0<font class=\'rur\'>p</font>',-0.2500,2),(490,156,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(491,156,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(492,156,'total','Итого','492<font class=\'rur\'>p</font>',491.7500,9),(493,157,'sub_total','Сумма','502<font class=\'rur\'>p</font>',502.0000,1),(494,157,'reward','Бонусные баллы (1)','0<font class=\'rur\'>p</font>',-0.2500,2),(495,157,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(496,157,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(497,157,'total','Итого','492<font class=\'rur\'>p</font>',491.7500,9),(498,158,'sub_total','Сумма','502<font class=\'rur\'>p</font>',502.0000,1),(499,158,'reward','Бонусные баллы (1)','0<font class=\'rur\'>p</font>',-0.2500,2),(500,158,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(501,158,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(502,158,'total','Итого','492<font class=\'rur\'>p</font>',491.7500,9),(503,159,'sub_total','Сумма','503<font class=\'rur\'>p</font>',503.0000,1),(504,159,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(505,159,'total','Итого','503<font class=\'rur\'>p</font>',503.0000,9),(506,160,'sub_total','Сумма','202<font class=\'rur\'>p</font>',202.0000,1),(507,160,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(508,160,'total','Итого','202<font class=\'rur\'>p</font>',202.0000,9),(509,161,'sub_total','Сумма','202<font class=\'rur\'>p</font>',202.0000,1),(510,161,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(511,161,'total','Итого','202<font class=\'rur\'>p</font>',202.0000,9),(512,162,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(513,162,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(514,162,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(515,163,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(516,163,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(517,163,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(518,164,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(519,164,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(520,164,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(521,165,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(522,165,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(523,165,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(524,166,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(525,166,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(526,166,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(527,167,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(528,167,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(529,167,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(530,168,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(531,168,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(532,168,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(533,169,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(534,169,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(535,169,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(536,170,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(537,170,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(538,170,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(539,171,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(540,171,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(541,171,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(542,172,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(543,172,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(544,172,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(545,173,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(546,173,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(547,173,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(548,174,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(549,174,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(550,174,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(551,175,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(552,175,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(553,175,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(554,176,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(555,176,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(556,176,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(557,177,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(558,177,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(559,177,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(560,178,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(561,178,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(562,178,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(563,179,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(564,179,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(565,179,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(566,180,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(567,180,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(568,180,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(569,180,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(570,181,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(571,181,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(572,181,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(573,181,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(574,182,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(575,182,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(576,182,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(577,182,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(578,183,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(579,183,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(580,183,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(581,183,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(582,184,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(583,184,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(584,184,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(585,184,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(586,185,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(587,185,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(588,185,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(589,185,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(590,186,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(591,186,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(592,186,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(593,186,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(594,187,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(595,187,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(596,187,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(597,187,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(598,188,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(599,188,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(600,188,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(601,188,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(602,189,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(603,189,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(604,189,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(605,189,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(606,190,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(607,190,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(608,190,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(609,190,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(610,191,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(611,191,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(612,191,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(613,191,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(614,192,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(615,192,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(616,192,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(617,192,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(618,193,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(619,193,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(620,193,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(621,193,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(622,194,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(623,194,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(624,194,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(625,194,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(626,195,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(627,195,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(628,195,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(629,195,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(630,196,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(631,196,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(632,196,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(633,196,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(634,197,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(635,197,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(636,197,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(637,197,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(638,198,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(639,198,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(640,198,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(641,198,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(642,199,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(643,199,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(644,199,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(645,199,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(646,200,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(647,200,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(648,200,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(649,200,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(650,201,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(651,201,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(652,201,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(653,201,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(654,202,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(655,202,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(656,202,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(657,202,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(658,203,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(659,203,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(660,203,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(661,203,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(662,204,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(663,204,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(664,204,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(665,204,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(666,205,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(667,205,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(668,205,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(669,205,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(670,206,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(671,206,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(672,206,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(673,206,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(674,207,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(675,207,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(676,207,'coupon','Купон (1111)','-10<font class=\'rur\'>p</font>',-10.0000,4),(677,207,'total','Итого','91<font class=\'rur\'>p</font>',91.0000,9),(678,208,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(679,208,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(680,208,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(681,209,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(682,209,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(683,209,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(684,210,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(685,210,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(686,210,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(687,211,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(688,211,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(689,211,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(690,212,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(691,212,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(692,212,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(693,213,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(694,213,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(695,213,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(696,214,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(697,214,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(698,214,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(699,215,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(700,215,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(701,215,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(702,216,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(703,216,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(704,216,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(705,217,'sub_total','Сумма','601<font class=\'rur\'>p</font>',601.0000,1),(706,217,'reward','Бонусные баллы (101)','-253<font class=\'rur\'>p</font>',-252.5000,2),(707,217,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(708,217,'coupon','Купон (3333)','-301<font class=\'rur\'>p</font>',-300.5000,4),(709,217,'total','Итого','48<font class=\'rur\'>p</font>',48.0000,9),(710,218,'sub_total','Сумма','601<font class=\'rur\'>p</font>',601.0000,1),(711,218,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(712,218,'coupon','Купон (3333)','-301<font class=\'rur\'>p</font>',-300.5000,4),(713,218,'total','Итого','301<font class=\'rur\'>p</font>',300.5000,9),(714,219,'sub_total','Сумма','601<font class=\'rur\'>p</font>',601.0000,1),(715,219,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(716,219,'coupon','Купон (3333)','-301<font class=\'rur\'>p</font>',-300.5000,4),(717,219,'total','Итого','301<font class=\'rur\'>p</font>',300.5000,9),(718,220,'sub_total','Сумма','601<font class=\'rur\'>p</font>',601.0000,1),(719,220,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(720,220,'coupon','Купон (3333)','-301<font class=\'rur\'>p</font>',-300.5000,4),(721,220,'total','Итого','301<font class=\'rur\'>p</font>',300.5000,9),(722,221,'sub_total','Сумма','601<font class=\'rur\'>p</font>',601.0000,1),(723,221,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(724,221,'coupon','Купон (3333)','-301<font class=\'rur\'>p</font>',-300.5000,4),(725,221,'total','Итого','301<font class=\'rur\'>p</font>',300.5000,9),(726,222,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(727,222,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(728,222,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(729,223,'sub_total','Сумма','101<font class=\'rur\'>p</font>',101.0000,1),(730,223,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(731,223,'total','Итого','101<font class=\'rur\'>p</font>',101.0000,9),(732,224,'sub_total','Сумма','3 402<font class=\'rur\'>p</font>',3402.0000,1),(733,224,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(734,224,'total','Итого','3 402<font class=\'rur\'>p</font>',3402.0000,9),(735,225,'sub_total','Сумма','3 402<font class=\'rur\'>p</font>',3402.0000,1),(736,225,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(737,225,'total','Итого','3 402<font class=\'rur\'>p</font>',3402.0000,9),(738,226,'sub_total','Сумма','19 800<font class=\'rur\'>p</font>',19800.0000,1),(739,226,'shipping','Самовывоз из магазина','0<font class=\'rur\'>p</font>',0.0000,3),(740,226,'total','Итого','19 800<font class=\'rur\'>p</font>',19800.0000,9),(741,227,'sub_total','Сумма','19 800<font class=\'rur\'>p</font>',19800.0000,1),(742,227,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(743,227,'total','Итого','19 800<font class=\'rur\'>p</font>',19800.0000,9),(744,228,'sub_total','Сумма','5 000<font class=\'rur\'>p</font>',5000.0000,1),(745,228,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(746,228,'total','Итого','5 000<font class=\'rur\'>p</font>',5000.0000,9),(747,229,'sub_total','Сумма','5 000<font class=\'rur\'>p</font>',5000.0000,1),(748,229,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(749,229,'total','Итого','5 000<font class=\'rur\'>p</font>',5000.0000,9),(750,230,'sub_total','Сумма','5 000<font class=\'rur\'>p</font>',5000.0000,1),(751,230,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(752,230,'total','Итого','5 000<font class=\'rur\'>p</font>',5000.0000,9),(753,231,'sub_total','Сумма','5 000<font class=\'rur\'>p</font>',5000.0000,1),(754,231,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(755,231,'total','Итого','5 000<font class=\'rur\'>p</font>',5000.0000,9),(756,232,'sub_total','Сумма','5 000<font class=\'rur\'>p</font>',5000.0000,1),(757,232,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(758,232,'total','Итого','5 000<font class=\'rur\'>p</font>',5000.0000,9),(759,233,'sub_total','Сумма','5 000<font class=\'rur\'>p</font>',5000.0000,1),(760,233,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(761,233,'total','Итого','5 000<font class=\'rur\'>p</font>',5000.0000,9),(762,234,'sub_total','Сумма','5 000<font class=\'rur\'>p</font>',5000.0000,1),(763,234,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(764,234,'total','Итого','5 000<font class=\'rur\'>p</font>',5000.0000,9),(765,235,'sub_total','Сумма','5 000<font class=\'rur\'>p</font>',5000.0000,1),(766,235,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(767,235,'total','Итого','5 000<font class=\'rur\'>p</font>',5000.0000,9),(768,236,'sub_total','Сумма','5 000<font class=\'rur\'>p</font>',5000.0000,1),(769,236,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(770,236,'total','Итого','5 000<font class=\'rur\'>p</font>',5000.0000,9),(771,237,'sub_total','Сумма','5 000<font class=\'rur\'>p</font>',5000.0000,1),(772,237,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(773,237,'total','Итого','5 000<font class=\'rur\'>p</font>',5000.0000,9),(774,238,'sub_total','Сумма','5 000<font class=\'rur\'>p</font>',5000.0000,1),(775,238,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(776,238,'total','Итого','5 000<font class=\'rur\'>p</font>',5000.0000,9),(777,239,'sub_total','Сумма','5 000<font class=\'rur\'>p</font>',5000.0000,1),(778,239,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(779,239,'total','Итого','5 000<font class=\'rur\'>p</font>',5000.0000,9),(780,240,'sub_total','Сумма','5 000<font class=\'rur\'>p</font>',5000.0000,1),(781,240,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(782,240,'total','Итого','5 000<font class=\'rur\'>p</font>',5000.0000,9),(783,241,'sub_total','Сумма','5 000<font class=\'rur\'>p</font>',5000.0000,1),(784,241,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(785,241,'coupon','Купон (79390037)','-750<font class=\'rur\'>p</font>',-750.0000,4),(786,241,'total','Итого','4 250<font class=\'rur\'>p</font>',4250.0000,9),(787,242,'sub_total','Сумма','5 000<font class=\'rur\'>p</font>',5000.0000,1),(788,242,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(789,242,'total','Итого','5 000<font class=\'rur\'>p</font>',5000.0000,9),(790,243,'sub_total','Сумма','5 000<font class=\'rur\'>p</font>',5000.0000,1),(791,243,'shipping','Самовывоз из магазина','0<font class=\'rur\'>p</font>',0.0000,3),(792,243,'total','Итого','5 000<font class=\'rur\'>p</font>',5000.0000,9),(793,244,'sub_total','Сумма','5 000<font class=\'rur\'>p</font>',5000.0000,1),(794,244,'shipping','Самовывоз из магазина','0<font class=\'rur\'>p</font>',0.0000,3),(795,244,'total','Итого','5 000<font class=\'rur\'>p</font>',5000.0000,9),(796,245,'sub_total','Сумма','5 000<font class=\'rur\'>p</font>',5000.0000,1),(797,245,'shipping','Самовывоз из магазина','0<font class=\'rur\'>p</font>',0.0000,3),(798,245,'total','Итого','5 000<font class=\'rur\'>p</font>',5000.0000,9),(799,246,'sub_total','Сумма','10 000<font class=\'rur\'>p</font>',10000.0000,1),(800,246,'shipping','Самовывоз из магазина','0<font class=\'rur\'>p</font>',0.0000,3),(801,246,'total','Итого','10 000<font class=\'rur\'>p</font>',10000.0000,9),(802,247,'sub_total','Сумма','5 000<font class=\'rur\'>p</font>',5000.0000,1),(803,247,'shipping','Самовывоз из магазина','0<font class=\'rur\'>p</font>',0.0000,3),(804,247,'total','Итого','5 000<font class=\'rur\'>p</font>',5000.0000,9),(805,248,'sub_total','Сумма','5 500<font class=\'rur\'>p</font>',5500.0000,1),(806,248,'shipping','Самовывоз из магазина','0<font class=\'rur\'>p</font>',0.0000,3),(807,248,'total','Итого','5 500<font class=\'rur\'>p</font>',5500.0000,9),(808,249,'sub_total','Сумма','5 500<font class=\'rur\'>p</font>',5500.0000,1),(809,249,'shipping','Самовывоз из магазина','0<font class=\'rur\'>p</font>',0.0000,3),(810,249,'total','Итого','5 500<font class=\'rur\'>p</font>',5500.0000,9),(811,250,'sub_total','Сумма','10 500<font class=\'rur\'>p</font>',10500.0000,1),(812,250,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(813,250,'total','Итого','10 500<font class=\'rur\'>p</font>',10500.0000,9),(814,251,'sub_total','Сумма','5 500<font class=\'rur\'>p</font>',5500.0000,1),(815,251,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(816,251,'total','Итого','5 500<font class=\'rur\'>p</font>',5500.0000,9),(817,252,'sub_total','Сумма','5 500<font class=\'rur\'>p</font>',5500.0000,1),(818,252,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(819,252,'total','Итого','5 500<font class=\'rur\'>p</font>',5500.0000,9),(820,253,'sub_total','Сумма','5 500<font class=\'rur\'>p</font>',5500.0000,1),(821,253,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(822,253,'total','Итого','5 500<font class=\'rur\'>p</font>',5500.0000,9),(823,254,'sub_total','Сумма','5 500<font class=\'rur\'>p</font>',5500.0000,1),(824,254,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(825,254,'total','Итого','5 500<font class=\'rur\'>p</font>',5500.0000,9),(826,255,'sub_total','Сумма','5 500<font class=\'rur\'>p</font>',5500.0000,1),(827,255,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(828,255,'total','Итого','5 500<font class=\'rur\'>p</font>',5500.0000,9),(829,256,'sub_total','Сумма','5 500<font class=\'rur\'>p</font>',5500.0000,1),(830,256,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(831,256,'total','Итого','5 500<font class=\'rur\'>p</font>',5500.0000,9),(832,257,'sub_total','Сумма','5 500<font class=\'rur\'>p</font>',5500.0000,1),(833,257,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(834,257,'total','Итого','5 500<font class=\'rur\'>p</font>',5500.0000,9),(835,258,'sub_total','Сумма','5 500<font class=\'rur\'>p</font>',5500.0000,1),(836,258,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(837,258,'total','Итого','5 500<font class=\'rur\'>p</font>',5500.0000,9),(838,259,'sub_total','Сумма','5 500<font class=\'rur\'>p</font>',5500.0000,1),(839,259,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(840,259,'total','Итого','5 500<font class=\'rur\'>p</font>',5500.0000,9),(841,260,'sub_total','Сумма','5 500<font class=\'rur\'>p</font>',5500.0000,1),(842,260,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(843,260,'total','Итого','5 500<font class=\'rur\'>p</font>',5500.0000,9),(844,261,'sub_total','Сумма','10 000<font class=\'rur\'>p</font>',10000.0000,1),(845,261,'shipping','Доставка в пределах МКАД (бесплатно)','0<font class=\'rur\'>p</font>',0.0000,3),(846,261,'total','Итого','10 000<font class=\'rur\'>p</font>',10000.0000,9),(847,262,'sub_total','Сумма','10 000<font class=\'rur\'>p</font>',10000.0000,1),(848,262,'shipping','Самовывоз из магазина','0<font class=\'rur\'>p</font>',0.0000,3),(849,262,'total','Итого','10 000<font class=\'rur\'>p</font>',10000.0000,9),(850,263,'sub_total','Сумма','10 000<font class=\'rur\'>p</font>',10000.0000,1),(851,263,'shipping','Самовывоз из магазина','0<font class=\'rur\'>p</font>',0.0000,3),(852,263,'total','Итого','10 000<font class=\'rur\'>p</font>',10000.0000,9);
/*!40000 ALTER TABLE `order_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_voucher`
--

DROP TABLE IF EXISTS `order_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_voucher`
--

LOCK TABLES `order_voucher` WRITE;
/*!40000 ALTER TABLE `order_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL,
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `isNew` int(1) NOT NULL DEFAULT '0',
  `isTwoDaysDelivery` int(1) NOT NULL DEFAULT '0',
  `isSpec` int(11) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (28,'Товар 1','','','','','','','',10,7,'data/10.png',0,1,4500.0000,0,0,'2009-02-03',146.40000000,2,0.00000000,0.00000000,0.00000000,1,1,1,0,1,'2009-02-03 16:06:50','2014-09-30 10:17:38',23,0,0,0),(30,'Товар 3','','','','','','','',7,6,'data/5.png',0,1,4000.0000,0,0,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,'2009-02-03 16:59:00','2014-08-09 17:53:15',9,0,0,0),(40,'','','','','','','','',10,7,'data/1.png',0,1,5000.0000,0,0,'2009-02-03',10.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,'2009-02-03 21:07:12','2014-09-04 23:26:21',444,0,0,0),(41,'Товар 14','','','','','','','',966,5,'data/2.png',0,1,5500.0000,0,0,'2009-02-03',5.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,'2009-02-03 21:07:26','2014-08-29 01:08:50',189,0,1,0),(42,'Товар 15','','','','','','','',7,7,'data/8.png',0,1,3800.0000,0,0,'2009-02-04',12.50000000,1,1.00000000,2.00000000,3.00000000,1,1,1,0,1,'2009-02-03 21:07:37','2014-08-09 17:59:36',16,0,0,0),(47,'','','','','','','','',10,7,'data/7.png',0,1,4400.0000,400,0,'2009-02-03',1.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,'2009-02-03 21:08:40','2014-08-09 17:52:24',42,0,0,0),(64,'Товар 01','','','','','','','',9,7,'data/17.png',0,1,4500.0000,0,0,'2009-02-03',146.40000000,2,0.00000000,0.00000000,0.00000000,1,1,1,0,1,'2011-05-24 23:48:34','2014-09-30 10:17:25',33,0,0,0),(67,'Товар 15','','','','','','','',10,7,'data/15.png',0,1,4000.0000,0,0,'2009-02-04',12.50000000,1,1.00000000,2.00000000,3.00000000,1,1,2,0,1,'2014-06-23 11:39:47','2014-09-22 20:00:12',5,0,0,0),(65,'Товар 15','','','','','','','',10,7,'data/4.png',0,1,4000.0000,0,0,'2009-02-04',12.50000000,1,1.00000000,2.00000000,3.00000000,1,1,1,0,1,'2014-06-23 11:39:38','2014-08-09 18:01:34',2,0,0,0),(68,'','','','','','','','',10,7,'data/5.png',0,1,7300.0000,0,0,'2014-08-08',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,'2014-08-09 16:56:10','2014-08-29 01:12:40',3,1,0,0),(69,'','','','','','','','',10,7,'data/9.png',0,1,6000.0000,0,0,'2014-08-08',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,'2014-08-09 16:58:23','2014-08-09 17:22:37',7,0,0,0),(70,'','','','','','','','',10,7,'data/13.png',0,1,5500.0000,0,0,'2014-08-08',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,'2014-08-09 17:12:36','2014-08-09 17:22:52',5,0,0,0),(71,'Товар 15','','','','','','','',10,7,'data/15.png',0,1,4000.0000,0,0,'2009-02-04',12.50000000,1,1.00000000,2.00000000,3.00000000,1,1,1,0,1,'2014-08-30 18:17:36','2014-08-31 00:42:19',0,0,0,1),(72,'Товар 15','','','','','','','',10,7,'data/8.png',0,1,3800.0000,0,0,'2009-02-04',12.50000000,1,1.00000000,2.00000000,3.00000000,1,1,1,0,1,'2014-08-30 18:17:36','2014-08-30 18:18:56',0,0,0,1),(73,'Товар 15','','','','','','','',9,7,'data/4.png',0,1,4000.0000,0,0,'2009-02-04',12.50000000,1,1.00000000,2.00000000,3.00000000,1,1,1,0,1,'2014-08-30 18:17:36','2014-08-30 18:18:45',0,0,0,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_attribute`
--

DROP TABLE IF EXISTS `product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_attribute`
--

LOCK TABLES `product_attribute` WRITE;
/*!40000 ALTER TABLE `product_attribute` DISABLE KEYS */;
INSERT INTO `product_attribute` VALUES (65,3,1,'100мгц'),(42,3,1,'100мгц'),(47,4,1,'16ГБ'),(47,2,1,'4'),(71,3,1,'100мгц'),(72,3,1,'100мгц'),(73,3,1,'100мгц');
/*!40000 ALTER TABLE `product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_description`
--

DROP TABLE IF EXISTS `product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `short_descr` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_h1` varchar(255) NOT NULL,
  `tag` text NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_description`
--

LOCK TABLES `product_description` WRITE;
/*!40000 ALTER TABLE `product_description` DISABLE KEYS */;
INSERT INTO `product_description` VALUES (40,1,'No 1','&lt;p&gt;\r\n	Классика в её лучшем исполнении. 25 красных роз с бархатистыми лепестками и чарующим ароматом.&lt;/p&gt;\r\n','Классика в её лучшем исполнении. 25 красных роз с бархатистыми лепестками и чарующим ароматом.','','','','',''),(47,1,'No 5','&lt;p&gt;\r\n	Сотня маленьких солнышек для ярких особ.&amp;nbsp;&lt;/p&gt;\r\n','Сотня маленьких солнышек для ярких особ. ','','','','',''),(67,1,'No 7','&lt;p&gt;\r\n	Алые искры, собранные в букет.&amp;nbsp;&lt;/p&gt;\r\n','Алые искры, собранные в букет. ','','','','',''),(41,1,'No 2','&lt;div&gt;\r\n	Классика в её лучшем исполнении. 25 красных роз с бархатистыми лепестками и чарующим ароматом.&lt;/div&gt;\r\n','Классика в её лучшем исполнении. 25 красных роз с бархатистыми лепестками и чарующим ароматом.','','','','',''),(42,1,'No 8','&lt;p&gt;\r\n	Классика в её лучшем исполнении. 25 красных роз с бархатистыми лепестками и чарующим ароматом.&lt;/p&gt;\r\n','Классика в её лучшем исполнении. 25 красных роз с бархатистыми лепестками и чарующим ароматом.','','','','',''),(30,1,'No 6','&lt;p&gt;\r\n	Классика в её лучшем исполнении. 25 красных роз с бархатистыми лепестками и чарующим ароматом.&lt;/p&gt;\r\n','Классика в её лучшем исполнении. 25 красных роз с бархатистыми лепестками и чарующим ароматом.','','','','',''),(65,1,'No 9','&lt;p&gt;\r\n	Классика в её лучшем исполнении. 25 красных роз с бархатистыми лепестками и чарующим ароматом.&lt;/p&gt;\r\n','Классика в её лучшем исполнении. 25 красных роз с бархатистыми лепестками и чарующим ароматом.','','','','',''),(28,1,'No 4','&lt;p&gt;\r\n	Пушистый букет из миниатюрных роз цвета персикового крема.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Кустовая роза с большим количеством мелких бутонов на ветке. Отличается особой стойкостью и производимым эффектом умиления.&amp;nbsp;&lt;/p&gt;\r\n','Пушистый букет из миниатюрных роз цвета персикового крема.','','','','',''),(64,1,'No 3','&lt;p&gt;\r\n	Букет из роз цвета взбитых сливок с капелькой розового сиропа.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Кремовые, розовато-бежевые крупные бутоны, изящно раскрываются в шикарные объемные розы.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n','Букет из роз цвета взбитых сливок с капелькой розового сиропа. ','','','','',''),(68,1,'No 10','&lt;p&gt;\r\n	пионовое облако&lt;/p&gt;\r\n','','','','','',''),(69,1,'No 11','&lt;p&gt;\r\n	Нежные, как ванильные облака, пионовидные розы Анжей Романтик. Утонченные и благородные, благоухающие элегантной сладостью.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Цветок, достойный бесконечного признания в любви!&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family: arial, helvetica, sans-serif;&quot;&gt;&lt;strong&gt;ВАЖНО:&amp;nbsp;&lt;/strong&gt;&lt;/span&gt;данный букет собирается под заказ. Пожалуйста, размещайте заказ не менее, чем за&amp;nbsp;&lt;strong&gt;3 дня&lt;/strong&gt;&amp;nbsp;до доставки. &amp;nbsp;&amp;nbsp;&lt;/p&gt;\r\n','Нежные, как ванильные облака, пионовидные розы Анжей Романтик.','','','','',''),(70,1,'No 12','','яркие пионовидные кустовые','','','','',''),(72,1,'Спец.3','&lt;p&gt;\r\n	Классика в её лучшем исполнении. 25 красных роз с бархатистыми лепестками и чарующим ароматом.&lt;/p&gt;\r\n','Классика в её лучшем исполнении. 25 красных роз с бархатистыми лепестками и чарующим ароматом.','','','','',''),(73,1,'Спец.2','&lt;p&gt;\r\n	Классика в её лучшем исполнении. 25 красных роз с бархатистыми лепестками и чарующим ароматом.&lt;/p&gt;\r\n','Классика в её лучшем исполнении. 25 красных роз с бархатистыми лепестками и чарующим ароматом.','','','','',''),(71,1,'Спец.1','&lt;p&gt;\r\n	Алые искры, собранные в букет.&amp;nbsp;&lt;/p&gt;\r\n','Алые искры, собранные в букет. ','','','','','');
/*!40000 ALTER TABLE `product_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_discount`
--

DROP TABLE IF EXISTS `product_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=528 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_discount`
--

LOCK TABLES `product_discount` WRITE;
/*!40000 ALTER TABLE `product_discount` DISABLE KEYS */;
INSERT INTO `product_discount` VALUES (527,71,1,30,1,66.0000,'0000-00-00','0000-00-00'),(526,71,1,20,1,77.0000,'0000-00-00','0000-00-00'),(525,71,1,10,1,88.0000,'0000-00-00','0000-00-00');
/*!40000 ALTER TABLE `product_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_filter`
--

DROP TABLE IF EXISTS `product_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_filter`
--

LOCK TABLES `product_filter` WRITE;
/*!40000 ALTER TABLE `product_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image`
--

LOCK TABLES `product_image` WRITE;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
INSERT INTO `product_image` VALUES (29,65,'data/Big_Bear_Valley,_California.jpg',0),(50,41,'no_image.jpg',0),(70,40,'data/a-11.jpg',0),(69,40,'data/1.png',0),(64,73,'data/Big_Bear_Valley,_California.jpg',0);
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_option`
--

DROP TABLE IF EXISTS `product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_option`
--

LOCK TABLES `product_option` WRITE;
/*!40000 ALTER TABLE `product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_option_value`
--

DROP TABLE IF EXISTS `product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_option_value`
--

LOCK TABLES `product_option_value` WRITE;
/*!40000 ALTER TABLE `product_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_related`
--

DROP TABLE IF EXISTS `product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_related`
--

LOCK TABLES `product_related` WRITE;
/*!40000 ALTER TABLE `product_related` DISABLE KEYS */;
INSERT INTO `product_related` VALUES (40,42),(40,65),(40,67),(40,71),(40,72),(40,73),(42,40),(65,40),(67,40),(71,40),(72,40),(73,40);
/*!40000 ALTER TABLE `product_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_reward`
--

DROP TABLE IF EXISTS `product_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=688 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_reward`
--

LOCK TABLES `product_reward` WRITE;
/*!40000 ALTER TABLE `product_reward` DISABLE KEYS */;
INSERT INTO `product_reward` VALUES (657,42,1,0),(653,47,1,300),(687,28,1,0),(658,65,1,0),(684,40,1,0),(654,30,1,200),(685,67,1,0),(668,41,1,0),(686,64,1,0),(669,68,1,0),(648,69,1,0),(649,70,1,0),(683,71,1,0),(679,72,1,0),(678,73,1,0);
/*!40000 ALTER TABLE `product_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_special`
--

DROP TABLE IF EXISTS `product_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=483 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_special`
--

LOCK TABLES `product_special` WRITE;
/*!40000 ALTER TABLE `product_special` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_to_category`
--

DROP TABLE IF EXISTS `product_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `main_category` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_to_category`
--

LOCK TABLES `product_to_category` WRITE;
/*!40000 ALTER TABLE `product_to_category` DISABLE KEYS */;
INSERT INTO `product_to_category` VALUES (67,59,1),(41,59,1),(64,59,1),(28,59,1),(47,59,1),(30,59,1),(65,59,1),(42,59,1),(40,59,1),(68,59,1),(69,59,1),(70,59,1),(71,59,1),(72,59,1),(73,59,1);
/*!40000 ALTER TABLE `product_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_to_download`
--

DROP TABLE IF EXISTS `product_to_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_to_download`
--

LOCK TABLES `product_to_download` WRITE;
/*!40000 ALTER TABLE `product_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_to_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_to_layout`
--

DROP TABLE IF EXISTS `product_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_to_layout`
--

LOCK TABLES `product_to_layout` WRITE;
/*!40000 ALTER TABLE `product_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_to_store`
--

DROP TABLE IF EXISTS `product_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_to_store`
--

LOCK TABLES `product_to_store` WRITE;
/*!40000 ALTER TABLE `product_to_store` DISABLE KEYS */;
INSERT INTO `product_to_store` VALUES (28,0),(30,0),(40,0),(41,0),(42,0),(47,0),(64,0),(65,0),(67,0),(68,0),(69,0),(70,0),(71,0),(72,0),(73,0);
/*!40000 ALTER TABLE `product_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return`
--

DROP TABLE IF EXISTS `return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return`
--

LOCK TABLES `return` WRITE;
/*!40000 ALTER TABLE `return` DISABLE KEYS */;
/*!40000 ALTER TABLE `return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_action`
--

DROP TABLE IF EXISTS `return_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_action`
--

LOCK TABLES `return_action` WRITE;
/*!40000 ALTER TABLE `return_action` DISABLE KEYS */;
INSERT INTO `return_action` VALUES (1,1,'Возвращены средства'),(2,1,'Выдан в кредит'),(3,1,'Отправлена замена (отправлен другой товар для замены)');
/*!40000 ALTER TABLE `return_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_history`
--

DROP TABLE IF EXISTS `return_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_history`
--

LOCK TABLES `return_history` WRITE;
/*!40000 ALTER TABLE `return_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `return_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_reason`
--

DROP TABLE IF EXISTS `return_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_reason`
--

LOCK TABLES `return_reason` WRITE;
/*!40000 ALTER TABLE `return_reason` DISABLE KEYS */;
INSERT INTO `return_reason` VALUES (1,1,'Получен/доставлен неисправным (сломанным)'),(2,1,'Получен не тот (ошибочный) товар'),(4,1,'Ошибочный, пожалуйста укажите/приложите подробности'),(5,1,'Другое (другая причина), пожалуйста укажите/приложите подробности');
/*!40000 ALTER TABLE `return_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_status`
--

DROP TABLE IF EXISTS `return_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_status`
--

LOCK TABLES `return_status` WRITE;
/*!40000 ALTER TABLE `return_status` DISABLE KEYS */;
INSERT INTO `return_status` VALUES (1,1,'Рассматриваемый / находящийся в '),(3,1,'Готов (к отправке) / или Заверше'),(2,1,'Заказ \"висит\" в ожидании поступл');
/*!40000 ALTER TABLE `return_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `group` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5234 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES (1,0,'shipping','shipping_sort_order','3',0),(2,0,'sub_total','sub_total_sort_order','1',0),(3,0,'sub_total','sub_total_status','1',0),(4,0,'tax','tax_status','1',0),(5,0,'total','total_sort_order','9',0),(6,0,'total','total_status','1',0),(7,0,'tax','tax_sort_order','5',0),(8,0,'free_checkout','free_checkout_sort_order','1',0),(4468,0,'cod','cod_status','1',0),(4467,0,'cod','cod_geo_zone_id','0',0),(14,0,'shipping','shipping_status','1',0),(15,0,'shipping','shipping_estimator','1',0),(2471,0,'onecheckout','onecheckout_status','1',0),(2470,0,'onecheckout','onecheckout_check_deliveryaddress','0',0),(4469,0,'cod','cod_sort_order','5',0),(27,0,'coupon','coupon_sort_order','4',0),(28,0,'coupon','coupon_status','1',0),(2964,0,'flat','flat_sort_order','1',0),(2963,0,'flat','flat_status','0',0),(2962,0,'flat','flat_geo_zone_id','0',0),(2961,0,'flat','flat_tax_class_id','0',0),(1946,0,'free','free_sort_order','',0),(2090,0,'liqpay','liqpay_sort_order','',0),(2089,0,'liqpay','liqpay_status','1',0),(2088,0,'liqpay','liqpay_geo_zone_id','0',0),(2087,0,'liqpay','liqpay_order_status_id','2',0),(2960,0,'flat','flat_cost','500.00',0),(42,0,'credit','credit_sort_order','7',0),(43,0,'credit','credit_status','1',0),(53,0,'reward','reward_sort_order','2',0),(54,0,'reward','reward_status','1',0),(5231,0,'pickup','pickup_geo_zone_id','0',0),(5232,0,'pickup','pickup_status','1',0),(5233,0,'pickup','pickup_sort_order','10',0),(1943,0,'free','free_total','',0),(1944,0,'free','free_geo_zone_id','0',0),(1945,0,'free','free_status','1',0),(5226,0,'config','config_sms_gate_password','',0),(5225,0,'config','config_sms_gate_username','',0),(5223,0,'config','config_sms_copy','',0),(5224,0,'config','config_sms_message','',0),(5222,0,'config','config_sms_to','',0),(5221,0,'config','config_sms_from','',0),(5220,0,'config','config_sms_gatename','testsms',0),(5219,0,'config','config_sms_alert','0',0),(5210,0,'config','config_maintenance','0',0),(5211,0,'config','config_password','1',0),(5212,0,'config','config_encryption','9063af21e0041a8e73077b523709e33a',0),(5213,0,'config','config_compression','0',0),(5214,0,'config','config_error_display','1',0),(5215,0,'config','config_error_log','1',0),(5216,0,'config','config_error_filename','my_mego_log.log',0),(5217,0,'config','config_google_analytics','',0),(5218,0,'config','config_google_api_key','',0),(93,0,'voucher','voucher_sort_order','8',0),(94,0,'voucher','voucher_status','1',0),(102,0,'free_checkout','free_checkout_status','1',0),(103,0,'free_checkout','free_checkout_order_status_id','1',0),(5204,0,'config','config_seo_url','0',0),(5205,0,'config','config_seo_url_type','seo_url',0),(5206,0,'config','config_seo_url_include_path','0',0),(5207,0,'config','config_seo_url_postfix','',0),(5208,0,'config','config_file_extension_allowed','txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods',0),(5209,0,'config','config_file_mime_allowed','text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/jpeg\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/tiff\r\nimage/svg+xml\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/postscript\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet',0),(5203,0,'config','config_robots','abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg',0),(5202,0,'config','config_shared','0',0),(5201,0,'config','config_secure','0',0),(5200,0,'config','config_fraud_status_id','2',0),(5199,0,'config','config_fraud_score','',0),(5198,0,'config','config_fraud_key','',0),(5197,0,'config','config_fraud_detection','0',0),(5196,0,'config','config_alert_emails','',0),(5195,0,'config','config_account_mail','0',0),(5194,0,'config','config_alert_mail','0',0),(5193,0,'config','config_smtp_timeout','5',0),(5192,0,'config','config_smtp_port','25',0),(5191,0,'config','config_smtp_password','',0),(5189,0,'config','config_smtp_host','',0),(5190,0,'config','config_smtp_username','',0),(5188,0,'config','config_mail_parameter','',0),(5186,0,'config','config_ftp_status','0',0),(5187,0,'config','config_mail_protocol','mail',0),(5184,0,'config','config_ftp_password','',0),(5185,0,'config','config_ftp_root','',0),(5182,0,'config','config_ftp_port','21',0),(5183,0,'config','config_ftp_username','',0),(5181,0,'config','config_ftp_host','localhost',0),(5180,0,'config','config_image_cart_height','116',0),(5179,0,'config','config_image_cart_width','100',0),(5178,0,'config','config_image_wishlist_height','47',0),(5177,0,'config','config_image_wishlist_width','47',0),(5176,0,'config','config_image_compare_height','90',0),(5173,0,'config','config_image_related_width','80',0),(5174,0,'config','config_image_related_height','80',0),(5175,0,'config','config_image_compare_width','90',0),(2086,0,'liqpay','liqpay_total','0',0),(2085,0,'liqpay','liqpay_type','card',0),(2084,0,'liqpay','liqpay_signature','123',0),(2083,0,'liqpay','liqpay_merchant','123',0),(5172,0,'config','config_image_additional_height','74',0),(5171,0,'config','config_image_additional_width','74',0),(5170,0,'config','config_image_product_height','230',0),(5169,0,'config','config_image_product_width','200',0),(5168,0,'config','config_image_popup_height','500',0),(5167,0,'config','config_image_popup_width','500',0),(5166,0,'config','config_image_thumb_height','476',0),(5165,0,'config','config_image_thumb_width','430',0),(5164,0,'config','config_image_category_height','200',0),(5163,0,'config','config_image_category_width','230',0),(5162,0,'config','config_icon','data/icon.png',0),(5161,0,'config','config_logo','data/logo.png',0),(5160,0,'config','config_return_status_id','2',0),(5159,0,'config','config_return_id','0',0),(5158,0,'config','config_commission','5',0),(5157,0,'config','config_affiliate_id','4',0),(5156,0,'config','config_stock_status_id','5',0),(5154,0,'config','config_stock_warning','0',0),(2469,0,'onecheckout','onecheckout_check_newsletter','0',0),(2468,0,'onecheckout','onecheckout_refresh_payment','0',0),(2467,0,'onecheckout','onecheckout_refresh_postcode','0',0),(2466,0,'onecheckout','onecheckout_refresh_city','0',0),(2465,0,'onecheckout','onecheckout_check_register','0',0),(2464,0,'onecheckout','onecheckout_style','3',0),(5155,0,'config','config_stock_checkout','0',0),(4466,0,'cod','cod_order_status_id','2',0),(4465,0,'cod','cod_total','0',0),(5153,0,'config','config_stock_display','0',0),(5151,0,'config','config_minute_interval','60',0),(5152,0,'config','config_next_day_time','19',0),(5150,0,'config','config_end_interval','21:00',0),(5149,0,'config','config_start_interval','10:00',0),(5148,0,'config','config_complete_status_id','5',0),(5147,0,'config','config_order_status_id','2',0),(5146,0,'config','config_invoice_prefix','INV-2013-00',0),(5144,0,'config','config_checkout_id','0',0),(5145,0,'config','config_order_edit','100',0),(5141,0,'config','config_account_id','0',0),(5142,0,'config','config_cart_weight','0',0),(5143,0,'config','config_guest_checkout','1',0),(5140,0,'config','config_customer_price','0',0),(5139,0,'config','config_customer_group_display','a:1:{i:0;s:1:\"1\";}',1),(5138,0,'config','config_customer_group_id','1',0),(5137,0,'config','config_customer_online','0',0),(5136,0,'config','config_tax_customer','shipping',0),(5135,0,'config','config_tax_default','shipping',0),(5134,0,'config','config_vat','0',0),(5133,0,'config','config_tax','0',0),(5132,0,'config','config_voucher_max','1000',0),(5131,0,'config','config_voucher_min','1',0),(5130,0,'config','config_reward_points','1',0),(5129,0,'config','config_coupon_status','1',0),(5128,0,'config','config_download','0',0),(5127,0,'config','config_review_status','0',0),(5126,0,'config','config_product_count','1',0),(5125,0,'config','config_admin_limit','20',0),(5124,0,'config','config_catalog_limit','40',0),(5123,0,'config','config_weight_class_id','1',0),(5122,0,'config','config_length_class_id','1',0),(5121,0,'config','config_currency_auto','1',0),(5120,0,'config','config_currency','RUB',0),(5119,0,'config','config_admin_language','ru',0),(5116,0,'config','config_country_id','176',0),(5118,0,'config','config_language','ru',0),(5117,0,'config','config_zone_id','2761',0),(5115,0,'config','config_layout_id','4',0),(5114,0,'config','config_template','florentin',0),(5112,0,'config','config_title','florentinproject.com',0),(5113,0,'config','config_meta_description','florentinproject.com',0),(5111,0,'config','config_fax','',0),(5110,0,'config','config_promo_text','Тут скоро будут очень заманчивые пакетные предложения!!!',0),(5109,0,'config','config_cor_email','fleurs@florentinproject.com',0),(5108,0,'config','config_cor_telephone','8 (495) 000 00 00',0),(5107,0,'config','config_per_email','fleurs@florentinproject.com',0),(5106,0,'config','config_per_telephone','8 (495) 000 00 00',0),(5105,0,'config','config_telephone','8 (985) 255 02 25',0),(5104,0,'config','config_email','ilya.artamonov@b-leader.ru',0),(5103,0,'config','config_address','Адрес',0),(5102,0,'config','config_owner','florentinproject.com',0),(5101,0,'config','config_name','florentinproject.com',0),(5230,0,'slideshow','slideshow_module','a:6:{i:0;a:7:{s:9:\"banner_id\";s:1:\"7\";s:5:\"width\";s:3:\"960\";s:6:\"height\";s:3:\"438\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:11:\"content_top\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";}i:1;a:7:{s:9:\"banner_id\";s:1:\"9\";s:5:\"width\";s:3:\"960\";s:6:\"height\";s:3:\"438\";s:9:\"layout_id\";s:2:\"13\";s:8:\"position\";s:11:\"content_top\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";}i:2;a:7:{s:9:\"banner_id\";s:2:\"12\";s:5:\"width\";s:3:\"960\";s:6:\"height\";s:3:\"438\";s:9:\"layout_id\";s:2:\"16\";s:8:\"position\";s:11:\"content_top\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";}i:3;a:7:{s:9:\"banner_id\";s:2:\"11\";s:5:\"width\";s:3:\"960\";s:6:\"height\";s:3:\"438\";s:9:\"layout_id\";s:2:\"15\";s:8:\"position\";s:11:\"content_top\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";}i:4;a:7:{s:9:\"banner_id\";s:2:\"10\";s:5:\"width\";s:3:\"960\";s:6:\"height\";s:3:\"438\";s:9:\"layout_id\";s:2:\"14\";s:8:\"position\";s:11:\"content_top\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";}i:5;a:7:{s:9:\"banner_id\";s:2:\"11\";s:5:\"width\";s:3:\"960\";s:6:\"height\";s:3:\"438\";s:9:\"layout_id\";s:2:\"18\";s:8:\"position\";s:11:\"content_top\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";}}',1);
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_status`
--

DROP TABLE IF EXISTS `stock_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_status`
--

LOCK TABLES `stock_status` WRITE;
/*!40000 ALTER TABLE `stock_status` DISABLE KEYS */;
INSERT INTO `stock_status` VALUES (7,1,'В наличии'),(8,1,'Предзаказ'),(5,1,'Нет в наличии'),(6,1,'Ожидание 2-3 дня');
/*!40000 ALTER TABLE `stock_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
INSERT INTO `subscribers` VALUES (1,'ad@sdf.df'),(2,'sdf@sasd.sd'),(3,'sdf@sasd.sd4'),(4,'sdf@sdf.df'),(6,'sad@asd.sd'),(7,'sdf@sdfc.df');
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_class`
--

DROP TABLE IF EXISTS `tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_class`
--

LOCK TABLES `tax_class` WRITE;
/*!40000 ALTER TABLE `tax_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_rate`
--

DROP TABLE IF EXISTS `tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_rate`
--

LOCK TABLES `tax_rate` WRITE;
/*!40000 ALTER TABLE `tax_rate` DISABLE KEYS */;
INSERT INTO `tax_rate` VALUES (86,3,'НДС 18%',18.0000,'P','2011-03-09 21:17:10','2011-09-22 22:24:29'),(87,3,'Eco Tax (-2.00)',2.0000,'F','2011-09-21 21:49:23','2011-09-23 00:40:19');
/*!40000 ALTER TABLE `tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `tax_rate_to_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_rate_to_customer_group`
--

LOCK TABLES `tax_rate_to_customer_group` WRITE;
/*!40000 ALTER TABLE `tax_rate_to_customer_group` DISABLE KEYS */;
INSERT INTO `tax_rate_to_customer_group` VALUES (86,1),(87,1);
/*!40000 ALTER TABLE `tax_rate_to_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_rule`
--

DROP TABLE IF EXISTS `tax_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_rule`
--

LOCK TABLES `tax_rule` WRITE;
/*!40000 ALTER TABLE `tax_rule` DISABLE KEYS */;
INSERT INTO `tax_rule` VALUES (121,10,86,'payment',1),(120,10,87,'store',0);
/*!40000 ALTER TABLE `tax_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `url_alias`
--

DROP TABLE IF EXISTS `url_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`(64))
) ENGINE=MyISAM AUTO_INCREMENT=824 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url_alias`
--

LOCK TABLES `url_alias` WRITE;
/*!40000 ALTER TABLE `url_alias` DISABLE KEYS */;
INSERT INTO `url_alias` VALUES (810,'account/voucher','vouchers'),(809,'account/wishlist','wishlist'),(808,'account/account','my-account'),(807,'checkout/cart','cart'),(806,'checkout/checkout','checkout'),(805,'account/login','login'),(804,'account/logout','logout'),(803,'account/order','order-history'),(802,'account/newsletter','newsletter'),(801,'product/special','specials'),(800,'affiliate/account','affiliates'),(799,'checkout/voucher','gift-vouchers'),(798,'product/manufacturer','brands'),(797,'information/contact','contact-us'),(796,'account/return/insert','request-return'),(795,'information/sitemap','sitemap'),(794,'account/forgotten','forgot-password'),(793,'account/download','downloads'),(792,'account/return','returns'),(791,'account/transaction','transactions'),(790,'account/register','create-account'),(789,'product/compare','compare-products'),(788,'product/search','search'),(787,'account/edit','edit-account'),(786,'account/password','change-password'),(785,'account/address','address-book'),(784,'account/reward','reward-points'),(783,'affiliate/edit','edit-affiliate-account'),(782,'affiliate/password','change-affiliate-password'),(781,'affiliate/payment','affiliate-payment-options'),(780,'affiliate/tracking','affiliate-tracking-code'),(779,'affiliate/transaction','affiliate-transactions'),(778,'affiliate/logout','affiliate-logout'),(777,'affiliate/forgotten','affiliate-forgot-password'),(776,'affiliate/register','create-affiliate-account'),(775,'affiliate/login','affiliate-login'),(774,'common/home',''),(772,'information_id=4','about_us'),(823,'product_id=42','test');
/*!40000 ALTER TABLE `url_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,'admin','3602489c5fd036bc81368390f078b6a46db28a74','c38a62413','','','ilya.artamonov@b-leader.ru','','109.195.194.200',1,'2014-06-05 12:05:15'),(2,1,'tester_bro','99738df5d234b536be1e10dd767f63378ec5ce06','40da9db45','123','123','ilya.artamonov@b-leader.ru','','::1',1,'2014-06-12 16:37:20');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group`
--

DROP TABLE IF EXISTS `user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group`
--

LOCK TABLES `user_group` WRITE;
/*!40000 ALTER TABLE `user_group` DISABLE KEYS */;
INSERT INTO `user_group` VALUES (1,'Главный администратор','a:2:{s:6:\"access\";a:135:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:13:\"catalog/dates\";i:4;s:16:\"catalog/download\";i:5;s:14:\"catalog/filter\";i:6;s:19:\"catalog/information\";i:7;s:20:\"catalog/manufacturer\";i:8;s:14:\"catalog/option\";i:9;s:15:\"catalog/product\";i:10;s:14:\"catalog/review\";i:11;s:18:\"common/filemanager\";i:12;s:13:\"design/banner\";i:13;s:19:\"design/custom_field\";i:14;s:13:\"design/layout\";i:15;s:11:\"design/menu\";i:16;s:14:\"extension/feed\";i:17;s:17:\"extension/manager\";i:18;s:16:\"extension/module\";i:19;s:17:\"extension/payment\";i:20;s:18:\"extension/shipping\";i:21;s:15:\"extension/total\";i:22;s:16:\"feed/google_base\";i:23;s:19:\"feed/google_sitemap\";i:24;s:20:\"localisation/country\";i:25;s:21:\"localisation/currency\";i:26;s:21:\"localisation/geo_zone\";i:27;s:21:\"localisation/language\";i:28;s:25:\"localisation/length_class\";i:29;s:25:\"localisation/order_status\";i:30;s:26:\"localisation/return_action\";i:31;s:26:\"localisation/return_reason\";i:32;s:26:\"localisation/return_status\";i:33;s:25:\"localisation/stock_status\";i:34;s:22:\"localisation/tax_class\";i:35;s:21:\"localisation/tax_rate\";i:36;s:25:\"localisation/weight_class\";i:37;s:17:\"localisation/zone\";i:38;s:14:\"module/account\";i:39;s:16:\"module/affiliate\";i:40;s:13:\"module/banner\";i:41;s:17:\"module/bestseller\";i:42;s:15:\"module/carousel\";i:43;s:15:\"module/category\";i:44;s:15:\"module/featured\";i:45;s:13:\"module/filter\";i:46;s:18:\"module/google_talk\";i:47;s:18:\"module/information\";i:48;s:13:\"module/latest\";i:49;s:11:\"module/menu\";i:50;s:18:\"module/onecheckout\";i:51;s:16:\"module/slideshow\";i:52;s:14:\"module/special\";i:53;s:12:\"module/store\";i:54;s:14:\"module/welcome\";i:55;s:14:\"octeam/toolset\";i:56;s:18:\"octeam_tools/dummy\";i:57;s:32:\"octeam_tools/seo_keyword_checker\";i:58;s:24:\"payment/authorizenet_aim\";i:59;s:21:\"payment/bank_transfer\";i:60;s:14:\"payment/cheque\";i:61;s:11:\"payment/cod\";i:62;s:21:\"payment/free_checkout\";i:63;s:22:\"payment/klarna_account\";i:64;s:22:\"payment/klarna_invoice\";i:65;s:14:\"payment/liqpay\";i:66;s:20:\"payment/moneybookers\";i:67;s:14:\"payment/nochex\";i:68;s:15:\"payment/paymate\";i:69;s:16:\"payment/paypoint\";i:70;s:13:\"payment/payza\";i:71;s:26:\"payment/perpetual_payments\";i:72;s:14:\"payment/pp_pro\";i:73;s:17:\"payment/pp_pro_uk\";i:74;s:19:\"payment/pp_standard\";i:75;s:15:\"payment/sagepay\";i:76;s:22:\"payment/sagepay_direct\";i:77;s:18:\"payment/sagepay_us\";i:78;s:19:\"payment/twocheckout\";i:79;s:28:\"payment/web_payment_software\";i:80;s:16:\"payment/worldpay\";i:81;s:27:\"report/affiliate_commission\";i:82;s:22:\"report/customer_credit\";i:83;s:22:\"report/customer_online\";i:84;s:21:\"report/customer_order\";i:85;s:22:\"report/customer_reward\";i:86;s:24:\"report/product_purchased\";i:87;s:21:\"report/product_viewed\";i:88;s:18:\"report/sale_coupon\";i:89;s:17:\"report/sale_order\";i:90;s:18:\"report/sale_return\";i:91;s:20:\"report/sale_shipping\";i:92;s:15:\"report/sale_tax\";i:93;s:14:\"sale/affiliate\";i:94;s:12:\"sale/contact\";i:95;s:11:\"sale/coupon\";i:96;s:13:\"sale/customer\";i:97;s:20:\"sale/customer_ban_ip\";i:98;s:19:\"sale/customer_group\";i:99;s:10:\"sale/order\";i:100;s:11:\"sale/return\";i:101;s:12:\"sale/voucher\";i:102;s:18:\"sale/voucher_theme\";i:103;s:14:\"setting/script\";i:104;s:15:\"setting/setting\";i:105;s:13:\"setting/store\";i:106;s:16:\"shipping/auspost\";i:107;s:17:\"shipping/citylink\";i:108;s:14:\"shipping/fedex\";i:109;s:13:\"shipping/flat\";i:110;s:13:\"shipping/free\";i:111;s:13:\"shipping/item\";i:112;s:23:\"shipping/parcelforce_48\";i:113;s:15:\"shipping/pickup\";i:114;s:19:\"shipping/royal_mail\";i:115;s:12:\"shipping/ups\";i:116;s:13:\"shipping/usps\";i:117;s:15:\"shipping/weight\";i:118;s:11:\"tool/backup\";i:119;s:14:\"tool/error_log\";i:120;s:12:\"total/coupon\";i:121;s:12:\"total/credit\";i:122;s:14:\"total/handling\";i:123;s:16:\"total/klarna_fee\";i:124;s:19:\"total/low_order_fee\";i:125;s:12:\"total/reward\";i:126;s:14:\"total/shipping\";i:127;s:15:\"total/sub_total\";i:128;s:9:\"total/tax\";i:129;s:11:\"total/total\";i:130;s:13:\"total/voucher\";i:131;s:9:\"user/user\";i:132;s:20:\"user/user_permission\";i:133;s:15:\"shipping/pickup\";i:134;s:16:\"module/slideshow\";}s:6:\"modify\";a:135:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:13:\"catalog/dates\";i:4;s:16:\"catalog/download\";i:5;s:14:\"catalog/filter\";i:6;s:19:\"catalog/information\";i:7;s:20:\"catalog/manufacturer\";i:8;s:14:\"catalog/option\";i:9;s:15:\"catalog/product\";i:10;s:14:\"catalog/review\";i:11;s:18:\"common/filemanager\";i:12;s:13:\"design/banner\";i:13;s:19:\"design/custom_field\";i:14;s:13:\"design/layout\";i:15;s:11:\"design/menu\";i:16;s:14:\"extension/feed\";i:17;s:17:\"extension/manager\";i:18;s:16:\"extension/module\";i:19;s:17:\"extension/payment\";i:20;s:18:\"extension/shipping\";i:21;s:15:\"extension/total\";i:22;s:16:\"feed/google_base\";i:23;s:19:\"feed/google_sitemap\";i:24;s:20:\"localisation/country\";i:25;s:21:\"localisation/currency\";i:26;s:21:\"localisation/geo_zone\";i:27;s:21:\"localisation/language\";i:28;s:25:\"localisation/length_class\";i:29;s:25:\"localisation/order_status\";i:30;s:26:\"localisation/return_action\";i:31;s:26:\"localisation/return_reason\";i:32;s:26:\"localisation/return_status\";i:33;s:25:\"localisation/stock_status\";i:34;s:22:\"localisation/tax_class\";i:35;s:21:\"localisation/tax_rate\";i:36;s:25:\"localisation/weight_class\";i:37;s:17:\"localisation/zone\";i:38;s:14:\"module/account\";i:39;s:16:\"module/affiliate\";i:40;s:13:\"module/banner\";i:41;s:17:\"module/bestseller\";i:42;s:15:\"module/carousel\";i:43;s:15:\"module/category\";i:44;s:15:\"module/featured\";i:45;s:13:\"module/filter\";i:46;s:18:\"module/google_talk\";i:47;s:18:\"module/information\";i:48;s:13:\"module/latest\";i:49;s:11:\"module/menu\";i:50;s:18:\"module/onecheckout\";i:51;s:16:\"module/slideshow\";i:52;s:14:\"module/special\";i:53;s:12:\"module/store\";i:54;s:14:\"module/welcome\";i:55;s:14:\"octeam/toolset\";i:56;s:18:\"octeam_tools/dummy\";i:57;s:32:\"octeam_tools/seo_keyword_checker\";i:58;s:24:\"payment/authorizenet_aim\";i:59;s:21:\"payment/bank_transfer\";i:60;s:14:\"payment/cheque\";i:61;s:11:\"payment/cod\";i:62;s:21:\"payment/free_checkout\";i:63;s:22:\"payment/klarna_account\";i:64;s:22:\"payment/klarna_invoice\";i:65;s:14:\"payment/liqpay\";i:66;s:20:\"payment/moneybookers\";i:67;s:14:\"payment/nochex\";i:68;s:15:\"payment/paymate\";i:69;s:16:\"payment/paypoint\";i:70;s:13:\"payment/payza\";i:71;s:26:\"payment/perpetual_payments\";i:72;s:14:\"payment/pp_pro\";i:73;s:17:\"payment/pp_pro_uk\";i:74;s:19:\"payment/pp_standard\";i:75;s:15:\"payment/sagepay\";i:76;s:22:\"payment/sagepay_direct\";i:77;s:18:\"payment/sagepay_us\";i:78;s:19:\"payment/twocheckout\";i:79;s:28:\"payment/web_payment_software\";i:80;s:16:\"payment/worldpay\";i:81;s:27:\"report/affiliate_commission\";i:82;s:22:\"report/customer_credit\";i:83;s:22:\"report/customer_online\";i:84;s:21:\"report/customer_order\";i:85;s:22:\"report/customer_reward\";i:86;s:24:\"report/product_purchased\";i:87;s:21:\"report/product_viewed\";i:88;s:18:\"report/sale_coupon\";i:89;s:17:\"report/sale_order\";i:90;s:18:\"report/sale_return\";i:91;s:20:\"report/sale_shipping\";i:92;s:15:\"report/sale_tax\";i:93;s:14:\"sale/affiliate\";i:94;s:12:\"sale/contact\";i:95;s:11:\"sale/coupon\";i:96;s:13:\"sale/customer\";i:97;s:20:\"sale/customer_ban_ip\";i:98;s:19:\"sale/customer_group\";i:99;s:10:\"sale/order\";i:100;s:11:\"sale/return\";i:101;s:12:\"sale/voucher\";i:102;s:18:\"sale/voucher_theme\";i:103;s:14:\"setting/script\";i:104;s:15:\"setting/setting\";i:105;s:13:\"setting/store\";i:106;s:16:\"shipping/auspost\";i:107;s:17:\"shipping/citylink\";i:108;s:14:\"shipping/fedex\";i:109;s:13:\"shipping/flat\";i:110;s:13:\"shipping/free\";i:111;s:13:\"shipping/item\";i:112;s:23:\"shipping/parcelforce_48\";i:113;s:15:\"shipping/pickup\";i:114;s:19:\"shipping/royal_mail\";i:115;s:12:\"shipping/ups\";i:116;s:13:\"shipping/usps\";i:117;s:15:\"shipping/weight\";i:118;s:11:\"tool/backup\";i:119;s:14:\"tool/error_log\";i:120;s:12:\"total/coupon\";i:121;s:12:\"total/credit\";i:122;s:14:\"total/handling\";i:123;s:16:\"total/klarna_fee\";i:124;s:19:\"total/low_order_fee\";i:125;s:12:\"total/reward\";i:126;s:14:\"total/shipping\";i:127;s:15:\"total/sub_total\";i:128;s:9:\"total/tax\";i:129;s:11:\"total/total\";i:130;s:13:\"total/voucher\";i:131;s:9:\"user/user\";i:132;s:20:\"user/user_permission\";i:133;s:15:\"shipping/pickup\";i:134;s:16:\"module/slideshow\";}}'),(10,'Демонстрация','');
/*!40000 ALTER TABLE `user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher`
--

DROP TABLE IF EXISTS `voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher`
--

LOCK TABLES `voucher` WRITE;
/*!40000 ALTER TABLE `voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_history`
--

DROP TABLE IF EXISTS `voucher_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_history`
--

LOCK TABLES `voucher_history` WRITE;
/*!40000 ALTER TABLE `voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `voucher_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_theme`
--

DROP TABLE IF EXISTS `voucher_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_theme`
--

LOCK TABLES `voucher_theme` WRITE;
/*!40000 ALTER TABLE `voucher_theme` DISABLE KEYS */;
INSERT INTO `voucher_theme` VALUES (8,'data/demo/canon_eos_5d_2.jpg'),(7,'data/demo/gift-voucher-birthday.jpg'),(6,'data/demo/apple_logo.jpg');
/*!40000 ALTER TABLE `voucher_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_theme_description`
--

DROP TABLE IF EXISTS `voucher_theme_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_theme_description`
--

LOCK TABLES `voucher_theme_description` WRITE;
/*!40000 ALTER TABLE `voucher_theme_description` DISABLE KEYS */;
INSERT INTO `voucher_theme_description` VALUES (6,1,'Рождество'),(7,1,'День рождения'),(8,1,'Основной');
/*!40000 ALTER TABLE `voucher_theme_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weight_class`
--

DROP TABLE IF EXISTS `weight_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weight_class`
--

LOCK TABLES `weight_class` WRITE;
/*!40000 ALTER TABLE `weight_class` DISABLE KEYS */;
INSERT INTO `weight_class` VALUES (1,1.00000000),(2,1000.00000000);
/*!40000 ALTER TABLE `weight_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weight_class_description`
--

DROP TABLE IF EXISTS `weight_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weight_class_description`
--

LOCK TABLES `weight_class_description` WRITE;
/*!40000 ALTER TABLE `weight_class_description` DISABLE KEYS */;
INSERT INTO `weight_class_description` VALUES (1,1,'Килограммы','кг'),(2,1,'Граммы','г');
/*!40000 ALTER TABLE `weight_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone`
--

DROP TABLE IF EXISTS `zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3971 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone`
--

LOCK TABLES `zone` WRITE;
/*!40000 ALTER TABLE `zone` DISABLE KEYS */;
INSERT INTO `zone` VALUES (1,1,'Бадахшан','BDS',1),(2,1,'Бадгис','BDG',1),(3,1,'Баглан','BGL',1),(4,1,'Балх','BAL',1),(5,1,'Бамиан','BAM',1),(6,1,'Фарах','FRA',1),(7,1,'Фарьяб','FYB',1),(8,1,'Газни','GHA',1),(9,1,'Гор','GHO',1),(10,1,'Гильменд','HEL',1),(11,1,'Герат','HER',1),(12,1,'Джаузджан','JOW',1),(13,1,'Кабул','KAB',1),(14,1,'Кандагар','KAN',1),(15,1,'Каписа','KAP',1),(16,1,'Хост','KHO',1),(17,1,'Кунар','KNR',1),(18,1,'Кундуз','KDZ',1),(19,1,'Лагман','LAG',1),(20,1,'Логар','LOW',1),(21,1,'Нангархар','NAN',1),(22,1,'Нимроз','NIM',1),(23,1,'Нуристан','NUR',1),(24,1,'Урузган','ORU',1),(25,1,'Пактия','PIA',1),(26,1,'Пактика','PKA',1),(27,1,'Парван','PAR',1),(28,1,'Саманган','SAM',1),(29,1,'Сари-Пуль','SAR',1),(30,1,'Тахар','TAK',1),(31,1,'Вардак','WAR',1),(32,1,'Забуль','ZAB',1),(33,2,'Берат','BR',1),(34,2,'Булькиза','BU',1),(35,2,'Дельвина','DL',1),(36,2,'Девол','DV',1),(37,2,'Дибра','DI',1),(38,2,'Дуррес','DR',1),(39,2,'Эльбасан','EL',1),(40,2,'Колёня','ER',1),(41,2,'Фиери','FR',1),(42,2,'Гирокастра','GJ',1),(43,2,'Грамши','GR',1),(44,2,'Хас','HA',1),(45,2,'Кавая','KA',1),(46,2,'Курбин','KB',1),(47,2,'Кучова','KC',1),(48,2,'Корча','KO',1),(49,2,'Круя','KR',1),(50,2,'Кукес','KU',1),(51,2,'Либражди','LB',1),(52,2,'Лежа','LE',1),(53,2,'Люшня','LU',1),(54,2,'Мальси-э-Мади','MM',1),(55,2,'Малакастра','MK',1),(56,2,'Мати','MT',1),(57,2,'Мирдита','MR',1),(58,2,'Пекини','PQ',1),(59,2,'Пермети','PR',1),(60,2,'Поградец','PG',1),(61,2,'Пука','PU',1),(62,2,'Шкодер','SH',1),(63,2,'Скрапари','SK',1),(64,2,'Саранда','SR',1),(65,2,'Тепелена','TE',1),(66,2,'Тропоя','TP',1),(67,2,'Тирана','TR',1),(68,2,'Влёра','VL',1),(69,3,'Адрар','ADR',1),(70,3,'Айн-Дефла','ADE',1),(71,3,'Айн-Темухент','ATE',1),(72,3,'Алжир','ALG',1),(73,3,'Аннаба','ANN',1),(74,3,'Батна','BAT',1),(75,3,'Бешар','BEC',1),(76,3,'Беджая','BEJ',1),(77,3,'Бискра','BIS',1),(78,3,'Блида','BLI',1),(79,3,'Бордж-Бу-Арреридж','BBA',1),(80,3,'Буйра','BOA',1),(81,3,'Бумердес','BMD',1),(82,3,'Шлеф','CHL',1),(83,3,'Константина','CON',1),(84,3,'Джельфа','DJE',1),(85,3,'Эль-Баяд','EBA',1),(86,3,'Эль-Уэд','EOU',1),(87,3,'Эль-Тарф','ETA',1),(88,3,'Гардая','GHA',1),(89,3,'Гуэльма','GUE',1),(90,3,'Иллизи','ILL',1),(91,3,'Джиджель','JIJ',1),(92,3,'Хеншела','KHE',1),(93,3,'Лагуат','LAG',1),(94,3,'Маскара','MUA',1),(95,3,'Медеа','MED',1),(96,3,'Мила','MIL',1),(97,3,'Мостаганем','MOS',1),(98,3,'Мсила','MSI',1),(99,3,'Наама','NAA',1),(100,3,'Оран','ORA',1),(101,3,'Уаргла','OUA',1),(102,3,'Ум Эль-Буахи','OEB',1),(103,3,'Релизан','REL',1),(104,3,'Саида','SAI',1),(105,3,'Сетиф','SET',1),(106,3,'Сиди-Бель-Аббес','SBA',1),(107,3,'Скикда','SKI',1),(108,3,'Сук-Ахрас','SAH',1),(109,3,'Таменрассет','TAM',1),(110,3,'Тебесса','TEB',1),(111,3,'Тиарет','TIA',1),(112,3,'Тиндуф','TIN',1),(113,3,'Типаза','TIP',1),(114,3,'Тиссемсилт','TIS',1),(115,3,'Тизи-Узу','TOU',1),(116,3,'Тлемсен','TLE',1),(117,4,'Восточный округ','E',1),(118,4,'Мануа','M',1),(119,4,'Остров Роз','R',1),(120,4,'Остров Суэйнс','S',1),(121,4,'Западный округ','W',1),(122,5,'Андорра-ла-Велья','ALV',1),(123,5,'Канильо','CAN',1),(124,5,'Энкамп','ENC',1),(125,5,'Эскальдес-Энгордань','ESE',1),(126,5,'Ла-Массана','LMA',1),(127,5,'Ордино','ORD',1),(128,5,'Сант-Жулия-де-Лория','SJL',1),(129,6,'Бенго','BGO',1),(130,6,'Бенгела','BGU',1),(131,6,'Бие','BIE',1),(132,6,'Кабинда','CAB',1),(133,6,'Квандо-Кубанго','CCU',1),(134,6,'Северная Кванза','CNO',1),(135,6,'Южная Кванза','CUS',1),(136,6,'Кунене','CNN',1),(137,6,'Уамбо','HUA',1),(138,6,'Уила','HUI',1),(139,6,'Луанда','LUA',1),(140,6,'Северная Лунда','LNO',1),(141,6,'Южная Лунда','LSU',1),(142,6,'Маланже','MAL',1),(143,6,'Мошико','MOX',1),(144,6,'Намибе','NAM',1),(145,6,'Уиже','UIG',1),(146,6,'Заире','ZAI',1),(147,9,'Сент-Джордж','ASG',1),(148,9,'Сент-Джон','ASJ',1),(149,9,'Сент-Мери','ASM',1),(150,9,'Сент-Пол','ASL',1),(151,9,'Сент-Петер','ASR',1),(152,9,'Сент-Филип','ASH',1),(153,9,'Барбуда','BAR',1),(154,9,'Редонда','RED',1),(155,10,'Антарктида и острова Южной Атлантики','AN',1),(156,10,'Буэнос-Айрес','BA',1),(157,10,'Катамарка','CA',1),(158,10,'Чако','CH',1),(159,10,'Чубут','CU',1),(160,10,'Кордова','CO',1),(161,10,'Корриентес','CR',1),(162,10,'Федеральный округ','DF',1),(163,10,'Энтре-Риос','ER',1),(164,10,'Формоса','FO',1),(165,10,'Жужуй','JU',1),(166,10,'Ла-Пампа','LP',1),(167,10,'Ла-Риоха','LR',1),(168,10,'Мендоса','ME',1),(169,10,'Мисьонес','MI',1),(170,10,'Неукен','NE',1),(171,10,'Рио-Негро','RN',1),(172,10,'Сальта','SA',1),(173,10,'Сан-Хуан','SJ',1),(174,10,'Сан-Луис','SL',1),(175,10,'Санта-Крус','SC',1),(176,10,'Санта-Фе','SF',1),(177,10,'Сантьяго-дель-Эстеро','SD',1),(178,10,'Тьерра-дель-Фуэго','TF',1),(179,10,'Тукуман','TU',1),(180,11,'Арагацотн','AGT',1),(181,11,'Арарат','ARR',1),(182,11,'Армавир','ARM',1),(183,11,'Гегаркуник','GEG',1),(184,11,'Котайк','KOT',1),(185,11,'Лори','LOR',1),(186,11,'Ширак','SHI',1),(187,11,'Сюник','SYU',1),(188,11,'Тавуш','TAV',1),(189,11,'Вайоц Дзор','VAY',1),(190,11,'Ереван','YER',1),(191,13,'Австралийская столичная территория','ACT',1),(192,13,'Новый Южный Уэльс','NSW',1),(193,13,'Северная территория','NT',1),(194,13,'Квинсленд','QLD',1),(195,13,'Южная Австралия','SA',1),(196,13,'Тасмания','TAS',1),(197,13,'Виктория','VIC',1),(198,13,'Западная Австралия','WA',1),(199,14,'Бургенланд','BUR',1),(200,14,'Каринтия','KAR',1),(201,14,'Нижняя Австрия','NOS',1),(202,14,'Верхняя Австрия','OOS',1),(203,14,'Зальцбург','SAL',1),(204,14,'Штирия','STE',1),(205,14,'Тироль','TIR',1),(206,14,'Форарльберг','VOR',1),(207,14,'Вена','WIE',1),(208,15,'Ali Bayramli','AB',1),(209,15,'Abseron','ABS',1),(210,15,'AgcabAdi','AGC',1),(211,15,'Agdam','AGM',1),(212,15,'Agdas','AGS',1),(213,15,'Agstafa','AGA',1),(214,15,'Agsu','AGU',1),(215,15,'Astara','AST',1),(216,15,'Baki','BA',1),(217,15,'BabAk','BAB',1),(218,15,'BalakAn','BAL',1),(219,15,'BArdA','BAR',1),(220,15,'Beylaqan','BEY',1),(221,15,'Bilasuvar','BIL',1),(222,15,'Cabrayil','CAB',1),(223,15,'Calilabab','CAL',1),(224,15,'Culfa','CUL',1),(225,15,'Daskasan','DAS',1),(226,15,'Davaci','DAV',1),(227,15,'Fuzuli','FUZ',1),(228,15,'Ganca','GA',1),(229,15,'Gadabay','GAD',1),(230,15,'Goranboy','GOR',1),(231,15,'Goycay','GOY',1),(232,15,'Haciqabul','HAC',1),(233,15,'Imisli','IMI',1),(234,15,'Ismayilli','ISM',1),(235,15,'Kalbacar','KAL',1),(236,15,'Kurdamir','KUR',1),(237,15,'Lankaran','LA',1),(238,15,'Lacin','LAC',1),(239,15,'Lankaran','LAN',1),(240,15,'Lerik','LER',1),(241,15,'Masalli','MAS',1),(242,15,'Mingacevir','MI',1),(243,15,'Naftalan','NA',1),(244,15,'Neftcala','NEF',1),(245,15,'Oguz','OGU',1),(246,15,'Ordubad','ORD',1),(247,15,'Qabala','QAB',1),(248,15,'Qax','QAX',1),(249,15,'Qazax','QAZ',1),(250,15,'Qobustan','QOB',1),(251,15,'Quba','QBA',1),(252,15,'Qubadli','QBI',1),(253,15,'Qusar','QUS',1),(254,15,'Saki','SA',1),(255,15,'Saatli','SAT',1),(256,15,'Sabirabad','SAB',1),(257,15,'Sadarak','SAD',1),(258,15,'Sahbuz','SAH',1),(259,15,'Saki','SAK',1),(260,15,'Salyan','SAL',1),(261,15,'Sumqayit','SM',1),(262,15,'Samaxi','SMI',1),(263,15,'Samkir','SKR',1),(264,15,'Samux','SMX',1),(265,15,'Sarur','SAR',1),(266,15,'Siyazan','SIY',1),(267,15,'Susa','SS',1),(268,15,'Susa','SUS',1),(269,15,'Tartar','TAR',1),(270,15,'Tovuz','TOV',1),(271,15,'Ucar','UCA',1),(272,15,'Xankandi','XA',1),(273,15,'Xacmaz','XAC',1),(274,15,'Xanlar','XAN',1),(275,15,'Xizi','XIZ',1),(276,15,'Xocali','XCI',1),(277,15,'Xocavand','XVD',1),(278,15,'Yardimli','YAR',1),(279,15,'Yevlax','YEV',1),(280,15,'Zangilan','ZAN',1),(281,15,'Zaqatala','ZAQ',1),(282,15,'Zardab','ZAR',1),(283,15,'Naxcivan','NX',1),(284,16,'Acklins','ACK',1),(285,16,'Berry Islands','BER',1),(286,16,'Bimini','BIM',1),(287,16,'Black Point','BLK',1),(288,16,'Cat Island','CAT',1),(289,16,'Central Abaco','CAB',1),(290,16,'Central Andros','CAN',1),(291,16,'Central Eleuthera','CEL',1),(292,16,'City of Freeport','FRE',1),(293,16,'Crooked Island','CRO',1),(294,16,'East Grand Bahama','EGB',1),(295,16,'Exuma','EXU',1),(296,16,'Grand Cay','GRD',1),(297,16,'Harbour Island','HAR',1),(298,16,'Hope Town','HOP',1),(299,16,'Inagua','INA',1),(300,16,'Long Island','LNG',1),(301,16,'Mangrove Cay','MAN',1),(302,16,'Mayaguana','MAY',1),(303,16,'Moore\'s Island','MOO',1),(304,16,'North Abaco','NAB',1),(305,16,'North Andros','NAN',1),(306,16,'North Eleuthera','NEL',1),(307,16,'Ragged Island','RAG',1),(308,16,'Rum Cay','RUM',1),(309,16,'San Salvador','SAL',1),(310,16,'South Abaco','SAB',1),(311,16,'South Andros','SAN',1),(312,16,'South Eleuthera','SEL',1),(313,16,'Spanish Wells','SWE',1),(314,16,'West Grand Bahama','WGB',1),(315,17,'Capital','CAP',1),(316,17,'Central','CEN',1),(317,17,'Muharraq','MUH',1),(318,17,'Northern','NOR',1),(319,17,'Southern','SOU',1),(320,18,'Barisal','BAR',1),(321,18,'Chittagong','CHI',1),(322,18,'Dhaka','DHA',1),(323,18,'Khulna','KHU',1),(324,18,'Rajshahi','RAJ',1),(325,18,'Sylhet','SYL',1),(326,19,'Christ Church','CC',1),(327,19,'Saint Andrew','AND',1),(328,19,'Saint George','GEO',1),(329,19,'Saint James','JAM',1),(330,19,'Saint John','JOH',1),(331,19,'Saint Joseph','JOS',1),(332,19,'Saint Lucy','LUC',1),(333,19,'Saint Michael','MIC',1),(334,19,'Saint Peter','PET',1),(335,19,'Saint Philip','PHI',1),(336,19,'Saint Thomas','THO',1),(337,20,'Брест','BR',1),(338,20,'Гомель','HO',1),(339,20,'Минск','HM',1),(340,20,'Гродно','HR',1),(341,20,'Могилев','MA',1),(342,20,'Минская область','MI',1),(343,20,'Витебск','VI',1),(344,21,'Antwerpen','VAN',1),(345,21,'Brabant Wallon','WBR',1),(346,21,'Hainaut','WHT',1),(347,21,'Liege','WLG',1),(348,21,'Limburg','VLI',1),(349,21,'Luxembourg','WLX',1),(350,21,'Namur','WNA',1),(351,21,'Oost-Vlaanderen','VOV',1),(352,21,'Vlaams Brabant','VBR',1),(353,21,'West-Vlaanderen','VWV',1),(354,22,'Belize','BZ',1),(355,22,'Cayo','CY',1),(356,22,'Corozal','CR',1),(357,22,'Orange Walk','OW',1),(358,22,'Stann Creek','SC',1),(359,22,'Toledo','TO',1),(360,23,'Alibori','AL',1),(361,23,'Atakora','AK',1),(362,23,'Atlantique','AQ',1),(363,23,'Borgou','BO',1),(364,23,'Collines','CO',1),(365,23,'Donga','DO',1),(366,23,'Kouffo','KO',1),(367,23,'Littoral','LI',1),(368,23,'Mono','MO',1),(369,23,'Oueme','OU',1),(370,23,'Plateau','PL',1),(371,23,'Zou','ZO',1),(372,24,'Devonshire','DS',1),(373,24,'Hamilton City','HC',1),(374,24,'Hamilton','HA',1),(375,24,'Paget','PG',1),(376,24,'Pembroke','PB',1),(377,24,'Saint George City','GC',1),(378,24,'Saint George\'s','SG',1),(379,24,'Sandys','SA',1),(380,24,'Smith\'s','SM',1),(381,24,'Southampton','SH',1),(382,24,'Warwick','WA',1),(383,25,'Bumthang','BUM',1),(384,25,'Chukha','CHU',1),(385,25,'Dagana','DAG',1),(386,25,'Gasa','GAS',1),(387,25,'Haa','HAA',1),(388,25,'Lhuntse','LHU',1),(389,25,'Mongar','MON',1),(390,25,'Paro','PAR',1),(391,25,'Pemagatshel','PEM',1),(392,25,'Punakha','PUN',1),(393,25,'Samdrup Jongkhar','SJO',1),(394,25,'Samtse','SAT',1),(395,25,'Sarpang','SAR',1),(396,25,'Thimphu','THI',1),(397,25,'Trashigang','TRG',1),(398,25,'Trashiyangste','TRY',1),(399,25,'Trongsa','TRO',1),(400,25,'Tsirang','TSI',1),(401,25,'Wangdue Phodrang','WPH',1),(402,25,'Zhemgang','ZHE',1),(403,26,'Beni','BEN',1),(404,26,'Chuquisaca','CHU',1),(405,26,'Cochabamba','COC',1),(406,26,'La Paz','LPZ',1),(407,26,'Oruro','ORU',1),(408,26,'Pando','PAN',1),(409,26,'Potosi','POT',1),(410,26,'Santa Cruz','SCZ',1),(411,26,'Tarija','TAR',1),(412,27,'Brcko district','BRO',1),(413,27,'Unsko-Sanski Kanton','FUS',1),(414,27,'Posavski Kanton','FPO',1),(415,27,'Tuzlanski Kanton','FTU',1),(416,27,'Zenicko-Dobojski Kanton','FZE',1),(417,27,'Bosanskopodrinjski Kanton','FBP',1),(418,27,'Srednjebosanski Kanton','FSB',1),(419,27,'Hercegovacko-neretvanski Kanton','FHN',1),(420,27,'Zapadnohercegovacka Zupanija','FZH',1),(421,27,'Kanton Sarajevo','FSA',1),(422,27,'Zapadnobosanska','FZA',1),(423,27,'Banja Luka','SBL',1),(424,27,'Doboj','SDO',1),(425,27,'Bijeljina','SBI',1),(426,27,'Vlasenica','SVL',1),(427,27,'Sarajevo-Romanija or Sokolac','SSR',1),(428,27,'Foca','SFO',1),(429,27,'Trebinje','STR',1),(430,28,'Central','CE',1),(431,28,'Ghanzi','GH',1),(432,28,'Kgalagadi','KD',1),(433,28,'Kgatleng','KT',1),(434,28,'Kweneng','KW',1),(435,28,'Ngamiland','NG',1),(436,28,'North East','NE',1),(437,28,'North West','NW',1),(438,28,'South East','SE',1),(439,28,'Southern','SO',1),(440,30,'Acre','AC',1),(441,30,'Alagoas','AL',1),(442,30,'Amapa','AP',1),(443,30,'Amazonas','AM',1),(444,30,'Bahia','BA',1),(445,30,'Ceara','CE',1),(446,30,'Distrito Federal','DF',1),(447,30,'Espirito Santo','ES',1),(448,30,'Goias','GO',1),(449,30,'Maranhao','MA',1),(450,30,'Mato Grosso','MT',1),(451,30,'Mato Grosso do Sul','MS',1),(452,30,'Minas Gerais','MG',1),(453,30,'Para','PA',1),(454,30,'Paraiba','PB',1),(455,30,'Parana','PR',1),(456,30,'Pernambuco','PE',1),(457,30,'Piaui','PI',1),(458,30,'Rio de Janeiro','RJ',1),(459,30,'Rio Grande do Norte','RN',1),(460,30,'Rio Grande do Sul','RS',1),(461,30,'Rondonia','RO',1),(462,30,'Roraima','RR',1),(463,30,'Santa Catarina','SC',1),(464,30,'Sao Paulo','SP',1),(465,30,'Sergipe','SE',1),(466,30,'Tocantins','TO',1),(467,31,'Peros Banhos','PB',1),(468,31,'Salomon Islands','SI',1),(469,31,'Nelsons Island','NI',1),(470,31,'Three Brothers','TB',1),(471,31,'Eagle Islands','EA',1),(472,31,'Danger Island','DI',1),(473,31,'Egmont Islands','EG',1),(474,31,'Diego Garcia','DG',1),(475,32,'Belait','BEL',1),(476,32,'Brunei and Muara','BRM',1),(477,32,'Temburong','TEM',1),(478,32,'Tutong','TUT',1),(479,33,'Blagoevgrad','',1),(480,33,'Burgas','',1),(481,33,'Dobrich','',1),(482,33,'Gabrovo','',1),(483,33,'Haskovo','',1),(484,33,'Kardjali','',1),(485,33,'Kyustendil','',1),(486,33,'Lovech','',1),(487,33,'Montana','',1),(488,33,'Pazardjik','',1),(489,33,'Pernik','',1),(490,33,'Pleven','',1),(491,33,'Plovdiv','',1),(492,33,'Razgrad','',1),(493,33,'Shumen','',1),(494,33,'Silistra','',1),(495,33,'Sliven','',1),(496,33,'Smolyan','',1),(497,33,'Sofia','',1),(498,33,'Sofia - town','',1),(499,33,'Stara Zagora','',1),(500,33,'Targovishte','',1),(501,33,'Varna','',1),(502,33,'Veliko Tarnovo','',1),(503,33,'Vidin','',1),(504,33,'Vratza','',1),(505,33,'Yambol','',1),(506,34,'Bale','BAL',1),(507,34,'Bam','BAM',1),(508,34,'Banwa','BAN',1),(509,34,'Bazega','BAZ',1),(510,34,'Bougouriba','BOR',1),(511,34,'Boulgou','BLG',1),(512,34,'Boulkiemde','BOK',1),(513,34,'Comoe','COM',1),(514,34,'Ganzourgou','GAN',1),(515,34,'Gnagna','GNA',1),(516,34,'Gourma','GOU',1),(517,34,'Houet','HOU',1),(518,34,'Ioba','IOA',1),(519,34,'Kadiogo','KAD',1),(520,34,'Kenedougou','KEN',1),(521,34,'Komondjari','KOD',1),(522,34,'Kompienga','KOP',1),(523,34,'Kossi','KOS',1),(524,34,'Koulpelogo','KOL',1),(525,34,'Kouritenga','KOT',1),(526,34,'Kourweogo','KOW',1),(527,34,'Leraba','LER',1),(528,34,'Loroum','LOR',1),(529,34,'Mouhoun','MOU',1),(530,34,'Nahouri','NAH',1),(531,34,'Namentenga','NAM',1),(532,34,'Nayala','NAY',1),(533,34,'Noumbiel','NOU',1),(534,34,'Oubritenga','OUB',1),(535,34,'Oudalan','OUD',1),(536,34,'Passore','PAS',1),(537,34,'Poni','PON',1),(538,34,'Sanguie','SAG',1),(539,34,'Sanmatenga','SAM',1),(540,34,'Seno','SEN',1),(541,34,'Sissili','SIS',1),(542,34,'Soum','SOM',1),(543,34,'Sourou','SOR',1),(544,34,'Tapoa','TAP',1),(545,34,'Tuy','TUY',1),(546,34,'Yagha','YAG',1),(547,34,'Yatenga','YAT',1),(548,34,'Ziro','ZIR',1),(549,34,'Zondoma','ZOD',1),(550,34,'Zoundweogo','ZOW',1),(551,35,'Bubanza','BB',1),(552,35,'Bujumbura','BJ',1),(553,35,'Bururi','BR',1),(554,35,'Cankuzo','CA',1),(555,35,'Cibitoke','CI',1),(556,35,'Gitega','GI',1),(557,35,'Karuzi','KR',1),(558,35,'Kayanza','KY',1),(559,35,'Kirundo','KI',1),(560,35,'Makamba','MA',1),(561,35,'Muramvya','MU',1),(562,35,'Muyinga','MY',1),(563,35,'Mwaro','MW',1),(564,35,'Ngozi','NG',1),(565,35,'Rutana','RT',1),(566,35,'Ruyigi','RY',1),(567,36,'Phnom Penh','PP',1),(568,36,'Preah Seihanu (Kompong Som or Sihanoukville)','PS',1),(569,36,'Pailin','PA',1),(570,36,'Keb','KB',1),(571,36,'Banteay Meanchey','BM',1),(572,36,'Battambang','BA',1),(573,36,'Kampong Cham','KM',1),(574,36,'Kampong Chhnang','KN',1),(575,36,'Kampong Speu','KU',1),(576,36,'Kampong Som','KO',1),(577,36,'Kampong Thom','KT',1),(578,36,'Kampot','KP',1),(579,36,'Kandal','KL',1),(580,36,'Kaoh Kong','KK',1),(581,36,'Kratie','KR',1),(582,36,'Mondul Kiri','MK',1),(583,36,'Oddar Meancheay','OM',1),(584,36,'Pursat','PU',1),(585,36,'Preah Vihear','PR',1),(586,36,'Prey Veng','PG',1),(587,36,'Ratanak Kiri','RK',1),(588,36,'Siemreap','SI',1),(589,36,'Stung Treng','ST',1),(590,36,'Svay Rieng','SR',1),(591,36,'Takeo','TK',1),(592,37,'Adamawa (Adamaoua)','ADA',1),(593,37,'Centre','CEN',1),(594,37,'East (Est)','EST',1),(595,37,'Extreme North (Extreme-Nord)','EXN',1),(596,37,'Littoral','LIT',1),(597,37,'North (Nord)','NOR',1),(598,37,'Northwest (Nord-Ouest)','NOT',1),(599,37,'West (Ouest)','OUE',1),(600,37,'South (Sud)','SUD',1),(601,37,'Southwest (Sud-Ouest).','SOU',1),(602,38,'Alberta','AB',1),(603,38,'British Columbia','BC',1),(604,38,'Manitoba','MB',1),(605,38,'New Brunswick','NB',1),(606,38,'Newfoundland and Labrador','NL',1),(607,38,'Northwest Territories','NT',1),(608,38,'Nova Scotia','NS',1),(609,38,'Nunavut','NU',1),(610,38,'Ontario','ON',1),(611,38,'Prince Edward Island','PE',1),(612,38,'Qu&eacute;bec','QC',1),(613,38,'Saskatchewan','SK',1),(614,38,'Yukon Territory','YT',1),(615,39,'Boa Vista','BV',1),(616,39,'Brava','BR',1),(617,39,'Calheta de Sao Miguel','CS',1),(618,39,'Maio','MA',1),(619,39,'Mosteiros','MO',1),(620,39,'Paul','PA',1),(621,39,'Porto Novo','PN',1),(622,39,'Praia','PR',1),(623,39,'Ribeira Grande','RG',1),(624,39,'Sal','SL',1),(625,39,'Santa Catarina','CA',1),(626,39,'Santa Cruz','CR',1),(627,39,'Sao Domingos','SD',1),(628,39,'Sao Filipe','SF',1),(629,39,'Sao Nicolau','SN',1),(630,39,'Sao Vicente','SV',1),(631,39,'Tarrafal','TA',1),(632,40,'Creek','CR',1),(633,40,'Eastern','EA',1),(634,40,'Midland','ML',1),(635,40,'South Town','ST',1),(636,40,'Spot Bay','SP',1),(637,40,'Stake Bay','SK',1),(638,40,'West End','WD',1),(639,40,'Western','WN',1),(640,41,'Bamingui-Bangoran','BBA',1),(641,41,'Basse-Kotto','BKO',1),(642,41,'Haute-Kotto','HKO',1),(643,41,'Haut-Mbomou','HMB',1),(644,41,'Kemo','KEM',1),(645,41,'Lobaye','LOB',1),(646,41,'Mambere-KadeÔ','MKD',1),(647,41,'Mbomou','MBO',1),(648,41,'Nana-Mambere','NMM',1),(649,41,'Ombella-M\'Poko','OMP',1),(650,41,'Ouaka','OUK',1),(651,41,'Ouham','OUH',1),(652,41,'Ouham-Pende','OPE',1),(653,41,'Vakaga','VAK',1),(654,41,'Nana-Grebizi','NGR',1),(655,41,'Sangha-Mbaere','SMB',1),(656,41,'Bangui','BAN',1),(657,42,'Batha','BA',1),(658,42,'Biltine','BI',1),(659,42,'Borkou-Ennedi-Tibesti','BE',1),(660,42,'Chari-Baguirmi','CB',1),(661,42,'Guera','GU',1),(662,42,'Kanem','KA',1),(663,42,'Lac','LA',1),(664,42,'Logone Occidental','LC',1),(665,42,'Logone Oriental','LR',1),(666,42,'Mayo-Kebbi','MK',1),(667,42,'Moyen-Chari','MC',1),(668,42,'Ouaddai','OU',1),(669,42,'Salamat','SA',1),(670,42,'Tandjile','TA',1),(671,43,'Aisen del General Carlos Ibanez','AI',1),(672,43,'Antofagasta','AN',1),(673,43,'Araucania','AR',1),(674,43,'Atacama','AT',1),(675,43,'Bio-Bio','BI',1),(676,43,'Coquimbo','CO',1),(677,43,'Libertador General Bernardo O\'Hi','LI',1),(678,43,'Los Lagos','LL',1),(679,43,'Magallanes y de la Antartica Chi','MA',1),(680,43,'Maule','ML',1),(681,43,'Region Metropolitana','RM',1),(682,43,'Tarapaca','TA',1),(683,43,'Valparaiso','VS',1),(684,44,'Anhui','AN',1),(685,44,'Beijing','BE',1),(686,44,'Chongqing','CH',1),(687,44,'Fujian','FU',1),(688,44,'Gansu','GA',1),(689,44,'Guangdong','GU',1),(690,44,'Guangxi','GX',1),(691,44,'Guizhou','GZ',1),(692,44,'Hainan','HA',1),(693,44,'Hebei','HB',1),(694,44,'Heilongjiang','HL',1),(695,44,'Henan','HE',1),(696,44,'Hong Kong','HK',1),(697,44,'Hubei','HU',1),(698,44,'Hunan','HN',1),(699,44,'Inner Mongolia','IM',1),(700,44,'Jiangsu','JI',1),(701,44,'Jiangxi','JX',1),(702,44,'Jilin','JL',1),(703,44,'Liaoning','LI',1),(704,44,'Macau','MA',1),(705,44,'Ningxia','NI',1),(706,44,'Shaanxi','SH',1),(707,44,'Shandong','SA',1),(708,44,'Shanghai','SG',1),(709,44,'Shanxi','SX',1),(710,44,'Sichuan','SI',1),(711,44,'Tianjin','TI',1),(712,44,'Xinjiang','XI',1),(713,44,'Yunnan','YU',1),(714,44,'Zhejiang','ZH',1),(715,46,'Direction Island','D',1),(716,46,'Home Island','H',1),(717,46,'Horsburgh Island','O',1),(718,46,'South Island','S',1),(719,46,'West Island','W',1),(720,47,'Amazonas','AMZ',1),(721,47,'Antioquia','ANT',1),(722,47,'Arauca','ARA',1),(723,47,'Atlantico','ATL',1),(724,47,'Bogota D.C.','BDC',1),(725,47,'Bolivar','BOL',1),(726,47,'Boyaca','BOY',1),(727,47,'Caldas','CAL',1),(728,47,'Caqueta','CAQ',1),(729,47,'Casanare','CAS',1),(730,47,'Cauca','CAU',1),(731,47,'Cesar','CES',1),(732,47,'Choco','CHO',1),(733,47,'Cordoba','COR',1),(734,47,'Cundinamarca','CAM',1),(735,47,'Guainia','GNA',1),(736,47,'Guajira','GJR',1),(737,47,'Guaviare','GVR',1),(738,47,'Huila','HUI',1),(739,47,'Magdalena','MAG',1),(740,47,'Meta','MET',1),(741,47,'Narino','NAR',1),(742,47,'Norte de Santander','NDS',1),(743,47,'Putumayo','PUT',1),(744,47,'Quindio','QUI',1),(745,47,'Risaralda','RIS',1),(746,47,'San Andres y Providencia','SAP',1),(747,47,'Santander','SAN',1),(748,47,'Sucre','SUC',1),(749,47,'Tolima','TOL',1),(750,47,'Valle del Cauca','VDC',1),(751,47,'Vaupes','VAU',1),(752,47,'Vichada','VIC',1),(753,48,'Grande Comore','G',1),(754,48,'Anjouan','A',1),(755,48,'Moheli','M',1),(756,49,'Bouenza','BO',1),(757,49,'Brazzaville','BR',1),(758,49,'Cuvette','CU',1),(759,49,'Cuvette-Ouest','CO',1),(760,49,'Kouilou','KO',1),(761,49,'Lekoumou','LE',1),(762,49,'Likouala','LI',1),(763,49,'Niari','NI',1),(764,49,'Plateaux','PL',1),(765,49,'Pool','PO',1),(766,49,'Sangha','SA',1),(767,50,'Pukapuka','PU',1),(768,50,'Rakahanga','RK',1),(769,50,'Manihiki','MK',1),(770,50,'Penrhyn','PE',1),(771,50,'Nassau Island','NI',1),(772,50,'Surwarrow','SU',1),(773,50,'Palmerston','PA',1),(774,50,'Aitutaki','AI',1),(775,50,'Manuae','MA',1),(776,50,'Takutea','TA',1),(777,50,'Mitiaro','MT',1),(778,50,'Atiu','AT',1),(779,50,'Mauke','MU',1),(780,50,'Rarotonga','RR',1),(781,50,'Mangaia','MG',1),(782,51,'Alajuela','AL',1),(783,51,'Cartago','CA',1),(784,51,'Guanacaste','GU',1),(785,51,'Heredia','HE',1),(786,51,'Limon','LI',1),(787,51,'Puntarenas','PU',1),(788,51,'San Jose','SJ',1),(789,52,'Abengourou','ABE',1),(790,52,'Abidjan','ABI',1),(791,52,'Aboisso','ABO',1),(792,52,'Adiake','ADI',1),(793,52,'Adzope','ADZ',1),(794,52,'Agboville','AGB',1),(795,52,'Agnibilekrou','AGN',1),(796,52,'Alepe','ALE',1),(797,52,'Bocanda','BOC',1),(798,52,'Bangolo','BAN',1),(799,52,'Beoumi','BEO',1),(800,52,'Biankouma','BIA',1),(801,52,'Bondoukou','BDK',1),(802,52,'Bongouanou','BGN',1),(803,52,'Bouafle','BFL',1),(804,52,'Bouake','BKE',1),(805,52,'Bouna','BNA',1),(806,52,'Boundiali','BDL',1),(807,52,'Dabakala','DKL',1),(808,52,'Dabou','DBU',1),(809,52,'Daloa','DAL',1),(810,52,'Danane','DAN',1),(811,52,'Daoukro','DAO',1),(812,52,'Dimbokro','DIM',1),(813,52,'Divo','DIV',1),(814,52,'Duekoue','DUE',1),(815,52,'Ferkessedougou','FER',1),(816,52,'Gagnoa','GAG',1),(817,52,'Grand-Bassam','GBA',1),(818,52,'Grand-Lahou','GLA',1),(819,52,'Guiglo','GUI',1),(820,52,'Issia','ISS',1),(821,52,'Jacqueville','JAC',1),(822,52,'Katiola','KAT',1),(823,52,'Korhogo','KOR',1),(824,52,'Lakota','LAK',1),(825,52,'Man','MAN',1),(826,52,'Mankono','MKN',1),(827,52,'Mbahiakro','MBA',1),(828,52,'Odienne','ODI',1),(829,52,'Oume','OUM',1),(830,52,'Sakassou','SAK',1),(831,52,'San-Pedro','SPE',1),(832,52,'Sassandra','SAS',1),(833,52,'Seguela','SEG',1),(834,52,'Sinfra','SIN',1),(835,52,'Soubre','SOU',1),(836,52,'Tabou','TAB',1),(837,52,'Tanda','TAN',1),(838,52,'Tiebissou','TIE',1),(839,52,'Tingrela','TIN',1),(840,52,'Tiassale','TIA',1),(841,52,'Touba','TBA',1),(842,52,'Toulepleu','TLP',1),(843,52,'Toumodi','TMD',1),(844,52,'Vavoua','VAV',1),(845,52,'Yamoussoukro','YAM',1),(846,52,'Zuenoula','ZUE',1),(847,53,'Bjelovar-Bilogora','BB',1),(848,53,'City of Zagreb','CZ',1),(849,53,'Dubrovnik-Neretva','DN',1),(850,53,'Istra','IS',1),(851,53,'Karlovac','KA',1),(852,53,'Koprivnica-Krizevci','KK',1),(853,53,'Krapina-Zagorje','KZ',1),(854,53,'Lika-Senj','LS',1),(855,53,'Medimurje','ME',1),(856,53,'Osijek-Baranja','OB',1),(857,53,'Pozega-Slavonia','PS',1),(858,53,'Primorje-Gorski Kotar','PG',1),(859,53,'Sibenik','SI',1),(860,53,'Sisak-Moslavina','SM',1),(861,53,'Slavonski Brod-Posavina','SB',1),(862,53,'Split-Dalmatia','SD',1),(863,53,'Varazdin','VA',1),(864,53,'Virovitica-Podravina','VP',1),(865,53,'Vukovar-Srijem','VS',1),(866,53,'Zadar-Knin','ZK',1),(867,53,'Zagreb','ZA',1),(868,54,'Camaguey','CA',1),(869,54,'Ciego de Avila','CD',1),(870,54,'Cienfuegos','CI',1),(871,54,'Ciudad de La Habana','CH',1),(872,54,'Granma','GR',1),(873,54,'Guantanamo','GU',1),(874,54,'Holguin','HO',1),(875,54,'Isla de la Juventud','IJ',1),(876,54,'La Habana','LH',1),(877,54,'Las Tunas','LT',1),(878,54,'Matanzas','MA',1),(879,54,'Pinar del Rio','PR',1),(880,54,'Sancti Spiritus','SS',1),(881,54,'Santiago de Cuba','SC',1),(882,54,'Villa Clara','VC',1),(883,55,'Famagusta','F',1),(884,55,'Kyrenia','K',1),(885,55,'Larnaca','A',1),(886,55,'Limassol','I',1),(887,55,'Nicosia','N',1),(888,55,'Paphos','P',1),(889,56,'Ústecký','U',1),(890,56,'Jihočeský','C',1),(891,56,'Jihomoravský','B',1),(892,56,'Karlovarský','K',1),(893,56,'Královehradecký','H',1),(894,56,'Liberecký','L',1),(895,56,'Moravskoslezský','T',1),(896,56,'Olomoucký','M',1),(897,56,'Pardubický','E',1),(898,56,'Plzeňský','P',1),(899,56,'Praha','A',1),(900,56,'Středočeský','S',1),(901,56,'Vysočina','J',1),(902,56,'Zlínský','Z',1),(903,57,'Arhus','AR',1),(904,57,'Bornholm','BH',1),(905,57,'Copenhagen','CO',1),(906,57,'Faroe Islands','FO',1),(907,57,'Frederiksborg','FR',1),(908,57,'Fyn','FY',1),(909,57,'Kobenhavn','KO',1),(910,57,'Nordjylland','NO',1),(911,57,'Ribe','RI',1),(912,57,'Ringkobing','RK',1),(913,57,'Roskilde','RO',1),(914,57,'Sonderjylland','SO',1),(915,57,'Storstrom','ST',1),(916,57,'Vejle','VK',1),(917,57,'Vestj&aelig;lland','VJ',1),(918,57,'Viborg','VB',1),(919,58,'\'Ali Sabih','S',1),(920,58,'Dikhil','K',1),(921,58,'Djibouti','J',1),(922,58,'Obock','O',1),(923,58,'Tadjoura','T',1),(924,59,'Saint Andrew Parish','AND',1),(925,59,'Saint David Parish','DAV',1),(926,59,'Saint George Parish','GEO',1),(927,59,'Saint John Parish','JOH',1),(928,59,'Saint Joseph Parish','JOS',1),(929,59,'Saint Luke Parish','LUK',1),(930,59,'Saint Mark Parish','MAR',1),(931,59,'Saint Patrick Parish','PAT',1),(932,59,'Saint Paul Parish','PAU',1),(933,59,'Saint Peter Parish','PET',1),(934,60,'Distrito Nacional','DN',1),(935,60,'Azua','AZ',1),(936,60,'Baoruco','BC',1),(937,60,'Barahona','BH',1),(938,60,'Dajabon','DJ',1),(939,60,'Duarte','DU',1),(940,60,'Elias Pina','EL',1),(941,60,'El Seybo','SY',1),(942,60,'Espaillat','ET',1),(943,60,'Hato Mayor','HM',1),(944,60,'Independencia','IN',1),(945,60,'La Altagracia','AL',1),(946,60,'La Romana','RO',1),(947,60,'La Vega','VE',1),(948,60,'Maria Trinidad Sanchez','MT',1),(949,60,'Monsenor Nouel','MN',1),(950,60,'Monte Cristi','MC',1),(951,60,'Monte Plata','MP',1),(952,60,'Pedernales','PD',1),(953,60,'Peravia (Bani)','PR',1),(954,60,'Puerto Plata','PP',1),(955,60,'Salcedo','SL',1),(956,60,'Samana','SM',1),(957,60,'Sanchez Ramirez','SH',1),(958,60,'San Cristobal','SC',1),(959,60,'San Jose de Ocoa','JO',1),(960,60,'San Juan','SJ',1),(961,60,'San Pedro de Macoris','PM',1),(962,60,'Santiago','SA',1),(963,60,'Santiago Rodriguez','ST',1),(964,60,'Santo Domingo','SD',1),(965,60,'Valverde','VA',1),(966,61,'Aileu','AL',1),(967,61,'Ainaro','AN',1),(968,61,'Baucau','BA',1),(969,61,'Bobonaro','BO',1),(970,61,'Cova Lima','CO',1),(971,61,'Dili','DI',1),(972,61,'Ermera','ER',1),(973,61,'Lautem','LA',1),(974,61,'Liquica','LI',1),(975,61,'Manatuto','MT',1),(976,61,'Manufahi','MF',1),(977,61,'Oecussi','OE',1),(978,61,'Viqueque','VI',1),(979,62,'Azuay','AZU',1),(980,62,'Bolivar','BOL',1),(981,62,'Ca&ntilde;ar','CAN',1),(982,62,'Carchi','CAR',1),(983,62,'Chimborazo','CHI',1),(984,62,'Cotopaxi','COT',1),(985,62,'El Oro','EOR',1),(986,62,'Esmeraldas','ESM',1),(987,62,'Gal&aacute;pagos','GPS',1),(988,62,'Guayas','GUA',1),(989,62,'Imbabura','IMB',1),(990,62,'Loja','LOJ',1),(991,62,'Los Rios','LRO',1),(992,62,'Manab&iacute;','MAN',1),(993,62,'Morona Santiago','MSA',1),(994,62,'Napo','NAP',1),(995,62,'Orellana','ORE',1),(996,62,'Pastaza','PAS',1),(997,62,'Pichincha','PIC',1),(998,62,'Sucumb&iacute;os','SUC',1),(999,62,'Tungurahua','TUN',1),(1000,62,'Zamora Chinchipe','ZCH',1),(1001,63,'Ad Daqahliyah','DHY',1),(1002,63,'Al Bahr al Ahmar','BAM',1),(1003,63,'Al Buhayrah','BHY',1),(1004,63,'Al Fayyum','FYM',1),(1005,63,'Al Gharbiyah','GBY',1),(1006,63,'Al Iskandariyah','IDR',1),(1007,63,'Al Isma\'iliyah','IML',1),(1008,63,'Al Jizah','JZH',1),(1009,63,'Al Minufiyah','MFY',1),(1010,63,'Al Minya','MNY',1),(1011,63,'Al Qahirah','QHR',1),(1012,63,'Al Qalyubiyah','QLY',1),(1013,63,'Al Wadi al Jadid','WJD',1),(1014,63,'Ash Sharqiyah','SHQ',1),(1015,63,'As Suways','SWY',1),(1016,63,'Aswan','ASW',1),(1017,63,'Asyut','ASY',1),(1018,63,'Bani Suwayf','BSW',1),(1019,63,'Bur Sa\'id','BSD',1),(1020,63,'Dumyat','DMY',1),(1021,63,'Janub Sina\'','JNS',1),(1022,63,'Kafr ash Shaykh','KSH',1),(1023,63,'Matruh','MAT',1),(1024,63,'Qina','QIN',1),(1025,63,'Shamal Sina\'','SHS',1),(1026,63,'Suhaj','SUH',1),(1027,64,'Ahuachapan','AH',1),(1028,64,'Cabanas','CA',1),(1029,64,'Chalatenango','CH',1),(1030,64,'Cuscatlan','CU',1),(1031,64,'La Libertad','LB',1),(1032,64,'La Paz','PZ',1),(1033,64,'La Union','UN',1),(1034,64,'Morazan','MO',1),(1035,64,'San Miguel','SM',1),(1036,64,'San Salvador','SS',1),(1037,64,'San Vicente','SV',1),(1038,64,'Santa Ana','SA',1),(1039,64,'Sonsonate','SO',1),(1040,64,'Usulutan','US',1),(1041,65,'Provincia Annobon','AN',1),(1042,65,'Provincia Bioko Norte','BN',1),(1043,65,'Provincia Bioko Sur','BS',1),(1044,65,'Provincia Centro Sur','CS',1),(1045,65,'Provincia Kie-Ntem','KN',1),(1046,65,'Provincia Litoral','LI',1),(1047,65,'Provincia Wele-Nzas','WN',1),(1048,66,'Central (Maekel)','MA',1),(1049,66,'Anseba (Keren)','KE',1),(1050,66,'Southern Red Sea (Debub-Keih-Bahri)','DK',1),(1051,66,'Northern Red Sea (Semien-Keih-Bahri)','SK',1),(1052,66,'Southern (Debub)','DE',1),(1053,66,'Gash-Barka (Barentu)','BR',1),(1054,67,'Harjumaa (Tallinn)','HA',1),(1055,67,'Hiiumaa (Kardla)','HI',1),(1056,67,'Ida-Virumaa (Johvi)','IV',1),(1057,67,'Jarvamaa (Paide)','JA',1),(1058,67,'Jogevamaa (Jogeva)','JO',1),(1059,67,'Laane-Virumaa (Rakvere)','LV',1),(1060,67,'Laanemaa (Haapsalu)','LA',1),(1061,67,'Parnumaa (Parnu)','PA',1),(1062,67,'Polvamaa (Polva)','PO',1),(1063,67,'Raplamaa (Rapla)','RA',1),(1064,67,'Saaremaa (Kuessaare)','SA',1),(1065,67,'Tartumaa (Tartu)','TA',1),(1066,67,'Valgamaa (Valga)','VA',1),(1067,67,'Viljandimaa (Viljandi)','VI',1),(1068,67,'Vorumaa (Voru)','VO',1),(1069,68,'Afar','AF',1),(1070,68,'Amhara','AH',1),(1071,68,'Benishangul-Gumaz','BG',1),(1072,68,'Gambela','GB',1),(1073,68,'Hariai','HR',1),(1074,68,'Oromia','OR',1),(1075,68,'Somali','SM',1),(1076,68,'Southern Nations - Nationalities and Peoples Region','SN',1),(1077,68,'Tigray','TG',1),(1078,68,'Addis Ababa','AA',1),(1079,68,'Dire Dawa','DD',1),(1080,71,'Central Division','C',1),(1081,71,'Northern Division','N',1),(1082,71,'Eastern Division','E',1),(1083,71,'Western Division','W',1),(1084,71,'Rotuma','R',1),(1085,72,'Ahvenanmaan Laani','AL',1),(1086,72,'Etela-Suomen Laani','ES',1),(1087,72,'Ita-Suomen Laani','IS',1),(1088,72,'Lansi-Suomen Laani','LS',1),(1089,72,'Lapin Lanani','LA',1),(1090,72,'Oulun Laani','OU',1),(1091,73,'Alsace','AL',1),(1092,73,'Aquitaine','AQ',1),(1093,73,'Auvergne','AU',1),(1094,73,'Brittany','BR',1),(1095,73,'Burgundy','BU',1),(1096,73,'Center Loire Valley','CE',1),(1097,73,'Champagne','CH',1),(1098,73,'Corse','CO',1),(1099,73,'France Comte','FR',1),(1100,73,'Languedoc Roussillon','LA',1),(1101,73,'Limousin','LI',1),(1102,73,'Lorraine','LO',1),(1103,73,'Midi Pyrenees','MI',1),(1104,73,'Nord Pas de Calais','NO',1),(1105,73,'Normandy','NR',1),(1106,73,'Paris / Ill de France','PA',1),(1107,73,'Picardie','PI',1),(1108,73,'Poitou Charente','PO',1),(1109,73,'Provence','PR',1),(1110,73,'Rhone Alps','RH',1),(1111,73,'Riviera','RI',1),(1112,73,'Western Loire Valley','WE',1),(1113,74,'Etranger','Et',1),(1114,74,'Ain','01',1),(1115,74,'Aisne','02',1),(1116,74,'Allier','03',1),(1117,74,'Alpes de Haute Provence','04',1),(1118,74,'Hautes-Alpes','05',1),(1119,74,'Alpes Maritimes','06',1),(1120,74,'Ard&egrave;che','07',1),(1121,74,'Ardennes','08',1),(1122,74,'Ari&egrave;ge','09',1),(1123,74,'Aube','10',1),(1124,74,'Aude','11',1),(1125,74,'Aveyron','12',1),(1126,74,'Bouches du Rh&ocirc;ne','13',1),(1127,74,'Calvados','14',1),(1128,74,'Cantal','15',1),(1129,74,'Charente','16',1),(1130,74,'Charente Maritime','17',1),(1131,74,'Cher','18',1),(1132,74,'Corr&egrave;ze','19',1),(1133,74,'Corse du Sud','2A',1),(1134,74,'Haute Corse','2B',1),(1135,74,'C&ocirc;te d&#039;or','21',1),(1136,74,'C&ocirc;tes d&#039;Armor','22',1),(1137,74,'Creuse','23',1),(1138,74,'Dordogne','24',1),(1139,74,'Doubs','25',1),(1140,74,'Dr&ocirc;me','26',1),(1141,74,'Eure','27',1),(1142,74,'Eure et Loir','28',1),(1143,74,'Finist&egrave;re','29',1),(1144,74,'Gard','30',1),(1145,74,'Haute Garonne','31',1),(1146,74,'Gers','32',1),(1147,74,'Gironde','33',1),(1148,74,'H&eacute;rault','34',1),(1149,74,'Ille et Vilaine','35',1),(1150,74,'Indre','36',1),(1151,74,'Indre et Loire','37',1),(1152,74,'Is&eacute;re','38',1),(1153,74,'Jura','39',1),(1154,74,'Landes','40',1),(1155,74,'Loir et Cher','41',1),(1156,74,'Loire','42',1),(1157,74,'Haute Loire','43',1),(1158,74,'Loire Atlantique','44',1),(1159,74,'Loiret','45',1),(1160,74,'Lot','46',1),(1161,74,'Lot et Garonne','47',1),(1162,74,'Loz&egrave;re','48',1),(1163,74,'Maine et Loire','49',1),(1164,74,'Manche','50',1),(1165,74,'Marne','51',1),(1166,74,'Haute Marne','52',1),(1167,74,'Mayenne','53',1),(1168,74,'Meurthe et Moselle','54',1),(1169,74,'Meuse','55',1),(1170,74,'Morbihan','56',1),(1171,74,'Moselle','57',1),(1172,74,'Ni&egrave;vre','58',1),(1173,74,'Nord','59',1),(1174,74,'Oise','60',1),(1175,74,'Orne','61',1),(1176,74,'Pas de Calais','62',1),(1177,74,'Puy de D&ocirc;me','63',1),(1178,74,'Pyr&eacute;n&eacute;es Atlantiques','64',1),(1179,74,'Hautes Pyr&eacute;n&eacute;es','65',1),(1180,74,'Pyr&eacute;n&eacute;es Orientales','66',1),(1181,74,'Bas Rhin','67',1),(1182,74,'Haut Rhin','68',1),(1183,74,'Rh&ocirc;ne','69',1),(1184,74,'Haute Sa&ocirc;ne','70',1),(1185,74,'Sa&ocirc;ne et Loire','71',1),(1186,74,'Sarthe','72',1),(1187,74,'Savoie','73',1),(1188,74,'Haute Savoie','74',1),(1189,74,'Paris','75',1),(1190,74,'Seine Maritime','76',1),(1191,74,'Seine et Marne','77',1),(1192,74,'Yvelines','78',1),(1193,74,'Deux S&egrave;vres','79',1),(1194,74,'Somme','80',1),(1195,74,'Tarn','81',1),(1196,74,'Tarn et Garonne','82',1),(1197,74,'Var','83',1),(1198,74,'Vaucluse','84',1),(1199,74,'Vend&eacute;e','85',1),(1200,74,'Vienne','86',1),(1201,74,'Haute Vienne','87',1),(1202,74,'Vosges','88',1),(1203,74,'Yonne','89',1),(1204,74,'Territoire de Belfort','90',1),(1205,74,'Essonne','91',1),(1206,74,'Hauts de Seine','92',1),(1207,74,'Seine St-Denis','93',1),(1208,74,'Val de Marne','94',1),(1209,74,'Val d\'Oise','95',1),(1210,76,'Archipel des Marquises','M',1),(1211,76,'Archipel des Tuamotu','T',1),(1212,76,'Archipel des Tubuai','I',1),(1213,76,'Iles du Vent','V',1),(1214,76,'Iles Sous-le-Vent','S',1),(1215,77,'Iles Crozet','C',1),(1216,77,'Iles Kerguelen','K',1),(1217,77,'Ile Amsterdam','A',1),(1218,77,'Ile Saint-Paul','P',1),(1219,77,'Adelie Land','D',1),(1220,78,'Estuaire','ES',1),(1221,78,'Haut-Ogooue','HO',1),(1222,78,'Moyen-Ogooue','MO',1),(1223,78,'Ngounie','NG',1),(1224,78,'Nyanga','NY',1),(1225,78,'Ogooue-Ivindo','OI',1),(1226,78,'Ogooue-Lolo','OL',1),(1227,78,'Ogooue-Maritime','OM',1),(1228,78,'Woleu-Ntem','WN',1),(1229,79,'Banjul','BJ',1),(1230,79,'Basse','BS',1),(1231,79,'Brikama','BR',1),(1232,79,'Janjangbure','JA',1),(1233,79,'Kanifeng','KA',1),(1234,79,'Kerewan','KE',1),(1235,79,'Kuntaur','KU',1),(1236,79,'Mansakonko','MA',1),(1237,79,'Lower River','LR',1),(1238,79,'Central River','CR',1),(1239,79,'North Bank','NB',1),(1240,79,'Upper River','UR',1),(1241,79,'Western','WE',1),(1242,80,'Abkhazia','AB',1),(1243,80,'Ajaria','AJ',1),(1244,80,'Tbilisi','TB',1),(1245,80,'Guria','GU',1),(1246,80,'Imereti','IM',1),(1247,80,'Kakheti','KA',1),(1248,80,'Kvemo Kartli','KK',1),(1249,80,'Mtskheta-Mtianeti','MM',1),(1250,80,'Racha Lechkhumi and Kvemo Svanet','RL',1),(1251,80,'Samegrelo-Zemo Svaneti','SZ',1),(1252,80,'Samtskhe-Javakheti','SJ',1),(1253,80,'Shida Kartli','SK',1),(1254,81,'Baden-W&uuml;rttemberg','BAW',1),(1255,81,'Bayern','BAY',1),(1256,81,'Berlin','BER',1),(1257,81,'Brandenburg','BRG',1),(1258,81,'Bremen','BRE',1),(1259,81,'Hamburg','HAM',1),(1260,81,'Hessen','HES',1),(1261,81,'Mecklenburg-Vorpommern','MEC',1),(1262,81,'Niedersachsen','NDS',1),(1263,81,'Nordrhein-Westfalen','NRW',1),(1264,81,'Rheinland-Pfalz','RHE',1),(1265,81,'Saarland','SAR',1),(1266,81,'Sachsen','SAS',1),(1267,81,'Sachsen-Anhalt','SAC',1),(1268,81,'Schleswig-Holstein','SCN',1),(1269,81,'Th&uuml;ringen','THE',1),(1270,82,'Ashanti Region','AS',1),(1271,82,'Brong-Ahafo Region','BA',1),(1272,82,'Central Region','CE',1),(1273,82,'Eastern Region','EA',1),(1274,82,'Greater Accra Region','GA',1),(1275,82,'Northern Region','NO',1),(1276,82,'Upper East Region','UE',1),(1277,82,'Upper West Region','UW',1),(1278,82,'Volta Region','VO',1),(1279,82,'Western Region','WE',1),(1280,84,'Attica','AT',1),(1281,84,'Central Greece','CN',1),(1282,84,'Central Macedonia','CM',1),(1283,84,'Crete','CR',1),(1284,84,'East Macedonia and Thrace','EM',1),(1285,84,'Epirus','EP',1),(1286,84,'Ionian Islands','II',1),(1287,84,'North Aegean','NA',1),(1288,84,'Peloponnesos','PP',1),(1289,84,'South Aegean','SA',1),(1290,84,'Thessaly','TH',1),(1291,84,'West Greece','WG',1),(1292,84,'West Macedonia','WM',1),(1293,85,'Avannaa','A',1),(1294,85,'Tunu','T',1),(1295,85,'Kitaa','K',1),(1296,86,'Saint Andrew','A',1),(1297,86,'Saint David','D',1),(1298,86,'Saint George','G',1),(1299,86,'Saint John','J',1),(1300,86,'Saint Mark','M',1),(1301,86,'Saint Patrick','P',1),(1302,86,'Carriacou','C',1),(1303,86,'Petit Martinique','Q',1),(1304,89,'Alta Verapaz','AV',1),(1305,89,'Baja Verapaz','BV',1),(1306,89,'Chimaltenango','CM',1),(1307,89,'Chiquimula','CQ',1),(1308,89,'El Peten','PE',1),(1309,89,'El Progreso','PR',1),(1310,89,'El Quiche','QC',1),(1311,89,'Escuintla','ES',1),(1312,89,'Guatemala','GU',1),(1313,89,'Huehuetenango','HU',1),(1314,89,'Izabal','IZ',1),(1315,89,'Jalapa','JA',1),(1316,89,'Jutiapa','JU',1),(1317,89,'Quetzaltenango','QZ',1),(1318,89,'Retalhuleu','RE',1),(1319,89,'Sacatepequez','ST',1),(1320,89,'San Marcos','SM',1),(1321,89,'Santa Rosa','SR',1),(1322,89,'Solola','SO',1),(1323,89,'Suchitepequez','SU',1),(1324,89,'Totonicapan','TO',1),(1325,89,'Zacapa','ZA',1),(1326,90,'Conakry','CNK',1),(1327,90,'Beyla','BYL',1),(1328,90,'Boffa','BFA',1),(1329,90,'Boke','BOK',1),(1330,90,'Coyah','COY',1),(1331,90,'Dabola','DBL',1),(1332,90,'Dalaba','DLB',1),(1333,90,'Dinguiraye','DGR',1),(1334,90,'Dubreka','DBR',1),(1335,90,'Faranah','FRN',1),(1336,90,'Forecariah','FRC',1),(1337,90,'Fria','FRI',1),(1338,90,'Gaoual','GAO',1),(1339,90,'Gueckedou','GCD',1),(1340,90,'Kankan','KNK',1),(1341,90,'Kerouane','KRN',1),(1342,90,'Kindia','KND',1),(1343,90,'Kissidougou','KSD',1),(1344,90,'Koubia','KBA',1),(1345,90,'Koundara','KDA',1),(1346,90,'Kouroussa','KRA',1),(1347,90,'Labe','LAB',1),(1348,90,'Lelouma','LLM',1),(1349,90,'Lola','LOL',1),(1350,90,'Macenta','MCT',1),(1351,90,'Mali','MAL',1),(1352,90,'Mamou','MAM',1),(1353,90,'Mandiana','MAN',1),(1354,90,'Nzerekore','NZR',1),(1355,90,'Pita','PIT',1),(1356,90,'Siguiri','SIG',1),(1357,90,'Telimele','TLM',1),(1358,90,'Tougue','TOG',1),(1359,90,'Yomou','YOM',1),(1360,91,'Bafata Region','BF',1),(1361,91,'Biombo Region','BB',1),(1362,91,'Bissau Region','BS',1),(1363,91,'Bolama Region','BL',1),(1364,91,'Cacheu Region','CA',1),(1365,91,'Gabu Region','GA',1),(1366,91,'Oio Region','OI',1),(1367,91,'Quinara Region','QU',1),(1368,91,'Tombali Region','TO',1),(1369,92,'Barima-Waini','BW',1),(1370,92,'Cuyuni-Mazaruni','CM',1),(1371,92,'Demerara-Mahaica','DM',1),(1372,92,'East Berbice-Corentyne','EC',1),(1373,92,'Essequibo Islands-West Demerara','EW',1),(1374,92,'Mahaica-Berbice','MB',1),(1375,92,'Pomeroon-Supenaam','PM',1),(1376,92,'Potaro-Siparuni','PI',1),(1377,92,'Upper Demerara-Berbice','UD',1),(1378,92,'Upper Takutu-Upper Essequibo','UT',1),(1379,93,'Artibonite','AR',1),(1380,93,'Centre','CE',1),(1381,93,'Grand\'Anse','GA',1),(1382,93,'Nord','ND',1),(1383,93,'Nord-Est','NE',1),(1384,93,'Nord-Ouest','NO',1),(1385,93,'Ouest','OU',1),(1386,93,'Sud','SD',1),(1387,93,'Sud-Est','SE',1),(1388,94,'Flat Island','F',1),(1389,94,'McDonald Island','M',1),(1390,94,'Shag Island','S',1),(1391,94,'Heard Island','H',1),(1392,95,'Atlantida','AT',1),(1393,95,'Choluteca','CH',1),(1394,95,'Colon','CL',1),(1395,95,'Comayagua','CM',1),(1396,95,'Copan','CP',1),(1397,95,'Cortes','CR',1),(1398,95,'El Paraiso','PA',1),(1399,95,'Francisco Morazan','FM',1),(1400,95,'Gracias a Dios','GD',1),(1401,95,'Intibuca','IN',1),(1402,95,'Islas de la Bahia (Bay Islands)','IB',1),(1403,95,'La Paz','PZ',1),(1404,95,'Lempira','LE',1),(1405,95,'Ocotepeque','OC',1),(1406,95,'Olancho','OL',1),(1407,95,'Santa Barbara','SB',1),(1408,95,'Valle','VA',1),(1409,95,'Yoro','YO',1),(1410,96,'Central and Western Hong Kong Island','HCW',1),(1411,96,'Eastern Hong Kong Island','HEA',1),(1412,96,'Southern Hong Kong Island','HSO',1),(1413,96,'Wan Chai Hong Kong Island','HWC',1),(1414,96,'Kowloon City Kowloon','KKC',1),(1415,96,'Kwun Tong Kowloon','KKT',1),(1416,96,'Sham Shui Po Kowloon','KSS',1),(1417,96,'Wong Tai Sin Kowloon','KWT',1),(1418,96,'Yau Tsim Mong Kowloon','KYT',1),(1419,96,'Islands New Territories','NIS',1),(1420,96,'Kwai Tsing New Territories','NKT',1),(1421,96,'North New Territories','NNO',1),(1422,96,'Sai Kung New Territories','NSK',1),(1423,96,'Sha Tin New Territories','NST',1),(1424,96,'Tai Po New Territories','NTP',1),(1425,96,'Tsuen Wan New Territories','NTW',1),(1426,96,'Tuen Mun New Territories','NTM',1),(1427,96,'Yuen Long New Territories','NYL',1),(1428,97,'Bacs-Kiskun','BK',1),(1429,97,'Baranya','BA',1),(1430,97,'Bekes','BE',1),(1431,97,'Bekescsaba','BS',1),(1432,97,'Borsod-Abauj-Zemplen','BZ',1),(1433,97,'Budapest','BU',1),(1434,97,'Csongrad','CS',1),(1435,97,'Debrecen','DE',1),(1436,97,'Dunaujvaros','DU',1),(1437,97,'Eger','EG',1),(1438,97,'Fejer','FE',1),(1439,97,'Gyor','GY',1),(1440,97,'Gyor-Moson-Sopron','GM',1),(1441,97,'Hajdu-Bihar','HB',1),(1442,97,'Heves','HE',1),(1443,97,'Hodmezovasarhely','HO',1),(1444,97,'Jasz-Nagykun-Szolnok','JN',1),(1445,97,'Kaposvar','KA',1),(1446,97,'Kecskemet','KE',1),(1447,97,'Komarom-Esztergom','KO',1),(1448,97,'Miskolc','MI',1),(1449,97,'Nagykanizsa','NA',1),(1450,97,'Nograd','NO',1),(1451,97,'Nyiregyhaza','NY',1),(1452,97,'Pecs','PE',1),(1453,97,'Pest','PS',1),(1454,97,'Somogy','SO',1),(1455,97,'Sopron','SP',1),(1456,97,'Szabolcs-Szatmar-Bereg','SS',1),(1457,97,'Szeged','SZ',1),(1458,97,'Szekesfehervar','SE',1),(1459,97,'Szolnok','SL',1),(1460,97,'Szombathely','SM',1),(1461,97,'Tatabanya','TA',1),(1462,97,'Tolna','TO',1),(1463,97,'Vas','VA',1),(1464,97,'Veszprem','VE',1),(1465,97,'Zala','ZA',1),(1466,97,'Zalaegerszeg','ZZ',1),(1467,98,'Austurland','AL',1),(1468,98,'Hofuoborgarsvaeoi','HF',1),(1469,98,'Norourland eystra','NE',1),(1470,98,'Norourland vestra','NV',1),(1471,98,'Suourland','SL',1),(1472,98,'Suournes','SN',1),(1473,98,'Vestfiroir','VF',1),(1474,98,'Vesturland','VL',1),(1475,99,'Andaman and Nicobar Islands','AN',1),(1476,99,'Andhra Pradesh','AP',1),(1477,99,'Arunachal Pradesh','AR',1),(1478,99,'Assam','AS',1),(1479,99,'Bihar','BI',1),(1480,99,'Chandigarh','CH',1),(1481,99,'Dadra and Nagar Haveli','DA',1),(1482,99,'Daman and Diu','DM',1),(1483,99,'Delhi','DE',1),(1484,99,'Goa','GO',1),(1485,99,'Gujarat','GU',1),(1486,99,'Haryana','HA',1),(1487,99,'Himachal Pradesh','HP',1),(1488,99,'Jammu and Kashmir','JA',1),(1489,99,'Karnataka','KA',1),(1490,99,'Kerala','KE',1),(1491,99,'Lakshadweep Islands','LI',1),(1492,99,'Madhya Pradesh','MP',1),(1493,99,'Maharashtra','MA',1),(1494,99,'Manipur','MN',1),(1495,99,'Meghalaya','ME',1),(1496,99,'Mizoram','MI',1),(1497,99,'Nagaland','NA',1),(1498,99,'Orissa','OR',1),(1499,99,'Pondicherry','PO',1),(1500,99,'Punjab','PU',1),(1501,99,'Rajasthan','RA',1),(1502,99,'Sikkim','SI',1),(1503,99,'Tamil Nadu','TN',1),(1504,99,'Tripura','TR',1),(1505,99,'Uttar Pradesh','UP',1),(1506,99,'West Bengal','WB',1),(1507,100,'Aceh','AC',1),(1508,100,'Bali','BA',1),(1509,100,'Banten','BT',1),(1510,100,'Bengkulu','BE',1),(1511,100,'BoDeTaBek','BD',1),(1512,100,'Gorontalo','GO',1),(1513,100,'Jakarta Raya','JK',1),(1514,100,'Jambi','JA',1),(1515,100,'Jawa Barat','JB',1),(1516,100,'Jawa Tengah','JT',1),(1517,100,'Jawa Timur','JI',1),(1518,100,'Kalimantan Barat','KB',1),(1519,100,'Kalimantan Selatan','KS',1),(1520,100,'Kalimantan Tengah','KT',1),(1521,100,'Kalimantan Timur','KI',1),(1522,100,'Kepulauan Bangka Belitung','BB',1),(1523,100,'Lampung','LA',1),(1524,100,'Maluku','MA',1),(1525,100,'Maluku Utara','MU',1),(1526,100,'Nusa Tenggara Barat','NB',1),(1527,100,'Nusa Tenggara Timur','NT',1),(1528,100,'Papua','PA',1),(1529,100,'Riau','RI',1),(1530,100,'Sulawesi Selatan','SN',1),(1531,100,'Sulawesi Tengah','ST',1),(1532,100,'Sulawesi Tenggara','SG',1),(1533,100,'Sulawesi Utara','SA',1),(1534,100,'Sumatera Barat','SB',1),(1535,100,'Sumatera Selatan','SS',1),(1536,100,'Sumatera Utara','SU',1),(1537,100,'Yogyakarta','YO',1),(1538,101,'Tehran','TEH',1),(1539,101,'Qom','QOM',1),(1540,101,'Markazi','MKZ',1),(1541,101,'Qazvin','QAZ',1),(1542,101,'Gilan','GIL',1),(1543,101,'Ardabil','ARD',1),(1544,101,'Zanjan','ZAN',1),(1545,101,'East Azarbaijan','EAZ',1),(1546,101,'West Azarbaijan','WEZ',1),(1547,101,'Kurdistan','KRD',1),(1548,101,'Hamadan','HMD',1),(1549,101,'Kermanshah','KRM',1),(1550,101,'Ilam','ILM',1),(1551,101,'Lorestan','LRS',1),(1552,101,'Khuzestan','KZT',1),(1553,101,'Chahar Mahaal and Bakhtiari','CMB',1),(1554,101,'Kohkiluyeh and Buyer Ahmad','KBA',1),(1555,101,'Bushehr','BSH',1),(1556,101,'Fars','FAR',1),(1557,101,'Hormozgan','HRM',1),(1558,101,'Sistan and Baluchistan','SBL',1),(1559,101,'Kerman','KRB',1),(1560,101,'Yazd','YZD',1),(1561,101,'Esfahan','EFH',1),(1562,101,'Semnan','SMN',1),(1563,101,'Mazandaran','MZD',1),(1564,101,'Golestan','GLS',1),(1565,101,'North Khorasan','NKH',1),(1566,101,'Razavi Khorasan','RKH',1),(1567,101,'South Khorasan','SKH',1),(1568,102,'Baghdad','BD',1),(1569,102,'Salah ad Din','SD',1),(1570,102,'Diyala','DY',1),(1571,102,'Wasit','WS',1),(1572,102,'Maysan','MY',1),(1573,102,'Al Basrah','BA',1),(1574,102,'Dhi Qar','DQ',1),(1575,102,'Al Muthanna','MU',1),(1576,102,'Al Qadisyah','QA',1),(1577,102,'Babil','BB',1),(1578,102,'Al Karbala','KB',1),(1579,102,'An Najaf','NJ',1),(1580,102,'Al Anbar','AB',1),(1581,102,'Ninawa','NN',1),(1582,102,'Dahuk','DH',1),(1583,102,'Arbil','AL',1),(1584,102,'At Ta\'mim','TM',1),(1585,102,'As Sulaymaniyah','SL',1),(1586,103,'Carlow','CA',1),(1587,103,'Cavan','CV',1),(1588,103,'Clare','CL',1),(1589,103,'Cork','CO',1),(1590,103,'Donegal','DO',1),(1591,103,'Dublin','DU',1),(1592,103,'Galway','GA',1),(1593,103,'Kerry','KE',1),(1594,103,'Kildare','KI',1),(1595,103,'Kilkenny','KL',1),(1596,103,'Laois','LA',1),(1597,103,'Leitrim','LE',1),(1598,103,'Limerick','LI',1),(1599,103,'Longford','LO',1),(1600,103,'Louth','LU',1),(1601,103,'Mayo','MA',1),(1602,103,'Meath','ME',1),(1603,103,'Monaghan','MO',1),(1604,103,'Offaly','OF',1),(1605,103,'Roscommon','RO',1),(1606,103,'Sligo','SL',1),(1607,103,'Tipperary','TI',1),(1608,103,'Waterford','WA',1),(1609,103,'Westmeath','WE',1),(1610,103,'Wexford','WX',1),(1611,103,'Wicklow','WI',1),(1612,104,'Be\'er Sheva','BS',1),(1613,104,'Bika\'at Hayarden','BH',1),(1614,104,'Eilat and Arava','EA',1),(1615,104,'Galil','GA',1),(1616,104,'Haifa','HA',1),(1617,104,'Jehuda Mountains','JM',1),(1618,104,'Jerusalem','JE',1),(1619,104,'Negev','NE',1),(1620,104,'Semaria','SE',1),(1621,104,'Sharon','SH',1),(1622,104,'Tel Aviv (Gosh Dan)','TA',1),(3860,105,'Caltanissetta','CL',1),(3842,105,'Agrigento','AG',1),(3843,105,'Alessandria','AL',1),(3844,105,'Ancona','AN',1),(3845,105,'Aosta','AO',1),(3846,105,'Arezzo','AR',1),(3847,105,'Ascoli Piceno','AP',1),(3848,105,'Asti','AT',1),(3849,105,'Avellino','AV',1),(3850,105,'Bari','BA',1),(3851,105,'Belluno','BL',1),(3852,105,'Benevento','BN',1),(3853,105,'Bergamo','BG',1),(3854,105,'Biella','BI',1),(3855,105,'Bologna','BO',1),(3856,105,'Bolzano','BZ',1),(3857,105,'Brescia','BS',1),(3858,105,'Brindisi','BR',1),(3859,105,'Cagliari','CA',1),(1643,106,'Clarendon Parish','CLA',1),(1644,106,'Hanover Parish','HAN',1),(1645,106,'Kingston Parish','KIN',1),(1646,106,'Manchester Parish','MAN',1),(1647,106,'Portland Parish','POR',1),(1648,106,'Saint Andrew Parish','AND',1),(1649,106,'Saint Ann Parish','ANN',1),(1650,106,'Saint Catherine Parish','CAT',1),(1651,106,'Saint Elizabeth Parish','ELI',1),(1652,106,'Saint James Parish','JAM',1),(1653,106,'Saint Mary Parish','MAR',1),(1654,106,'Saint Thomas Parish','THO',1),(1655,106,'Trelawny Parish','TRL',1),(1656,106,'Westmoreland Parish','WML',1),(1657,107,'Aichi','AI',1),(1658,107,'Akita','AK',1),(1659,107,'Aomori','AO',1),(1660,107,'Chiba','CH',1),(1661,107,'Ehime','EH',1),(1662,107,'Fukui','FK',1),(1663,107,'Fukuoka','FU',1),(1664,107,'Fukushima','FS',1),(1665,107,'Gifu','GI',1),(1666,107,'Gumma','GU',1),(1667,107,'Hiroshima','HI',1),(1668,107,'Hokkaido','HO',1),(1669,107,'Hyogo','HY',1),(1670,107,'Ibaraki','IB',1),(1671,107,'Ishikawa','IS',1),(1672,107,'Iwate','IW',1),(1673,107,'Kagawa','KA',1),(1674,107,'Kagoshima','KG',1),(1675,107,'Kanagawa','KN',1),(1676,107,'Kochi','KO',1),(1677,107,'Kumamoto','KU',1),(1678,107,'Kyoto','KY',1),(1679,107,'Mie','MI',1),(1680,107,'Miyagi','MY',1),(1681,107,'Miyazaki','MZ',1),(1682,107,'Nagano','NA',1),(1683,107,'Nagasaki','NG',1),(1684,107,'Nara','NR',1),(1685,107,'Niigata','NI',1),(1686,107,'Oita','OI',1),(1687,107,'Okayama','OK',1),(1688,107,'Okinawa','ON',1),(1689,107,'Osaka','OS',1),(1690,107,'Saga','SA',1),(1691,107,'Saitama','SI',1),(1692,107,'Shiga','SH',1),(1693,107,'Shimane','SM',1),(1694,107,'Shizuoka','SZ',1),(1695,107,'Tochigi','TO',1),(1696,107,'Tokushima','TS',1),(1697,107,'Tokyo','TK',1),(1698,107,'Tottori','TT',1),(1699,107,'Toyama','TY',1),(1700,107,'Wakayama','WA',1),(1701,107,'Yamagata','YA',1),(1702,107,'Yamaguchi','YM',1),(1703,107,'Yamanashi','YN',1),(1704,108,'\'Amman','AM',1),(1705,108,'Ajlun','AJ',1),(1706,108,'Al \'Aqabah','AA',1),(1707,108,'Al Balqa\'','AB',1),(1708,108,'Al Karak','AK',1),(1709,108,'Al Mafraq','AL',1),(1710,108,'At Tafilah','AT',1),(1711,108,'Az Zarqa\'','AZ',1),(1712,108,'Irbid','IR',1),(1713,108,'Jarash','JA',1),(1714,108,'Ma\'an','MA',1),(1715,108,'Madaba','MD',1),(1716,109,'Алматинская область','AL',1),(1717,109,'Алматы - город республ-го значения','AC',1),(1718,109,'Акмолинская область','AM',1),(1719,109,'Актюбинская область','AQ',1),(1720,109,'Астана - город республ-го значения','AS',1),(1721,109,'Атырауская область','AT',1),(1722,109,'Западно-Казахстанская область','BA',1),(1723,109,'Байконур - город республ-го значения','BY',1),(1724,109,'Мангистауская область','MA',1),(1725,109,'Южно-Казахстанская область','ON',1),(1726,109,'Павлодарская область','PA',1),(1727,109,'Карагандинская область','QA',1),(1728,109,'Костанайская область','QO',1),(1729,109,'Кызылординская область','QY',1),(1730,109,'Восточно-Казахстанская область','SH',1),(1731,109,'Северо-Казахстанская область','SO',1),(1732,109,'Жамбылская область','ZH',1),(1733,110,'Central','CE',1),(1734,110,'Coast','CO',1),(1735,110,'Eastern','EA',1),(1736,110,'Nairobi Area','NA',1),(1737,110,'North Eastern','NE',1),(1738,110,'Nyanza','NY',1),(1739,110,'Rift Valley','RV',1),(1740,110,'Western','WE',1),(1741,111,'Abaiang','AG',1),(1742,111,'Abemama','AM',1),(1743,111,'Aranuka','AK',1),(1744,111,'Arorae','AO',1),(1745,111,'Banaba','BA',1),(1746,111,'Beru','BE',1),(1747,111,'Butaritari','bT',1),(1748,111,'Kanton','KA',1),(1749,111,'Kiritimati','KR',1),(1750,111,'Kuria','KU',1),(1751,111,'Maiana','MI',1),(1752,111,'Makin','MN',1),(1753,111,'Marakei','ME',1),(1754,111,'Nikunau','NI',1),(1755,111,'Nonouti','NO',1),(1756,111,'Onotoa','ON',1),(1757,111,'Tabiteuea','TT',1),(1758,111,'Tabuaeran','TR',1),(1759,111,'Tamana','TM',1),(1760,111,'Tarawa','TW',1),(1761,111,'Teraina','TE',1),(1762,112,'Chagang-do','CHA',1),(1763,112,'Hamgyong-bukto','HAB',1),(1764,112,'Hamgyong-namdo','HAN',1),(1765,112,'Hwanghae-bukto','HWB',1),(1766,112,'Hwanghae-namdo','HWN',1),(1767,112,'Kangwon-do','KAN',1),(1768,112,'P\'yongan-bukto','PYB',1),(1769,112,'P\'yongan-namdo','PYN',1),(1770,112,'Ryanggang-do (Yanggang-do)','YAN',1),(1771,112,'Rason Directly Governed City','NAJ',1),(1772,112,'P\'yongyang Special City','PYO',1),(1773,113,'Ch\'ungch\'ong-bukto','CO',1),(1774,113,'Ch\'ungch\'ong-namdo','CH',1),(1775,113,'Cheju-do','CD',1),(1776,113,'Cholla-bukto','CB',1),(1777,113,'Cholla-namdo','CN',1),(1778,113,'Inch\'on-gwangyoksi','IG',1),(1779,113,'Kangwon-do','KA',1),(1780,113,'Kwangju-gwangyoksi','KG',1),(1781,113,'Kyonggi-do','KD',1),(1782,113,'Kyongsang-bukto','KB',1),(1783,113,'Kyongsang-namdo','KN',1),(1784,113,'Pusan-gwangyoksi','PG',1),(1785,113,'Soul-t\'ukpyolsi','SO',1),(1786,113,'Taegu-gwangyoksi','TA',1),(1787,113,'Taejon-gwangyoksi','TG',1),(1788,114,'Al \'Asimah','AL',1),(1789,114,'Al Ahmadi','AA',1),(1790,114,'Al Farwaniyah','AF',1),(1791,114,'Al Jahra\'','AJ',1),(1792,114,'Hawalli','HA',1),(1793,115,'Bishkek','GB',1),(1794,115,'Batken','B',1),(1795,115,'Chu','C',1),(1796,115,'Jalal-Abad','J',1),(1797,115,'Naryn','N',1),(1798,115,'Osh','O',1),(1799,115,'Talas','T',1),(1800,115,'Ysyk-Kol','Y',1),(1801,116,'Vientiane','VT',1),(1802,116,'Attapu','AT',1),(1803,116,'Bokeo','BK',1),(1804,116,'Bolikhamxai','BL',1),(1805,116,'Champasak','CH',1),(1806,116,'Houaphan','HO',1),(1807,116,'Khammouan','KH',1),(1808,116,'Louang Namtha','LM',1),(1809,116,'Louangphabang','LP',1),(1810,116,'Oudomxai','OU',1),(1811,116,'Phongsali','PH',1),(1812,116,'Salavan','SL',1),(1813,116,'Savannakhet','SV',1),(1814,116,'Vientiane','VI',1),(1815,116,'Xaignabouli','XA',1),(1816,116,'Xekong','XE',1),(1817,116,'Xiangkhoang','XI',1),(1818,116,'Xaisomboun','XN',1),(1819,117,'Aizkraukles Rajons','AIZ',1),(1820,117,'Aluksnes Rajons','ALU',1),(1821,117,'Balvu Rajons','BAL',1),(1822,117,'Bauskas Rajons','BAU',1),(1823,117,'Cesu Rajons','CES',1),(1824,117,'Daugavpils Rajons','DGR',1),(1825,117,'Dobeles Rajons','DOB',1),(1826,117,'Gulbenes Rajons','GUL',1),(1827,117,'Jekabpils Rajons','JEK',1),(1828,117,'Jelgavas Rajons','JGR',1),(1829,117,'Kraslavas Rajons','KRA',1),(1830,117,'Kuldigas Rajons','KUL',1),(1831,117,'Liepajas Rajons','LPR',1),(1832,117,'Limbazu Rajons','LIM',1),(1833,117,'Ludzas Rajons','LUD',1),(1834,117,'Madonas Rajons','MAD',1),(1835,117,'Ogres Rajons','OGR',1),(1836,117,'Preilu Rajons','PRE',1),(1837,117,'Rezeknes Rajons','RZR',1),(1838,117,'Rigas Rajons','RGR',1),(1839,117,'Saldus Rajons','SAL',1),(1840,117,'Talsu Rajons','TAL',1),(1841,117,'Tukuma Rajons','TUK',1),(1842,117,'Valkas Rajons','VLK',1),(1843,117,'Valmieras Rajons','VLM',1),(1844,117,'Ventspils Rajons','VSR',1),(1845,117,'Daugavpils','DGV',1),(1846,117,'Jelgava','JGV',1),(1847,117,'Jurmala','JUR',1),(1848,117,'Liepaja','LPK',1),(1849,117,'Rezekne','RZK',1),(1850,117,'Riga','RGA',1),(1851,117,'Ventspils','VSL',1),(1852,119,'Berea','BE',1),(1853,119,'Butha-Buthe','BB',1),(1854,119,'Leribe','LE',1),(1855,119,'Mafeteng','MF',1),(1856,119,'Maseru','MS',1),(1857,119,'Mohale\'s Hoek','MH',1),(1858,119,'Mokhotlong','MK',1),(1859,119,'Qacha\'s Nek','QN',1),(1860,119,'Quthing','QT',1),(1861,119,'Thaba-Tseka','TT',1),(1862,120,'Bomi','BI',1),(1863,120,'Bong','BG',1),(1864,120,'Grand Bassa','GB',1),(1865,120,'Grand Cape Mount','CM',1),(1866,120,'Grand Gedeh','GG',1),(1867,120,'Grand Kru','GK',1),(1868,120,'Lofa','LO',1),(1869,120,'Margibi','MG',1),(1870,120,'Maryland','ML',1),(1871,120,'Montserrado','MS',1),(1872,120,'Nimba','NB',1),(1873,120,'River Cess','RC',1),(1874,120,'Sinoe','SN',1),(1875,121,'Ajdabiya','AJ',1),(1876,121,'Al \'Aziziyah','AZ',1),(1877,121,'Al Fatih','FA',1),(1878,121,'Al Jabal al Akhdar','JA',1),(1879,121,'Al Jufrah','JU',1),(1880,121,'Al Khums','KH',1),(1881,121,'Al Kufrah','KU',1),(1882,121,'An Nuqat al Khams','NK',1),(1883,121,'Ash Shati\'','AS',1),(1884,121,'Awbari','AW',1),(1885,121,'Az Zawiyah','ZA',1),(1886,121,'Banghazi','BA',1),(1887,121,'Darnah','DA',1),(1888,121,'Ghadamis','GD',1),(1889,121,'Gharyan','GY',1),(1890,121,'Misratah','MI',1),(1891,121,'Murzuq','MZ',1),(1892,121,'Sabha','SB',1),(1893,121,'Sawfajjin','SW',1),(1894,121,'Surt','SU',1),(1895,121,'Tarabulus (Tripoli)','TL',1),(1896,121,'Tarhunah','TH',1),(1897,121,'Tubruq','TU',1),(1898,121,'Yafran','YA',1),(1899,121,'Zlitan','ZL',1),(1900,122,'Vaduz','V',1),(1901,122,'Schaan','A',1),(1902,122,'Balzers','B',1),(1903,122,'Triesen','N',1),(1904,122,'Eschen','E',1),(1905,122,'Mauren','M',1),(1906,122,'Triesenberg','T',1),(1907,122,'Ruggell','R',1),(1908,122,'Gamprin','G',1),(1909,122,'Schellenberg','L',1),(1910,122,'Planken','P',1),(1911,123,'Alytus','AL',1),(1912,123,'Kaunas','KA',1),(1913,123,'Klaipeda','KL',1),(1914,123,'Marijampole','MA',1),(1915,123,'Panevezys','PA',1),(1916,123,'Siauliai','SI',1),(1917,123,'Taurage','TA',1),(1918,123,'Telsiai','TE',1),(1919,123,'Utena','UT',1),(1920,123,'Vilnius','VI',1),(1921,124,'Diekirch','DD',1),(1922,124,'Clervaux','DC',1),(1923,124,'Redange','DR',1),(1924,124,'Vianden','DV',1),(1925,124,'Wiltz','DW',1),(1926,124,'Grevenmacher','GG',1),(1927,124,'Echternach','GE',1),(1928,124,'Remich','GR',1),(1929,124,'Luxembourg','LL',1),(1930,124,'Capellen','LC',1),(1931,124,'Esch-sur-Alzette','LE',1),(1932,124,'Mersch','LM',1),(1933,125,'Our Lady Fatima Parish','OLF',1),(1934,125,'St. Anthony Parish','ANT',1),(1935,125,'St. Lazarus Parish','LAZ',1),(1936,125,'Cathedral Parish','CAT',1),(1937,125,'St. Lawrence Parish','LAW',1),(1938,127,'Antananarivo','AN',1),(1939,127,'Antsiranana','AS',1),(1940,127,'Fianarantsoa','FN',1),(1941,127,'Mahajanga','MJ',1),(1942,127,'Toamasina','TM',1),(1943,127,'Toliara','TL',1),(1944,128,'Balaka','BLK',1),(1945,128,'Blantyre','BLT',1),(1946,128,'Chikwawa','CKW',1),(1947,128,'Chiradzulu','CRD',1),(1948,128,'Chitipa','CTP',1),(1949,128,'Dedza','DDZ',1),(1950,128,'Dowa','DWA',1),(1951,128,'Karonga','KRG',1),(1952,128,'Kasungu','KSG',1),(1953,128,'Likoma','LKM',1),(1954,128,'Lilongwe','LLG',1),(1955,128,'Machinga','MCG',1),(1956,128,'Mangochi','MGC',1),(1957,128,'Mchinji','MCH',1),(1958,128,'Mulanje','MLJ',1),(1959,128,'Mwanza','MWZ',1),(1960,128,'Mzimba','MZM',1),(1961,128,'Ntcheu','NTU',1),(1962,128,'Nkhata Bay','NKB',1),(1963,128,'Nkhotakota','NKH',1),(1964,128,'Nsanje','NSJ',1),(1965,128,'Ntchisi','NTI',1),(1966,128,'Phalombe','PHL',1),(1967,128,'Rumphi','RMP',1),(1968,128,'Salima','SLM',1),(1969,128,'Thyolo','THY',1),(1970,128,'Zomba','ZBA',1),(1971,129,'Johor','JO',1),(1972,129,'Kedah','KE',1),(1973,129,'Kelantan','KL',1),(1974,129,'Labuan','LA',1),(1975,129,'Melaka','ME',1),(1976,129,'Negeri Sembilan','NS',1),(1977,129,'Pahang','PA',1),(1978,129,'Perak','PE',1),(1979,129,'Perlis','PR',1),(1980,129,'Pulau Pinang','PP',1),(1981,129,'Sabah','SA',1),(1982,129,'Sarawak','SR',1),(1983,129,'Selangor','SE',1),(1984,129,'Terengganu','TE',1),(1985,129,'Wilayah Persekutuan','WP',1),(1986,130,'Thiladhunmathi Uthuru','THU',1),(1987,130,'Thiladhunmathi Dhekunu','THD',1),(1988,130,'Miladhunmadulu Uthuru','MLU',1),(1989,130,'Miladhunmadulu Dhekunu','MLD',1),(1990,130,'Maalhosmadulu Uthuru','MAU',1),(1991,130,'Maalhosmadulu Dhekunu','MAD',1),(1992,130,'Faadhippolhu','FAA',1),(1993,130,'Male Atoll','MAA',1),(1994,130,'Ari Atoll Uthuru','AAU',1),(1995,130,'Ari Atoll Dheknu','AAD',1),(1996,130,'Felidhe Atoll','FEA',1),(1997,130,'Mulaku Atoll','MUA',1),(1998,130,'Nilandhe Atoll Uthuru','NAU',1),(1999,130,'Nilandhe Atoll Dhekunu','NAD',1),(2000,130,'Kolhumadulu','KLH',1),(2001,130,'Hadhdhunmathi','HDH',1),(2002,130,'Huvadhu Atoll Uthuru','HAU',1),(2003,130,'Huvadhu Atoll Dhekunu','HAD',1),(2004,130,'Fua Mulaku','FMU',1),(2005,130,'Addu','ADD',1),(2006,131,'Gao','GA',1),(2007,131,'Kayes','KY',1),(2008,131,'Kidal','KD',1),(2009,131,'Koulikoro','KL',1),(2010,131,'Mopti','MP',1),(2011,131,'Segou','SG',1),(2012,131,'Sikasso','SK',1),(2013,131,'Tombouctou','TB',1),(2014,131,'Bamako Capital District','CD',1),(2015,132,'Attard','ATT',1),(2016,132,'Balzan','BAL',1),(2017,132,'Birgu','BGU',1),(2018,132,'Birkirkara','BKK',1),(2019,132,'Birzebbuga','BRZ',1),(2020,132,'Bormla','BOR',1),(2021,132,'Dingli','DIN',1),(2022,132,'Fgura','FGU',1),(2023,132,'Floriana','FLO',1),(2024,132,'Gudja','GDJ',1),(2025,132,'Gzira','GZR',1),(2026,132,'Gargur','GRG',1),(2027,132,'Gaxaq','GXQ',1),(2028,132,'Hamrun','HMR',1),(2029,132,'Iklin','IKL',1),(2030,132,'Isla','ISL',1),(2031,132,'Kalkara','KLK',1),(2032,132,'Kirkop','KRK',1),(2033,132,'Lija','LIJ',1),(2034,132,'Luqa','LUQ',1),(2035,132,'Marsa','MRS',1),(2036,132,'Marsaskala','MKL',1),(2037,132,'Marsaxlokk','MXL',1),(2038,132,'Mdina','MDN',1),(2039,132,'Melliea','MEL',1),(2040,132,'Mgarr','MGR',1),(2041,132,'Mosta','MST',1),(2042,132,'Mqabba','MQA',1),(2043,132,'Msida','MSI',1),(2044,132,'Mtarfa','MTF',1),(2045,132,'Naxxar','NAX',1),(2046,132,'Paola','PAO',1),(2047,132,'Pembroke','PEM',1),(2048,132,'Pieta','PIE',1),(2049,132,'Qormi','QOR',1),(2050,132,'Qrendi','QRE',1),(2051,132,'Rabat','RAB',1),(2052,132,'Safi','SAF',1),(2053,132,'San Giljan','SGI',1),(2054,132,'Santa Lucija','SLU',1),(2055,132,'San Pawl il-Bahar','SPB',1),(2056,132,'San Gwann','SGW',1),(2057,132,'Santa Venera','SVE',1),(2058,132,'Siggiewi','SIG',1),(2059,132,'Sliema','SLM',1),(2060,132,'Swieqi','SWQ',1),(2061,132,'Ta Xbiex','TXB',1),(2062,132,'Tarxien','TRX',1),(2063,132,'Valletta','VLT',1),(2064,132,'Xgajra','XGJ',1),(2065,132,'Zabbar','ZBR',1),(2066,132,'Zebbug','ZBG',1),(2067,132,'Zejtun','ZJT',1),(2068,132,'Zurrieq','ZRQ',1),(2069,132,'Fontana','FNT',1),(2070,132,'Ghajnsielem','GHJ',1),(2071,132,'Gharb','GHR',1),(2072,132,'Ghasri','GHS',1),(2073,132,'Kercem','KRC',1),(2074,132,'Munxar','MUN',1),(2075,132,'Nadur','NAD',1),(2076,132,'Qala','QAL',1),(2077,132,'Victoria','VIC',1),(2078,132,'San Lawrenz','SLA',1),(2079,132,'Sannat','SNT',1),(2080,132,'Xagra','ZAG',1),(2081,132,'Xewkija','XEW',1),(2082,132,'Zebbug','ZEB',1),(2083,133,'Ailinginae','ALG',1),(2084,133,'Ailinglaplap','ALL',1),(2085,133,'Ailuk','ALK',1),(2086,133,'Arno','ARN',1),(2087,133,'Aur','AUR',1),(2088,133,'Bikar','BKR',1),(2089,133,'Bikini','BKN',1),(2090,133,'Bokak','BKK',1),(2091,133,'Ebon','EBN',1),(2092,133,'Enewetak','ENT',1),(2093,133,'Erikub','EKB',1),(2094,133,'Jabat','JBT',1),(2095,133,'Jaluit','JLT',1),(2096,133,'Jemo','JEM',1),(2097,133,'Kili','KIL',1),(2098,133,'Kwajalein','KWJ',1),(2099,133,'Lae','LAE',1),(2100,133,'Lib','LIB',1),(2101,133,'Likiep','LKP',1),(2102,133,'Majuro','MJR',1),(2103,133,'Maloelap','MLP',1),(2104,133,'Mejit','MJT',1),(2105,133,'Mili','MIL',1),(2106,133,'Namorik','NMK',1),(2107,133,'Namu','NAM',1),(2108,133,'Rongelap','RGL',1),(2109,133,'Rongrik','RGK',1),(2110,133,'Toke','TOK',1),(2111,133,'Ujae','UJA',1),(2112,133,'Ujelang','UJL',1),(2113,133,'Utirik','UTK',1),(2114,133,'Wotho','WTH',1),(2115,133,'Wotje','WTJ',1),(2116,135,'Adrar','AD',1),(2117,135,'Assaba','AS',1),(2118,135,'Brakna','BR',1),(2119,135,'Dakhlet Nouadhibou','DN',1),(2120,135,'Gorgol','GO',1),(2121,135,'Guidimaka','GM',1),(2122,135,'Hodh Ech Chargui','HC',1),(2123,135,'Hodh El Gharbi','HG',1),(2124,135,'Inchiri','IN',1),(2125,135,'Tagant','TA',1),(2126,135,'Tiris Zemmour','TZ',1),(2127,135,'Trarza','TR',1),(2128,135,'Nouakchott','NO',1),(2129,136,'Beau Bassin-Rose Hill','BR',1),(2130,136,'Curepipe','CU',1),(2131,136,'Port Louis','PU',1),(2132,136,'Quatre Bornes','QB',1),(2133,136,'Vacoas-Phoenix','VP',1),(2134,136,'Agalega Islands','AG',1),(2135,136,'Cargados Carajos Shoals (Saint Brandon Islands)','CC',1),(2136,136,'Rodrigues','RO',1),(2137,136,'Black River','BL',1),(2138,136,'Flacq','FL',1),(2139,136,'Grand Port','GP',1),(2140,136,'Moka','MO',1),(2141,136,'Pamplemousses','PA',1),(2142,136,'Plaines Wilhems','PW',1),(2143,136,'Port Louis','PL',1),(2144,136,'Riviere du Rempart','RR',1),(2145,136,'Savanne','SA',1),(2146,138,'Baja California Norte','BN',1),(2147,138,'Baja California Sur','BS',1),(2148,138,'Campeche','CA',1),(2149,138,'Chiapas','CI',1),(2150,138,'Chihuahua','CH',1),(2151,138,'Coahuila de Zaragoza','CZ',1),(2152,138,'Colima','CL',1),(2153,138,'Distrito Federal','DF',1),(2154,138,'Durango','DU',1),(2155,138,'Guanajuato','GA',1),(2156,138,'Guerrero','GE',1),(2157,138,'Hidalgo','HI',1),(2158,138,'Jalisco','JA',1),(2159,138,'Mexico','ME',1),(2160,138,'Michoacan de Ocampo','MI',1),(2161,138,'Morelos','MO',1),(2162,138,'Nayarit','NA',1),(2163,138,'Nuevo Leon','NL',1),(2164,138,'Oaxaca','OA',1),(2165,138,'Puebla','PU',1),(2166,138,'Queretaro de Arteaga','QA',1),(2167,138,'Quintana Roo','QR',1),(2168,138,'San Luis Potosi','SA',1),(2169,138,'Sinaloa','SI',1),(2170,138,'Sonora','SO',1),(2171,138,'Tabasco','TB',1),(2172,138,'Tamaulipas','TM',1),(2173,138,'Tlaxcala','TL',1),(2174,138,'Veracruz-Llave','VE',1),(2175,138,'Yucatan','YU',1),(2176,138,'Zacatecas','ZA',1),(2177,139,'Chuuk','C',1),(2178,139,'Kosrae','K',1),(2179,139,'Pohnpei','P',1),(2180,139,'Yap','Y',1),(2181,140,'Gagauzia','GA',1),(2182,140,'Chisinau','CU',1),(2183,140,'Balti','BA',1),(2184,140,'Cahul','CA',1),(2185,140,'Edinet','ED',1),(2186,140,'Lapusna','LA',1),(2187,140,'Orhei','OR',1),(2188,140,'Soroca','SO',1),(2189,140,'Tighina','TI',1),(2190,140,'Ungheni','UN',1),(2191,140,'St‚nga Nistrului','SN',1),(2192,141,'Fontvieille','FV',1),(2193,141,'La Condamine','LC',1),(2194,141,'Monaco-Ville','MV',1),(2195,141,'Monte-Carlo','MC',1),(2196,142,'Ulanbaatar','1',1),(2197,142,'Orhon','035',1),(2198,142,'Darhan uul','037',1),(2199,142,'Hentiy','039',1),(2200,142,'Hovsgol','041',1),(2201,142,'Hovd','043',1),(2202,142,'Uvs','046',1),(2203,142,'Tov','047',1),(2204,142,'Selenge','049',1),(2205,142,'Suhbaatar','051',1),(2206,142,'Omnogovi','053',1),(2207,142,'Ovorhangay','055',1),(2208,142,'Dzavhan','057',1),(2209,142,'DundgovL','059',1),(2210,142,'Dornod','061',1),(2211,142,'Dornogov','063',1),(2212,142,'Govi-Sumber','064',1),(2213,142,'Govi-Altay','065',1),(2214,142,'Bulgan','067',1),(2215,142,'Bayanhongor','069',1),(2216,142,'Bayan-Olgiy','071',1),(2217,142,'Arhangay','073',1),(2218,143,'Saint Anthony','A',1),(2219,143,'Saint Georges','G',1),(2220,143,'Saint Peter','P',1),(2221,144,'Agadir','AGD',1),(2222,144,'Al Hoceima','HOC',1),(2223,144,'Azilal','AZI',1),(2224,144,'Beni Mellal','BME',1),(2225,144,'Ben Slimane','BSL',1),(2226,144,'Boulemane','BLM',1),(2227,144,'Casablanca','CBL',1),(2228,144,'Chaouen','CHA',1),(2229,144,'El Jadida','EJA',1),(2230,144,'El Kelaa des Sraghna','EKS',1),(2231,144,'Er Rachidia','ERA',1),(2232,144,'Essaouira','ESS',1),(2233,144,'Fes','FES',1),(2234,144,'Figuig','FIG',1),(2235,144,'Guelmim','GLM',1),(2236,144,'Ifrane','IFR',1),(2237,144,'Kenitra','KEN',1),(2238,144,'Khemisset','KHM',1),(2239,144,'Khenifra','KHN',1),(2240,144,'Khouribga','KHO',1),(2241,144,'Laayoune','LYN',1),(2242,144,'Larache','LAR',1),(2243,144,'Marrakech','MRK',1),(2244,144,'Meknes','MKN',1),(2245,144,'Nador','NAD',1),(2246,144,'Ouarzazate','ORZ',1),(2247,144,'Oujda','OUJ',1),(2248,144,'Rabat-Sale','RSA',1),(2249,144,'Safi','SAF',1),(2250,144,'Settat','SET',1),(2251,144,'Sidi Kacem','SKA',1),(2252,144,'Tangier','TGR',1),(2253,144,'Tan-Tan','TAN',1),(2254,144,'Taounate','TAO',1),(2255,144,'Taroudannt','TRD',1),(2256,144,'Tata','TAT',1),(2257,144,'Taza','TAZ',1),(2258,144,'Tetouan','TET',1),(2259,144,'Tiznit','TIZ',1),(2260,144,'Ad Dakhla','ADK',1),(2261,144,'Boujdour','BJD',1),(2262,144,'Es Smara','ESM',1),(2263,145,'Cabo Delgado','CD',1),(2264,145,'Gaza','GZ',1),(2265,145,'Inhambane','IN',1),(2266,145,'Manica','MN',1),(2267,145,'Maputo (city)','MC',1),(2268,145,'Maputo','MP',1),(2269,145,'Nampula','NA',1),(2270,145,'Niassa','NI',1),(2271,145,'Sofala','SO',1),(2272,145,'Tete','TE',1),(2273,145,'Zambezia','ZA',1),(2274,146,'Ayeyarwady','AY',1),(2275,146,'Bago','BG',1),(2276,146,'Magway','MG',1),(2277,146,'Mandalay','MD',1),(2278,146,'Sagaing','SG',1),(2279,146,'Tanintharyi','TN',1),(2280,146,'Yangon','YG',1),(2281,146,'Chin State','CH',1),(2282,146,'Kachin State','KC',1),(2283,146,'Kayah State','KH',1),(2284,146,'Kayin State','KN',1),(2285,146,'Mon State','MN',1),(2286,146,'Rakhine State','RK',1),(2287,146,'Shan State','SH',1),(2288,147,'Caprivi','CA',1),(2289,147,'Erongo','ER',1),(2290,147,'Hardap','HA',1),(2291,147,'Karas','KR',1),(2292,147,'Kavango','KV',1),(2293,147,'Khomas','KH',1),(2294,147,'Kunene','KU',1),(2295,147,'Ohangwena','OW',1),(2296,147,'Omaheke','OK',1),(2297,147,'Omusati','OT',1),(2298,147,'Oshana','ON',1),(2299,147,'Oshikoto','OO',1),(2300,147,'Otjozondjupa','OJ',1),(2301,148,'Aiwo','AO',1),(2302,148,'Anabar','AA',1),(2303,148,'Anetan','AT',1),(2304,148,'Anibare','AI',1),(2305,148,'Baiti','BA',1),(2306,148,'Boe','BO',1),(2307,148,'Buada','BU',1),(2308,148,'Denigomodu','DE',1),(2309,148,'Ewa','EW',1),(2310,148,'Ijuw','IJ',1),(2311,148,'Meneng','ME',1),(2312,148,'Nibok','NI',1),(2313,148,'Uaboe','UA',1),(2314,148,'Yaren','YA',1),(2315,149,'Bagmati','BA',1),(2316,149,'Bheri','BH',1),(2317,149,'Dhawalagiri','DH',1),(2318,149,'Gandaki','GA',1),(2319,149,'Janakpur','JA',1),(2320,149,'Karnali','KA',1),(2321,149,'Kosi','KO',1),(2322,149,'Lumbini','LU',1),(2323,149,'Mahakali','MA',1),(2324,149,'Mechi','ME',1),(2325,149,'Narayani','NA',1),(2326,149,'Rapti','RA',1),(2327,149,'Sagarmatha','SA',1),(2328,149,'Seti','SE',1),(2329,150,'Drenthe','DR',1),(2330,150,'Flevoland','FL',1),(2331,150,'Friesland','FR',1),(2332,150,'Gelderland','GE',1),(2333,150,'Groningen','GR',1),(2334,150,'Limburg','LI',1),(2335,150,'Noord Brabant','NB',1),(2336,150,'Noord Holland','NH',1),(2337,150,'Overijssel','OV',1),(2338,150,'Utrecht','UT',1),(2339,150,'Zeeland','ZE',1),(2340,150,'Zuid Holland','ZH',1),(2341,152,'Iles Loyaute','L',1),(2342,152,'Nord','N',1),(2343,152,'Sud','S',1),(2344,153,'Auckland','AUK',1),(2345,153,'Bay of Plenty','BOP',1),(2346,153,'Canterbury','CAN',1),(2347,153,'Coromandel','COR',1),(2348,153,'Gisborne','GIS',1),(2349,153,'Fiordland','FIO',1),(2350,153,'Hawke\'s Bay','HKB',1),(2351,153,'Marlborough','MBH',1),(2352,153,'Manawatu-Wanganui','MWT',1),(2353,153,'Mt Cook-Mackenzie','MCM',1),(2354,153,'Nelson','NSN',1),(2355,153,'Northland','NTL',1),(2356,153,'Otago','OTA',1),(2357,153,'Southland','STL',1),(2358,153,'Taranaki','TKI',1),(2359,153,'Wellington','WGN',1),(2360,153,'Waikato','WKO',1),(2361,153,'Wairprarapa','WAI',1),(2362,153,'West Coast','WTC',1),(2363,154,'Atlantico Norte','AN',1),(2364,154,'Atlantico Sur','AS',1),(2365,154,'Boaco','BO',1),(2366,154,'Carazo','CA',1),(2367,154,'Chinandega','CI',1),(2368,154,'Chontales','CO',1),(2369,154,'Esteli','ES',1),(2370,154,'Granada','GR',1),(2371,154,'Jinotega','JI',1),(2372,154,'Leon','LE',1),(2373,154,'Madriz','MD',1),(2374,154,'Managua','MN',1),(2375,154,'Masaya','MS',1),(2376,154,'Matagalpa','MT',1),(2377,154,'Nuevo Segovia','NS',1),(2378,154,'Rio San Juan','RS',1),(2379,154,'Rivas','RI',1),(2380,155,'Agadez','AG',1),(2381,155,'Diffa','DF',1),(2382,155,'Dosso','DS',1),(2383,155,'Maradi','MA',1),(2384,155,'Niamey','NM',1),(2385,155,'Tahoua','TH',1),(2386,155,'Tillaberi','TL',1),(2387,155,'Zinder','ZD',1),(2388,156,'Abia','AB',1),(2389,156,'Abuja Federal Capital Territory','CT',1),(2390,156,'Adamawa','AD',1),(2391,156,'Akwa Ibom','AK',1),(2392,156,'Anambra','AN',1),(2393,156,'Bauchi','BC',1),(2394,156,'Bayelsa','BY',1),(2395,156,'Benue','BN',1),(2396,156,'Borno','BO',1),(2397,156,'Cross River','CR',1),(2398,156,'Delta','DE',1),(2399,156,'Ebonyi','EB',1),(2400,156,'Edo','ED',1),(2401,156,'Ekiti','EK',1),(2402,156,'Enugu','EN',1),(2403,156,'Gombe','GO',1),(2404,156,'Imo','IM',1),(2405,156,'Jigawa','JI',1),(2406,156,'Kaduna','KD',1),(2407,156,'Kano','KN',1),(2408,156,'Katsina','KT',1),(2409,156,'Kebbi','KE',1),(2410,156,'Kogi','KO',1),(2411,156,'Kwara','KW',1),(2412,156,'Lagos','LA',1),(2413,156,'Nassarawa','NA',1),(2414,156,'Niger','NI',1),(2415,156,'Ogun','OG',1),(2416,156,'Ondo','ONG',1),(2417,156,'Osun','OS',1),(2418,156,'Oyo','OY',1),(2419,156,'Plateau','PL',1),(2420,156,'Rivers','RI',1),(2421,156,'Sokoto','SO',1),(2422,156,'Taraba','TA',1),(2423,156,'Yobe','YO',1),(2424,156,'Zamfara','ZA',1),(2425,159,'Northern Islands','N',1),(2426,159,'Rota','R',1),(2427,159,'Saipan','S',1),(2428,159,'Tinian','T',1),(2429,160,'Akershus','AK',1),(2430,160,'Aust-Agder','AA',1),(2431,160,'Buskerud','BU',1),(2432,160,'Finnmark','FM',1),(2433,160,'Hedmark','HM',1),(2434,160,'Hordaland','HL',1),(2435,160,'More og Romdal','MR',1),(2436,160,'Nord-Trondelag','NT',1),(2437,160,'Nordland','NL',1),(2438,160,'Ostfold','OF',1),(2439,160,'Oppland','OP',1),(2440,160,'Oslo','OL',1),(2441,160,'Rogaland','RL',1),(2442,160,'Sor-Trondelag','ST',1),(2443,160,'Sogn og Fjordane','SJ',1),(2444,160,'Svalbard','SV',1),(2445,160,'Telemark','TM',1),(2446,160,'Troms','TR',1),(2447,160,'Vest-Agder','VA',1),(2448,160,'Vestfold','VF',1),(2449,161,'Ad Dakhiliyah','DA',1),(2450,161,'Al Batinah','BA',1),(2451,161,'Al Wusta','WU',1),(2452,161,'Ash Sharqiyah','SH',1),(2453,161,'Az Zahirah','ZA',1),(2454,161,'Masqat','MA',1),(2455,161,'Musandam','MU',1),(2456,161,'Zufar','ZU',1),(2457,162,'Balochistan','B',1),(2458,162,'Federally Administered Tribal Areas','T',1),(2459,162,'Islamabad Capital Territory','I',1),(2460,162,'North-West Frontier','N',1),(2461,162,'Punjab','P',1),(2462,162,'Sindh','S',1),(2463,163,'Aimeliik','AM',1),(2464,163,'Airai','AR',1),(2465,163,'Angaur','AN',1),(2466,163,'Hatohobei','HA',1),(2467,163,'Kayangel','KA',1),(2468,163,'Koror','KO',1),(2469,163,'Melekeok','ME',1),(2470,163,'Ngaraard','NA',1),(2471,163,'Ngarchelong','NG',1),(2472,163,'Ngardmau','ND',1),(2473,163,'Ngatpang','NT',1),(2474,163,'Ngchesar','NC',1),(2475,163,'Ngeremlengui','NR',1),(2476,163,'Ngiwal','NW',1),(2477,163,'Peleliu','PE',1),(2478,163,'Sonsorol','SO',1),(2479,164,'Bocas del Toro','BT',1),(2480,164,'Chiriqui','CH',1),(2481,164,'Cocle','CC',1),(2482,164,'Colon','CL',1),(2483,164,'Darien','DA',1),(2484,164,'Herrera','HE',1),(2485,164,'Los Santos','LS',1),(2486,164,'Panama','PA',1),(2487,164,'San Blas','SB',1),(2488,164,'Veraguas','VG',1),(2489,165,'Bougainville','BV',1),(2490,165,'Central','CE',1),(2491,165,'Chimbu','CH',1),(2492,165,'Eastern Highlands','EH',1),(2493,165,'East New Britain','EB',1),(2494,165,'East Sepik','ES',1),(2495,165,'Enga','EN',1),(2496,165,'Gulf','GU',1),(2497,165,'Madang','MD',1),(2498,165,'Manus','MN',1),(2499,165,'Milne Bay','MB',1),(2500,165,'Morobe','MR',1),(2501,165,'National Capital','NC',1),(2502,165,'New Ireland','NI',1),(2503,165,'Northern','NO',1),(2504,165,'Sandaun','SA',1),(2505,165,'Southern Highlands','SH',1),(2506,165,'Western','WE',1),(2507,165,'Western Highlands','WH',1),(2508,165,'West New Britain','WB',1),(2509,166,'Alto Paraguay','AG',1),(2510,166,'Alto Parana','AN',1),(2511,166,'Amambay','AM',1),(2512,166,'Asuncion','AS',1),(2513,166,'Boqueron','BO',1),(2514,166,'Caaguazu','CG',1),(2515,166,'Caazapa','CZ',1),(2516,166,'Canindeyu','CN',1),(2517,166,'Central','CE',1),(2518,166,'Concepcion','CC',1),(2519,166,'Cordillera','CD',1),(2520,166,'Guaira','GU',1),(2521,166,'Itapua','IT',1),(2522,166,'Misiones','MI',1),(2523,166,'Neembucu','NE',1),(2524,166,'Paraguari','PA',1),(2525,166,'Presidente Hayes','PH',1),(2526,166,'San Pedro','SP',1),(2527,167,'Amazonas','AM',1),(2528,167,'Ancash','AN',1),(2529,167,'Apurimac','AP',1),(2530,167,'Arequipa','AR',1),(2531,167,'Ayacucho','AY',1),(2532,167,'Cajamarca','CJ',1),(2533,167,'Callao','CL',1),(2534,167,'Cusco','CU',1),(2535,167,'Huancavelica','HV',1),(2536,167,'Huanuco','HO',1),(2537,167,'Ica','IC',1),(2538,167,'Junin','JU',1),(2539,167,'La Libertad','LD',1),(2540,167,'Lambayeque','LY',1),(2541,167,'Lima','LI',1),(2542,167,'Loreto','LO',1),(2543,167,'Madre de Dios','MD',1),(2544,167,'Moquegua','MO',1),(2545,167,'Pasco','PA',1),(2546,167,'Piura','PI',1),(2547,167,'Puno','PU',1),(2548,167,'San Martin','SM',1),(2549,167,'Tacna','TA',1),(2550,167,'Tumbes','TU',1),(2551,167,'Ucayali','UC',1),(2552,168,'Abra','ABR',1),(2553,168,'Agusan del Norte','ANO',1),(2554,168,'Agusan del Sur','ASU',1),(2555,168,'Aklan','AKL',1),(2556,168,'Albay','ALB',1),(2557,168,'Antique','ANT',1),(2558,168,'Apayao','APY',1),(2559,168,'Aurora','AUR',1),(2560,168,'Basilan','BAS',1),(2561,168,'Bataan','BTA',1),(2562,168,'Batanes','BTE',1),(2563,168,'Batangas','BTG',1),(2564,168,'Biliran','BLR',1),(2565,168,'Benguet','BEN',1),(2566,168,'Bohol','BOL',1),(2567,168,'Bukidnon','BUK',1),(2568,168,'Bulacan','BUL',1),(2569,168,'Cagayan','CAG',1),(2570,168,'Camarines Norte','CNO',1),(2571,168,'Camarines Sur','CSU',1),(2572,168,'Camiguin','CAM',1),(2573,168,'Capiz','CAP',1),(2574,168,'Catanduanes','CAT',1),(2575,168,'Cavite','CAV',1),(2576,168,'Cebu','CEB',1),(2577,168,'Compostela','CMP',1),(2578,168,'Davao del Norte','DNO',1),(2579,168,'Davao del Sur','DSU',1),(2580,168,'Davao Oriental','DOR',1),(2581,168,'Eastern Samar','ESA',1),(2582,168,'Guimaras','GUI',1),(2583,168,'Ifugao','IFU',1),(2584,168,'Ilocos Norte','INO',1),(2585,168,'Ilocos Sur','ISU',1),(2586,168,'Iloilo','ILO',1),(2587,168,'Isabela','ISA',1),(2588,168,'Kalinga','KAL',1),(2589,168,'Laguna','LAG',1),(2590,168,'Lanao del Norte','LNO',1),(2591,168,'Lanao del Sur','LSU',1),(2592,168,'La Union','UNI',1),(2593,168,'Leyte','LEY',1),(2594,168,'Maguindanao','MAG',1),(2595,168,'Marinduque','MRN',1),(2596,168,'Masbate','MSB',1),(2597,168,'Mindoro Occidental','MIC',1),(2598,168,'Mindoro Oriental','MIR',1),(2599,168,'Misamis Occidental','MSC',1),(2600,168,'Misamis Oriental','MOR',1),(2601,168,'Mountain','MOP',1),(2602,168,'Negros Occidental','NOC',1),(2603,168,'Negros Oriental','NOR',1),(2604,168,'North Cotabato','NCT',1),(2605,168,'Northern Samar','NSM',1),(2606,168,'Nueva Ecija','NEC',1),(2607,168,'Nueva Vizcaya','NVZ',1),(2608,168,'Palawan','PLW',1),(2609,168,'Pampanga','PMP',1),(2610,168,'Pangasinan','PNG',1),(2611,168,'Quezon','QZN',1),(2612,168,'Quirino','QRN',1),(2613,168,'Rizal','RIZ',1),(2614,168,'Romblon','ROM',1),(2615,168,'Samar','SMR',1),(2616,168,'Sarangani','SRG',1),(2617,168,'Siquijor','SQJ',1),(2618,168,'Sorsogon','SRS',1),(2619,168,'South Cotabato','SCO',1),(2620,168,'Southern Leyte','SLE',1),(2621,168,'Sultan Kudarat','SKU',1),(2622,168,'Sulu','SLU',1),(2623,168,'Surigao del Norte','SNO',1),(2624,168,'Surigao del Sur','SSU',1),(2625,168,'Tarlac','TAR',1),(2626,168,'Tawi-Tawi','TAW',1),(2627,168,'Zambales','ZBL',1),(2628,168,'Zamboanga del Norte','ZNO',1),(2629,168,'Zamboanga del Sur','ZSU',1),(2630,168,'Zamboanga Sibugay','ZSI',1),(2631,170,'Dolnoslaskie','DO',1),(2632,170,'Kujawsko-Pomorskie','KP',1),(2633,170,'Lodzkie','LO',1),(2634,170,'Lubelskie','LL',1),(2635,170,'Lubuskie','LU',1),(2636,170,'Malopolskie','ML',1),(2637,170,'Mazowieckie','MZ',1),(2638,170,'Opolskie','OP',1),(2639,170,'Podkarpackie','PP',1),(2640,170,'Podlaskie','PL',1),(2641,170,'Pomorskie','PM',1),(2642,170,'Slaskie','SL',1),(2643,170,'Swietokrzyskie','SW',1),(2644,170,'Warminsko-Mazurskie','WM',1),(2645,170,'Wielkopolskie','WP',1),(2646,170,'Zachodniopomorskie','ZA',1),(2647,198,'Saint Pierre','P',1),(2648,198,'Miquelon','M',1),(2649,171,'A&ccedil;ores','AC',1),(2650,171,'Aveiro','AV',1),(2651,171,'Beja','BE',1),(2652,171,'Braga','BR',1),(2653,171,'Bragan&ccedil;a','BA',1),(2654,171,'Castelo Branco','CB',1),(2655,171,'Coimbra','CO',1),(2656,171,'&Eacute;vora','EV',1),(2657,171,'Faro','FA',1),(2658,171,'Guarda','GU',1),(2659,171,'Leiria','LE',1),(2660,171,'Lisboa','LI',1),(2661,171,'Madeira','ME',1),(2662,171,'Portalegre','PO',1),(2663,171,'Porto','PR',1),(2664,171,'Santar&eacute;m','SA',1),(2665,171,'Set&uacute;bal','SE',1),(2666,171,'Viana do Castelo','VC',1),(2667,171,'Vila Real','VR',1),(2668,171,'Viseu','VI',1),(2669,173,'Ad Dawhah','DW',1),(2670,173,'Al Ghuwayriyah','GW',1),(2671,173,'Al Jumayliyah','JM',1),(2672,173,'Al Khawr','KR',1),(2673,173,'Al Wakrah','WK',1),(2674,173,'Ar Rayyan','RN',1),(2675,173,'Jarayan al Batinah','JB',1),(2676,173,'Madinat ash Shamal','MS',1),(2677,173,'Umm Sa\'id','UD',1),(2678,173,'Umm Salal','UL',1),(2679,175,'Alba','AB',1),(2680,175,'Arad','AR',1),(2681,175,'Arges','AG',1),(2682,175,'Bacau','BC',1),(2683,175,'Bihor','BH',1),(2684,175,'Bistrita-Nasaud','BN',1),(2685,175,'Botosani','BT',1),(2686,175,'Brasov','BV',1),(2687,175,'Braila','BR',1),(2688,175,'Bucuresti','B',1),(2689,175,'Buzau','BZ',1),(2690,175,'Caras-Severin','CS',1),(2691,175,'Calarasi','CL',1),(2692,175,'Cluj','CJ',1),(2693,175,'Constanta','CT',1),(2694,175,'Covasna','CV',1),(2695,175,'Dimbovita','DB',1),(2696,175,'Dolj','DJ',1),(2697,175,'Galati','GL',1),(2698,175,'Giurgiu','GR',1),(2699,175,'Gorj','GJ',1),(2700,175,'Harghita','HR',1),(2701,175,'Hunedoara','HD',1),(2702,175,'Ialomita','IL',1),(2703,175,'Iasi','IS',1),(2704,175,'Ilfov','IF',1),(2705,175,'Maramures','MM',1),(2706,175,'Mehedinti','MH',1),(2707,175,'Mures','MS',1),(2708,175,'Neamt','NT',1),(2709,175,'Olt','OT',1),(2710,175,'Prahova','PH',1),(2711,175,'Satu-Mare','SM',1),(2712,175,'Salaj','SJ',1),(2713,175,'Sibiu','SB',1),(2714,175,'Suceava','SV',1),(2715,175,'Teleorman','TR',1),(2716,175,'Timis','TM',1),(2717,175,'Tulcea','TL',1),(2718,175,'Vaslui','VS',1),(2719,175,'Valcea','VL',1),(2720,175,'Vrancea','VN',1),(2721,176,'Республика Хакасия','KK',1),(2722,176,'Московская область','MOS',1),(2723,176,'Чукотский АО','CHU',1),(2724,176,'Архангельская область','ARK',1),(2725,176,'Астраханская область','AST',1),(2726,176,'Алтайский край','ALT',1),(2727,176,'Белгородская область','BEL',1),(2728,176,'Еврейская АО','YEV',1),(2729,176,'Амурская область','AMU',1),(2730,176,'Брянская область','BRY',1),(2731,176,'Чувашская Республика','CU',1),(2732,176,'Челябинская область','CHE',1),(2733,176,'Карачаево-Черкеcсия','KC',1),(2734,176,'Забайкальский край','ZAB',1),(2735,176,'Ленинградская область','LEN',1),(2736,176,'Республика Калмыкия','KL',1),(2737,176,'Сахалинская область','SAK',1),(2738,176,'Республика Алтай','AL',1),(2739,176,'Чеченская Республика','CE',1),(2740,176,'Иркутская область','IRK',1),(2741,176,'Ивановская область','IVA',1),(2742,176,'Удмуртская Республика','UD',1),(2743,176,'Калининградская область','KGD',1),(2744,176,'Калужская область','KLU',1),(2746,176,'Республика Татарстан','TA',1),(2747,176,'Кемеровская область','KEM',1),(2748,176,'Хабаровский край','KHA',1),(2749,176,'Ханты-Мансийский АО - Югра','KHM',1),(2750,176,'Костромская область','KOS',1),(2751,176,'Краснодарский край','KDA',1),(2752,176,'Красноярский край','KYA',1),(2754,176,'Курганская область','KGN',1),(2755,176,'Курская область','KRS',1),(2756,176,'Республика Тыва','TY',1),(2757,176,'Липецкая область','LIP',1),(2758,176,'Магаданская область','MAG',1),(2759,176,'Республика Дагестан','DA',1),(2760,176,'Республика Адыгея','AD',1),(2761,176,'Москва','MOW',1),(2762,176,'Мурманская область','MUR',1),(2763,176,'Республика Кабардино-Балкария','KB',1),(2764,176,'Ненецкий АО','NEN',1),(2765,176,'Республика Ингушетия','IN',1),(2766,176,'Нижегородская область','NIZ',1),(2767,176,'Новгородская область','NGR',1),(2768,176,'Новосибирская область','NVS',1),(2769,176,'Омская область','OMS',1),(2770,176,'Орловская область','ORL',1),(2771,176,'Оренбургская область','ORE',1),(2773,176,'Пензенская область','PNZ',1),(2774,176,'Пермский край','PER',1),(2775,176,'Камчатский край','KAM',1),(2776,176,'Республика Карелия','KR',1),(2777,176,'Псковская область','PSK',1),(2778,176,'Ростовская область','ROS',1),(2779,176,'Рязанская область','RYA',1),(2780,176,'Ямало-Ненецкий АО','YAN',1),(2781,176,'Самарская область','SAM',1),(2782,176,'Республика Мордовия','MO',1),(2783,176,'Саратовская область','SAR',1),(2784,176,'Смоленская область','SMO',1),(2785,176,'Санкт-Петербург','SPE',1),(2786,176,'Ставропольский край','STA',1),(2787,176,'Республика Коми','KO',1),(2788,176,'Тамбовская область','TAM',1),(2789,176,'Томская область','TOM',1),(2790,176,'Тульская область','TUL',1),(2792,176,'Тверская область','TVE',1),(2793,176,'Тюменская область','TYU',1),(2794,176,'Республика Башкортостан','BA',1),(2795,176,'Ульяновская область','ULY',1),(2796,176,'Республика Бурятия','BU',1),(2798,176,'Республика Северная Осетия','SE',1),(2799,176,'Владимирская область','VLA',1),(2800,176,'Приморский край','PRI',1),(2801,176,'Волгоградская область','VGG',1),(2802,176,'Вологодская область','VLG',1),(2803,176,'Воронежская область','VOR',1),(2804,176,'Кировская область','KIR',1),(2805,176,'Республика Саха','SA',1),(2806,176,'Ярославская область','YAR',1),(2807,176,'Свердловская область','SVE',1),(2808,176,'Республика Марий Эл','ME',1),(2809,177,'Butare','BU',1),(2810,177,'Byumba','BY',1),(2811,177,'Cyangugu','CY',1),(2812,177,'Gikongoro','GK',1),(2813,177,'Gisenyi','GS',1),(2814,177,'Gitarama','GT',1),(2815,177,'Kibungo','KG',1),(2816,177,'Kibuye','KY',1),(2817,177,'Kigali Rurale','KR',1),(2818,177,'Kigali-ville','KV',1),(2819,177,'Ruhengeri','RU',1),(2820,177,'Umutara','UM',1),(2821,178,'Christ Church Nichola Town','CCN',1),(2822,178,'Saint Anne Sandy Point','SAS',1),(2823,178,'Saint George Basseterre','SGB',1),(2824,178,'Saint George Gingerland','SGG',1),(2825,178,'Saint James Windward','SJW',1),(2826,178,'Saint John Capesterre','SJC',1),(2827,178,'Saint John Figtree','SJF',1),(2828,178,'Saint Mary Cayon','SMC',1),(2829,178,'Saint Paul Capesterre','CAP',1),(2830,178,'Saint Paul Charlestown','CHA',1),(2831,178,'Saint Peter Basseterre','SPB',1),(2832,178,'Saint Thomas Lowland','STL',1),(2833,178,'Saint Thomas Middle Island','STM',1),(2834,178,'Trinity Palmetto Point','TPP',1),(2835,179,'Anse-la-Raye','AR',1),(2836,179,'Castries','CA',1),(2837,179,'Choiseul','CH',1),(2838,179,'Dauphin','DA',1),(2839,179,'Dennery','DE',1),(2840,179,'Gros-Islet','GI',1),(2841,179,'Laborie','LA',1),(2842,179,'Micoud','MI',1),(2843,179,'Praslin','PR',1),(2844,179,'Soufriere','SO',1),(2845,179,'Vieux-Fort','VF',1),(2846,180,'Charlotte','C',1),(2847,180,'Grenadines','R',1),(2848,180,'Saint Andrew','A',1),(2849,180,'Saint David','D',1),(2850,180,'Saint George','G',1),(2851,180,'Saint Patrick','P',1),(2852,181,'A\'ana','AN',1),(2853,181,'Aiga-i-le-Tai','AI',1),(2854,181,'Atua','AT',1),(2855,181,'Fa\'asaleleaga','FA',1),(2856,181,'Gaga\'emauga','GE',1),(2857,181,'Gagaifomauga','GF',1),(2858,181,'Palauli','PA',1),(2859,181,'Satupa\'itea','SA',1),(2860,181,'Tuamasaga','TU',1),(2861,181,'Va\'a-o-Fonoti','VF',1),(2862,181,'Vaisigano','VS',1),(2863,182,'Acquaviva','AC',1),(2864,182,'Borgo Maggiore','BM',1),(2865,182,'Chiesanuova','CH',1),(2866,182,'Domagnano','DO',1),(2867,182,'Faetano','FA',1),(2868,182,'Fiorentino','FI',1),(2869,182,'Montegiardino','MO',1),(2870,182,'Citta di San Marino','SM',1),(2871,182,'Serravalle','SE',1),(2872,183,'Sao Tome','S',1),(2873,183,'Principe','P',1),(2874,184,'Al Bahah','BH',1),(2875,184,'Al Hudud ash Shamaliyah','HS',1),(2876,184,'Al Jawf','JF',1),(2877,184,'Al Madinah','MD',1),(2878,184,'Al Qasim','QS',1),(2879,184,'Ar Riyad','RD',1),(2880,184,'Ash Sharqiyah (Eastern)','AQ',1),(2881,184,'\'Asir','AS',1),(2882,184,'Ha\'il','HL',1),(2883,184,'Jizan','JZ',1),(2884,184,'Makkah','ML',1),(2885,184,'Najran','NR',1),(2886,184,'Tabuk','TB',1),(2887,185,'Dakar','DA',1),(2888,185,'Diourbel','DI',1),(2889,185,'Fatick','FA',1),(2890,185,'Kaolack','KA',1),(2891,185,'Kolda','KO',1),(2892,185,'Louga','LO',1),(2893,185,'Matam','MA',1),(2894,185,'Saint-Louis','SL',1),(2895,185,'Tambacounda','TA',1),(2896,185,'Thies','TH',1),(2897,185,'Ziguinchor','ZI',1),(2898,186,'Anse aux Pins','AP',1),(2899,186,'Anse Boileau','AB',1),(2900,186,'Anse Etoile','AE',1),(2901,186,'Anse Louis','AL',1),(2902,186,'Anse Royale','AR',1),(2903,186,'Baie Lazare','BL',1),(2904,186,'Baie Sainte Anne','BS',1),(2905,186,'Beau Vallon','BV',1),(2906,186,'Bel Air','BA',1),(2907,186,'Bel Ombre','BO',1),(2908,186,'Cascade','CA',1),(2909,186,'Glacis','GL',1),(2910,186,'Grand\' Anse (on Mahe)','GM',1),(2911,186,'Grand\' Anse (on Praslin)','GP',1),(2912,186,'La Digue','DG',1),(2913,186,'La Riviere Anglaise','RA',1),(2914,186,'Mont Buxton','MB',1),(2915,186,'Mont Fleuri','MF',1),(2916,186,'Plaisance','PL',1),(2917,186,'Pointe La Rue','PR',1),(2918,186,'Port Glaud','PG',1),(2919,186,'Saint Louis','SL',1),(2920,186,'Takamaka','TA',1),(2921,187,'Eastern','E',1),(2922,187,'Northern','N',1),(2923,187,'Southern','S',1),(2924,187,'Western','W',1),(2925,189,'Banskobystrický','BA',1),(2926,189,'Bratislavský','BR',1),(2927,189,'Košický','KO',1),(2928,189,'Nitriansky','NI',1),(2929,189,'Prešovský','PR',1),(2930,189,'Trenčiansky','TC',1),(2931,189,'Trnavský','TV',1),(2932,189,'Žilinský','ZI',1),(2933,191,'Central','CE',1),(2934,191,'Choiseul','CH',1),(2935,191,'Guadalcanal','GC',1),(2936,191,'Honiara','HO',1),(2937,191,'Isabel','IS',1),(2938,191,'Makira','MK',1),(2939,191,'Malaita','ML',1),(2940,191,'Rennell and Bellona','RB',1),(2941,191,'Temotu','TM',1),(2942,191,'Western','WE',1),(2943,192,'Awdal','AW',1),(2944,192,'Bakool','BK',1),(2945,192,'Banaadir','BN',1),(2946,192,'Bari','BR',1),(2947,192,'Bay','BY',1),(2948,192,'Galguduud','GA',1),(2949,192,'Gedo','GE',1),(2950,192,'Hiiraan','HI',1),(2951,192,'Jubbada Dhexe','JD',1),(2952,192,'Jubbada Hoose','JH',1),(2953,192,'Mudug','MU',1),(2954,192,'Nugaal','NU',1),(2955,192,'Sanaag','SA',1),(2956,192,'Shabeellaha Dhexe','SD',1),(2957,192,'Shabeellaha Hoose','SH',1),(2958,192,'Sool','SL',1),(2959,192,'Togdheer','TO',1),(2960,192,'Woqooyi Galbeed','WG',1),(2961,193,'Eastern Cape','EC',1),(2962,193,'Free State','FS',1),(2963,193,'Gauteng','GT',1),(2964,193,'KwaZulu-Natal','KN',1),(2965,193,'Limpopo','LP',1),(2966,193,'Mpumalanga','MP',1),(2967,193,'North West','NW',1),(2968,193,'Northern Cape','NC',1),(2969,193,'Western Cape','WC',1),(2970,195,'La Coru&ntilde;a','CA',1),(2971,195,'&Aacute;lava','AL',1),(2972,195,'Albacete','AB',1),(2973,195,'Alicante','AC',1),(2974,195,'Almeria','AM',1),(2975,195,'Asturias','AS',1),(2976,195,'&Aacute;vila','AV',1),(2977,195,'Badajoz','BJ',1),(2978,195,'Baleares','IB',1),(2979,195,'Barcelona','BA',1),(2980,195,'Burgos','BU',1),(2981,195,'C&aacute;ceres','CC',1),(2982,195,'C&aacute;diz','CZ',1),(2983,195,'Cantabria','CT',1),(2984,195,'Castell&oacute;n','CL',1),(2985,195,'Ceuta','CE',1),(2986,195,'Ciudad Real','CR',1),(2987,195,'C&oacute;rdoba','CD',1),(2988,195,'Cuenca','CU',1),(2989,195,'Girona','GI',1),(2990,195,'Granada','GD',1),(2991,195,'Guadalajara','GJ',1),(2992,195,'Guip&uacute;zcoa','GP',1),(2993,195,'Huelva','HL',1),(2994,195,'Huesca','HS',1),(2995,195,'Ja&eacute;n','JN',1),(2996,195,'La Rioja','RJ',1),(2997,195,'Las Palmas','PM',1),(2998,195,'Leon','LE',1),(2999,195,'Lleida','LL',1),(3000,195,'Lugo','LG',1),(3001,195,'Madrid','MD',1),(3002,195,'Malaga','MA',1),(3003,195,'Melilla','ML',1),(3004,195,'Murcia','MU',1),(3005,195,'Navarra','NV',1),(3006,195,'Ourense','OU',1),(3007,195,'Palencia','PL',1),(3008,195,'Pontevedra','PO',1),(3009,195,'Salamanca','SL',1),(3010,195,'Santa Cruz de Tenerife','SC',1),(3011,195,'Segovia','SG',1),(3012,195,'Sevilla','SV',1),(3013,195,'Soria','SO',1),(3014,195,'Tarragona','TA',1),(3015,195,'Teruel','TE',1),(3016,195,'Toledo','TO',1),(3017,195,'Valencia','VC',1),(3018,195,'Valladolid','VD',1),(3019,195,'Vizcaya','VZ',1),(3020,195,'Zamora','ZM',1),(3021,195,'Zaragoza','ZR',1),(3022,196,'Central','CE',1),(3023,196,'Eastern','EA',1),(3024,196,'North Central','NC',1),(3025,196,'Northern','NO',1),(3026,196,'North Western','NW',1),(3027,196,'Sabaragamuwa','SA',1),(3028,196,'Southern','SO',1),(3029,196,'Uva','UV',1),(3030,196,'Western','WE',1),(3031,197,'Ascension','A',1),(3032,197,'Saint Helena','S',1),(3033,197,'Tristan da Cunha','T',1),(3034,199,'A\'ali an Nil','ANL',1),(3035,199,'Al Bahr al Ahmar','BAM',1),(3036,199,'Al Buhayrat','BRT',1),(3037,199,'Al Jazirah','JZR',1),(3038,199,'Al Khartum','KRT',1),(3039,199,'Al Qadarif','QDR',1),(3040,199,'Al Wahdah','WDH',1),(3041,199,'An Nil al Abyad','ANB',1),(3042,199,'An Nil al Azraq','ANZ',1),(3043,199,'Ash Shamaliyah','ASH',1),(3044,199,'Bahr al Jabal','BJA',1),(3045,199,'Gharb al Istiwa\'iyah','GIS',1),(3046,199,'Gharb Bahr al Ghazal','GBG',1),(3047,199,'Gharb Darfur','GDA',1),(3048,199,'Gharb Kurdufan','GKU',1),(3049,199,'Janub Darfur','JDA',1),(3050,199,'Janub Kurdufan','JKU',1),(3051,199,'Junqali','JQL',1),(3052,199,'Kassala','KSL',1),(3053,199,'Nahr an Nil','NNL',1),(3054,199,'Shamal Bahr al Ghazal','SBG',1),(3055,199,'Shamal Darfur','SDA',1),(3056,199,'Shamal Kurdufan','SKU',1),(3057,199,'Sharq al Istiwa\'iyah','SIS',1),(3058,199,'Sinnar','SNR',1),(3059,199,'Warab','WRB',1),(3060,200,'Brokopondo','BR',1),(3061,200,'Commewijne','CM',1),(3062,200,'Coronie','CR',1),(3063,200,'Marowijne','MA',1),(3064,200,'Nickerie','NI',1),(3065,200,'Para','PA',1),(3066,200,'Paramaribo','PM',1),(3067,200,'Saramacca','SA',1),(3068,200,'Sipaliwini','SI',1),(3069,200,'Wanica','WA',1),(3070,202,'Hhohho','H',1),(3071,202,'Lubombo','L',1),(3072,202,'Manzini','M',1),(3073,202,'Shishelweni','S',1),(3074,203,'Blekinge','K',1),(3075,203,'Dalarna','W',1),(3076,203,'G&auml;vleborg','X',1),(3077,203,'Gotland','I',1),(3078,203,'Halland','N',1),(3079,203,'J&auml;mtland','Z',1),(3080,203,'J&ouml;nk&ouml;ping','F',1),(3081,203,'Kalmar','H',1),(3082,203,'Kronoberg','G',1),(3083,203,'Norrbotten','BD',1),(3084,203,'&Ouml;rebro','T',1),(3085,203,'&Ouml;sterg&ouml;tland','E',1),(3086,203,'Sk&aring;ne','M',1),(3087,203,'S&ouml;dermanland','D',1),(3088,203,'Stockholm','AB',1),(3089,203,'Uppsala','C',1),(3090,203,'V&auml;rmland','S',1),(3091,203,'V&auml;sterbotten','AC',1),(3092,203,'V&auml;sternorrland','Y',1),(3093,203,'V&auml;stmanland','U',1),(3094,203,'V&auml;stra G&ouml;taland','O',1),(3095,204,'Aargau','AG',1),(3096,204,'Appenzell Ausserrhoden','AR',1),(3097,204,'Appenzell Innerrhoden','AI',1),(3098,204,'Basel-Stadt','BS',1),(3099,204,'Basel-Landschaft','BL',1),(3100,204,'Bern','BE',1),(3101,204,'Fribourg','FR',1),(3102,204,'Gen&egrave;ve','GE',1),(3103,204,'Glarus','GL',1),(3104,204,'Graub&uuml;nden','GR',1),(3105,204,'Jura','JU',1),(3106,204,'Luzern','LU',1),(3107,204,'Neuch&acirc;tel','NE',1),(3108,204,'Nidwald','NW',1),(3109,204,'Obwald','OW',1),(3110,204,'St. Gallen','SG',1),(3111,204,'Schaffhausen','SH',1),(3112,204,'Schwyz','SZ',1),(3113,204,'Solothurn','SO',1),(3114,204,'Thurgau','TG',1),(3115,204,'Ticino','TI',1),(3116,204,'Uri','UR',1),(3117,204,'Valais','VS',1),(3118,204,'Vaud','VD',1),(3119,204,'Zug','ZG',1),(3120,204,'Z&uuml;rich','ZH',1),(3121,205,'Al Hasakah','HA',1),(3122,205,'Al Ladhiqiyah','LA',1),(3123,205,'Al Qunaytirah','QU',1),(3124,205,'Ar Raqqah','RQ',1),(3125,205,'As Suwayda','SU',1),(3126,205,'Dara','DA',1),(3127,205,'Dayr az Zawr','DZ',1),(3128,205,'Dimashq','DI',1),(3129,205,'Halab','HL',1),(3130,205,'Hamah','HM',1),(3131,205,'Hims','HI',1),(3132,205,'Idlib','ID',1),(3133,205,'Rif Dimashq','RD',1),(3134,205,'Tartus','TA',1),(3135,206,'Chang-hua','CH',1),(3136,206,'Chia-i','CI',1),(3137,206,'Hsin-chu','HS',1),(3138,206,'Hua-lien','HL',1),(3139,206,'I-lan','IL',1),(3140,206,'Kao-hsiung county','KH',1),(3141,206,'Kin-men','KM',1),(3142,206,'Lien-chiang','LC',1),(3143,206,'Miao-li','ML',1),(3144,206,'Nan-t\'ou','NT',1),(3145,206,'P\'eng-hu','PH',1),(3146,206,'P\'ing-tung','PT',1),(3147,206,'T\'ai-chung','TG',1),(3148,206,'T\'ai-nan','TA',1),(3149,206,'T\'ai-pei county','TP',1),(3150,206,'T\'ai-tung','TT',1),(3151,206,'T\'ao-yuan','TY',1),(3152,206,'Yun-lin','YL',1),(3153,206,'Chia-i city','CC',1),(3154,206,'Chi-lung','CL',1),(3155,206,'Hsin-chu','HC',1),(3156,206,'T\'ai-chung','TH',1),(3157,206,'T\'ai-nan','TN',1),(3158,206,'Kao-hsiung city','KC',1),(3159,206,'T\'ai-pei city','TC',1),(3160,207,'Gorno-Badakhstan','GB',1),(3161,207,'Khatlon','KT',1),(3162,207,'Sughd','SU',1),(3163,208,'Arusha','AR',1),(3164,208,'Dar es Salaam','DS',1),(3165,208,'Dodoma','DO',1),(3166,208,'Iringa','IR',1),(3167,208,'Kagera','KA',1),(3168,208,'Kigoma','KI',1),(3169,208,'Kilimanjaro','KJ',1),(3170,208,'Lindi','LN',1),(3171,208,'Manyara','MY',1),(3172,208,'Mara','MR',1),(3173,208,'Mbeya','MB',1),(3174,208,'Morogoro','MO',1),(3175,208,'Mtwara','MT',1),(3176,208,'Mwanza','MW',1),(3177,208,'Pemba North','PN',1),(3178,208,'Pemba South','PS',1),(3179,208,'Pwani','PW',1),(3180,208,'Rukwa','RK',1),(3181,208,'Ruvuma','RV',1),(3182,208,'Shinyanga','SH',1),(3183,208,'Singida','SI',1),(3184,208,'Tabora','TB',1),(3185,208,'Tanga','TN',1),(3186,208,'Zanzibar Central/South','ZC',1),(3187,208,'Zanzibar North','ZN',1),(3188,208,'Zanzibar Urban/West','ZU',1),(3189,209,'Amnat Charoen','Amnat Charoen',1),(3190,209,'Ang Thong','Ang Thong',1),(3191,209,'Ayutthaya','Ayutthaya',1),(3192,209,'Bangkok','Bangkok',1),(3193,209,'Buriram','Buriram',1),(3194,209,'Chachoengsao','Chachoengsao',1),(3195,209,'Chai Nat','Chai Nat',1),(3196,209,'Chaiyaphum','Chaiyaphum',1),(3197,209,'Chanthaburi','Chanthaburi',1),(3198,209,'Chiang Mai','Chiang Mai',1),(3199,209,'Chiang Rai','Chiang Rai',1),(3200,209,'Chon Buri','Chon Buri',1),(3201,209,'Chumphon','Chumphon',1),(3202,209,'Kalasin','Kalasin',1),(3203,209,'Kamphaeng Phet','Kamphaeng Phet',1),(3204,209,'Kanchanaburi','Kanchanaburi',1),(3205,209,'Khon Kaen','Khon Kaen',1),(3206,209,'Krabi','Krabi',1),(3207,209,'Lampang','Lampang',1),(3208,209,'Lamphun','Lamphun',1),(3209,209,'Loei','Loei',1),(3210,209,'Lop Buri','Lop Buri',1),(3211,209,'Mae Hong Son','Mae Hong Son',1),(3212,209,'Maha Sarakham','Maha Sarakham',1),(3213,209,'Mukdahan','Mukdahan',1),(3214,209,'Nakhon Nayok','Nakhon Nayok',1),(3215,209,'Nakhon Pathom','Nakhon Pathom',1),(3216,209,'Nakhon Phanom','Nakhon Phanom',1),(3217,209,'Nakhon Ratchasima','Nakhon Ratchasima',1),(3218,209,'Nakhon Sawan','Nakhon Sawan',1),(3219,209,'Nakhon Si Thammarat','Nakhon Si Thammarat',1),(3220,209,'Nan','Nan',1),(3221,209,'Narathiwat','Narathiwat',1),(3222,209,'Nong Bua Lamphu','Nong Bua Lamphu',1),(3223,209,'Nong Khai','Nong Khai',1),(3224,209,'Nonthaburi','Nonthaburi',1),(3225,209,'Pathum Thani','Pathum Thani',1),(3226,209,'Pattani','Pattani',1),(3227,209,'Phangnga','Phangnga',1),(3228,209,'Phatthalung','Phatthalung',1),(3229,209,'Phayao','Phayao',1),(3230,209,'Phetchabun','Phetchabun',1),(3231,209,'Phetchaburi','Phetchaburi',1),(3232,209,'Phichit','Phichit',1),(3233,209,'Phitsanulok','Phitsanulok',1),(3234,209,'Phrae','Phrae',1),(3235,209,'Phuket','Phuket',1),(3236,209,'Prachin Buri','Prachin Buri',1),(3237,209,'Prachuap Khiri Khan','Prachuap Khiri Khan',1),(3238,209,'Ranong','Ranong',1),(3239,209,'Ratchaburi','Ratchaburi',1),(3240,209,'Rayong','Rayong',1),(3241,209,'Roi Et','Roi Et',1),(3242,209,'Sa Kaeo','Sa Kaeo',1),(3243,209,'Sakon Nakhon','Sakon Nakhon',1),(3244,209,'Samut Prakan','Samut Prakan',1),(3245,209,'Samut Sakhon','Samut Sakhon',1),(3246,209,'Samut Songkhram','Samut Songkhram',1),(3247,209,'Sara Buri','Sara Buri',1),(3248,209,'Satun','Satun',1),(3249,209,'Sing Buri','Sing Buri',1),(3250,209,'Sisaket','Sisaket',1),(3251,209,'Songkhla','Songkhla',1),(3252,209,'Sukhothai','Sukhothai',1),(3253,209,'Suphan Buri','Suphan Buri',1),(3254,209,'Surat Thani','Surat Thani',1),(3255,209,'Surin','Surin',1),(3256,209,'Tak','Tak',1),(3257,209,'Trang','Trang',1),(3258,209,'Trat','Trat',1),(3259,209,'Ubon Ratchathani','Ubon Ratchathani',1),(3260,209,'Udon Thani','Udon Thani',1),(3261,209,'Uthai Thani','Uthai Thani',1),(3262,209,'Uttaradit','Uttaradit',1),(3263,209,'Yala','Yala',1),(3264,209,'Yasothon','Yasothon',1),(3265,210,'Kara','K',1),(3266,210,'Plateaux','P',1),(3267,210,'Savanes','S',1),(3268,210,'Centrale','C',1),(3269,210,'Maritime','M',1),(3270,211,'Atafu','A',1),(3271,211,'Fakaofo','F',1),(3272,211,'Nukunonu','N',1),(3273,212,'Ha\'apai','H',1),(3274,212,'Tongatapu','T',1),(3275,212,'Vava\'u','V',1),(3276,213,'Couva/Tabaquite/Talparo','CT',1),(3277,213,'Diego Martin','DM',1),(3278,213,'Mayaro/Rio Claro','MR',1),(3279,213,'Penal/Debe','PD',1),(3280,213,'Princes Town','PT',1),(3281,213,'Sangre Grande','SG',1),(3282,213,'San Juan/Laventille','SL',1),(3283,213,'Siparia','SI',1),(3284,213,'Tunapuna/Piarco','TP',1),(3285,213,'Port of Spain','PS',1),(3286,213,'San Fernando','SF',1),(3287,213,'Arima','AR',1),(3288,213,'Point Fortin','PF',1),(3289,213,'Chaguanas','CH',1),(3290,213,'Tobago','TO',1),(3291,214,'Ariana','AR',1),(3292,214,'Beja','BJ',1),(3293,214,'Ben Arous','BA',1),(3294,214,'Bizerte','BI',1),(3295,214,'Gabes','GB',1),(3296,214,'Gafsa','GF',1),(3297,214,'Jendouba','JE',1),(3298,214,'Kairouan','KR',1),(3299,214,'Kasserine','KS',1),(3300,214,'Kebili','KB',1),(3301,214,'Kef','KF',1),(3302,214,'Mahdia','MH',1),(3303,214,'Manouba','MN',1),(3304,214,'Medenine','ME',1),(3305,214,'Monastir','MO',1),(3306,214,'Nabeul','NA',1),(3307,214,'Sfax','SF',1),(3308,214,'Sidi','SD',1),(3309,214,'Siliana','SL',1),(3310,214,'Sousse','SO',1),(3311,214,'Tataouine','TA',1),(3312,214,'Tozeur','TO',1),(3313,214,'Tunis','TU',1),(3314,214,'Zaghouan','ZA',1),(3315,215,'Adana','ADA',1),(3316,215,'Adıyaman','ADI',1),(3317,215,'Afyonkarahisar','AFY',1),(3318,215,'Ağrı','AGR',1),(3319,215,'Aksaray','AKS',1),(3320,215,'Amasya','AMA',1),(3321,215,'Ankara','ANK',1),(3322,215,'Antalya','ANT',1),(3323,215,'Ardahan','ARD',1),(3324,215,'Artvin','ART',1),(3325,215,'Aydın','AYI',1),(3326,215,'Balıkesir','BAL',1),(3327,215,'Bartın','BAR',1),(3328,215,'Batman','BAT',1),(3329,215,'Bayburt','BAY',1),(3330,215,'Bilecik','BIL',1),(3331,215,'Bingöl','BIN',1),(3332,215,'Bitlis','BIT',1),(3333,215,'Bolu','BOL',1),(3334,215,'Burdur','BRD',1),(3335,215,'Bursa','BRS',1),(3336,215,'Çanakkale','CKL',1),(3337,215,'Çankırı','CKR',1),(3338,215,'Çorum','COR',1),(3339,215,'Denizli','DEN',1),(3340,215,'Diyarbakir','DIY',1),(3341,215,'Düzce','DUZ',1),(3342,215,'Edirne','EDI',1),(3343,215,'Elazig','ELA',1),(3344,215,'Erzincan','EZC',1),(3345,215,'Erzurum','EZR',1),(3346,215,'Eskişehir','ESK',1),(3347,215,'Gaziantep','GAZ',1),(3348,215,'Giresun','GIR',1),(3349,215,'Gümüşhane','GMS',1),(3350,215,'Hakkari','HKR',1),(3351,215,'Hatay','HTY',1),(3352,215,'Iğdır','IGD',1),(3353,215,'Isparta','ISP',1),(3354,215,'İstanbul','IST',1),(3355,215,'İzmir','IZM',1),(3356,215,'Kahramanmaraş','KAH',1),(3357,215,'Karabük','KRB',1),(3358,215,'Karaman','KRM',1),(3359,215,'Kars','KRS',1),(3360,215,'Kastamonu','KAS',1),(3361,215,'Kayseri','KAY',1),(3362,215,'Kilis','KLS',1),(3363,215,'Kirikkale','KRK',1),(3364,215,'Kirklareli','KLR',1),(3365,215,'Kirsehir','KRH',1),(3366,215,'Kocaeli','KOC',1),(3367,215,'Konya','KON',1),(3368,215,'Kütahya','KUT',1),(3369,215,'Malatya','MAL',1),(3370,215,'Manisa','MAN',1),(3371,215,'Mardin','MAR',1),(3372,215,'Mersin','MER',1),(3373,215,'Muğla','MUG',1),(3374,215,'Muş','MUS',1),(3375,215,'Nevşehir','NEV',1),(3376,215,'Niğde','NIG',1),(3377,215,'Ordu','ORD',1),(3378,215,'Osmaniye','OSM',1),(3379,215,'Rize','RIZ',1),(3380,215,'Sakarya','SAK',1),(3381,215,'Samsun','SAM',1),(3382,215,'Şanlıurfa','SAN',1),(3383,215,'Siirt','SII',1),(3384,215,'Sinop','SIN',1),(3385,215,'Şırnak','SIR',1),(3386,215,'Sivas','SIV',1),(3387,215,'Tekirdağ','TEL',1),(3388,215,'Tokat','TOK',1),(3389,215,'Trabzon','TRA',1),(3390,215,'Tunceli','TUN',1),(3391,215,'Uşak','USK',1),(3392,215,'Van','VAN',1),(3393,215,'Yalova','YAL',1),(3394,215,'Yozgat','YOZ',1),(3395,215,'Zonguldak','ZON',1),(3396,216,'Ahal Welayaty','A',1),(3397,216,'Balkan Welayaty','B',1),(3398,216,'Dashhowuz Welayaty','D',1),(3399,216,'Lebap Welayaty','L',1),(3400,216,'Mary Welayaty','M',1),(3401,217,'Ambergris Cays','AC',1),(3402,217,'Dellis Cay','DC',1),(3403,217,'French Cay','FC',1),(3404,217,'Little Water Cay','LW',1),(3405,217,'Parrot Cay','RC',1),(3406,217,'Pine Cay','PN',1),(3407,217,'Salt Cay','SL',1),(3408,217,'Grand Turk','GT',1),(3409,217,'South Caicos','SC',1),(3410,217,'East Caicos','EC',1),(3411,217,'Middle Caicos','MC',1),(3412,217,'North Caicos','NC',1),(3413,217,'Providenciales','PR',1),(3414,217,'West Caicos','WC',1),(3415,218,'Nanumanga','NMG',1),(3416,218,'Niulakita','NLK',1),(3417,218,'Niutao','NTO',1),(3418,218,'Funafuti','FUN',1),(3419,218,'Nanumea','NME',1),(3420,218,'Nui','NUI',1),(3421,218,'Nukufetau','NFT',1),(3422,218,'Nukulaelae','NLL',1),(3423,218,'Vaitupu','VAI',1),(3424,219,'Kalangala','KAL',1),(3425,219,'Kampala','KMP',1),(3426,219,'Kayunga','KAY',1),(3427,219,'Kiboga','KIB',1),(3428,219,'Luwero','LUW',1),(3429,219,'Masaka','MAS',1),(3430,219,'Mpigi','MPI',1),(3431,219,'Mubende','MUB',1),(3432,219,'Mukono','MUK',1),(3433,219,'Nakasongola','NKS',1),(3434,219,'Rakai','RAK',1),(3435,219,'Sembabule','SEM',1),(3436,219,'Wakiso','WAK',1),(3437,219,'Bugiri','BUG',1),(3438,219,'Busia','BUS',1),(3439,219,'Iganga','IGA',1),(3440,219,'Jinja','JIN',1),(3441,219,'Kaberamaido','KAB',1),(3442,219,'Kamuli','KML',1),(3443,219,'Kapchorwa','KPC',1),(3444,219,'Katakwi','KTK',1),(3445,219,'Kumi','KUM',1),(3446,219,'Mayuge','MAY',1),(3447,219,'Mbale','MBA',1),(3448,219,'Pallisa','PAL',1),(3449,219,'Sironko','SIR',1),(3450,219,'Soroti','SOR',1),(3451,219,'Tororo','TOR',1),(3452,219,'Adjumani','ADJ',1),(3453,219,'Apac','APC',1),(3454,219,'Arua','ARU',1),(3455,219,'Gulu','GUL',1),(3456,219,'Kitgum','KIT',1),(3457,219,'Kotido','KOT',1),(3458,219,'Lira','LIR',1),(3459,219,'Moroto','MRT',1),(3460,219,'Moyo','MOY',1),(3461,219,'Nakapiripirit','NAK',1),(3462,219,'Nebbi','NEB',1),(3463,219,'Pader','PAD',1),(3464,219,'Yumbe','YUM',1),(3465,219,'Bundibugyo','BUN',1),(3466,219,'Bushenyi','BSH',1),(3467,219,'Hoima','HOI',1),(3468,219,'Kabale','KBL',1),(3469,219,'Kabarole','KAR',1),(3470,219,'Kamwenge','KAM',1),(3471,219,'Kanungu','KAN',1),(3472,219,'Kasese','KAS',1),(3473,219,'Kibaale','KBA',1),(3474,219,'Kisoro','KIS',1),(3475,219,'Kyenjojo','KYE',1),(3476,219,'Masindi','MSN',1),(3477,219,'Mbarara','MBR',1),(3478,219,'Ntungamo','NTU',1),(3479,219,'Rukungiri','RUK',1),(3480,220,'Черкассы','CK',1),(3481,220,'Чернигов','CH',1),(3482,220,'Черновцы','CV',1),(3483,220,'Крым','CR',1),(3484,220,'Днепропетровск','DN',1),(3485,220,'Донецк','DO',1),(3486,220,'Ивано-Франковск','IV',1),(3487,220,'Харьков','KH',1),(3488,220,'Хмельницкий','KM',1),(3489,220,'Кировоград','KR',1),(3490,220,'Киевская область','KV',1),(3491,220,'Киев','KY',1),(3492,220,'Луганск','LU',1),(3493,220,'Львов','LV',1),(3494,220,'Николаев','MY',1),(3495,220,'Одесса','OD',1),(3496,220,'Полтава','PO',1),(3497,220,'Ровно','RI',1),(3498,220,'Севастополь','SE',1),(3499,220,'Сумы','SU',1),(3500,220,'Тернополь','TE',1),(3501,220,'Винница','VI',1),(3502,220,'Луцк','VO',1),(3503,220,'Ужгород','ZK',1),(3504,220,'Запорожье','ZA',1),(3505,220,'Житомир','ZH',1),(3506,221,'Abu Zaby','AZ',1),(3507,221,'\'Ajman','AJ',1),(3508,221,'Al Fujayrah','FU',1),(3509,221,'Ash Shariqah','SH',1),(3510,221,'Dubayy','DU',1),(3511,221,'R\'as al Khaymah','RK',1),(3512,221,'Umm al Qaywayn','UQ',1),(3513,222,'Aberdeen','ABN',1),(3514,222,'Aberdeenshire','ABNS',1),(3515,222,'Anglesey','ANG',1),(3516,222,'Angus','AGS',1),(3517,222,'Argyll and Bute','ARY',1),(3518,222,'Bedfordshire','BEDS',1),(3519,222,'Berkshire','BERKS',1),(3520,222,'Blaenau Gwent','BLA',1),(3521,222,'Bridgend','BRI',1),(3522,222,'Bristol','BSTL',1),(3523,222,'Buckinghamshire','BUCKS',1),(3524,222,'Caerphilly','CAE',1),(3525,222,'Cambridgeshire','CAMBS',1),(3526,222,'Cardiff','CDF',1),(3527,222,'Carmarthenshire','CARM',1),(3528,222,'Ceredigion','CDGN',1),(3529,222,'Cheshire','CHES',1),(3530,222,'Clackmannanshire','CLACK',1),(3531,222,'Conwy','CON',1),(3532,222,'Cornwall','CORN',1),(3533,222,'Denbighshire','DNBG',1),(3534,222,'Derbyshire','DERBY',1),(3535,222,'Devon','DVN',1),(3536,222,'Dorset','DOR',1),(3537,222,'Dumfries and Galloway','DGL',1),(3538,222,'Dundee','DUND',1),(3539,222,'Durham','DHM',1),(3540,222,'East Ayrshire','ARYE',1),(3541,222,'East Dunbartonshire','DUNBE',1),(3542,222,'East Lothian','LOTE',1),(3543,222,'East Renfrewshire','RENE',1),(3544,222,'East Riding of Yorkshire','ERYS',1),(3545,222,'East Sussex','SXE',1),(3546,222,'Edinburgh','EDIN',1),(3547,222,'Essex','ESX',1),(3548,222,'Falkirk','FALK',1),(3549,222,'Fife','FFE',1),(3550,222,'Flintshire','FLINT',1),(3551,222,'Glasgow','GLAS',1),(3552,222,'Gloucestershire','GLOS',1),(3553,222,'Greater London','LDN',1),(3554,222,'Greater Manchester','MCH',1),(3555,222,'Gwynedd','GDD',1),(3556,222,'Hampshire','HANTS',1),(3557,222,'Herefordshire','HWR',1),(3558,222,'Hertfordshire','HERTS',1),(3559,222,'Highlands','HLD',1),(3560,222,'Inverclyde','IVER',1),(3561,222,'Isle of Wight','IOW',1),(3562,222,'Kent','KNT',1),(3563,222,'Lancashire','LANCS',1),(3564,222,'Leicestershire','LEICS',1),(3565,222,'Lincolnshire','LINCS',1),(3566,222,'Merseyside','MSY',1),(3567,222,'Merthyr Tydfil','MERT',1),(3568,222,'Midlothian','MLOT',1),(3569,222,'Monmouthshire','MMOUTH',1),(3570,222,'Moray','MORAY',1),(3571,222,'Neath Port Talbot','NPRTAL',1),(3572,222,'Newport','NEWPT',1),(3573,222,'Norfolk','NOR',1),(3574,222,'North Ayrshire','ARYN',1),(3575,222,'North Lanarkshire','LANN',1),(3576,222,'North Yorkshire','YSN',1),(3577,222,'Northamptonshire','NHM',1),(3578,222,'Northumberland','NLD',1),(3579,222,'Nottinghamshire','NOT',1),(3580,222,'Orkney Islands','ORK',1),(3581,222,'Oxfordshire','OFE',1),(3582,222,'Pembrokeshire','PEM',1),(3583,222,'Perth and Kinross','PERTH',1),(3584,222,'Powys','PWS',1),(3585,222,'Renfrewshire','REN',1),(3586,222,'Rhondda Cynon Taff','RHON',1),(3587,222,'Rutland','RUT',1),(3588,222,'Scottish Borders','BOR',1),(3589,222,'Shetland Islands','SHET',1),(3590,222,'Shropshire','SPE',1),(3591,222,'Somerset','SOM',1),(3592,222,'South Ayrshire','ARYS',1),(3593,222,'South Lanarkshire','LANS',1),(3594,222,'South Yorkshire','YSS',1),(3595,222,'Staffordshire','SFD',1),(3596,222,'Stirling','STIR',1),(3597,222,'Suffolk','SFK',1),(3598,222,'Surrey','SRY',1),(3599,222,'Swansea','SWAN',1),(3600,222,'Torfaen','TORF',1),(3601,222,'Tyne and Wear','TWR',1),(3602,222,'Vale of Glamorgan','VGLAM',1),(3603,222,'Warwickshire','WARKS',1),(3604,222,'West Dunbartonshire','WDUN',1),(3605,222,'West Lothian','WLOT',1),(3606,222,'West Midlands','WMD',1),(3607,222,'West Sussex','SXW',1),(3608,222,'West Yorkshire','YSW',1),(3609,222,'Western Isles','WIL',1),(3610,222,'Wiltshire','WLT',1),(3611,222,'Worcestershire','WORCS',1),(3612,222,'Wrexham','WRX',1),(3613,223,'Alabama','AL',1),(3614,223,'Alaska','AK',1),(3615,223,'American Samoa','AS',1),(3616,223,'Arizona','AZ',1),(3617,223,'Arkansas','AR',1),(3618,223,'Armed Forces Africa','AF',1),(3619,223,'Armed Forces Americas','AA',1),(3620,223,'Armed Forces Canada','AC',1),(3621,223,'Armed Forces Europe','AE',1),(3622,223,'Armed Forces Middle East','AM',1),(3623,223,'Armed Forces Pacific','AP',1),(3624,223,'California','CA',1),(3625,223,'Colorado','CO',1),(3626,223,'Connecticut','CT',1),(3627,223,'Delaware','DE',1),(3628,223,'District of Columbia','DC',1),(3629,223,'Federated States Of Micronesia','FM',1),(3630,223,'Florida','FL',1),(3631,223,'Georgia','GA',1),(3632,223,'Guam','GU',1),(3633,223,'Hawaii','HI',1),(3634,223,'Idaho','ID',1),(3635,223,'Illinois','IL',1),(3636,223,'Indiana','IN',1),(3637,223,'Iowa','IA',1),(3638,223,'Kansas','KS',1),(3639,223,'Kentucky','KY',1),(3640,223,'Louisiana','LA',1),(3641,223,'Maine','ME',1),(3642,223,'Marshall Islands','MH',1),(3643,223,'Maryland','MD',1),(3644,223,'Massachusetts','MA',1),(3645,223,'Michigan','MI',1),(3646,223,'Minnesota','MN',1),(3647,223,'Mississippi','MS',1),(3648,223,'Missouri','MO',1),(3649,223,'Montana','MT',1),(3650,223,'Nebraska','NE',1),(3651,223,'Nevada','NV',1),(3652,223,'New Hampshire','NH',1),(3653,223,'New Jersey','NJ',1),(3654,223,'New Mexico','NM',1),(3655,223,'New York','NY',1),(3656,223,'North Carolina','NC',1),(3657,223,'North Dakota','ND',1),(3658,223,'Northern Mariana Islands','MP',1),(3659,223,'Ohio','OH',1),(3660,223,'Oklahoma','OK',1),(3661,223,'Oregon','OR',1),(3662,223,'Palau','PW',1),(3663,223,'Pennsylvania','PA',1),(3664,223,'Puerto Rico','PR',1),(3665,223,'Rhode Island','RI',1),(3666,223,'South Carolina','SC',1),(3667,223,'South Dakota','SD',1),(3668,223,'Tennessee','TN',1),(3669,223,'Texas','TX',1),(3670,223,'Utah','UT',1),(3671,223,'Vermont','VT',1),(3672,223,'Virgin Islands','VI',1),(3673,223,'Virginia','VA',1),(3674,223,'Washington','WA',1),(3675,223,'West Virginia','WV',1),(3676,223,'Wisconsin','WI',1),(3677,223,'Wyoming','WY',1),(3678,224,'Baker Island','BI',1),(3679,224,'Howland Island','HI',1),(3680,224,'Jarvis Island','JI',1),(3681,224,'Johnston Atoll','JA',1),(3682,224,'Kingman Reef','KR',1),(3683,224,'Midway Atoll','MA',1),(3684,224,'Navassa Island','NI',1),(3685,224,'Palmyra Atoll','PA',1),(3686,224,'Wake Island','WI',1),(3687,225,'Artigas','AR',1),(3688,225,'Canelones','CA',1),(3689,225,'Cerro Largo','CL',1),(3690,225,'Colonia','CO',1),(3691,225,'Durazno','DU',1),(3692,225,'Flores','FS',1),(3693,225,'Florida','FA',1),(3694,225,'Lavalleja','LA',1),(3695,225,'Maldonado','MA',1),(3696,225,'Montevideo','MO',1),(3697,225,'Paysandu','PA',1),(3698,225,'Rio Negro','RN',1),(3699,225,'Rivera','RV',1),(3700,225,'Rocha','RO',1),(3701,225,'Salto','SL',1),(3702,225,'San Jose','SJ',1),(3703,225,'Soriano','SO',1),(3704,225,'Tacuarembo','TA',1),(3705,225,'Treinta y Tres','TT',1),(3706,226,'Andijon','AN',1),(3707,226,'Buxoro','BU',1),(3708,226,'Farg\'ona','FA',1),(3709,226,'Jizzax','JI',1),(3710,226,'Namangan','NG',1),(3711,226,'Navoiy','NW',1),(3712,226,'Qashqadaryo','QA',1),(3713,226,'Qoraqalpog\'iston Republikasi','QR',1),(3714,226,'Samarqand','SA',1),(3715,226,'Sirdaryo','SI',1),(3716,226,'Surxondaryo','SU',1),(3717,226,'Toshkent City','TK',1),(3718,226,'Toshkent Region','TO',1),(3719,226,'Xorazm','XO',1),(3720,227,'Malampa','MA',1),(3721,227,'Penama','PE',1),(3722,227,'Sanma','SA',1),(3723,227,'Shefa','SH',1),(3724,227,'Tafea','TA',1),(3725,227,'Torba','TO',1),(3726,229,'Amazonas','AM',1),(3727,229,'Anzoategui','AN',1),(3728,229,'Apure','AP',1),(3729,229,'Aragua','AR',1),(3730,229,'Barinas','BA',1),(3731,229,'Bolivar','BO',1),(3732,229,'Carabobo','CA',1),(3733,229,'Cojedes','CO',1),(3734,229,'Delta Amacuro','DA',1),(3735,229,'Dependencias Federales','DF',1),(3736,229,'Distrito Federal','DI',1),(3737,229,'Falcon','FA',1),(3738,229,'Guarico','GU',1),(3739,229,'Lara','LA',1),(3740,229,'Merida','ME',1),(3741,229,'Miranda','MI',1),(3742,229,'Monagas','MO',1),(3743,229,'Nueva Esparta','NE',1),(3744,229,'Portuguesa','PO',1),(3745,229,'Sucre','SU',1),(3746,229,'Tachira','TA',1),(3747,229,'Trujillo','TR',1),(3748,229,'Vargas','VA',1),(3749,229,'Yaracuy','YA',1),(3750,229,'Zulia','ZU',1),(3751,230,'An Giang','AG',1),(3752,230,'Bac Giang','BG',1),(3753,230,'Bac Kan','BK',1),(3754,230,'Bac Lieu','BL',1),(3755,230,'Bac Ninh','BC',1),(3756,230,'Ba Ria-Vung Tau','BR',1),(3757,230,'Ben Tre','BN',1),(3758,230,'Binh Dinh','BH',1),(3759,230,'Binh Duong','BU',1),(3760,230,'Binh Phuoc','BP',1),(3761,230,'Binh Thuan','BT',1),(3762,230,'Ca Mau','CM',1),(3763,230,'Can Tho','CT',1),(3764,230,'Cao Bang','CB',1),(3765,230,'Dak Lak','DL',1),(3766,230,'Dak Nong','DG',1),(3767,230,'Da Nang','DN',1),(3768,230,'Dien Bien','DB',1),(3769,230,'Dong Nai','DI',1),(3770,230,'Dong Thap','DT',1),(3771,230,'Gia Lai','GL',1),(3772,230,'Ha Giang','HG',1),(3773,230,'Hai Duong','HD',1),(3774,230,'Hai Phong','HP',1),(3775,230,'Ha Nam','HM',1),(3776,230,'Ha Noi','HI',1),(3777,230,'Ha Tay','HT',1),(3778,230,'Ha Tinh','HH',1),(3779,230,'Hoa Binh','HB',1),(3780,230,'Ho Chi Minh City','HC',1),(3781,230,'Hau Giang','HU',1),(3782,230,'Hung Yen','HY',1),(3783,232,'Saint Croix','C',1),(3784,232,'Saint John','J',1),(3785,232,'Saint Thomas','T',1),(3786,233,'Alo','A',1),(3787,233,'Sigave','S',1),(3788,233,'Wallis','W',1),(3789,235,'Abyan','AB',1),(3790,235,'Adan','AD',1),(3791,235,'Amran','AM',1),(3792,235,'Al Bayda','BA',1),(3793,235,'Ad Dali','DA',1),(3794,235,'Dhamar','DH',1),(3795,235,'Hadramawt','HD',1),(3796,235,'Hajjah','HJ',1),(3797,235,'Al Hudaydah','HU',1),(3798,235,'Ibb','IB',1),(3799,235,'Al Jawf','JA',1),(3800,235,'Lahij','LA',1),(3801,235,'Ma\'rib','MA',1),(3802,235,'Al Mahrah','MR',1),(3803,235,'Al Mahwit','MW',1),(3804,235,'Sa\'dah','SD',1),(3805,235,'San\'a','SN',1),(3806,235,'Shabwah','SH',1),(3807,235,'Ta\'izz','TA',1),(3808,236,'Kosovo','KOS',1),(3809,236,'Montenegro','MON',1),(3810,236,'Serbia','SER',1),(3811,236,'Vojvodina','VOJ',1),(3812,237,'Bas-Congo','BC',1),(3813,237,'Bandundu','BN',1),(3814,237,'Equateur','EQ',1),(3815,237,'Katanga','KA',1),(3816,237,'Kasai-Oriental','KE',1),(3817,237,'Kinshasa','KN',1),(3818,237,'Kasai-Occidental','KW',1),(3819,237,'Maniema','MA',1),(3820,237,'Nord-Kivu','NK',1),(3821,237,'Orientale','OR',1),(3822,237,'Sud-Kivu','SK',1),(3823,238,'Central','CE',1),(3824,238,'Copperbelt','CB',1),(3825,238,'Eastern','EA',1),(3826,238,'Luapula','LP',1),(3827,238,'Lusaka','LK',1),(3828,238,'Northern','NO',1),(3829,238,'North-Western','NW',1),(3830,238,'Southern','SO',1),(3831,238,'Western','WE',1),(3832,239,'Bulawayo','BU',1),(3833,239,'Harare','HA',1),(3834,239,'Manicaland','ML',1),(3835,239,'Mashonaland Central','MC',1),(3836,239,'Mashonaland East','ME',1),(3837,239,'Mashonaland West','MW',1),(3838,239,'Masvingo','MV',1),(3839,239,'Matabeleland North','MN',1),(3840,239,'Matabeleland South','MS',1),(3841,239,'Midlands','MD',1),(3861,105,'Campobasso','CB',1),(3862,105,'Carbonia-Iglesias','CI',1),(3863,105,'Caserta','CE',1),(3864,105,'Catania','CT',1),(3865,105,'Catanzaro','CZ',1),(3866,105,'Chieti','CH',1),(3867,105,'Como','CO',1),(3868,105,'Cosenza','CS',1),(3869,105,'Cremona','CR',1),(3870,105,'Crotone','KR',1),(3871,105,'Cuneo','CN',1),(3872,105,'Enna','EN',1),(3873,105,'Ferrara','FE',1),(3874,105,'Firenze','FI',1),(3875,105,'Foggia','FG',1),(3876,105,'Forli-Cesena','FC',1),(3877,105,'Frosinone','FR',1),(3878,105,'Genova','GE',1),(3879,105,'Gorizia','GO',1),(3880,105,'Grosseto','GR',1),(3881,105,'Imperia','IM',1),(3882,105,'Isernia','IS',1),(3883,105,'L&#39;Aquila','AQ',1),(3884,105,'La Spezia','SP',1),(3885,105,'Latina','LT',1),(3886,105,'Lecce','LE',1),(3887,105,'Lecco','LC',1),(3888,105,'Livorno','LI',1),(3889,105,'Lodi','LO',1),(3890,105,'Lucca','LU',1),(3891,105,'Macerata','MC',1),(3892,105,'Mantova','MN',1),(3893,105,'Massa-Carrara','MS',1),(3894,105,'Matera','MT',1),(3895,105,'Medio Campidano','VS',1),(3896,105,'Messina','ME',1),(3897,105,'Milano','MI',1),(3898,105,'Modena','MO',1),(3899,105,'Napoli','NA',1),(3900,105,'Novara','NO',1),(3901,105,'Nuoro','NU',1),(3902,105,'Ogliastra','OG',1),(3903,105,'Olbia-Tempio','OT',1),(3904,105,'Oristano','OR',1),(3905,105,'Padova','PD',1),(3906,105,'Palermo','PA',1),(3907,105,'Parma','PR',1),(3908,105,'Pavia','PV',1),(3909,105,'Perugia','PG',1),(3910,105,'Pesaro e Urbino','PU',1),(3911,105,'Pescara','PE',1),(3912,105,'Piacenza','PC',1),(3913,105,'Pisa','PI',1),(3914,105,'Pistoia','PT',1),(3915,105,'Pordenone','PN',1),(3916,105,'Potenza','PZ',1),(3917,105,'Prato','PO',1),(3918,105,'Ragusa','RG',1),(3919,105,'Ravenna','RA',1),(3920,105,'Reggio Calabria','RC',1),(3921,105,'Reggio Emilia','RE',1),(3922,105,'Rieti','RI',1),(3923,105,'Rimini','RN',1),(3924,105,'Roma','RM',1),(3925,105,'Rovigo','RO',1),(3926,105,'Salerno','SA',1),(3927,105,'Sassari','SS',1),(3928,105,'Savona','SV',1),(3929,105,'Siena','SI',1),(3930,105,'Siracusa','SR',1),(3931,105,'Sondrio','SO',1),(3932,105,'Taranto','TA',1),(3933,105,'Teramo','TE',1),(3934,105,'Terni','TR',1),(3935,105,'Torino','TO',1),(3936,105,'Trapani','TP',1),(3937,105,'Trento','TN',1),(3938,105,'Treviso','TV',1),(3939,105,'Trieste','TS',1),(3940,105,'Udine','UD',1),(3941,105,'Varese','VA',1),(3942,105,'Venezia','VE',1),(3943,105,'Verbano-Cusio-Ossola','VB',1),(3944,105,'Vercelli','VC',1),(3945,105,'Verona','VR',1),(3946,105,'Vibo Valentia','VV',1),(3947,105,'Vicenza','VI',1),(3948,105,'Viterbo','VT',1),(3949,222,'County Antrim','ANT',1),(3950,222,'County Armagh','ARM',1),(3951,222,'County Down','DOW',1),(3952,222,'County Fermanagh','FER',1),(3953,222,'County Londonderry','LDY',1),(3954,222,'County Tyrone','TYR',1),(3955,222,'Cumbria','CMA',1),(3956,190,'Pomurska','1',1),(3957,190,'Podravska','2',1),(3958,190,'Koroška','3',1),(3959,190,'Savinjska','4',1),(3960,190,'Zasavska','5',1),(3961,190,'Spodnjeposavska','6',1),(3962,190,'Jugovzhodna Slovenija','7',1),(3963,190,'Osrednjeslovenska','8',1),(3964,190,'Gorenjska','9',1),(3965,190,'Notranjsko-kraška','10',1),(3966,190,'Goriška','11',1),(3967,190,'Obalno-kraška','12',1),(3968,33,'Ruse','',1),(3969,101,'Alborz','ALB',1),(3970,220,'Херсон','KE',1);
/*!40000 ALTER TABLE `zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone_to_geo_zone`
--

DROP TABLE IF EXISTS `zone_to_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone_to_geo_zone`
--

LOCK TABLES `zone_to_geo_zone` WRITE;
/*!40000 ALTER TABLE `zone_to_geo_zone` DISABLE KEYS */;
INSERT INTO `zone_to_geo_zone` VALUES (57,176,0,3,'2010-02-26 22:33:24','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `zone_to_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-20 20:46:13
