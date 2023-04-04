-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2023 at 09:44 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

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
  `quarter_id` int(11) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `report_id`, `quarter_id`, `user_id`, `users_group_id`, `question_id`, `dev_comment`, `dev_rating`, `TL_comment`, `TL_rating`, `manager_comment`, `manager_rating`, `ceo_comment`, `ceo_rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 90, 2, 1, 'Zubiya Comment 1', '4', '', NULL, '', NULL, '', NULL, 'pending', '2023-04-03 06:07:18', ''),
(2, 1, 1, 90, 2, 2, 'Zubiya Comment 2', '4', '', NULL, '', NULL, '', NULL, 'pending', '2023-04-03 06:07:18', ''),
(3, 1, 1, 90, 2, 3, 'Zubiya Comment 3', '4', '', NULL, '', NULL, '', NULL, 'pending', '2023-04-03 06:07:18', ''),
(4, 1, 1, 90, 2, 4, 'Zubiya Comment 4', '4', '', NULL, '', NULL, '', NULL, 'pending', '2023-04-03 06:07:18', ''),
(5, 1, 1, 90, 2, 5, 'Zubiya Comment 5', '4', '', NULL, '', NULL, '', NULL, 'pending', '2023-04-03 06:07:18', ''),
(6, 2, 1, 93, 2, 1, 'Javeriya Comment 1', '4', '', NULL, '', NULL, '', NULL, 'pending', '2023-04-03 06:08:26', ''),
(7, 2, 1, 93, 2, 2, 'Javeriya Comment 2', '2', '', NULL, '', NULL, '', NULL, 'pending', '2023-04-03 06:08:26', ''),
(8, 2, 1, 93, 2, 3, 'Javeriya Comment 3', '5', '', NULL, '', NULL, '', NULL, 'pending', '2023-04-03 06:08:26', ''),
(9, 2, 1, 93, 2, 4, 'Javeriya Comment 4', '4', '', NULL, '', NULL, '', NULL, 'pending', '2023-04-03 06:08:26', ''),
(10, 2, 1, 93, 2, 5, 'Javeriya Comment 5', '3', '', NULL, '', NULL, '', NULL, 'pending', '2023-04-03 06:08:26', ''),
(11, 3, 1, 94, 2, 1, 'Aisha Comment 1', '3', '', NULL, '', NULL, '', NULL, 'pending', '2023-04-03 06:22:02', ''),
(12, 3, 1, 94, 2, 2, 'Aisha Comment 2', '4', '', NULL, '', NULL, '', NULL, 'pending', '2023-04-03 06:22:02', ''),
(13, 3, 1, 94, 2, 3, 'Aisha Comment 3', '2', '', NULL, '', NULL, '', NULL, 'pending', '2023-04-03 06:22:02', ''),
(14, 3, 1, 94, 2, 4, 'Aisha Comment 4', '1', '', NULL, '', NULL, '', NULL, 'pending', '2023-04-03 06:22:02', ''),
(15, 3, 1, 94, 2, 5, 'Aisha Comment 5', '1', '', NULL, '', NULL, '', NULL, 'pending', '2023-04-03 06:22:02', ''),
(21, 5, 1, 46, 13, 6, '', NULL, 'TL Comment 1', '3', '', NULL, '', NULL, 'pending', '2023-04-03 07:53:49', ''),
(22, 5, 1, 46, 13, 7, '', NULL, 'TL Comment 2', '2', '', NULL, '', NULL, 'pending', '2023-04-03 07:53:49', ''),
(23, 5, 1, 46, 13, 8, '', NULL, 'TL Comment 3', '4', '', NULL, '', NULL, 'pending', '2023-04-03 07:53:49', ''),
(24, 5, 1, 46, 13, 9, '', NULL, 'TL Comment 4', '3', '', NULL, '', NULL, 'pending', '2023-04-03 07:53:49', ''),
(25, 5, 1, 46, 13, 10, '', NULL, 'TL Comment 5', '4', '', NULL, '', NULL, 'pending', '2023-04-03 07:53:49', ''),
(26, 6, 1, 24, 4, 11, '', NULL, '', NULL, 'Manager Comment 1', '5', '', NULL, 'pending', '2023-04-03 08:03:30', ''),
(27, 6, 1, 24, 4, 12, '', NULL, '', NULL, 'Manager Comment 2', '4', '', NULL, 'pending', '2023-04-03 08:03:30', ''),
(28, 6, 1, 24, 4, 13, '', NULL, '', NULL, 'Manager Comment 3', '4', '', NULL, 'pending', '2023-04-03 08:03:30', ''),
(29, 6, 1, 24, 4, 14, '', NULL, '', NULL, 'Manager Comment 4', '5', '', NULL, 'pending', '2023-04-03 08:03:30', ''),
(30, 6, 1, 24, 4, 15, '', NULL, '', NULL, 'Manager Comment 5', '5', '', NULL, 'pending', '2023-04-03 08:03:30', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
