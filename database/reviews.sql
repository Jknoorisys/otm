-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2023 at 06:35 PM
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
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `question_group` int(11) NOT NULL,
  `user_id` int(50) NOT NULL,
  `users_group_id` int(50) NOT NULL,
  `question_id` int(11) NOT NULL,
  `dev_comment` text NOT NULL,
  `dev_rating` enum('1','2','3','4','5') DEFAULT NULL,
  `TL_comment` text NOT NULL,
  `TL_rating` enum('1','2','3','4','5') DEFAULT NULL,
  `manager_comment` text NOT NULL,
  `manager_rating` enum('1','2','3','4','5') DEFAULT NULL,
  `ceo_comment` text NOT NULL,
  `ceo_rating` enum('1','2','3','4','5') DEFAULT NULL,
  `status` enum('pending','inprogress','completed') NOT NULL DEFAULT 'pending',
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `report_id`, `question_group`, `user_id`, `users_group_id`, `question_id`, `dev_comment`, `dev_rating`, `TL_comment`, `TL_rating`, `manager_comment`, `manager_rating`, `ceo_comment`, `ceo_rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 93, 2, 1, 'Javeriya Comment 1', '5', '', NULL, '', NULL, '', NULL, 'pending', '2023-04-02 18:29:14', ''),
(2, 1, 1, 93, 2, 2, 'Javeriya Comment 2', '5', '', NULL, '', NULL, '', NULL, 'pending', '2023-04-02 18:29:14', ''),
(3, 1, 1, 93, 2, 3, 'Javeriya Comment 3', '4', '', NULL, '', NULL, '', NULL, 'pending', '2023-04-02 18:29:14', ''),
(4, 1, 1, 93, 2, 4, 'Javeriya Comment 4', '4', '', NULL, '', NULL, '', NULL, 'pending', '2023-04-02 18:29:14', ''),
(5, 1, 1, 93, 2, 5, 'Javeriya Comment 5', '2', '', NULL, '', NULL, '', NULL, 'pending', '2023-04-02 18:29:14', ''),
(6, 2, 1, 90, 2, 1, 'Zubiya Comment 1', '3', '', NULL, '', NULL, '', NULL, 'pending', '2023-04-02 18:31:58', ''),
(7, 2, 1, 90, 2, 2, 'Zubiya Comment 2', '3', '', NULL, '', NULL, '', NULL, 'pending', '2023-04-02 18:31:58', ''),
(8, 2, 1, 90, 2, 3, 'Zubiya Comment 3', '3', '', NULL, '', NULL, '', NULL, 'pending', '2023-04-02 18:31:58', ''),
(9, 2, 1, 90, 2, 4, 'Zubiya Comment 4', '3', '', NULL, '', NULL, '', NULL, 'pending', '2023-04-02 18:31:58', ''),
(10, 2, 1, 90, 2, 5, 'Zubiya Comment 5', '3', '', NULL, '', NULL, '', NULL, 'pending', '2023-04-02 18:31:59', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
