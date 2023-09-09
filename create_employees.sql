CREATE DATABASE  IF NOT EXISTS `testdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `testdb`;
-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: 172.17.0.2    Database: testdb
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(150) NOT NULL,
  `phone_number` varchar(13) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Marketa','Amery','mamery0@sohu.com','62693 Steensland Center','(684) 4950361'),(2,'Mia','Goodee','mgoodee1@wikia.com','24150 Evergreen Hill','(963) 9176397'),(3,'Gabriel','Attrie',NULL,'66574 Kennedy Pass','(447) 4376343'),(4,'Tilly','Rippon',NULL,'80674 Stone Corner Parkway','(651) 5551112'),(5,'Kacie','Sedger','ksedger4@163.com','6 Ohio Park','(925) 3775774'),(6,'Jason','Deans','jdeans5@skyrock.com','16373 Boyd Terrace','(750) 3408755'),(7,'Fancie','Rennebach','frennebach6@unesco.org','2 Hanover Plaza','(376) 2449538'),(8,'Tully','Hoopper','thoopper7@upenn.edu','65345 Eggendart Avenue','(576) 4549139'),(9,'Craggie','Mayward','cmayward8@posterous.com','0007 Old Gate Street','(404) 4234094'),(10,'Kerri','Calrow','kcalrow9@hud.gov','39 Mariners Cove Avenue','(816) 5016529'),(11,'Melba','Sear','mseara@google.fr','7720 Huxley Circle','(706) 9967904'),(12,'Shellysheldon','Zimmer',NULL,'1271 Tony Plaza','(398) 8332084'),(13,'Jorey','Twamley','jtwamleyc@geocities.com','0 Farwell Junction','(621) 4992051'),(14,'Meghan','McManus','mmcmanusd@slate.com','6687 Huxley Pass','(110) 3081875'),(15,'Oren','Barthropp',NULL,'07709 Village Circle','(670) 1962672'),(16,'Alexia','Rendell','arendellf@wordpress.org','2766 Debra Hill','(841) 3861980'),(17,'Ollie','Mallabone','omallaboneg@paginegialle.it','9126 Messerschmidt Lane','(570) 2574740'),(18,'Maryjane','Mynott','mmynotth@nationalgeographic.com','959 Huxley Way','(560) 4567678'),(19,'Serge','Bortolomei','sbortolomeii@mit.edu','481 Division Crossing','(543) 5875670'),(20,'Dermot','Panchin','dpanchinj@about.me','5124 Blue Bill Park Lane','(766) 5945889'),(21,'Nerti','Berzon',NULL,'3103 Bultman Street','(767) 7503877'),(22,'Millard','Bodleigh','mbodleighl@goo.gl','924 Waubesa Junction','(779) 6832010'),(23,'Shandra','Prendeguest','sprendeguestm@mail.ru','3 Mayer Parkway','(499) 1696863'),(24,'Chrissie','Hunting','chuntingn@g.co','018 Pierstorff Trail','(200) 6979116'),(25,'Linn','Polson',NULL,'1 Drewry Junction','(363) 2718709'),(26,'Carmine','Melhuish','cmelhuishp@hud.gov','3635 Lindbergh Plaza','(453) 2228512'),(27,'Chelsie','Tabbernor','ctabbernorq@buzzfeed.com','76775 Kinsman Street','(556) 6960386'),(28,'Stafford','Scotter','sscotterr@wiley.com','87014 Del Mar Trail','(886) 3303639'),(29,'Roley','Damrel','rdamrels@google.ca','42 Summerview Terrace','(378) 9269262'),(30,'Marylin','Lillistone',NULL,'53 Mayfield Road','(909) 7131619'),(31,'Augy','Friday',NULL,'82164 Spohn Junction','(846) 4360427'),(32,'Bendite','Halwell','bhalwellv@imgur.com','47049 Mallard Drive','(535) 9144296'),(33,'Sergei','Pirouet','spirouetw@theguardian.com','8 Packers Point','(518) 5796084'),(34,'Nanon','Crookshank','ncrookshankx@accuweather.com','874 Daystar Way','(171) 8322312'),(35,'Neall','Nary','nnaryy@csmonitor.com','47919 Scott Park','(253) 2179465'),(36,'Holden','Mangeon','hmangeonz@e-recht24.de','7918 Esker Street','(922) 6285454'),(37,'Jessamine','Spurnier','jspurnier10@hugedomains.com','589 Sunfield Plaza','(155) 7350620'),(38,'Cesya','Fluin','cfluin11@dagondesign.com','7 John Wall Terrace','(700) 9613725'),(39,'Shamus','Elcum','selcum12@psu.edu','790 Cottonwood Point','(765) 6399622'),(40,'Dunc','Laydon',NULL,'84 Spaight Crossing','(182) 1391268'),(41,'Katerina','De Maria',NULL,'888 Valley Edge Plaza','(815) 1910995'),(42,'Susan','L\'Episcopi','slepiscopi15@ibm.com','301 Elgar Way','(294) 6511108'),(43,'Peg','Staddom','pstaddom16@devhub.com','57835 Meadow Valley Pass','(121) 3322030'),(44,'Steven','Fevier','sfevier17@bluehost.com','47609 Superior Lane','(408) 5630200'),(45,'Moshe','Snell','msnell18@gmpg.org','27 Hooker Crossing','(777) 8765634'),(46,'Maighdiln','Hutfield','mhutfield19@arizona.edu','3418 Mosinee Park','(460) 8152343'),(47,'Caspar','Kuhn','ckuhn1a@va.gov','38324 Melby Circle','(334) 1492153'),(48,'Sarita','Lowcock','slowcock1b@trellian.com','6503 Monica Alley','(837) 4543090'),(49,'Aigneis','Lempke','alempke1c@zdnet.com','25 Springs Center','(458) 6002590'),(50,'Donaugh','Huckerby','dhuckerby1d@slideshare.net','20 Pepper Wood Point','(925) 2339881'),(51,'Trumaine','Ruffler','truffler1e@about.com','303 Meadow Vale Way','(880) 1748887'),(52,'Tawsha','Battie','tbattie1f@yellowpages.com','1 Hoffman Road','(360) 2988473'),(53,'Adriane','Hinks','ahinks1g@arstechnica.com','68 Delladonna Alley','(612) 5689332'),(54,'Julita','Sowood','jsowood1h@ft.com','81891 Fisk Court','(251) 2590151'),(55,'Eartha','Barkus','ebarkus1i@reference.com','698 Sauthoff Trail','(620) 6142973'),(56,'Bibby','Masterson','bmasterson1j@booking.com','961 Fairview Drive','(900) 9104200'),(57,'Farr','Lambarth',NULL,'876 Onsgard Lane','(183) 4085252'),(58,'Tam','Snasel','tsnasel1l@weibo.com','0 Gerald Center','(589) 3320956'),(59,'Elliott','Eades','eeades1m@themeforest.net','68463 Cardinal Place','(411) 6655597'),(60,'Dulcie','Thomann',NULL,'0252 Prentice Drive','(946) 8697008'),(61,'Pennie','Teall','pteall1o@hc360.com','63 Blaine Center','(634) 2055636'),(62,'Horton','Greenig',NULL,'9 Eastlawn Avenue','(390) 5739999'),(63,'Bonita','Palfree','bpalfree1q@cmu.edu','5446 Farragut Circle','(934) 1523762'),(64,'Valry','Hirjak','vhirjak1r@earthlink.net','02173 Green Drive','(257) 8337839'),(65,'Gardie','Hoyer','ghoyer1s@examiner.com','8946 Kim Circle','(496) 4312622'),(66,'Elana','Ogilvie','eogilvie1t@answers.com','45 Kipling Junction','(208) 7101745'),(67,'Kelsey','Howett',NULL,'89 North Alley','(348) 9160561'),(68,'Tallulah','Beresford','tberesford1v@blogs.com','29780 Monica Lane','(304) 1238950'),(69,'Cleve','Goodbairn',NULL,'4 Lillian Junction','(821) 8213692'),(70,'Hayes','Gillis','hgillis1x@timesonline.co.uk','4364 Old Gate Park','(690) 2859300'),(71,'Brenna','Bellwood','bbellwood1y@seattletimes.com','172 Summer Ridge Hill','(653) 8770095'),(72,'Clare','Freiburger','cfreiburger1z@seattletimes.com','742 Nelson Trail','(584) 1470147'),(73,'Reece','Bevis',NULL,'4 Service Pass','(573) 6673000'),(74,'Harwilll','Whiskin','hwhiskin21@freewebs.com','12570 Sundown Pass','(617) 4831817'),(75,'Audry','Kobpa',NULL,'3 Westerfield Court','(198) 1575076'),(76,'Kris','Spinetti',NULL,'890 Kipling Crossing','(749) 7844105'),(77,'Moore','Gouinlock','mgouinlock24@cyberchimps.com','2 Sherman Drive','(774) 8929480'),(78,'Madeline','Briscoe','mbriscoe25@wix.com','25 Spaight Point','(165) 6012104'),(79,'Hanan','Philippeaux',NULL,'18007 Veith Pass','(879) 6011794'),(80,'Arnie','Labrenz','alabrenz27@wisc.edu','6 Bayside Way','(357) 9171024'),(81,'Robinet','Janiszewski','rjaniszewski28@goodreads.com','554 Alpine Parkway','(793) 7305267'),(82,'Lana','Spellward','lspellward29@slashdot.org','1 Cordelia Alley','(283) 9752504'),(83,'Goran','Rotte','grotte2a@dyndns.org','217 Anzinger Junction','(315) 5021700'),(84,'Cori','Hubble',NULL,'343 Butterfield Lane','(305) 9104557'),(85,'Cullen','Dempsey',NULL,'62027 Pearson Hill','(729) 7799516'),(86,'Leona','Ballinghall',NULL,'471 Farragut Parkway','(971) 9649445'),(87,'Deanne','Robertet','drobertet2e@guardian.co.uk','66812 Messerschmidt Lane','(134) 6629228'),(88,'Devy','Crothers','dcrothers2f@1688.com','01 Holy Cross Road','(550) 9224805'),(89,'Sandie','Slimme','sslimme2g@intel.com','96 Laurel Center','(520) 5955844'),(90,'Reuven','Chazerand','rchazerand2h@weibo.com','287 Norway Maple Plaza','(690) 4150135'),(91,'Louisa','McDirmid','lmcdirmid2i@biglobe.ne.jp','2 Trailsway Parkway','(946) 2329630'),(92,'Marion','Siddell','msiddell2j@ask.com','5217 Hanson Road','(290) 6491853'),(93,'Verna','Anslow','vanslow2k@statcounter.com','11179 Melvin Way','(742) 7591818'),(94,'Bill','Younge','byounge2l@reuters.com','2113 Arizona Lane','(821) 8258238'),(95,'Kipp','MacCombe','kmaccombe2m@discovery.com','43 Corben Crossing','(896) 9462991'),(96,'Gwyneth','Stoop','gstoop2n@nasa.gov','7 Melvin Junction','(343) 8812329'),(97,'Lida','Woodcock',NULL,'464 Bashford Trail','(530) 1737589'),(98,'Sibyl','Sherwood','ssherwood2p@weather.com','170 Lakewood Gardens Center','(390) 1544487'),(99,'Bailie','Swancock',NULL,'509 Welch Trail','(402) 3168488'),(100,'Bonnie','Caird','bcaird2r@youku.com','595 Anderson Street','(648) 2679439');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-09 12:10:19
