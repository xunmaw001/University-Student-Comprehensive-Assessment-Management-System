-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm62wwh
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `jspm62wwh`
--

/*!40000 DROP DATABASE IF EXISTS `jspm62wwh`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `jspm62wwh` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `jspm62wwh`;

--
-- Table structure for table `banji`
--

DROP TABLE IF EXISTS `banji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  `renshu` int(11) DEFAULT NULL COMMENT '人数',
  `banzhuren` varchar(200) DEFAULT NULL COMMENT '班主任',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `banji` (`banji`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='班级';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banji`
--

LOCK TABLES `banji` WRITE;
/*!40000 ALTER TABLE `banji` DISABLE KEYS */;
INSERT INTO `banji` VALUES (11,'2023-04-10 00:01:04','班级1',1,'班主任1','13823888881'),(12,'2023-04-10 00:01:04','班级2',2,'班主任2','13823888882'),(13,'2023-04-10 00:01:04','班级3',3,'班主任3','13823888883'),(14,'2023-04-10 00:01:04','班级4',4,'班主任4','13823888884'),(15,'2023-04-10 00:01:04','班级5',5,'班主任5','13823888885'),(16,'2023-04-10 00:01:04','班级6',6,'班主任6','13823888886'),(17,'2023-04-10 00:01:04','班级7',7,'班主任7','13823888887'),(18,'2023-04-10 00:01:04','班级8',8,'班主任8','13823888888');
/*!40000 ALTER TABLE `banji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxinxi`
--

DROP TABLE IF EXISTS `kechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `kechengfanchou` varchar(200) DEFAULT NULL COMMENT '课程范畴',
  `kechengjieshao` longtext COMMENT '课程介绍',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengmingcheng` (`kechengmingcheng`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (31,'2023-04-10 00:01:04','课程名称1','课程类型1','课程范畴1','课程介绍1'),(32,'2023-04-10 00:01:04','课程名称2','课程类型2','课程范畴2','课程介绍2'),(33,'2023-04-10 00:01:04','课程名称3','课程类型3','课程范畴3','课程介绍3'),(34,'2023-04-10 00:01:04','课程名称4','课程类型4','课程范畴4','课程介绍4'),(35,'2023-04-10 00:01:04','课程名称5','课程类型5','课程范畴5','课程介绍5'),(36,'2023-04-10 00:01:04','课程名称6','课程类型6','课程范畴6','课程介绍6'),(37,'2023-04-10 00:01:04','课程名称7','课程类型7','课程范畴7','课程介绍7'),(38,'2023-04-10 00:01:04','课程名称8','课程类型8','课程范畴8','课程介绍8');
/*!40000 ALTER TABLE `kechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','vogj8477g2pfh1mewx5e5x2ar7m34fhr','2023-04-10 00:02:59','2023-04-10 01:03:00');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-04-10 00:01:04');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (21,'2023-04-10 00:01:04','学号1','e10adc3949ba59abbe56e057f20f883e','姓名1','男','upload/xuesheng_touxiang1.jpg','13823888881','班级1'),(22,'2023-04-10 00:01:04','学号2','e10adc3949ba59abbe56e057f20f883e','姓名2','男','upload/xuesheng_touxiang2.jpg','13823888882','班级2'),(23,'2023-04-10 00:01:04','学号3','e10adc3949ba59abbe56e057f20f883e','姓名3','男','upload/xuesheng_touxiang3.jpg','13823888883','班级3'),(24,'2023-04-10 00:01:04','学号4','e10adc3949ba59abbe56e057f20f883e','姓名4','男','upload/xuesheng_touxiang4.jpg','13823888884','班级4'),(25,'2023-04-10 00:01:04','学号5','e10adc3949ba59abbe56e057f20f883e','姓名5','男','upload/xuesheng_touxiang5.jpg','13823888885','班级5'),(26,'2023-04-10 00:01:04','学号6','e10adc3949ba59abbe56e057f20f883e','姓名6','男','upload/xuesheng_touxiang6.jpg','13823888886','班级6'),(27,'2023-04-10 00:01:04','学号7','e10adc3949ba59abbe56e057f20f883e','姓名7','男','upload/xuesheng_touxiang7.jpg','13823888887','班级7'),(28,'2023-04-10 00:01:04','学号8','e10adc3949ba59abbe56e057f20f883e','姓名8','男','upload/xuesheng_touxiang8.jpg','13823888888','班级8');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zongheshuju`
--

DROP TABLE IF EXISTS `zongheshuju`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zongheshuju` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `pingshichengji` float NOT NULL COMMENT '平时成绩',
  `chengjizhanbi` float DEFAULT NULL COMMENT '成绩占比',
  `kaoqinchengji` float NOT NULL COMMENT '考勤成绩',
  `kaoqinzhanbi` float DEFAULT NULL COMMENT '考勤占比',
  `ketangchengji` float NOT NULL COMMENT '课堂成绩',
  `ketangzhanbi` float DEFAULT NULL COMMENT '课堂占比',
  `zonghechengji` int(11) DEFAULT NULL COMMENT '综合成绩',
  `chengjipingyu` varchar(200) DEFAULT NULL COMMENT '成绩评语',
  `lururiqi` date DEFAULT NULL COMMENT '录入日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1681084996800 DEFAULT CHARSET=utf8 COMMENT='综合数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zongheshuju`
--

LOCK TABLES `zongheshuju` WRITE;
/*!40000 ALTER TABLE `zongheshuju` DISABLE KEYS */;
INSERT INTO `zongheshuju` VALUES (41,'2023-04-10 00:01:04','课程名称1','学号1','姓名1','班级1',1,1,1,1,1,1,1,'成绩评语1','2023-04-10'),(42,'2023-04-10 00:01:04','课程名称2','学号2','姓名2','班级2',2,2,2,2,2,2,2,'成绩评语2','2023-04-10'),(43,'2023-04-10 00:01:04','课程名称3','学号3','姓名3','班级3',3,3,3,3,3,3,3,'成绩评语3','2023-04-10'),(44,'2023-04-10 00:01:04','课程名称4','学号4','姓名4','班级4',4,4,4,4,4,4,4,'成绩评语4','2023-04-10'),(45,'2023-04-10 00:01:04','课程名称5','学号5','姓名5','班级5',5,5,5,5,5,5,5,'成绩评语5','2023-04-10'),(46,'2023-04-10 00:01:04','课程名称6','学号6','姓名6','班级6',6,6,6,6,6,6,6,'成绩评语6','2023-04-10'),(47,'2023-04-10 00:01:04','课程名称7','学号7','姓名7','班级7',7,7,7,7,7,7,7,'成绩评语7','2023-04-10'),(48,'2023-04-10 00:01:04','课程名称8','学号8','姓名8','班级8',8,8,8,8,8,8,8,'成绩评语8','2023-04-10'),(1681084996799,'2023-04-10 00:03:16','课程名称1','学号1','姓名1','班级1',89,0.6,78,0.2,80,0.2,85,'1','2023-04-10');
/*!40000 ALTER TABLE `zongheshuju` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-25 19:53:30
