CREATE DATABASE  IF NOT EXISTS `bookstore` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bookstore`;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: bookstore
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
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'George Orwell'),(2,'J.K. Rowling'),(3,'Yuval Noah Harari'),(4,'Jane Austen'),(5,'Stephen King'),(6,'Anushray');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `image_string` longtext,
  `price` double NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  `inventory_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKklnrv3weler2ftkweewlky958` (`author_id`),
  KEY `FKam9riv8y6rjwkua1gapdfew4j` (`category_id`),
  CONSTRAINT `FKam9riv8y6rjwkua1gapdfew4j` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FKklnrv3weler2ftkweewlky958` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'A dystopian novel set in a totalitarian society ruled by Big Brother.','https://m.media-amazon.com/images/P/0451524934.01.LZZZZZZZ.jpg',299,'1984',1,1,1),(2,'A young wizard discovers his magical heritage and attends Hogwarts.','https://m.media-amazon.com/images/P/0590353403.01.LZZZZZZZ.jpg',499,'Harry Potter and the Sorcerer\'s Stone',2,1,2),(3,'Explores the history and impact of Homo sapiens on the world.','https://m.media-amazon.com/images/P/0062316095.01.LZZZZZZZ.jpg',599,'Sapiens: A Brief History of Humankind',3,2,3),(4,'A classic tale of love and misunderstanding in Regency England.','https://m.media-amazon.com/images/P/0141439513.01.LZZZZZZZ.jpg',349,'Pride and Prejudice',4,4,4),(5,'A chilling story of a haunted hotel and a writer\'s descent into madness.','https://m.media-amazon.com/images/P/0307743659.01.LZZZZZZZ.jpg',399,'The Shining',5,4,5),(6,'A sequel exploring the future of humanity and artificial intelligence.','https://m.media-amazon.com/images/P/0062464310.01.LZZZZZZZ.jpg',649,'Homo Deus',3,2,6),(7,'A gripping story of survival and friendship in a post-apocalyptic world.','https://m.media-amazon.com/images/P/0743292332.01.LZZZZZZZ.jpg',429,'Cell',5,4,7),(8,'A romantic drama about second chances and enduring love.','https://m.media-amazon.com/images/P/0141439580.01.LZZZZZZZ.jpg',319,'Emma',4,4,8),(9,'A magical tournament puts young wizards to the ultimate test.','https://m.media-amazon.com/images/P/0545582954.01.LZZZZZZZ.jpg',549,'Harry Potter and the Goblet of Fire',2,1,9),(10,'A political allegory featuring farm animals rebelling against tyranny.','https://m.media-amazon.com/images/P/0451526341.01.LZZZZZZZ.jpg',279,'Animal Farm',1,1,10);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Fiction'),(2,'Science'),(3,'Romance'),(4,'Horror');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `stock_quantity` int NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `inventory_chk_1` CHECK ((`stock_quantity` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,0),(2,3),(3,34),(4,35),(5,5),(6,36),(7,30),(8,20),(9,30),(10,22);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `book_id` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `rating` int NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `review_text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,1,'2025-09-02 09:20:00.000000',5,'2025-09-02 09:20:00.000000',1,'A chilling and thought-provoking masterpiece. Orwell was ahead of his time.'),(2,2,'2025-09-02 09:20:00.000000',4,'2025-09-02 09:20:00.000000',2,'Magical and immersive. A great start to an iconic series.'),(3,3,'2025-09-02 09:20:00.000000',5,'2025-09-02 09:20:00.000000',3,'Brilliantly written and deeply insightful. A must-read for history lovers.'),(4,4,'2025-09-02 09:20:00.000000',4,'2025-09-02 09:20:00.000000',4,'Elegant prose and timeless romance. Austen never disappoints.'),(5,5,'2025-09-02 09:20:00.000000',5,'2025-09-02 09:20:00.000000',1,'Terrifying and gripping. King’s storytelling is unmatched.'),(6,6,'2025-09-02 09:20:00.000000',4,'2025-09-02 09:20:00.000000',2,'Fascinating look into the future of humanity. Thought-provoking.'),(7,7,'2025-09-02 09:20:00.000000',3,'2025-09-02 09:20:00.000000',3,'Dark and intense. Not King’s best, but still worth the read.'),(8,8,'2025-09-02 09:20:00.000000',4,'2025-09-02 09:20:00.000000',4,'Charming and witty. Emma is a delightful character.'),(9,9,'2025-09-02 09:20:00.000000',5,'2025-09-02 09:20:00.000000',1,'Thrilling and magical. The Triwizard Tournament is epic.'),(10,10,'2025-09-02 09:20:00.000000',5,'2025-09-02 09:20:00.000000',2,'Sharp and satirical. A brilliant political allegory.'),(11,1,'2025-09-02 09:20:00.000000',1,'2025-09-08 09:20:00.000000',3,'Book');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `new_password` varchar(255) DEFAULT NULL,
  `old_password` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('ADMIN','CUSTOMER') NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'dvv@gmail.com','customer 1',NULL,NULL,'$2a$10$.z0UkDUvTlSqBZgk7MTQwu6lV6L8hCvN.hq7DRUTGsejLLk43taCG','CUSTOMER'),(2,'dvv1@gmail.com','customer 2',NULL,NULL,'$2a$10$0zfYbBcxO.IjL/n3l6wXDexvqzXYtBB0rXmKYj3liVYRoPJWcTR02','CUSTOMER');
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

-- Dump completed on 2025-09-02 16:51:41
-- DROP TABLE IF EXISTS `inventory`;
-- /*!40101 SET @saved_cs_client     = @@character_set_client */;
-- /*!50503 SET character_set_client = utf8mb4 */;
-- CREATE TABLE `inventory` (
--   `id` bigint NOT NULL AUTO_INCREMENT,
--   `stock_quantity` bigint NOT NULL,
--   PRIMARY KEY (`id`)
-- ) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
-- /*!40101 SET character_set_client = @saved_cs_client */;
-- INSERT INTO `inventory` VALUES (1,0),(2,3),(3,8),(4,6),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
