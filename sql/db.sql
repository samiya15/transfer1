-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2024 at 11:03 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siwaka`
--
DROP DATABASE IF EXISTS `siwaka`;
CREATE DATABASE IF NOT EXISTS `siwaka` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `siwaka`;

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
CREATE TABLE IF NOT EXISTS `gender` (
  `genderId` tinyint(1) NOT NULL AUTO_INCREMENT,
  `gender` varchar(30) DEFAULT NULL,
  `datecreated` datetime DEFAULT current_timestamp(),
  `dateupdated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`genderId`),
  UNIQUE KEY `gender` (`gender`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`genderId`, `gender`, `datecreated`, `dateupdated`) VALUES
(1, 'female', '2024-07-03 00:51:11', '2024-07-03 00:51:11'),
(2, 'male', '2024-07-03 00:51:11', '2024-07-03 00:51:11'),
(3, 'rather not say', '2024-07-03 00:51:11', '2024-07-03 00:51:11');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `messageId` bigint(10) NOT NULL AUTO_INCREMENT,
  `sender_name` varchar(50) DEFAULT NULL,
  `user_password` varchar(60) DEFAULT NULL,
  `sender_age` bigint(50) DEFAULT NULL,
  `sender_email` varchar(50) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `text_message` text DEFAULT NULL,
  `datecreated` datetime DEFAULT current_timestamp(),
  `dateupdated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`messageId`, `sender_name`, `user_password`, `sender_age`, `sender_email`, `gender`, `text_message`, `datecreated`, `dateupdated`) VALUES
(1, 'Alex', 'alex123', 34, '', '', ' hello is this siwaka bakery', '2024-07-03 23:36:46', '2024-07-03 23:36:46'),
(2, 'Alex', 'alex123', 34, '', '', ' hello is this siwaka bakery', '2024-07-03 23:37:03', '2024-07-03 23:37:03'),
(3, 'james Ouma', 'jamo23', 23, '', '', ' hello just testing', '2024-07-03 23:38:46', '2024-07-03 23:38:46'),
(4, 'james Ouma', 'jamo23', 23, '', '', ' hello just testing', '2024-07-03 23:39:11', '2024-07-03 23:39:11'),
(5, 'mark', 'marky', 33, 'mark@yahoo.com', '', ' checking once more', '2024-07-03 23:39:44', '2024-07-03 23:39:44');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `roleId` tinyint(1) NOT NULL AUTO_INCREMENT,
  `role` varchar(30) DEFAULT NULL,
  `datecreated` datetime DEFAULT current_timestamp(),
  `dateupdated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`roleId`),
  UNIQUE KEY `role` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`roleId`, `role`, `datecreated`, `dateupdated`) VALUES
(1, 'admin', '2024-07-03 00:48:01', '2024-07-03 00:48:01'),
(2, 'student', '2024-07-03 00:49:32', '2024-07-03 00:49:32'),
(3, 'instructor', '2024-07-03 00:49:32', '2024-07-03 00:49:32'),
(4, 'author', '2024-07-03 00:49:32', '2024-07-03 00:49:32'),
(5, 'editor', '2024-07-03 00:49:32', '2024-07-03 00:49:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `userId` bigint(10) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL DEFAULT '',
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(60) DEFAULT NULL,
  `roleId` tinyint(1) NOT NULL DEFAULT 0,
  `genderId` tinyint(1) NOT NULL DEFAULT 0,
  `datecreated` datetime DEFAULT current_timestamp(),
  `dateupdated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`userId`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
