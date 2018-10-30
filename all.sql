-- MySQL dump 10.13  Distrib 5.7.24, for Linux (i686)
--
-- Host: localhost    Database: daim
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.16.04.1

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
-- Current Database: `daim`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `daim` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `daim`;

--
-- Table structure for table `bankers`
--

DROP TABLE IF EXISTS `bankers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bankers` (
  `uid` int(11) NOT NULL,
  `accountname` varchar(25) NOT NULL,
  `accountno` varchar(10) NOT NULL,
  `bankname` varchar(25) NOT NULL,
  `swiftcode` varchar(25) DEFAULT NULL,
  `sortcode` varchar(25) DEFAULT NULL,
  `branch` tinytext NOT NULL,
  PRIMARY KEY (`uid`,`accountname`,`accountno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bankers`
--

LOCK TABLES `bankers` WRITE;
/*!40000 ALTER TABLE `bankers` DISABLE KEYS */;
INSERT INTO `bankers` VALUES (1,'ABAYOMI APETU','0009217408','GUARANTY TRUST BANK','','','lekki 1'),(2,'APETU GIDEON','2034890012','ZENITH BANK','','','Owode Yewa-South'),(4,'OLUFEMI SANUSI','0120556789','GUARANTY TRUST BANK','','','Catholic Mission');
/*!40000 ALTER TABLE `bankers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biodata`
--

DROP TABLE IF EXISTS `biodata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biodata` (
  `uid` int(11) NOT NULL,
  `bloodgrp` varchar(3) NOT NULL,
  `genotype` varchar(2) NOT NULL,
  `dateofbirth` date NOT NULL,
  `stateoforigin` varchar(25) NOT NULL,
  `nationality` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biodata`
--

LOCK TABLES `biodata` WRITE;
/*!40000 ALTER TABLE `biodata` DISABLE KEYS */;
INSERT INTO `biodata` VALUES (1,'O','AA','1980-11-09','Ogun','Nigerian'),(4,'A','AA','1965-03-09','Ondo','Nigerian'),(1,'O','AA','1980-11-09','Ogun','Nigerian'),(4,'A','AA','1965-03-09','Ondo','Nigerian'),(1,'O','AA','1980-11-09','Ogun','Nigerian'),(4,'A','AA','1965-03-09','Ondo','Nigerian'),(1,'O','AA','1980-11-09','Ogun','Nigerian'),(4,'A','AA','1965-03-09','Ondo','Nigerian'),(1,'O','AA','1980-11-09','Ogun','Nigerian'),(4,'A','AA','1965-03-09','Ondo','Nigerian');
/*!40000 ALTER TABLE `biodata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linkage`
--

DROP TABLE IF EXISTS `linkage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linkage` (
  `parentnode` int(11) NOT NULL,
  `childnode` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linkage`
--

LOCK TABLES `linkage` WRITE;
/*!40000 ALTER TABLE `linkage` DISABLE KEYS */;
INSERT INTO `linkage` VALUES (1,2),(1,3),(3,4),(1,2),(1,3),(3,4),(1,2),(1,3),(3,4),(1,2),(1,3),(3,4),(1,2),(1,3),(3,4);
/*!40000 ALTER TABLE `linkage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nextofkin`
--

DROP TABLE IF EXISTS `nextofkin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nextofkin` (
  `uid` int(11) NOT NULL,
  `nextofkin_name` varchar(25) NOT NULL,
  `relationship` varchar(10) NOT NULL,
  `phoneno` varchar(13) NOT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nextofkin`
--

LOCK TABLES `nextofkin` WRITE;
/*!40000 ALTER TABLE `nextofkin` DISABLE KEYS */;
INSERT INTO `nextofkin` VALUES (1,'SARAH APETU','wife','2348035229720','');
/*!40000 ALTER TABLE `nextofkin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residence`
--

DROP TABLE IF EXISTS `residence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `residence` (
  `uid` int(11) NOT NULL,
  `residentialAdd` tinytext NOT NULL,
  `city` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `country` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residence`
--

LOCK TABLES `residence` WRITE;
/*!40000 ALTER TABLE `residence` DISABLE KEYS */;
INSERT INTO `residence` VALUES (1,'36 Eleso Street, off Era Road, via Iyana Era Bustop, Badagry Exp.','Ijanikin/Ojo','Lagos','Nigeria'),(3,'3 Irewole Street, off Alhaji Akinlade Street, Ilaro Road.','Owode/Yewa-South','Ogun','Nigeria'),(4,'10 Shell Close, off Chevron Avenue.','Victoria Garden City','Lagos','Nigeria'),(1,'36 Eleso Street, off Era Road, via Iyana Era Bustop, Badagry Exp.','Ijanikin/Ojo','Lagos','Nigeria'),(3,'3 Irewole Street, off Alhaji Akinlade Street, Ilaro Road.','Owode/Yewa-South','Ogun','Nigeria'),(4,'10 Shell Close, off Chevron Avenue.','Victoria Garden City','Lagos','Nigeria'),(1,'36 Eleso Street, off Era Road, via Iyana Era Bustop, Badagry Exp.','Ijanikin/Ojo','Lagos','Nigeria'),(3,'3 Irewole Street, off Alhaji Akinlade Street, Ilaro Road.','Owode/Yewa-South','Ogun','Nigeria'),(4,'10 Shell Close, off Chevron Avenue.','Victoria Garden City','Lagos','Nigeria'),(1,'36 Eleso Street, off Era Road, via Iyana Era Bustop, Badagry Exp.','Ijanikin/Ojo','Lagos','Nigeria'),(3,'3 Irewole Street, off Alhaji Akinlade Street, Ilaro Road.','Owode/Yewa-South','Ogun','Nigeria'),(4,'10 Shell Close, off Chevron Avenue.','Victoria Garden City','Lagos','Nigeria'),(1,'36 Eleso Street, off Era Road, via Iyana Era Bustop, Badagry Exp.','Ijanikin/Ojo','Lagos','Nigeria'),(3,'3 Irewole Street, off Alhaji Akinlade Street, Ilaro Road.','Owode/Yewa-South','Ogun','Nigeria'),(4,'10 Shell Close, off Chevron Avenue.','Victoria Garden City','Lagos','Nigeria');
/*!40000 ALTER TABLE `residence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneno` varchar(13) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `tdate` datetime NOT NULL,
  PRIMARY KEY (`id`,`email`,`phoneno`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Abayomi Apetu','abayomismart@gmail.com','2348063582789','male','2017-04-23 16:52:48'),(2,'Gideon Apetu','apetugideon@gmail.com','2349020071100','male','2017-04-23 16:52:48'),(3,'Abayomi Apetu','abayomismart@gmail.com','2348063582789','male','2017-04-23 16:53:26'),(4,'Gideon Apetu','apetugideon@gmail.com','2349020071100','male','2017-04-23 16:53:26'),(5,'Emmanuel Akinyemi','akinomoakin@gmail.com','2347031176164','male','2017-04-23 16:53:26'),(6,'Femi Sanusi','fsanusi@gmail.com','2348034881183','male','2017-04-23 16:53:26'),(7,'Abayomi Apetu','abayomismart@gmail.com','2348063582789','male','2017-04-23 16:54:41'),(8,'Gideon Apetu','apetugideon@gmail.com','2349020071100','male','2017-04-23 16:54:41'),(9,'Emmanuel Akinyemi','akinomoakin@gmail.com','2347031176164','male','2017-04-23 16:54:41'),(10,'Femi Sanusi','fsanusi@gmail.com','2348034881183','male','2017-04-23 16:54:41'),(11,'Abayomi Apetu','abayomismart@gmail.com','2348063582789','male','2017-04-23 16:55:27'),(12,'Gideon Apetu','apetugideon@gmail.com','2349020071100','male','2017-04-23 16:55:27'),(13,'Emmanuel Akinyemi','akinomoakin@gmail.com','2347031176164','male','2017-04-23 16:55:27'),(14,'Femi Sanusi','fsanusi@gmail.com','2348034881183','male','2017-04-23 16:55:27'),(15,'Abayomi Apetu','abayomismart@gmail.com','2348063582789','male','2017-04-23 16:57:30'),(16,'Gideon Apetu','apetugideon@gmail.com','2349020071100','male','2017-04-23 16:57:30'),(17,'Emmanuel Akinyemi','akinomoakin@gmail.com','2347031176164','male','2017-04-23 16:57:30'),(18,'Femi Sanusi','fsanusi@gmail.com','2348034881183','male','2017-04-23 16:57:30'),(19,'Abayomi Apetu','abayomismart@gmail.com','2348063582789','male','2017-04-23 16:59:02'),(20,'Gideon Apetu','apetugideon@gmail.com','2349020071100','male','2017-04-23 16:59:02'),(21,'Emmanuel Akinyemi','akinomoakin@gmail.com','2347031176164','male','2017-04-23 16:59:02'),(22,'Femi Sanusi','fsanusi@gmail.com','2348034881183','male','2017-04-23 16:59:02');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `smartbids`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `smartbids` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `smartbids`;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,1,'6, ERA ROAD, ILOGBO-ELEGBA, IJANIKIN, OTO-AWORI LCDA, OJO, LAGOS.','08151571961','08151571963',1,'2018-10-29 13:18:52','2018-10-29 13:18:52'),(2,2,'71887 Timmy Park Apt. 577\nTurnerborough, MT 78447','+8058090482526','+4370800933372',1,'2018-10-29 13:18:52','2018-10-29 13:18:52'),(3,3,'1842 Jones Club Suite 837\nNew Mattie, NY 60449','+6158858539858','+9057027940464',1,'2018-10-29 13:18:52','2018-10-29 13:18:52'),(4,4,'877 Jeffry Rue\nChristophermouth, MD 94783-2759','+9722547599246','+1058911218265',1,'2018-10-29 13:18:52','2018-10-29 13:18:52'),(5,5,'5795 Predovic Squares\nHaagton, MD 01685-8055','+8860343498433','+4807419523601',1,'2018-10-29 13:18:52','2018-10-29 13:18:52'),(6,6,'294 Bailey Coves\nWest Brady, HI 07496-9115','+5003960883902','+4475587481345',1,'2018-10-29 13:18:52','2018-10-29 13:18:52'),(7,7,'46042 Parker Hill Apt. 671\nEast Ernest, NY 36640','+9971378323447','+9819811266646',1,'2018-10-29 13:18:52','2018-10-29 13:18:52'),(8,8,'2701 Sawayn Forges Suite 627\nNorth Columbus, OK 75096','+8134947504246','+8673555949602',1,'2018-10-29 13:18:52','2018-10-29 13:18:52'),(9,9,'167 O\'Conner Point\nLoyview, NE 44695','+9050440284613','+8805824388492',1,'2018-10-29 13:18:52','2018-10-29 13:18:52'),(10,10,'70362 Schmidt Locks Apt. 799\nNew Connieville, LA 01652-0365','+2619517249931','+6256131410377',1,'2018-10-29 13:18:52','2018-10-29 13:18:52'),(11,11,'59172 Reinger Wells\nMarshallland, WA 44277','+8633770321361','+1189027959270',1,'2018-10-29 13:18:52','2018-10-29 13:18:52'),(12,12,'37014 Mark Landing Suite 549\nEttieburgh, NC 55597','+1657583889438','+7149173800326',1,'2018-10-29 13:18:52','2018-10-29 13:18:52'),(13,13,'716 Cleve Circles Apt. 767\nWest Lexiestad, NY 58386-1071','+9692441765212','+8697654378485',1,'2018-10-29 13:18:52','2018-10-29 13:18:52'),(14,14,'862 Savanah Union Apt. 982\nMaggiofurt, AL 17896','+4266308790350','+4996551487966',1,'2018-10-29 13:18:52','2018-10-29 13:18:52'),(15,15,'253 DuBuque Stream Suite 331\nBarrettland, IA 72000-3670','+9135598329054','+1587287041272',1,'2018-10-29 13:18:52','2018-10-29 13:18:52'),(16,16,'9582 Jayde Isle Apt. 765\nPort Elsebury, MI 19091-7796','+2787331790887','+3403148012364',1,'2018-10-29 13:18:52','2018-10-29 13:18:52'),(17,17,'876 Linnea Crescent Apt. 696\nNew Serenaville, LA 97785-5035','+5399585434174','+8014348466007',1,'2018-10-29 13:18:52','2018-10-29 13:18:52'),(18,18,'97558 Walter Route Suite 959\nWilbertland, NY 98583','+3125994269537','+4946635983242',1,'2018-10-29 13:18:52','2018-10-29 13:18:52'),(19,19,'24209 Burdette Run\nLake Rahul, OH 36765','+4980785728421','+4994379782891',1,'2018-10-29 13:18:52','2018-10-29 13:18:52'),(20,20,'591 Giovanni Manors\nAbigaylefurt, ND 17472-3549','+6414166403175','+3161474478893',1,'2018-10-29 13:18:52','2018-10-29 13:18:52'),(21,21,'418 Lesly Spurs\nNellaview, AR 58325-8450','+1096755514904','+7626520055492',1,'2018-10-29 13:18:52','2018-10-29 13:18:52'),(22,22,'579 Flavio Grove\nEast Cheyanne, SD 12471','+3902959251982','+7023956075169',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(23,23,'555 Reichel Bypass Apt. 008\nKanebury, MN 66838-6382','+9948614342114','+4474905059733',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(24,24,'153 Linwood Island\nRutherfordmouth, KS 46236','+3376412941936','+7469433547332',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(25,25,'866 Carroll Wells Suite 803\nNew Noemie, AR 18569-4360','+5759661149305','+9483100004963',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(26,26,'373 Cesar Avenue Apt. 864\nLake Stephan, ND 17059-7943','+3180383104883','+6722265871247',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(27,27,'817 Walter Valley\nCordiahaven, MN 20815','+6018224037489','+9849295895992',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(28,28,'2622 Lenora Roads Suite 628\nNorth Beaumouth, VA 42018','+7300500385320','+8729397093719',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(29,29,'3556 Anita Locks Apt. 236\nJaysonhaven, NE 00150-7198','+8255064560910','+8325310701763',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(30,30,'714 O\'Conner Stream\nMaudton, MO 93669','+8073110222988','+2177497955878',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(31,31,'43328 Wilton Plain Apt. 302\nBergnaumberg, NC 74586-8723','+1049254887761','+5171846277398',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(32,32,'899 Schimmel Throughway\nSouth Modesto, AK 12445','+7233049002925','+2059191440621',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(33,33,'472 Raoul Camp\nThompsonport, MI 77745-3661','+7797017103271','+2330370321582',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(34,34,'27122 Alexandre Points\nKohlerburgh, GA 64615-6171','+5996304324979','+4252481578666',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(35,35,'19920 Collins Ville Suite 322\nPort Shawnaberg, UT 03353-7272','+7164440092384','+2728428391754',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(36,36,'996 Melany Street Suite 898\nLake Ashlyport, ME 31853','+1875846403927','+6350051425752',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(37,37,'296 Casandra Islands Suite 825\nXavierhaven, KY 99443-6397','+8906971951506','+4770561174051',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(38,38,'59662 Veum Greens\nHendersonland, ME 86710','+9326449154598','+8867601456912',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(39,39,'288 Hill Landing\nSouth Eleanore, CT 31561-4874','+7860586213601','+5133878186706',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(40,40,'6509 Kirlin Vista Suite 881\nNew Margot, AZ 12060','+3888118214759','+2893364903931',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(41,41,'27382 Weimann Ports\nWest Carlo, NY 90136-0412','+9606630953917','+6586566949088',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(42,42,'701 Welch Ports Suite 847\nStrackeport, SD 41726','+3204264939515','+6703299170620',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(43,43,'30207 Mikayla Park\nNew Jaleel, OK 11313','+9795669912730','+9406450614846',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(44,44,'756 Schoen Coves\nSouth Carolynestad, RI 26854','+7151394217918','+4095828357320',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(45,45,'4166 Tina Street\nSouth Jerod, LA 09369','+4118699067213','+8194212892449',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(46,46,'632 Pamela Crossing\nSouth Deangelo, UT 72999-9461','+4593801638839','+4628605573295',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(47,47,'440 Ervin Junction Apt. 569\nWest Irwin, FL 22575','+7340409638999','+7096831143559',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(48,48,'283 Mante Pines\nWest Kevonport, NM 25173','+5036264275047','+8753265141188',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(49,49,'45332 Alisa Brook\nNew Ibrahim, AR 10058-8546','+2091956432747','+7345954753049',1,'2018-10-29 13:18:53','2018-10-29 13:18:53'),(50,50,'1266 Schmidt Ford\nKilbackland, UT 68363-5828','+9444470044844','+6932560126149',1,'2018-10-29 13:18:54','2018-10-29 13:18:54'),(51,51,'411 Monty Points Apt. 414\nElfriedaton, SD 84792-9004','+7118741683374','+8056913637156',1,'2018-10-29 13:18:54','2018-10-29 13:18:54');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auctions`
--

DROP TABLE IF EXISTS `auctions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auctions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `real_value` decimal(8,2) NOT NULL,
  `auction_price` decimal(8,2) NOT NULL,
  `bid_value` tinyint(4) NOT NULL,
  `main_picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bid_close` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auctions`
--

LOCK TABLES `auctions` WRITE;
/*!40000 ALTER TABLE `auctions` DISABLE KEYS */;
INSERT INTO `auctions` VALUES (1,'Tempore qui recusandae incidunt ad et cumque.',532216.00,3004.00,75,'/tmp/4ad533ac5fc0a7848306400d23549bf7.jpg',0,0,'2018-10-29 13:48:41','2018-10-29 13:48:41'),(2,'Voluptas architecto sunt qui eveniet harum libero et.',224145.00,1578.00,98,'/tmp/e8ae7f3bfd487faa11ad0e82289d63f6.jpg',0,0,'2018-10-29 13:48:54','2018-10-29 13:48:54'),(3,'Exercitationem impedit ut quia mollitia est iusto.',678141.00,4397.00,85,'0',0,0,'2018-10-29 13:50:12','2018-10-29 13:50:12'),(4,'Sint voluptas reiciendis aperiam eum dolorem.',735587.00,5136.00,88,'/tmp/73266f5086c387e8e547c3bcc1bcff85.jpg',0,0,'2018-10-29 13:51:24','2018-10-29 13:51:24'),(5,'Consequatur et minima nihil molestiae aliquam.',372268.00,6939.00,76,'0',0,0,'2018-10-29 13:53:35','2018-10-29 13:53:35'),(6,'Quia suscipit commodi ea velit ea sit aliquid.',350082.00,1759.00,86,'0',0,0,'2018-10-29 13:56:05','2018-10-29 13:56:05'),(7,'Sunt quaerat recusandae quis ea placeat commodi necessitatibus et.',270313.00,5064.00,75,'/tmp/62771f36aedc217bf6f1254aef11c99d.jpg',0,0,'2018-10-29 13:56:52','2018-10-29 13:56:52'),(8,'Ullam consequuntur vero rerum voluptas eos atque.',82587.00,3942.00,61,'0',0,0,'2018-10-29 13:58:37','2018-10-29 13:58:37'),(9,'Ut aut sed sint consequatur sed dolores dolore.',283678.00,9301.00,46,'0',0,0,'2018-10-29 14:00:27','2018-10-29 14:00:27'),(10,'Quidem sit dolorem esse velit aspernatur odit.',459077.00,3408.00,54,'0',0,0,'2018-10-29 14:02:40','2018-10-29 14:02:40');
/*!40000 ALTER TABLE `auctions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bid_packs`
--

DROP TABLE IF EXISTS `bid_packs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bid_packs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `alloted` int(11) NOT NULL,
  `date_alloted` timestamp NULL DEFAULT NULL,
  `expiry_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bid_packs`
--

LOCK TABLES `bid_packs` WRITE;
/*!40000 ALTER TABLE `bid_packs` DISABLE KEYS */;
INSERT INTO `bid_packs` VALUES (1,1,2483,'1971-01-22 14:07:48','2019-10-31 23:00:00','2018-10-29 15:03:10','2018-10-29 15:03:10'),(2,2,7736,'1977-04-25 18:24:34','2019-10-31 23:00:00','2018-10-29 15:03:10','2018-10-29 15:03:10'),(3,3,1671,'2011-10-19 00:41:51','2019-10-31 23:00:00','2018-10-29 15:03:10','2018-10-29 15:03:10'),(4,4,3757,'1995-01-05 22:52:34','2019-10-31 23:00:00','2018-10-29 15:03:10','2018-10-29 15:03:10'),(5,5,4862,'1995-08-27 13:16:36','2019-10-31 23:00:00','2018-10-29 15:03:10','2018-10-29 15:03:10'),(6,6,2725,'1991-04-07 10:20:57','2019-10-31 23:00:00','2018-10-29 15:03:10','2018-10-29 15:03:10'),(7,7,8714,'2006-06-23 00:42:26','2019-10-31 23:00:00','2018-10-29 15:03:10','2018-10-29 15:03:10'),(8,8,1579,'1981-12-16 05:45:35','2019-10-31 23:00:00','2018-10-29 15:03:10','2018-10-29 15:03:10'),(9,9,2705,'1980-04-05 15:38:40','2019-10-31 23:00:00','2018-10-29 15:03:10','2018-10-29 15:03:10'),(10,10,7100,'1995-01-30 15:57:20','2019-10-31 23:00:00','2018-10-29 15:03:10','2018-10-29 15:03:10'),(11,11,1099,'1986-04-29 02:16:20','2019-10-31 23:00:00','2018-10-29 15:03:10','2018-10-29 15:03:10'),(12,12,5165,'1986-09-11 07:12:01','2019-10-31 23:00:00','2018-10-29 15:03:10','2018-10-29 15:03:10'),(13,13,2651,'1989-07-06 21:53:20','2019-10-31 23:00:00','2018-10-29 15:03:10','2018-10-29 15:03:10'),(14,14,1338,'2016-12-18 21:11:56','2019-10-31 23:00:00','2018-10-29 15:03:10','2018-10-29 15:03:10'),(15,15,4957,'2012-07-19 14:16:45','2019-10-31 23:00:00','2018-10-29 15:03:10','2018-10-29 15:03:10'),(16,16,4200,'2018-01-22 15:19:31','2019-10-31 23:00:00','2018-10-29 15:03:10','2018-10-29 15:03:10'),(17,17,46,'1974-12-31 02:24:30','2019-10-31 23:00:00','2018-10-29 15:03:10','2018-10-29 15:03:10'),(18,18,7064,'1975-06-08 20:08:53','2019-10-31 23:00:00','2018-10-29 15:03:11','2018-10-29 15:03:11'),(19,19,2009,'1977-02-12 07:12:06','2019-10-31 23:00:00','2018-10-29 15:03:11','2018-10-29 15:03:11'),(20,20,6048,'1995-04-02 01:40:34','2019-10-31 23:00:00','2018-10-29 15:03:11','2018-10-29 15:03:11'),(21,21,9800,'1983-05-11 16:15:33','2019-10-31 23:00:00','2018-10-29 15:03:11','2018-10-29 15:03:11'),(22,22,1670,'2005-04-09 22:18:38','2019-10-31 23:00:00','2018-10-29 15:03:11','2018-10-29 15:03:11'),(23,23,1467,'2018-09-23 00:04:45','2019-10-31 23:00:00','2018-10-29 15:03:11','2018-10-29 15:03:11'),(24,24,7704,'2004-12-14 07:21:26','2019-10-31 23:00:00','2018-10-29 15:03:11','2018-10-29 15:03:11'),(25,25,2364,'1996-11-29 06:56:50','2019-10-31 23:00:00','2018-10-29 15:03:11','2018-10-29 15:03:11'),(26,26,2164,'1972-10-07 00:44:34','2019-10-31 23:00:00','2018-10-29 15:03:11','2018-10-29 15:03:11'),(27,27,975,'1987-10-20 21:49:42','2019-10-31 23:00:00','2018-10-29 15:03:11','2018-10-29 15:03:11'),(28,28,109,'1979-10-11 02:59:12','2019-10-31 23:00:00','2018-10-29 15:03:11','2018-10-29 15:03:11'),(29,29,545,'1990-06-19 09:13:32','2019-10-31 23:00:00','2018-10-29 15:03:11','2018-10-29 15:03:11'),(30,30,5218,'2002-08-22 01:07:33','2019-10-31 23:00:00','2018-10-29 15:03:11','2018-10-29 15:03:11'),(31,31,5687,'1985-03-10 19:12:51','2019-10-31 23:00:00','2018-10-29 15:03:11','2018-10-29 15:03:11'),(32,32,7753,'1977-05-05 02:02:30','2019-10-31 23:00:00','2018-10-29 15:03:11','2018-10-29 15:03:11'),(33,33,3527,'1983-12-25 14:44:29','2019-10-31 23:00:00','2018-10-29 15:03:11','2018-10-29 15:03:11'),(34,34,2230,'1999-05-29 03:59:42','2019-10-31 23:00:00','2018-10-29 15:03:11','2018-10-29 15:03:11'),(35,35,6974,'2010-02-08 11:11:54','2019-10-31 23:00:00','2018-10-29 15:03:11','2018-10-29 15:03:11'),(36,36,9425,'2002-07-29 10:02:38','2019-10-31 23:00:00','2018-10-29 15:03:11','2018-10-29 15:03:11'),(37,37,891,'2003-03-13 03:23:13','2019-10-31 23:00:00','2018-10-29 15:03:11','2018-10-29 15:03:11'),(38,38,9276,'1996-10-05 06:22:59','2019-10-31 23:00:00','2018-10-29 15:03:11','2018-10-29 15:03:11'),(39,39,4424,'1994-01-24 02:33:15','2019-10-31 23:00:00','2018-10-29 15:03:11','2018-10-29 15:03:11'),(40,40,8235,'1985-03-04 15:47:29','2019-10-31 23:00:00','2018-10-29 15:03:12','2018-10-29 15:03:12'),(41,41,6189,'1985-07-03 02:36:38','2019-10-31 23:00:00','2018-10-29 15:03:12','2018-10-29 15:03:12'),(42,42,8367,'2000-03-13 10:41:56','2019-10-31 23:00:00','2018-10-29 15:03:12','2018-10-29 15:03:12'),(43,43,3156,'1998-05-09 05:45:01','2019-10-31 23:00:00','2018-10-29 15:03:12','2018-10-29 15:03:12'),(44,44,4494,'2004-06-04 05:52:13','2019-10-31 23:00:00','2018-10-29 15:03:12','2018-10-29 15:03:12'),(45,45,9645,'1982-07-01 06:36:49','2019-10-31 23:00:00','2018-10-29 15:03:12','2018-10-29 15:03:12'),(46,46,82,'1972-10-13 14:30:22','2019-10-31 23:00:00','2018-10-29 15:03:12','2018-10-29 15:03:12'),(47,47,1978,'1990-06-06 19:51:46','2019-10-31 23:00:00','2018-10-29 15:03:12','2018-10-29 15:03:12'),(48,48,3205,'2013-07-28 02:54:37','2019-10-31 23:00:00','2018-10-29 15:03:12','2018-10-29 15:03:12'),(49,49,4282,'1987-09-04 19:46:53','2019-10-31 23:00:00','2018-10-29 15:03:12','2018-10-29 15:03:12'),(50,50,168,'1977-11-26 06:17:59','2019-10-31 23:00:00','2018-10-29 15:03:12','2018-10-29 15:03:12');
/*!40000 ALTER TABLE `bid_packs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bid_wallets`
--

DROP TABLE IF EXISTS `bid_wallets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bid_wallets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `narration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` decimal(8,2) NOT NULL DEFAULT '0.00',
  `debit` decimal(8,2) NOT NULL DEFAULT '0.00',
  `trans_date` timestamp NULL DEFAULT NULL,
  `value_date` timestamp NULL DEFAULT NULL,
  `trans_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bid_wallets`
--

LOCK TABLES `bid_wallets` WRITE;
/*!40000 ALTER TABLE `bid_wallets` DISABLE KEYS */;
/*!40000 ALTER TABLE `bid_wallets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bideds`
--

DROP TABLE IF EXISTS `bideds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bideds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bidder` int(11) NOT NULL,
  `bid_amount` decimal(8,2) NOT NULL,
  `bid_value` int(11) NOT NULL,
  `bid_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bideds`
--

LOCK TABLES `bideds` WRITE;
/*!40000 ALTER TABLE `bideds` DISABLE KEYS */;
INSERT INTO `bideds` VALUES (1,37,9731.00,13,'2018-10-29 15:28:08','2018-10-29 14:28:08','2018-10-29 14:28:08'),(2,21,8671.00,19,'2018-10-29 15:28:08','2018-10-29 14:28:08','2018-10-29 14:28:08'),(3,37,2266.00,12,'2018-10-29 15:28:08','2018-10-29 14:28:08','2018-10-29 14:28:08'),(4,32,314.00,69,'2018-10-29 15:28:08','2018-10-29 14:28:08','2018-10-29 14:28:08'),(5,38,9272.00,41,'2018-10-29 15:28:08','2018-10-29 14:28:08','2018-10-29 14:28:08'),(6,35,6236.00,99,'2018-10-29 15:28:08','2018-10-29 14:28:08','2018-10-29 14:28:08'),(7,26,1577.00,56,'2018-10-29 15:28:08','2018-10-29 14:28:08','2018-10-29 14:28:08'),(8,29,5107.00,10,'2018-10-29 15:28:09','2018-10-29 14:28:09','2018-10-29 14:28:09'),(9,35,9274.00,4,'2018-10-29 15:28:09','2018-10-29 14:28:09','2018-10-29 14:28:09'),(10,26,4057.00,32,'2018-10-29 15:28:09','2018-10-29 14:28:09','2018-10-29 14:28:09');
/*!40000 ALTER TABLE `bideds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyds`
--

DROP TABLE IF EXISTS `buyds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buyds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `auction_id` int(11) NOT NULL,
  `buyer` int(11) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `buy_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyds`
--

LOCK TABLES `buyds` WRITE;
/*!40000 ALTER TABLE `buyds` DISABLE KEYS */;
/*!40000 ALTER TABLE `buyds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2018_10_25_163400_create_addresses_table',2),(4,'2018_10_25_164221_create_auctions_table',2),(5,'2018_10_25_165032_create_bideds_table',2),(6,'2018_10_26_093701_create_buyds_table',3),(7,'2018_10_26_094302_create_pixes_table',3),(8,'2018_10_29_111838_create_bid_packs_table',4),(9,'2018_10_29_112501_create_bid_wallets_table',5),(10,'2018_10_29_112933_create_win_bids_table',6);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pixes`
--

DROP TABLE IF EXISTS `pixes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pixes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `auction_id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploadedby` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pixes`
--

LOCK TABLES `pixes` WRITE;
/*!40000 ALTER TABLE `pixes` DISABLE KEYS */;
/*!40000 ALTER TABLE `pixes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uonline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_unique` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Abayomi O. Apetu','abayomismart@gmail.com','08063582789','Male',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1982-09-12 11:11:39','2018-10-29 12:26:53',0),(2,'Stephanie Funk','cleta91@hotmail.com','+3209632858533','Female',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1978-12-11 01:49:14','2018-10-29 12:26:53',0),(3,'Bette Muller Jr.','selena.jerde@gmail.com','+7255888122256','Male',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'2008-04-29 12:38:21','2018-10-29 12:26:53',0),(4,'Jamel Ratke MD','evandervort@gmail.com','+4627222576539','Female',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'2016-09-28 07:22:28','2018-10-29 12:26:53',0),(5,'Dr. Immanuel Christiansen','sanford40@hotmail.com','+2713102898513','Male',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1970-01-09 22:08:18','2018-10-29 12:26:53',0),(6,'Jennings Frami','mandy.kris@yahoo.com','+9252849838896','Female',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'2000-04-24 16:49:46','2018-10-29 12:26:53',0),(7,'Nona Reichel DDS','mcdermott.glennie@gmail.com','+4240477272946','Male',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1995-01-27 18:07:17','2018-10-29 12:26:53',0),(8,'Dereck Maggio II','hkling@hotmail.com','+5741647163736','Female',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1988-09-18 07:41:11','2018-10-29 12:26:53',0),(9,'Olin Douglas V','olson.lenny@hotmail.com','+7131571622690','Male',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'2015-05-29 12:51:19','2018-10-29 12:26:53',0),(10,'Laurel Mueller','florian84@gmail.com','+7282748387797','Female',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1994-07-25 09:04:28','2018-10-29 12:26:53',0),(11,'Delia Feeney','neoma.kautzer@gmail.com','+5316146225857','Male',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1974-03-21 12:10:42','2018-10-29 12:26:53',0),(12,'Prof. Iva Klocko DVM','thaddeus40@gmail.com','+3196591219412','Female',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1982-07-26 16:56:39','2018-10-29 12:26:53',0),(13,'Omari Armstrong PhD','jovany74@gmail.com','+9229276553149','Male',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'2004-01-11 03:04:30','2018-10-29 12:26:53',0),(14,'June Mohr','rherman@yahoo.com','+5669398983545','Female',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1991-10-20 08:57:15','2018-10-29 12:26:53',0),(15,'Dillan Kilback','hans15@hotmail.com','+9158474446350','Male',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'2012-09-06 10:10:12','2018-10-29 12:26:53',0),(16,'Daron Daugherty','fcronin@yahoo.com','+2535434298664','Female',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1972-10-14 16:06:01','2018-10-29 12:26:53',0),(17,'Cornelius Ortiz','nolan.letitia@yahoo.com','+8927760981741','Male',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1990-07-16 14:56:00','2018-10-29 12:26:53',0),(18,'Deontae Nienow','gladys.gaylord@hotmail.com','+1471120626674','Female',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1976-01-01 19:05:48','2018-10-29 12:26:53',0),(19,'Esta Jast IV','herminio.herman@gmail.com','+4382721716164','Male',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1984-11-03 12:54:12','2018-10-29 12:26:53',0),(20,'Magnus Pacocha','frieda.gutkowski@gmail.com','+2338147071422','Female',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1974-05-06 16:25:21','2018-10-29 12:26:53',0),(21,'Mr. Reagan Bruen V','buckridge.haleigh@hotmail.com','+9334916386700','Male',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1975-12-08 13:04:53','2018-10-29 12:26:53',0),(22,'Prof. Kirk Doyle','jnitzsche@gmail.com','+1297452270149','Female',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'2011-11-13 04:08:06','2018-10-29 12:26:54',0),(23,'Jordy Feest DVM','albina42@yahoo.com','+7906748048693','Male',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'2010-01-10 11:19:28','2018-10-29 12:26:54',0),(24,'Dr. Price Gorczany','wnader@hotmail.com','+9751142009317','Female',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1991-09-27 05:01:38','2018-10-29 12:26:54',0),(25,'Fermin Cronin','alena71@yahoo.com','+6927676428282','Male',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1980-12-25 17:54:09','2018-10-29 12:26:54',0),(26,'Ms. Arianna Stehr','kuhlman.litzy@hotmail.com','+3116951876439','Female',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'2002-02-26 19:18:59','2018-10-29 12:26:54',0),(27,'Shaylee Roberts','kaden.grant@yahoo.com','+4862504378907','Male',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1973-05-01 04:43:44','2018-10-29 12:26:54',0),(28,'Elroy Mante','bartell.justen@gmail.com','+7947164433012','Female',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1978-01-29 15:35:12','2018-10-29 12:26:54',0),(29,'Enrique Emard','samanta.larkin@gmail.com','+1322524491130','Male',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1994-07-28 02:12:54','2018-10-29 12:26:54',0),(30,'Mr. Garnet Stokes V','branson.hill@gmail.com','+4562037761350','Female',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'2002-11-02 07:50:19','2018-10-29 12:26:54',0),(31,'Cynthia Renner','nannie.stehr@yahoo.com','+6297089582705','Male',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'2004-12-29 10:22:12','2018-10-29 12:26:54',0),(32,'Jack Kessler','laisha.lowe@hotmail.com','+1853764779584','Female',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1978-12-14 23:33:58','2018-10-29 12:26:54',0),(33,'Marcelle Bins','kenneth.yundt@hotmail.com','+1978982048694','Male',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'2000-10-17 12:54:40','2018-10-29 12:26:54',0),(34,'Earnestine Schulist','sjaskolski@gmail.com','+3789560456585','Female',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1979-08-14 13:09:01','2018-10-29 12:26:54',0),(35,'Henri Erdman','zkunde@hotmail.com','+4770563808931','Male',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1995-08-22 15:51:46','2018-10-29 12:26:54',0),(36,'Kaylee Lynch','green.elsie@hotmail.com','+6500450367125','Female',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'2001-12-19 07:48:39','2018-10-29 12:26:54',0),(37,'Miss Eliane Dicki MD','norris61@yahoo.com','+1678100845864','Male',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1988-11-03 12:54:56','2018-10-29 12:26:54',0),(38,'Julianne Barrows III','ppouros@yahoo.com','+7723102003635','Female',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'2010-08-11 07:47:38','2018-10-29 12:26:54',0),(39,'Devyn Harvey','beatty.ayana@yahoo.com','+6714054678473','Male',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'2010-10-19 15:53:01','2018-10-29 12:26:54',0),(40,'Jaydon Mohr','ledner.maida@gmail.com','+4369852002597','Female',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1973-06-01 08:15:23','2018-10-29 12:26:54',0),(41,'German Kris II','krystal42@gmail.com','+8043119250128','Male',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'2008-09-04 11:38:59','2018-10-29 12:26:54',0),(42,'Dax Murray','lvon@yahoo.com','+3413336467372','Female',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1987-02-12 05:00:48','2018-10-29 12:26:54',0),(43,'Herta Cremin','meghan.kub@hotmail.com','+8022532579676','Male',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'2012-07-12 00:27:26','2018-10-29 12:26:54',0),(44,'Abbey McCullough','kenyatta.carter@yahoo.com','+4297868521420','Female',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1978-07-10 16:30:56','2018-10-29 12:26:54',0),(45,'Enrique Kemmer','tharber@hotmail.com','+3888067274408','Male',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'2014-08-15 04:37:05','2018-10-29 12:26:54',0),(46,'Felicia Turner','lowe.beatrice@yahoo.com','+2822402858715','Female',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'2004-01-14 01:30:37','2018-10-29 12:26:54',0),(47,'Prof. Tom Reichert','xgerhold@gmail.com','+2542827569767','Male',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1976-09-07 02:49:44','2018-10-29 12:26:54',0),(48,'Selena Heathcote','marcelle27@gmail.com','+4675335248109','Female',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1999-08-18 10:59:33','2018-10-29 12:26:55',0),(49,'Toni Roberts','davin03@yahoo.com','+9140609715359','Male',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'1982-10-19 05:48:46','2018-10-29 12:26:55',0),(50,'Tyson Ratke','juliet.jast@yahoo.com','+9111223763968','Female',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'2008-03-24 10:15:26','2018-10-29 12:26:55',0),(51,'Dr. Burnice Gislason','roosevelt55@yahoo.com','+9705609738094','Male',NULL,NULL,'$2y$10$TRyxTTlUJem4wcGAqG2DKOtlohyxDyR4Bk0/eQOUKQO8MaRblLK4S',NULL,'2005-04-15 06:09:54','2018-10-29 12:26:55',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `win_bids`
--

DROP TABLE IF EXISTS `win_bids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `win_bids` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `auction_id` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `date_won` timestamp NULL DEFAULT NULL,
  `date_paid` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `win_bids`
--

LOCK TABLES `win_bids` WRITE;
/*!40000 ALTER TABLE `win_bids` DISABLE KEYS */;
/*!40000 ALTER TABLE `win_bids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `smartbid`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `smartbid` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `smartbid`;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(25) NOT NULL,
  `shipping` tinytext NOT NULL,
  `home_phone` varchar(15) NOT NULL,
  `office_phone` varchar(15) NOT NULL,
  `status` char(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auctions`
--

DROP TABLE IF EXISTS `auctions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auctions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(254) NOT NULL,
  `realvalue` float(12,4) NOT NULL,
  `auctionprice` float(12,4) NOT NULL,
  `bidvalue` int(11) NOT NULL,
  `bidsclose` char(1) DEFAULT '0',
  `mainpix` varchar(50) NOT NULL,
  `status` char(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auctions`
--

LOCK TABLES `auctions` WRITE;
/*!40000 ALTER TABLE `auctions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auctions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bideds`
--

DROP TABLE IF EXISTS `bideds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bideds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bidder` varchar(25) NOT NULL,
  `bid_amount` float(12,4) DEFAULT NULL,
  `bid_value` int(11) NOT NULL,
  `bid_date` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bideds`
--

LOCK TABLES `bideds` WRITE;
/*!40000 ALTER TABLE `bideds` DISABLE KEYS */;
/*!40000 ALTER TABLE `bideds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bidpacks`
--

DROP TABLE IF EXISTS `bidpacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bidpacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(25) NOT NULL,
  `alloted` float(12,4) NOT NULL,
  `datealloted` datetime NOT NULL,
  `expirydate` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bidpacks`
--

LOCK TABLES `bidpacks` WRITE;
/*!40000 ALTER TABLE `bidpacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `bidpacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bidwallets`
--

DROP TABLE IF EXISTS `bidwallets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bidwallets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(25) NOT NULL,
  `narration` tinytext NOT NULL,
  `credit` float(12,4) NOT NULL,
  `debit` float(12,4) NOT NULL,
  `trans_date` datetime NOT NULL,
  `value_date` date NOT NULL,
  `trans_ref` varchar(25) DEFAULT NULL,
  `channel` varchar(25) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bidwallets`
--

LOCK TABLES `bidwallets` WRITE;
/*!40000 ALTER TABLE `bidwallets` DISABLE KEYS */;
/*!40000 ALTER TABLE `bidwallets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyds`
--

DROP TABLE IF EXISTS `buyds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buyds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auction_id` int(11) NOT NULL,
  `buyer` varchar(25) NOT NULL,
  `amount` float(12,4) NOT NULL,
  `buy_date` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyds`
--

LOCK TABLES `buyds` WRITE;
/*!40000 ALTER TABLE `buyds` DISABLE KEYS */;
/*!40000 ALTER TABLE `buyds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pixes`
--

DROP TABLE IF EXISTS `pixes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pixes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL,
  `file_name` varchar(50) NOT NULL,
  `description` varchar(254) NOT NULL,
  `uploadedby` varchar(25) NOT NULL,
  `status` char(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pixes`
--

LOCK TABLES `pixes` WRITE;
/*!40000 ALTER TABLE `pixes` DISABLE KEYS */;
/*!40000 ALTER TABLE `pixes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(25) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `uonline` char(1) DEFAULT '0',
  `status` char(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `authentication_token` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abayomismart','Apetu Abayomi O.','aherceo','abayomismart@gmail.com','08063582789','Male','0','0','2018-10-20 00:00:00','2018-10-23 00:00:00','2050-10-20 00:00:00','hjfdghdsghfg');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `winbids`
--

DROP TABLE IF EXISTS `winbids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `winbids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(25) NOT NULL,
  `auction_id` int(11) NOT NULL,
  `price` float(12,4) NOT NULL,
  `datewon` datetime NOT NULL,
  `datepaid` datetime NOT NULL,
  `status` char(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `winbids`
--

LOCK TABLES `winbids` WRITE;
/*!40000 ALTER TABLE `winbids` DISABLE KEYS */;
/*!40000 ALTER TABLE `winbids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `events`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `events` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `events`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `csn` int(11) NOT NULL,
  `block` varchar(5) NOT NULL,
  `street_name` tinytext NOT NULL,
  `landmark` varchar(50) DEFAULT NULL,
  `neighborhood` varchar(50) DEFAULT NULL,
  `location` varchar(25) DEFAULT NULL,
  `latlng` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `role` varchar(25) DEFAULT NULL,
  `online` char(1) DEFAULT '0',
  `lastlogin` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centre`
--

DROP TABLE IF EXISTS `centre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `centre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `centre_name` tinytext NOT NULL,
  `capacity` int(11) NOT NULL,
  `rent` float(12,4) NOT NULL,
  `facilities` tinytext NOT NULL,
  `imaged` varchar(50) DEFAULT NULL,
  `contactperson` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centre`
--

LOCK TABLES `centre` WRITE;
/*!40000 ALTER TABLE `centre` DISABLE KEYS */;
/*!40000 ALTER TABLE `centre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `town` tinytext NOT NULL,
  `city` tinytext NOT NULL,
  `state` varchar(45) NOT NULL,
  `country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pix`
--

DROP TABLE IF EXISTS `pix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pix` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `csn` int(11) NOT NULL,
  `pic_file_name` varchar(20) NOT NULL,
  `description` tinytext,
  `uploadedby` varchar(25) NOT NULL,
  `status` char(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pix`
--

LOCK TABLES `pix` WRITE;
/*!40000 ALTER TABLE `pix` DISABLE KEYS */;
/*!40000 ALTER TABLE `pix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(25) NOT NULL,
  `officephone` varchar(15) NOT NULL,
  `mobilephone` varchar(15) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `registered_by` varchar(25) NOT NULL,
  `status` char(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-30 14:05:37
