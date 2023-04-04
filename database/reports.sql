-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2023 at 09:43 AM
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
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `users_group_id` int(11) NOT NULL,
  `quarter_id` int(11) NOT NULL,
  `dev_total` int(11) NOT NULL,
  `dev_percentage` float NOT NULL,
  `tl_total` int(11) NOT NULL,
  `tl_percentage` float NOT NULL,
  `manager_total` int(11) NOT NULL,
  `manager_percentage` float NOT NULL,
  `ceo_total` int(11) NOT NULL,
  `ceo_percentage` int(11) NOT NULL,
  `score` float NOT NULL,
  `status` enum('pending','inprogress','completed') NOT NULL DEFAULT 'pending',
  `created_at` varchar(100) NOT NULL,
  `updated_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `user_id`, `users_group_id`, `quarter_id`, `dev_total`, `dev_percentage`, `tl_total`, `tl_percentage`, `manager_total`, `manager_percentage`, `ceo_total`, `ceo_percentage`, `score`, `status`, `created_at`, `updated_at`) VALUES
(1, 90, 2, 1, 20, 80, 0, 0, 0, 0, 0, 0, 0, 'pending', '2023-04-03 06:07:18', ''),
(2, 93, 2, 1, 18, 72, 0, 0, 0, 0, 0, 0, 0, 'pending', '2023-04-03 06:08:26', ''),
(3, 94, 2, 1, 11, 44, 0, 0, 0, 0, 0, 0, 0, 'pending', '2023-04-03 06:22:02', ''),
(5, 46, 13, 1, 0, 0, 16, 64, 0, 0, 0, 0, 0, 'pending', '2023-04-03 07:53:49', ''),
(6, 24, 4, 1, 0, 0, 0, 0, 23, 92, 0, 0, 0, 'pending', '2023-04-03 08:03:30', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
