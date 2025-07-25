CREATE DATABASE  IF NOT EXISTS `testdemo1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `testdemo1`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: testdemo1
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can view permission',1,'view_permission'),(5,'Can add group',2,'add_group'),(6,'Can change group',2,'change_group'),(7,'Can delete group',2,'delete_group'),(8,'Can view group',2,'view_group'),(9,'Can add user',3,'add_user'),(10,'Can change user',3,'change_user'),(11,'Can delete user',3,'delete_user'),(12,'Can view user',3,'view_user'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add log entry',6,'add_logentry'),(22,'Can change log entry',6,'change_logentry'),(23,'Can delete log entry',6,'delete_logentry'),(24,'Can view log entry',6,'view_logentry'),(25,'Can add student info',7,'add_studentinfo'),(26,'Can change student info',7,'change_studentinfo'),(27,'Can delete student info',7,'delete_studentinfo'),(28,'Can view student info',7,'view_studentinfo'),(29,'Can add object',8,'add_object'),(30,'Can change object',8,'change_object'),(31,'Can delete object',8,'delete_object'),(32,'Can view object',8,'view_object'),(33,'Can add objectss',8,'add_objectss'),(34,'Can change objectss',8,'change_objectss'),(35,'Can delete objectss',8,'delete_objectss'),(36,'Can view objectss',8,'view_objectss'),(37,'Can add objectss2',9,'add_objectss2'),(38,'Can change objectss2',9,'change_objectss2'),(39,'Can delete objectss2',9,'delete_objectss2'),(40,'Can view objectss2',9,'view_objectss2'),(41,'Can add objectss3',10,'add_objectss3'),(42,'Can change objectss3',10,'change_objectss3'),(43,'Can delete objectss3',10,'delete_objectss3'),(44,'Can view objectss3',10,'view_objectss3'),(45,'Can add market list',11,'add_marketlist'),(46,'Can change market list',11,'change_marketlist'),(47,'Can delete market list',11,'delete_marketlist'),(48,'Can view market list',11,'view_marketlist'),(49,'Can add raffle list',12,'add_rafflelist'),(50,'Can change raffle list',12,'change_rafflelist'),(51,'Can delete raffle list',12,'delete_rafflelist'),(52,'Can view raffle list',12,'view_rafflelist');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$1000000$YaTsZuw4ItCsF74ZvgaCJy$Q54ubxfoVYOwA6PFFvDnYAIzUHD02Ujpbysqxq+pb70=','2025-07-07 06:57:54.287824',1,'Chen','','','www@qq.com',1,1,'2025-07-07 06:56:54.277126');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_stu`
--

