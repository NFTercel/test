-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: nebulas_forum
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
-- Table structure for table `access_tokens`
--

DROP TABLE IF EXISTS `access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_tokens` (
  `token` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `last_activity_at` datetime NOT NULL,
  `lifetime_seconds` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`token`),
  KEY `access_tokens_user_id_foreign` (`user_id`),
  CONSTRAINT `access_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_tokens`
--

LOCK TABLES `access_tokens` WRITE;
/*!40000 ALTER TABLE `access_tokens` DISABLE KEYS */;
INSERT INTO `access_tokens` VALUES ('2jaD0paCOvDE4Lr1Jwwnrk4vTf49ks82PztG6U60',64,'2019-01-02 15:07:31',157680000,'2019-01-02 13:51:37'),('31OAFpPez92mvDAPqcV5oNQdm1VGoo7Mk9WyPhCq',18,'2018-12-29 16:21:03',3600,'2018-12-29 16:21:03'),('4ROFUsjNzqeZBrX5ywvvPROsgpMR1HH82PECKMzy',34,'2019-01-03 02:46:57',157680000,'2019-01-02 12:46:36'),('7ZZRNXeh2stcocUNfT5LlBjmODpAQS4m22xCbWLI',31,'2019-01-05 18:19:42',3600,'2019-01-05 18:19:42'),('8e6G8N5hYT8B25jO8KYSyiPM0DIPI788WE1NaTht',17,'2019-01-08 06:17:12',157680000,'2019-01-08 06:11:04'),('A9Q98Q810Vjj7bMWNWNrBhPkdeuuIj1OzHPKbGKt',31,'2019-01-03 06:50:25',3600,'2019-01-03 06:50:25'),('ByTVtSjzwiCZx9VKiJUpJ9o7ozDiy3OlbL6QQOfN',36,'2019-01-03 07:24:18',3600,'2019-01-03 07:24:18'),('cS26tJu93sw5fXkazO6iMoiPDWaQaW5DZmnAou3g',80,'2019-01-08 09:59:14',157680000,'2019-01-03 09:12:11'),('eTtsmTd3Pz0edw7r9Q9OGGnqDTl3iGwngUn8CA5r',17,'2019-01-02 14:43:13',3600,'2019-01-02 14:43:13'),('F1zIsNBYHUNAl53GKeKWubLg4EgBiyYCMrKH76BX',36,'2019-01-02 06:32:27',3600,'2019-01-02 06:32:27'),('fIVHAPRuHTbCNqm3DibEb2NL6AJEYq8N7A87M1tI',3,'2018-12-29 16:24:41',3600,'2018-12-29 16:24:41'),('FsAjwyodf3xwAz08tEwN7wAiMkhDH993DAgQV2M7',17,'2019-01-02 12:51:57',3600,'2019-01-02 12:51:57'),('fwwkRcA3NN8Yx19fzR8zPcan5rcaFZhBFRBDZWxH',31,'2019-01-08 06:25:18',157680000,'2019-01-07 14:36:39'),('hm5wgyYW5dA7u2GqkP0PVF7LU6atgX6OjXnfrYvn',65,'2019-01-07 13:23:00',157680000,'2019-01-02 14:25:31'),('jp2N27dc0jYeSsjllJHG9sMwWxCEK5XYDui9dFAC',70,'2019-01-09 05:53:20',157680000,'2019-01-03 07:25:03'),('kpDP7QzPIFd37oL6ahQaF8SeQq5AN2uJRp45QWQV',31,'2019-01-02 20:42:39',3600,'2019-01-02 20:42:39'),('mXvjDxRAJI1es1egArda6TLkPnzqDJWmYcPkubE9',61,'2019-01-02 11:56:13',157680000,'2019-01-02 11:56:12'),('n7pO5hPdORoRJovOJ8z9HOEUGd3YGNhrgT1dKldf',1,'2019-01-09 03:50:14',3600,'2019-01-09 03:50:14'),('Nn7oP21OakWWKrJl3XxnhdAOBqFumY2lAnIZLJ1g',84,'2019-01-07 05:40:57',3600,'2019-01-07 05:40:57'),('NvLyJagkj7FstZp27jQuTA3nGFgf9akIz8m5Xdnw',84,'2019-01-08 11:39:53',3600,'2019-01-08 11:39:53'),('o8zayD8DEiadmxdqhIeNT6nPkI9Uv0sTohzBeheS',31,'2019-01-07 11:54:23',3600,'2019-01-07 11:54:23'),('Ohiffs97sKEUUwKbhelwdTl8oxcXJRNiUMKmruaB',108,'2019-01-08 13:03:06',157680000,'2019-01-08 13:03:06'),('Q7vXszc1kFKNXNS7gV89sbnlOQe8KvIGgVYCzoYq',110,'2019-01-09 05:21:41',157680000,'2019-01-09 03:51:44'),('qctw4wCfdgqMhug7Bz2zB8xw7nYSilboAC4KX2Y4',36,'2019-01-02 13:45:23',3600,'2019-01-02 13:45:23'),('QGfLa3AHxkXZXm03VRJ1WANIKlUUR70jpd4Q2zYF',84,'2019-01-08 06:08:58',3600,'2019-01-08 06:08:58'),('r6gWLazBx9pc43etTa6bwVRC2MUx26kYN0zOocGo',31,'2019-01-02 10:46:41',3600,'2019-01-02 10:46:41'),('RwdzSOPSNv1Yr6CykM8KEAeOV92oCjVNMREZGHKx',1,'2019-01-08 12:34:47',3600,'2019-01-08 12:34:47'),('rXHMsyIrmgtTFXfUpf24UqMgBLtFXDKFhVvVpnnG',35,'2019-01-03 02:47:08',157680000,'2019-01-02 06:28:30'),('S8xB7ByUu4DI97FL4lfJGN4ruExXP0a0wGLXvEPp',17,'2019-01-02 12:49:23',3600,'2019-01-02 12:49:23'),('sDD27kkPmUY7fY9mGEyt59B4WnfhaVpGWY9reYjO',36,'2019-01-08 06:10:05',3600,'2019-01-08 06:10:05'),('tTYSFHdORy8w6fJKOQJOH3dFYDjhM15YNbnuTf4C',62,'2019-01-08 06:40:57',157680000,'2019-01-02 12:48:15'),('UtLTDY50LjX2SUojT3wksB02QSxlgfGSqWeCQZk4',37,'2019-01-07 07:31:09',157680000,'2019-01-02 12:59:05'),('vbsbH9qjgdHMqr0Pv6GnFiy4fMGlvx1n8pS6wWJK',33,'2019-01-09 05:46:31',157680000,'2019-01-02 06:28:06'),('zgRq6SJZKbhqvxVAbjVFyZzarsES67yCCQZ1RrMH',109,'2019-01-09 03:50:22',157680000,'2019-01-09 03:48:43');
/*!40000 ALTER TABLE `access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_keys`
--

DROP TABLE IF EXISTS `api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_keys` (
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `allowed_ips` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `last_activity_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_keys_key_unique` (`key`),
  KEY `api_keys_user_id_foreign` (`user_id`),
  CONSTRAINT `api_keys_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_keys`
--

LOCK TABLES `api_keys` WRITE;
/*!40000 ALTER TABLE `api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussion_tag`
--

DROP TABLE IF EXISTS `discussion_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_tag` (
  `discussion_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`discussion_id`,`tag_id`),
  KEY `discussion_tag_tag_id_foreign` (`tag_id`),
  CONSTRAINT `discussion_tag_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `discussion_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion_tag`
--

LOCK TABLES `discussion_tag` WRITE;
/*!40000 ALTER TABLE `discussion_tag` DISABLE KEYS */;
INSERT INTO `discussion_tag` VALUES (7,1),(13,2),(2,6),(3,6),(5,7),(6,7),(9,7),(10,7),(11,7),(12,7),(14,7),(15,15),(16,15),(15,19);
/*!40000 ALTER TABLE `discussion_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussion_user`
--

DROP TABLE IF EXISTS `discussion_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_user` (
  `user_id` int(10) unsigned NOT NULL,
  `discussion_id` int(10) unsigned NOT NULL,
  `last_read_at` datetime DEFAULT NULL,
  `last_read_post_number` int(10) unsigned DEFAULT NULL,
  `subscription` enum('follow','ignore') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`,`discussion_id`),
  KEY `discussion_user_discussion_id_foreign` (`discussion_id`),
  CONSTRAINT `discussion_user_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `discussion_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion_user`
--

LOCK TABLES `discussion_user` WRITE;
/*!40000 ALTER TABLE `discussion_user` DISABLE KEYS */;
INSERT INTO `discussion_user` VALUES (1,2,'2019-01-03 06:35:20',11,NULL),(1,6,'2019-01-09 05:01:17',15,NULL),(1,7,'2019-01-03 05:32:23',2,NULL),(1,9,'2019-01-04 06:26:49',2,NULL),(1,12,'2019-01-07 09:55:14',1,NULL),(1,13,'2019-01-03 05:33:54',1,NULL),(1,15,'2019-01-09 05:53:56',1,NULL),(1,16,'2019-01-09 05:54:01',1,NULL),(17,11,'2019-01-02 15:02:42',2,NULL),(17,12,'2019-01-02 14:59:16',1,NULL),(31,2,'2019-01-02 13:12:22',9,NULL),(31,3,'2019-01-02 13:29:24',2,NULL),(31,5,'2019-01-02 13:12:46',2,'follow'),(31,6,'2019-01-02 13:13:29',1,NULL),(31,7,'2019-01-02 13:29:58',2,NULL),(31,9,'2019-01-02 13:41:43',2,'follow'),(31,10,'2019-01-02 14:07:32',1,NULL),(31,11,'2019-01-03 07:36:56',3,NULL),(31,12,'2019-01-03 07:37:36',1,NULL),(31,13,'2019-01-03 06:58:04',1,NULL),(31,14,'2019-01-03 07:36:26',1,NULL),(33,2,'2019-01-03 04:15:23',9,'follow'),(33,3,'2019-01-02 12:50:50',2,'follow'),(33,5,'2019-01-07 12:18:56',2,NULL),(33,6,'2019-01-02 12:52:15',1,NULL),(33,7,'2019-01-02 13:06:19',2,NULL),(33,9,'2019-01-03 04:15:54',2,NULL),(33,10,'2019-01-03 04:16:37',1,NULL),(33,11,'2019-01-03 04:15:16',2,NULL),(34,2,'2019-01-02 13:12:56',9,'follow'),(34,3,'2019-01-02 12:52:31',2,NULL),(34,5,'2019-01-02 12:50:42',1,NULL),(34,7,'2019-01-02 13:06:34',2,NULL),(35,2,'2019-01-02 12:55:14',6,NULL),(35,3,'2019-01-02 12:52:22',2,NULL),(35,5,'2019-01-02 12:50:28',1,NULL),(35,6,'2019-01-02 12:52:12',1,NULL),(35,7,'2019-01-02 13:00:07',1,NULL),(35,11,'2019-01-03 02:46:58',2,NULL),(35,12,'2019-01-03 02:47:09',1,NULL),(36,2,'2019-01-03 07:33:59',9,NULL),(36,5,'2019-01-02 13:45:38',2,NULL),(36,6,'2019-01-02 13:45:42',1,NULL),(36,9,'2019-01-02 13:45:25',2,NULL),(36,10,'2019-01-03 07:33:33',1,NULL),(36,11,'2019-01-03 07:32:51',2,NULL),(36,12,'2019-01-03 07:32:44',1,NULL),(36,13,'2019-01-08 06:13:45',1,NULL),(36,14,'2019-01-03 07:32:35',1,NULL),(37,2,'2019-01-02 13:12:16',9,'follow'),(37,3,'2019-01-02 12:50:27',2,'follow'),(37,5,'2019-01-02 12:57:37',1,NULL),(37,6,'2019-01-04 12:09:35',3,NULL),(37,7,'2019-01-02 12:59:11',1,NULL),(37,9,'2019-01-04 12:09:57',2,NULL),(60,6,'2019-01-09 03:38:16',10,NULL),(60,11,'2019-01-09 03:31:27',4,NULL),(62,6,'2019-01-02 12:50:02',1,NULL),(63,2,'2019-01-02 13:08:30',9,NULL),(63,3,'2019-01-02 13:46:43',2,NULL),(63,6,'2019-01-02 12:59:22',1,NULL),(63,7,'2019-01-02 13:00:36',2,NULL),(63,9,'2019-01-02 13:46:12',2,NULL),(64,5,'2019-01-02 13:52:17',2,NULL),(64,7,'2019-01-02 15:07:31',2,NULL),(64,10,'2019-01-02 13:53:27',1,NULL),(64,11,'2019-01-02 15:06:49',2,NULL),(64,12,'2019-01-02 15:06:56',1,NULL),(65,2,'2019-01-02 14:34:46',9,NULL),(65,3,'2019-01-02 14:37:35',2,NULL),(65,5,'2019-01-02 14:26:47',2,NULL),(65,6,'2019-01-05 11:12:10',3,NULL),(65,7,'2019-01-02 14:26:59',2,NULL),(65,9,'2019-01-02 14:28:30',2,NULL),(65,10,'2019-01-02 14:27:06',1,NULL),(65,11,'2019-01-03 14:49:49',3,NULL),(65,12,'2019-01-02 15:27:44',1,NULL),(65,14,'2019-01-03 13:29:57',1,NULL),(69,2,'2019-01-03 07:20:11',9,NULL),(69,3,'2019-01-03 07:19:12',2,NULL),(69,9,'2019-01-03 07:18:32',2,NULL),(69,10,'2019-01-03 07:18:44',1,NULL),(69,11,'2019-01-03 07:18:57',2,NULL),(70,6,'2019-01-09 04:21:44',10,NULL),(70,9,'2019-01-03 07:25:42',2,NULL),(70,11,'2019-01-09 04:21:32',4,NULL),(70,15,'2019-01-09 04:27:03',1,NULL),(70,16,'2019-01-09 05:52:31',1,NULL),(98,9,'2019-01-08 07:35:42',2,NULL),(98,14,'2019-01-08 07:36:09',1,NULL),(110,6,'2019-01-09 03:51:56',10,NULL);
/*!40000 ALTER TABLE `discussion_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussions`
--

DROP TABLE IF EXISTS `discussions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_count` int(10) unsigned NOT NULL DEFAULT '0',
  `participant_count` int(10) unsigned NOT NULL DEFAULT '0',
  `post_number_index` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `first_post_id` int(10) unsigned DEFAULT NULL,
  `last_posted_at` datetime DEFAULT NULL,
  `last_posted_user_id` int(10) unsigned DEFAULT NULL,
  `last_post_id` int(10) unsigned DEFAULT NULL,
  `last_post_number` int(10) unsigned DEFAULT NULL,
  `hidden_at` datetime DEFAULT NULL,
  `hidden_user_id` int(10) unsigned DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `is_approved` tinyint(1) NOT NULL DEFAULT '1',
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `is_sticky` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `discussions_hidden_user_id_foreign` (`hidden_user_id`),
  KEY `discussions_first_post_id_foreign` (`first_post_id`),
  KEY `discussions_last_post_id_foreign` (`last_post_id`),
  KEY `discussions_last_posted_at_index` (`last_posted_at`),
  KEY `discussions_last_posted_user_id_index` (`last_posted_user_id`),
  KEY `discussions_created_at_index` (`created_at`),
  KEY `discussions_user_id_index` (`user_id`),
  KEY `discussions_comment_count_index` (`comment_count`),
  KEY `discussions_participant_count_index` (`participant_count`),
  KEY `discussions_hidden_at_index` (`hidden_at`),
  KEY `discussions_is_locked_index` (`is_locked`),
  KEY `discussions_is_sticky_created_at_index` (`is_sticky`,`created_at`),
  FULLTEXT KEY `title` (`title`),
  CONSTRAINT `discussions_first_post_id_foreign` FOREIGN KEY (`first_post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `discussions_hidden_user_id_foreign` FOREIGN KEY (`hidden_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `discussions_last_post_id_foreign` FOREIGN KEY (`last_post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `discussions_last_posted_user_id_foreign` FOREIGN KEY (`last_posted_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `discussions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussions`
--

LOCK TABLES `discussions` WRITE;
/*!40000 ALTER TABLE `discussions` DISABLE KEYS */;
INSERT INTO `discussions` VALUES (2,'Genesis',7,5,11,'2019-01-02 12:48:40',35,NULL,'2019-01-02 13:08:28',63,NULL,9,NULL,NULL,'genesis',0,1,0,0),(3,'Go nebulas',2,2,2,'2019-01-02 12:48:54',34,NULL,'2019-01-02 12:50:27',37,NULL,2,NULL,NULL,'go-nebulas',0,1,0,0),(5,'Nebulas core developer',2,2,2,'2019-01-02 12:49:33',33,NULL,'2019-01-02 13:12:46',31,NULL,2,NULL,NULL,'nebulas-core-developer',0,1,0,0),(6,'Test',3,2,15,'2019-01-02 12:50:02',62,NULL,'2019-01-09 05:00:37',1,45,14,NULL,NULL,'test',0,1,0,0),(7,'Nebulas Nova is on testnet',2,1,2,'2019-01-02 12:58:13',63,NULL,'2019-01-02 13:00:36',63,NULL,2,NULL,NULL,'nebulas-nova-is-on-testnet',0,1,0,0),(9,'About \"Introduce Yourself\" Category',1,1,2,'2019-01-02 13:29:07',31,NULL,'2019-01-02 13:29:07',31,NULL,1,NULL,NULL,'about-introduce-yourself-category',0,1,0,1),(10,'Mainnet dev team lead',1,1,1,'2019-01-02 13:53:27',64,NULL,'2019-01-02 13:53:27',64,NULL,1,NULL,NULL,'mainnet-dev-team-lead',0,1,0,0),(11,'Hi!guys,We finally have a cool BBS!◝?◟๛?۶',1,1,4,'2019-01-02 14:34:16',65,NULL,'2019-01-09 03:31:27',60,38,4,NULL,NULL,'hi-guys-we-finally-have-a-cool-bbs',0,1,0,0),(12,'Happy New Year 2019, Nebulers',1,1,1,'2019-01-02 14:59:16',17,NULL,'2019-01-02 14:59:16',17,NULL,1,NULL,NULL,'happy-new-year-2019-nebulers',0,1,0,0),(13,'good',0,1,1,'2019-01-03 05:33:54',1,NULL,'2019-01-03 05:33:54',1,NULL,1,NULL,NULL,'good',0,1,0,0),(14,'Hi & Hello to All the people loving in Nebulas :)',1,1,1,'2019-01-03 07:32:35',36,NULL,'2019-01-03 07:32:35',36,NULL,1,NULL,NULL,'hi-hello-to-all-the-people-loving-in-nebulas',0,1,0,0),(15,'Hey guys! ',1,1,1,'2019-01-09 04:27:03',70,41,'2019-01-09 04:27:03',70,41,1,'2019-01-09 05:44:22',70,'hey-guys',0,1,0,0),(16,'星云新星测试网开发者激励活动答疑',1,1,1,'2019-01-09 05:52:30',70,47,'2019-01-09 05:52:30',70,47,1,NULL,NULL,'',0,1,0,0);
/*!40000 ALTER TABLE `discussions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_tokens`
--

DROP TABLE IF EXISTS `email_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_tokens` (
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`token`),
  KEY `email_tokens_user_id_foreign` (`user_id`),
  CONSTRAINT `email_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_tokens`
--

LOCK TABLES `email_tokens` WRITE;
/*!40000 ALTER TABLE `email_tokens` DISABLE KEYS */;
INSERT INTO `email_tokens` VALUES ('CApsmlNgI1wfTwZy9B5CLdik6FyxgNzMAejs2VVP','abc@gmail.com',107,'2019-01-08 13:02:11'),('DcCobzxUFu42UuM8KY7Y5TYvWv81Uxxq5YLFCH5y','alafjasa@14.com',103,'2019-01-08 08:12:48'),('fnrbvk8tgUii4otCv6UgREJwLj580vRvsyCcvIW3','361146441s6445@6466.com',104,'2019-01-08 08:23:35'),('ITMrkyQUK0tpyzdNMvbreC3GWwUbEqp1FwFyCws9','alafjaa@14.com',102,'2019-01-08 08:11:25'),('Pu0eCtli3y3H1rKKep82jsKBiN7aVRltOgXEEEfT','afafafaaafafafa@1alfja.com',110,'2019-01-09 03:51:43'),('SqvGcyG4LBUyzt6aDLMKTSBndoJ2cddYw7ZYxfA8','afafa@anoa.com',105,'2019-01-08 08:31:38'),('vGKlV4emxLl9TPTSEyi73sUUU7fYgfS34Ogrdfb3','dabc@gmail.com',108,'2019-01-08 13:03:04'),('WlQysr5OaXQlagtqvD3tJLJKzdcmp15bPkz6QCvg','sfsfsfs@1jala.com',106,'2019-01-08 10:16:25'),('WtkMgu7UYKdD8sqm6oS9gCYbPs5mbIQlfxvJ94Wy','alafja@14.com',101,'2019-01-08 08:11:19'),('xa24Nb2N22TDOrg5glhi7oCoSAIGMjDdI7cw7HDU','fafafaa@152.com',100,'2019-01-08 07:43:58'),('zCCmi7ieiwMwGDASltVzgafCeLWVigjlnufHK9eM','fafafa@152.com',99,'2019-01-08 07:43:05');
/*!40000 ALTER TABLE `email_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flagrow_file_downloads`
--

DROP TABLE IF EXISTS `flagrow_file_downloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flagrow_file_downloads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int(10) unsigned NOT NULL,
  `discussion_id` int(10) unsigned DEFAULT NULL,
  `post_id` int(10) unsigned DEFAULT NULL,
  `actor_id` int(10) unsigned DEFAULT NULL,
  `downloaded_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `flagrow_file_downloads_file_id_foreign` (`file_id`),
  KEY `flagrow_file_downloads_discussion_id_foreign` (`discussion_id`),
  KEY `flagrow_file_downloads_actor_id_foreign` (`actor_id`),
  CONSTRAINT `flagrow_file_downloads_actor_id_foreign` FOREIGN KEY (`actor_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `flagrow_file_downloads_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE SET NULL,
  CONSTRAINT `flagrow_file_downloads_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `flagrow_files` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flagrow_file_downloads`
--

LOCK TABLES `flagrow_file_downloads` WRITE;
/*!40000 ALTER TABLE `flagrow_file_downloads` DISABLE KEYS */;
/*!40000 ALTER TABLE `flagrow_file_downloads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flagrow_files`
--

DROP TABLE IF EXISTS `flagrow_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flagrow_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `actor_id` int(10) unsigned DEFAULT NULL,
  `discussion_id` int(10) unsigned DEFAULT NULL,
  `post_id` int(10) unsigned DEFAULT NULL,
  `base_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `upload_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `remote_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flagrow_files`
--

LOCK TABLES `flagrow_files` WRITE;
/*!40000 ALTER TABLE `flagrow_files` DISABLE KEYS */;
INSERT INTO `flagrow_files` VALUES (1,1,NULL,NULL,'017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg','2019-01-03/1546493557-995903-017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg','https://community.nebulas.io/assets/files/2019-01-03/1546493557-995903-017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg','image/jpeg',360891,'local','2019-01-03 05:32:37',NULL,'16e56491-3cc3-4fef-be17-9d1dc143a9cf','image-preview'),(2,1,NULL,NULL,'017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg','2019-01-03/1546493899-24009-017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg','https://community.nebulas.io/assets/files/2019-01-03/1546493899-24009-017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg','image/jpeg',360891,'local','2019-01-03 05:38:19',NULL,'ba51b6f5-085a-49d1-b0c3-735358bbdc65','image-preview'),(3,1,NULL,NULL,'017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg','2019-01-03/1546497304-497371-017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg','https://community.nebulas.io/assets/files/2019-01-03/1546497304-497371-017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg','image/jpeg',360891,'local','2019-01-03 06:35:04',NULL,'4e7f0fa9-27ff-4d5d-b713-41a4da5ba4b7','image-preview'),(4,1,NULL,NULL,'017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg','2019-01-03/1546497646-752862-017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg','https://community.nebulas.io/assets/files/2019-01-03/1546497646-752862-017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg','image/jpeg',360891,'local','2019-01-03 06:40:46',NULL,'5fb30159-fcf3-4163-9528-11f8914d1832','image-preview'),(5,1,NULL,NULL,'017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg','2019-01-03/1546501286-436010-017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg','https://community.nebulas.io/assets/files/2019-01-03/1546501286-436010-017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg','image/jpeg',360891,'local','2019-01-03 07:41:26',NULL,'9c49ee39-3ded-405c-82d5-6d69889ec026','image-preview'),(6,1,NULL,NULL,'017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg','2019-01-04/1546582709-282338-017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg','https://community.nebulas.io/assets/files/2019-01-04/1546582709-282338-017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg','image/jpeg',360891,'local','2019-01-04 06:18:29',NULL,'aa6aa584-982f-4f24-bf99-92e8893829b5','image-preview'),(7,1,NULL,NULL,'mix2-exploer.png','2019-01-09/1547009358-1429-mix2-exploer.png','https://community.nebulas.io/assets/files/2019-01-09/1547009358-1429-mix2-exploer.png','image/png',106849,'local','2019-01-09 04:49:18',NULL,'d3efbf83-55d4-49d1-ac0c-e6a051775fa2','image-preview'),(8,1,NULL,NULL,'017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg','2019-01-09/1547009910-137862-017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg','https://community.nebulas.io/assets/files/2019-01-09/1547009910-137862-017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg','image/jpeg',360891,'local','2019-01-09 04:58:30',NULL,'134142e6-1718-4bfb-b63d-171977d9ff86','image-preview'),(9,1,NULL,NULL,'017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg','2019-01-09/1547009960-181607-017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg','https://community.nebulas.io/assets/files/2019-01-09/1547009960-181607-017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg','image/jpeg',360891,'local','2019-01-09 04:59:20',NULL,'3902518e-c3ee-43a1-8ccf-36c9513e895c','image-preview'),(10,1,NULL,NULL,'017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg','2019-01-09/1547010035-650998-017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg','https://community.nebulas.io/assets/files/2019-01-09/1547010035-650998-017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg','image/jpeg',360891,'local','2019-01-09 05:00:35',NULL,'093f9778-9968-4368-8ec3-14055899493a','image-preview'),(11,1,NULL,NULL,'mix2-exploer.png','2019-01-09/1547010074-645321-mix2-exploer.png','https://community.nebulas.io/assets/files/2019-01-09/1547010074-645321-mix2-exploer.png','image/png',106849,'local','2019-01-09 05:01:14',NULL,'5cc45e93-6396-4ee1-be63-28de23982c18','image-preview');
/*!40000 ALTER TABLE `flagrow_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flagrow_masquerade_answers`
--

DROP TABLE IF EXISTS `flagrow_masquerade_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flagrow_masquerade_answers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `flagrow_masquerade_answers_field_id_user_id_unique` (`field_id`,`user_id`),
  KEY `flagrow_masquerade_answers_user_id_foreign` (`user_id`),
  CONSTRAINT `flagrow_masquerade_answers_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `flagrow_masquerade_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `flagrow_masquerade_answers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flagrow_masquerade_answers`
--

LOCK TABLES `flagrow_masquerade_answers` WRITE;
/*!40000 ALTER TABLE `flagrow_masquerade_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `flagrow_masquerade_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flagrow_masquerade_fields`
--

DROP TABLE IF EXISTS `flagrow_masquerade_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flagrow_masquerade_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `validation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `on_bio` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `flagrow_masquerade_fields_required_index` (`required`),
  KEY `flagrow_masquerade_fields_sort_index` (`sort`),
  KEY `flagrow_masquerade_fields_type_index` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flagrow_masquerade_fields`
--

LOCK TABLES `flagrow_masquerade_fields` WRITE;
/*!40000 ALTER TABLE `flagrow_masquerade_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `flagrow_masquerade_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flags`
--

DROP TABLE IF EXISTS `flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `flags_post_id_foreign` (`post_id`),
  KEY `flags_user_id_foreign` (`user_id`),
  KEY `flags_created_at_index` (`created_at`),
  CONSTRAINT `flags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `flags_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flags`
--

LOCK TABLES `flags` WRITE;
/*!40000 ALTER TABLE `flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_permission`
--

DROP TABLE IF EXISTS `group_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_permission` (
  `group_id` int(10) unsigned NOT NULL,
  `permission` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`group_id`,`permission`),
  CONSTRAINT `group_permission_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_permission`
--

LOCK TABLES `group_permission` WRITE;
/*!40000 ALTER TABLE `group_permission` DISABLE KEYS */;
INSERT INTO `group_permission` VALUES (2,'viewDiscussions'),(3,'discussion.flagPosts'),(3,'discussion.likePosts'),(3,'discussion.reactPosts'),(3,'discussion.reply'),(3,'discussion.replyWithoutApproval'),(3,'discussion.startWithoutApproval'),(3,'startDiscussion'),(3,'user.viewLastSeenAt'),(4,'discussion.approvePosts'),(4,'discussion.editPosts'),(4,'discussion.hide'),(4,'discussion.hidePosts'),(4,'discussion.lock'),(4,'discussion.rename'),(4,'discussion.sticky'),(4,'discussion.tag'),(4,'discussion.viewFlags'),(4,'discussion.viewIpsPosts'),(4,'user.suspend'),(4,'viewUserList'),(6,'discussion.approvePosts'),(6,'discussion.editPosts'),(6,'discussion.hide'),(6,'discussion.hidePosts'),(6,'discussion.lock'),(6,'discussion.rename'),(6,'discussion.sticky'),(6,'discussion.tag'),(6,'discussion.viewFlags'),(6,'discussion.viewIpsPosts'),(6,'user.suspend'),(6,'viewUserList'),(7,'discussion.approvePosts'),(7,'discussion.editPosts'),(7,'discussion.hide'),(7,'discussion.hidePosts'),(7,'discussion.lock'),(7,'discussion.rename'),(7,'discussion.sticky'),(7,'discussion.tag'),(7,'discussion.viewFlags'),(7,'discussion.viewIpsPosts'),(7,'user.suspend'),(7,'viewUserList');
/*!40000 ALTER TABLE `group_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_user`
--

DROP TABLE IF EXISTS `group_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_user` (
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`),
  KEY `group_user_group_id_foreign` (`group_id`),
  CONSTRAINT `group_user_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `group_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_user`
--

LOCK TABLES `group_user` WRITE;
/*!40000 ALTER TABLE `group_user` DISABLE KEYS */;
INSERT INTO `group_user` VALUES (1,1),(17,1),(31,1),(36,1),(37,1),(84,1),(17,6),(33,6),(34,6),(35,6),(36,6),(84,6),(31,7),(37,7),(64,7);
/*!40000 ALTER TABLE `group_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_singular` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_plural` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'Admin','Admins','#ff6969','fas fa-fire'),(2,'Guest','Guests',NULL,NULL),(3,'Member','Members',NULL,NULL),(4,'Mod','Mods','#FFB03A','fas fa-star'),(6,'NAS Team','NAS Team','#2A88FF','fas fa-bookmark'),(7,'Technical Committee Members','Technical Committee Members','#3051F2','fas fa-award');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) DEFAULT NULL,
  `is_internal` tinyint(1) NOT NULL DEFAULT '0',
  `is_newtab` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_providers`
--

DROP TABLE IF EXISTS `login_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_providers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `provider` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_providers_provider_identifier_unique` (`provider`,`identifier`),
  KEY `login_providers_user_id_foreign` (`user_id`),
  CONSTRAINT `login_providers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_providers`
--

LOCK TABLES `login_providers` WRITE;
/*!40000 ALTER TABLE `login_providers` DISABLE KEYS */;
INSERT INTO `login_providers` VALUES (1,69,'github','42994022','2019-01-03 07:16:59','2019-01-03 07:16:59');
/*!40000 ALTER TABLE `login_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2015_02_24_000000_create_access_tokens_table',NULL),('2015_02_24_000000_create_api_keys_table',NULL),('2015_02_24_000000_create_config_table',NULL),('2015_02_24_000000_create_discussions_table',NULL),('2015_02_24_000000_create_email_tokens_table',NULL),('2015_02_24_000000_create_groups_table',NULL),('2015_02_24_000000_create_notifications_table',NULL),('2015_02_24_000000_create_password_tokens_table',NULL),('2015_02_24_000000_create_permissions_table',NULL),('2015_02_24_000000_create_posts_table',NULL),('2015_02_24_000000_create_users_discussions_table',NULL),('2015_02_24_000000_create_users_groups_table',NULL),('2015_02_24_000000_create_users_table',NULL),('2015_09_15_000000_create_auth_tokens_table',NULL),('2015_09_20_224327_add_hide_to_discussions',NULL),('2015_09_22_030432_rename_notification_read_time',NULL),('2015_10_07_130531_rename_config_to_settings',NULL),('2015_10_24_194000_add_ip_address_to_posts',NULL),('2015_12_05_042721_change_access_tokens_columns',NULL),('2015_12_17_194247_change_settings_value_column_to_text',NULL),('2016_02_04_095452_add_slug_to_discussions',NULL),('2017_04_07_114138_add_is_private_to_discussions',NULL),('2017_04_07_114138_add_is_private_to_posts',NULL),('2017_04_09_152230_change_posts_content_column_to_mediumtext',NULL),('2018_01_11_093900_change_access_tokens_columns',NULL),('2018_01_11_094000_change_access_tokens_add_foreign_keys',NULL),('2018_01_11_095000_change_api_keys_columns',NULL),('2018_01_11_101800_rename_auth_tokens_to_registration_tokens',NULL),('2018_01_11_102000_change_registration_tokens_rename_id_to_token',NULL),('2018_01_11_102100_change_registration_tokens_created_at_to_datetime',NULL),('2018_01_11_120604_change_posts_table_to_innodb',NULL),('2018_01_11_155200_change_discussions_rename_columns',NULL),('2018_01_11_155300_change_discussions_add_foreign_keys',NULL),('2018_01_15_071700_rename_users_discussions_to_discussion_user',NULL),('2018_01_15_071800_change_discussion_user_rename_columns',NULL),('2018_01_15_071900_change_discussion_user_add_foreign_keys',NULL),('2018_01_15_072600_change_email_tokens_rename_id_to_token',NULL),('2018_01_15_072700_change_email_tokens_add_foreign_keys',NULL),('2018_01_15_072800_change_email_tokens_created_at_to_datetime',NULL),('2018_01_18_130400_rename_permissions_to_group_permission',NULL),('2018_01_18_130500_change_group_permission_add_foreign_keys',NULL),('2018_01_18_130600_rename_users_groups_to_group_user',NULL),('2018_01_18_130700_change_group_user_add_foreign_keys',NULL),('2018_01_18_133000_change_notifications_columns',NULL),('2018_01_18_133100_change_notifications_add_foreign_keys',NULL),('2018_01_18_134400_change_password_tokens_rename_id_to_token',NULL),('2018_01_18_134500_change_password_tokens_add_foreign_keys',NULL),('2018_01_18_134600_change_password_tokens_created_at_to_datetime',NULL),('2018_01_18_135000_change_posts_rename_columns',NULL),('2018_01_18_135100_change_posts_add_foreign_keys',NULL),('2018_01_30_112238_add_fulltext_index_to_discussions_title',NULL),('2018_01_30_220100_create_post_user_table',NULL),('2018_01_30_222900_change_users_rename_columns',NULL),('2018_07_21_000000_seed_default_groups',NULL),('2018_07_21_000100_seed_default_group_permissions',NULL),('2018_09_15_041340_add_users_indicies',NULL),('2018_09_15_041828_add_discussions_indicies',NULL),('2018_09_15_043337_add_notifications_indices',NULL),('2018_09_15_043621_add_posts_indices',NULL),('2018_09_22_004100_change_registration_tokens_columns',NULL),('2018_09_22_004200_create_login_providers_table',NULL),('2018_10_08_144700_add_shim_prefix_to_group_icons',NULL),('2015_09_21_011527_add_is_approved_to_discussions','flarum-approval'),('2015_09_21_011706_add_is_approved_to_posts','flarum-approval'),('2017_07_22_000000_add_default_permissions','flarum-approval'),('2018_09_29_060444_replace_emoji_shorcuts_with_unicode','flarum-emoji'),('2015_09_02_000000_add_flags_read_time_to_users_table','flarum-flags'),('2015_09_02_000000_create_flags_table','flarum-flags'),('2017_07_22_000000_add_default_permissions','flarum-flags'),('2018_06_27_101500_change_flags_rename_time_to_created_at','flarum-flags'),('2018_06_27_101600_change_flags_add_foreign_keys','flarum-flags'),('2018_06_27_105100_change_users_rename_flags_read_time_to_read_flags_at','flarum-flags'),('2018_09_15_043621_add_flags_indices','flarum-flags'),('2015_05_11_000000_create_posts_likes_table','flarum-likes'),('2015_09_04_000000_add_default_like_permissions','flarum-likes'),('2018_06_27_100600_rename_posts_likes_to_post_likes','flarum-likes'),('2018_06_27_100700_change_post_likes_add_foreign_keys','flarum-likes'),('2015_02_24_000000_add_locked_to_discussions','flarum-lock'),('2017_07_22_000000_add_default_permissions','flarum-lock'),('2018_09_15_043621_add_discussions_indices','flarum-lock'),('2015_05_11_000000_create_mentions_posts_table','flarum-mentions'),('2015_05_11_000000_create_mentions_users_table','flarum-mentions'),('2018_06_27_102000_rename_mentions_posts_to_post_mentions_post','flarum-mentions'),('2018_06_27_102100_rename_mentions_users_to_post_mentions_user','flarum-mentions'),('2018_06_27_102200_change_post_mentions_post_rename_mentions_id_to_mentions_post_id','flarum-mentions'),('2018_06_27_102300_change_post_mentions_post_add_foreign_keys','flarum-mentions'),('2018_06_27_102400_change_post_mentions_user_rename_mentions_id_to_mentions_user_id','flarum-mentions'),('2018_06_27_102500_change_post_mentions_user_add_foreign_keys','flarum-mentions'),('2015_02_24_000000_add_sticky_to_discussions','flarum-sticky'),('2017_07_22_000000_add_default_permissions','flarum-sticky'),('2018_09_15_043621_add_discussions_indices','flarum-sticky'),('2015_05_11_000000_add_subscription_to_users_discussions_table','flarum-subscriptions'),('2015_05_11_000000_add_suspended_until_to_users_table','flarum-suspend'),('2015_09_14_000000_rename_suspended_until_column','flarum-suspend'),('2017_07_22_000000_add_default_permissions','flarum-suspend'),('2018_06_27_111400_change_users_rename_suspend_until_to_suspended_until','flarum-suspend'),('2015_02_24_000000_create_discussions_tags_table','flarum-tags'),('2015_02_24_000000_create_tags_table','flarum-tags'),('2015_02_24_000000_create_users_tags_table','flarum-tags'),('2015_02_24_000000_set_default_settings','flarum-tags'),('2015_10_19_061223_make_slug_unique','flarum-tags'),('2017_07_22_000000_add_default_permissions','flarum-tags'),('2018_06_27_085200_change_tags_columns','flarum-tags'),('2018_06_27_085300_change_tags_add_foreign_keys','flarum-tags'),('2018_06_27_090400_rename_users_tags_to_tag_user','flarum-tags'),('2018_06_27_100100_change_tag_user_rename_read_time_to_marked_as_read_at','flarum-tags'),('2018_06_27_100200_change_tag_user_add_foreign_keys','flarum-tags'),('2018_06_27_103000_rename_discussions_tags_to_discussion_tag','flarum-tags'),('2018_06_27_103100_add_discussion_tag_foreign_keys','flarum-tags'),('2015_09_15_000000_add_twitter_id_to_users_table','flarum-auth-twitter'),('2018_09_22_000000_migrate_users_twitter_id_to_login_providers','flarum-auth-twitter'),('2018_09_22_000001_drop_users_twitter_id_column','flarum-auth-twitter'),('2017_03_25_013509_add_gender_to_users','reflar-user-management'),('2017_03_25_013808_create_strikes_table','reflar-user-management'),('2017_05_95_134912_add_discussion_id_to_strikes','reflar-user-management'),('2016_02_13_000000_create_links_table','sijad-links'),('2016_04_19_065618_change_links_columns','sijad-links'),('2016_11_03_000000_create_flagrow_files','flagrow-upload'),('2016_11_07_000000_add_remote_id','flagrow-upload'),('2016_11_11_000000_add_markdown_string','flagrow-upload'),('2017_04_14_000000_uuid','flagrow-upload'),('2017_04_14_000001_downloads_table','flagrow-upload'),('2017_04_19_000000_remove_markdown_string','flagrow-upload'),('2017_04_19_000001_add_tag','flagrow-upload'),('2017_04_19_000002_add_relations','flagrow-upload'),('2016_04_11_182821__create_pages_table','fof-pages'),('2016_08_28_180020_add_is_html','fof-pages'),('2017_05_09_flagrow_fields_table','flagrow-masquerade'),('2017_05_15_flagrow_answers_table','flagrow-masquerade'),('2017_06_14_flagrow_fields_on_bio','flagrow-masquerade'),('2017_09_14_flagrow_fix_indexes','flagrow-masquerade'),('2017_09_19_flagrow_fields_type','flagrow-masquerade'),('2017_10_24_flagrow_fields_validation_comma_to_pipe','flagrow-masquerade'),('2016_07_17_000000_add_default_reaction_permissions','reflar-reactions'),('2016_07_17_000000_create_posts_reactions_table','reflar-reactions'),('2017_07_22_000000_create_reactions_table','reflar-reactions'),('2018_08_02_124505_rename_posts_reactions_to_post_reactions','reflar-reactions'),('2018_08_02_133402_change_reaction_id','reflar-reactions'),('2018_08_02_200500_change_post_reactions_add_foreign_keys','reflar-reactions'),('2016_02_13_000000_create_links_table','fof-links'),('2016_04_19_065618_change_links_columns','fof-links');
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `from_user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(10) unsigned DEFAULT NULL,
  `data` blob,
  `created_at` datetime NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `read_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_from_user_id_foreign` (`from_user_id`),
  KEY `notifications_user_id_index` (`user_id`),
  CONSTRAINT `notifications_from_user_id_foreign` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,35,37,'discussionRenamed',2,_binary '{\"postNumber\":4}','2019-01-02 12:51:49',0,NULL),(2,34,33,'newPost',2,_binary '{\"postNumber\":7}','2019-01-02 12:55:43',0,NULL),(3,34,37,'postMentioned',7,_binary '{\"replyNumber\":8}','2019-01-02 12:58:31',0,NULL),(4,33,63,'newPost',2,_binary '{\"postNumber\":9}','2019-01-02 13:08:28',0,'2019-01-03 04:15:22'),(5,34,63,'newPost',2,_binary '{\"postNumber\":9}','2019-01-02 13:08:28',0,NULL),(6,37,63,'newPost',2,_binary '{\"postNumber\":9}','2019-01-02 13:08:28',0,'2019-01-02 13:12:15'),(7,64,31,'postLiked',22,NULL,'2019-01-02 14:07:35',0,NULL),(8,64,65,'postLiked',22,NULL,'2019-01-02 14:36:29',0,NULL),(9,33,1,'newPost',2,_binary '{\"postNumber\":10}','2019-01-03 05:38:25',1,NULL),(10,34,1,'newPost',2,_binary '{\"postNumber\":10}','2019-01-03 05:38:25',1,NULL),(11,37,1,'newPost',2,_binary '{\"postNumber\":10}','2019-01-03 05:38:25',1,NULL),(12,33,1,'newPost',2,_binary '{\"postNumber\":11}','2019-01-03 06:35:07',1,NULL),(13,34,1,'newPost',2,_binary '{\"postNumber\":11}','2019-01-03 06:35:07',1,NULL),(14,37,1,'newPost',2,_binary '{\"postNumber\":11}','2019-01-03 06:35:07',1,NULL),(15,17,36,'postLiked',25,NULL,'2019-01-03 07:32:48',0,NULL),(16,65,36,'postLiked',23,NULL,'2019-01-03 07:32:52',0,'2019-01-03 14:49:46'),(17,31,36,'newPost',11,_binary '{\"postNumber\":3}','2019-01-03 07:33:20',0,'2019-01-03 07:42:39'),(18,64,36,'postLiked',22,NULL,'2019-01-03 07:33:36',0,NULL),(19,31,36,'postLiked',20,NULL,'2019-01-03 07:33:41',0,'2019-01-03 07:42:39'),(20,35,36,'postLiked',2,NULL,'2019-01-03 07:33:52',0,NULL),(21,36,31,'postLiked',30,NULL,'2019-01-03 07:36:34',0,'2019-01-08 06:13:31'),(22,36,65,'postLiked',30,NULL,'2019-01-03 14:51:02',0,'2019-01-08 06:13:31'),(23,1,65,'postLiked',32,NULL,'2019-01-05 11:12:18',0,'2019-01-07 10:03:55');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `edit_time` datetime DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `is_html` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_tokens`
--

DROP TABLE IF EXISTS `password_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_tokens` (
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`token`),
  KEY `password_tokens_user_id_foreign` (`user_id`),
  CONSTRAINT `password_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_tokens`
--

LOCK TABLES `password_tokens` WRITE;
/*!40000 ALTER TABLE `password_tokens` DISABLE KEYS */;
INSERT INTO `password_tokens` VALUES ('fyVTIE7y4TpnFECO9QjdTKNTKTj5c5SdTrK3dRfw',1,'2019-01-08 09:00:51'),('Iwc23td53HGgKCu5lI529buuAZsnduTJTrPqU709',1,'2019-01-08 09:16:09');
/*!40000 ALTER TABLE `password_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_likes`
--

DROP TABLE IF EXISTS `post_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_likes` (
  `post_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`user_id`),
  KEY `post_likes_user_id_foreign` (`user_id`),
  CONSTRAINT `post_likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_likes`
--

LOCK TABLES `post_likes` WRITE;
/*!40000 ALTER TABLE `post_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_mentions_post`
--

DROP TABLE IF EXISTS `post_mentions_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_mentions_post` (
  `post_id` int(10) unsigned NOT NULL,
  `mentions_post_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`mentions_post_id`),
  KEY `post_mentions_post_mentions_post_id_foreign` (`mentions_post_id`),
  CONSTRAINT `post_mentions_post_mentions_post_id_foreign` FOREIGN KEY (`mentions_post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_mentions_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_mentions_post`
--

LOCK TABLES `post_mentions_post` WRITE;
/*!40000 ALTER TABLE `post_mentions_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_mentions_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_mentions_user`
--

DROP TABLE IF EXISTS `post_mentions_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_mentions_user` (
  `post_id` int(10) unsigned NOT NULL,
  `mentions_user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`mentions_user_id`),
  KEY `post_mentions_user_mentions_user_id_foreign` (`mentions_user_id`),
  CONSTRAINT `post_mentions_user_mentions_user_id_foreign` FOREIGN KEY (`mentions_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_mentions_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_mentions_user`
--

LOCK TABLES `post_mentions_user` WRITE;
/*!40000 ALTER TABLE `post_mentions_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_mentions_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_reactions`
--

DROP TABLE IF EXISTS `post_reactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_reactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `reaction_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_reactions_post_id_foreign` (`post_id`),
  KEY `post_reactions_user_id_foreign` (`user_id`),
  CONSTRAINT `post_reactions_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_reactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_reactions`
--

LOCK TABLES `post_reactions` WRITE;
/*!40000 ALTER TABLE `post_reactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_reactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_user`
--

DROP TABLE IF EXISTS `post_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_user` (
  `post_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`user_id`),
  KEY `post_user_user_id_foreign` (`user_id`),
  CONSTRAINT `post_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_user`
--

LOCK TABLES `post_user` WRITE;
/*!40000 ALTER TABLE `post_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `discussion_id` int(10) unsigned NOT NULL,
  `number` int(10) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `edited_at` datetime DEFAULT NULL,
  `edited_user_id` int(10) unsigned DEFAULT NULL,
  `hidden_at` datetime DEFAULT NULL,
  `hidden_user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `is_approved` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_discussion_id_number_unique` (`discussion_id`,`number`),
  KEY `posts_edited_user_id_foreign` (`edited_user_id`),
  KEY `posts_hidden_user_id_foreign` (`hidden_user_id`),
  KEY `posts_discussion_id_number_index` (`discussion_id`,`number`),
  KEY `posts_discussion_id_created_at_index` (`discussion_id`,`created_at`),
  KEY `posts_user_id_created_at_index` (`user_id`,`created_at`),
  FULLTEXT KEY `content` (`content`),
  CONSTRAINT `posts_edited_user_id_foreign` FOREIGN KEY (`edited_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `posts_hidden_user_id_foreign` FOREIGN KEY (`hidden_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (2,2,1,'2019-01-02 12:48:40',NULL,'comment','<t><p>go nebulas</p></t>',NULL,NULL,NULL,NULL,'173.245.54.21',0,1),(3,3,1,'2019-01-02 12:48:54',NULL,'comment','<t><p>test</p></t>',NULL,NULL,NULL,NULL,'172.68.211.156',0,1),(4,5,1,'2019-01-02 12:49:33',NULL,'comment','<t><p>Nebulas core developer</p></t>',NULL,NULL,NULL,NULL,'162.158.78.96',0,1),(5,6,1,'2019-01-02 12:50:02',NULL,'comment','<t><p>test</p></t>',NULL,NULL,NULL,NULL,'162.158.118.186',0,1),(6,3,2,'2019-01-02 12:50:27',NULL,'comment','<t><p>Go!!!</p></t>',NULL,NULL,NULL,NULL,'172.68.46.175',0,1),(7,2,2,'2019-01-02 12:50:29',NULL,'comment','<t><p>niubi</p></t>',NULL,NULL,NULL,NULL,'172.68.211.156',0,1),(8,2,3,'2019-01-02 12:50:45',NULL,'comment','<t><p>同意</p></t>',NULL,NULL,NULL,NULL,'172.68.46.175',0,1),(9,2,4,'2019-01-02 12:51:49',NULL,'discussionRenamed','[\"genesis\",\"Genesis\"]',NULL,NULL,NULL,NULL,NULL,0,1),(10,2,5,'2019-01-02 12:52:51',NULL,'discussionTagged','[[2],[6]]',NULL,NULL,NULL,NULL,NULL,0,1),(11,2,6,'2019-01-02 12:55:10',NULL,'comment','<t><p>英文<br/>\n测试 你好<br/>\n预览</p>  \n\n\n\n</t>',NULL,NULL,NULL,NULL,'108.162.215.42',0,1),(12,2,7,'2019-01-02 12:55:42',NULL,'comment','<t><p>genesis</p></t>',NULL,NULL,NULL,NULL,'162.158.78.96',0,1),(13,7,1,'2019-01-02 12:58:13',NULL,'comment','<t><p>Finally, Nebulas Nova is on testnet now.</p></t>',NULL,NULL,NULL,NULL,'108.162.245.192',0,1),(14,2,8,'2019-01-02 12:58:31',NULL,'comment','<r><QUOTE><i>&gt; </i><p><POSTMENTION discussionid=\"2\" displayname=\"Matics\" id=\"7\" number=\"2\" username=\"Matics\">@Matics#7</POSTMENTION> niubi</p></QUOTE>\n\n<p>我也觉得</p></r>',NULL,NULL,NULL,NULL,'172.68.46.175',0,1),(15,7,2,'2019-01-02 13:00:36',NULL,'comment','<r><p><POSTMENTION discussionid=\"7\" displayname=\"Coinbase\" id=\"13\" number=\"1\" username=\"Coinbase\">@Coinbase#13</POSTMENTION> Awesome!</p></r>',NULL,NULL,NULL,NULL,'108.162.245.192',0,1),(16,2,9,'2019-01-02 13:08:28',NULL,'comment','<t><p>赞！</p></t>',NULL,NULL,NULL,NULL,'108.162.245.192',0,1),(17,5,2,'2019-01-02 13:12:46',NULL,'comment','<t><p>Welcome!</p></t>',NULL,NULL,NULL,NULL,'108.162.226.139',0,1),(18,8,1,'2019-01-02 13:19:02',NULL,'comment','<r><p>If you are posting for the first time, please introduce yourself first <URL url=\"https://community.nebulas.io/t/introduce-yourself\"><s>[</s>with tag \"introduce-yourself\"<e>](https://community.nebulas.io/t/introduce-yourself)</e></URL>. Let others know more about you. Make friends and enjoy! &#128515; &#128515;</p> </r>',NULL,NULL,NULL,NULL,'162.158.78.228',0,1),(20,9,1,'2019-01-02 13:29:07',NULL,'comment','<r><p>If you are posting for the first time, please introduce yourself first <URL url=\"https://community.nebulas.io/t/introduce-yourself\"><s>[</s>with tag \"introduce-yourself\"<e>](https://community.nebulas.io/t/introduce-yourself)</e></URL>. Let others know more about you. Make friends and enjoy! &#128515; &#128515;</p> </r>',NULL,NULL,NULL,NULL,'162.158.79.121',0,1),(21,9,2,'2019-01-02 13:29:13',NULL,'discussionStickied','{\"sticky\":true}',NULL,NULL,NULL,NULL,NULL,0,1),(22,10,1,'2019-01-02 13:53:27',NULL,'comment','<t><p>Chief Architect of Nebulas mainnet dev team.</p></t>',NULL,NULL,NULL,NULL,'162.158.106.254',0,1),(23,11,1,'2019-01-02 14:34:16',NULL,'comment','<t><p>I\'m 史蒂芬周<br/>\n&#128515;</p> </t>',NULL,NULL,NULL,NULL,'108.162.245.192',0,1),(24,11,2,'2019-01-02 14:46:09',NULL,'comment','<t><p>Welcome!</p></t>',NULL,NULL,NULL,NULL,'162.158.78.96',0,1),(25,12,1,'2019-01-02 14:59:16',NULL,'comment','<t><p>This is Neal from Nebulas team, hope to hear more suggestions from our community in 2019!</p></t>',NULL,NULL,NULL,NULL,'172.68.47.8',0,1),(26,13,1,'2019-01-03 05:33:54',1,'comment','<r><p>[upl-image-preview url=<URL url=\"https://community.nebulas.io/assets/files/2019-01-03/1546493557-995903-017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg\">https://community.nebulas.io/assets/files/2019-01-03/1546493557-995903-017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg</URL>]</p>\n</r>',NULL,NULL,'2019-01-03 05:34:11',1,'108.162.246.8',0,1),(30,14,1,'2019-01-03 07:32:35',NULL,'comment','<r><p>Hi, there! This is xixiu from Nebulas, I\'m so glad that we can share more creative and valuable ideas here <E>:)</E><br/>\nLet\'s make some great things together in 2019! Go Nebulas!</p>\n</r>',NULL,NULL,NULL,NULL,'108.162.215.145',0,1),(31,11,3,'2019-01-03 07:33:20',NULL,'comment','<t><p>Wow, Welcome 史蒂芬周！&#128522;</p></t>',NULL,NULL,NULL,NULL,'108.162.215.145',0,1),(38,11,4,'2019-01-09 03:31:27',60,'comment','<t><p>aaf</p></t>',NULL,NULL,NULL,NULL,'108.162.246.98',0,1),(39,6,9,'2019-01-09 03:32:25',60,'comment','<t><p>fafafaaf</p></t>',NULL,NULL,NULL,NULL,'108.162.246.98',0,1),(40,6,10,'2019-01-09 03:38:16',60,'comment','<t><p>afafafa</p></t>',NULL,NULL,NULL,NULL,'108.162.246.98',0,1),(41,15,1,'2019-01-09 04:27:03',70,'comment','<t><p>Glad to meet everyone!</p></t>',NULL,NULL,NULL,NULL,'172.68.46.170',0,1),(45,6,14,'2019-01-09 05:00:37',1,'comment','<r><p><UPL-IMAGE-PREVIEW url=\"https://community.nebulas.io/assets/files/2019-01-09/1547010035-650998-017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg\">[upl-image-preview url=https://community.nebulas.io/assets/files/2019-01-09/1547010035-650998-017c5d554909920000019ae9d202fejpg-at-1280w-1l-2o-100sh.jpeg]</UPL-IMAGE-PREVIEW></p>\n</r>',NULL,NULL,NULL,NULL,'108.162.246.8',0,1),(46,6,15,'2019-01-09 05:01:17',1,'comment','<r><p><UPL-IMAGE-PREVIEW url=\"https://community.nebulas.io/assets/files/2019-01-09/1547010074-645321-mix2-exploer.png\">[upl-image-preview url=https://community.nebulas.io/assets/files/2019-01-09/1547010074-645321-mix2-exploer.png]</UPL-IMAGE-PREVIEW></p>\n</r>',NULL,NULL,'2019-01-09 05:01:23',1,'108.162.246.8',0,1),(47,16,1,'2019-01-09 05:52:30',70,'comment','<r>\n<p>在开发者激励协议上线主网之前，从2019年1月21日开始，开发者只要在星云测试网部署智能合约，即可提前体验DIP，每周自动获得相应测试星云币奖励，并可在上线主网之后兑换成主网星云币。</p>\n\n<p>详细规则，请阅读“<URL url=\"https://blog.nebulas.io/2019/01/09/nebulas-testnet-developer-incentive-protocol-dip-event-guide/\"><s>[</s>星云新星测试网开发者激励（DIP）活动规则<e>](https://blog.nebulas.io/2019/01/09/nebulas-testnet-developer-incentive-protocol-dip-event-guide/)</e></URL>”</p>\n\n<p><STRONG><s>**</s>本周五（1月11日）早上11点<e>**</e></STRONG>，星云团队将在本帖子上进行“星云测试网开发者激励活动（DIP）在线问答”为大家详细讲解测试网开发者激励活动的规则细节！大家可以在该帖子中留下关于测试网开发者激励活动的问题或评论，我们将挑选10位提出建设性问题的论坛账号，每个账号奖励5NAS。:</p>\n\n</r>',NULL,NULL,NULL,NULL,'103.22.200.183',0,1);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reactions`
--

DROP TABLE IF EXISTS `reactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reactions`
--

LOCK TABLES `reactions` WRITE;
/*!40000 ALTER TABLE `reactions` DISABLE KEYS */;
INSERT INTO `reactions` VALUES (1,'thumbsup','emoji'),(2,'thumbsdown','emoji'),(3,'laughing','emoji'),(4,'confused','emoji'),(5,'heart','emoji'),(6,'tada','emoji');
/*!40000 ALTER TABLE `reactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_tokens`
--

DROP TABLE IF EXISTS `registration_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_tokens` (
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_attributes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_tokens`
--

LOCK TABLES `registration_tokens` WRITE;
/*!40000 ALTER TABLE `registration_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('allow_post_editing','reply'),('allow_renaming','10'),('allow_sign_up','1'),('custom_footer',''),('custom_header',''),('custom_less','.Hero-subtitle-homepage \n{\ntext-align:left;\n}'),('default_locale','en'),('default_route','/all'),('extensions_enabled','[\"flarum-approval\",\"flarum-bbcode\",\"flarum-emoji\",\"flarum-lang-english\",\"flarum-flags\",\"flarum-likes\",\"flarum-lock\",\"flarum-markdown\",\"flarum-mentions\",\"flarum-statistics\",\"flarum-sticky\",\"flarum-subscriptions\",\"flarum-suspend\",\"flarum-tags\",\"flarum-auth-github\",\"jsthon-simplified-chinese\",\"hyn-default-group\",\"reflar-user-management\",\"s9e-autoimage\",\"s9e-autovideo\",\"flagrow-upload\",\"fof-pages\",\"flagrow-masquerade\",\"fof-formatting\",\"fof-links\",\"fof-spamblock\",\"fof-profile-image-crop\"]'),('favicon_path','favicon-0lcaxf8e.png'),('flagrow.upload.addsWatermarks','0'),('flagrow.upload.disableDownloadLogging','0'),('flagrow.upload.disableHotlinkProtection','0'),('flagrow.upload.maxFileSize','204800'),('flagrow.upload.mimeTypes','{\"^image\\\\/.*\":{\"adapter\":\"local\",\"template\":\"image-preview\"}}'),('flagrow.upload.mustResize','0'),('flagrow.upload.overrideAvatarUpload','0'),('flarum-auth-facebook.app_id','378475056034325'),('flarum-auth-facebook.app_secret','bcf7ec1fdf2f36375dc6404780680764'),('flarum-auth-github.client_id','414708ba8eb4bf3eb7bd'),('flarum-auth-github.client_secret','b10f55d98372de4757ccd349a688e3f374b05664'),('flarum-auth-twitter.api_key','xvz1evFS4wEEPTGEFPHBog'),('flarum-auth-twitter.api_secret','L8qq9PZyRg6ieKGEKhZolGC0vJWLw8iEJ88DRdyOg'),('flarum-tags.max_primary_tags','10'),('flarum-tags.max_secondary_tags','10'),('flarum-tags.min_primary_tags','1'),('flarum-tags.min_secondary_tags','0'),('fof-default-group.group','3'),('fof-formatting.plugin.autoimage','1'),('fof-formatting.plugin.autovideo','1'),('fof-formatting.plugin.fancypants','1'),('fof-formatting.plugin.htmlentities',''),('fof-formatting.plugin.mediaembed',''),('fof-formatting.plugin.pipetables',''),('forum_description','Nebulas is autonomous metanet, a next generation public blockchain, The future of collaboration is coming.'),('forum_title','Nebulas Community'),('logo_path','logo-4jrowkwj.png'),('mail_driver','smtp'),('mail_encryption','SSL'),('mail_from','nebulasioforum@gmail.com'),('mail_host','smtp.gmail.com'),('mail_password','zdmehapglbdbedog'),('mail_port','465'),('mail_username','nebulasioforum@gmail.com'),('show_language_selector','1'),('theme_colored_header','0'),('theme_dark_mode','0'),('theme_primary_color','#3051F2'),('theme_secondary_color','#2A88FF'),('version','0.1.0-beta.8.1'),('welcome_message','<div class=\"Hero-subtitle-homepage\">Nebulas · Autonomous Metanet · The Future of Collaboration. <br/>\nWelcome to Nebulas Community. You can ask questions, share resources and discuss how to improve Nebulas Ecosystem with others.<br/>\nGet to know your fellow community members and <a href=\"https://community.nebulas.io/t/introduce-yourself\">introduce yourself</a>.</div>'),('welcome_title','Welcome to Nebulas Community');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strikes`
--

DROP TABLE IF EXISTS `strikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strikes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `actor_id` int(11) NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `discussion_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strikes`
--

LOCK TABLES `strikes` WRITE;
/*!40000 ALTER TABLE `strikes` DISABLE KEYS */;
/*!40000 ALTER TABLE `strikes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_user`
--

DROP TABLE IF EXISTS `tag_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag_user` (
  `user_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `marked_as_read_at` datetime DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`tag_id`),
  KEY `tag_user_tag_id_foreign` (`tag_id`),
  CONSTRAINT `tag_user_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tag_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_user`
--

LOCK TABLES `tag_user` WRITE;
/*!40000 ALTER TABLE `tag_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_path` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_mode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `default_sort` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_restricted` tinyint(1) NOT NULL DEFAULT '0',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `discussion_count` int(10) unsigned NOT NULL DEFAULT '0',
  `last_posted_at` datetime DEFAULT NULL,
  `last_posted_discussion_id` int(10) unsigned DEFAULT NULL,
  `last_posted_user_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_slug_unique` (`slug`),
  KEY `tags_parent_id_foreign` (`parent_id`),
  KEY `tags_last_posted_user_id_foreign` (`last_posted_user_id`),
  KEY `tags_last_posted_discussion_id_foreign` (`last_posted_discussion_id`),
  CONSTRAINT `tags_last_posted_discussion_id_foreign` FOREIGN KEY (`last_posted_discussion_id`) REFERENCES `discussions` (`id`) ON DELETE SET NULL,
  CONSTRAINT `tags_last_posted_user_id_foreign` FOREIGN KEY (`last_posted_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `tags_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `tags` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'News & Announcements','news-announcements','Important announcements, weekly reports, and all news about Nebulas.','#3051F2',NULL,NULL,2,NULL,NULL,0,0,2,'2019-01-02 12:58:13',7,63),(2,'Research & Develop','research-develop','For developers and anyone interested in the core technology of Nebulas.','#00D78D',NULL,NULL,4,NULL,NULL,0,0,3,'2019-01-03 05:33:54',13,1),(3,'Technical Supports','technical-supports','If you have any technical problems and want to submit issues, you can discuss them here.','#ff6969',NULL,NULL,5,NULL,NULL,0,0,0,NULL,NULL,NULL),(4,'Beginners','beginners','The place for the new one. You can ask questions and find beginners\' guides here.','#7733ff',NULL,NULL,1,NULL,NULL,0,0,0,NULL,NULL,NULL),(5,'Forum Feedback','forum-feedback','Feedback for this forum. Bugs, design and etc. Welcome to build the forum with others.','#333',NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL),(6,'Off-topic','off-topic','Discuss topics don\'t fit any other categories.','#b2b2b2',NULL,NULL,8,NULL,NULL,0,0,2,'2019-01-02 13:08:28',2,63),(7,'Introduce Yourself','introduce-yourself','Post for the first time! Introduce yourself and make friends!','#F50AA6',NULL,NULL,0,4,NULL,0,0,7,'2019-01-09 05:01:17',6,1),(8,'Announcements','announcements','All important announcements','#8fe1f5',NULL,NULL,0,1,NULL,0,0,0,NULL,NULL,NULL),(9,'Bi-weekly Community Report','bi-weekly-community-report','','#405a93',NULL,NULL,2,1,NULL,0,0,0,NULL,NULL,NULL),(10,'Bi-weekly Dev Report','bi-weekly-dev-report','','#4560E6',NULL,NULL,1,1,NULL,0,0,0,NULL,NULL,NULL),(11,'Meetups','meetups','News for official meetups. And also welcome to organize meetups in your city.','#FFB03A',NULL,NULL,3,NULL,NULL,0,0,0,NULL,NULL,NULL),(12,'Meta','meta','Discuss how to improve Nebulas community. Your ideas and suggestions.','#14BDCC',NULL,NULL,6,NULL,NULL,0,0,0,NULL,NULL,NULL),(13,'Education','education','Tech documents and guides for everyone.','#405a93',NULL,NULL,7,NULL,NULL,0,0,0,NULL,NULL,NULL),(14,'Technical Committee Monthly Report','technical-committee-monthly-report','General update.','#ec4e27',NULL,NULL,3,1,NULL,0,0,0,NULL,NULL,NULL),(15,'中文','chinese','中文论坛走这边','#ec4e27',NULL,NULL,0,NULL,NULL,0,0,2,'2019-01-09 05:52:30',16,70),(16,'新闻动态','news-chinese','星云最新动态和重要公告。','#3051F2',NULL,NULL,2,15,NULL,0,0,0,NULL,NULL,NULL),(17,'研发','research-dev-chinese','关于星云技术的一切','#00D78D',NULL,NULL,4,15,NULL,0,0,0,NULL,NULL,NULL),(18,'技术支持','tech-supports-chinese','如果使用星云的过程中遇到问题，或者发现Bug，欢迎在这里提出，和社区其他开发者一起讨论。','#ff6969',NULL,NULL,5,15,NULL,0,0,0,NULL,NULL,NULL),(19,'灌水区','off-topic-chinese','没有找到合适话题的自由讨论，请放在这里。','#b2b2b2',NULL,NULL,9,15,NULL,0,0,1,'2019-01-09 04:27:03',15,70),(20,'论坛反馈','feedback-chinese','关于本论坛建设的意见，以及各种问题反馈。','#333',NULL,NULL,8,15,NULL,0,0,0,NULL,NULL,NULL),(21,'教程文档','resources-chinese','各类中文教程、资源汇总。','#405a93',NULL,NULL,7,15,NULL,0,0,0,NULL,NULL,NULL),(22,'社区建设','community-buiding-chinese','关于星云中文社区建设的建议和提案。畅所欲言！','#14BDCC',NULL,NULL,6,15,NULL,0,0,0,NULL,NULL,NULL),(23,'新手区','introduce-yourself-chinese','新人报道，自我介绍。','#F50AA6',NULL,NULL,0,15,NULL,0,0,0,NULL,NULL,NULL),(24,'线下活动','meetups-chinese','线下活动回顾与预告。','#FFB03A',NULL,NULL,3,15,NULL,0,0,0,NULL,NULL,NULL),(25,'DApp','dapp','All about developing a DApp on Nebulas.','',NULL,NULL,0,2,NULL,0,0,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_email_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `avatar_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferences` blob,
  `joined_at` datetime DEFAULT NULL,
  `last_seen_at` datetime DEFAULT NULL,
  `marked_all_as_read_at` datetime DEFAULT NULL,
  `read_notifications_at` datetime DEFAULT NULL,
  `discussion_count` int(10) unsigned NOT NULL DEFAULT '0',
  `comment_count` int(10) unsigned NOT NULL DEFAULT '0',
  `read_flags_at` datetime DEFAULT NULL,
  `suspended_until` datetime DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `strikes` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_joined_at_index` (`joined_at`),
  KEY `users_last_seen_at_index` (`last_seen_at`),
  KEY `users_discussion_count_index` (`discussion_count`),
  KEY `users_comment_count_index` (`comment_count`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ecosys','liang.li@nebulas.io',1,'$2y$10$wzRQ6fZOwwcBLgcUfwj0p.g6P0bh6/ok7z0OxdWm28CgGlI7/29ay',NULL,NULL,_binary '{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":true,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"followAfterReply\":false,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":\"en\"}','2018-12-29 11:58:34','2019-01-09 05:54:05','2019-01-07 10:54:38','2019-01-07 11:20:43',1,2,'2019-01-07 11:07:31',NULL,'',0,0),(2,'test001','test@163.com',0,'$2y$10$2QYxKr404.Yll7o6oEtcZewcXnXP21J9qVIIJi59SghSdsomw.iQ.',NULL,NULL,NULL,'2018-12-29 12:19:33',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(3,'test01','test01@163.com',0,'$2y$10$hcqPCDQtAkb/UpNhEFZAsunuS71Bs/wZoetf5.DXbPxmyR1pBIg9q',NULL,NULL,NULL,'2018-12-29 12:20:17','2018-12-29 16:24:41',NULL,NULL,0,0,NULL,NULL,'',0,0),(4,'asdf1234','rwdxll@163.com',0,'$2y$10$ngUS/dWrx8MeWniegrcUUucPqh1d22agpYK5UktXBXOD3YlIK40iC',NULL,NULL,NULL,'2018-12-29 12:20:51',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(5,'rwdxll','rwdxlafafal@163.com',0,'$2y$10$9bMkbyWRtiAUpFjet8HmFO3cN6echIO2Xl2NEYgLmd/VVp/wZZr6a',NULL,NULL,NULL,'2018-12-29 12:22:01','2018-12-29 12:23:06',NULL,NULL,0,0,NULL,NULL,'',0,0),(6,'test002','test002@163.com',0,'$2y$10$wCXQlVo6V1UE.FF2/7vl9eG0Q6iMZHyLesa2blQufBNaqY4osPWIW',NULL,NULL,NULL,'2018-12-29 12:22:28',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(7,'test03','test03@163.com',0,'$2y$10$ECePpHcHHhw6H.fFYP31teKkX/ijlHoURlfJ8zeICj5plT1wXl1ZC',NULL,NULL,NULL,'2018-12-29 12:23:40','2018-12-29 12:24:23',NULL,NULL,0,0,NULL,NULL,'',0,0),(8,'test004','xucun.yang@nebulas.io',0,'$2y$10$HnkueEE7V6.RqptSuC6IUOdvAgdnWwdhjkVfwKQ0jV6YMkIw7gwHK',NULL,NULL,NULL,'2018-12-29 12:24:44',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(9,'rwdxll1111','rwdxll1111@163.com',0,'$2y$10$XQlAZVWWYxc5sqGIdePdw.THzZI3QgDr7ZPRFpqkAW3XwhuH6.JJi',NULL,NULL,NULL,'2018-12-29 12:44:09',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(10,'rwdxll1232131','rwdxll12@126.com',0,'$2y$10$fw/GXw2BlvKpnNT5qy8yhOvBHibKvJ7NSzXUzf2X0BPrB1rqmIW4.',NULL,NULL,NULL,'2018-12-29 13:16:44',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(11,'root123','root124@163.com',0,'$2y$10$3W4cKTNZkw.4tWiDBBQAGe5o3X1DpbCT.brNOoEyFCvV4y7P1hsUS',NULL,NULL,NULL,'2018-12-29 13:19:22',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(12,'test005','test004@163.com',0,'$2y$10$4otIzYGWjfr2NFQ3nYj.v.c8FQGzM6uvkgvMspJhOzNXkX9EvmhSi',NULL,NULL,NULL,'2018-12-29 13:28:51',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(13,'ooqruqoruqor','ljlafjalfjal@163.com',0,'$2y$10$YBcRMOXnNhJ7g9r2vvwyy.3MYtIz/s0rGKVYZaQmqBmDJce29mn5a',NULL,NULL,NULL,'2018-12-29 13:36:41',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(14,'ooqruqoruqor1','ljlafjalfj1al@163.com',0,'$2y$10$i57FtzBWkX5NggIv.tcUAOptYEywqUJtCkoERhR282f2QXhm8yPlu',NULL,NULL,NULL,'2018-12-29 13:39:00',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(15,'ecosys1','ecosys1@163.com',0,'$2y$10$x0SHCkax87VvT7mwyaB6t.Zhj/Rosby9fzgNT0k9tcX7itEWvH74G',NULL,NULL,NULL,'2018-12-29 14:41:45',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(16,'ecosys2','ecosys2@163.com',0,'$2y$10$FFQDJ7lM0vyWy5uUR.dfQeY3SHJUCqIo69AjgzhZJ/H50WZVtkk2y',NULL,NULL,NULL,'2018-12-29 14:42:19',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(17,'Neal','neaal.wen@nebulas.io',1,'$2y$10$XeVtFIjR6r1rwzo4aSb62OEH.9s47lmzhaKloeZ11N3scnnDNBY1G',NULL,'nMC1qSXoOGmzSv4P.png',NULL,'2018-12-29 16:18:00','2019-01-08 06:17:12',NULL,NULL,1,1,NULL,NULL,'',0,0),(18,'Zhuoerwang','zhuoerwang@gmail.com',0,'$2y$10$65qvKHnuISJZ36PlM9LMKueIhriSn1WjuN33kbDNNHGYPkn/k3AFW',NULL,NULL,NULL,'2018-12-29 16:20:33','2018-12-29 16:26:30',NULL,NULL,0,0,NULL,NULL,'',0,0),(19,'ecosys4556','community@nebulas.io',0,'$2y$10$vDoYxIZsBE8OALGXeZvBLuvu7WKyIjRTwg1pPxNHf7yYGdJ2ulVy.',NULL,NULL,NULL,'2019-01-02 02:46:24',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(20,'ecosys11111','liang.lssi@nebulas.io',0,'$2y$10$NjiBU611tsm53os8jpSJ6.wV85NwOnYTbf3jexjUL1ZAAyhFN.GMe',NULL,NULL,NULL,'2019-01-02 03:03:04',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(21,'ecosys11111111','liang.11lssi@nebulas.io',0,'$2y$10$f5a8bXuyIt2nQY./coiEIeN1B.acYFUD1OPl8/TgSL5vH9qvFM5p.',NULL,NULL,NULL,'2019-01-02 03:03:16',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(22,'ecosys11111111qq','lianqqg.11lssi@nebulas.io',0,'$2y$10$GsSkjg6BM8Nhq.7PjDIDEOdSL4b/2xuVfYG1EvF33CT70pbdPntly',NULL,NULL,NULL,'2019-01-02 03:03:29',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(23,'ecosys11111111qqwww','lianqqg.1www1lssi@nebulas.io',0,'$2y$10$Vgg3z/Q3boTiXqNnkBlRkuzlW8wU0mPutPpmHfhDXxgdylg5lDATm',NULL,NULL,NULL,'2019-01-02 03:05:21',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(24,'ecosys11111111qqwssww','lianqqssg.1www1lssi@nebulas.io',0,'$2y$10$OF1AuouH9Le6qHcXrSeTuOOAtIQOtvQZY1KHD0o3cWYwRRulx.NNS',NULL,NULL,NULL,'2019-01-02 03:10:54',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(25,'ecosys1111111ss1qqwssww','lianqqssg.ss1www1lssi@nebulas.io',0,'$2y$10$/CcwlVa/IzlPmX4R.T0tJuYhKlOSsDaAzYwiKp3wvQ7pVI2vqM7xe',NULL,NULL,NULL,'2019-01-02 03:26:27',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(26,'ecosys111111s1ss1qqwssww','lianqqssg.ss1wsww1lssi@nebulas.io',0,'$2y$10$LLC7TSWZAGIhquVk8e1MM.cGPBkf9dcemUw6/nsA2mBAJLn7x.A3u',NULL,NULL,NULL,'2019-01-02 03:26:50',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(27,'ecosys1111ss11s1ss1qqwssww','lianqqssg.ssss1wsww1lssi@nebulas.io',0,'$2y$10$XSqFkwDWyU6FU20W8t9zBuPb/BNlXHi5/q/myd6lWIaJmQebaz/pC',NULL,NULL,NULL,'2019-01-02 03:27:50',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(28,'ecossys1111ss11s1ss1qqwssww','lianqqssg.sssss1wsww1lssi@nebulas.io',0,'$2y$10$cEl23MTqnuD2vKtp94gAo.dJrpFpLPL1vNkMBJ4uIpsgV6cUixPIm',NULL,NULL,NULL,'2019-01-02 03:28:32',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(29,'ecossys111s1ss11s1ss1qqwssww','lianqqssg.ssssss1wsww1lssi@nebulas.io',0,'$2y$10$hOv.OX8n9TSuW6HYXglEE.Kckl6iL3d.BKTYfc8DMVjBvtyQM291O',NULL,NULL,NULL,'2019-01-02 03:29:12','2019-01-02 03:29:36',NULL,NULL,0,0,NULL,NULL,'',0,0),(30,'ecosys1111','1064034380@qq.com',1,'$2y$10$OPG1sTK6sUaPFeMLvMGQuuP.Q1S69cA668RKpEJGdZIaiYyxT38De',NULL,NULL,NULL,'2019-01-02 03:33:07','2019-01-02 05:25:09',NULL,NULL,0,0,NULL,NULL,'',0,0),(31,'smalloranges','smalloranges.lee@gmail.com',1,'$2y$10$9j/ooSkoTaKazqlAxQWx7etc/DU.K6J5jQeUcjxblDf1cDjZb37HS',NULL,'GFuZWIZJSprxCEXD.png',_binary '{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":true,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"followAfterReply\":false,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":\"en\"}','2019-01-02 05:17:47','2019-01-08 06:25:18',NULL,'2019-01-03 07:37:05',1,5,'2019-01-03 07:34:10',NULL,'',0,0),(32,'testeam','liliang880504@gmail.com',1,'$2y$10$ecpr2SlHfJmzNoWBT7X7UOQ/EoOac1qGrdYboS.ZRanOwS5NbDSF.',NULL,NULL,NULL,'2019-01-02 06:05:35','2019-01-02 11:21:08',NULL,NULL,0,0,NULL,NULL,'',0,0),(33,'larry','larry@nebulas.io',1,'$2y$10$8Zyd.4BrdktDIpux1b2y7.YIrq8.wKMbFuWDN2ULDty3y4ihM3AiW',NULL,'WbRgL52pMpyB5blo.png',NULL,'2019-01-02 06:28:01','2019-01-09 05:46:31','2019-01-02 12:52:12','2019-01-03 04:15:18',1,2,NULL,NULL,'',0,0),(34,'Matics','cszhangjinbo@gmail.com',1,'$2y$10$w3KZQ3CcnqKEx7o0yeR7sO3FCcOja3df2dvIxGolm74CBZhCBat0W',NULL,NULL,NULL,'2019-01-02 06:28:24','2019-01-03 02:46:57','2019-01-02 13:01:26','2019-01-02 13:06:57',1,3,NULL,NULL,'',0,0),(35,'chmwang','chenmin.wang@nebulas.io',1,'$2y$10$4JtOX/tCxvuyQxA9dqRGre3s8WEU1brIjCh5FfhgNhSNZmnPKALnO',NULL,'QNZRJ36mtDRwfUCX.png',_binary '{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":false,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":false,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"followAfterReply\":false,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2019-01-02 06:28:26','2019-01-03 02:47:08','2019-01-02 12:46:09','2019-01-02 12:53:55',1,1,NULL,NULL,'',0,0),(36,'xixiu','xixiu.zheng@nebulas.io',1,'$2y$10$7F8steXy/srCbHuDg7HlD.xdoKUwrTxeXzqABbt0/4dbJa/4U0tn.',NULL,NULL,NULL,'2019-01-02 06:28:34','2019-01-08 06:23:10',NULL,'2019-01-08 06:13:27',1,1,NULL,NULL,'',0,0),(37,'Xuepeng','arthur@nebulas.io',1,'$2y$10$GxrybOVjp7ZaSVoY4.G4KuQOHgjUnXJ670i3q29FAGeiApejTwMFm',NULL,'BIrNIU7KB4u5MDsv.png',_binary '{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":false,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":false,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"followAfterReply\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2019-01-02 06:28:57','2019-01-07 07:31:09','2019-01-02 07:18:00','2019-01-02 13:12:10',0,5,'2019-01-02 12:45:39',NULL,'',0,0),(38,'yuzhou','ryan.yu@nebulas.io',0,'$2y$10$L/oMmEn5vWkUPqsYYA/SR.2xHZrgQycrX7RO5nnAbsfsULWYoU4SW',NULL,NULL,NULL,'2019-01-02 07:41:55',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(39,'yuzhou1','ryan.y1u@nebulas.io',0,'$2y$10$VT6c0Ddg4Ql1KLv0FJVXeO.vaR7owV4MHJcBPTGjEsujOiRXuBHau',NULL,NULL,NULL,'2019-01-02 07:42:39',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(40,'yuzhou1s','ryan.ys1u@nebulas.io',0,'$2y$10$VU/yjwulqGBl5izXnxoyNuUmIc7a80jch1adwMQPShmhNpYhxtqgq',NULL,NULL,NULL,'2019-01-02 07:45:18',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(41,'yuzhou1q','ryan.ys1qq@nebulas.io',0,'$2y$10$1oQN4bBPLhbVjc9bgupdteo.qOYZgdlfRUftb/jjsnAMwyKJ3josm',NULL,NULL,NULL,'2019-01-02 07:46:57',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(42,'ecosyssss','rwdxlssl@163.com',0,'$2y$10$nLCpEn9FOY51et6COwEjm.MYUQiX0UA6qdaYpPXAvxHJ2UN7ZJWv6',NULL,NULL,NULL,'2019-01-02 07:51:46',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(43,'test1111','sfafafaf@142.com',0,'$2y$10$72IyiEthiQS5VaTS9CTsHeAheKqw.Zx7ICCDg6Kawv1OGYmC4vmAy',NULL,NULL,NULL,'2019-01-02 07:55:18',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(44,'aafafaf','afafafaf@jfla.com',0,'$2y$10$xyw15MVtMGdq0QEqRb6FyuSsj9Z8mkzfQ2OlKhTOC3AIYaOHKSkMW',NULL,NULL,NULL,'2019-01-02 08:02:32',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(45,'aafafafafaf','aa@163.com',0,'$2y$10$n2YQOr4yNWx5nf91RrAfDOC5d8aKcriHzU2/WwwFEYRt5YVKITNu2',NULL,NULL,NULL,'2019-01-02 08:16:41',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(46,'aafafafafaf1','aa1@163.com',0,'$2y$10$AMNO1MlizylyL3HWHzFbpuxnc3BVtoPoU8YikfpLIxcsl9ohkSM7C',NULL,NULL,NULL,'2019-01-02 08:17:01',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(47,'afafafa','aassfs@163.com',0,'$2y$10$NSnxf1epRzzz8AHuLVu8Ye6oavMa69ICGQXEa9RyC.dvd.tQAmlCW',NULL,NULL,NULL,'2019-01-02 08:20:48',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(48,'afafafas','aassfss@163.com',0,'$2y$10$oNmLi1MCwar4xR4LZkl3lexYRF2OopiI3SRRDCsNOJlVUHKbxAUWK',NULL,NULL,NULL,'2019-01-02 08:20:58',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(49,'afafafass','aassfsss@163.com',0,'$2y$10$4u5lE3Uu5dQuqwW1x97h6O1UTM6Ixgz4GYnZGWjoO8NDHSXoIiA9C',NULL,NULL,NULL,'2019-01-02 08:23:12',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(50,'afafafaffafa','afafaf@1aaflf.com',0,'$2y$10$kphdBjOVQnTugif.M.EqMOf8y/BZUvgVtGzwezakQS5GQjnwDTmsK',NULL,NULL,NULL,'2019-01-02 08:35:30',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(51,'afafafaffafas','afafasf@1aaflf.com',0,'$2y$10$Vardlks/5yJD9t/96YTXMunWoBg5we2WNO5jDhsRpyiB78Rnhmpgq',NULL,NULL,NULL,'2019-01-02 08:35:46',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(52,'afafafaffafas2','afaf2asf@1aaflf.com',0,'$2y$10$HBl0BUVycndrolxDeq4tauqNFgm0qS.eH2iOQjtBR.fDtPK7Bx4p.',NULL,NULL,NULL,'2019-01-02 08:51:21',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(53,'4464646','3646464@6466.com',0,'$2y$10$wtD.iDcw/PJin/4CG1JebelNrkNH/XKp.awz6CP3ydD5uWereK9lW',NULL,NULL,NULL,'2019-01-02 09:10:52',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(54,'44646462','36464164@6466.com',0,'$2y$10$6XWldA5kY2SRdQ8c9Z95LOQSRKK7X/q472JzgzIcxGs2HL5KcH1aa',NULL,NULL,NULL,'2019-01-02 09:11:37',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(55,'1244646462','3646416445@6466.com',0,'$2y$10$weWIDQUVh9DyO3SK5kHFMO0sYVV/YnGFei4RNiQjiTzdosRzkz5hG',NULL,NULL,NULL,'2019-01-02 09:11:47',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(56,'12446464462','36464416445@6466.com',0,'$2y$10$lXlka0KqRR.W75IMJhKWceJybnIT6UxSIo5lRYpKNDTVKZt1LgmC.',NULL,NULL,NULL,'2019-01-02 09:12:47',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(57,'124464p64462','3611464416445@6466.com',0,'$2y$10$1/p/podnof5GvGLkyDhw2OWA.uhCeQCzhU.Uk7kN4srgqXfjwiRF2',NULL,NULL,NULL,'2019-01-02 09:13:22',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(58,'124464p642462','361146444516445@6466.com',0,'$2y$10$zHeCAGBvgyFzsR/73INEGOtabq24s9tOmUy7TwiQFXny.FTyAE.96',NULL,NULL,NULL,'2019-01-02 09:15:30',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(59,'jlafkafal','hkafkahfka@134.com',0,'$2y$10$Q4tpnBjOBHnazXLtSTn5zuIBOZ6SxZnDAwZ1AWacFdzjIoonQA2oG',NULL,NULL,NULL,'2019-01-02 11:24:16','2019-01-02 11:51:20',NULL,NULL,0,0,NULL,NULL,'',0,0),(60,'NFTercel','liliang_qm@163.com',1,'$2y$10$G.ygKuN5Rq8n1tNPSozkC.CT9ZZzzDUXp03s9w29JQpxh4vQ1oIa.',NULL,NULL,_binary '{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":false,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":false,\"notify_newPost_alert\":true,\"notify_newPost_email\":false,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"followAfterReply\":false,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2019-01-02 11:52:21','2019-01-09 03:50:08',NULL,'2019-01-09 03:21:41',0,3,NULL,NULL,'',0,0),(61,'yuzhouwww','yuzhouwww@gmail.com',0,'$2y$10$jJ1xH/4lUHDpV8BmeVyPI.BOtx2tpjiRQM72OVLnK7kfIU3MtfhlW',NULL,NULL,NULL,'2019-01-02 11:56:11','2019-01-02 11:56:13',NULL,NULL,0,0,NULL,NULL,'',0,0),(62,'longinus41','longinus41@gmail.com',1,'$2y$10$F4U5WF0KxFvtU.fiKVOdkuLwA.YopikFPEzOu.vl52hi2x37agzg.',NULL,NULL,NULL,'2019-01-02 12:48:14','2019-01-08 06:40:57',NULL,NULL,1,1,NULL,NULL,'',0,0),(63,'Coinbase','ustccmchen@gmail.com',1,'$2y$10$ZC2OaycMi6KV5Vqwq3TZDeJDed2yh.vC//BLXmJhCwQZkbGjZWeJu',NULL,NULL,NULL,'2019-01-02 12:50:57','2019-01-02 13:51:53',NULL,NULL,1,3,NULL,NULL,'',0,0),(64,'Samuel','samuel.chen@nebulas.io',1,'$2y$10$sASFoIgeYWhGcZ32ymNY0uax6RGr9zdTVtg2DrFFWMoJ0qbysCLim',NULL,NULL,NULL,'2019-01-02 13:51:36','2019-01-02 15:07:31',NULL,'2019-01-02 15:07:18',1,1,NULL,NULL,'',0,0),(65,'stephenjay','qitian036@163.com',1,'$2y$10$gSPKIlCZt1TmQGJBLp26eu/ixdw3qWzWax8q6cUUzvK2Bf4Xeb4Zm',NULL,'9MJy1xSNCdERIqMf.png',_binary '{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":false,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":false,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"followAfterReply\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2019-01-02 14:25:30','2019-01-07 13:23:00',NULL,'2019-01-03 14:49:40',1,1,NULL,NULL,'',0,0),(66,'abdd','fdksfj@gmail.com',0,'$2y$10$gHUuvIexqUl9JeMIQUMXleJ/I0rCh4yetOIhzxLCZ3606qS49c57a',NULL,NULL,NULL,'2019-01-03 05:08:05',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(67,'jflkdsfa','sflskdjf@fkdslfj.com',0,'$2y$10$oc5XV6jUspdFQPULyLl9COIg0kC/ve7hnRdjlp2uBf3TmvzYjeSC2',NULL,NULL,NULL,'2019-01-03 05:15:46',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(68,'dfadfadf','sfsf@fsd.com',0,'$2y$10$4E81deyYQn7/ZzfdV3/SveqHDmi0HLCya.nhHvH8imrkV6EkPhmQW',NULL,NULL,NULL,'2019-01-03 05:23:02',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(69,'qielan7','jytallison@gmail.com',0,'$2y$10$4YPKkB1SG50Ar44CsPfvzur4gDTP1n6XpUNpc9TMyXr2bc66lsy36',NULL,'IFw6eoTgsjYT51xB.png',NULL,'2019-01-03 07:16:04','2019-01-07 05:39:22',NULL,NULL,0,0,NULL,NULL,'',0,0),(70,'Victoria','jing.lin@nebulas.io',1,'$2y$10$xt.focriUIpGMaesVuWCSO3bRl1V8W5lxcGbHFhIW1zgUMnuX5zVq',NULL,NULL,_binary '{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":false,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":false,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"followAfterReply\":false,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":\"zh\"}','2019-01-03 07:22:58','2019-01-09 05:53:20',NULL,NULL,2,2,NULL,NULL,'',0,0),(71,'1244646462sfss','36114644s16445@6466.com',0,'$2y$10$mPhVADaLOeu.LWxtC.J6luK7Xd5QEauln3XArbE53mNPbowLdEQtG',NULL,NULL,NULL,'2019-01-03 07:48:39',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(72,'dafdafs','dslfjs@fdlksjf.com',0,'$2y$10$gC2/NvUisqunmAdWRtQpl.K2Y0.MEBUNB.bcahFNHCCNByqOnNMae',NULL,NULL,NULL,'2019-01-03 08:20:45',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(73,'fdsafdasf','fdslfjdslf@fdlsj.com',0,'$2y$10$o.8sq/Lh7VFSh6zBa6579.Tkpky42lR2ySHVtNrWnO0HPmx3bEi16',NULL,NULL,NULL,'2019-01-03 08:22:34',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(74,'fdafadf','fdsfsdfsf@fds.com',0,'$2y$10$MApRQEhzLuwKH5ejkywtqu3i6kVeuUMPtF6LdQXw3HWoYOmUsZFX6',NULL,NULL,NULL,'2019-01-03 08:29:04',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(75,'lkjljfsfd','fslfj@fdsl.com',0,'$2y$10$blISSmOmCDYI4EO5Kpo7WeV9h9gmoxbbXJEU7PpriUsqFuoLyqPr2',NULL,NULL,NULL,'2019-01-03 08:35:53',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(76,'ljlkjl','fdsljf@sf.com',0,'$2y$10$Yu6wgPKV16aVwHArxGU6NO0E7byq/RyCny483Pv5sSxAaqbtSDWPK',NULL,NULL,NULL,'2019-01-03 08:40:56',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(77,'jfldskjafl','fdskfjl@flsdj.com',0,'$2y$10$5syTvxNOHXFhvzH7.IDVKeqTs9Mf3aYljqhENrLInpa0/HY6bR3r.',NULL,NULL,NULL,'2019-01-03 08:48:15',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(78,'fdafadf3','fd2slf@fdsf.com',0,'$2y$10$c3eHu/hAO4RdccLwC2n80.SWOY8z.vpXheNlJQ/H9rRAEe5KjO9jW',NULL,NULL,NULL,'2019-01-03 09:07:41',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(79,'jkfldfdsf','fdsklfj@fkdsjf.com',0,'$2y$10$Gv.Nn9xhG2h5XvxGEX2FreB7OCF7YC8Vi0ar9TukYkZK/es6qBgeO',NULL,NULL,NULL,'2019-01-03 09:10:24',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(80,'Nakamoto','zhuoer.wang@nebulas.io',1,'$2y$10$uSPd3v9BgYEohRm0cAwP7OTSuH13HaWYkc8qplI.26cjp6IVeg3ke',NULL,NULL,NULL,'2019-01-03 09:11:57','2019-01-08 09:59:14',NULL,NULL,0,0,NULL,NULL,'',0,0),(81,'afafafaaff','afaaafaafaf@163.com',0,'$2y$10$iAWREG8nZ5a2dLwcJBBIHOtr0Nx0qvBAvPknSukDLYo/QWafYeana',NULL,NULL,NULL,'2019-01-04 06:37:13',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(82,'guoping','ping.guo@nebulas.io',0,'$2y$10$01eiUPLB2C7UJ0wAb46BquVcyriRMxtnQEHDjMEuIWxadMsW1.Oue',NULL,NULL,NULL,'2019-01-04 12:43:06',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(83,'ssss','sssss@163.com',0,'$2y$10$EkCfMadlKqzJ7AWlgXuphuWdXxjzAnRc8J8uZU54Cy90mqQxD8Rg.',NULL,NULL,NULL,'2019-01-07 02:47:29',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(84,'qielan77','yuting.ji@nebulas.io',1,'$2y$10$1ZjQjaMRAKbKSu6hg0qXM.dcm0LRZb.A29IVc.gisqZD4l5ELyDIq',NULL,'oUl7jOYUkFb6sjhW.png',_binary '{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":false,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":false,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"followAfterReply\":false,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":\"zh\"}','2019-01-07 05:40:15','2019-01-08 12:25:20',NULL,NULL,0,0,NULL,NULL,'',0,0),(85,'11131','13131@gmail.com',0,'$2y$10$QxO5KtdmHm7/KbAJPl3gfeEszKh40QFzrOaofEIcnHYXttrhWuWiy',NULL,NULL,NULL,'2019-01-07 11:34:39',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(86,'111317','1319731@gmail.com',0,'$2y$10$KTtK1AjyRkAOVNrIY8OGBuTaK30OykmeDEHEgNyDkQPDzmICRVFcy',NULL,NULL,NULL,'2019-01-07 11:38:29',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(87,'aafaf','lafja@132.com',0,'$2y$10$YvTa35JmxMYIqlxj.ulZ4ejOJTGlj8FwbJSxYa2sFaWlrhje.qQaq',NULL,NULL,NULL,'2019-01-07 11:45:00',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(88,'1aafaf','lafjla@132.com',0,'$2y$10$R8lwtz0LyEe4IKar7adoceQnT9UjGfoh0jRRPuiYRraLNfXQgvYge',NULL,NULL,NULL,'2019-01-07 11:51:58',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(89,'11aafaf','la1fjla@132.com',0,'$2y$10$dQcGwWM44YM9gLUcn7T1Vexu.PxI2AOuAA4rEWW.1e8SvhD2i.l5e',NULL,NULL,NULL,'2019-01-07 11:57:09',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(90,'1afaf1aafaf','la1fjlafafa@132.com',0,'$2y$10$rwkf.WphGKueyMJw5BxXwuoAX7.K3nW25eOV33NIIHdC6cPuyf3Ci',NULL,NULL,NULL,'2019-01-07 11:57:15',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(91,'a1afaf1aafaf','la1afjlafafa@132.com',0,'$2y$10$5SAyTlsf92D0cxJZBouuUe.iQPbdRejxEsgWBoK4TYWMFL664TmT.',NULL,NULL,NULL,'2019-01-07 11:58:26',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(92,'a1afaaf1aafaf','la1afjlafaafa@132.com',0,'$2y$10$jZJuMiWQw./CmvK.RG5o1OhhBFYeJm1FA.3Iyg81pFzbdHN2ZNNHa',NULL,NULL,NULL,'2019-01-07 11:58:31',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(93,'a1afasaf1aafaf','la1afjlafasafa@132.com',0,'$2y$10$ojRu5wCW63K8oVOQ5uNmcenTXbstrK7zlItUNNsWD0CjFfTh3jtCy',NULL,NULL,NULL,'2019-01-07 12:07:01',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(94,'a1safasaf1aafaf','la1afjlafassafa@132.com',0,'$2y$10$6a3ZpEIz2CHWryCPZE8URekkjUGFZcQS7TbXinir.Fsd.TEbD3ABK',NULL,NULL,NULL,'2019-01-07 12:08:58',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(95,'sa1safasaf1aafaf','la1afjlssafassafa@132.com',0,'$2y$10$W6ih/v77GgeBEBsrwJYIwO.I7gaKxEpff5ctEdm6wVDUPX/UDdZWO',NULL,NULL,NULL,'2019-01-07 12:11:11',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(96,'sa1safasaf1aafsaf','la1asfjlssafassafa@132.com',0,'$2y$10$Fs3WIxGyMR.Acn46gLt9yu1g8F993Lyxrf4AOTFLqj.yuIrzdsXYm',NULL,NULL,NULL,'2019-01-07 12:15:16','2019-01-07 12:32:58',NULL,NULL,0,0,NULL,NULL,'',0,0),(97,'xucun','rwdxll@126.com',0,'$2y$10$5ZaqP.O6dijq1jvNiGRrkeciCE9Pb0w8jhkvlr.2uoyoGd4Uam55G',NULL,NULL,NULL,'2019-01-07 12:39:55','2019-01-07 12:44:11',NULL,NULL,0,0,NULL,NULL,'',0,0),(98,'contact','contact@nebulas.io',1,'$2y$10$vaTJUnsU6.aUkyIsIIVXveWfCuTdDEyC89QiuGMbhRUEWmUMzbk7S',NULL,NULL,NULL,'2019-01-07 12:44:37','2019-01-08 07:42:50',NULL,'2019-01-08 07:36:07',0,0,NULL,NULL,'',0,0),(99,'aaaaf','fafafa@152.com',0,'$2y$10$8LgU49rcAo5sJT.Nd.qUneoAL.AjbCrNoBq4fKQPD1OJKu3/qWOoe',NULL,NULL,NULL,'2019-01-08 07:43:05',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(100,'aaaafa','fafafaa@152.com',0,'$2y$10$aO4eWSye1Qx5LUMj9Ni3HO3LJ2Xecd.U/kH5iVi5YqbbI5H9fRxau',NULL,NULL,NULL,'2019-01-08 07:43:58',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(101,'afaafafaaa','alafja@14.com',0,'$2y$10$ZobKpA.astpTZcdqvk3KC.GtxQczMkCb1.DfBo.k3qUSd4PbZvRQK',NULL,NULL,NULL,'2019-01-08 08:11:19',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(102,'afaaafafafaaa','alafjaa@14.com',0,'$2y$10$oCi6xdeBEQR3cpdH/GkfpuNbcFrioxiconR1n2mJFfWFOT4V8T/gC',NULL,NULL,NULL,'2019-01-08 08:11:25',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(103,'afaasafafafaaa','alafjasa@14.com',0,'$2y$10$5V2p5Jy7WmuA7wLodfHq9ebbiCbgcZtcrHwuuGGXygijW4DBNCq06',NULL,NULL,NULL,'2019-01-08 08:12:48',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(104,'aasaaaf','361146441s6445@6466.com',0,'$2y$10$2rl/7yqt2V..VKBoFaMr2et40ISLGnoqXS2mZm9mjNCRT03CtZRCq',NULL,NULL,NULL,'2019-01-08 08:23:35',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(105,'afafafafafaf','afafa@anoa.com',0,'$2y$10$auxoq/beBAu15f/0CH/KYemeguUTtlho3YHrm46sO2OHvumCGdKqq',NULL,NULL,NULL,'2019-01-08 08:31:38','2019-01-08 08:31:44',NULL,NULL,0,0,NULL,NULL,'',0,0),(106,'ecosys111sss11','sfsfsfs@1jala.com',0,'$2y$10$dJtAUzPo6fyhj3CiZ3jqMe8eydKVw/.ADkOJIpjgAy.QLdMSNaZoC',NULL,NULL,NULL,'2019-01-08 10:16:25','2019-01-08 10:16:33',NULL,NULL,0,0,NULL,NULL,'',0,0),(107,'abc','abc@gmail.com',0,'$2y$10$MoGBFkm963TsAobFgh/j6OCY5SCfxQsV4nB2rIhx4kdxU69B1KKBa',NULL,NULL,NULL,'2019-01-08 13:02:11',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(108,'abcd','dabc@gmail.com',0,'$2y$10$4Aps1oiNeGvrHNh//6KT2.hNzoLasVtM15RG.wlrosgm1u7bM3nMK',NULL,NULL,NULL,'2019-01-08 13:03:04','2019-01-08 13:03:06',NULL,NULL,0,0,NULL,NULL,'',0,0),(109,'Alier','alier@nebulas.io',1,'$2y$10$kefW4T0bt8bBBAdZ5PfS8.hz61CqMxbGouYrSnoyBw2M.kdmUJHbu',NULL,NULL,NULL,'2019-01-09 03:48:42','2019-01-09 03:50:22',NULL,NULL,0,0,NULL,NULL,'',0,0),(110,'aafafafafaafaff','afafafaaafafafa@1alfja.com',0,'$2y$10$ege3QBy3moWkUN0vpEBy3OkM8PHJmzWg7BnKkyFL9B/FEoE4G/Aoq',NULL,NULL,NULL,'2019-01-09 03:51:43','2019-01-09 05:21:41',NULL,NULL,0,0,NULL,NULL,'',0,0);
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

-- Dump completed on 2019-01-09  5:55:51
