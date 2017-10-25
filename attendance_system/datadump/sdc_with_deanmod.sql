-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: sdc2
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add usict attendance',7,'add_usictattendance'),(20,'Can change usict attendance',7,'change_usictattendance'),(21,'Can delete usict attendance',7,'delete_usictattendance'),(22,'Can add sessions',8,'add_sessions'),(23,'Can change sessions',8,'change_sessions'),(24,'Can delete sessions',8,'delete_sessions'),(25,'Can add usict batch allocation',9,'add_usictbatchallocation'),(26,'Can change usict batch allocation',9,'change_usictbatchallocation'),(27,'Can delete usict batch allocation',9,'delete_usictbatchallocation'),(28,'Can add usict teacher',10,'add_usictteacher'),(29,'Can change usict teacher',10,'change_usictteacher'),(30,'Can delete usict teacher',10,'delete_usictteacher'),(31,'Can add usict students',11,'add_usictstudents'),(32,'Can change usict students',11,'change_usictstudents'),(33,'Can delete usict students',11,'delete_usictstudents'),(34,'Can add usict subject allocation',12,'add_usictsubjectallocation'),(35,'Can change usict subject allocation',12,'change_usictsubjectallocation'),(36,'Can delete usict subject allocation',12,'delete_usictsubjectallocation');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$4yVVy4nnjNnQ$iGvuLc46VC2/yndAKByMrFl8zvRkHXtpydveSh7G47o=','2017-10-25 14:33:44.922209',1,'admin','','','neelansh5@gmail.com',1,1,'2017-10-25 14:32:45.927113');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'deandashboard','sessions'),(7,'deandashboard','usictattendance'),(9,'deandashboard','usictbatchallocation'),(11,'deandashboard','usictstudents'),(12,'deandashboard','usictsubjectallocation'),(10,'deandashboard','usictteacher'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-10-25 14:17:02.794269'),(2,'auth','0001_initial','2017-10-25 14:17:03.523166'),(3,'admin','0001_initial','2017-10-25 14:17:03.716460'),(4,'admin','0002_logentry_remove_auto_add','2017-10-25 14:17:03.741145'),(5,'contenttypes','0002_remove_content_type_name','2017-10-25 14:17:03.868209'),(6,'auth','0002_alter_permission_name_max_length','2017-10-25 14:17:03.884845'),(7,'auth','0003_alter_user_email_max_length','2017-10-25 14:17:03.914089'),(8,'auth','0004_alter_user_username_opts','2017-10-25 14:17:03.932445'),(9,'auth','0005_alter_user_last_login_null','2017-10-25 14:17:03.996678'),(10,'auth','0006_require_contenttypes_0002','2017-10-25 14:17:04.006754'),(11,'auth','0007_alter_validators_add_error_messages','2017-10-25 14:17:04.024438'),(12,'auth','0008_alter_user_username_max_length','2017-10-25 14:17:04.058792'),(13,'deandashboard','0001_initial','2017-10-25 14:17:04.712449'),(14,'sessions','0001_initial','2017-10-25 14:17:04.778617');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `session_id` varchar(128) NOT NULL,
  `expires` int(11) NOT NULL,
  `data` longtext,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('I_G7sYDwGtOQI3uv5HVgAVq8rnY2UyMH',1509040442,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{},\"passport\":{}}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usict_attendance`
--

DROP TABLE IF EXISTS `usict_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usict_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lecture_timestamp` datetime(6) NOT NULL,
  `duration_of_class` int(11) NOT NULL,
  `attendance` varchar(2) NOT NULL,
  `student` bigint(20) NOT NULL,
  `subject_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usict_attendance_subject_id_lecture_times_ce5a8aee_uniq` (`subject_id`,`lecture_timestamp`,`student`),
  KEY `usict_attendance_student_dedd8d49_fk_usict_stu` (`student`),
  CONSTRAINT `usict_attendance_student_dedd8d49_fk_usict_stu` FOREIGN KEY (`student`) REFERENCES `usict_students` (`enrollment_no`),
  CONSTRAINT `usict_attendance_subject_id_c0ffb5d8_fk_usict_sub` FOREIGN KEY (`subject_id`) REFERENCES `usict_subject_allocation` (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usict_attendance`
--

LOCK TABLES `usict_attendance` WRITE;
/*!40000 ALTER TABLE `usict_attendance` DISABLE KEYS */;
INSERT INTO `usict_attendance` VALUES (1,'2017-02-02 00:00:00.000000',2,'P',1000,2),(2,'2017-10-25 11:00:00.000000',2,'A',1516401514,62),(3,'2017-10-25 11:00:00.000000',2,'P',216401514,62),(4,'2017-10-25 11:00:00.000000',2,'P',916401514,62),(5,'2017-10-25 11:00:00.000000',2,'P',1216401514,62),(6,'2017-10-25 11:00:00.000000',2,'P',816401514,62),(7,'2017-10-25 11:00:00.000000',2,'P',416401514,62),(8,'2017-10-25 11:00:00.000000',2,'A',1416401514,62),(9,'2017-10-25 11:00:00.000000',2,'A',1616401514,62),(10,'2017-10-25 11:00:00.000000',2,'P',516401514,62),(11,'2017-10-25 11:00:00.000000',2,'P',1016401514,62),(12,'2017-10-25 11:00:00.000000',2,'A',1116401514,62),(13,'2017-10-25 11:00:00.000000',2,'A',1716401514,62),(14,'2017-10-25 11:00:00.000000',2,'A',1916401514,62),(15,'2017-10-25 11:00:00.000000',2,'A',2016401514,62),(16,'2017-10-25 11:00:00.000000',2,'A',2316401514,62),(17,'2017-10-25 11:00:00.000000',2,'A',2416401514,62),(18,'2017-10-25 11:00:00.000000',2,'A',2716401514,62),(19,'2017-10-25 11:00:00.000000',2,'A',2816401514,62),(20,'2017-10-25 11:00:00.000000',2,'A',3016401514,62),(21,'2017-10-25 11:00:00.000000',2,'A',3216401514,62),(22,'2017-10-25 11:00:00.000000',2,'A',3316401514,62),(23,'2017-10-25 11:00:00.000000',2,'A',3416401514,62),(24,'2017-10-25 11:00:00.000000',2,'A',3516401514,62),(25,'2017-10-25 11:00:00.000000',2,'A',3816401514,62),(26,'2017-10-25 11:00:00.000000',2,'A',3916401514,62),(27,'2017-10-25 11:00:00.000000',2,'A',4216401514,62),(28,'2017-10-25 11:00:00.000000',2,'A',4316401514,62),(29,'2017-10-25 11:00:00.000000',2,'A',4416401514,62),(30,'2017-10-25 11:00:00.000000',2,'A',4616401514,62),(31,'2017-10-25 11:00:00.000000',2,'A',4716401514,62),(32,'2017-10-25 11:00:00.000000',2,'A',4816401514,62),(33,'2017-10-25 11:00:00.000000',2,'A',4116401514,62),(34,'2017-10-25 11:00:00.000000',2,'A',4916401514,62),(35,'2017-10-25 11:00:00.000000',2,'A',5116401514,62),(36,'2017-10-25 11:00:00.000000',2,'A',5216401514,62),(37,'2017-10-25 11:00:00.000000',2,'A',5016401514,62),(38,'2017-10-25 11:00:00.000000',2,'A',5316401514,62),(39,'2017-10-25 11:00:00.000000',2,'A',5416401514,62),(40,'2017-10-25 11:00:00.000000',2,'A',5516401514,62),(41,'2017-10-25 11:00:00.000000',2,'A',5716401514,62),(42,'2017-10-25 11:00:00.000000',2,'A',5916401514,62),(43,'2017-10-25 11:00:00.000000',2,'A',6216401514,62),(44,'2017-10-25 11:00:00.000000',2,'A',6016401514,62),(45,'2017-10-25 11:00:00.000000',2,'A',6116401514,62),(46,'2017-10-25 11:00:00.000000',2,'A',6516401514,62),(47,'2017-10-25 11:00:00.000000',2,'A',6316401514,62),(48,'2017-10-25 11:00:00.000000',2,'A',6916401514,62),(49,'2017-10-25 11:00:00.000000',2,'A',5816401514,62),(50,'2017-10-25 11:00:00.000000',2,'A',6716401514,62),(51,'2017-10-25 11:00:00.000000',2,'A',7016401514,62),(52,'2017-10-25 11:00:00.000000',2,'A',7116401514,62),(53,'2017-10-25 11:00:00.000000',2,'A',7216401514,62),(54,'2017-10-25 11:00:00.000000',2,'A',7316401514,62),(55,'2017-10-25 11:00:00.000000',2,'A',7416401514,62),(56,'2017-10-25 11:00:00.000000',2,'A',7516401514,62),(57,'2017-10-25 11:00:00.000000',2,'A',7716401514,62),(58,'2017-10-25 11:00:00.000000',2,'A',7816401514,62),(59,'2017-10-25 11:00:00.000000',2,'A',7916401514,62),(60,'2017-10-25 11:00:00.000000',2,'A',8016401514,62),(61,'2017-10-25 11:00:00.000000',2,'A',8316401514,62),(62,'2017-10-25 11:00:00.000000',2,'A',8616401514,62),(63,'2017-10-25 11:00:00.000000',2,'A',8516401514,62),(64,'2017-10-25 11:00:00.000000',2,'A',8716401514,62),(65,'2017-10-25 11:00:00.000000',2,'A',60016401514,62),(66,'2017-10-25 11:00:00.000000',2,'A',60116401514,62),(67,'2017-10-25 11:00:00.000000',2,'A',60216401514,62),(68,'2017-10-25 11:00:00.000000',2,'A',60316401514,62),(69,'2017-10-25 11:00:00.000000',2,'A',9516401514,62),(70,'2017-10-25 11:00:00.000000',2,'A',40116401514,62);
/*!40000 ALTER TABLE `usict_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usict_batch_allocation`
--

DROP TABLE IF EXISTS `usict_batch_allocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usict_batch_allocation` (
  `batch_id` int(11) NOT NULL,
  `course` varchar(100) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `semester` int(11) NOT NULL,
  PRIMARY KEY (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usict_batch_allocation`
--

LOCK TABLES `usict_batch_allocation` WRITE;
/*!40000 ALTER TABLE `usict_batch_allocation` DISABLE KEYS */;
INSERT INTO `usict_batch_allocation` VALUES (1,'MTECH','IT',1),(2,'MTECH','CSE',1),(3,'MTECH','IT',3),(4,'MTECH','CSE',3),(5,'BTECH','CSE',5),(6,'MTECH','ECE',3),(7,'BTECH','IT',3),(8,'BTECH','IT',5),(9,'BTECH','IT',7),(10,'MCA','SE',5),(11,'MTECH','ECE',1),(12,'MTECH','RA',1),(13,'MCA','SE',3),(14,'BTECH','ECE',5),(15,'BTECH','IT',1),(16,'BTECH','ECE',7),(17,'MTECH','RA',3),(18,'BTECH','CSE',3),(19,'BTECH','CSE',7),(20,'BTECH','CSE',1),(21,'BTECH','ECE',3),(22,'MCA','SE',1),(23,'BTECH','ECE',1);
/*!40000 ALTER TABLE `usict_batch_allocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usict_students`
--

DROP TABLE IF EXISTS `usict_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usict_students` (
  `enrollment_no` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `year_of_admission` int(11) NOT NULL,
  `password` varchar(600) NOT NULL,
  `course` varchar(100) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `batch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`enrollment_no`),
  KEY `usict_students_batch_id_c3d7c0e8_fk_usict_bat` (`batch_id`),
  CONSTRAINT `usict_students_batch_id_c3d7c0e8_fk_usict_bat` FOREIGN KEY (`batch_id`) REFERENCES `usict_batch_allocation` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usict_students`
--

LOCK TABLES `usict_students` WRITE;
/*!40000 ALTER TABLE `usict_students` DISABLE KEYS */;
INSERT INTO `usict_students` VALUES (116403215,'AAKASH MADAN',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(116412815,'ABHISHEK AGGARWAL ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(216401514,'Ujjwal Talluri',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(216403214,'Karthik R Prakash','gestureg@gmail.com','9811560657',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(216403215,'AKAH PRAJAPAT',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(216412814,'VIKRAM GOSAIN',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(216412815,'ABHISHEK SHARMA',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(316403214,'Anmol Kohli','anmolkohli.07@gmail.com',NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(316403215,'AKASH AGRAWAL ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(316412814,'SHIVI JINDAL',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(316412815,'AKSHAT JAIN ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(416401514,'Rohit Chugh',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(416403215,'ARUN MALIK',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(416412814,'BANDANA PRASAD',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(416412815,'ATUL SINGH ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(516401514,'Dhruv Mehandirata',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(516403214,'Anurag','anuragsidana22@gmail.com','9990481479',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(516403215,'AVINASH ANAND ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(516412815,'AYUSHI ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(616403214,'Chaitanya','Chaitanya19795@gmail.com','8447671314',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(616403215,'AYUSH GIRI',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(616412814,'SUMAKAR K V S ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(616412815,'AYUSHI SINGH ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(716403214,'Satyam','satyamrai2606@gmail.com','8285711479',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(716412814,'PRANAV NAGPAL',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(716412815,'BHUPESH KUMAR ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(816401514,'Shubham Juneja',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(816403214,'KARAN SOOD','ksood122333@gmail.com','9971194873',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(816403215,'DEEKSHA NAYAR',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(816412814,'AMANPREET SINGH',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(816412815,'DEEPAK KUMAR ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(916401514,'Mugdha Garg',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(916412815,'DEEPAK PRAKASH ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(1016401514,'Aseem Chopra',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(1016403215,'HANU GAUTAM ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(1016412815,'GAURAV DAGAR ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(1116401514,'Prafful Gupta',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(1116403214,'Vihang Sharma','vihang.sharma95@gmail.com','8826661597',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(1116412814,'ADARSH KUMAR SINGH',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(1116412815,'GURPREET SING MARWAH ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(1216401514,'Shivangi Chauhan',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(1216403214,'Bazil ahmed','bazilahmedia@gmail.com','8285988305',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(1216403215,'HIMANSHU BHANDARI ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(1216412815,'HARSH KUMAR ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(1316403214,'Sourav Aggarwal','aggarwalsourav0210@gmail.com','7838701947',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(1316412815,'HARSHIT SINGH ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(1416401514,'Deepak Balhara',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(1416403214,'Gagandeep Nagpal','gagannagpal68@gmail.com','8800489129',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(1416403215,'MANTHAN',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(1416412814,'HEMANT BANSAL',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(1416412815,'HIMANSHU RAJPUT ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(1516401514,'Akash Garg',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(1516403214,'Surbhi pathak','Surbhipathak427@gmail.com','9654828000',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(1516403215,'MAYANK',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(1516412815,'HIMANSHU RAJPUT ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(1616401514,'Akshat Vats',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(1616403214,'Anmol Khanna','anmolkhanna1996@yahoo.in','9891104002 ',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(1616412814,'VARUN PANTHRI',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(1616412815,'HINDUJA PUDI ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(1716401514,'Shubham Jindal',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(1716403214,'Salil Khandelwal','salilkhandelwal@gmail.com',NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(1716403215,'PANKAJ KUMAR GAUTAM',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(1716412814,'PRANAV GUPTA',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(1716412815,'KANCHAN ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(1816403214,'Pranav Khurana','pranavkhurana96@gmail.com','9654768080',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(1816403215,'PARAS ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(1816412815,'KESHAV ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(1916401514,'Deepanshu Gupta',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(1916403215,'PIYUSH MEHENDIRATTA',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(1916412814,'SIDHANT DALMIYA',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(1916412815,'MAYANK BHATT ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(2016401514,'Prayansh Srivastava',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(2016403214,'Varun Sharma','varun199539@gmail.com','9953056043',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(2016403215,'PRABBUDH SINGH ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(2016412814,'GARIMA',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(2016412815,'MAYANK SHARMA ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(2116403215,'PRANSHU MITTAL',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(2116412815,'NIKHIL GUPTA ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(2216403215,'PRATHAM JOSHI',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(2216412815,'PRANAY MISHRA ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(2316401514,'Chirag Arora',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(2316403214,'keshav aggarwal','aggarwalkeshav38@gmail.com','8527569689',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(2316403215,'RAHUL DEV',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(2316412814,'SHUBHAM AGARWAL',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(2316412815,'RAVI SHARMA ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(2416401514,'Amit Sharma',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(2416403215,'RATN ROHAN',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(2416412814,'SAURABH PHAWA',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(2416412815,'RISHABH SINGH ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(2516412815,'RITIK NEGI ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(2616403215,'RITVIK ARORA',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(2616412814,'ABHISHEK SINGH',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(2616412815,'RITWIK RUDRA ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(2716401514,'Vibhor Verma',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(2716403214,'Amit Singh Negi','amitnegi0195@gmail.com','9958762163',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(2716412814,'ANKIT KAUSHIK',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(2716412815,'SACHIN BHATI ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(2816401514,'Guneet Singh',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(2816403215,'SAJEEV MAHAJAN ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(2816412814,'ANIRUDH RAY',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(2816412815,'SANCHIT PANWAR ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(2916403214,'Mayank Bhandari','mbmbmayank19@gmail.com','8882445141',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(2916403215,'SANDESH ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(2916412814,'DIVYANSH GARG',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(2916412815,'SANJAY KUMAR MEENA ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(3016401514,'Pratulya Bubna',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(3016403214,'Mayank Singh','mayanksingh.461996@gmail.com','7042044700',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(3016403215,'SAQUIB SIDDIQUE',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(3016412815,'SARTHAK KUMAR ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(3116403214,'aakash bhardwaj','top.aakash123@gmail.com','9582688373',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(3116412814,'PARTH TREHAN',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(3116412815,'SATYARTH VIMAL ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(3216401514,'Rajneesh Sharma',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(3216403214,'suraj kumar','surajkumar246@gmail.com','9013155212',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(3216412814,'SANNA NAZIR',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(3216412815,'SHIVAM AGGARWAL ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(3316401514,'Shivam Sharma',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(3316403214,'Mansee aggarwal','aggarwalmanseee777@gmail.com','9717456048',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(3316412815,'SHREYA GUPTA ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(3416401514,'Manmohan Singh',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(3416412814,'VISHAL KUMAR',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(3416412815,'SHUBHAM GUPTA ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(3516401514,'Sarthak Manchanda',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(3516403214,'Aakash yadav','aakash141997@gmail.com','8130610491',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(3516412814,'KUMAR UTKARSH',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(3516412815,'SHUBHAM SINGH KHATI ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(3616403214,'Hrithik Dhawan ','hrithikdhawan@gmail.com','8800511944',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(3616403215,'SURAJ KUMAR ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(3616412814,'ANKIT GUPTA',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(3616412815,'SUKANT VATS ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(3716412814,'ARJUN CHAUDHARY',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(3716412815,'TANMAY MALHOTRA ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(3816401514,'Shubham Jain',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(3816403214,'Pushkar Mittal','mittal.pushkar@gmail.com','9555289635',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(3816403215,'VANSHAJ GIROTRA',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(3816412815,'UJJWAL GUPTA ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(3916401514,'Abhijeet Singh',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(3916403215,'VASU MAAN',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(3916412814,'RICHU',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(3916412815,'VIJAY GARG ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(4016403214,'Devesh Tewari','xx.devesh.xx@gmail.com','9717104667',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(4116401514,'Vasu Jain',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(4116403214,'Bhanu walia','bhanu10496@gmail.com','9873170736',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(4116412814,'ANSHUL RANA',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(4116412815,'MOHIT KAUSHIK',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(4216401514,'Ravi Ranjan',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(4216412814,'ARUNAV DUTTA',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(4316401514,'Rajiv Kumar Jha',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(4316403214,'Gaurav Kumar','gauravtanwar03@gmail.com','9990487763',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(4316412814,'JATIN KUMAR',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(4416401514,'Sebin Duke Stephen',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(4416412814,'HARINDER SINGH CHOUHAN',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(4516412814,'NITESH CHUADHARY',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(4616401514,'Divesh Bisht',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(4616403214,'Akhil Prasannan','akhilprasannan.misc@gmail.com','8447729290',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(4616412814,'AVILASH MOHANTY',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(4716401514,'Gaurav Mann',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(4716403214,'Jatin Aswal','jatin.aswal@rediffmail.com','8586072887',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(4716412814,'MANISH KUMAR YADAV',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(4816401514,'Mahesh Gahlot',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(4816403214,'Vikas Soni','vikassonibest22@gmail.com',NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(4816412814,'SAURABHA SIDDHARTH WANKHEDE',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(4916401514,'Prashant Jaiswal',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(4916403214,'Mohd Shadab ','shadab.saifi007@gmail.com','8744969633',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(4916412814,'UDIT RANA',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(5016401514,'Md. Naiyar',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(5016403214,'himanshu kumar','kumarhimanshu901@gmail.com','7827285662',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(5016412814,'SAURAV MANN',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(5116401514,'Ekta Sharma',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(5116403214,'Prince Dhiman','princed000@gmail.com','9911484907',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(5116412814,'RAGHAV KUMAR',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(5216401514,'Sarthak Rohilla',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(5216403214,'sujit kumar','sujeet.sharma2395@gmail.com','9971879231',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(5216412814,'ABHISHEK KUMAR SINGH',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(5316401514,'Akash Verma',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(5316403214,'Suhail Riyaz','suh24ailriyaz@gmail.com','9654061081',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(5316412814,'KAVINDER YADAV',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(5416401514,'Rishabh Sharma',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(5416403214,'AMIT YADAV','amitiscool4u@gmail.com','9871891337',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(5416412814,'R S SANJANA',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(5516401514,'Anu Sharma',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(5516403214,'Aman Solanki','amysolanki08@gmail.com',NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(5516412814,'ABHIMANYU KUMAR',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(5616403214,'Bhunesh Singh ','bhunesh34@gmail.com','9971796246',2013,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(5616412814,'MOHAMMAD RAIYAN',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(5716401514,'Gaurav Baisoya',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(5716403214,'Rakshit solanki','rac1909@gmail.com','+918826512355',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(5716412814,'KAPIL KUMAR',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(5816401514,'Jatin Verma',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(5816412814,'BHARAT DAGAR',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(5916401514,'Sawan Jangra',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(5916403214,'Mohit Yadav','yadavmohit0001@gmail.com','8285721438',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(5916412814,'ROSHAN KUMAR ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(6016401514,'Sagar Rooprai',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(6016403214,'Anurag Kumar','anuragk240@gmail.com','9910770607',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(6016412814,'ASHWANI',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(6031640325,'Deepanshu Malhotra',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(6116401514,'Prashant Kumar Singh',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(6116412814,'KARAMVEER',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(6216401514,'Rajat Kumar',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(6216403214,'Parul kumar','prlkumar96@gmail.com','8527978358',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(6216412814,'PRASHANT SINGH',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(6316401514,'Prashant',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(6316403214,'Annie Marandi','annie.13anki@gmail.com','8860058205',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(6316412814,'MOHNISH',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(6416403214,'Ashish','ashishraj615@gmail.com','8285587254',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(6416412814,'MAYANK SINGH',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(6516401514,'Sanjay Singh',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(6516403214,'Surender Kumar','surender7790@gmail.com','9718305549',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(6516412814,'JAI PRAKASH',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(6616412814,'SAURAV SINGH RANA',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(6716401514,'Vasudha Rajora',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(6716403214,'VARUN KUMAR','varun96505@gmail.com','9650580338',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(6716412814,'ANSHUL',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(6816403214,'Nitish panwar','nitishrock26@gmail.com','9718162077',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(6816412814,'MAHESH',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(6916401514,'Deepanshu Chambok',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(6916403214,'Bhagyashree','shreebhagya3110@gmail.com','8800650639',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(6916412814,'AKASH PALKA',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(7016401514,'Mohit Sandhu',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(7016403214,'Sunedh Hedaoo','hdemus.hedaoo@gmail.com','9868462059',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(7116401514,'Sandeep Tanwar',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(7116403214,'Kirtika','kirtika.chahar@gmail.com','9953050175',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(7116412814,'NITIN',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(7216401514,'Sumit Singwal',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(7216403213,'MANEBAYE MARK','jamesrobert340@gmail.com','9711450997',2013,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(7216403214,'Sanidhya Wakdikar','sanidhya12@gmail.com','9555057048',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(7216412814,'DASARI SINDHU',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(7316401514,'Sulabh Jain',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(7316403214,'Sumit Kumar','realsumitkumar@gmail.com','9650739442',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(7316412814,'VIVEK KUMAR',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(7416401514,'Abhishek Kumar Meena',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(7416403214,'Arshad Nasir','nasirarshad0208@gmail.com','7503809974',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(7416412814,'Sohil Solanki',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(7516401514,'Kushagra Bansal',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(7516412814,'SHUBHAM Bansal',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(7616412814,'Shubham Srivastava',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(7716401514,'Aishwarya Gambhir',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(7716403214,'JATIN RAJANI','jatinraj15@gmail.com','9871748867',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(7716412814,'Sparsh Gupta',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(7816401514,'Mohit Nagpal',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(7816403214,'Mayank Tyagi','mayaanktyagi@gmail.com',' 91-9718287727',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(7816412814,'Shubham',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(7916401514,'Sudhir Prasad',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(7916403214,'Madhur Bansal','bansal.madhur17@gmail.com','9811556687',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(7916412814,'Tanya Jayant',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(8016401514,'Bhavya Garg',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(8016403214,'Sukirti Arora ','sukirtiarora1996@gmail.com','7053427752 ',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(8016412814,'Mohit Sehgal',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(8116403214,'Sarthak goel','Sarthakgoel1995@gmail.com ','8527108534',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(8116412814,'Sabitra Rudra',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(8216403214,'Sameer kumar','sameer27995@gmail.com','9015408972',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(8216412814,'Mridul Gupta',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(8316401514,'Simran Sarin',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(8316403214,'Rahul sharma','rahulrock0082@gmail.com','7840816145',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(8316412814,'Varun Malhotra',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(8416403214,'Hemang S Kumar','hemangsk@gmail.com','9718368484',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(8416412814,'Somya Chauhan',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(8516401514,'Rishabh Narang',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(8516403214,'arpan kushwaha','knightwatchmayday@gmail.com','9968828315',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(8516412814,'Tanya Mmenhani',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(8616401514,'Shivani Bhutani',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(8616403214,'Akarsh Choudhary',NULL,'8586895856',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(8616412814,'Sudhir Sharma',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(8716401514,'Hemant Kumar',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(9516401514,'Pranav Handoo',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(10116402315,'Rajat Maheshwari',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(10216402315,'Abhishek Malik ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(10316402315,'Divyansh',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(40016403214,'Sachin Chaudhury','sachinchaudhury@gmail.com','7042422162',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(40116401514,'Manish Kumar',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(40116403214,'Tashi Paljor','tashi.paljor@ymail.com ','8447853488',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(40116403215,'PARAS',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(40116412815,'PRANJAL RAJAN ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(40216403215,'DHAWAL BABAR ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(40216412815,'ABHISHEK MALIK',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(40316403214,'Ankit','ankitrajpal@hotmail.com','8373961209',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(40316403215,'SUNNY PARIHAR ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(40316412815,'VISHAL GAUD',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(40416403214,'Karishma',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(40416412815,'SHUBHAM KUMAR ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(40516403214,'sneha ghimire','snehaghimire12@yahoo.com','9717432406',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(40516403215,'UTKARSH GARG ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(40516412815,'SHUBHAM BHARDWAJ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(40616403214,'Sherap Gyaltsen','sheraprabgyal@yahoo.com','9958865893',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(40616412815,'KRITARTH SHARMA',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(40716403214,'Shourya',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(40716403215,'KUMAR ANKIT ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(40716412815,'ARJUN SINGLA',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(40816403214,'Akash Kumar','akashkumar4503@gmail.com','9717865383',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(40816403215,'PRABHANSHU GUPTA',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(40816412815,'ADITYA GUPTA ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(40916403215,'NEIL TYAGI',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(40916412815,'PRAKASH KUMAR ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(41016403215,'VIKRAM SINGH PANWAR ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(41016412815,'ARJUN KALIA ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(41116412815,'SOMYA SAHAY',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(41216403215,'RITKA KADIAN',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(41216412815,'SOUMAY GUTPA ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(41316403215,'SUBHHAM PRAKASH ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(41316412815,'SUBHAM',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(41416403215,'VAIBHAV GUPTA',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(41416412815,'UDIT GERA',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(41516403215,'NAVEEN YADAV',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(41516412815,'SAHIL KHAN ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(41616403215,'RAVI KUMAR RANJAN ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(41616412815,'BHAVESH PAL',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(41716403215,'AKASH KUMAR ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(41716412815,'MAMTA LUTHRA ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(41816403215,'SUBHAM VERMA ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(41816412815,'JATIN CHOUDHARY ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(41916403215,'DINESH KUMAR ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(41916412815,'RISHABH KUMAR ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(42016403215,'PRASHANT SINGH ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(42016412815,'AADITYA ARYA ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(42116403215,'MANJEET KUMAR ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(42116412815,'AAKASH TIKOO',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(60016401514,'Harsh Pathak',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(60016403214,'Saurabh Pahwa','saurabhphw@gmail.com','9711820714',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(60016412814,'Anusha Goel ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(60016412815,'APPAR PARASHAR ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(60116401514,'Prachi Garg',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(60116403214,'Garima','garima007rajput@gmail.com','7042830672',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(60116403215,'Pranav Malik',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(60116412814,'Soumya Pandey ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(60116412815,'ABHISHEK KUMAR BHARDWAJ ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(60216401514,'Manan Narula',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(60216403214,'neelansh garg','neelansh5@gmail.com','8860430933',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(60216403215,'Manish Yadav',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(60216412814,'Priyanka Mittal ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(60216412815,'ANHAD PANDIT ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(60316401514,'Bhawna Kukreja',NULL,NULL,2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','IT',9),(60316403214,'Arjun Upmanyu','arjun.upmanyu@gmail.com','8860224623',2014,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',19),(60316412814,'Anupriya Dangi',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(60316412815,'DAKSH PALIWAL ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(60416403215,'Naman Chhabra',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(60416412814,'Suraj Jain ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(60416412815,'NILESH KUMAR ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(60516412814,'Shweta Sharma ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',16),(70116403215,'RAJEEV RANJAN',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(70116412811,'NIRAJAN JHA',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','ECE',14),(70216403215,'VIKAS ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(70316403215,'TENZIN DAKAR ',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(70416403215,'NAGWAY DAPKA',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(70616403215,'THUPTEN LAKSHAY',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(70716403215,'LYKA KINRA',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(70816403215,'SWETA',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5),(70916403215,'TASHI TSERANG',NULL,NULL,2015,'$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','BTECH','CSE',5);
/*!40000 ALTER TABLE `usict_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usict_subject_allocation`
--

DROP TABLE IF EXISTS `usict_subject_allocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usict_subject_allocation` (
  `subject_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `instructor_code` varchar(20) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  PRIMARY KEY (`subject_id`),
  KEY `usict_subject_alloca_batch_id_e17d645d_fk_usict_bat` (`batch_id`),
  KEY `usict_subject_alloca_instructor_code_e0b04125_fk_usict_tea` (`instructor_code`),
  CONSTRAINT `usict_subject_alloca_batch_id_e17d645d_fk_usict_bat` FOREIGN KEY (`batch_id`) REFERENCES `usict_batch_allocation` (`batch_id`),
  CONSTRAINT `usict_subject_alloca_instructor_code_e0b04125_fk_usict_tea` FOREIGN KEY (`instructor_code`) REFERENCES `usict_teacher` (`instructor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usict_subject_allocation`
--

LOCK TABLES `usict_subject_allocation` WRITE;
/*!40000 ALTER TABLE `usict_subject_allocation` DISABLE KEYS */;
INSERT INTO `usict_subject_allocation` VALUES (1,1,'MECS-613','30475','Advanced Operating Systems','Theory'),(2,1,'MECS-601','30188','Advanced Data Structures','Theory'),(3,1,'MECS-603','30204','Advanced Software Engineering ','Theory'),(4,1,'MECS-605','30564','Advanced in Data & computer Communication','Theory'),(6,1,'MEIT-655','30564','Advanced Computer Networking Lab','Practical'),(7,1,'MEIT- 653','30474','Software Engineering Lab','Practical'),(8,1,'MEIT-651','30706','Advanced Data Structure Lab ','Practical'),(9,2,'MECS-613','30475','Advanced Operating Systems','Theory'),(10,2,'MECS-601','30188','Advanced Data Structures','Theory'),(11,2,'MECS-603','30204','Advanced Software Engineering ','Theory'),(12,2,'MECS-605','30564','Advances in Data & computer Communication','Theory'),(14,2,'MECS-655','30564','Advanced Computer Networking Lab','Practical'),(15,2,'MECS- 653','30474','Spftware Engineeing Lab','Practical'),(16,2,'MECS-651','30475','Algorithm Analysis Lab ','Practical'),(17,5,'IT-301','30474','Theory of Computation','Theory'),(18,5,'IT-303','30494','Analog and Digital Communication','Theory'),(19,5,'IT-305','30746','Computer Architecture','Theory'),(20,5,'IT-307','30109','Digital Signal Processing','Theory'),(21,5,'IT-309','','Object Oriented Software Engineering','Theory'),(22,5,'IT-311','30228','Digital Design using VHDL','Theory'),(23,5,'IT-351','30494','Analog & Digital Communication Lab','Practical'),(24,5,'IT-353','30714','Digital Signal Processing Lab','Practical'),(25,5,'IT-355','30228','Digital Design Lab','Practical'),(26,3,'MEIT-703','30303','ITC','Theory'),(27,3,'MECS-701','30296','DWDM','Theory'),(28,3,'MEIT-703','30445','AST','Theory'),(29,3,'MEEC-707','30750','ANN','Theory'),(30,3,'MECS-711','30585','SQM','Theory'),(31,3,'MECS-717','30466','CCI&CF','Theory'),(32,3,'MEIT-753','30303','ITC','Practical'),(33,3,'MEIT-751','30740','DWDM','Practical'),(34,6,'MEEC-701','30492','ADHOC SENSOR NETWORKS','Theory'),(35,6,'MERF-601','30771','ADVANCE ELECTROMAGNETIC ENGINEERING','Theory'),(36,6,'MEEC-713','30733','MEMS AND SENSOR TECHNOLOGY','Theory'),(37,6,'MEEC-715','30778','BROADBAND ACCESS TECHNOLOGY','Theory'),(38,6,'MEEC-721','30742','MICROWAVE PLANAR TRANSMISSION LINES AND CIRCUITS','Theory'),(39,6,'MEEC-751','30771','Lab-7','Practical'),(40,6,'MEEC-753','30492','Lab-8','Practical'),(41,7,'IT 201','USICT30003','COMPUTATIONAL METHODS','Theory'),(42,7,'IT 203','30714','CIRCUITS AND SYSTEM','Theory'),(43,7,'IT 205','30734','ELECTRONI DEVICES & CIRCUIT','Theory'),(44,7,'IT 207','30741','OOPS','Theory'),(45,7,'IT 209','30286','COMPUTER GRAPHICS','Theory'),(46,7,'IT211','30093','DBMS','Theory'),(47,7,'IT 251','30734','EDC LAB','Practical'),(48,7,'IT 253','USICT30004','COMPUTATIONAL LAB','Practical'),(49,7,'IT 255','30566','OOPS LAB','Practical'),(50,7,'IT 257','30286','GRAPHICS LAB','Practical'),(51,7,'IT 259','30093','DBMS LAB','Practical'),(52,8,'IT-313','30714','Communication Systems','Theory'),(53,8,'IT-305','30543','Computer Architecture','Theory'),(54,8,'IT-315','30795','Linux & Win32 Programming','Theory'),(55,8,'IT-309','USICT30002','Object Oriented Software Engineering','Theory'),(56,8,'IT-307','30761','Digital Signal Processing','Theory'),(57,8,'IT-317','30475','Operating Systems','Theory'),(58,8,'IT-359','','Object Oriented Software Engineering Lab','Practical'),(59,8,'IT-353','30761','Digital Signal Processing Lab','Practical'),(60,8,'IT-361','30466','Linux & Win32 Programming Lab','Practical'),(61,9,'IT401','30706','Advanced Computer Networks','Theory'),(62,9,'IT413','30597','Front End Design Tools and Web Technologies','Theory'),(63,9,'IT403','30286','Software Testing','Theory'),(64,9,'IT421','30296','Data Warehousing And Mining','Theory'),(65,9,'IT451','30706','ACN Lab.','Practical'),(66,9,'IT459','USICT30004','FEDT and Web Technology Lab.','Practical'),(67,9,'IT455','30286','Software Testing Lab.','Practical'),(68,10,'IT - 803','30741','Linux administration','Theory'),(69,10,'IT - 801','30445','Software verifications validation and testing','Theory'),(70,10,'IT - 805','30536','Advanced computer networks','Theory'),(71,10,'IT - 807','30080','Multimedia applications','Theory'),(72,10,'IT - 716','30585','Software Quality Management','Theory'),(73,10,'IT - 712','','Software Requirement Estimation','Theory'),(74,10,'IT - 853','30741','Linux Lab','Practical'),(75,10,'IT - 857','30741','Multimedia lab','Practical'),(76,10,'IT- 855','30536','Advanced Computer Networks lab','Practical'),(77,10,'IT - 851','30618','SVVT lab','Practical'),(78,11,'MEEC-601','30617','Optoelectronics and Optical fibre communication','Theory'),(79,11,'MEDC-601','30494','Advanced Digital Communication systems','Theory'),(80,11,'MEVS -603','30747','VLSI Technology','Theory'),(81,11,'MEEC-607','30566','Advanced Computer Networks','Theory'),(82,11,'MEVS-613','30543','Wireless Networks','Theory'),(83,11,'MEEC-651','30617','Lab – 1 (OOFC Lab)','Practical'),(84,11,'MEEC-653','30494','Lab – 2 (ADCS Lab)','Practical'),(85,11,'MEEC-655','30747','Lab -3 (VLSI Lab)','Practical'),(86,12,'MERA-601','30492','Computational Mathematics','Theory'),(87,12,'MERA-603','30220','Robotics Engineering','Theory'),(88,12,'MERA-605','30775','Introduction to Manufacturing Systems','Theory'),(89,12,'MERA-607','30617','Introduction to Electrical and Electronics  Systems','Theory'),(90,12,'MERA-609','30779','Control System','Theory'),(91,12,'MERA-619','30759','Mechatronics  Systems and Applications','Theory'),(92,12,'MERA-651','30492','Lab -I (Computational Lab)','Practical'),(93,12,'MERA-653','30220','Lab-II (Robotics Engineering Lab)','Practical'),(94,12,'MERA-655','30779','Lab-III (Control System)','Practical'),(95,13,'IT-701','30709','Java Programming','Theory'),(96,13,'IT-703','30740','Algorithm analysis and Design','Theory'),(97,13,'IT-705','30093','Web Technology','Theory'),(98,13,'IT-707','30566','Computer Networks','Theory'),(99,13,'IT-709','30466','Operating Systems','Theory'),(100,13,'IT-751','30709','Java Programming Lab','Practical'),(101,13,'IT-753','30740','Algorithm analysis and Design Lab','Practical'),(102,13,'IT-755','30093','Web Technology Lab','Practical'),(103,13,'IT-757','30566','Computer Networks Lab','Practical'),(104,14,'EC301','30733','Microwave Devices and Circuits','Theory'),(105,14,'EC303','30618','Microprocessors and Interfacing','Theory'),(106,14,'EC305','30707','Microelectronics','Theory'),(107,14,'EC307','30303','RDBMS','Theory'),(108,14,'EC309','30793','Stochastic Systems and Processes','Theory'),(109,14,'EC351','30733','Microwave Devices Lab.','Practical'),(110,14,'EC353','30618','Microprocessors Lab.','Practical'),(111,14,'EC355','30707','Microelectronics Lab.','Practical'),(112,14,'EC357','USICT30005','RDBMS Lab','Practical'),(113,14,'EC355','30714','Microelectronics Lab.','Practical'),(114,15,'IT-105','30739','Introduction To Computer','Theory'),(115,15,'BA-103','30594','Chemistry - I','Theory'),(116,15,'IT-107','30734','Electrical Science','Theory'),(117,15,'BA-109','USICT30006','Mathematics - I','Theory'),(118,15,'HS-101','30621','Communication Skills','Theory'),(119,15,'BA-111','BT300006','Physics-I','Theory'),(120,15,'IT-155','30739','Computer Lab','Practical'),(121,15,'IT-159','30734','Electrical Science','Practical'),(122,15,'BA-151','30476','Chemistry - I','Practical'),(123,15,'BA-153','30554','Physics-I','Practical'),(124,15,'IT-157','30775','Engineering Graphics-I','Practical'),(125,15,'BA-153','BT300006','Physics-I','Practical'),(126,16,'IT-417','30707','Embedded Systems','Theory'),(127,16,'EC-401','30776','Satellite Communicaiton','Theory'),(129,16,'MS-425','30676','Principles of Organization Behaviour','Theory'),(130,16,'EC-451','30707','Embedded Systems Lab','Practical'),(132,16,'EC-453','30771','Matlab ','Practical'),(133,4,'MECS-701','30296','Data Warehouse Data Mining','Theory'),(134,4,'MECS-703','30445','Software Testing','Theory'),(135,4,'MEEC-707','30750','Neural Network','Theory'),(136,4,'MECS-711','30585','Software Quality Management','Theory'),(137,4,'MECS-717','30466','Cyber Crime Investigation and Cyber Forensic','Theory'),(138,4,'MECS-751','30740','Data Warehouse Data Mining','Practical'),(139,4,'MECS-753','30445','Software Testing','Practical'),(140,4,'MECS-757','30585','Minor Project / Term Paper','Practical'),(141,17,'MERA 701','30220','CIM','Theory'),(142,17,'MERA 703','USICT30008','COMPUTER VISION','Theory'),(143,17,'MERA 713','30750','SOFT COMPUTING','Theory'),(144,17,'MERA 719','30104','SIMULATION AND MODELLING','Theory'),(145,17,'MERA 721','30228','MACHINE LEARNING','Theory'),(146,17,'MERA 751','30761','SIMULATION AND MODELLING','Practical'),(147,17,'MERA 753','30750','SOFT COMPUTING','Practical'),(148,18,'IT-203','30104','Circuits and Systems','Theory'),(149,18,'IT-209','30080','Computer Graphics','Theory'),(150,18,'IT-207','30564','Object Oriented Programming using C++','Theory'),(151,18,'IT-205','30767','Electronic Devices & Circuits','Theory'),(153,18,'IT-201','30779','Computational Methods','Theory'),(154,18,'IT-257','30080','Computer Graphics Lab.','Practical'),(155,18,'IT-255','30564','Object Oriented Programming using Lab','Practical'),(156,18,'IT-251','30767','Electronic Devices & Circuits Lab.','Practical'),(158,18,'IT-253','30778','Computation Lab.','Practical'),(159,19,'IT-403','30204','Software testing','Theory'),(160,19,'IT-413','30597','Front End Design Tools and Web Technologies','Theory'),(161,19,'IT-415','30709','Advance Java','Theory'),(162,19,'IT-401','30536','Advance Computer Network','Theory'),(163,19,'IT-451','30536','Advance Computer Network Lab. ','Practical'),(164,19,'IT-461','30474','Software Testing Lab.','Practical'),(165,19,'IT-455','30709','Advance Java Lab.','Practical'),(166,20,'HS101','USICT30009','Communication Skills - 1','Theory'),(167,20,'BA103','30594','Chemistry - 1','Theory'),(168,20,'IT105','30739','Introduction to Computer','Theory'),(169,20,'IT107','30762','Electrical Science','Theory'),(170,20,'BA109','30259','Mathematics - 1','Theory'),(171,20,'BA111','BT300006','Physics - 1','Theory'),(172,20,'HS119*','30491','Impact of Science & Technology on Society','Theory'),(173,20,'BA151','30594','Chemistry - 1 Lab','Practical'),(174,20,'BA153','BT300006','Physics - 1 Lab','Practical'),(175,20,'IT155','30739','Computer Lab','Practical'),(176,20,'IT157','30775','Engineering Graphics -1','Practical'),(177,20,'IT159','30762','Electrical science Lab','Practical'),(178,21,'IT201','30779','Computational Techniques','Theory'),(179,21,'EC203','30742','Communications Systems  I','Theory'),(180,21,'EC205','30771','Engineering Electromagnetics','Theory'),(181,21,'IT207','30610','Object Oriented Programming Using C++','Theory'),(182,21,'EC209','30747','Digital Electronics','Theory'),(183,21,'EC211','30778','Analog Electronics II','Theory'),(184,21,'EC251','30492','Computational Techniques Lab.','Practical'),(185,21,'EC253','30742','Communications Systems  I Lab','Practical'),(186,21,'EC255','30610','Object Oriented Programming Using C++ Lab.','Practical'),(187,21,'EC257','30617','Digital Electronics Lab','Practical'),(188,21,'EC259','30778','Analog Electronics II Lab. ','Practical'),(189,22,'IT-601','30794','Information Technology','Theory'),(190,22,'IT-603','30740','Computer Architecture','Theory'),(191,22,'IT-605','30188','Programming and Data Structure','Theory'),(192,22,'IT-607','30474','Foundations of computer Science','Theory'),(193,22,'BA-609','USICT30010','Mathematics – I','Theory'),(194,22,'IT-651','30767','Information Technology Lab ','Practical'),(195,22,'IT-653','30585','Programming and Data Structure Lab ','Practical'),(196,22,'IT-655','30543','Computer Architecture Lab','Practical'),(197,22,'IT-651','30742','Information Technology Lab ','Practical'),(198,14,'MS311','30676','Principles of Management','Theory'),(199,23,'HS 101','USICT30012','Communications Skills I','Theory'),(200,23,'BA 105','USICT30011','Theory and Technology of Semiconductors','Theory'),(202,23,'EC 107','30762','Network Analysis','Theory'),(203,23,'BA 109','USICT30010','Mathematics I','Theory'),(204,23,'BA 111','30568','Physics - I','Theory'),(205,23,'HS 119','30491','Impact of Science and Technology on Society','Theory'),(206,23,'BA 151','USICT30011','Theory and Technology of Semiconductors Lab','Practical'),(207,23,'BA 153','30568','Engineering Physics I Lab','Practical'),(208,23,'IT 155','30739','Computer Lab','Practical'),(209,23,'IT 157','30759','Engineering Graphics I Lab','Practical'),(210,23,'EC 159','30762','Network Analysis Lab.','Practical'),(211,23,'HS 161','30491','Communications Skills I Lab','Practical'),(212,23,'BA 111','30554','Physics - I','Theory'),(213,23,'BA 153','USICT30011','Engineering Physics I Lab','Practical'),(214,16,'IT407','30793','Artificial Intelligence','Theory');
/*!40000 ALTER TABLE `usict_subject_allocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usict_teacher`
--

DROP TABLE IF EXISTS `usict_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usict_teacher` (
  `instructor_id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `date_of_joining` varchar(25) NOT NULL,
  `password` varchar(200) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `room_no` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`instructor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usict_teacher`
--

LOCK TABLES `usict_teacher` WRITE;
/*!40000 ALTER TABLE `usict_teacher` DISABLE KEYS */;
INSERT INTO `usict_teacher` VALUES ('30080','Dr Ramakishore',NULL,NULL,'11-02-2000 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assosciate Professor',NULL),('30092','Dr Bharti Suri',NULL,NULL,'15-07-1999 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assosciate Professor',NULL),('30093','Dr Sanjay Malik',NULL,NULL,'15-07-1999 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30104','Dr Pravin Chandra',NULL,NULL,'12-07-1999 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Professor',NULL),('30109','Dr C S Rai',NULL,NULL,'09-07-1999 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Professor',NULL),('30118','Dr BVR Reddy',NULL,NULL,'29-10-1999 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Professor',NULL),('30188','Dr Naveen Rajpal',NULL,NULL,'26-07-2000 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Professor',NULL),('30204','Dr Arvinder Kaur',NULL,NULL,'28-11-2000 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Professor',NULL),('30220','Dr P S Bharti',NULL,NULL,'23-04-2001 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assosciate Professor',NULL),('30228','Dr Amit Prakash Singh',NULL,NULL,'23-07-2001 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assosciate Professor',NULL),('30259','Dr. Abha Aggarwal','abhaaggarwal27@gmail.com','9999261618','13/8/2004','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30286','Dr Sartaj Sodhi',NULL,NULL,'06-06-2005 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30296','Dr Anjana Gosain',NULL,NULL,'01-08-2002 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Professor',NULL),('30303','Dr Udyan Ghose',NULL,NULL,'25-07-2002 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assosciate Professor',NULL),('30445','Dr Anju Saha',NULL,NULL,'15-10-2004 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assosciate Professor',NULL),('30466','Dr Anurag Jain',NULL,NULL,'05-04-2005 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30474','Dr Rinkaj Goyal',NULL,NULL,'07-06-2005 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30475','Dr Ravindra Purwar',NULL,NULL,'15-06-2005 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assosciate Professor',NULL),('30476','Dr. Arif Ali Khan',NULL,NULL,'00/00/00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30491','Dr Shuchi Sharma\r\n\r\n\r\n',NULL,NULL,'00/00/00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','.',NULL),('30492','Dr Ashish Payal',NULL,NULL,'26-07-2005 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30494','Mr Parijat Mathur',NULL,NULL,'14-06-2005 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30536','Ms Jyotsna Yadav',NULL,NULL,'02-08-2006 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30543','Dr R L Ujjwal',NULL,NULL,'01-09-2006 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30554','Mr. Neeleshwar',NULL,NULL,'00/00/00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','.',NULL),('30564','Dr M Balakrishna',NULL,NULL,'30-11-2006 |','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30566','Ms Reena Gupta',NULL,NULL,'27-11-2006 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30568','Dr. Anjana Bagga',NULL,NULL,'00/00/00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','.',NULL),('30585','Ms Anuradha Chug',NULL,NULL,'10-08-2007 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30594','Dr Gulshan Kumar',NULL,NULL,'00/00/00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30597','Mr Rahul Johari','rahul@ipu.ac.in','9910185349','05-09-2007 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor','E 103'),('30610','Ms Priyanka Bhutani',NULL,NULL,'04-02-2008 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30617','Dr Vandana Nath',NULL,NULL,'17-07-2008 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30618','Dr Kamaldeep Kaur',NULL,NULL,'17-07-2008 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30621','Dr. Rajiv Ranjan',NULL,NULL,'00/00/00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30676 ','Shilpa Jain\r\n',NULL,NULL,'00/00/00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','.',NULL),('30706','Ms Ruchi Sehrawat',NULL,NULL,'23-11-2010 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30707','Ms Mansi Jhamb',NULL,NULL,'19-11-2010 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30709','Ms Jasprreeti Singh',NULL,NULL,'22-11-2010 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30714','Ms Asna Furqan',NULL,NULL,'31-05-2011 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30733','Ms Geetanjali Chopra',NULL,NULL,'03-08-2015 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30734','Ms Shimpee Seema',NULL,NULL,'03-08-2015 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30739','Ms Khyati Ahlawat',NULL,NULL,'03-08-2015 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30740','Ms Sonika',NULL,NULL,'03-08-2015 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30741','Mr Ashish Joshi','ashish.j@ipu.ac.in','9654869700','03-08-2015 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor','E-602'),('30742','Mr Avinash',NULL,NULL,'19-08-2013 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30746','Mr Syed Amirrudin',NULL,NULL,'03-08-2015 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30747','Dr Manoj Taleja',NULL,NULL,'30-08-2013 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assosciate Professor',NULL),('30750','Dr V Vishwakarma',NULL,NULL,'06-09-2013 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assosciate Professor',NULL),('30759','Dr Manoj Satyarthi',NULL,NULL,'10-10-2013 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30761','Mr Shiv Ram Meena',NULL,NULL,'20-12-2013 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30762','Mr Chakresh',NULL,NULL,'01-01-2014 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30767','Ms Shweta Dabas',NULL,NULL,'23-12-2013 |','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30771','Ms Priyanka Choudhary',NULL,NULL,'18-03-2014 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30775','Mr Onkar',NULL,NULL,'04-08-2015 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30776','Mr Dileep Kumar Dwivedi',NULL,NULL,'04-08-2015 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30777','Mr Pankaj Kumar Singh',NULL,NULL,'04-08-2015 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30778','Mr Kaushik Midya',NULL,NULL,'04-08-2015 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30779','Mr Priyank',NULL,NULL,'04-08-2015 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30793','Mr Amrit Pal Singh',NULL,NULL,'30-08-2016 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30794','Ms Varsha Sisaudia',NULL,NULL,'31-08-2016 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('30795','Ms Anjali Jain',NULL,NULL,'30-08-2016 00:00:00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Assistant Professor',NULL),('BT300006','Mr. Deshraj',NULL,NULL,'00/00/00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Research Scholar',NULL),('USICT30002','Mr Deepak',NULL,NULL,'00/00/00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Research Scholar',NULL),('USICT30003','Apeksha Mittal',NULL,NULL,'00/00/00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Research Scholar',NULL),('USICT30004','Ms Madhuri',NULL,NULL,'00/00/00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Research Scholar',NULL),('USICT30005','Heena',NULL,NULL,'00/00/00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','Research Scholar',NULL),('USICT30006','MR. Amit',NULL,NULL,'00/00/00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','.',NULL),('USICT30008','MR. SUDESH',NULL,NULL,'00/00/00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','RESEARCH SCHOLAR',NULL),('USICT30009','BARNALI',NULL,NULL,'00/00/00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','.',NULL),('USICT30010','Dr. Amit Rai',NULL,NULL,'00/00/00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y',' ',NULL),('USICT30011','KP PANDEY',NULL,NULL,'00/00/00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','.',NULL),('USICT30012','BARNA SHREE',NULL,NULL,'00/00/00','$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y','.',NULL);
/*!40000 ALTER TABLE `usict_teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-25 23:35:08
