-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: guitar
-- ------------------------------------------------------
-- Server version	5.7.16-0ubuntu0.16.04.1

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
-- Table structure for table `auction`
--

DROP TABLE IF EXISTS `auction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auction_no` varchar(30) DEFAULT NULL,
  `img_url` varchar(1000) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `paimai_price` varchar(50) DEFAULT NULL,
  `yikoujia` varchar(50) DEFAULT NULL,
  `endtime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auction`
--

LOCK TABLES `auction` WRITE;
/*!40000 ALTER TABLE `auction` DISABLE KEYS */;
INSERT INTO `auction` VALUES (1,'a123222222','sssss','ibanez 7v','5000','10000','5day'),(2,'x469159216','9999999999','美品 アイバニーズ製 5弦Bass SR-305 プリアンプ付','10,000円            \n\n','－','2小时'),(3,'x469159216','9999999999','美品 アイバニーズ製 5弦Bass SR-305 プリアンプ付','10,000円            \n\n','－','2小时'),(4,'x469159216','9999999999','美品 アイバニーズ製 5弦Bass SR-305 プリアンプ付','10,000円            \n\n','－','2小时'),(5,'x469159216','9999999999','美品 アイバニーズ製 5弦Bass SR-305 プリアンプ付','10,000円            \n\n','－','2小时'),(6,'x469159216','9999999999','美品 アイバニーズ製 5弦Bass SR-305 プリアンプ付','10,000円            \n\n','－','2小时'),(7,'x469159216','9999999999','美品 アイバニーズ製 5弦Bass SR-305 プリアンプ付','10,000円            \n\n','－','2小时'),(8,'x469159216','9999999999','美品 アイバニーズ製 5弦Bass SR-305 プリアンプ付','10,000円            \n\n','－','2小时'),(9,'e206110839','9999999999','ibanez フルアコ afj81 jazz セミアコ','21円','－','4日'),(10,'e206110839','http://wing-auctions.c.yimg.jp/sim?furl=auctions.c.yimg.jp/images.auctions.yahoo.co.jp/image/dr000/auc0212/users/3/6/4/6/okabango_0701-img400x600-1482232807cghxxv19663.jpg&dc=1&sr.fs=20000','ibanez フルアコ afj81 jazz セミアコ','21円','－','4日'),(11,'e206110839','http://wing-auctions.c.yimg.jp/sim?furl=auctions.c.yimg.jp/images.auctions.yahoo.co.jp/image/dr000/auc0212/users/3/6/4/6/okabango_0701-img400x600-1482232807cghxxv19663.jpg&dc=1&sr.fs=20000','ibanez フルアコ afj81 jazz セミアコ','41円','－','4日'),(12,'e206110839','http://wing-auctions.c.yimg.jp/sim?furl=auctions.c.yimg.jp/images.auctions.yahoo.co.jp/image/dr000/auc0212/users/3/6/4/6/okabango_0701-img400x600-1482232807cghxxv19663.jpg&dc=1&sr.fs=20000','ibanez フルアコ afj81 jazz セミアコ','510円','－','4日'),(13,'c582435438','http://wing-auctions.c.yimg.jp/sim?furl=auctions.c.yimg.jp/images.auctions.yahoo.co.jp/image/dr000/auc0212/users/3/2/2/0/llttxxttll-img337x600-14822912447dpksu2241.jpg&dc=1&sr.fs=20000','RGKP6 新品同様 アイバニーズ カオスパッド付 美品 8GB 1円','1円            \n\n','45,000円','2日');
/*!40000 ALTER TABLE `auction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_image` varchar(500) NOT NULL,
  `name` varchar(50) NOT NULL,
  `summary` varchar(200) NOT NULL,
  `content` mediumtext NOT NULL,
  `created_at` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` varchar(50) NOT NULL,
  `blog_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_image` varchar(500) NOT NULL,
  `content` mediumtext NOT NULL,
  `created_at` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL,
  `created_at` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_email` (`email`),
  KEY `idx_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-22 22:46:24
