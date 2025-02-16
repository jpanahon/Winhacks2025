/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.5.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: userDatabase
-- ------------------------------------------------------
-- Server version	11.5.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `gamedata`
--

DROP TABLE IF EXISTS `gamedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamedata` (
  `MathScore` int(11) DEFAULT NULL,
  `EnglishScore` int(11) DEFAULT NULL,
  `ComputerScore` int(11) DEFAULT NULL,
  `Userid` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamedata`
--

LOCK TABLES `gamedata` WRITE;
/*!40000 ALTER TABLE `gamedata` DISABLE KEYS */;
/*!40000 ALTER TABLE `gamedata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mathdata`
--

DROP TABLE IF EXISTS `mathdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mathdata` (
  `Level` int(11) DEFAULT NULL,
  `Question` int(11) DEFAULT NULL,
  `Score` int(11) DEFAULT NULL,
  `Userid` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mathdata`
--

LOCK TABLES `mathdata` WRITE;
/*!40000 ALTER TABLE `mathdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `mathdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mathquestions`
--

DROP TABLE IF EXISTS `mathquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mathquestions` (
  `Level` int(11) DEFAULT NULL,
  `QuestionNumber` int(11) DEFAULT NULL,
  `Question` varchar(256) DEFAULT NULL,
  `Answer` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mathquestions`
--

LOCK TABLES `mathquestions` WRITE;
/*!40000 ALTER TABLE `mathquestions` DISABLE KEYS */;
INSERT INTO `mathquestions` VALUES
(1,1,'5+4','9'),
(1,2,'7+3','10'),
(1,3,'3-2','1'),
(1,4,'1-4','-3'),
(1,5,'5*3','15'),
(1,6,'7*9','63'),
(1,7,'6/3','2'),
(1,8,'27/3','9'),
(1,9,'2^5','32'),
(1,10,'3^3','27'),
(2,11,'x^2 + 2x - 8','-4,2'),
(2,12,'x^2 - 5x + 6','2,3'),
(2,13,'x^2 + 3x - 4','-4,1'),
(2,14,'x^2 - 3x + 10','-2,5'),
(2,15,'x^2 - x - 6','-2,3'),
(2,16,'x^2 + 4x - 12','-6,2'),
(2,17,'x^2 - 6x + 9','3,3'),
(2,18,'x^2 - 4x + 3','1,3'),
(2,19,'x^2 - 6x + 8','2,4'),
(2,20,'x^2 + 3x - 4','-4,1'),
(3,21,'x^3 - 2x^2 - x + 2','-1,1,2'),
(3,22,'x^3 + 3x^2 - 4x - 12','-4,-3,1'),
(3,23,'x^3 - 6x^2 + 11x - 6','1,2,3'),
(3,24,'x^3 - 3x^2 - 4x + 12','-4,2,3'),
(3,25,'x^3 - 6x^2 + 9x','0,3,3'),
(3,26,'x^3 + x^2 - 6x - 6','-3,1,2'),
(3,27,'x^3 - 3x^2 + 3x - 1','1,1,1'),
(3,28,'x^3 - 4x^2 + 4x','0,2,2'),
(3,29,'x^3 + 2x^2 - 8x - 16','-4,-2,2'),
(3,30,'x^3 - 2x^2 - x + 2','-1,1,2');
/*!40000 ALTER TABLE `mathquestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdata`
--

DROP TABLE IF EXISTS `userdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userdata` (
  `Userid` varchar(256) DEFAULT NULL,
  `TotalScore` int(11) DEFAULT NULL,
  `Password` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdata`
--

LOCK TABLES `userdata` WRITE;
/*!40000 ALTER TABLE `userdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `userdata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-02-16 11:22:09
