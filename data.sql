CREATE DATABASE  IF NOT EXISTS `meals` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `meals`;
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)
--
-- Host: 127.0.0.1    Database: meals
-- ------------------------------------------------------
-- Server version	5.6.17

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add rest shop',7,'add_restshop'),(20,'Can change rest shop',7,'change_restshop'),(21,'Can delete rest shop',7,'delete_restshop'),(22,'Can add log entry',8,'add_logentry'),(23,'Can change log entry',8,'change_logentry'),(24,'Can delete log entry',8,'delete_logentry');
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
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$10000$EKlyvcRnuxX1$/WqUMhK4Tc7q2LsbGjWfLUZ7V40FQCAtNqhFi4f7xGo=','2014-04-26 06:50:15',1,'pison','','','szh1216@gmail.com',1,1,'2014-04-25 07:04:08');
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
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`),
  CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'rest shop','getmeal','restshop'),(8,'log entry','admin','logentry');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
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
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('7f50dhid48sx096z9p9zhc88mj110vep','M2JjNjkyMjQyNGE5ZTI5Zjc1YjgxM2M0NmIwYTJkODU1Njc5OTY0Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-05-10 06:50:15');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `getmeal_restshop`
--

DROP TABLE IF EXISTS `getmeal_restshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `getmeal_restshop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `breakfast` int(11) DEFAULT NULL,
  `lunch` int(11) DEFAULT NULL,
  `meal` int(11) DEFAULT NULL,
  `midnight` int(11) DEFAULT NULL,
  `telephone` varchar(16) DEFAULT NULL,
  `address` varchar(48) DEFAULT NULL,
  `weights` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `getmeal_restshop`
--

LOCK TABLES `getmeal_restshop` WRITE;
/*!40000 ALTER TABLE `getmeal_restshop` DISABLE KEYS */;
INSERT INTO `getmeal_restshop` VALUES (1,'KFC',1,1,1,NULL,'123456','大陆',NULL),(2,'Madonlaod',NULL,1,NULL,NULL,'22222','你好的 ',NULL),(3,'hunber king',1,NULL,1,1,'2222','地对地导弹',NULL),(4,'kiko beer',NULL,NULL,1,1,'2222222','事实上',NULL),(5,'hello king',1,1,NULL,NULL,'881949',NULL,NULL),(6,'带壳的我都喜欢',0,0,1,1,'0577-88345653','鹿城区 桃源居金桥路138号(近学院中路)',0),(7,'龙泉巷鸡蛋煎饼',1,1,1,0,'13868303067','鹿城区 龙泉巷7弄2号(近汽车服务中心)',0),(8,'美乐酒楼(鸿翔锦园店)',0,1,1,1,'0577-88171155','鹿城区 江滨路鸿翔锦园2楼',0),(9,'金川角海鲜馆',0,1,1,0,'0577-88892222','鹿城区 飞霞北路70号永嘉大厦2楼',0),(10,'双桂坊百味餐厅',0,1,1,0,'0577-88687277','鹿城区 府前街柴桥巷94号(近假日大舞台)',0),(11,'彩云九九云南生态主题餐厅',0,1,1,0,'0577-88500099','鹿城区 南塘后街风貌景观区3号楼2-1',0),(12,'金聚德',0,1,1,0,'0577-88839772','鹿城区 谢驰巷87号(近开泰百货)',0),(13,'黄老伯酸菜鱼',0,1,1,0,'0577-88309882','鹿城区 惠民路鹿城文化中心对面',0),(14,'珍记品粥馆',1,1,1,0,'0577-88929911','鹿城区 新城新蒲路156号',0),(15,'阿勇鱼头(南汇店)',0,1,1,1,'0577-88572517','鹿城区 山前街南汇锦园4栋107-109室(近马鞍池公园后门)',0),(16,'燕语餐厅',1,1,1,1,'13587872626','鹿城区 七都上涂路55号',0),(17,'食神海宴楼',0,1,1,0,'0577-88130888','鹿城区 车站大道盛德大厦2楼(近黎明立交桥南侧)',0),(18,'瓯宴',0,1,1,1,'0577-88295999','鹿城区 横河南路14号',0),(19,'尚9美食美酒汇',0,1,1,0,'4008003939','鹿城区 望江东路115号',0),(20,'阿鑫高压鱼头',0,1,1,1,'0577-28927599','鹿城区 虞师里大厦5室(近菜场门口)',0),(21,'LOCO世界餐厅',0,1,1,0,'0577-88891020','鹿城区 欧洲城地下运动中心',0),(22,'三门海鲜',0,1,1,0,'0577-88107878','鹿城区 鹿城区东游路73号(近东欧游泳池)',0),(23,'老朔门',0,1,1,1,'0577-88661579','鹿城区 府东路763号',0),(24,'虾菇妹妹',0,1,1,1,'0577-88695057','鹿城区 下吕浦春晖路53号',0),(25,'一品渝香干锅鸭头',0,1,1,1,'0577-88908599','鹿城区 南浦路471号（原红太阳一楼干锅鸭头）',0),(26,'金园小厨',0,1,1,1,'0577-88200666','鹿城区 南塘街白鹿洲公园(南塘街5号楼)',0),(27,'芳博滋法式甜品',0,1,1,0,'0577-88997607','鹿城区 车站大道万顺大厦1楼（恒隆影城后门旁）',0),(28,'亿象城泰国餐厅(下吕浦店)',0,1,1,0,'0577-88867939','鹿城区 南浦路343号(近南浦桥)',0),(29,'鲤鱼门海鲜量贩',0,1,1,1,'0577-55551888','龙湾区 上江路新世纪商务大厦2楼',0),(30,'今朝大酒店',0,1,1,0,'0577-86893999','龙湾区 海滨富海路137号',0),(31,'聚品香概念餐厅',0,1,1,0,'0577-85506655','鹿城区 车站大道裕达大厦3栋11-12号(近中环影城)',0),(32,'洋葱时尚餐厅(学院店)',0,1,1,0,'0577-89891190','鹿城区 学院西路49号(近都市花苑)',0),(33,'去茶去(白鹿店)',0,1,1,1,'0577-88830077','鹿城区 飞霞北路161号白鹿影院对面(近中山公园)',0),(34,'上井精致料理',0,1,1,0,'0577-81307777','鹿城区 南塘街南塘印象7号楼2楼',0),(35,'乐阁海鲜',0,1,1,0,'0577-88159779','鹿城区 瓯江路(鹿城广场对面)',0),(36,'瑞友茗树新概念茶楼',0,1,1,1,'0577-86666798','瓯海区 过境路(近将军大酒店)',0),(37,'李相名家',0,1,1,0,'0577-27777677','鹿城区 东瓯智库花源路43号',0),(38,'Aria意餐厅',0,1,1,0,'0577-88226777','鹿城区 瓯江路拉菲度假酒店1楼东首',0),(39,'马兰花开',0,1,1,0,'0577-88682789','鹿城区 黎明东路322号(近特警桥)',0),(40,'中梁湖滨酒店',0,1,1,0,'0577-85950999','鹿城区 游泳桥1号',0),(41,'东门街一号',0,1,1,1,'0577-88991369','鹿城区 欧洲城A段105号',0),(42,'小十料理',0,1,1,0,'0577-88187188','鹿城区 望江路丽江花苑C幢104室(近去茶去)',0),(43,'香尚健康煮火锅',0,1,1,0,'0577-89992929','鹿城区 新城大道113号(波彼披萨旁)',0),(44,'波彼比萨(金庭花苑店)',0,1,1,0,'0577-88908383','鹿城区 新城大道121号金庭花苑1楼',0),(45,'郁金香铁板主题餐厅',0,1,1,0,'0577-85511155','鹿城区 南浦路376-378号(南浦桥旁 恒丰银行对面)',0),(46,'巴塞罗那西班牙餐厅',0,1,1,0,'0577-85695588','鹿城区 新城花源路7号(黎明工业区66号)',0),(47,'老北京坛子鸡',0,1,1,0,'0577-88661220','鹿城区 温迪南巷53-54号(近温迪路)',0),(48,'渔佳客火烧鱼',0,1,1,1,'0577-88101979','鹿城区 下吕浦春晖路142号',0),(49,'乐享微餐厅',0,1,1,0,'0577-88161608','鹿城区 解放街永宁巷102号(近朔门街)',0),(50,'马府家宴',0,1,1,0,'0577-88201919','鹿城区 金锁匙巷6号(与城西街交汇，在城西街老教堂旁边)',0),(51,'胡爸爸鸡骨西城路总店',0,1,1,1,'13738741877','鹿城区 西城路kfc旁67号温州银行的巷子走进去',0),(52,'胡爸爸鸡骨下吕浦店',0,1,1,1,'13757716239','鹿城区 双龙路144号',0),(53,'望江酒楼',0,1,1,0,'0577-86006666','鹿城区 望江西路丽江花苑2楼',0),(54,'云天楼米兰国际大酒店',0,1,1,0,'0577-88018888','鹿城区 南浦路157号',0),(55,'憩生活西班牙餐厅',0,1,1,0,'0577-88816868','鹿城区 瓯江路海事局对面',0),(56,'小团圆餐厅',0,1,1,0,'0577-88668808','鹿城区 第一桥128号（原温州饭店）',0),(57,'小桥流水',0,1,1,1,'0577-88918787','鹿城区 新城黎明工业区花源路7号(近巴塞罗那西班牙餐厅)',0),(58,'永国排挡',0,1,1,0,'0577-88183307','鹿城区 市区陡门头7号',0),(59,'悦其中(新城店)',0,1,1,0,'0577-88919928','鹿城区 新城万源路838号(近大房子，大宅门宾馆)',0),(60,'意杰金棕榈自助餐厅',0,0,1,0,'0577-88022222','鹿城区 民航路23号意杰金棕榈酒店内(奥林匹克体育中心对面)',0),(61,'臻典西餐厅',0,1,1,0,'0577-88358508','鹿城区 车站大道424号（黎明立交桥附近，均瑶宾馆斜对面）',0),(62,'香港小厨茶餐厅',0,1,1,1,'0577-88681888','鹿城区 小高桥16号(近乘凉桥)',0),(63,'阿川渔庄',0,1,1,0,'0577-88116665','鹿城区 水心马鞍池西路280号',0),(64,'果穆中西料理',0,1,1,0,'0577-89502188','鹿城区 望江东路32号',0),(65,'789烧烤-菩提小厨',0,1,1,1,'0577-88312266','鹿城区 车站大道789号智慧谷D幢108-111室',0),(66,'潘记鱼头',0,1,1,1,'0577-85985199','鹿城区 黎明西路300号',0),(67,'大东阳美食',0,1,1,0,'0577-88899977','鹿城区 大南门龙泉巷龙泉公寓3-5幢2楼',0),(68,'CaSaDaLI达利西班牙艺术餐厅',0,1,1,1,'0577-88520600','鹿城区 欧洲城二环106号(凯旋门旁)',0),(69,'蔚蓝海岸',0,1,1,1,'0577-88128868','鹿城区 瓯江路海事局往东500米',0),(70,'美亚堤地中海餐厅(新城店)',0,1,1,0,'0577-88915789','鹿城区 黎明工业区67号东欧智库(一颗树对面)',0),(71,'玫嘉西厨',0,1,1,0,'0577-88830333','鹿城区 瓯江路香榭丽花园东门(鹿城广场西大门对面)',0),(72,'吾同艺厨',0,1,1,0,'0577-88805666','瓯海区 雪山路340号(景山中医院院区旁，近原休闲园)',0),(73,'吉吉润中华湖南料理',0,1,1,0,'0577-81171717','鹿城区 望江东路7号',0),(74,'花咲居酒屋',0,1,1,0,'0577-66998088','永嘉县 瓯北镇阳光大道香港城N4号',0),(75,'甜蔻甜品',0,1,1,0,'18757748307','鹿城区 纱帽河24号(近五马街，开太百货，纱帽河商城)',0),(76,'海捞舫水晶宫',0,0,1,1,'0577-88617861','鹿城区 马鞍池大厦1楼',0),(77,'黄记面铺',1,1,1,1,'0577-88120387','鹿城区 新城宏源路10号(浙一家楼下)',0),(78,'得尔乐(公安路店)',0,1,1,0,'0577-88212188','鹿城区 公安路74号',0),(79,'得尔乐(均瑶宾馆店)',0,1,1,0,'0577-88098788','鹿城区 车站大道均瑶宾馆1-3楼',0),(80,'得尔乐(新桥店)',0,1,1,0,'0577-88567788','瓯海区 新桥街道站前路199号地质科技大厦',0),(81,'云井料理',0,1,1,0,'0577-80166666','鹿城区 南浦路473号',0),(82,'苹果果木牛排',0,1,1,0,'0577-88982187','鹿城区 温迪北巷38号',0),(83,'桃花酒坊(欧洲城 总店)',0,1,1,1,'0577-88811717','鹿城区 江滨西路欧洲城一期5幢117室',0),(84,'尼珂波咖啡吧',0,1,1,0,'0577-88237717','鹿城区 正大南门荷花公寓4栋101室(莲花路口)',0),(85,'谢记家烧',0,1,1,1,'0577-88200080','鹿城区 新码道18号',0),(86,'万岁寿司·料理(欧洲城店)',0,1,1,0,'0577-88891592','鹿城区 欧洲城A区120-121号(近罗马广场)',0),(87,'万岁寿司·料理(第一桥店)',0,1,1,0,'0577-88160886','鹿城区 第一桥路城市广场美食区36号(近柴桥巷)',0),(88,'万岁寿司·料理(温迪店)',0,1,1,0,'0577-88985919','鹿城区 下吕浦温迪路61-63号',0),(89,'顺溜龙虾馆',0,1,1,1,'15858750580','瓯海区 鱼鳞浃西路13-14号',0),(90,'锦泓老字号猪脏粉',0,0,1,1,'0577-11212122','鹿城区 东联大厦29号(近四川饭店)',0),(91,'印度之星',0,1,1,1,'0577-88994446','鹿城区 下吕浦双龙路267-269号',0),(92,'品都海鲜楼',0,1,1,1,'0577-86582222','鹿城区 汤家桥路',0),(93,'靓靓蒸虾',0,1,1,1,'0577-88803073','鹿城区 府东路10号（工贸对面）',0),(94,'汝意餐厅',0,1,1,1,'0577-56560808','鹿城区 印象南塘2号楼',0),(95,'金园小厨',0,1,1,1,'0577-88200666','鹿城区 南塘风貌街5号楼东四幢',0),(96,'老友记牛腩',0,1,1,0,'0577-86768858','鹿城区 马鞍池东路51号',0);
/*!40000 ALTER TABLE `getmeal_restshop` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-27 10:42:04
