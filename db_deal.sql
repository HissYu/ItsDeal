-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_deal
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dl_admin`
--

DROP TABLE IF EXISTS `dl_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_pwd` text NOT NULL,
  `admin_key` text NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dl_admin`
--

LOCK TABLES `dl_admin` WRITE;
/*!40000 ALTER TABLE `dl_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `dl_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dl_item`
--

DROP TABLE IF EXISTS `dl_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dl_item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(45) NOT NULL,
  `item_disciption` text,
  `item_seller_id` int(11) NOT NULL,
  `item_image` tinytext,
  `item_tag` text,
  `item_price` int(11) DEFAULT NULL,
  `item_puttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `item_views` int(11) DEFAULT '0',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `item_id_UNIQUE` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dl_item`
--

LOCK TABLES `dl_item` WRITE;
/*!40000 ALTER TABLE `dl_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `dl_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dl_map_image`
--

DROP TABLE IF EXISTS `dl_map_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dl_map_image` (
  `img_id` int(11) NOT NULL,
  `img_type` int(4) NOT NULL,
  `img_url` text NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dl_map_image`
--

LOCK TABLES `dl_map_image` WRITE;
/*!40000 ALTER TABLE `dl_map_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `dl_map_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dl_map_img_type`
--

DROP TABLE IF EXISTS `dl_map_img_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dl_map_img_type` (
  `img_type_id` int(11) NOT NULL,
  `img_type_name` varchar(45) NOT NULL,
  PRIMARY KEY (`img_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dl_map_img_type`
--

LOCK TABLES `dl_map_img_type` WRITE;
/*!40000 ALTER TABLE `dl_map_img_type` DISABLE KEYS */;
INSERT INTO `dl_map_img_type` VALUES (0,'sys '),(1,'user icon'),(2,'item image'),(3,'comment appendix');
/*!40000 ALTER TABLE `dl_map_img_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dl_map_item_tag`
--

DROP TABLE IF EXISTS `dl_map_item_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dl_map_item_tag` (
  `tag_id` int(11) NOT NULL,
  `tag_name` text NOT NULL,
  UNIQUE KEY `tag_id_UNIQUE` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dl_map_item_tag`
--

LOCK TABLES `dl_map_item_tag` WRITE;
/*!40000 ALTER TABLE `dl_map_item_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `dl_map_item_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dl_map_location`
--

DROP TABLE IF EXISTS `dl_map_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dl_map_location` (
  `location_id` int(11) NOT NULL,
  `location_name` text NOT NULL,
  UNIQUE KEY `location_id_UNIQUE` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dl_map_location`
--

LOCK TABLES `dl_map_location` WRITE;
/*!40000 ALTER TABLE `dl_map_location` DISABLE KEYS */;
INSERT INTO `dl_map_location` VALUES (0,'东校区'),(1,'昌平校区'),(2,'西校区');
/*!40000 ALTER TABLE `dl_map_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dl_map_verify_state`
--

DROP TABLE IF EXISTS `dl_map_verify_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dl_map_verify_state` (
  `verify_state_id` int(11) NOT NULL,
  `verify_state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`verify_state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dl_map_verify_state`
--

LOCK TABLES `dl_map_verify_state` WRITE;
/*!40000 ALTER TABLE `dl_map_verify_state` DISABLE KEYS */;
INSERT INTO `dl_map_verify_state` VALUES (0,'not verified'),(1,'verifying'),(2,'verified');
/*!40000 ALTER TABLE `dl_map_verify_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dl_seller`
--

DROP TABLE IF EXISTS `dl_seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dl_seller` (
  `seller_id` int(11) unsigned NOT NULL,
  `seller_phonenum` int(11) unsigned NOT NULL,
  `seller_history` mediumtext,
  `seller_rate` decimal(10,0) unsigned NOT NULL DEFAULT '4',
  PRIMARY KEY (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dl_seller`
--

LOCK TABLES `dl_seller` WRITE;
/*!40000 ALTER TABLE `dl_seller` DISABLE KEYS */;
/*!40000 ALTER TABLE `dl_seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dl_seller_comment`
--

DROP TABLE IF EXISTS `dl_seller_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dl_seller_comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `comment_on_id` int(11) unsigned NOT NULL,
  `comment_from_id` int(11) unsigned NOT NULL,
  `comment` text NOT NULL,
  `comment_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment_has_reply` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dl_seller_comment`
--

LOCK TABLES `dl_seller_comment` WRITE;
/*!40000 ALTER TABLE `dl_seller_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `dl_seller_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dl_seller_comment_reply`
--

DROP TABLE IF EXISTS `dl_seller_comment_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dl_seller_comment_reply` (
  `reply_id` int(10) unsigned NOT NULL,
  `reply_to_id` int(10) unsigned NOT NULL,
  `reply_from_id` int(10) unsigned NOT NULL,
  `reply_by_id` int(10) unsigned NOT NULL,
  `reply` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reply_time` timestamp NOT NULL,
  PRIMARY KEY (`reply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dl_seller_comment_reply`
--

LOCK TABLES `dl_seller_comment_reply` WRITE;
/*!40000 ALTER TABLE `dl_seller_comment_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `dl_seller_comment_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dl_system_config`
--

DROP TABLE IF EXISTS `dl_system_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dl_system_config` (
  `system_name` varchar(45) NOT NULL,
  `system_logo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dl_system_config`
--

LOCK TABLES `dl_system_config` WRITE;
/*!40000 ALTER TABLE `dl_system_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `dl_system_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dl_system_homepage_options`
--

DROP TABLE IF EXISTS `dl_system_homepage_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dl_system_homepage_options` (
  `option_name` text NOT NULL,
  `option_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dl_system_homepage_options`
--

LOCK TABLES `dl_system_homepage_options` WRITE;
/*!40000 ALTER TABLE `dl_system_homepage_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `dl_system_homepage_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dl_user`
--

DROP TABLE IF EXISTS `dl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dl_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_password` varchar(45) NOT NULL,
  `user_nickname` varchar(45) NOT NULL,
  `user_location` int(4) unsigned NOT NULL,
  `user_is_seller` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `user_is_verified` int(4) unsigned NOT NULL DEFAULT '0',
  `_hide_detail` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dl_user`
--

LOCK TABLES `dl_user` WRITE;
/*!40000 ALTER TABLE `dl_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `dl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dl_user_detail`
--

DROP TABLE IF EXISTS `dl_user_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dl_user_detail` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_realname` varchar(45) NOT NULL,
  `user_stu_id` int(11) unsigned NOT NULL,
  `user_history` mediumtext,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  UNIQUE KEY `user_stu_id_UNIQUE` (`user_stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dl_user_detail`
--

LOCK TABLES `dl_user_detail` WRITE;
/*!40000 ALTER TABLE `dl_user_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `dl_user_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dl_user_to_verify`
--

DROP TABLE IF EXISTS `dl_user_to_verify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dl_user_to_verify` (
  `verify_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `verify_user_id` int(10) unsigned NOT NULL,
  `verify_realname` varchar(45) NOT NULL,
  `verify_account` int(10) unsigned NOT NULL,
  PRIMARY KEY (`verify_id`),
  UNIQUE KEY `verify_id_UNIQUE` (`verify_id`),
  UNIQUE KEY `verify_user_id_UNIQUE` (`verify_user_id`),
  UNIQUE KEY `verify_realname_UNIQUE` (`verify_realname`),
  UNIQUE KEY `verify_account_UNIQUE` (`verify_account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dl_user_to_verify`
--

LOCK TABLES `dl_user_to_verify` WRITE;
/*!40000 ALTER TABLE `dl_user_to_verify` DISABLE KEYS */;
/*!40000 ALTER TABLE `dl_user_to_verify` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-12 11:51:44
