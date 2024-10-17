-- MySQL dump 10.13  Distrib 9.0.1, for macos14.4 (arm64)
--
-- Host: 127.0.0.1    Database: starter_kit
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `asset_containers`
--

DROP TABLE IF EXISTS `asset_containers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset_containers` (
                                    `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                                    `handle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                                    `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                                    `disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                                    `settings` json DEFAULT NULL,
                                    `created_at` timestamp NULL DEFAULT NULL,
                                    `updated_at` timestamp NULL DEFAULT NULL,
                                    PRIMARY KEY (`id`),
                                    UNIQUE KEY `asset_containers_handle_unique` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_containers`
--

LOCK TABLES `asset_containers` WRITE;
/*!40000 ALTER TABLE `asset_containers` DISABLE KEYS */;
INSERT INTO `asset_containers` VALUES (1,'assets','Assets','assets','{\"allow_moving\": true, \"search_index\": null, \"warm_presets\": null, \"allow_uploads\": true, \"source_preset\": null, \"allow_renaming\": true, \"create_folders\": true, \"validation_rules\": [], \"allow_downloading\": true}','2024-08-27 01:30:30','2024-08-27 01:30:30');
/*!40000 ALTER TABLE `asset_containers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets_meta`
--

DROP TABLE IF EXISTS `assets_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assets_meta` (
                               `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                               `container` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                               `folder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                               `basename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                               `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                               `extension` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                               `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                               `meta` json DEFAULT NULL,
                               `created_at` timestamp NULL DEFAULT NULL,
                               `updated_at` timestamp NULL DEFAULT NULL,
                               PRIMARY KEY (`id`),
                               UNIQUE KEY `assets_meta_container_folder_basename_unique` (`container`,`folder`,`basename`),
                               KEY `assets_meta_container_index` (`container`),
                               KEY `assets_meta_folder_index` (`folder`),
                               KEY `assets_meta_basename_index` (`basename`),
                               KEY `assets_meta_filename_index` (`filename`),
                               KEY `assets_meta_extension_index` (`extension`),
                               KEY `assets_meta_path_index` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets_meta`
--

LOCK TABLES `assets_meta` WRITE;
/*!40000 ALTER TABLE `assets_meta` DISABLE KEYS */;
INSERT INTO `assets_meta` VALUES (1,'assets','/','logo.png','logo','png','logo.png','{\"data\": [], \"size\": 3555, \"width\": 385, \"height\": 131, \"duration\": null, \"mime_type\": \"image/png\", \"last_modified\": 1724893400}','2024-08-29 01:03:20','2024-08-29 01:03:20');
INSERT INTO `assets_meta` VALUES (2,'assets','/','icon.jpeg','icon','jpeg','icon.jpeg','{\"data\": [], \"size\": 4983, \"width\": 251, \"height\": 201, \"duration\": null, \"mime_type\": \"image/jpeg\", \"last_modified\": 1724893409}','2024-08-29 01:03:29','2024-08-29 01:03:29');
INSERT INTO `assets_meta` VALUES (3,'assets','/','panel_image.webp','panel_image','webp','panel_image.webp','{\"data\": [], \"size\": 22842, \"width\": 490, \"height\": 449, \"duration\": null, \"mime_type\": \"image/webp\", \"last_modified\": 1724912618}','2024-08-29 06:23:38','2024-08-29 06:23:38');
INSERT INTO `assets_meta` VALUES (4,'assets','/','cyber-moose.webp','panel_image','webp','cyber-moose.webp','{\"data\": [], \"size\": 22842, \"width\": 1024, \"height\": 1024, \"duration\": null, \"mime_type\": \"image/webp\", \"last_modified\": 1724912618}','2024-08-29 06:23:38','2024-08-29 06:23:38');
INSERT INTO `assets_meta` VALUES (5,'assets','/','developers-having-fun.webp','panel_image','webp','developers-having-fun.webp','{\"data\": [], \"size\": 22842, \"width\": 1024, \"height\": 1024, \"duration\": null, \"mime_type\": \"image/webp\", \"last_modified\": 1724912618}','2024-08-29 06:23:38','2024-08-29 06:23:38');
INSERT INTO `assets_meta` VALUES (6,'assets','/','Zuck-Gates.png','panel_image','webp','Zuck-Gates.png','{\"data\": [], \"size\": 22842, \"width\": 595, \"height\": 565, \"duration\": null, \"mime_type\": \"image/webp\", \"last_modified\": 1724912618}','2024-08-29 06:23:38','2024-08-29 06:23:38');
INSERT INTO `assets_meta` VALUES (7,'assets','/','Hacker.webp','panel_image','webp','Hacker.webp','{\"data\": [], \"size\": 22842, \"width\": 700, \"height\": 394, \"duration\": null, \"mime_type\": \"image/webp\", \"last_modified\": 1724912618}','2024-08-29 06:23:38','2024-08-29 06:23:38');
INSERT INTO `assets_meta` VALUES (8,'assets','/','developer-battling-with-CSS-medieval-knight.webp','panel_image','webp','developer-battling-with-CSS-medieval-knight.webp','{\"data\": [], \"size\": 22842, \"width\": 1024, \"height\": 1024, \"duration\": null, \"mime_type\": \"image/webp\", \"last_modified\": 1724912618}','2024-08-29 06:23:38','2024-08-29 06:23:38');
/*!40000 ALTER TABLE `assets_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blueprints`
--

DROP TABLE IF EXISTS `blueprints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blueprints` (
                              `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                              `namespace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                              `handle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                              `data` json NOT NULL,
                              `created_at` timestamp NULL DEFAULT NULL,
                              `updated_at` timestamp NULL DEFAULT NULL,
                              PRIMARY KEY (`id`),
                              UNIQUE KEY `blueprints_handle_namespace_unique` (`handle`,`namespace`),
                              KEY `blueprints_namespace_index` (`namespace`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blueprints`
--

LOCK TABLES `blueprints` WRITE;
/*!40000 ALTER TABLE `blueprints` DISABLE KEYS */;
INSERT INTO `blueprints` VALUES (1,NULL,'default','{\"tabs\": {\"main\": {\"sections\": [{\"fields\": [{\"field\": {\"type\": \"markdown\", \"display\": \"Content\", \"localizable\": true}, \"handle\": \"content\"}, {\"field\": {\"type\": \"users\", \"default\": \"current\", \"display\": \"Author\", \"max_items\": 1, \"localizable\": true}, \"handle\": \"author\"}, {\"field\": {\"type\": \"template\", \"display\": \"Template\", \"localizable\": true}, \"handle\": \"template\"}]}]}}, \"title\": \"Default\"}','2024-08-07 09:15:28','2024-08-07 09:15:28');
INSERT INTO `blueprints` VALUES (2,'assets','assets','{\"tabs\": {\"main\": {\"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Alt Text\", \"instructions\": \"Description of the image\"}, \"handle\": \"alt\"}]}]}}, \"title\": \"Asset\"}','2024-08-07 09:15:28','2024-08-07 09:15:28');
INSERT INTO `blueprints` VALUES (3,NULL,'user','{\"tabs\": {\"main\": {\"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Name\"}, \"handle\": \"name\"}, {\"field\": {\"type\": \"text\", \"input\": \"email\", \"display\": \"Email Address\"}, \"handle\": \"email\"}, {\"field\": {\"type\": \"user_roles\", \"width\": 50}, \"handle\": \"roles\"}, {\"field\": {\"type\": \"user_groups\", \"width\": 50}, \"handle\": \"groups\"}, {\"field\": {\"type\": \"assets\", \"container\": \"assets\", \"max_files\": 1}, \"handle\": \"avatar\"}]}]}}, \"title\": \"User\"}','2024-08-07 09:15:28','2024-08-07 09:15:28');
INSERT INTO `blueprints` VALUES (4,'collections.scripts','script','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"code\", \"display\": \"Script\"}, \"handle\": \"script\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"entries\", \"listable\": false, \"max_items\": 1, \"collections\": [\"scripts\"], \"localizable\": true}, \"handle\": \"parent\"}], \"__count\": 0}]}}, \"title\": \"Script\"}','2024-08-27 03:02:49','2024-08-27 03:02:49');
INSERT INTO `blueprints` VALUES (7,'globals','scripts','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"toggle\", \"display\": \"Enable/disable ALL scripts\", \"instructions\": \"This can be used to disable all scripts and over-rides individual scripts setting\"}, \"handle\": \"enable_all\"}, {\"field\": {\"sets\": {\"new_set_group\": {\"sets\": {\"new_set\": {\"fields\": [{\"field\": {\"type\": \"toggle\", \"display\": \"Enable/disable the script\", \"validate\": [\"required\"], \"instructions\": \"Add each script to be included on site\"}, \"handle\": \"enable_script\"}, {\"field\": {\"type\": \"text\", \"display\": \"Name\", \"validate\": [\"required\"], \"instructions\": \"Your name or reference for the script\"}, \"handle\": \"name\"}, {\"field\": {\"type\": \"code\", \"display\": \"Script\", \"validate\": [\"required\"], \"instructions\": \"The HTML or Javascript code\"}, \"handle\": \"script\"}], \"display\": \"New Set\"}}, \"display\": \"New Set Group\"}}, \"type\": \"replicator\", \"display\": \"Scripts\", \"instructions\": \"Add each script to be included on site\"}, \"handle\": \"scripts\"}], \"__count\": 0}]}}}','2024-08-28 02:02:22','2024-10-16 01:46:09');
INSERT INTO `blueprints` VALUES (8,'globals','company','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Name\"}, \"handle\": \"name\"}, {\"field\": {\"type\": \"assets\", \"display\": \"Logo\", \"container\": \"assets\", \"max_files\": 1}, \"handle\": \"logo\"}, {\"field\": {\"type\": \"assets\", \"display\": \"Icon\", \"container\": \"assets\", \"max_files\": 1}, \"handle\": \"icon\"}], \"__count\": 0}, {\"fields\": [{\"field\": {\"sets\": {\"new_set_group\": {\"sets\": {\"privacy\": {\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Title\"}, \"handle\": \"title\"}, {\"field\": {\"type\": \"link\", \"display\": \"Link\"}, \"handle\": \"link\"}], \"display\": \"Privacy\"}, \"socials\": {\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Title\"}, \"handle\": \"title\"}, {\"field\": {\"type\": \"link\", \"display\": \"URL\"}, \"handle\": \"url\"}, {\"field\": {\"type\": \"code\", \"display\": \"Font Awesome\"}, \"handle\": \"font_awesome\"}], \"display\": \"Socials\", \"instructions\": \"Paste font awesome script\"}}, \"display\": \"New Set Group\"}}, \"type\": \"replicator\", \"display\": \"Links\"}, \"handle\": \"links\"}], \"__count\": 1, \"display\": \"Links\"}]}}}','2024-08-29 00:33:09','2024-08-29 00:39:54');
INSERT INTO `blueprints` VALUES (9,'forms','contact','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Name\", \"validate\": [\"required\"], \"placeholder\": \"Stacey Fakename\"}, \"handle\": \"name\"}, {\"field\": {\"type\": \"text\", \"width\": 50, \"display\": \"Email\", \"validate\": [\"required\"], \"input_type\": \"email\", \"placeholder\": \"stacey@fakename.com\"}, \"handle\": \"email\"}, {\"field\": {\"type\": \"text\", \"width\": 50, \"display\": \"Phone\", \"validate\": [\"required\"], \"input_type\": \"tel\", \"placeholder\": \"0422333444\"}, \"handle\": \"phone\"}, {\"field\": {\"type\": \"textarea\", \"display\": \"Message\", \"validate\": [\"required\"], \"placeholder\": \"Your message...\"}, \"handle\": \"message\"}], \"__count\": 0}]}}}','2024-08-29 04:08:28','2024-10-15 07:14:41');
INSERT INTO `blueprints` VALUES (10,'collections.pages','page','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"markdown\", \"display\": \"Content\", \"localizable\": true}, \"handle\": \"content\"}, {\"field\": {\"type\": \"template\", \"display\": \"Template\", \"localizable\": true}, \"handle\": \"template\"}], \"__count\": 0}, {\"fields\": [{\"field\": {\"sets\": {\"new_set_group\": {\"sets\": {\"new_set\": {\"fields\": [{\"field\": {\"type\": \"assets\", \"display\": \"Panel Image\", \"container\": \"assets\", \"max_files\": 1}, \"handle\": \"panel_image\"}, {\"field\": {\"type\": \"text\", \"display\": \"Panel Header\"}, \"handle\": \"panel_header\"}, {\"field\": {\"type\": \"markdown\", \"display\": \"Panel Content\"}, \"handle\": \"panel_content\"}, {\"field\": {\"type\": \"link\", \"display\": \"CTA Link\", \"collections\": [\"pages\"]}, \"handle\": \"cta_link\"}], \"display\": \"New Set\"}}, \"display\": \"New Set Group\"}}, \"type\": \"replicator\", \"display\": \"Panels\"}, \"handle\": \"panels\"}], \"__count\": 1, \"display\": \"Panels\"}, {\"fields\": [{\"field\": {\"sets\": {\"new_set_group\": {\"sets\": {\"new_set\": {\"fields\": [{\"field\": {\"type\": \"assets\", \"display\": \"Gallery Image\", \"container\": \"assets\", \"max_files\": 1}, \"handle\": \"gallery_image\"}], \"display\": \"New Set\"}}, \"display\": \"New Set Group\"}}, \"type\": \"replicator\", \"display\": \"Gallery Items\"}, \"handle\": \"gallery_items\"}], \"__count\": 2, \"display\": \"Gallery\"}, {\"fields\": [{\"field\": {\"type\": \"toggle\", \"default\": true, \"display\": \"FAQ Enable\"}, \"handle\": \"faq_enable\"}, {\"field\": {\"type\": \"text\", \"display\": \"FAQ Title\"}, \"handle\": \"faq_title\"}, {\"field\": {\"type\": \"textarea\", \"display\": \"FAQ Content\"}, \"handle\": \"faq_content\"}, {\"field\": {\"sets\": {\"new_set_group\": {\"sets\": {\"new_set\": {\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Question\"}, \"handle\": \"question\"}, {\"field\": {\"type\": \"textarea\", \"display\": \"Answer\"}, \"handle\": \"answer\"}], \"display\": \"New Set\"}}, \"display\": \"New Set Group\"}}, \"type\": \"replicator\", \"display\": \"FAQ Items\"}, \"handle\": \"faq_items\"}], \"__count\": 3, \"display\": \"FAQs\"}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"validate\": \"max:200\", \"localizable\": true}, \"handle\": \"slug\"}, {\"field\": {\"type\": \"entries\", \"listable\": false, \"max_items\": 1, \"collections\": [\"pages\"], \"localizable\": true}, \"handle\": \"parent\"}], \"__count\": 0}]}}, \"title\": \"Page\"}','2024-08-29 06:22:06','2024-10-15 23:03:42');
INSERT INTO `blueprints` VALUES (11,'collections.blog_posts','blog_post','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"users\", \"default\": \"current\", \"display\": \"Author\", \"max_items\": 1, \"localizable\": true}, \"handle\": \"author\"}, {\"field\": {\"type\": \"assets\", \"display\": \"Featured Image\", \"container\": \"assets\", \"max_files\": 1}, \"handle\": \"featured_image\"}, {\"field\": {\"type\": \"bard\", \"display\": \"Blog Content\", \"remove_empty_nodes\": false}, \"handle\": \"blog_content\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"validate\": \"max:200\", \"localizable\": true}, \"handle\": \"slug\"}, {\"field\": {\"type\": \"date\", \"default\": \"now\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"date\"}], \"__count\": 0}]}}, \"title\": \"Blog Post\"}','2024-08-29 06:49:56','2024-08-29 06:49:56');
/*!40000 ALTER TABLE `blueprints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
                         `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                         `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                         `expiration` int NOT NULL,
                         PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
                               `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                               `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                               `expiration` int NOT NULL,
                               PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collections`
--

DROP TABLE IF EXISTS `collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collections` (
                               `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                               `handle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                               `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                               `settings` json DEFAULT NULL,
                               `created_at` timestamp NULL DEFAULT NULL,
                               `updated_at` timestamp NULL DEFAULT NULL,
                               PRIMARY KEY (`id`),
                               UNIQUE KEY `collections_handle_unique` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collections`
--

LOCK TABLES `collections` WRITE;
/*!40000 ALTER TABLE `collections` DISABLE KEYS */;
INSERT INTO `collections` VALUES (1,'pages','Pages','{\"dated\": false, \"mount\": null, \"sites\": [\"default\"], \"slugs\": true, \"inject\": [], \"layout\": null, \"routes\": \"{parent_uri}/{slug}\", \"sort_dir\": null, \"template\": null, \"propagate\": true, \"revisions\": false, \"structure\": {\"root\": true}, \"sort_field\": null, \"taxonomies\": null, \"search_index\": null, \"title_formats\": [], \"default_status\": true, \"origin_behavior\": \"select\", \"preview_targets\": [{\"label\": \"Entry\", \"format\": \"{permalink}\", \"refresh\": true}], \"past_date_behavior\": \"public\", \"future_date_behavior\": \"public\"}','2024-08-07 09:15:28','2024-08-07 09:15:28');
INSERT INTO `collections` VALUES (2,'blog_posts','Blog Posts','{\"dated\": true, \"mount\": \"e1635cb3-5883-4555-ab46-aa398035e784\", \"sites\": null, \"slugs\": true, \"inject\": [], \"layout\": \"layout\", \"routes\": \"/{mount}/{slug}\", \"sort_dir\": \"asc\", \"template\": \"blog_posts/show\", \"propagate\": false, \"revisions\": false, \"structure\": null, \"sort_field\": null, \"taxonomies\": [], \"search_index\": null, \"title_formats\": [], \"default_status\": true, \"origin_behavior\": \"select\", \"preview_targets\": [{\"id\": \"56V1t2oh\", \"label\": \"Entry\", \"format\": \"{permalink}\", \"refresh\": true}], \"past_date_behavior\": \"public\", \"future_date_behavior\": \"private\"}','2024-08-29 06:44:03','2024-08-29 06:46:22');
/*!40000 ALTER TABLE `collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entries`
--

DROP TABLE IF EXISTS `entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entries` (
                           `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                           `site` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                           `origin_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `published` tinyint(1) NOT NULL DEFAULT '1',
                           `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `order` int DEFAULT NULL,
                           `collection` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                           `blueprint` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `data` json NOT NULL,
                           `created_at` timestamp NULL DEFAULT NULL,
                           `updated_at` timestamp NULL DEFAULT NULL,
                           PRIMARY KEY (`id`),
                           KEY `entries_site_index` (`site`),
                           KEY `entries_origin_id_index` (`origin_id`),
                           KEY `entries_uri_index` (`uri`),
                           KEY `entries_order_index` (`order`),
                           KEY `entries_collection_index` (`collection`),
                           KEY `entries_blueprint_index` (`blueprint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entries`
--

LOCK TABLES `entries` WRITE;
/*!40000 ALTER TABLE `entries` DISABLE KEYS */;
INSERT INTO `entries` VALUES ('2425b491-3a8b-41eb-964c-2f250c3b5d5d','default',NULL,1,'success','/success',NULL,2,'pages','page','{\"title\": \"Thanks for your submission!\", \"author\": \"23c4ce98-d0d7-4317-bbc7-7d496ad9a0dd\", \"parent\": \"home\", \"content\": \"One of our friendly staff members will be in touch.\", \"template\": \"success\", \"updated_by\": \"23c4ce98-d0d7-4317-bbc7-7d496ad9a0dd\"}','2024-08-29 05:27:22','2024-08-29 05:27:22');
INSERT INTO `entries` VALUES ('44086675-f4ef-40d7-a203-6b2cdab910ef','default',NULL,1,'second-blog-post','/blog/second-blog-post','2024-08-29 00:00:00',NULL,'blog_posts','blog_post','{\"title\": \"Second Blog Post\", \"author\": \"23c4ce98-d0d7-4317-bbc7-7d496ad9a0dd\", \"updated_by\": \"23c4ce98-d0d7-4317-bbc7-7d496ad9a0dd\", \"blog_content\": [{\"type\": \"paragraph\", \"content\": [{\"text\": \"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sed lobortis sem, vitae tincidunt nunc. Sed eu nunc eget tellus molestie interdum vitae at dui. Etiam ut placerat nisi, quis fermentum nibh. Praesent et dapibus ipsum. Praesent id pellentesque nunc. Nunc sit amet urna sit amet erat vulputate pulvinar. Aenean convallis tempus odio id eleifend. Proin at quam pellentesque lectus pretium dictum sed id velit. Donec gravida massa a ligula lobortis, nec fringilla urna scelerisque. Nam scelerisque mollis semper. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nunc egestas finibus leo, eu blandit turpis molestie ut. Suspendisse id venenatis lacus.\", \"type\": \"text\"}]}], \"featured_image\": \"panel_image.webp\"}','2024-08-29 07:09:10','2024-08-29 07:09:10');
INSERT INTO `entries` VALUES ('86a985d5-ce1a-4d27-9826-51fcd4702b9c','default',NULL,1,'first-blog-post','/blog/first-blog-post','2024-08-29 00:00:00',NULL,'blog_posts','blog_post','{\"title\": \"First Blog Post\", \"author\": \"23c4ce98-d0d7-4317-bbc7-7d496ad9a0dd\", \"updated_by\": \"23c4ce98-d0d7-4317-bbc7-7d496ad9a0dd\", \"blog_content\": [{\"type\": \"paragraph\", \"content\": [{\"text\": \"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam a risus ut nunc ornare imperdiet ut sed nulla. Integer id ex arcu. Fusce elit ex, placerat at blandit quis, lacinia at arcu. Nullam vel diam quis ligula posuere posuere. Sed posuere lectus vel faucibus feugiat. Sed porta ex tellus, a auctor nisi scelerisque sit amet. Mauris quis urna turpis. Aenean auctor vel enim quis pharetra. Suspendisse augue orci, maximus in consequat nec, malesuada ac libero. Sed pretium fermentum ex, tristique vulputate ante suscipit quis. Mauris consectetur quis ipsum eget ultrices.\", \"type\": \"text\"}]}], \"featured_image\": \"panel_image.webp\"}','2024-08-29 06:50:53','2024-08-29 06:50:53');
INSERT INTO `entries` VALUES ('e1635cb3-5883-4555-ab46-aa398035e784','default',NULL,1,'blog','/blog',NULL,3,'pages','page','{\"title\": \"Blog\", \"panels\": [], \"parent\": \"home\", \"content\": \"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam a risus ut nunc ornare imperdiet ut sed nulla. Integer id ex arcu. Fusce elit ex, placerat at blandit quis, lacinia at arcu. Nullam vel diam quis ligula posuere posuere. Sed posuere lectus vel faucibus feugiat. Sed porta ex tellus, a auctor nisi scelerisque sit amet. Mauris quis urna turpis. Aenean auctor vel enim quis pharetra. Suspendisse augue orci, maximus in consequat nec, malesuada ac libero. Sed pretium fermentum ex, tristique vulputate ante suscipit quis. Mauris consectetur quis ipsum eget ultrices.\", \"template\": \"blog_posts/index\", \"updated_by\": \"23c4ce98-d0d7-4317-bbc7-7d496ad9a0dd\"}','2024-08-29 06:43:24','2024-08-29 06:52:37');
INSERT INTO `entries` VALUES ('home','default',NULL,1,'home','/',NULL,1,'pages','pages','{\"title\": \"Home\", \"panels\": [{\"id\": \"m0ewflg0\", \"type\": \"new_set\", \"enabled\": true, \"cta_link\": \"/#\", \"panel_image\": \"panel_image.webp\", \"panel_header\": \"First Panel\", \"panel_content\": \"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi posuere libero orci, a aliquam velit maximus quis. Suspendisse potenti. Donec congue vulputate imperdiet. Proin aliquet vulputate dapibus. Maecenas hendrerit vel lorem et cursus. Sed in molestie diam. Quisque malesuada ex erat, eget dictum augue molestie ac.\"}, {\"id\": \"m0ewgkxp\", \"type\": \"new_set\", \"enabled\": true, \"cta_link\": \"/#\", \"panel_image\": \"panel_image.webp\", \"panel_header\": \"Second Panel\", \"panel_content\": \"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi posuere libero orci, a aliquam velit maximus quis. Suspendisse potenti. Donec congue vulputate imperdiet. Proin aliquet vulputate dapibus. Maecenas hendrerit vel lorem et cursus. Sed in molestie diam. Quisque malesuada ex erat, eget dictum augue molestie ac.\"}], \"parent\": null, \"content\": null, \"template\": \"home\", \"faq_items\": [{\"id\": \"m2b1w2ig\", \"type\": \"new_set\", \"answer\": \"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum vestibulum. Cras venenatis euismod malesuada. Nulla facilisi.\", \"enabled\": true, \"question\": \"Lorem ipsum dolor?\"}, {\"id\": \"m2b1w7r7\", \"type\": \"new_set\", \"answer\": \"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum vestibulum. Cras venenatis euismod malesuada. Nulla facilisi. Etiam sit amet consequat est. Fusce non vehicula sapien, ac vulputate nulla. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.\", \"enabled\": true, \"question\": \"Lorem ipsum dolor sit amet?\"}, {\"id\": \"m2b1x4ud\", \"type\": \"new_set\", \"answer\": \"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\", \"enabled\": true, \"question\": \"Lorem ipsum excepteur sint occaecat?\"}], \"faq_title\": \"FAQs\", \"faq_enable\": true, \"updated_by\": \"23c4ce98-d0d7-4317-bbc7-7d496ad9a0dd\", \"faq_content\": \"Got Questions? We\'ve Got Answers!\", \"gallery_items\": [{\"id\": \"m2a2do2m\", \"type\": \"new_set\", \"image\": [\"cyber-moose.webp\"], \"enabled\": true, \"gallery_image\": \"cyber-moose.webp\"}, {\"id\": \"m2basgud\", \"type\": \"new_set\", \"enabled\": true, \"gallery_image\": \"developer-battling-with-CSS-medieval-knight.webp\"}, {\"id\": \"m2a2h3wz\", \"type\": \"new_set\", \"image\": [\"Hacker.webp\"], \"enabled\": true, \"gallery_image\": \"developers-having-fun.webp\"}, {\"id\": \"m2a2du3y\", \"type\": \"new_set\", \"image\": [\"developers-having-fun.webp.webp\"], \"enabled\": true, \"gallery_image\": \"Zuck-Gates.png\"}, {\"id\": \"m2a2gw4k\", \"type\": \"new_set\", \"image\": [\"Zuck-Gates.png\"], \"enabled\": true, \"gallery_image\": \"Hacker.webp\"}]}','2024-08-07 09:15:28','2024-10-16 03:14:04');
/*!40000 ALTER TABLE `entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
                               `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                               `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                               `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                               `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                               `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                               `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                               `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                               PRIMARY KEY (`id`),
                               UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldsets`
--

DROP TABLE IF EXISTS `fieldsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fieldsets` (
                             `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                             `handle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                             `data` json NOT NULL,
                             `created_at` timestamp NULL DEFAULT NULL,
                             `updated_at` timestamp NULL DEFAULT NULL,
                             PRIMARY KEY (`id`),
                             UNIQUE KEY `fieldsets_handle_unique` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldsets`
--

LOCK TABLES `fieldsets` WRITE;
/*!40000 ALTER TABLE `fieldsets` DISABLE KEYS */;
/*!40000 ALTER TABLE `fieldsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_submissions`
--

DROP TABLE IF EXISTS `form_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `form_submissions` (
                                    `id` decimal(14,4) NOT NULL,
                                    `form` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                    `data` json DEFAULT NULL,
                                    `created_at` timestamp(6) NULL DEFAULT NULL,
                                    `updated_at` timestamp(6) NULL DEFAULT NULL,
                                    PRIMARY KEY (`id`),
                                    UNIQUE KEY `form_submissions_id_unique` (`id`),
                                    UNIQUE KEY `form_submissions_form_created_at_unique` (`form`,`created_at`),
                                    KEY `form_submissions_form_index` (`form`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_submissions`
--

LOCK TABLES `form_submissions` WRITE;
/*!40000 ALTER TABLE `form_submissions` DISABLE KEYS */;
INSERT INTO `form_submissions` VALUES (1724910381.3825,'contact','{\"name\": \"Alex Baumgartner\", \"email\": \"alex.b@visual1.com.au\", \"phone\": \"0426555555\", \"message\": \"asdfasdfasdf\"}','2024-08-29 05:46:21.381518','2024-08-29 05:46:21.382680');
INSERT INTO `form_submissions` VALUES (1724910582.3600,'contact','{\"name\": \"Alex Baumgartner\", \"email\": \"alex.b@visual1.com.au\", \"phone\": \"0426555555\", \"message\": \"asdfasdfasdf\"}','2024-08-29 05:49:42.359161','2024-08-29 05:49:42.360161');
INSERT INTO `form_submissions` VALUES (1724910623.9033,'contact','{\"name\": \"Alex Baumgartner\", \"email\": \"alex.b@visual1.com.au\", \"phone\": \"0425555555\", \"message\": \"asdfasdfasdf\"}','2024-08-29 05:50:23.902594','2024-08-29 05:50:23.903416');
INSERT INTO `form_submissions` VALUES (1724910876.2240,'contact','{\"name\": \"Alex Baumgartner\", \"email\": \"alex.b@visual1.com.au\", \"phone\": \"0425555555\", \"message\": \"asdfasdf\"}','2024-08-29 05:54:36.223232','2024-08-29 05:54:36.224112');
INSERT INTO `form_submissions` VALUES (1724911049.1331,'contact','{\"name\": \"Alex Baumgartner\", \"email\": \"alex.b@visual1.com.au\", \"phone\": \"0425555555\", \"message\": \"asdfasdf\"}','2024-08-29 05:57:29.131761','2024-08-29 05:57:29.133258');
INSERT INTO `form_submissions` VALUES (1729039437.8397,'contact','{\"name\": \"Testy Jones\", \"email\": \"testy@example.com\", \"phone\": \"4446646466\", \"message\": \"Test!\"}','2024-10-16 00:43:57.838766','2024-10-16 00:43:57.839856');
INSERT INTO `form_submissions` VALUES (1729042581.3305,'contact','{\"name\": \"test\", \"email\": \"test@example.com\", \"phone\": \"2323423235\", \"message\": \"asfasdfaf\"}','2024-10-16 01:36:21.329733','2024-10-16 01:36:21.330665');
/*!40000 ALTER TABLE `form_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms`
--

DROP TABLE IF EXISTS `forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forms` (
                         `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                         `handle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                         `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                         `settings` json DEFAULT NULL,
                         `created_at` timestamp NULL DEFAULT NULL,
                         `updated_at` timestamp NULL DEFAULT NULL,
                         PRIMARY KEY (`id`),
                         UNIQUE KEY `forms_handle_unique` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms`
--

LOCK TABLES `forms` WRITE;
/*!40000 ALTER TABLE `forms` DISABLE KEYS */;
INSERT INTO `forms` VALUES (1,'contact','Contact','{\"data\": {\"blueprint\": null}, \"email\": [{\"id\": \"m0er569y\", \"to\": \"support@visual1.com.au\", \"html\": \"emails/contact\", \"mailer\": \"log\", \"subject\": \"Contact Form Submission\", \"markdown\": true, \"reply_to\": \"support+test@visual1.com.au\", \"attachments\": false}], \"store\": true, \"honeypot\": \"form_username\"}','2024-08-29 03:50:12','2024-10-16 01:34:35');
/*!40000 ALTER TABLE `forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_set_variables`
--

DROP TABLE IF EXISTS `global_set_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_set_variables` (
                                        `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                                        `handle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                                        `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                        `origin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                        `data` json NOT NULL,
                                        `created_at` timestamp NULL DEFAULT NULL,
                                        `updated_at` timestamp NULL DEFAULT NULL,
                                        PRIMARY KEY (`id`),
                                        KEY `global_set_variables_handle_index` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_set_variables`
--

LOCK TABLES `global_set_variables` WRITE;
/*!40000 ALTER TABLE `global_set_variables` DISABLE KEYS */;
INSERT INTO `global_set_variables` VALUES (1,'scripts','default',NULL,'{\"scripts\": [], \"enable_all\": true}','2024-08-28 01:15:44','2024-10-16 01:46:39');
INSERT INTO `global_set_variables` VALUES (2,'company','default',NULL,'{\"icon\": \"icon.jpeg\", \"logo\": \"logo.png\", \"name\": \"Statamic\", \"links\": [{\"id\": \"m0el4698\", \"url\": \"/#\", \"type\": \"socials\", \"title\": \"Facebook\", \"enabled\": true, \"font_awesome\": {\"code\": \"<i class=\\\"fa-brands fa-facebook-f\\\"></i>\", \"mode\": \"htmlmixed\"}}, {\"id\": \"m0elagn8\", \"url\": \"/#\", \"type\": \"socials\", \"title\": \"Instagram\", \"enabled\": true, \"font_awesome\": {\"code\": \"<i class=\\\"fa-brands fa-instagram\\\"></i>\", \"mode\": \"htmlmixed\"}}]}','2024-08-29 00:27:32','2024-08-29 01:12:10');
/*!40000 ALTER TABLE `global_set_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_sets`
--

DROP TABLE IF EXISTS `global_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_sets` (
                               `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                               `handle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                               `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                               `settings` json NOT NULL,
                               `created_at` timestamp NULL DEFAULT NULL,
                               `updated_at` timestamp NULL DEFAULT NULL,
                               PRIMARY KEY (`id`),
                               UNIQUE KEY `global_sets_handle_unique` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_sets`
--

LOCK TABLES `global_sets` WRITE;
/*!40000 ALTER TABLE `global_sets` DISABLE KEYS */;
INSERT INTO `global_sets` VALUES (2,'scripts','Scripts','[]','2024-08-28 02:02:22','2024-10-15 07:06:05');
INSERT INTO `global_sets` VALUES (3,'company','Company','[]','2024-08-29 00:27:32','2024-08-29 00:27:32');
/*!40000 ALTER TABLE `global_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_user`
--

DROP TABLE IF EXISTS `group_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_user` (
                              `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                              `group_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_user`
--

LOCK TABLES `group_user` WRITE;
/*!40000 ALTER TABLE `group_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
                               `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                               `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                               `total_jobs` int NOT NULL,
                               `pending_jobs` int NOT NULL,
                               `failed_jobs` int NOT NULL,
                               `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                               `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                               `cancelled_at` int DEFAULT NULL,
                               `created_at` int NOT NULL,
                               `finished_at` int DEFAULT NULL,
                               PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
                        `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                        `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                        `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                        `attempts` tinyint unsigned NOT NULL,
                        `reserved_at` int unsigned DEFAULT NULL,
                        `available_at` int unsigned NOT NULL,
                        `created_at` int unsigned NOT NULL,
                        PRIMARY KEY (`id`),
                        KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
                              `id` int unsigned NOT NULL AUTO_INCREMENT,
                              `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                              `batch` int NOT NULL,
                              PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1);
INSERT INTO `migrations` VALUES (2,'0001_01_01_000001_create_cache_table',1);
INSERT INTO `migrations` VALUES (3,'0001_01_01_000002_create_jobs_table',1);
INSERT INTO `migrations` VALUES (4,'2024_03_07_100000_create_asset_table',1);
INSERT INTO `migrations` VALUES (5,'2024_03_07_100000_create_blueprints_table',2);
INSERT INTO `migrations` VALUES (6,'2024_03_07_100000_create_collections_table',3);
INSERT INTO `migrations` VALUES (7,'2024_03_07_100000_create_navigation_trees_table',4);
INSERT INTO `migrations` VALUES (8,'2024_03_07_100000_create_entries_table_with_string_ids',5);
INSERT INTO `migrations` VALUES (9,'2024_03_07_100000_create_fieldsets_table',6);
INSERT INTO `migrations` VALUES (10,'2024_03_07_100000_create_forms_table',7);
INSERT INTO `migrations` VALUES (11,'2024_03_07_100000_create_form_submissions_table',8);
INSERT INTO `migrations` VALUES (12,'2024_05_15_100000_modify_form_submissions_id',8);
INSERT INTO `migrations` VALUES (13,'2024_03_07_100000_create_globals_table',9);
INSERT INTO `migrations` VALUES (14,'2024_03_07_100000_create_global_variables_table',10);
INSERT INTO `migrations` VALUES (15,'2024_03_07_100000_create_navigations_table',11);
INSERT INTO `migrations` VALUES (16,'2024_07_16_100000_create_sites_table',12);
INSERT INTO `migrations` VALUES (17,'2024_03_07_100000_create_taxonomies_table',13);
INSERT INTO `migrations` VALUES (18,'2024_03_07_100000_create_terms_table',14);
INSERT INTO `migrations` VALUES (19,'2024_03_07_100000_create_tokens_table',15);
INSERT INTO `migrations` VALUES (20,'2024_03_07_100000_create_asset_containers_table',16);
INSERT INTO `migrations` VALUES (21,'2024_08_27_013300_statamic_auth_tables',17);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navigations`
--

DROP TABLE IF EXISTS `navigations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `navigations` (
                               `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                               `handle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                               `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                               `settings` json DEFAULT NULL,
                               `created_at` timestamp NULL DEFAULT NULL,
                               `updated_at` timestamp NULL DEFAULT NULL,
                               PRIMARY KEY (`id`),
                               UNIQUE KEY `navigations_handle_unique` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navigations`
--

LOCK TABLES `navigations` WRITE;
/*!40000 ALTER TABLE `navigations` DISABLE KEYS */;
INSERT INTO `navigations` VALUES (1,'main_nav','Main Nav','{\"max_depth\": null, \"collections\": [\"pages\"], \"expects_root\": false, \"select_across_sites\": false}','2024-08-29 00:19:50','2024-08-29 00:20:22');
INSERT INTO `navigations` VALUES (2,'footer_nav','Footer Nav','{\"max_depth\": null, \"collections\": [\"pages\"], \"expects_root\": false, \"select_across_sites\": false}','2024-08-29 00:24:44','2024-08-29 00:24:56');
/*!40000 ALTER TABLE `navigations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_activation_tokens`
--

DROP TABLE IF EXISTS `password_activation_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_activation_tokens` (
                                              `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                                              `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                                              `created_at` timestamp NULL DEFAULT NULL,
                                              KEY `password_activation_tokens_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_activation_tokens`
--

LOCK TABLES `password_activation_tokens` WRITE;
/*!40000 ALTER TABLE `password_activation_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_activation_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
                                         `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                                         `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                                         `created_at` timestamp NULL DEFAULT NULL,
                                         PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_user` (
                             `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                             `role_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
                            `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                            `user_id` bigint unsigned DEFAULT NULL,
                            `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                            `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                            `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                            `last_activity` int NOT NULL,
                            PRIMARY KEY (`id`),
                            KEY `sessions_user_id_index` (`user_id`),
                            KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sites` (
                         `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                         `handle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                         `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                         `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                         `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                         `lang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                         `attributes` json NOT NULL,
                         `created_at` timestamp NULL DEFAULT NULL,
                         `updated_at` timestamp NULL DEFAULT NULL,
                         PRIMARY KEY (`id`),
                         UNIQUE KEY `sites_handle_unique` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
INSERT INTO `sites` VALUES (1,'default','{{ config:app:name }}','/','en_US','','[]','2024-08-27 01:30:26','2024-08-27 01:30:26');
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomies`
--

DROP TABLE IF EXISTS `taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomies` (
                              `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                              `handle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                              `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                              `sites` json DEFAULT NULL,
                              `settings` json DEFAULT NULL,
                              `created_at` timestamp NULL DEFAULT NULL,
                              `updated_at` timestamp NULL DEFAULT NULL,
                              PRIMARY KEY (`id`),
                              UNIQUE KEY `taxonomies_handle_unique` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomies`
--

LOCK TABLES `taxonomies` WRITE;
/*!40000 ALTER TABLE `taxonomies` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_terms`
--

DROP TABLE IF EXISTS `taxonomy_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_terms` (
                                  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                                  `site` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                                  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                                  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `taxonomy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                                  `data` json NOT NULL,
                                  `created_at` timestamp NULL DEFAULT NULL,
                                  `updated_at` timestamp NULL DEFAULT NULL,
                                  PRIMARY KEY (`id`),
                                  UNIQUE KEY `taxonomy_terms_slug_taxonomy_site_unique` (`slug`,`taxonomy`,`site`),
                                  KEY `taxonomy_terms_site_index` (`site`),
                                  KEY `taxonomy_terms_uri_index` (`uri`),
                                  KEY `taxonomy_terms_taxonomy_index` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_terms`
--

LOCK TABLES `taxonomy_terms` WRITE;
/*!40000 ALTER TABLE `taxonomy_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tokens` (
                          `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                          `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                          `handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                          `data` json NOT NULL,
                          `expire_at` timestamp NOT NULL,
                          `created_at` timestamp NULL DEFAULT NULL,
                          `updated_at` timestamp NULL DEFAULT NULL,
                          PRIMARY KEY (`id`),
                          UNIQUE KEY `tokens_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trees`
--

DROP TABLE IF EXISTS `trees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trees` (
                         `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                         `handle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                         `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                         `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `tree` json DEFAULT NULL,
                         `settings` json DEFAULT NULL,
                         `created_at` timestamp NULL DEFAULT NULL,
                         `updated_at` timestamp NULL DEFAULT NULL,
                         PRIMARY KEY (`id`),
                         UNIQUE KEY `trees_handle_type_locale_unique` (`handle`,`type`,`locale`),
                         KEY `trees_type_index` (`type`),
                         KEY `trees_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trees`
--

LOCK TABLES `trees` WRITE;
/*!40000 ALTER TABLE `trees` DISABLE KEYS */;
INSERT INTO `trees` VALUES (1,'pages','collection','default','[{\"entry\": \"home\"}, {\"entry\": \"2425b491-3a8b-41eb-964c-2f250c3b5d5d\"}, {\"entry\": \"e1635cb3-5883-4555-ab46-aa398035e784\"}]','[]','2024-08-07 09:15:28','2024-08-29 06:43:24');
INSERT INTO `trees` VALUES (2,'scripts','collection','default','[{\"entry\": \"56f875b9-2c30-4519-b373-60181a51fe54\"}]','[]','2024-08-27 03:03:40','2024-08-27 03:03:40');
INSERT INTO `trees` VALUES (3,'main_nav','navigation','default','[{\"id\": \"7b14664c-1f6c-43c5-957d-8b0c41ae4c51\", \"url\": \"/#about\", \"title\": \"About\"}, {\"id\": \"fbeebe85-3a59-4b0e-8e3b-0756ace1247b\", \"entry\": \"e1635cb3-5883-4555-ab46-aa398035e784\"}, {\"id\": \"2c4d5989-8e37-4845-b0cc-fda14c8dfc9a\", \"url\": \"/#gallery\", \"title\": \"Gallery\"}, {\"id\": \"c1380b0d-6250-4245-b186-cfc5a0e9044a\", \"url\": \"/#faq\", \"title\": \"FAQs\"}, {\"id\": \"5a59a6bc-c9e3-41d1-afac-98c1c65e0042\", \"url\": \"/#contact\", \"title\": \"Contact\"}]','[]','2024-08-29 00:19:50','2024-10-15 23:10:53');
INSERT INTO `trees` VALUES (4,'footer_nav','navigation','default','[{\"id\": \"81a9c74c-84de-4bbf-9af8-f5e74af4d693\", \"url\": \"/#about\", \"title\": \"About\"}, {\"id\": \"46308a34-264d-442d-90e6-d69217850490\", \"entry\": \"e1635cb3-5883-4555-ab46-aa398035e784\"}, {\"id\": \"3f1500aa-7b09-46f5-8eac-386e87ba616c\", \"url\": \"/#gallery\", \"title\": \"Gallery\"}, {\"id\": \"861c2557-e7cd-402f-8c56-ed9f439ebcfa\", \"url\": \"/#faq\", \"title\": \"FAQs\"}, {\"id\": \"c9c3eb50-c868-4091-b80d-5ac0db4fa113\", \"url\": \"/#contact\", \"title\": \"Contact\"}]','[]','2024-08-29 00:24:44','2024-10-15 23:52:24');
/*!40000 ALTER TABLE `trees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
                         `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                         `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                         `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                         `email_verified_at` timestamp NULL DEFAULT NULL,
                         `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `created_at` timestamp NULL DEFAULT NULL,
                         `updated_at` timestamp NULL DEFAULT NULL,
                         `super` tinyint(1) NOT NULL DEFAULT '0',
                         `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `preferences` json DEFAULT NULL,
                         `last_login` timestamp NULL DEFAULT NULL,
                         PRIMARY KEY (`id`),
                         UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('23c4ce98-d0d7-4317-bbc7-7d496ad9a0dd','Support','support@visual1.com.au',NULL,'$2y$12$eJRuHgM7dnC3IYG.uluwruuCb7YmtvlM0VP3iqguBqorSYkrrEqmW',NULL,'2024-08-27 01:35:23','2024-08-27 01:35:23',1,NULL,'[]','2024-10-15 22:41:42');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'starter_kit'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-16 13:39:34
