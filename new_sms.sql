CREATE DATABASE  IF NOT EXISTS `new_sms` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `new_sms`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: new_sms
-- ------------------------------------------------------
-- Server version	5.7.31-log

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `account_id` varchar(10) NOT NULL,
  `_account` varchar(50) DEFAULT NULL,
  `_password` varchar(200) DEFAULT NULL,
  `_role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('117013','117013','ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413','teacher'),('123234','123234','ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413','teacher'),('20182928','20182928','ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413','student'),('20182929','20182929','ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413','student'),('20182930','20182930','3a6e7d0a53dbeb54b227b5612939c9ea4be022bfebfc71745a9510a089a9c0ae9a6e60caf3659782fa8f7ba94890712e846af852fb26a4c135f7b8aab237c9f1','student'),('20192000','20192000','ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413','student'),('234345','234345','2e0b595694355d29d4f05436fde23023e4b2f4152e1ddccdeed8c1131cd146bc9ec3575b583cead8b87cd80efe254a5356dcb969233289e5222e041b57d8194d','teacher'),('345456','345456','3d2221ddc6bd52afebdb9a3e9f3cc459ed7ad50cc33f3161aa635e7cf625794dd579e08eaafe03ec4d8d1bd5d02e373414fc96606cb170b66936b650ac41dfe9','teacher'),('admin','admin','c7ad44cbad762a5da0a452f9e854fdc1e0e7a52a38015f23f3eab1d80b931dd472634dfac71cd34ebc35d16ab7fb8a90c81f975113d6c7538dc69dd8de9077ec','admin');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `class_id` varchar(10) NOT NULL,
  `school_id` varchar(10) DEFAULT NULL,
  `teacher_id` varchar(10) DEFAULT NULL,
  `class_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`class_id`),
  KEY `school_id` (`school_id`),
  KEY `teacher_id` (`teacher_id`),
  CONSTRAINT `class_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `school` (`school_id`),
  CONSTRAINT `class_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES ('0001','SET','117013','class A'),('0002','SET','117013','class B'),('0003','SET','117013','class C'),('0004','SET','117013','class D'),('0121','SAMI','123234','class D'),('0122','SAMI','123234','class F'),('0201','SEM','345456','class A'),('0202','SEM','345456','class B');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school` (
  `school_id` varchar(10) NOT NULL,
  `school_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES ('SAMI','School of Applied Mathematics and Informatics'),('SEM','School of Economics and Management'),('SET','School of Electronics and Telecommunication'),('SME','School of Mechanical Engineering'),('SOICT','School of Information and Communication Technology');
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `score` (
  `class_id` varchar(10) NOT NULL,
  `student_id` varchar(10) NOT NULL,
  `score` varchar(10) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  KEY `class_id` (`class_id`),
  CONSTRAINT `score_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES ('0001','20182928','9','good'),('0001','20182929','9','good'),('0002','20182928','9','good'),('0001','20192000',NULL,NULL),('0002','20192000',NULL,NULL),('0003','20192000',NULL,NULL),('0004','20192000',NULL,NULL);
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `student_id` varchar(10) NOT NULL,
  `student_name` varchar(100) NOT NULL DEFAULT '',
  `student_mail` varchar(100) NOT NULL DEFAULT '',
  `student_address` varchar(100) DEFAULT '',
  `student_dob` date NOT NULL DEFAULT '2000-01-01',
  `school_id` varchar(100) NOT NULL DEFAULT 'SET',
  `account_id` varchar(10) NOT NULL,
  PRIMARY KEY (`student_id`),
  KEY `account_id` (`account_id`),
  KEY `school_id` (`school_id`),
  CONSTRAINT `students_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`),
  CONSTRAINT `students_ibfk_2` FOREIGN KEY (`school_id`) REFERENCES `school` (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('20182928','Nguyen Ngoc Minh','minh.nn182928@sis.hust.edu.vn','Ton Quang Phiet','2000-08-26','SET','20182928'),('20182929','Vo Ngoc Minh','minh.nvn@sis.hust.edu','To Lich','2000-02-21','SET','20182929'),('20182930','Le Hoang Thai','thai.lh@sis.hust.edu.vn','Song Hong','2000-01-01','SOICT','20182930'),('20192000','Hoang Minh Hai','hai.hm@sis.hust.edu.vn','Chau Quy','2000-01-01','SEM','20192000');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `teacher_id` varchar(10) NOT NULL,
  `teacher_name` varchar(100) NOT NULL DEFAULT '',
  `teacher_mail` varchar(100) NOT NULL DEFAULT '',
  `teacher_phone` varchar(20) DEFAULT '',
  `school_id` varchar(100) NOT NULL DEFAULT 'SET',
  `account_id` varchar(10) NOT NULL,
  PRIMARY KEY (`teacher_id`),
  KEY `account_id` (`account_id`),
  KEY `school_id` (`school_id`),
  CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`),
  CONSTRAINT `teachers_ibfk_2` FOREIGN KEY (`school_id`) REFERENCES `school` (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES ('117013','Dung','dung123@hust.edu.vn','0123456789','SET','117013'),('123234','Minh','minh123@hust.edu.vn','0987654321','SAMI','123234'),('234345','Thai','thai123@hust.edu.vn','0789456231','SEM','234345'),('345456','Huong','huong123@hust.edu.vn','0123234345','SME','345456');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-11 16:50:26
