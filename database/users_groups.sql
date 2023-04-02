-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2023 at 06:36 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_otm`
--

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `allow_view_all` tinyint(1) DEFAULT NULL,
  `allow_manage_projects` tinyint(1) DEFAULT NULL,
  `allow_manage_tasks` tinyint(1) DEFAULT NULL,
  `allow_manage_tickets` tinyint(1) DEFAULT NULL,
  `allow_manage_users` tinyint(1) DEFAULT NULL,
  `allow_manage_configuration` tinyint(1) DEFAULT NULL,
  `allow_manage_tasks_viewonly` tinyint(1) DEFAULT NULL,
  `allow_manage_discussions` tinyint(1) DEFAULT NULL,
  `allow_manage_discussions_viewonly` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `name`, `allow_view_all`, `allow_manage_projects`, `allow_manage_tasks`, `allow_manage_tickets`, `allow_manage_users`, `allow_manage_configuration`, `allow_manage_tasks_viewonly`, `allow_manage_discussions`, `allow_manage_discussions_viewonly`) VALUES
(1, 'Admin', 1, 1, 1, 1, 1, 1, NULL, 1, NULL),
(2, 'Developer', NULL, 3, 4, 4, NULL, NULL, NULL, NULL, NULL),
(3, 'Client', NULL, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Manager', 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL),
(5, 'Designer', NULL, 3, 4, 4, NULL, NULL, NULL, NULL, NULL),
(7, 'Testers', NULL, 2, 1, 4, NULL, NULL, NULL, NULL, NULL),
(8, 'Management & Accounts', NULL, 3, 4, 1, NULL, NULL, NULL, NULL, NULL),
(9, 'Super-Client', NULL, 4, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Hardware Support', NULL, 3, 4, 1, NULL, NULL, NULL, NULL, NULL),
(12, 'Office Admin', NULL, 2, 4, 1, NULL, NULL, NULL, NULL, NULL),
(13, 'TL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
