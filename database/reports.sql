-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2023 at 06:34 PM
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
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `users_group_id` int(11) NOT NULL,
  `question_group` int(11) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `user_id`, `users_group_id`, `question_group`, `dev_total`, `dev_percentage`, `tl_total`, `tl_percentage`, `manager_total`, `manager_percentage`, `ceo_total`, `ceo_percentage`, `score`, `status`, `created_at`, `updated_at`) VALUES
(1, 93, 2, 1, 20, 80, 0, 0, 0, 0, 0, 0, 0, 'pending', '2023-04-02 18:29:14', ''),
(2, 90, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pending', '2023-04-02 18:31:58', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