DROP TABLE IF EXISTS `class_stu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_stu` (
  `id` int NOT NULL,
  `class_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_stu`
--

LOCK TABLES `class_stu` WRITE;
/*!40000 ALTER TABLE `class_stu` DISABLE KEYS */;
INSERT INTO `class_stu` VALUES (1,'chen');
/*!40000 ALTER TABLE `class_stu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (6,'admin','logentry'),(2,'auth','group'),(1,'auth','permission'),(3,'auth','user'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(11,'Valley_Trading','marketlist'),(8,'Valley_Trading','objectss'),(9,'Valley_Trading','objectss2'),(10,'Valley_Trading','objectss3'),(12,'Valley_Trading','rafflelist'),(7,'Valley_Trading','studentinfo');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-07-07 06:36:04.414803'),(2,'contenttypes','0002_remove_content_type_name','2025-07-07 06:36:04.491221'),(3,'auth','0001_initial','2025-07-07 06:36:04.878792'),(4,'auth','0002_alter_permission_name_max_length','2025-07-07 06:36:04.927094'),(5,'auth','0003_alter_user_email_max_length','2025-07-07 06:36:04.951896'),(6,'auth','0004_alter_user_username_opts','2025-07-07 06:36:04.951896'),(7,'auth','0005_alter_user_last_login_null','2025-07-07 06:36:05.000143'),(8,'auth','0006_require_contenttypes_0002','2025-07-07 06:36:05.000143'),(9,'auth','0007_alter_validators_add_error_messages','2025-07-07 06:36:05.008424'),(10,'auth','0008_alter_user_username_max_length','2025-07-07 06:36:05.057328'),(11,'auth','0009_alter_user_last_name_max_length','2025-07-07 06:36:05.154863'),(12,'auth','0010_alter_group_name_max_length','2025-07-07 06:36:05.171083'),(13,'auth','0011_update_proxy_permissions','2025-07-07 06:36:05.171083'),(14,'auth','0012_alter_user_first_name_max_length','2025-07-07 06:36:05.228116'),(15,'sessions','0001_initial','2025-07-07 06:36:05.260932'),(16,'admin','0001_initial','2025-07-07 06:46:09.255912'),(17,'admin','0002_logentry_remove_auto_add','2025-07-07 06:46:09.271878'),(18,'admin','0003_logentry_add_action_flag_choices','2025-07-07 06:46:09.271878'),(19,'Valley_Trading','0001_initial','2025-07-08 03:50:40.111629'),(20,'Valley_Trading','0002_object','2025-07-21 23:07:33.367822'),(21,'Valley_Trading','0003_rename_object_objectss','2025-07-21 23:15:19.038831'),(22,'Valley_Trading','0004_objectss2_objectss3_alter_objectss_table','2025-07-22 04:55:05.177135'),(23,'Valley_Trading','0005_objectss_kind','2025-07-22 05:42:20.608943'),(24,'Valley_Trading','0006_objectss2_kind_alter_objectss_kind','2025-07-22 10:39:34.210717'),(25,'Valley_Trading','0007_objectss3_created_at_alter_objectss2_table_and_more','2025-07-23 05:51:02.482438'),(26,'Valley_Trading','0008_remove_objectss3_created_at','2025-07-23 05:51:02.502204'),(27,'Valley_Trading','0009_objectss3_created_at','2025-07-23 05:51:02.522285'),(28,'Valley_Trading','0010_alter_objectss3_created_at','2025-07-23 05:52:46.808510'),(29,'Valley_Trading','0011_alter_objectss3_created_at','2025-07-23 05:52:46.879845'),(30,'Valley_Trading','0012_objectss3_introduce','2025-07-23 08:25:35.676134'),(31,'Valley_Trading','0013_marketlist','2025-07-23 08:43:15.776399'),(32,'Valley_Trading','0014_rafflelist','2025-07-24 02:24:39.796896');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('x0xmgx23ublnq2hghfe64o6s07ktpwy5','.eJxVjDsOwyAQBe9CHSE-wkDK9DkD2l2W4CQCyZ_Kyt1jSy6S9s3M20SCdalpnXlKYxZXocXld0OgF7cD5Ce0R5fU2zKNKA9FnnSW9575fTvdv4MKc93rQCU7GsgzAsYBoovaWs3WF12cs8aawIgQQSsVAwXMiowGX5B3YRCfL_m6OF8:1uYfnW:EkaOEUtqh2YZwarLomCgSwyNR7YnYhMTokoO_1ShWWE','2025-07-21 06:57:54.290637');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valley_trading_marketlist`
--

DROP TABLE IF EXISTS `valley_trading_marketlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `valley_trading_marketlist` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int NOT NULL,
  `image_path` varchar(200) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `introduce` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valley_trading_marketlist`
--

LOCK TABLES `valley_trading_marketlist` WRITE;
/*!40000 ALTER TABLE `valley_trading_marketlist` DISABLE KEYS */;
INSERT INTO `valley_trading_marketlist` VALUES (1,'矮人卷轴',300.00,5,'images/airen.png',NULL,'一张泛黄的羊皮纸上写满了用矮人语写的文本，并用红色的蝴蝶结将其系起来'),(2,'有缺口的土罐',270.00,10,'images/tuguan.png',NULL,'一种由陶瓷制成的古老的容器，可以运输干/湿货物'),(3,'箭头',320.00,3,'images/jiantou.png',NULL,'一种用于打猎的简陋的工具'),(4,'古代人偶',450.00,1,'images/renou.png',NULL,'一个浑身布满污垢的古代玩偶。这个人偶可以用作玩具，装饰，或者是某些仪式上的一个道具'),(5,'精灵珠宝',600.00,4,'images/zhubao.png',NULL,'虽然有点脏，但仍很漂亮。被一些人认为是精灵的古老的语言，但至今为止，都没有发现过精灵的尸体');
/*!40000 ALTER TABLE `valley_trading_marketlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valley_trading_objectss`
--

DROP TABLE IF EXISTS `valley_trading_objectss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `valley_trading_objectss` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int NOT NULL,
  `image_path` varchar(200) NOT NULL,
  `kind` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valley_trading_objectss`
--

LOCK TABLES `valley_trading_objectss` WRITE;
/*!40000 ALTER TABLE `valley_trading_objectss` DISABLE KEYS */;
INSERT INTO `valley_trading_objectss` VALUES (1,'花椰菜',50.00,10,'images/Top_2.png',2),(2,'黄水仙',25.00,6,'images/Top_1.png',1),(3,'啤酒花',75.00,22,'images/Top_3.png',3),(4,'玉米',14.00,12,'images/Top_4.png',3),(5,'防风草',48.00,15,'images/fangfencao.png',2),(6,'香蕉',35.00,11,'images/xiangjiao.png',4),(7,'蕨菜',46.00,30,'images/juecai.png',1),(8,'韭葱',10.00,25,'images/jiucong.png',1),(9,'秋葵',18.00,34,'images/qiukui.png',1),(10,'山洞萝卜',35.00,54,'images/hole_luobo.png',5),(11,'椰子',66.00,4,'images/yezi.png',4),(12,'蒲公英',26.00,34,'images/pgy.png',1),(13,'青豆',13.00,22,'images/qindou.png',3),(14,'土豆',8.00,17,'images/tudou.png',2),(15,'大蒜',38.00,30,'images/dasuan.png',2),(16,'甘蓝',46.00,5,'images/ganlan.png',2),(17,'甜菜',56.00,32,'images/tiancai.png',2),(18,'西红柿',20.00,15,'images/tomato.png',3),(19,'蓝莓',23.00,44,'images/lanmei.png',4),(20,'辣椒',9.00,35,'images/lajiao.png',3);
/*!40000 ALTER TABLE `valley_trading_objectss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valley_trading_objectss2`
--

DROP TABLE IF EXISTS `valley_trading_objectss2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `valley_trading_objectss2` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int NOT NULL,
  `image_path` varchar(200) NOT NULL,
  `kind` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valley_trading_objectss2`
--

LOCK TABLES `valley_trading_objectss2` WRITE;
/*!40000 ALTER TABLE `valley_trading_objectss2` DISABLE KEYS */;
INSERT INTO `valley_trading_objectss2` VALUES (1,'地晶',50.00,25,'images/dijing.png',4),(2,'石英',40.00,110,'images/shiying.png',4),(3,'泪晶',55.00,34,'images/leijing.png',4),(4,'火水晶',70.00,5,'images/huoshuijing.png',4),(5,'绿宝石',300.00,4,'images/lubaoshi.png',1),(6,'海蓝宝石',400.00,3,'images/hailanbaoshi.png',1),(7,'红宝石',350.00,6,'images/hongbaoshi.png',1),(8,'紫水晶',355.00,8,'images/zishuijin.png',1),(9,'黄水晶',380.00,7,'images/huangshuijin.png',1),(10,'翡翠',500.00,5,'images/feicui.png',1),(11,'钻石',750.00,3,'images/zhuanshi.png',1),(12,'五彩碎片',1000.00,3,'images/wucaisuipian.png',1),(13,'晶球',20.00,57,'images/jinqiu.png',3),(14,'冰封晶球',30.00,45,'images/bingfenjinqiu.png',3),(15,'岩浆晶球',40.00,23,'images/yanjiangjinqiu.png',3),(16,'万象晶球',45.00,14,'images/wanxiangjinqiu.png',3),(17,'猫眼石',135.00,2,'images/maoyanshi.png',2),(18,'赤红猫眼石',155.00,1,'images/chihongmaoyanshi.png',2),(19,'透闪石',200.00,2,'images/shantoushi.png',2),(20,'重晶石',165.00,3,'images/zhongjinshi.png',2),(21,'方解石',123.00,6,'images/fangjieshi.png',2),(22,'日光榴石',258.00,3,'images/riguangliushi.png',2),(23,'绿水镍矿',235.00,1,'images/lvshuiniekuang.png',2),(24,'酸性页岩',40.00,9,'images/shuanxingyeyan.png',2),(25,'柠檬石',240.00,6,'images/ningmenshi.png',2),(26,'新硅钙石',140.00,12,'images/xinguigaishi.png',2),(27,'雌黄',200.00,13,'images/cihuang.png',2),(28,'黄铁矿',80.00,10,'images/huangtiehuang.png',2),(29,'幽灵水晶',385.00,2,'images/youlingshuijin.png',2),(30,'皂石',125.00,7,'images/zaoshi.png',2),(31,'赤铁矿',90.00,11,'images/chitiekuang.png',2),(32,'精灵石',460.00,4,'images/jinglingshi.png',2),(33,'陶瓷碎片',300.00,5,'images/taocishuipain.png',2),(34,'泥石',165.00,3,'images/nishi.png',2);
/*!40000 ALTER TABLE `valley_trading_objectss2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valley_trading_objectss3`
--

DROP TABLE IF EXISTS `valley_trading_objectss3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `valley_trading_objectss3` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int NOT NULL,
  `image_path` varchar(200) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `introduce` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valley_trading_objectss3`
--

LOCK TABLES `valley_trading_objectss3` WRITE;
/*!40000 ALTER TABLE `valley_trading_objectss3` DISABLE KEYS */;
INSERT INTO `valley_trading_objectss3` VALUES (1,'谜之盒',100.00,1,'images/mizhihe.png','2025-07-24 02:15:51.587726','');
/*!40000 ALTER TABLE `valley_trading_objectss3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valley_trading_rafflelist`
--

DROP TABLE IF EXISTS `valley_trading_rafflelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `valley_trading_rafflelist` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int NOT NULL,
  `image_path` varchar(200) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `introduce` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valley_trading_rafflelist`
--

LOCK TABLES `valley_trading_rafflelist` WRITE;
/*!40000 ALTER TABLE `valley_trading_rafflelist` DISABLE KEYS */;
INSERT INTO `valley_trading_rafflelist` VALUES (1,'煎鸡蛋',30.00,1,'images/jianjidan.png',NULL,'煎一面的荷包蛋'),(2,'沙拉',40.00,1,'images/shala.png',NULL,'健康的田园沙拉。'),(3,'炸鱿鱼',70.00,1,'images/zhayouyu.png',NULL,'它太有嚼劲了。'),(4,'幸运午餐',70.00,1,'images/xingyunwucan.png',NULL,'特别又简单的一餐。'),(5,'披萨',66.00,1,'images/pisa.png',NULL,'受欢迎是很合理的事。'),(6,'豆类火锅',54.00,1,'images/douleihuoguo.png',NULL,'这绝对很健康。'),(7,'薯饼',28.00,1,'images/shubing.png',NULL,'金黄酥脆！'),(8,'鲑鱼晚餐',35.00,1,'images/guiyuwancan.png',NULL,'柠檬汁给它增添了特别的味道。'),(9,'爆炒青椒',56.00,1,'images/baocaoqinjiao.png',NULL,'裹着面包屑的辣青椒装满了乳酪。'),(10,'面包',30.00,1,'images/mianbao.png',NULL,'硬皮法式面包。'),(11,'鳟鱼汤',34.00,1,'images/zhunyutang.png',NULL,'很咸。'),(12,'巧克力蛋糕',90.00,1,'images/qiaokelidangao.png',NULL,'香甜柔软，还有厚厚的软糖糖衣。'),(13,'粉红蛋糕',100.00,1,'images/fenhongdangao.png',NULL,'蛋糕上面有小小的心型蜡烛'),(14,'大黄派',21.00,1,'images/dahuangpai.png',NULL,'嗯嗯，又香又甜！'),(15,'饼干',19.00,1,'images/binggan.png',NULL,'非常难嚼。'),(16,'香辣鳗鱼',90.00,1,'images/xianglamanyu.png',NULL,'真的很辣！小心点。'),(17,'冰淇淋',15.00,1,'images/bql.png',NULL,'很难找到一个不喜欢它的人。'),(18,'蓝莓千层酥',79.00,1,'images/lanmeiqiancengsu.png',NULL,'味道微妙而又清新。'),(19,'救生汉堡',50.00,1,'images/jiushenghanbao.png',NULL,'探险家们的便携小吃。'),(20,'矿工特供',46.00,1,'images/kuanggong.png',NULL,'让你持续充满能量。'),(21,'三倍浓缩咖啡',50.00,1,'images/sanbeinongsuo.png',NULL,'它比普通咖啡更有效！'),(22,'海泡布丁',120.00,1,'images/haipaobuding.png',NULL,'这种布丁布丁真的可以带您进入海洋思维定势！'),(23,'鲜虾鸡尾酒',200.00,1,'images/xianxiajiweijiu.png',NULL,'用新鲜捕获的虾制成的豪华开胃菜。'),(24,'河豚',80.00,1,'images/hetun.png',NULL,'它受到威胁时会膨胀。'),(25,'金枪鱼',60.00,1,'images/jingqiangyu.png',NULL,'一种住在海里的大型鱼。'),(26,'章鱼',150.00,1,'images/zhangyu.png',NULL,'一种神秘聪明的生物。'),(27,'鱿鱼',100.00,1,'images/youyu.png',NULL,'一种可以长得很大的深海生物。'),(28,'大海参',250.00,1,'images/dahaisen.png',NULL,'一种稀有紫色品种的海参。'),(29,'沙鱼',90.00,1,'images/shayu.png',NULL,'它用保护色隐藏自己。'),(30,'脂里嘛哈',89.00,1,'images/zhilimaha.png',NULL,'凶猛的肉食鱼，有着绚烂的橙色鳞片。'),(31,'狮子鱼',80.00,1,'images/shiziyu.png',NULL,'好斗的食肉性鱼，有毒刺。'),(32,'蜂蜜',45.00,1,'images/fengmi.png',NULL,'蜜蜂们产出的甜汁。'),(33,'啤酒',35.00,1,'images/pijiu.png',NULL,'请适度饮酒。'),(34,'恐龙蛋黄酱',180.00,1,'images/konglong.png',NULL,'粘稠且呈乳脂状，带有鲜艳的绿色。闻起来有草和皮革的味道'),(35,'鹦鹉螺',23.00,1,'images/yingwuluo.png',NULL,'嗡嗡嗡'),(36,'结婚戒指',1000.00,1,'images/jiehunjiezhi.png',NULL,'这玩意好闪亮'),(37,'蓝色软帽',500.00,1,'images/lanserunmao.png',NULL,'这顶草原之帽让人回忆起简简单单的旧时光。'),(38,'熊猫帽',900.00,1,'images/xiongmaomao.png',NULL,'	一顶萌萌的熊猫帽子，这是Eric给TGP玩家的礼物'),(39,'派对帽',700.00,1,'images/paiduimao.png',NULL,'一种让任何庆祝活动都更有趣的傻乎乎的帽子。');
/*!40000 ALTER TABLE `valley_trading_rafflelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valley_trading_studentinfo`
--

DROP TABLE IF EXISTS `valley_trading_studentinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `valley_trading_studentinfo` (
  `stu_id` varchar(20) NOT NULL,
  `stu_name` varchar(20) NOT NULL,
  `stu_psw` varchar(20) NOT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valley_trading_studentinfo`
--

LOCK TABLES `valley_trading_studentinfo` WRITE;
/*!40000 ALTER TABLE `valley_trading_studentinfo` DISABLE KEYS */;
INSERT INTO `valley_trading_studentinfo` VALUES ('','陈兴','54188'),('00001','zhangsan','123456'),('00002','lisi','12345');
/*!40000 ALTER TABLE `valley_trading_studentinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-25 14:10:57
