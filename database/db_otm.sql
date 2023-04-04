-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2023 at 01:26 PM
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
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `projects_status_id` int(11) DEFAULT NULL,
  `projects_types_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `team` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `order_tasks_by` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `projects_status_id`, `projects_types_id`, `created_by`, `name`, `description`, `team`, `created_at`, `order_tasks_by`) VALUES
(16, 3, 2, 20, 'AMS oil', '<p>Long term</p>', '33,34,32,29,26,31', '2016-08-03 12:36:56', ''),
(17, 3, 2, 20, 'Awlascope', '', '27,24,28,31', '2016-08-03 14:43:21', ''),
(18, 1, 2, 20, 'HanaDoc', '', '45,36,30,76,75,27,24,41', '2016-08-03 15:02:20', ''),
(19, 3, 2, 20, 'Binghalib', '', '32,24,28,25', '2016-08-03 15:55:09', ''),
(20, 3, 2, 20, 'Viochat', '', '32,30,24,26,31', '2016-08-03 16:34:09', ''),
(21, 3, 3, 20, 'Nsys Closed', '', '41,45,44,30,29,43,27,24,26', '2016-08-03 18:11:05', ''),
(22, 4, 3, 20, 'PSD to Wordpress', '', '32,31', '2016-08-04 19:28:50', ''),
(23, 3, 4, 20, 'E Zamana', '', '32,27,24,26,31', '2016-08-08 10:42:55', ''),
(24, 3, 3, 20, 'Veesync', '', '29', '2016-08-08 18:13:53', ''),
(25, 3, 4, 20, 'Lot ka mal', '', '32,24,28,31', '2016-08-09 17:12:13', ''),
(26, 3, 3, 20, 'Deezeed', '', '32', '2016-08-10 18:44:03', ''),
(27, 3, 3, 20, 'Cosplay', '', '37', '2016-08-11 11:01:06', ''),
(29, 3, 3, 20, 'TestP', '', '26', '2016-08-18 11:24:38', ''),
(30, 1, 3, 20, '2SN', '', '32,83,71,45,24', '2016-08-22 18:43:23', ''),
(31, 3, 3, 20, 'Boundary App', '', '32,28', '2016-08-23 11:37:24', ''),
(32, 3, 3, 20, 'POS', '', '32,30,29,28', '2016-08-30 12:05:45', ''),
(33, 3, 3, 20, 'Social Marketing', '', '32,31', '2016-09-01 19:41:42', ''),
(34, 3, 2, 20, 'CC web', '', '24,26,31', '2016-09-06 15:15:35', ''),
(35, 3, 3, 20, 'The Snapchat Guy', '', '32,24,31', '2016-09-08 18:34:00', ''),
(36, 3, 3, 20, 'ATFS', '', '32,30,29,27,26', '2016-09-10 18:42:46', ''),
(37, 3, 3, 20, 'Memories', '', '32,27,24,26,31', '2016-09-10 18:48:58', ''),
(38, 3, 3, 20, 'Book Apps', '', '32,39,24,26,28,31', '2016-09-23 16:27:19', ''),
(39, 3, 3, 20, 'Market passport', '', '26', '2016-09-27 16:38:51', ''),
(40, 3, 3, 20, 'Activity tracker', '', '30', '2016-10-08 18:51:49', ''),
(41, 3, 3, 20, 'ZMS', '', '32,24,26', '2016-10-08 19:06:57', ''),
(42, 3, 3, 20, 'Proto.io', '', '32,30,39', '2016-10-11 15:59:41', ''),
(43, 3, 3, 20, 'MNC and Agencity', '', '32,30,29,39,28', '2016-10-29 13:51:45', ''),
(44, 3, 3, 20, 'Inrunews', '', '31', '2016-10-29 16:43:47', ''),
(45, 3, 3, 20, 'Rabona', '', '27,28', '2016-10-29 17:31:45', ''),
(46, 3, 3, 20, 'Haj', '', '32,29,27,26', '2016-12-01 11:15:24', ''),
(47, 3, 3, 20, 'Innovation', '', '31', '2016-12-06 12:35:42', ''),
(48, 3, 3, 20, 'IPW', '', '32,40', '2016-12-19 13:00:14', ''),
(49, 3, 3, 20, 'VSH Card', '', '32,24,26,28,31', '2016-12-19 13:02:07', ''),
(50, 3, 3, 20, 'Printech printer', '', '24,31', '2016-12-19 13:08:41', ''),
(51, 3, 3, 20, 'MyGluxus', '', '32,40,29,27,24,28,31', '2016-12-22 15:50:40', ''),
(52, 3, 3, 20, 'T Indicator', '', '29,26,27', '2016-12-22 17:28:34', ''),
(53, 3, 3, 20, 'Gulfam', '', '32', '2016-12-29 17:51:51', ''),
(54, 3, 3, 20, 'Kinder WP', '', '32,31', '2017-01-05 18:50:42', ''),
(55, 3, 3, 20, 'Anas Travels', '', '32', '2017-01-26 19:29:59', ''),
(56, 3, 3, 20, 'speakMeApp', '', NULL, '2017-01-31 09:39:22', ''),
(57, 3, 3, 20, 'E-Shop', '', '32,29,27,26,28', '2017-02-20 16:21:41', ''),
(58, 3, 3, 20, 'FOI', '', '32,30,24,26,31', '2017-02-20 19:40:23', ''),
(59, 3, 3, 20, 'IPW second phase', '', '32,30,40', '2017-03-01 19:19:19', ''),
(60, 3, 3, 20, 'Daily bids April', '', '42', '2017-04-15 11:02:21', ''),
(61, 3, 3, 20, 'Zoosky24', '', '24,31', '2017-05-08 11:10:32', ''),
(62, 3, 2, 20, 'Easyskript', '', '24,26', '2017-05-08 11:11:32', ''),
(63, 3, 3, 20, 'Deezeed', '', '24,31', '2017-05-16 13:45:10', ''),
(64, 3, 3, 20, 'SlidingDoorsDirect', '', '24', '2017-05-17 17:14:11', ''),
(65, 3, 3, 20, 'Gonagoo', '', '62,30,27,24,46,41', '2017-07-04 16:36:10', ''),
(66, 2, 3, 20, 'ViaChat', '', '26,43,41,45,32,30,29,24', '2018-02-01 20:29:09', ''),
(67, 2, 3, 20, 'Service Market Place', '', '45,32,44,36,47', '2018-02-01 20:32:12', ''),
(68, 3, 3, 20, 'Ismo', '', '43,26', '2018-02-01 20:35:25', ''),
(69, 3, 3, 20, 'Cambocado', '', '43', '2018-02-01 20:36:27', ''),
(70, 2, 3, 20, 'School BellQ', '', '30,29', '2018-02-01 20:37:05', ''),
(71, 3, 3, 20, 'Kapruka', '', '40,29', '2018-02-01 20:37:49', ''),
(72, 3, 3, 20, 'Generic Tour Mention', '', '30', '2018-02-01 20:38:37', ''),
(73, 3, 2, 20, 'DattaMangal', '', '24', '2018-02-05 11:02:18', ''),
(74, 3, 2, 20, 'RazaBooks', '', '43', '2018-02-05 20:08:42', ''),
(75, 3, 2, 20, 'Afripamed', '', '62,45,44,30,72,43,50,27,24,51,41', '2018-02-07 11:34:34', ''),
(76, 3, 2, 20, 'Powerloom App', '', '45,36,29,27,26', '2018-02-07 19:52:38', ''),
(77, 3, 2, 20, 'Bingo213 - Classified', '', '45,24,26,51', '2018-02-07 20:42:12', ''),
(78, 2, 2, 20, 'Action Plug', '', '27', '2018-02-08 19:18:05', ''),
(79, 3, 3, 20, 'Employee Assessment Portal', '', '24', '2018-03-29 12:07:23', ''),
(80, 2, 3, 20, 'Codes Web', '', '32,55,51', '2018-08-01 15:51:11', ''),
(81, 1, 4, 20, 'Noorisys Internal', '', '32,88,108,94,36,85,87,30,77,83,93,76,86,64,71,75,106,82,89,43,92,45,27,105,112,80,107,84,109,90,98,97,95,110,96,24,46,78,101,104,41,103', '2018-08-01 15:52:09', ''),
(82, 3, 2, 20, 'Enzo', '', '49,26,48', '2018-08-01 15:52:38', ''),
(83, 3, 3, 20, 'Neupharmac', '', '45,51', '2018-08-01 15:58:04', ''),
(84, 2, 3, 20, 'Noorok', '', '26,44,41,45,55,47,24,56,54,46', '2018-08-01 15:59:08', ''),
(85, 2, 3, 20, 'Assets', '', '24', '2018-08-01 15:59:36', ''),
(86, 2, 3, 20, 'IN Time', '', '36,29,27', '2018-08-01 16:00:08', ''),
(87, 3, 3, 20, 'Marketing T', '', '41,52', '2018-08-01 16:02:35', ''),
(88, 2, 3, 20, 'Imaginx', '', '51', '2018-08-01 19:12:37', ''),
(89, 2, 2, 20, 'Mufti Akhtar Raza Khan Azhari', '', '45,36,30,29', '2018-08-09 20:00:25', ''),
(90, 2, 2, 20, 'ALLAHU AKBAR', '', '45,32,47,29,26,51', '2018-08-11 20:36:24', ''),
(91, 3, 3, 20, 'Afroca', '', '32', '2018-08-27 12:10:41', ''),
(92, 3, 3, 20, 'MyEscapes', '', '29,27', '2018-08-27 12:32:10', ''),
(93, 2, 3, 20, 'TajushShariah', '', '36,29,27', '2018-08-31 16:23:05', ''),
(94, 2, 3, 20, 'Namoos', '', '29,27', '2018-09-01 12:37:59', ''),
(95, 3, 3, 20, 'Alfardah & Shajrah', '', '41,32,27', '2018-09-01 13:53:21', ''),
(96, 3, 3, 20, 'Catering', '', '45,36,27,46', '2018-09-04 10:44:08', ''),
(97, 3, 3, 20, 'Noori Guldasta', '', '29,27,41', '2018-09-11 16:20:32', ''),
(98, 2, 3, 20, 'Madden', '', '32,51', '2018-09-13 20:15:45', ''),
(99, 2, 3, 20, 'Couponia', '', '45,32,24,51', '2018-09-13 20:16:15', ''),
(100, 3, 3, 20, 'Papeo', '', '45,32,47,71,29,27,24,46,41', '2018-09-25 19:42:09', ''),
(101, 1, 3, 20, 'NMDFC', '', '36,87,30,27', '2018-09-26 15:50:39', ''),
(102, 3, 3, 20, 'Beyond Cre', '', '45,51', '2018-10-01 19:26:58', ''),
(103, 2, 3, 20, 'WooCommerce Countdown', '', '45,36,30,51,41', '2018-10-03 14:34:36', ''),
(104, 3, 3, 20, 'Jugl', '', '64,75,24,26,68,59', '2018-10-09 13:04:48', ''),
(105, 2, 3, 20, 'WooCommerce plugin issue', '', '51', '2018-10-09 13:09:52', ''),
(107, 3, 3, 20, 'Grasshoppers', '', '29,36,30,27,24,41', '2018-10-16 20:20:58', ''),
(108, 2, 3, 20, 'Timebase', '', '45,36,29', '2018-10-18 20:29:13', ''),
(109, 3, 3, 20, 'MK Umra- Al Mokhtara', '', '76,24,41', '2018-10-22 20:26:32', ''),
(110, 2, 2, 26, 'OAI SYSTEM', '', '51', '2018-11-23 20:24:02', ''),
(112, 3, 3, 20, 'Muslim Matrimony', '', '29,45,32,36,30,57,43,27,24,48,51,41', '2018-12-10 21:02:02', ''),
(115, 3, 3, 26, 'Logopaedie', '', '45,47,24,51,41', '2018-12-18 19:20:59', ''),
(117, 2, 3, 20, 'Islam4all', '', '45,32', '2018-12-27 13:37:51', ''),
(118, 3, 3, 20, 'Postcard', '', '24', '2019-01-02 13:27:53', ''),
(119, 2, 3, 20, 'taxi app bug', '', '26', '2019-01-02 13:29:44', ''),
(120, 3, 3, 20, 'Amarveer Sizing', '', '36,71,43,27,80,41', '2019-01-12 11:07:10', ''),
(121, 3, 2, 26, 'eTrvl', '', '26,45', '2019-01-31 19:18:38', ''),
(122, 3, 3, 20, 'Gonagoo 4', '', '45,36,30,47,27,24,46,41', '2019-02-05 18:31:54', ''),
(123, 3, 3, 20, 'Dynamic pricing', '<p>Duplicate</p>', '20', '2019-02-11 12:30:44', ''),
(124, 2, 3, 20, 'Strategic website', '', '45,51', '2019-02-11 12:31:54', ''),
(125, 3, 2, 26, 'Pricingblocker', '', '45,24,51,41', '2019-02-12 19:33:36', ''),
(126, 3, 3, 26, 'Crecertrade - Pratap', '', NULL, '2019-03-18 20:57:36', ''),
(127, 3, 3, 26, 'oomka', '', '45,24,51', '2019-03-19 20:23:08', ''),
(128, 3, 2, 26, 'Azhari collection', '', '45', '2019-03-22 20:22:50', ''),
(129, 3, 3, 26, 'HJ24 - Portal', '', '26,45,65,55,64,27,24,56,42,68,41', '2019-03-22 21:13:14', ''),
(130, 3, 3, 20, 'Jugl live', '', '32', '2019-03-27 19:28:47', ''),
(131, 3, 3, 20, 'Signomatic', '', '45,24,51', '2019-03-27 20:22:31', ''),
(132, 3, 3, 20, 'Mehrfamilienhaus-leipzig.de', '', '69', '2019-04-01 17:26:03', ''),
(134, 3, 3, 20, 'Mr. Schenider Custom WP', '', '45,24,51', '2019-04-02 11:16:50', ''),
(135, 3, 3, 20, 'Mr. Schenider Logo Design', '', '45', '2019-04-10 12:12:38', ''),
(136, 3, 3, 20, 'Spiess-Urania', '', '51', '2019-04-10 20:12:53', ''),
(137, 3, 3, 20, 'Essenzediluce (Light)', '', '24,51', '2019-04-17 11:48:11', ''),
(138, 3, 3, 20, 'OT', '', '29,20,26,52,45,32,65,44,69,66,36,30,55,57,49,47,64,71,43,50,27,24,70,48,56,51,67,63,46,41', '2019-05-03 18:17:05', ''),
(139, 3, 3, 20, 'OT', '', '29,20,26,52,45,32,65,44,69,66,36,30,55,57,49,47,64,71,43,50,27,24,70,48,56,51,67,63,46,41', '2019-05-03 18:19:20', ''),
(140, 3, 3, 26, 'Tomega', '', '71,43,24,46,41', '2019-05-14 18:24:26', ''),
(141, 3, 3, 20, 'Store Locator - Schneider', '', '47,24,51', '2019-05-16 11:46:39', ''),
(142, 3, 3, 20, 'Aesthetica - Schenider', '', '47,24,51', '2019-05-16 12:04:12', ''),
(143, 3, 3, 20, 'SOREL - Schenider', '', '24', '2019-05-16 18:41:10', ''),
(144, 3, 3, 20, 'Dreamerss', '', '32,65,55,64,27,24,41', '2019-06-01 18:25:46', ''),
(145, 3, 3, 29, 'Kapruka iOS', '', '27', '2019-06-20 20:34:18', ''),
(146, 3, 2, 20, 'Planz', '', '51', '2019-06-29 20:05:21', ''),
(147, 3, 2, 26, 'TFI', '', '83,47,45,41', '2019-07-01 20:50:53', ''),
(148, 3, 3, 20, 'Chalcio.com', '', '24,51', '2019-07-03 20:09:53', ''),
(149, 3, 3, 20, 'Mecatrouve', '<p>Front End Re-design</p>', '45,71,50,24,26,51,41', '2019-07-12 11:16:51', ''),
(151, 3, 3, 29, 'Hotel Offers - Lerotin', '', '20,45,64,24,46,41', '2019-07-19 16:00:42', ''),
(152, 3, 3, 20, 'Magento2 - Porto', '', '24,51', '2019-07-24 20:23:55', ''),
(154, 1, 3, 20, 'Zowar', '', '99,87,77,76,64,71,75,45,27,26,24,41', '2019-07-29 11:36:40', ''),
(155, 3, 3, 20, 'Genext Tutor', '', '30,27', '2019-07-30 18:20:28', ''),
(156, 3, 3, 20, 'DP Foundation', '', '65,27,24', '2019-08-06 13:46:55', ''),
(157, 3, 3, 20, 'Jugl Live Web', '', '47,24', '2019-08-06 19:58:01', ''),
(158, 3, 3, 20, 'SesaPay', '', '32,36,47,27,24,41', '2019-08-07 12:59:34', ''),
(159, 3, 3, 20, 'GPM-Peter WP', '', '45,24,41', '2019-10-03 12:14:18', ''),
(160, 3, 3, 20, 'ProCom+ WP', '', '24,51,41', '2019-10-03 12:15:37', ''),
(161, 2, 3, 20, 'Leadigo - Convert Trade', '', '45,71,43,24,51,46,41', '2019-10-03 12:20:23', ''),
(162, 3, 3, 20, 'Janus', '', '20,55,74,24', '2019-10-07 13:31:34', ''),
(163, 3, 2, 20, 'Transport - utms.com.sa', '', '45,71,50,24,41', '2019-10-16 17:31:48', ''),
(164, 3, 3, 20, 'zenbystep', '', '24,26', '2019-10-18 19:23:23', ''),
(165, 3, 3, 20, 'VasaTaxi', '', '65,24,26,41', '2019-10-25 20:22:12', ''),
(166, 3, 3, 20, 'Towing', '', '24,26', '2019-10-25 20:24:32', ''),
(167, 3, 3, 20, 'Calendar', '', '77,24', '2019-11-19 10:51:18', ''),
(168, 3, 3, 20, 'TheCalmBase', '', '24', '2019-11-20 15:46:33', ''),
(169, 3, 3, 20, 'Allodocta API', '', '20,43,26,46', '2019-11-26 15:23:17', ''),
(170, 3, 3, 20, 'Izikare Level 10', '', '36,30,43,50,24,26,51,41', '2019-11-27 17:19:18', ''),
(171, 3, 3, 20, 'Drivy', '', '24,41', '2019-12-03 13:06:33', ''),
(172, 3, 4, 20, 'Kirana APP (Internal)', '', '45,65,76,64,75,24', '2019-12-23 11:26:02', ''),
(173, 3, 3, 20, 'Saudi Institute App', '', '45,64', '2020-01-11 19:48:58', ''),
(174, 3, 3, 20, 'Cocoons Saloon booking', '', '32,64,24', '2020-01-13 14:13:02', ''),
(175, 3, 3, 20, 'One Choice App', '', '45,32,30,76,64,75,27,24,41', '2020-02-24 18:16:28', ''),
(176, 3, 2, 20, 'School Leaving Certificate', '', '45,24,48,41', '2020-02-27 15:11:42', ''),
(177, 3, 3, 20, 'Mischok.de Landing Page', '', '32,24,51', '2020-03-04 11:05:51', ''),
(178, 3, 3, 20, 'Alpes Swiss Medical - WP', '', '32,24,51', '2020-03-10 18:47:11', ''),
(179, 3, 3, 20, 'Aabid&Co - redesign', '', '45,24,51,41', '2020-03-11 19:37:14', ''),
(180, 2, 3, 20, 'Vehicle Handling Application', '', '32,77,76,64,75,27,24,41', '2020-03-12 16:44:09', ''),
(181, 3, 3, 20, 'CoronaApp', '', '45,29,27,24', '2020-03-30 10:07:53', ''),
(182, 3, 3, 20, 'Meats4all', '', '36,85,30,77,64,29,50,45,24,41', '2020-04-02 19:18:51', ''),
(183, 1, 3, 20, 'Izikare-Allodocta Fixes', '<p>Start from 6th April, all the tasks in allodocta and izikare will be updated in this project.</p>', '36,30,71,75,43,45,24,46,41', '2020-04-07 12:50:54', ''),
(184, 3, 3, 20, 'TrocPay', '', '30,47,71,27,46,24,41', '2020-05-08 10:29:09', ''),
(185, 3, 3, 20, 'Malegaon Basket', '', '32,30,77,45,78,27,80,24,41', '2020-05-29 18:48:19', ''),
(186, 3, 3, 20, 'Seyaha Bus - Transport Management', '', '32,77,64,71,24,46,41', '2020-06-10 09:50:43', ''),
(187, 2, 3, 20, 'Charity WP', '', '45,24', '2020-06-10 09:53:43', ''),
(188, 3, 3, 20, 'Sahtech', '', '45,47,79,43,24,46,41', '2020-06-22 10:03:50', ''),
(189, 3, 3, 20, 'FikreRaza', '', '24,41', '2020-06-26 10:37:12', ''),
(190, 3, 3, 20, 'Jauharee', '', '24,41', '2020-07-01 19:31:09', ''),
(191, 3, 3, 20, 'Portery', '', '45,43,80,24,51,46,41', '2020-07-11 10:27:28', ''),
(192, 3, 3, 20, 'Coastal WP', '', '45,24,41', '2020-07-14 12:56:58', ''),
(193, 3, 3, 20, 'Magento versioning', '', '24,51', '2020-07-16 13:46:17', ''),
(194, 3, 3, 20, 'Phoosk', '', '30,24', '2020-08-18 15:34:04', ''),
(195, 3, 3, 20, 'Bus ticket booking', '', '32,77,64,75,27,24', '2020-08-20 17:52:21', ''),
(196, 3, 3, 20, 'SesaPay Phase 3', '', '20,36,83,82,45,27,80,24,46,41,103', '2020-09-04 09:57:52', ''),
(197, 3, 3, 20, 'Webucate', '', '71,43,27,24,41', '2020-09-07 10:39:47', ''),
(198, 3, 3, 20, 'Caliber Fabrics - Invoicing System', '', '76,64,75,78,24,41', '2020-09-09 19:14:47', ''),
(199, 3, 3, 20, 'Mepronto.com', '', '43,24,41', '2020-09-10 19:31:42', ''),
(200, 3, 3, 20, 'Annachi', '', '32,36,77,47,64,29,43,27,24,41', '2020-09-15 10:21:56', ''),
(201, 3, 3, 20, 'B2B Marketplace', '', '45,71,50,24,41', '2020-09-22 10:28:55', ''),
(202, 2, 3, 20, 'Chrome Plugin & Web', '', '24,46,41', '2020-09-23 15:41:55', ''),
(203, 3, 3, 20, 'OTA App Zowar', '', '32,36,30,77,64,75,29,27,24,41', '2020-10-07 13:04:00', ''),
(204, 3, 3, 20, 'UTMS UmraBus', '', '71,24,46,41', '2020-10-21 15:33:21', ''),
(205, 3, 3, 20, '#TT', '', '32,29,27,80,24,41', '2020-11-16 17:06:31', ''),
(206, 3, 2, 20, 'Devakat', '', '43,24,41', '2020-11-20 19:56:43', ''),
(207, 3, 3, 20, 'CV Creation', '', '83,46,24,41', '2020-11-25 15:17:34', ''),
(208, 2, 3, 20, 'Ayelaa.com', '', '71,24,41', '2020-12-11 15:20:48', ''),
(209, 3, 3, 20, 'Amtik', '', '36,30,77,82,43,45,27,24,41', '2020-12-11 17:13:00', ''),
(210, 1, 4, 20, 'Noorisys Ongoin', '', '78,24,46', '2021-01-05 18:20:11', ''),
(211, 3, 3, 20, 'MTransport', '', '32,36,75,45,27,80,24,41', '2021-01-12 13:31:58', ''),
(213, 3, 3, 20, 'Sales-Fluence WP', '', '45,24', '2021-01-13 13:52:53', ''),
(214, 3, 3, 20, 'TheCollection WP', '', '32,83,45,24', '2021-01-13 13:53:35', ''),
(215, 3, 3, 20, 'SFV', '', '32,36,83,29,24,41', '2021-01-25 14:00:19', ''),
(216, 3, 3, 20, 'Fetch Data (chregister)', '', '50,24,41', '2021-01-25 18:43:48', ''),
(217, 3, 3, 20, 'ATG', '', '43,46,24', '2021-02-02 15:21:10', ''),
(218, 2, 3, 24, 'Razasoft Work', '', '30,77,71,45,24', '2021-02-23 10:54:30', ''),
(219, 3, 3, 24, 'Jugl ongoing', '', '26,24', '2021-02-23 18:24:19', ''),
(220, 3, 3, 24, 'ilmioagente.it', '', '24', '2021-02-24 20:13:02', ''),
(221, 4, 3, 20, 'Online Radio Broadcasting', '', '75,29,41', '2021-03-03 19:33:00', ''),
(222, 3, 3, 20, 'SFTP App', '', '29,24,41', '2021-03-03 19:55:33', ''),
(223, 3, 3, 20, 'Test Social', '', '20,30,76,64,75,24,41', '2021-03-15 18:08:41', ''),
(224, 1, 2, 24, 'FasterChecks', '', '32,88,85,30,77,83,64,71,82,29,43,50,45,27,80,26,84,46,24,41', '2021-03-19 18:26:30', ''),
(225, 3, 3, 20, 'Saloon App', '', '36,30,83,82,43,45,24', '2021-03-22 12:04:13', ''),
(226, 4, 3, 24, 'Laravel Web', '', '71,50,45,24', '2021-03-22 12:08:04', ''),
(227, 3, 3, 20, 'BLE Device', '', '27', '2021-04-08 12:48:20', ''),
(228, 3, 3, 24, 'ShipConco', '', '83,45,24,46,103', '2021-04-08 18:53:51', ''),
(229, 3, 3, 20, 'Biznesful', '', '80,24', '2021-04-22 17:14:49', ''),
(230, 1, 3, 24, 'Coursier Médical', '', '32,36,87,30,77,83,86,64,71,89,45,27,80,84,24,41', '2021-05-19 19:34:55', ''),
(231, 3, 3, 24, 'View SocialApp', '', '32,87,76,64,75,27,24,41', '2021-06-01 19:28:22', ''),
(232, 3, 3, 20, 'Delaala', '', '83,82,24,41', '2021-06-15 13:37:26', ''),
(233, 3, 3, 24, 'Adaaf', '', '88,77,76,64,45,24', '2021-06-25 20:33:13', ''),
(234, 3, 3, 24, 'Rating App', '', '71,82,29,45,24,41', '2021-07-26 18:25:00', ''),
(235, 3, 3, 24, 'SesaPay Phase 2 Support and Improvments', '', '26,46,24,41', '2021-08-13 12:29:50', ''),
(236, 3, 2, 24, 'Tukusipan - Frantz', '', '84,24,41', '2021-10-14 17:20:01', ''),
(237, 3, 3, 20, 'Balckburnclinic', '', '83,26,24,41', '2021-11-15 12:37:08', ''),
(238, 3, 3, 24, 'Encheres - Hourly', '', '30,24', '2021-12-10 18:47:31', ''),
(239, 3, 3, 24, 'Noorify - Internal', '', '32,88,85,30,83,71,43,50,27,26,46,24,41', '2021-12-10 18:49:00', ''),
(240, 1, 3, 24, 'Bontikote', '', '77,83,89,43,45,27,80,90,98,97,95,96,24,46,78,41,103', '2022-01-31 10:57:36', ''),
(241, 3, 3, 24, 'SnapChat App', '', '96,24', '2022-02-14 18:15:30', ''),
(242, 1, 4, 24, '## All tickets', '', '20,99,32,88,108,94,36,85,87,30,77,83,93,76,86,64,71,75,106,82,89,43,92,45,27,105,112,80,107,84,109,90,98,97,95,96,24,46,78,41', '2022-02-15 12:55:57', ''),
(243, 1, 3, 24, 'Janam', '', '32,87,83,76,71,82,45,27,95,96,24,46,41', '2022-02-25 20:18:49', ''),
(244, 1, 3, 24, 'NeedJob.Today', '', '84,96,24,46,41,103', '2022-03-16 10:27:09', ''),
(245, 3, 2, 24, 'Cleaning Web App', '', '93,86,89,96,24,46,41,103', '2022-03-16 10:59:27', ''),
(246, 3, 3, 46, 'Izikare White Brand', '', '20,26,24,46,78,101,41', '2022-03-23 13:18:34', ''),
(247, 1, 3, 46, 'Zowar mobile App', '', '20,99,32,87,27,24,46,41', '2022-04-07 10:46:43', ''),
(248, 1, 3, 46, 'umrahaddons.com', '', '20,32,88,94,87,82,43,45,27,95,110,24,46,41,103', '2022-04-09 17:39:29', ''),
(249, 1, 2, 46, 'Study Matching Platform', '', '20,83,93,86,89,45,95,96,24,46,78,101,41,103', '2022-04-21 17:12:02', ''),
(250, 1, 3, 46, 'Welzo HL7', '', '20,32,77,83,64,71,82,43,45,112,95,96,24,46,103', '2022-04-30 10:43:04', ''),
(251, 3, 2, 46, 'Pratham Construction WP', '', '20,32,83,24,46,104,41,103', '2022-06-13 13:24:49', ''),
(252, 1, 3, 24, 'SesaPay Phase 4', '', '20,32,88,87,77,75,45,27,95,24,46,104,103', '2022-06-20 11:23:36', ''),
(253, 1, 2, 46, 'Noumi', '', '20,32,88,30,77,83,76,64,75,82,45,27,112,24,46', '2022-06-29 19:27:37', ''),
(254, 3, 3, 46, 'Biblo', '', '20,36,30,83,27,80,84,96,24,46', '2022-07-14 20:03:39', ''),
(255, 1, 2, 24, 'Mobile-Selling WP', '', '83,112,24,46,104,41,103', '2022-07-19 11:01:08', ''),
(256, 3, 2, 24, 'Girme - Documentation', '', '20,95,96,24,46', '2022-07-19 11:22:12', ''),
(257, 3, 3, 24, 'BhaijaanTours.com WP', '', '20,32,83,80,95,24,46,104,41,103', '2022-07-26 15:40:32', ''),
(258, 3, 2, 24, 'Hera English Medium School', '', '20,32,94,36,27,90,95,24,46', '2022-07-27 19:49:05', ''),
(259, 1, 2, 24, 'MarketSquare', '', '32,30,43,45,27,84,95,24,46,104,41,103', '2022-08-01 10:33:27', ''),
(260, 3, 3, 46, 'ISM Services WP', '', '20,83,97,95,24,46,104,41,103', '2022-08-19 18:58:02', ''),
(261, 3, 3, 46, 'Anyclic App', '', '20,36,77,83,24,46,104,41,103', '2022-08-23 20:27:39', ''),
(262, 1, 2, 24, 'BeAlly - Social Meeting App', '', '20,32,87,106,45,109,95,24,46,104,41,103', '2022-08-25 10:51:30', ''),
(263, 1, 2, 46, 'Ndashaka', '', '20,32,94,87,83,107,24,46', '2022-08-25 19:58:34', ''),
(264, 1, 2, 24, 'Matness App', '', '20,32,36,85,45,27,95,96,24,46,104,41,103', '2022-08-30 10:53:16', ''),
(265, 1, 2, 24, 'Noorisys.com Redesign', '', '20,32,95,24,46,104,103', '2022-09-07 15:29:11', ''),
(266, 1, 2, 24, 'Qysmat', '', '20,32,36,87,83,93,45,27,96,24,46,104,103', '2022-09-28 20:19:11', ''),
(268, 1, 2, 24, 'Entrybee', '', '20,32,85,83,95,24,46,104,103', '2022-10-05 12:10:55', ''),
(269, 1, 3, 46, 'Umrah project', '', '20,88,82,43,109,24,46,104,41,103', '2022-10-18 20:15:02', ''),
(270, 1, 3, 46, 'SesaPay Front Site Redesign', '', '80,24,46', '2022-10-26 18:18:36', ''),
(271, 1, 2, 24, 'UmrahMall.com', '', '20,32,88,82,43,109,24,46,104,103', '2022-11-04 11:55:14', ''),
(272, 1, 2, 24, 'Herlymedic WP', '', '20,83,24', '2022-11-04 11:59:04', ''),
(273, 1, 2, 46, 'CM clone', '', '20,36,86,71,89,92,45,80,24,46,104,41,103', '2022-11-10 17:09:02', ''),
(274, 1, 2, 46, 'Elevate hotel', '', '20,32,83,45,24,46,104,103', '2022-11-26 20:05:54', ''),
(275, 1, 2, 24, 'Housing', '', '95,96,24,46,104,103', '2022-11-30 19:36:57', ''),
(276, 1, 2, 24, 'Checktech', '', '112,24,46', '2022-12-16 15:57:39', ''),
(277, 1, 2, 24, 'IPYAD Meat', '', '45,109,95,24,46,104,103', '2022-12-27 12:34:15', '');

-- --------------------------------------------------------

--
-- Table structure for table `quarters`
--

CREATE TABLE `quarters` (
  `id` int(11) NOT NULL,
  `month_start` varchar(100) NOT NULL,
  `month_end` varchar(100) NOT NULL,
  `year` year(4) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `is_published` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` varchar(100) NOT NULL,
  `updated_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quarters`
--

INSERT INTO `quarters` (`id`, `month_start`, `month_end`, `year`, `status`, `is_published`, `created_at`, `updated_at`) VALUES
(1, 'January', 'March', 2023, 'active', '1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(50) NOT NULL,
  `users_group_id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `users_group_id`, `question`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Developer Question 1', 'active', '', ''),
(2, 2, 'Developer Question 2', 'active', '', ''),
(3, 2, 'Developer Question 3', 'active', '', ''),
(4, 2, 'Developer Question 4', 'active', '', ''),
(5, 2, 'Developer Question 5', 'active', '', ''),
(6, 13, 'TL Question 1', 'active', '', ''),
(7, 13, 'TL Question 2', 'active', '', ''),
(8, 13, 'TL Question 3', 'active', '', ''),
(9, 13, 'TL Question 4', 'active', '', ''),
(10, 13, 'TL Question 5', 'active', '', ''),
(11, 4, 'Manager Question 1', 'active', '', ''),
(12, 4, 'Manager Question 2', 'active', '', ''),
(13, 4, 'Manager Question 3', 'active', '', ''),
(14, 4, 'Manager Question 4', 'active', '', ''),
(15, 4, 'Manager Question 5', 'active', '', '');

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
(1, 93, 2, 1, 20, 80, 20, 80, 20, 80, 0, 0, 0, 'completed', '2023-04-03 11:49:16', '2023-04-03 13:11:53');

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
  `tl_comment` text NOT NULL,
  `tl_rating` enum('1','2','3','4','5') DEFAULT NULL,
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

INSERT INTO `reviews` (`id`, `report_id`, `quarter_id`, `user_id`, `users_group_id`, `question_id`, `dev_comment`, `dev_rating`, `tl_comment`, `tl_rating`, `manager_comment`, `manager_rating`, `ceo_comment`, `ceo_rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 93, 2, 1, 'Javeriya Comment 1', '4', 'TL Comment 1', '4', 'Manager Comment 1', '4', '', NULL, 'completed', '2023-04-03 11:49:16', '2023-04-03 13:11:53'),
(2, 1, 1, 93, 2, 2, 'Javeriya Comment 2', '3', 'TL Comment 2', '3', 'Manager Comment 2', '3', '', NULL, 'completed', '2023-04-03 11:49:16', '2023-04-03 13:11:53'),
(3, 1, 1, 93, 2, 3, 'Javeriya Comment 3', '3', 'TL Comment 3', '3', 'Manager Comment 3', '3', '', NULL, 'completed', '2023-04-03 11:49:16', '2023-04-03 13:11:53'),
(4, 1, 1, 93, 2, 4, 'Javeriya Comment 4', '5', 'TL Comment 4', '5', 'Manager Comment 4', '5', '', NULL, 'completed', '2023-04-03 11:49:16', '2023-04-03 13:11:53'),
(5, 1, 1, 93, 2, 5, 'Javeriya Comment 5', '5', 'TL Comment 5', '5', 'Manager Comment 5', '5', '', NULL, 'completed', '2023-04-03 11:49:16', '2023-04-03 13:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `users_group_id` int(11) DEFAULT NULL,
  `tl_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `photo` varchar(64) DEFAULT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `culture` varchar(5) DEFAULT NULL,
  `password` varchar(64) NOT NULL DEFAULT '',
  `active` tinyint(1) DEFAULT NULL,
  `skin` varchar(64) DEFAULT NULL,
  `hashed_pass` varchar(120) DEFAULT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `users_group_id`, `tl_id`, `name`, `photo`, `email`, `culture`, `password`, `active`, `skin`, `hashed_pass`, `pass`) VALUES
(20, 1, 0, 'Imran Tabani', '', 'imran@noorisys.com', 'en', '$P$E4CHmu62wqCYjJhNziMmpWIA.0oc.N/', 1, 'blue', '$2y$10$1nvoaAOLNW9xgYkX28QV/eLoP3OFUbTeIIk6ZyAQo24jG2WwKzTba', 'e10adc3949ba59abbe56e057f20f883e'),
(24, 4, 0, 'Shahid Ahmed', '469298-cto.png', 'shahid@noorisys.com', 'en', '$P$EoFpo/v8x18ZeFSFuU6ZTOp9rDk2qq/', 1, 'ColorShore', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(25, 2, 0, 'Zubair', '', 'zubair@noorisys.com', 'en', '$P$EmmeRD5TC2Z97yYFYXXcyp3qSZIzbJ0', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(26, 2, 0, 'Shahzad', '', 'shahzad@nooridev.in', 'en', '$P$Efq8AzeVKd96yMgUlyeqdZOHt6gYnA/', NULL, 'blue', '', 'e10adc3949ba59abbe56e057f20f883e'),
(27, 13, 27, 'Saim', '', 'saim@nooridev.in', 'en', '$P$Eo4nnpjO2XzN4ifjbZjEdUQt4YVJUJ/', NULL, 'red', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(28, 2, 0, 'Waseem', '', 'waseem@noorisys.com', 'en', '$P$ELx4foSPwKeQzs/J07DYppG47ocZPU1', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(29, 2, 0, 'Naveed', '382723-64440375_2268846133222217_5765596170563308559_n.jpg', 'naveed@noorisys.com', 'en', '$P$EEoErhos7PnijgEkl2.lvQWky1fecI.', NULL, 'blue', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(30, 2, 27, 'Aqueel', '180369-swift-mobile-app-development-programming-language-compute', 'aqueel@nooridev.in', 'en', '$P$EcYtHrfSwrkBGpvqnmJs0TuhGX4c9l0', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(31, 2, 0, 'Zahid', '663781-wallpapers-hd-15.jpg', 'zahid@noorisys.com', 'en', '$P$ElsZuB00dcxnfWqmDoXe5w7HO1fJ0m0', NULL, 'blue', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(32, 13, 32, 'Taukeef', '', 'taukeef@nooridev.in', 'en', '$P$Ek.ck6WROR0/nDdZB31SHg4PxWdrRO/', NULL, 'red', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(36, 2, 27, 'Altamash', '237527-profile_photo.png', 'altamash@nooridev.in', 'en', '$P$EnKnBUMNQDqazXM6wXibb5pLTSeJG30', NULL, 'dark', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(37, 2, 0, 'Zulkarnain', '', 'zulkarnain24@gmail.com', 'en', '$P$E27RRUu3kmjJ0Pmb.KGKUo7WWP77oD0', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(39, 2, 0, 'Rehan', '', 'rehan@noorisys.com', 'en', '$P$EMjEBQr8paLxqUn5EjJAIPbQe8oDVY/', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(40, 2, 0, 'Hanzala', '', 'hanzala@noorisys.com', 'en', '$P$EnJKqAcojaTQ3XOyEaXbGuH10cVJAM.', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(41, 7, 0, 'Ateeque Razvi', '', 'ateeque@nooridev.in', 'en', '$P$E8x1LwlRw.OEmQxl3NTN1nsD554GBz1', NULL, 'ColorCycle', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(42, 8, 0, 'Alok', '', 'alok@codescastle.com', 'en', '$P$EXaA0Dgu.tdp06dMsczNX9N9d56uz5/', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(43, 13, 43, 'Rizwan', '', 'rizwan@nooridev.in', 'en', '$P$EXMmyDH/I4lYPs.O6XezykeSkqkyOH/', NULL, 'grey', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(44, 2, 76, 'AbdulRehman', '', 'ara@noorisys.com', 'en', '$P$Ekmm6JaYOKy1v4CwTCLYslYtueiNM61', NULL, 'blue', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(45, 2, 32, 'Safwan', '500909-istockphoto-1300972574-170667a.jpg', 'safwan@nooridev.in', 'en', '$P$EFQjuNEUFimve2j0KyKcW7Zc9Uutmy1', NULL, 'dark', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(46, 13, 46, 'Zaid', '769083-zaid.jpg', 'pm@noorisys.com', 'en', '$P$E7kfr4GaRcXPnegLp90mye4mNpUqdk.', 1, 'blue', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(47, 2, 0, 'Maaz Ali', '', 'mazhar@noorisys.com', 'en', '$P$ESrqZmVlYjYdjOQL0h2Ga9umT7pykt.', NULL, 'red', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(48, 2, 0, 'Shoaib', '', 'shoaib@noorisys.com', 'en', '$P$E./SCeBX3wDzIt2r245sVPJUYHByxY1', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(49, 2, 0, 'Junaid', '', 'junaid@noorisys.com', 'en', '$P$EUKx5M/2KKdCyQuWWd.pfMMflNmZrJ1', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(50, 2, 0, 'Rizwan Haji', '', 'rizwan.a@noorisys.com', 'en', '$P$EqADkK4BRB/C4tBGV62CL2GT5AVbkG0', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(51, 2, 0, 'Sufiyan', '894063-IMG_20170712_095940_788.jpg', 'sufiyan@noorisys.com', 'en', '$P$EprHWfq2QByb98ES69gacccpKx8dNy/', NULL, 'blue', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(52, 5, 0, 'N.M. Barkati', '', 'editor@ezamana.com', 'en', '$P$EUvcmuHEjzz/bIalxDcm6.cdcYXLWg/', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(54, 2, 0, 'Vikrant', '', 'vikrant@noorisys.com', 'en', '$P$E2Igk8GMt1b2CjW.RVfOht.VRRN3e01', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(55, 2, 0, 'Dhanashri', '', 'dhanashri@noorisys.com', 'en', '$P$EJmjNB7VbcF66X07cd0uFju3CGxGlx.', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(56, 2, 0, 'Shubhangi', '', 'shubhangi@noorisys.com', 'en', '$P$ElNBoZVKMXOVgw8uh8wBU7txzlPkh30', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(57, 2, 0, 'Irfan', '', 'irfan@noorisys.com', 'en', '$P$EmCpyrY1LCW7V1hrbO8s7qQyLlTX1S.', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(59, 9, 0, 'Peter Jugl', '', 'oswinsteig@gmail.com', 'en', '$P$EGSRxFxWqsQa4QU/WMzc8nuqJaWZ7s.', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(62, 3, 0, 'Boby', '', 'bertrand@nkengne.com', 'en', '$P$EHMJMEP3zFZ8E/Ps1ZGMXmTMQpnezt1', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(63, 2, 0, 'Vinod', '', 'vinod.porwal@mindnerves.com', 'en', '$P$Ea1YZ1lTxDQKOjCVYX/uTu9aX4Ail7/', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(64, 2, 75, 'Moeen', '871699-code-icon.png', 'moin@nooridev.in', 'en', '$P$EqpomPYgvdkYABR7/Qs/ftSb9gd30J.', NULL, 'dark', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(65, 2, 0, 'AbdulAhad', '', 'abdulahad@noorisys.com', 'en', '$P$ESzwIzJtbyk0mvdRzepkB916V6F0W21', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(66, 2, 0, 'Ajit', '', 'ajitpawar277@gmail.com', 'en', '$P$EMioXLAEK1qxbNyXXtQq.5Wo8J/4R6.', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(67, 2, 0, 'Vikas', '', 'mnt.vikasshinde@gmail.com', 'en', '$P$EtcNqX2OUftuvmqvISc9ArJ2n64U.L1', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(68, 8, 0, 'Rohit Gupta', '', 'rohit@codescastle.com', 'en', '$P$EuO5BgXwQ057TQ1ckufoyvdvyOHtCP1', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(69, 2, 0, 'Ahmed', '', 'ahmed@noorisys.com', 'en', '$P$EKVUfO9GWsjPVQ/kLcddlg89vqhtLw.', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(70, 2, 0, 'Sham Vagga', '', 'sham.vagga@gmail.com', 'en', '$P$EqRijn9gZIgP2f59AAc633guos99EA0', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(71, 13, 71, 'Mohsin Mirza', '', 'mohsin@nooridev.in', 'en', '$P$EkjZ4qSHS5wvJ1v3IBtZKFttPJN6.V1', NULL, 'blue', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(72, 2, 0, 'Mudassir', '', 'mudassir@noorisys.com', 'en', '$P$E7KtZAdlRxMF90DloLqjkKPg4p.j3z.', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(73, 9, 0, 'Super-Client', '', 'super.client@nooridev.in', 'en', '$P$ExCvb0C9uGs1OEE7P6045/y0xpY1Gh/', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(74, 2, 0, 'Priyanka More', '', 'priyanka@noorisys.com', 'en', '$P$E92b14dUYNDYTj7sI5db693YEfC2/a1', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(75, 13, 75, 'Mohsin Pinjari', '788610-background-1.png', 'mohsin.pinjari@nooridev.in', 'en', '$P$EPYRzzFcGGZZe5aGwqbJcveKwmAAJx.', NULL, 'blue', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(76, 13, 76, 'Juned Dosani', '', 'juned.dosani@nooridev.in', 'en', '$P$E05YjqZuPyVZupj78wmbxXrsMZaGg30', NULL, 'ColorNature', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(77, 2, 75, 'Emad Jaweed', '698406-emad.jpg', 'emad@nooridev.in', 'en', '$P$Ex641ISYZh50XunlN/Z2C9MAJcQ1Xv/', NULL, 'ColorCycle', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(78, 12, 0, 'Sahel Ansari', '', 'admin@nooridev.in', 'en', '$P$E8NbM4ZnFZZ33M2GiRsm65xiiWenkI0', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(79, 2, 0, 'Momin Zaid', '', 'momin.zaid@noorisys.com', 'en', '$P$EM0rywUS2Gh3gqN9wnF43n7a8SOWh90', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(80, 2, 71, 'Shafana', '', 'shafana@nooridev.in', 'en', '$P$ESnUbMo64ykaCCj95QJ0W22BeMwgz80', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(81, 2, 0, 'Nausheen', '', 'nausheen@noorisys.com', 'en', '$P$Ezwx2nNthWamaoLQ1cOHKU2JseR/u10', NULL, 'red', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(82, 2, 0, 'Muzzammil Kachchi', '', 'muzzammil@nooridev.in', 'en', '$P$EQmGpYmAA9RZ8GZlm9O782eDSLnIc60', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(83, 2, 71, 'HifzurRahman', '', 'hifzurrahman@nooridev.in', 'en', '$P$EQ7JId/xJt8XPweoTQvkV0Hem5HfVP0', NULL, 'WinterTones', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(84, 2, 43, 'Tajammul Husain', '955375-web_developer.jpg', 'tajammul@nooridev.in', 'en', '$P$E6Df6Y1t9XNI69TPXIYxaDVpq/wuwp/', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(85, 2, 46, 'Ammar Ahmed', '750985-557586_545913898805192_280916510_n.jpg', 'ammar@nooridev.in', 'en', '$P$E7wBBwZD0SqvVy7UWj0QbwCLYilVx2/', NULL, 'ColorCycle', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(86, 2, 75, 'Kalyani', '', 'kalyani@nooridev.in', 'en', '$P$E9.bA.rVnNP9AA2Do44OusprTwPpXI.', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(87, 2, 27, 'Ansari Salman', '828411-aiden_pearce.jpg', 'salman@nooridev.in', 'en', '$P$E3mJysLYGYfZPDGL8bp5umV3A67Jkw/', NULL, 'dark', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(88, 2, 75, 'Abdul Rahman', '', 'abdulrahman@nooridev.in', 'en', '$P$Ez4iYm81akJqrTLcxB0qswGQVBdB4c0', NULL, 'dark', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(89, 2, 75, 'Nabeela', '905009-file_example_JPG_500kB.jpg', 'nabeela@nooridev.in', 'en', '$P$Ehv2QcXNGZfRxJEQpGdEne0Xl0NqOC1', NULL, 'dark', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(90, 2, 46, 'Zubiya', '', 'zubiya@nooridev.in', 'en', '$P$Euw4t/gl4Mxl/fvBkzwhCDy5WhBuDn0', NULL, 'dark', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(91, 2, 0, 'Tazkiya', '', 'tazkiya@nooridev.in', 'en', '$P$EhDG/gIkFdTLoDVwKne3yMMOTiVqEl.', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(92, 2, 0, 'Rumana', '', 'ansari.rumana@nooridev.in', 'en', '$P$Eh7b5l5CGp/UDEJX4TxeA9h6IzMSFU/', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(93, 2, 46, 'Javeriya', '408992-IMG_20210820_173640.jpg', 'javeriya@nooridev.in', 'en', '$P$E1cH2MudvwFqVMYtGteGkRFHtwT3HV1', NULL, 'dark', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(94, 2, 46, 'Aisha', '', 'aisha@nooridev.in', 'en', '$P$ECwvNN9kv8GDw2F1CkWjbcU0uxOsJn1', NULL, 'WinterTones', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(95, 8, 0, 'Momin Abrar Mustafa', '', 'abrar@fasterchecks.org', 'en', '$P$EtWos4n4ClJEwHfm16vEWMmAzh2Z8L.', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(96, 8, 0, 'Talha Ahmed', '', 'ba@noorisys.com', 'en', '$P$E98Ys6lTUVlUyt1MHGIJy8qr/KJni60', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(97, 8, 0, 'Afifa Ansari', '', 'afifa@fasterchecks.org', 'en', '$P$Ehryubxiy0ghZPNh8dGa8bMdNZK3310', NULL, 'default', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(98, 8, 0, 'Abdul Qadir', '', 'abdulqadir8983@gmail.com', 'en', '$P$EkSWKjH0KfvKt7nKfbGE3FnQjyPKB//', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(99, 3, 0, 'Muneeb', '', 'muneeb@visit.com.sa', 'en', '$P$EE9onuE194OcroEob13khjZgSyhmv9/', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(100, 11, 0, 'Irfan Koh e Toor', '', 'irfan@nooridev.in', 'en', '$P$E8THY2NcVr87TCNHCx.rYyh0mrY7ep.', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(101, 12, 0, 'Salman | HR', '', 'hr@noorisys.com', 'en', '$P$EpJ.yRwTo8xOkMWwMmbQlN.97lfyOq.', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(102, 2, 0, 'Rehan .Net', '', 'rehan@nooridev.in', 'en', '$P$Eo9Dim5VpQDQizx1qpvxw59uovbNlS.', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(103, 7, 0, 'Shahbaz Akhtar', '764067-SHAHEBAZ PIC.jpeg', 'shahebaz@nooridev.in', 'en', '$P$ECE0yAihVIHCS3nY5f9QiARRWFghhE/', NULL, 'dark', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(104, 7, 0, 'Aamir M Jameel', '', 'aamir@nooridev.in', 'en', '$P$Eoxwa10XYkRqRMMeSFTGjW9L9fErnI1', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(105, 2, 0, 'Salik', '', 'salik@nooridev.in', 'en', '$P$ExOXTuVzqUuNBqJgyL0t8Rms5LQcQQ.', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(106, 2, 76, 'Museeb', '', 'museeb@nooridev.in', 'en', '$P$E7YJXCJDqqnJrPHIODiLb1eJaBb2M4.', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(107, 2, 46, 'Tahoora Parveen', '', 'tahoora@nooridev.in', 'en', '$P$EGUx5LlbmpC9rAKyJpUdsnYd54SshP/', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(108, 2, 0, 'Abduraheman Murtuza', '', 'abdul@nooridev.in', 'en', '$P$EsKHRCWWnO4XHnsPIWY54X4kr/pfkK1', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(109, 2, 76, 'Wequar', '769432-image.JPEG', 'wequar@nooridev.in', 'en', '$P$E/ZRTGzCA735hifNTrC7FhY63K2k/z0', NULL, 'ColorShore', NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(110, 8, 0, 'Mustafa Saeed', '', 'mustafa@nooridev.in', 'en', '$P$EA61cmtBGrHHrFdriL.JT5xtncUHEG0', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(111, 3, 0, 'Codescastle Client', '', 'shahid@codescastle.com', 'en', '$P$E52BkU7B8wRLvMyJL7zEjM1hd3BaRG.', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(112, 2, 46, 'Salman CMS', '', 'salman.cms@nooridev.in', 'en', '$P$EGgS5B7Xt7TnG62rrLA1ehRx1IIHnO/', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(113, 2, 75, 'Mubarak Sani', '', 'mubarak.sani@nooridev.in', 'en', '$P$EfPplv4EL8AACeZn5MzUTpxTt/GXXI.', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(114, 2, 0, 'Zaid Haider', '', 'zaid.haider@nooridev.in', 'en', '$P$ENcoS1zaX7e6kbsqt6K/c825.DEYdE/', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e'),
(115, 2, 27, 'Zubiya Naaz', '', 'zubiya.naaz@nooridev.in', 'en', '$P$EFlYKdRZuSUAPsR0MeqLXa83SgSg7x.', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `user_leave`
--

CREATE TABLE `user_leave` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `leave_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:Requested,1:Accepted,2:Rejected',
  `leave_date` varchar(255) NOT NULL,
  `from_date` varchar(255) NOT NULL,
  `to_date` varchar(255) NOT NULL,
  `leave_days` varchar(225) NOT NULL,
  `half_day` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: full-day, 1: half-day',
  `first_half` tinyint(4) DEFAULT 0 COMMENT '1: first-half, 2: second-half',
  `leave_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: Normal; 1: Flash',
  `leave_reason` varchar(255) NOT NULL,
  `leave_accepted_reason` varchar(255) NOT NULL,
  `leave_rejected_reason` varchar(255) NOT NULL,
  `action_by` varchar(255) NOT NULL,
  `created_datetime` varchar(255) NOT NULL,
  `str_leave_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_leave`
--

INSERT INTO `user_leave` (`id`, `user_id`, `manager_id`, `leave_status`, `leave_date`, `from_date`, `to_date`, `leave_days`, `half_day`, `first_half`, `leave_type`, `leave_reason`, `leave_accepted_reason`, `leave_rejected_reason`, `action_by`, `created_datetime`, `str_leave_date`) VALUES
(1, 30, 0, 1, '2022-05-06', '05/06/2022', '05/06/2022', '1', 0, 0, 0, 'Assalamualaikum,\r\n\r\n   I need one day leave on Friday, 06 May 2022, because I will be out of\r\nstation.\r\nIt\'s an adjustment leave but as I don\'t have a workload then, please\r\napprove my leave.\r\n\r\nThanks.', 'Leave approved.', '', 'Zaid', '02-05-2022 05:03:49pm', '1651775400-1651775400'),
(2, 27, 0, 1, '2022-05-06', '05/06/2022', '05/06/2022', '1', 0, 0, 0, 'Reason for Leave:\r\n\r\nI request one day leave to travel out of the station. We have planned a\r\nfamily trip after a long time, and I am looking for your kind approval.\r\n\r\nWaiting for a positive response from you.\r\n\r\nThank you', 'Leave approved.', '', 'Zaid', '02-05-2022 05:09:59pm', '1651775400-1651775400'),
(3, 83, 0, 1, '2022-05-06', '05/06/2022', '05/06/2022', '1', 0, 0, 0, 'I will be not available in the town.', 'Leave approved.', '', 'Zaid', '02-05-2022 05:19:53pm', '1651775400-1651775400'),
(5, 87, 0, 2, '2022-05-06', '05/06/2022', '05/06/2022', '1', 0, 0, 0, 'I will go to Mumbai', 'Approved.', 'Rejected.', 'Zaid', '02-05-2022 05:37:33pm', '1651775400-1651775400'),
(7, 96, 0, 1, '2022-05-06 To 2022-05-07', '05/06/2022', '05/07/2022', '1', 0, 0, 0, 'Please grant me the leave for 2 days, Friday and Saturday, for doing some pending works of my home.\r\nEven though I am selecting 2 dates above(06/05/22 and 07/05/22) it is showing just 1 leave days. Please look into this also.', 'Approved', '', 'Shahid Ahmed', '06-05-2022 09:24:05am', '1651775400-1651861800'),
(8, 85, 0, 1, '2022-05-06', '05/06/2022', '05/06/2022', '1', 0, 0, 0, 'My uncle (bhoppa) has passed away so in dhule, we are going to\r\ngoing dhule so today I can\'t come to office.\r\n', 'Approved.', '', 'Zaid', '06-05-2022 11:01:26am', '1651775400-1651775400'),
(14, 43, 0, 1, '2022-05-31', '05/31/2022', '05/31/2022', '1', 0, 0, 0, 'Dear Sir,\r\n\r\n         I would like to inform you that my brother’s marriage is going to be held on 31st May 2022.\r\n\r\n      I am writing this letter as a request to grant me leave on 31st May 2022.\r\n\r\n      Waiting for a positive response from you.', 'Approved.', '', 'Zaid', '06-05-2022 03:47:55pm', '1653935400-1653935400'),
(15, 86, 0, 1, '2022-05-09', '05/09/2022', '05/09/2022', '1', 0, 0, 0, 'Medical Emergency', 'Approved.', '', 'Zaid', '09-05-2022 10:27:51am', '1652034600-1652034600'),
(17, 41, 0, 1, '2022-05-10', '05/10/2022', '05/10/2022', '1', 0, 0, 0, 'I am going to Mumbai for my father\'s checkup.,.,', 'Approved and you must inform us before a day if you also need 11th\'s leave', '', 'Zaid', '09-05-2022 12:27:56pm', '1652121000-1652121000'),
(18, 46, 0, 1, '2022-05-09', '05/09/2022', '05/09/2022', '0.5', 1, 2, 0, 'To attend nikah I need half-day, Approved by Imran sir already.', 'Approved\r\n', '', 'Shahid Ahmed', '09-05-2022 02:19:35pm', '1652034600-1652034600'),
(19, 87, 0, 1, '2022-05-11', '05/11/2022', '05/11/2022', '1', 0, 0, 0, ' My Grandmother passed away. So please give me one day leave', 'Approved', '', 'Shahid Ahmed', '11-05-2022 03:17:09am', '1652207400-1652207400'),
(20, 88, 0, 1, '2022-05-26 To 2022-06-03', '05/26/2022', '06/03/2022', '8', 0, 0, 0, 'I want to take leave  from 26/05/2022 to 03/06/2022 for my marriage ceremony, which is set on 28th May.', 'Congratulations & leave approved.', '', 'Zaid', '11-05-2022 04:03:39pm', '1653503400-1654194600'),
(21, 41, 0, 1, '2022-05-11', '05/11/2022', '05/11/2022', '1', 0, 0, 0, 'Medical check up for father in mumbai', 'Approved.', '', 'Zaid', '11-05-2022 04:28:18pm', '1652207400-1652207400'),
(24, 85, 0, 2, '2022-05-13 To 2022-05-14', '05/13/2022', '05/14/2022', '2', 0, 0, 0, 'leave for college assignment submission and oral exam for 2 days [13/05/2022] [14/05/2022] so please give me permission.', 'Approved', 'Canceled.', 'Zaid', '11-05-2022 06:48:05pm', '1652380200-1652466600'),
(26, 102, 0, 1, '2022-05-18 To 2022-05-20', '05/18/2022', '05/20/2022', '3', 0, 0, 0, 'Because of my  Wedding.', 'congratulations & approved.', '', 'Zaid', '11-05-2022 06:56:43pm', '1652812200-1652985000'),
(27, 85, 0, 1, '2022-05-14', '05/14/2022', '05/14/2022', '1', 0, 0, 0, 'leave for college assignment submission and oral\r\nexam  for 1 day [14/05/2022]\r\n  so please give me permission.', 'Approved.', '', 'Zaid', '13-05-2022 11:13:01am', '1652466600-1652466600'),
(28, 94, 0, 1, '2022-05-14', '05/14/2022', '05/14/2022', '1', 0, 0, 0, 'Respected sir, \r\n                          Today I want medical leave. I am suffering from cold, headache. \r\n                         \r\n                                                                                                                       ', 'approved.', '', 'Zaid', '14-05-2022 08:07:31am', '1652466600-1652466600'),
(29, 92, 0, 1, '2022-05-14', '05/14/2022', '05/14/2022', '1', 0, 0, 0, 'Food Poisoning ', 'approved.', '', 'Zaid', '14-05-2022 09:24:18am', '1652466600-1652466600'),
(30, 46, 0, 1, '2022-05-14', '05/14/2022', '05/14/2022', '0.5', 1, 2, 0, 'Emergency half-day leave.', 'approved', '', 'Shahid Ahmed', '14-05-2022 07:00:55pm', '1652466600-1652466600'),
(31, 85, 0, 1, '2022-05-16', '05/16/2022', '05/16/2022', '1', 0, 0, 0, ' leave for collage practical\r\nexam  for 1 day  [16/05/2022]\r\n  so please give me permission.', 'approved.', '', 'Zaid', '16-05-2022 03:25:52am', '1652639400-1652639400'),
(32, 80, 0, 1, '2022-05-23 To 2022-05-24', '05/23/2022', '05/24/2022', '2', 0, 0, 0, 'Out of station', 'Approved.', '', 'Zaid', '17-05-2022 09:24:36am', '1653244200-1653330600'),
(33, 97, 0, 1, '2022-05-23', '05/23/2022', '05/23/2022', '1', 0, 0, 0, 'I\'m requesting you to please grant me 1 day of leave on 23rd May 2022 as I have to attend my cousin\'s wedding ceremony.\r\n\r\nThanking You,\r\nAfifa Ansari', 'Approved', '', 'Shahid Ahmed', '18-05-2022 12:04:44pm', '1653244200-1653244200'),
(34, 82, 0, 1, '2022-05-20', '05/20/2022', '05/20/2022', '1', 0, 0, 0, 'I want to let you know my exams are coming on 21/5/2022. As I already told you that I am doing M.Tech in Computer Engg. For the preparation of exams, I need to leave work  on 20/5/2022\r\n\r\nAs soon as the exam will over, I will try to be regular at the offi', 'Approved.', '', 'Zaid', '18-05-2022 07:38:48pm', '1652985000-1652985000'),
(35, 84, 0, 1, '2022-05-19', '05/19/2022', '05/19/2022', '1', 0, 0, 0, 'Medical leave, reason is my son is suffering from smallpox and myself suffering loose motion.', 'Approved.', '', 'Zaid', '19-05-2022 11:04:04am', '1652898600-1652898600'),
(36, 92, 0, 1, '2022-05-19 To 2022-05-20', '05/19/2022', '05/20/2022', '2', 0, 0, 0, 'For some emergency', 'Approved.', '', 'Zaid', '19-05-2022 12:55:42pm', '1652898600-1652985000'),
(37, 77, 0, 1, '2022-05-24', '05/24/2022', '05/24/2022', '0.5', 1, 2, 0, 'on 24 May 2022, My friend\'s wedding so I want half day leave.', 'Approved', '', 'Zaid', '23-05-2022 11:08:17am', '1653330600-1653330600'),
(38, 85, 0, 1, '2022-05-24 To 2022-05-25', '05/24/2022', '05/25/2022', '2', 0, 0, 0, 'leave for college Project stage - II submission and Oral exam for 1 day [24/05/2022]   [25/05/2022] so please give me permission.', 'Approved', '', 'Zaid', '23-05-2022 12:24:53pm', '1653330600-1653417000'),
(39, 24, 0, 1, '2022-05-28', '05/28/2022', '05/28/2022', '0.5', 1, 2, 0, 'Personal', 'Approve', '', 'Zaid', '24-05-2022 06:33:25pm', '1653676200-1653676200'),
(40, 94, 0, 1, '2022-05-30', '05/30/2022', '05/30/2022', '1', 0, 0, 0, 'Going out of the station', 'Approved', '', 'Shahid Ahmed', '26-05-2022 09:43:44am', '1653849000-1653849000'),
(41, 82, 0, 1, '2022-05-26 To 2022-05-27', '05/26/2022', '05/27/2022', '2', 0, 0, 0, 'My exam was on 28 May but unfortunately, I received a message from college that the exam is residual on 26 May  So I request  you to allow my leave ', 'Approved', '', 'Shahid Ahmed', '26-05-2022 10:36:33am', '1653503400-1653589800'),
(42, 93, 0, 1, '2022-05-28', '05/28/2022', '05/28/2022', '1', 0, 0, 0, 'Brother\'s Wedding', 'Approved', '', 'Shahid Ahmed', '27-05-2022 10:17:13am', '1653676200-1653676200'),
(43, 46, 0, 1, '2022-05-28', '05/28/2022', '05/28/2022', '1', 0, 0, 0, 'Personal - Going out of town', 'Approved', '', 'Shahid Ahmed', '27-05-2022 08:12:52pm', '1653676200-1653676200'),
(44, 82, 0, 1, '2022-05-28', '05/28/2022', '05/28/2022', '1', 0, 0, 0, 'Sir,\r\nI have to go to Mumbai for some office work, As per Imran Sir\'s order.\r\n                                                                       \r\n                                                                                                        ', 'Approved', '', 'Zaid', '27-05-2022 08:13:53pm', '1653676200-1653676200'),
(45, 85, 0, 1, '2022-05-28', '05/28/2022', '05/28/2022', '1', 0, 0, 1, 'home construction - slab', 'Informed at same day', '', 'Zaid', '30-05-2022 11:52:22am', '1653676200-1653676200'),
(46, 89, 0, 1, '2022-05-31', '05/31/2022', '05/31/2022', '0.5', 1, 2, 0, 'Personal Reason', 'Approved', '', 'Shahid Ahmed', '31-05-2022 09:14:50am', '1653935400-1653935400'),
(47, 94, 0, 1, '2022-06-01', '06/01/2022', '06/01/2022', '1', 0, 0, 0, 'For family function', 'Approved', '', 'Zaid', '31-05-2022 11:52:23am', '1654021800-1654021800'),
(48, 85, 0, 2, '2022-06-07', '06/07/2022', '06/07/2022', '0.5', 1, 2, 0, 'There is a family function at my house, so I want to take half day leave on that day[07/06/2022], so I request you accept my half-day leave.', 'Approved', 'visited Pune with CEO', 'Shahid Ahmed', '31-05-2022 06:53:34pm', '1654540200-1654540200'),
(49, 89, 0, 1, '2022-06-02', '06/02/2022', '06/02/2022', '1', 0, 0, 0, 'Brother\'s Wedding ', 'Approved. But next time you need to be informed us before 3/4 days.', '', 'Zaid', '01-06-2022 10:56:19am', '1654108200-1654108200'),
(50, 92, 0, 2, '2022-06-06 To 2022-06-09', '06/06/2022', '06/09/2022', '2', 1, 2, 0, 'College Practical Exams ', 'Approved', 'Dates are changed.', 'Zaid', '02-06-2022 12:27:01pm', '1654453800-1654713000'),
(52, 82, 0, 1, '2022-06-06', '06/06/2022', '06/06/2022', '1', 0, 0, 0, 'I  want to inform you that the wedding ceremony has been decided of my brother and the wedding has been scheduled on (Date) in this present month. I request you to grant me one day of leaves  on 6 June', 'Approved', '', 'Shahid Ahmed', '03-06-2022 06:27:25pm', '1654453800-1654453800'),
(54, 92, 0, 1, '2022-06-06', '06/06/2022', '06/06/2022', '1', 0, 0, 0, 'Practical Exam', 'Approved', '', 'Shahid Ahmed', '06-06-2022 02:18:47pm', '1654453800-1654453800'),
(55, 92, 0, 1, '2022-06-07 To 2022-06-09', '06/07/2022', '06/09/2022', '1.5', 1, 1, 0, 'Practical Exams', 'Approved', '', 'Shahid Ahmed', '06-06-2022 02:19:16pm', '1654540200-1654713000'),
(56, 27, 0, 1, '2022-06-10 To 2022-06-11', '06/10/2022', '06/11/2022', '2', 0, 0, 0, 'Dear PM,\r\n\r\nName = Mohammed Saim\r\nDesignation = Sr. Mobile App Developer\r\n\r\nI request two days leave to travel Ajmer Shareef. We have planned a family trip after a long time, and I am looking for your kind approval.\r\n\r\nWaiting for a positive response from', 'As the workload is high, we are approving your leave with the condition to be available on Monday at office time. Late entry or half-day will be considered as Flash.', '', 'Shahid Ahmed', '06-06-2022 07:29:02pm', '1654799400-1654885800'),
(57, 83, 0, 1, '2022-07-18 To 2022-07-19', '07/18/2022', '07/19/2022', '2', 0, 0, 0, 'I\'ll be out of town with family and friends.', 'Approved', '', 'Zaid', '07-06-2022 05:29:41pm', '1658082600-1658169000'),
(58, 27, 0, 1, '2022-06-09', '06/09/2022', '06/09/2022', '0.5', 1, 2, 0, 'Travel time schedule changed So that\'s why I take half day leave. \r\nSorry for the inconvenience\r\nThanks', 'Approved', '', 'Zaid', '08-06-2022 06:42:02pm', '1654713000-1654713000'),
(59, 92, 0, 1, '2022-06-09', '06/09/2022', '06/09/2022', '0.5', 1, 2, 0, 'practical Exam Rescheduled', 'Approved', '', 'Zaid', '09-06-2022 12:08:31pm', '1654713000-1654713000'),
(60, 85, 0, 1, '2022-06-10', '06/10/2022', '06/10/2022', '0.5', 1, 2, 0, 'There is a family function at my house, so I want to take half-day leave on that day[09/06/2022], so I request you accept my half-day leave.\r\npostponed on Friday. []', 'Approved', '', 'Zaid', '09-06-2022 12:21:16pm', '1654799400-1654799400'),
(61, 92, 0, 2, '2022-06-09', '06/09/2022', '06/09/2022', '0.5', 1, 1, 1, 'not present', '', '...', 'Zaid', '09-06-2022 01:13:20pm', '1654713000-1654713000'),
(62, 109, 0, 1, '2022-06-09', '06/09/2022', '06/09/2022', '0.5', 1, 2, 0, 'Brother\'s nikah in ijtema', 'Approved', '', 'Zaid', '09-06-2022 05:07:56pm', '1654713000-1654713000'),
(63, 32, 0, 1, '2022-06-11', '06/11/2022', '06/11/2022', '0.5', 1, 2, 0, 'I going out of town for some personal reasons...', 'Approved', '', 'Zaid', '10-06-2022 12:32:54pm', '1654885800-1654885800'),
(64, 27, 0, 2, '2022-06-13', '06/13/2022', '06/13/2022', '1', 0, 0, 0, 'Due to Bharat Band we  extend one  more days for leave \r\nPlease accept it', '', 'No Bharat Band.\r\nWe already informed you, that if you cannot come on Monday it will be Flash leave.\r\n@Salman - Mark it as Flash', 'Shahid Ahmed', '11-06-2022 02:01:49pm', '1655058600-1655058600'),
(65, 88, 0, 1, '2022-06-14', '06/14/2022', '06/14/2022', '1', 0, 0, 0, 'my grand-father is in very serious condition I need emergency leave', 'Approved', '', 'Zaid', '14-06-2022 11:11:29am', '1655145000-1655145000'),
(66, 77, 0, 1, '2022-06-17', '06/17/2022', '06/17/2022', '1', 0, 0, 0, 'I\'m going out of town for my personal work.', 'Approved', '', 'Zaid', '14-06-2022 11:45:45am', '1655404200-1655404200'),
(67, 101, 0, 1, '2022-06-11 To 2022-06-13', '06/11/2022', '06/13/2022', '2', 0, 0, 0, 'out of station for the hospital ', 'Approved by CEO', '', 'Shahid Ahmed', '14-06-2022 01:54:38pm', '1654885800-1655058600'),
(68, 85, 0, 1, '2022-06-20', '06/20/2022', '06/20/2022', '1', 0, 0, 0, 'College final year paper [ Machine Learning ]', 'Approved', '', 'Shahid Ahmed', '14-06-2022 04:26:58pm', '1655663400-1655663400'),
(69, 85, 0, 1, '2022-06-23', '06/23/2022', '06/23/2022', '1', 0, 0, 0, 'College final year paper [ Information and Cyber Security ]', 'Approved', '', 'Shahid Ahmed', '14-06-2022 04:28:30pm', '1655922600-1655922600'),
(70, 85, 0, 1, '2022-06-27', '06/27/2022', '06/27/2022', '1', 0, 0, 0, 'College final year paper [ Elective - III ( Embedded and Real Time Systems ) ]', 'Approved', '', 'Shahid Ahmed', '14-06-2022 04:29:42pm', '1656268200-1656268200'),
(71, 85, 0, 1, '2022-06-30', '06/30/2022', '06/30/2022', '1', 0, 0, 0, 'College final year paper [ Elective - IV - Cloud Computing ]', 'Approved', '', 'Shahid Ahmed', '14-06-2022 04:30:55pm', '1656527400-1656527400'),
(72, 92, 0, 1, '2022-06-15', '06/15/2022', '06/15/2022', '0.5', 1, 1, 0, 'demise of nearest relative', '', '', 'Zaid', '15-06-2022 09:17:48am', '1655231400-1655231400'),
(73, 64, 0, 1, '2022-06-27', '06/27/2022', '06/27/2022', '1', 0, 0, 0, 'HI Team,\r\nMy niece is getting married that\'s why I am taking a leave.', 'Approved', '', 'Shahid Ahmed', '15-06-2022 11:38:12am', '1656268200-1656268200'),
(74, 85, 0, 1, '2022-06-21 To 2022-06-22', '06/21/2022', '06/22/2022', '2', 0, 0, 0, 'College final year paper', 'Approved', '', 'Zaid', '17-06-2022 12:28:32pm', '1655749800-1655836200'),
(75, 85, 0, 1, '2022-06-24 To 2022-06-25', '06/24/2022', '06/25/2022', '2', 0, 0, 0, 'College final year paper', 'Approved', '', 'Zaid', '17-06-2022 12:28:51pm', '1656009000-1656095400'),
(76, 85, 0, 1, '2022-06-28 To 2022-06-29', '06/28/2022', '06/29/2022', '2', 0, 0, 0, 'College final year paper', 'Approved', '', 'Zaid', '17-06-2022 12:29:21pm', '1656354600-1656441000'),
(77, 46, 0, 1, '2022-06-17', '06/17/2022', '06/17/2022', '0.5', 1, 1, 0, 'Medical half day', 'Approved', '', 'Shahid Ahmed', '17-06-2022 03:14:38pm', '1655404200-1655404200'),
(78, 24, 0, 1, '2022-06-17', '06/17/2022', '06/17/2022', '0.5', 1, 1, 0, 'Medical emergency at home', 'Approved', '', 'Zaid', '17-06-2022 03:15:30pm', '1655404200-1655404200'),
(79, 76, 0, 1, '2022-06-20', '06/20/2022', '06/20/2022', '1', 0, 0, 0, '\r\ni am sick so I will not be able to come to office today.\r\nI am not feeling well', 'Approved. Get well soon', '', 'Zaid', '19-06-2022 06:34:07am', '1655663400-1655663400'),
(80, 92, 0, 1, '2022-06-22 To 2022-06-25', '06/22/2022', '06/25/2022', '4', 0, 0, 0, 'Collage Offline Internal Exams', 'Approved', '', 'Shahid Ahmed', '20-06-2022 04:26:47pm', '1655836200-1656095400'),
(81, 24, 0, 1, '2022-06-25', '06/25/2022', '06/25/2022', '0.5', 1, 1, 0, 'Personal', 'Approved', '', 'Zaid', '24-06-2022 11:30:57am', '1656095400-1656095400'),
(83, 95, 0, 2, '2022-06-25', '06/25/2022', '06/25/2022', '0.5', 1, 2, 0, 'Some personal household stuff in the second half. \r\nKindly approve the request for half day.', '', 'Asked to adjust in lunch break', 'Zaid', '24-06-2022 12:41:58pm', '1656095400-1656095400'),
(84, 92, 0, 1, '2022-06-27 To 2022-06-28', '06/27/2022', '06/28/2022', '2', 0, 0, 0, 'Collage Offline Internal Exams Rescheduled', 'Approved', '', 'Shahid Ahmed', '25-06-2022 09:23:24am', '1656268200-1656354600'),
(86, 92, 0, 2, '2022-06-27', '06/27/2022', '06/27/2022', '1', 0, 0, 1, 'Flash Leave', 'Flash leave consider. ', 'by mistake\r\n', 'Zaid', '27-06-2022 01:37:26pm', '1656268200-1656268200'),
(87, 101, 0, 1, '2022-06-28', '06/28/2022', '06/28/2022', '0.5', 1, 1, 0, 'Respected sir today I am leaving the first half due to fever and headache 28/06/2022,\r\nSo please consider my half-day leave.', 'Approved', '', 'Shahid Ahmed', '28-06-2022 02:45:23pm', '1656354600-1656354600'),
(88, 94, 0, 1, '2022-06-29', '06/29/2022', '06/29/2022', '1', 0, 0, 0, 'Going to industrial visit from college', 'Approved', '', 'Shahid Ahmed', '28-06-2022 04:20:50pm', '1656441000-1656441000'),
(89, 107, 0, 1, '2022-06-29', '06/29/2022', '06/29/2022', '1', 0, 0, 0, 'Going to industrial visit from college', 'Approved', '', 'Zaid', '28-06-2022 05:58:41pm', '1656441000-1656441000'),
(90, 46, 0, 1, '2022-06-30', '06/30/2022', '06/30/2022', '0.5', 1, 2, 0, 'Home Shifting.', 'approved, attend welzo call at 3.30 pm', '', 'Shahid Ahmed', '29-06-2022 07:32:10pm', '1656527400-1656527400'),
(91, 92, 0, 2, '2022-07-01 To 2022-07-30', '07/01/2022', '07/30/2022', '24', 0, 0, 0, 'College final exams ', '', 'Rejected\r\nMeet CEO with HR to get approval on this.', 'Shahid Ahmed', '30-06-2022 09:05:48am', '1656613800-1659119400'),
(92, 86, 0, 1, '2022-07-08 To 2022-07-09', '07/08/2022', '07/09/2022', '2', 0, 0, 0, 'out of station ', 'Approved', '', 'Zaid', '30-06-2022 10:13:36am', '1657218600-1657305000'),
(93, 95, 0, 1, '2022-07-06', '07/06/2022', '07/06/2022', '1', 0, 0, 0, 'I have to finish some repairing work at home on coming Wednesday.', 'Approved', '', 'Zaid', '01-07-2022 03:03:21pm', '1657045800-1657045800'),
(94, 24, 0, 1, '2022-07-04 To 2022-07-06', '07/04/2022', '07/06/2022', '3', 0, 0, 0, 'Home shifting will be available on-call or in any emergency.', 'Approved', '', 'Zaid', '01-07-2022 07:52:25pm', '1656873000-1657045800'),
(95, 89, 0, 1, '2022-07-04', '07/04/2022', '07/04/2022', '1', 0, 0, 0, ' Medical leave', 'Approved', '', 'Zaid', '04-07-2022 08:32:41am', '1656873000-1656873000'),
(96, 71, 0, 1, '2022-07-04', '07/04/2022', '07/04/2022', '1', 0, 0, 0, 'Today I am on a medical leave', 'Approved', '', 'Zaid', '04-07-2022 09:08:10am', '1656873000-1656873000'),
(97, 90, 0, 1, '2022-07-09', '07/09/2022', '07/09/2022', '1', 0, 0, 0, 'Day Of Arfah', 'Approved', '', 'Zaid', '04-07-2022 09:15:48am', '1657305000-1657305000'),
(98, 78, 0, 2, '2022-07-13', '07/13/2022', '07/13/2022', '1', 0, 0, 0, 'Name = Mohammad Sahel Mohammad Ibrahim\r\nEMP Code= NS021\r\nDesignation= Office Admin\r\n Date =  13/07/2022\r\nReason for Leave:  one day Leave to enjoy Holiday\r\n\r\n\r\n\r\nDear Sir,\r\nwriting for the  Leave Application for one day to go on tour with my friends. I ne', '', 'Imran Tabani', 'Zaid', '04-07-2022 05:45:52pm', '1657650600-1657650600'),
(99, 96, 0, 1, '2022-07-15', '07/15/2022', '07/15/2022', '1', 0, 0, 0, 'Please grant me the leave for Friday, for a function at my home.', 'Imran Tabani', '', 'Zaid', '04-07-2022 05:51:32pm', '1657823400-1657823400'),
(100, 41, 0, 1, '2022-07-04', '07/04/2022', '07/04/2022', '1', 0, 0, 0, 'Grand mother passed away \r\n\r\n', 'Imran Tabani', '', 'Zaid', '04-07-2022 06:45:22pm', '1656873000-1656873000'),
(101, 41, 0, 1, '2022-07-04', '07/04/2022', '07/04/2022', '0.5', 1, 2, 0, 'Grand mother passed away ', 'Imran Tabani', '', 'Zaid', '04-07-2022 06:46:16pm', '1656873000-1656873000'),
(102, 71, 0, 1, '2022-07-05', '07/05/2022', '07/05/2022', '1', 0, 0, 0, 'Today I am on medical leave due to typhoid and kauwal diseases ', 'Imran Tabani', '', 'Zaid', '05-07-2022 10:42:25am', '1656959400-1656959400'),
(103, 86, 0, 1, '2022-07-05', '07/05/2022', '07/05/2022', '0.5', 1, 2, 0, 'Feeling Not well', 'Imran Tabani', '', 'Zaid', '05-07-2022 01:08:20pm', '1656959400-1656959400'),
(104, 41, 0, 1, '2022-07-07 To 2022-07-09', '07/07/2022', '07/09/2022', '3', 0, 0, 0, 'Going out of state......', 'approved', '', 'Shahid Ahmed', '06-07-2022 12:25:11pm', '1657132200-1657305000'),
(105, 41, 0, 1, '2022-07-13 To 2022-07-15', '07/13/2022', '07/15/2022', '3', 0, 0, 0, 'going out of state........', 'approved', '', 'Shahid Ahmed', '06-07-2022 06:09:32pm', '1657650600-1657823400'),
(106, 64, 0, 1, '2022-07-13 To 2022-07-30', '07/13/2022', '07/30/2022', '15', 0, 0, 0, 'Drear Team, \r\nI am glad to inform you that my marriage has been fixed for 17 July 2022. Please grant me leave for 13/07/2022 to 30/07/2022. I hope to receive a positive response from you soon.\r\nThank you.', 'Imran', '', 'Zaid', '06-07-2022 07:22:53pm', '1657650600-1659119400'),
(107, 71, 0, 1, '2022-07-09', '07/09/2022', '07/09/2022', '0.5', 1, 2, 0, 'As you know, I was suffered from typhoid and jaundice diseases for the last few days. \r\nSo that\'s why today I feel some weakness and the infections of that disease.\r\nSo I am requesting medical leave for the second half', 'Approved', '', 'Zaid', '09-07-2022 11:38:31am', '1657305000-1657305000'),
(108, 36, 0, 1, '2022-07-13 To 2022-07-14', '07/13/2022', '07/14/2022', '2', 0, 0, 0, 'Eid Azha Leave', 'Approved', '', 'Zaid', '09-07-2022 07:49:50pm', '1657650600-1657737000'),
(109, 101, 0, 1, '2022-07-13', '07/13/2022', '07/13/2022', '0.5', 1, 2, 0, 'Dear Sir,\r\n I am applying for a second half-day leave for a Family function.\r\n', 'Approved', '', 'Zaid', '13-07-2022 11:34:01am', '1657650600-1657650600'),
(110, 82, 0, 1, '2022-07-14', '07/14/2022', '07/14/2022', '1', 0, 0, 0, 'For Exam Purpose', 'Approved', '', 'Zaid', '13-07-2022 04:46:04pm', '1657737000-1657737000'),
(111, 90, 0, 1, '2022-07-14', '07/14/2022', '07/14/2022', '1', 0, 0, 0, 'Urgently going out of town', 'Approved', '', 'Zaid', '14-07-2022 08:59:13am', '1657737000-1657737000'),
(112, 82, 0, 1, '2022-07-15', '07/15/2022', '07/15/2022', '1', 0, 0, 0, 'For exam purpose', 'Approved', '', 'Zaid', '15-07-2022 10:37:17am', '1657823400-1657823400'),
(113, 43, 0, 1, '2022-07-22', '07/22/2022', '07/22/2022', '0.5', 1, 2, 0, 'Brother\'s Nikah', 'Approved', '', 'Zaid', '18-07-2022 11:05:33am', '1658428200-1658428200'),
(114, 80, 0, 1, '2022-07-19', '07/19/2022', '07/19/2022', '0.5', 1, 2, 0, 'Some personal issue', 'Approved', '', 'Zaid', '18-07-2022 12:37:42pm', '1658169000-1658169000'),
(115, 90, 0, 1, '2022-07-20', '07/20/2022', '07/20/2022', '1', 0, 0, 0, 'My Chacha Passed away', 'Approved', '', 'Zaid', '20-07-2022 09:55:10am', '1658255400-1658255400'),
(116, 94, 0, 1, '2022-07-20', '07/20/2022', '07/20/2022', '1', 0, 0, 0, 'Medical Emergency', 'Approved', '', 'Zaid', '20-07-2022 11:51:27am', '1658255400-1658255400'),
(119, 46, 0, 1, '2022-08-01 To 2022-08-05', '08/01/2022', '08/05/2022', '5', 0, 0, 0, 'Post wedding leave', 'Approved', '', 'Shahid Ahmed', '20-07-2022 08:19:06pm', '1659292200-1659637800'),
(120, 94, 0, 1, '2022-07-21', '07/21/2022', '07/21/2022', '1', 0, 0, 0, 'Out of town', 'Approved', '', 'Zaid', '20-07-2022 11:30:12pm', '1658341800-1658341800'),
(122, 103, 0, 1, '2022-07-22', '07/22/2022', '07/22/2022', '1', 0, 0, 0, 'I will not be able to come to work tomorrow (07/22/2022) because of some personal reasons I will be out of town tomorrow. there is not much load on testing department these days and In my behalf amir malik will be available for testing please grant my req', 'Approved', '', 'Zaid', '21-07-2022 12:03:14pm', '1658428200-1658428200'),
(123, 43, 0, 1, '2022-07-26', '07/26/2022', '07/26/2022', '1', 0, 0, 0, 'going to Mumbai due to Brother\'s return to Hajj.', 'Approved', '', 'Zaid', '22-07-2022 09:31:53am', '1658773800-1658773800'),
(124, 76, 0, 1, '2022-07-22', '07/22/2022', '07/22/2022', '0.5', 1, 2, 0, 'I have some personal issues. so I need to go urgently.', 'Approved', '', 'Zaid', '22-07-2022 12:46:56pm', '1658428200-1658428200'),
(125, 94, 0, 1, '2022-07-23 To 2022-07-25', '07/23/2022', '07/25/2022', '2', 0, 0, 0, 'Going out of town', 'Approved', '', 'Zaid', '22-07-2022 05:21:21pm', '1658514600-1658687400'),
(126, 86, 0, 1, '2022-07-25 To 2022-07-26', '07/25/2022', '07/26/2022', '2', 0, 0, 0, 'Due to some medical emergency I  need to go out of station.', 'Approved', '', 'Zaid', '24-07-2022 09:04:06pm', '1658687400-1658773800'),
(127, 108, 0, 1, '2022-07-30', '07/30/2022', '07/30/2022', '0.5', 1, 2, 0, 'for going to a wedding ceremony ', 'Approved', '', 'Zaid', '25-07-2022 11:58:29am', '1659119400-1659119400'),
(128, 46, 0, 1, '2022-07-23', '07/23/2022', '07/23/2022', '1', 0, 0, 0, 'Urgent Medical leave', 'approved', '', 'Shahid Ahmed', '25-07-2022 12:14:36pm', '1658514600-1658514600'),
(129, 46, 0, 1, '2022-07-25', '07/25/2022', '07/25/2022', '0.5', 1, 2, 0, 'wedding', 'Approved', '', 'Shahid Ahmed', '25-07-2022 01:29:11pm', '1658687400-1658687400'),
(130, 46, 0, 1, '2022-07-26 To 2022-07-30', '07/26/2022', '07/30/2022', '5', 0, 0, 0, 'Pre-wedding leave', 'Approved', '', 'Shahid Ahmed', '25-07-2022 01:29:45pm', '1658773800-1659119400'),
(131, 105, 0, 2, '2022-07-30', '07/30/2022', '07/30/2022', '0.5', 1, 2, 0, 'respected Sir,\r\n Attending friends Nikah ceremony.', '', 'Take full day please', 'Zaid', '25-07-2022 01:37:35pm', '1659119400-1659119400'),
(132, 95, 0, 1, '2022-07-25', '07/25/2022', '07/25/2022', '0.5', 1, 1, 0, 'Half-day leave on 23/07/2022.', 'Imran', '', 'Zaid', '25-07-2022 03:09:51pm', '1658687400-1658687400'),
(133, 90, 0, 1, '2022-07-26', '07/26/2022', '07/26/2022', '0.5', 1, 1, 0, 'My Bade Abbu Passed Away', 'Approved', '', 'Zaid', '26-07-2022 09:03:15am', '1658773800-1658773800'),
(134, 92, 0, 1, '2022-08-01 To 2022-08-31', '08/01/2022', '08/31/2022', '25', 0, 0, 0, 'College Final Exams', 'If you won\'t come regularly from 1st sept then we have to think about a proper termination process.', '', 'Zaid', '26-07-2022 09:15:10am', '1659292200-1661884200'),
(135, 101, 0, 1, '2022-07-27', '07/27/2022', '07/27/2022', '0.5', 1, 1, 0, 'I am taking leave on emergency for my daughter\'s admit to hospital. ', 'Approved', '', 'Zaid', '27-07-2022 05:29:37pm', '1658860200-1658860200'),
(136, 96, 0, 2, '2022-07-28', '07/28/2022', '07/28/2022', '0.5', 1, 1, 0, 'Please consider a half-day today because I could not get up early in the morning due to illness.', '', '...', 'Zaid', '28-07-2022 02:20:34pm', '1658946600-1658946600'),
(137, 77, 0, 1, '2022-08-02', '08/02/2022', '08/02/2022', '1', 0, 0, 0, 'I\'m going out of town because of some urgent work.', 'Approved', '', 'Shahid Ahmed', '29-07-2022 07:24:56pm', '1659378600-1659378600'),
(138, 109, 0, 1, '2022-07-30', '07/30/2022', '07/30/2022', '0.5', 1, 2, 0, 'Friend Nikah Attend', 'Approved', '', 'Shahid Ahmed', '29-07-2022 08:28:22pm', '1659119400-1659119400'),
(139, 107, 0, 1, '2022-07-30', '07/30/2022', '07/30/2022', '1', 0, 0, 0, 'Medical Leave', 'Approved', '', 'Shahid Ahmed', '30-07-2022 09:15:57am', '1659119400-1659119400'),
(140, 82, 0, 1, '2022-07-30', '07/30/2022', '07/30/2022', '0.5', 1, 2, 0, 'Dear Sir\r\nRespectfully, I have got loose motions since last night, that\'s why I have to go to the washroom several times.\r\nI feel weak, so I cannot able to work today. Kindly grant me a leave for half day only.', 'Approved', '', 'Shahid Ahmed', '30-07-2022 12:40:05pm', '1659119400-1659119400'),
(141, 78, 0, 1, '2022-08-08', '08/08/2022', '08/08/2022', '1', 0, 0, 0, 'Dear Sir,\r\nwriting for the  Leave Application for one day. I am going to Pune with my friends. I need one day leave on 08 Aug-2022. It\'s my humble request to you kindly approve my leave accordingly.\r\n\r\nEarlier my one-day leave was cancelled please approve', 'Imran Tabani', '', 'Zaid', '30-07-2022 04:15:12pm', '1659897000-1659897000'),
(142, 95, 0, 1, '2022-08-01', '08/01/2022', '08/01/2022', '0.5', 1, 2, 0, 'Due to the sad demise of one of my close relatives, I need to take off in the second half of the day.', 'Imran Tabani', '', 'Zaid', '01-08-2022 02:07:29pm', '1659292200-1659292200'),
(143, 36, 0, 1, '2022-08-01', '08/01/2022', '08/01/2022', '0.5', 1, 1, 0, 'I am not feeling well (Toothache)', 'Imran Tabani', '', 'Zaid', '01-08-2022 06:23:46pm', '1659292200-1659292200'),
(144, 32, 0, 2, '2022-08-08', '08/08/2022', '08/08/2022', '1', 0, 0, 0, 'I have to shift my house on that day', '', 'Its a splash', 'Zaid', '04-08-2022 12:30:32pm', '1659897000-1659897000'),
(145, 45, 0, 1, '2022-08-05', '08/05/2022', '08/05/2022', '0.5', 1, 1, 0, 'body pain and fever ', 'Approved', '', 'Zaid', '05-08-2022 03:42:45pm', '1659637800-1659637800'),
(146, 94, 0, 1, '2022-08-08', '08/08/2022', '08/08/2022', '0.5', 1, 1, 0, 'Going out of town', 'Approved', '', 'Zaid', '08-08-2022 11:50:35am', '1659897000-1659897000'),
(147, 94, 0, 1, '2022-08-10', '08/10/2022', '08/10/2022', '1', 0, 0, 0, 'Going out of town.', 'Approved', '', 'Zaid', '08-08-2022 11:59:23am', '1660069800-1660069800'),
(148, 107, 0, 1, '2022-08-10', '08/10/2022', '08/10/2022', '0.5', 1, 2, 0, 'Medical Emergency', 'Approved.', '', 'Zaid', '10-08-2022 12:23:02pm', '1660069800-1660069800'),
(149, 87, 0, 1, '2022-08-10', '08/10/2022', '08/10/2022', '0.5', 1, 2, 0, 'I am not feeling well headache and body pain ', 'Approved.', '', 'Zaid', '10-08-2022 12:44:06pm', '1660069800-1660069800'),
(150, 95, 0, 1, '2022-08-10', '08/10/2022', '08/10/2022', '0.5', 1, 2, 0, 'Not feeling well.', 'viral ', '', 'Zaid', '10-08-2022 01:08:11pm', '1660069800-1660069800'),
(151, 85, 0, 1, '2022-08-13', '08/13/2022', '08/13/2022', '1', 0, 0, 0, 'for my cousin wedding in mumbai', 'Approved', '', 'Zaid', '10-08-2022 07:37:29pm', '1660329000-1660329000'),
(153, 80, 0, 1, '2022-08-12', '08/12/2022', '08/12/2022', '0.5', 1, 2, 0, 'back pain', 'Approved', '', 'Zaid', '12-08-2022 11:05:09am', '1660242600-1660242600'),
(154, 32, 0, 1, '2022-08-12', '08/12/2022', '08/12/2022', '0.5', 1, 2, 0, 'I am Shift my home so I want to leave for half-day', 'Approved', '', 'Zaid', '12-08-2022 12:35:00pm', '1660242600-1660242600'),
(155, 32, 0, 1, '2022-08-13', '08/13/2022', '08/13/2022', '1', 0, 0, 0, 'I have to shift my home so kindly please accept my leave application\r\nthank you', 'Approved', '', 'Zaid', '12-08-2022 12:36:04pm', '1660329000-1660329000'),
(156, 46, 0, 1, '2022-08-13', '08/13/2022', '08/13/2022', '0.5', 1, 2, 0, 'suffering from unbearable headache ', 'Approved', '', 'Shahid Ahmed', '13-08-2022 07:28:35pm', '1660329000-1660329000'),
(157, 80, 0, 1, '2022-08-16', '08/16/2022', '08/16/2022', '0.5', 1, 2, 0, 'viral fever', 'Approved', '', 'Zaid', '16-08-2022 11:27:00am', '1660588200-1660588200'),
(158, 43, 0, 1, '2022-08-18', '08/18/2022', '08/18/2022', '1', 0, 0, 0, 'Paternity leave', 'Approved', '', 'Zaid', '18-08-2022 01:13:06am', '1660761000-1660761000'),
(159, 43, 0, 1, '2022-08-19', '08/19/2022', '08/19/2022', '1', 0, 0, 0, 'Paternity leave ', 'Approved', '', 'Zaid', '19-08-2022 01:01:41am', '1660847400-1660847400'),
(160, 89, 0, 1, '2022-08-19', '08/19/2022', '08/19/2022', '1', 0, 0, 0, 'Medical Leave ', 'Approved', '', 'Zaid', '19-08-2022 08:44:37am', '1660847400-1660847400'),
(161, 94, 0, 1, '2022-08-22 To 2022-08-29', '08/22/2022', '08/29/2022', '7', 0, 0, 0, 'Final Theory Examination', 'Approved', '', 'Zaid', '19-08-2022 09:35:24am', '1661106600-1661711400'),
(162, 107, 0, 1, '2022-08-22 To 2022-08-29', '08/22/2022', '08/29/2022', '7', 0, 0, 0, 'Final Theory Examination', 'Approved', '', 'Zaid', '19-08-2022 09:38:27am', '1661106600-1661711400'),
(163, 43, 0, 1, '2022-08-23', '08/23/2022', '08/23/2022', '0.5', 1, 1, 0, 'Due to Aqiqa', 'Approved', '', 'Zaid', '23-08-2022 03:31:50pm', '1661193000-1661193000'),
(164, 100, 0, 1, '2022-08-24', '08/24/2022', '08/24/2022', '0.5', 1, 1, 0, 'Because Much headache i came in office 3:PM', 'Approved', '', 'Zaid', '24-08-2022 03:37:20pm', '1661279400-1661279400'),
(165, 100, 0, 1, '2022-08-25', '08/25/2022', '08/25/2022', '0.5', 1, 1, 0, 'Medical emergewncey leave.', 'Approved', '', 'Zaid', '25-08-2022 04:20:24pm', '1661365800-1661365800'),
(166, 103, 0, 1, '2022-08-25', '08/25/2022', '08/25/2022', '0.5', 1, 2, 0, 'i am not feeling good i am sick since 2 days but now i feel i am not able to work so i need rest i did my half hour from 10:35 am  to 5:01 pm', 'Approved', '', 'Zaid', '25-08-2022 05:01:41pm', '1661365800-1661365800'),
(167, 103, 0, 1, '2022-08-26', '08/26/2022', '08/26/2022', '1', 0, 0, 0, 'I am down with a fever - cough & cold because of that I will not be able to come to the office today 26/08/2022. I\'ll join from tomorrow.\r\nSo please grant my request.\r\nThank you ', 'Approved', '', 'Zaid', '26-08-2022 11:15:03am', '1661452200-1661452200'),
(170, 86, 0, 1, '2022-08-27', '08/27/2022', '08/27/2022', '1', 0, 0, 0, 'Viral Fever', 'Approved', '', 'Zaid', '27-08-2022 08:40:12am', '1661538600-1661538600'),
(171, 71, 0, 1, '2022-08-27', '08/27/2022', '08/27/2022', '0.5', 1, 2, 0, 'taking half day due to my medical issue', 'Approved', '', 'Zaid', '27-08-2022 12:44:22pm', '1661538600-1661538600'),
(172, 75, 0, 1, '2022-08-30', '08/30/2022', '08/30/2022', '0.5', 1, 1, 0, 'personal reasons ( half day OR may be full day , depends on conditions )', 'Approved', '', 'Shahid Ahmed', '29-08-2022 09:44:24pm', '1661797800-1661797800'),
(173, 46, 0, 1, '2022-08-30', '08/30/2022', '08/30/2022', '1', 0, 0, 0, 'High fever and body pain', 'Approved', '', 'Shahid Ahmed', '30-08-2022 12:27:50pm', '1661797800-1661797800'),
(175, 107, 0, 1, '2022-08-31', '08/31/2022', '08/31/2022', '1', 0, 0, 0, 'Medical Leave', 'Approved', '', 'Zaid', '31-08-2022 09:19:12am', '1661884200-1661884200'),
(177, 86, 0, 1, '2022-08-31', '08/31/2022', '08/31/2022', '0.5', 1, 2, 0, 'Ganesh Chaturthi', 'Approved', '', 'Zaid', '31-08-2022 01:31:51pm', '1661884200-1661884200'),
(178, 107, 0, 1, '2022-09-01', '09/01/2022', '09/01/2022', '1', 0, 0, 0, 'Medical Leave', 'Approved', '', 'Zaid', '01-09-2022 09:25:51am', '1661970600-1661970600'),
(179, 107, 0, 1, '2022-09-02', '09/02/2022', '09/02/2022', '1', 0, 0, 0, 'Viral fever', 'Approved', '', 'Zaid', '02-09-2022 09:29:22am', '1662057000-1662057000'),
(180, 86, 0, 1, '2022-09-05', '09/05/2022', '09/05/2022', '0.5', 1, 2, 0, 'Personal Reason', 'Approved', '', 'Zaid', '02-09-2022 09:41:57am', '1662316200-1662316200'),
(181, 77, 0, 1, '2022-09-06', '09/06/2022', '09/06/2022', '1', 0, 0, 0, 'I am going to Mumbai with my family.', 'Approved', '', 'Zaid', '05-09-2022 10:57:39am', '1662402600-1662402600'),
(182, 106, 0, 1, '2022-09-05', '09/05/2022', '09/05/2022', '0.5', 1, 2, 0, 'not feeling well. Have fever and joint pain as well. ', 'Approved', '', 'Zaid', '05-09-2022 02:10:13pm', '1662316200-1662316200'),
(184, 24, 0, 1, '2022-09-24', '09/24/2022', '09/24/2022', '1', 0, 0, 0, 'Marriage functions in the family. Mandatory to attend.', 'Imran Tabani', '', 'Zaid', '07-09-2022 01:38:00pm', '1663957800-1663957800'),
(185, 108, 0, 1, '2022-09-08', '09/08/2022', '09/08/2022', '0.5', 1, 2, 0, 'due to eye problem', 'Imran Tabani', '', 'Zaid', '08-09-2022 01:55:16pm', '1662575400-1662575400'),
(188, 109, 0, 2, '2022-09-10', '09/10/2022', '09/10/2022', '0.5', 1, 1, 0, '\r\nHeadache and dizziness ', 'Imran Tabani', 'Imran Tabani', 'Zaid', '10-09-2022 03:28:12pm', '1662748200-1662748200'),
(189, 46, 0, 1, '2022-09-24', '09/24/2022', '09/24/2022', '1', 0, 0, 0, 'Marriage functions in the family. Mandatory to attend.', 'Accepted', '', 'Shahid Ahmed', '10-09-2022 04:59:34pm', '1663957800-1663957800'),
(190, 85, 0, 1, '2022-09-10', '09/10/2022', '09/10/2022', '1', 0, 0, 0, 'Not well ... added by zaid', 'Approved', '', 'Zaid', '10-09-2022 05:55:56pm', '1662748200-1662748200'),
(191, 97, 0, 1, '2022-10-12', '10/12/2022', '10/12/2022', '0.5', 1, 2, 0, 'Respected Sir,\r\nI need to attend a family function due to which I cannot work full day today. I request you to please grant me a half day leave in the second half.\r\n\r\nThanking You,\r\nAfifa Ansari', 'Approved', '', 'Shahid Ahmed', '12-09-2022 09:47:52am', '1665513000-1665513000'),
(192, 100, 0, 1, '2022-09-12', '09/12/2022', '09/12/2022', '0.5', 1, 1, 0, 'Medical leave Because of headache and body pain ', 'Accepted', '', 'Shahid Ahmed', '12-09-2022 10:54:14am', '1662921000-1662921000'),
(193, 109, 0, 1, '2022-09-12', '09/12/2022', '09/12/2022', '0.5', 1, 2, 0, 'Vomiting and Headache ...', 'Approved', '', 'Zaid', '12-09-2022 02:01:39pm', '1662921000-1662921000'),
(194, 80, 0, 1, '2022-09-14', '09/14/2022', '09/14/2022', '1', 0, 0, 0, 'Personal reason', 'Approved', '', 'Zaid', '13-09-2022 04:13:55pm', '1663093800-1663093800'),
(195, 45, 0, 1, '2022-09-15', '09/15/2022', '09/15/2022', '0.5', 1, 1, 0, 'It is kindly requested that I am suffering from lower back pain since last night. So I cannot attend the first half today. I will not be able to sit because of them, which will also affect the office work.\r\nSo please consider the leave as medicle leave.', 'Approved', '', 'Zaid', '15-09-2022 05:40:05pm', '1663180200-1663180200'),
(196, 88, 0, 1, '2022-09-19', '09/19/2022', '09/19/2022', '1', 0, 0, 0, 'marriage function of my cousine and nephew', 'Accpet', '', 'Zaid', '15-09-2022 05:58:48pm', '1663525800-1663525800'),
(198, 64, 0, 1, '2022-09-21 To 2022-09-23', '09/21/2022', '09/23/2022', '3', 0, 0, 0, 'HI Team, My younger brother marriage ceremony is on date 22 Sep 2022, Please grant me leave. thanks. On 23 Sept 2022 Half day leave.', 'Approved', '', 'Zaid', '15-09-2022 08:06:43pm', '1663698600-1663871400'),
(199, 95, 0, 1, '2022-09-16', '09/16/2022', '09/16/2022', '0.5', 1, 2, 0, '14/09/2022. \r\nCouldn\'t attend the office in the second half due to medical reasons.', 'Accepted', '', 'Shahid Ahmed', '16-09-2022 11:00:41am', '1663266600-1663266600'),
(201, 82, 0, 1, '2022-09-20', '09/20/2022', '09/20/2022', '1', 0, 0, 0, 'Dear Sir,\r\n\r\nI want one day’s leave for my brother’s engagement ceremony from the office The program is scheduled on 20/9/22. Please accept my leaves. I will be thankful to you.\r\n\r\nSincerely Yours,\r\n\r\nMuzamil Kacchi', 'Accepted', '', 'Zaid', '16-09-2022 02:59:00pm', '1663612200-1663612200'),
(202, 77, 0, 1, '2022-09-19', '09/19/2022', '09/19/2022', '1', 0, 0, 0, 'Medical Leave..', 'Aceppted', '', 'Zaid', '19-09-2022 10:58:38am', '1663525800-1663525800'),
(203, 30, 0, 1, '2022-09-24', '09/24/2022', '09/24/2022', '1', 0, 0, 0, 'Going to Mumbai (Imagica)', 'Approved', '', 'Zaid', '19-09-2022 11:35:26am', '1663957800-1663957800'),
(204, 82, 0, 1, '2022-09-19', '09/19/2022', '09/19/2022', '0.5', 1, 2, 0, 'I case of emergency  i have to go to the home ', 'Accepted', '', 'Shahid Ahmed', '19-09-2022 12:37:08pm', '1663525800-1663525800'),
(205, 83, 0, 1, '2022-09-24', '09/24/2022', '09/24/2022', '1', 0, 0, 0, 'Family function.', 'Approved', '', 'Zaid', '19-09-2022 04:17:25pm', '1663957800-1663957800'),
(206, 89, 0, 1, '2022-09-21', '09/21/2022', '09/21/2022', '1', 0, 0, 0, 'Medical Leave ', 'Approved', '', 'Zaid', '21-09-2022 08:34:31am', '1663698600-1663698600'),
(207, 101, 0, 1, '2022-09-22', '09/22/2022', '09/22/2022', '1', 0, 0, 0, 'I am going out of the station. ', 'Approved', '', 'Shahid Ahmed', '21-09-2022 11:37:51am', '1663785000-1663785000'),
(208, 89, 0, 1, '2022-09-22', '09/22/2022', '09/22/2022', '1', 0, 0, 0, 'Medical Leave ', 'Approved', '', 'Zaid', '22-09-2022 12:17:20pm', '1663785000-1663785000'),
(209, 80, 0, 2, '2022-09-24', '09/24/2022', '09/24/2022', '1', 0, 0, 0, 'Out of station', 'Approved', 'Request by Shafana to reject', 'Zaid', '22-09-2022 01:09:10pm', '1663957800-1663957800'),
(210, 77, 0, 1, '2022-09-26', '09/26/2022', '09/26/2022', '1', 0, 0, 0, 'I\'m going to attend my parent at Mumbai airport.', 'Approved', '', 'Zaid', '22-09-2022 01:24:01pm', '1664130600-1664130600'),
(211, 89, 0, 1, '2022-09-23', '09/23/2022', '09/23/2022', '1', 0, 0, 0, 'Medical Leave ', 'Approved', '', 'Zaid', '23-09-2022 08:09:28am', '1663871400-1663871400'),
(213, 80, 0, 1, '2022-09-27 To 2022-09-30', '09/27/2022', '09/30/2022', '4', 0, 0, 0, 'Out of station', 'Accepted', '', 'Shahid Ahmed', '24-09-2022 11:17:56am', '1664217000-1664476200'),
(215, 109, 0, 1, '2022-09-26', '09/26/2022', '09/26/2022', '1', 0, 0, 0, 'Brother\'s wedding\r\n', 'Approved', '', 'Shahid Ahmed', '26-09-2022 11:01:22am', '1664130600-1664130600'),
(216, 90, 0, 1, '2022-09-27', '09/27/2022', '09/27/2022', '1', 0, 0, 0, 'Not feeling Well', 'Approved', '', 'Zaid', '27-09-2022 09:02:13am', '1664217000-1664217000'),
(217, 93, 0, 1, '2022-09-27', '09/27/2022', '09/27/2022', '0.5', 1, 2, 0, 'Appointment with Doctor', 'Approved', '', 'Zaid', '27-09-2022 09:08:20am', '1664217000-1664217000'),
(218, 94, 0, 1, '2022-09-28', '09/28/2022', '09/28/2022', '1', 0, 0, 0, 'External Practical Examination', 'Approved', '', 'Zaid', '27-09-2022 02:16:50pm', '1664303400-1664303400'),
(219, 107, 0, 1, '2022-09-28', '09/28/2022', '09/28/2022', '1', 0, 0, 0, 'External Practical Examination', 'Approved', '', 'Zaid', '27-09-2022 02:20:05pm', '1664303400-1664303400'),
(221, 86, 0, 1, '2022-09-29', '09/29/2022', '09/29/2022', '0.5', 1, 1, 0, 'Medical Emergency', 'Approved', '', 'Zaid', '29-09-2022 08:55:31am', '1664389800-1664389800'),
(222, 103, 0, 1, '2022-09-29', '09/29/2022', '09/29/2022', '0.5', 1, 2, 0, 'today 40th days after death of my maternal grandmother completed and I have to present with my family please allow to me to take leave in second half', 'Flash Approved', '', 'Shahid Ahmed', '29-09-2022 03:48:26pm', '1664389800-1664389800'),
(223, 64, 0, 1, '2022-10-07 To 2022-10-08', '10/07/2022', '10/08/2022', '2', 0, 0, 0, 'Hi Team, My friend\'s marriage ceremony is on the date o7 Oct 2022, Please grant me leave. thanks.', 'Approved', '', 'Zaid', '30-09-2022 05:13:35pm', '1665081000-1665167400'),
(224, 82, 0, 1, '2022-10-05', '10/05/2022', '10/05/2022', '1', 0, 0, 0, 'I need leave for personal reason ', 'Approved', '', 'Zaid', '03-10-2022 04:12:07pm', '1664908200-1664908200'),
(225, 86, 0, 1, '2022-10-05', '10/05/2022', '10/05/2022', '0.5', 1, 2, 0, 'For Dashera  Festival', 'Approved', '', 'Zaid', '03-10-2022 04:16:51pm', '1664908200-1664908200'),
(226, 104, 0, 1, '2022-10-04', '10/04/2022', '10/04/2022', '0.5', 1, 1, 0, 'There is a medical emergency at home so I will be late in coming to office. So I\'ll come office in the second half', 'Approved', '', 'Zaid', '04-10-2022 06:22:24pm', '1664821800-1664821800'),
(227, 84, 0, 1, '2022-10-10 To 2022-10-12', '10/10/2022', '10/12/2022', '3', 0, 0, 0, 'Maternity reason', 'Approved', '', 'Zaid', '05-10-2022 12:42:18pm', '1665340200-1665513000'),
(228, 80, 0, 2, '2022-10-11', '10/11/2022', '10/11/2022', '1', 0, 0, 0, 'Medical leave', 'Approved', 'Added by mistakenly.', 'Zaid', '09-10-2022 10:39:15pm', '1665426600-1665426600'),
(229, 30, 0, 1, '2022-10-25 To 2022-10-26', '10/25/2022', '10/26/2022', '2', 0, 0, 0, 'Going to Imagica with family', 'Approved', '', 'Zaid', '10-10-2022 11:02:43am', '1666636200-1666722600'),
(231, 32, 0, 1, '2022-10-24', '10/24/2022', '10/24/2022', '1', 0, 0, 0, 'I have a program for my daughter Haqiqua and a New House Warming Ceremony', 'Approved', '', 'Zaid', '10-10-2022 01:23:24pm', '1666549800-1666549800'),
(232, 86, 0, 1, '2022-10-24 To 2022-11-03', '10/24/2022', '11/03/2022', '10', 0, 0, 0, 'For Diwali Festival', 'Approved', '', 'Shahid Ahmed', '10-10-2022 02:10:41pm', '1666549800-1667413800'),
(233, 80, 0, 1, '2022-10-10', '10/10/2022', '10/10/2022', '1', 0, 0, 0, 'Medical Leave', 'Approved', '', 'Zaid', '12-10-2022 11:47:08am', '1665340200-1665340200'),
(234, 46, 0, 1, '2022-10-11', '10/11/2022', '10/11/2022', '1', 0, 0, 0, 'Emergency medical at home ', 'Approved', '', 'Shahid Ahmed', '12-10-2022 11:48:32am', '1665426600-1665426600'),
(236, 86, 0, 1, '2022-10-13', '10/13/2022', '10/13/2022', '1', 0, 0, 0, 'Medical Emergency of mother in law', 'Approved', '', 'Shahid Ahmed', '12-10-2022 05:01:29pm', '1665599400-1665599400'),
(237, 80, 0, 1, '2022-10-13', '10/13/2022', '10/13/2022', '1', 0, 0, 0, 'Out of station', 'Approved', '', 'Shahid Ahmed', '12-10-2022 08:35:14pm', '1665599400-1665599400'),
(238, 95, 0, 1, '2022-10-18', '10/18/2022', '10/18/2022', '1', 0, 0, 0, 'Personal works.', 'Imran Tabani', '', 'Zaid', '13-10-2022 05:05:39pm', '1666031400-1666031400'),
(239, 94, 0, 1, '2022-10-17', '10/17/2022', '10/17/2022', '1', 0, 0, 0, 'Going out of station', 'Imran Tabani', '', 'Zaid', '14-10-2022 11:58:43am', '1665945000-1665945000'),
(241, 71, 0, 2, '2022-10-20', '10/20/2022', '10/20/2022', '1', 0, 0, 0, 'Brother\'s wedding On 20 th October at chandwad', 'Imran Tabani', 'Cancel by Mohsin ... date changed', 'Zaid', '16-10-2022 03:58:20pm', '1666204200-1666204200'),
(242, 89, 0, 1, '2022-10-21', '10/21/2022', '10/21/2022', '1', 0, 0, 0, 'Out Of Station ', 'Imran Tabani', '', 'Zaid', '17-10-2022 09:51:13am', '1666290600-1666290600'),
(243, 85, 0, 1, '2022-10-24', '10/24/2022', '10/24/2022', '0.5', 1, 1, 0, 'appointment ', 'Imran Tabani', '', 'Zaid', '17-10-2022 11:09:13am', '1666549800-1666549800'),
(244, 85, 0, 1, '2022-10-29', '10/29/2022', '10/29/2022', '1', 0, 0, 0, 'brother wedding', 'Imran Tabani', '', 'Zaid', '17-10-2022 11:10:06am', '1666981800-1666981800'),
(247, 94, 0, 1, '2022-10-18', '10/18/2022', '10/18/2022', '1', 0, 0, 0, 'Out of town', 'Imran Tabani', '', 'Zaid', '17-10-2022 12:01:11pm', '1666031400-1666031400'),
(248, 64, 0, 1, '2022-10-21', '10/21/2022', '10/21/2022', '0.5', 1, 2, 0, 'On 21 Oct 2022 Half day leave.', 'Imran Tabani', '', 'Zaid', '17-10-2022 01:34:17pm', '1666290600-1666290600'),
(249, 64, 0, 1, '2022-10-22 To 2022-10-24', '10/22/2022', '10/24/2022', '2', 0, 0, 0, 'Hi Team, My younger brother\'s marriage ceremony is on the date 23 Oct 2022, Please grant me leave. thanks.', 'Imran Tabani', '', 'Zaid', '17-10-2022 01:34:51pm', '1666377000-1666549800'),
(250, 93, 0, 1, '2022-10-19', '10/19/2022', '10/19/2022', '0.5', 1, 2, 0, 'Appointment with Doctor', 'Imran Tabani', '', 'Zaid', '17-10-2022 01:37:30pm', '1666117800-1666117800'),
(251, 93, 0, 1, '2022-10-21', '10/21/2022', '10/21/2022', '0.5', 1, 2, 0, 'Friend\'s Wedding', 'Imran Tabani', '', 'Zaid', '17-10-2022 01:40:12pm', '1666290600-1666290600'),
(252, 93, 0, 1, '2022-10-22', '10/22/2022', '10/22/2022', '1', 0, 0, 0, 'Friend\'s Wedding', 'Imran Tabani', '', 'Zaid', '17-10-2022 01:40:30pm', '1666377000-1666377000'),
(253, 89, 0, 1, '2022-10-18', '10/18/2022', '10/18/2022', '1', 0, 0, 0, 'Medical Leave ( Suffering in Cold , cough , fever , vomiting )\r\n', 'Approved', '', 'Zaid', '18-10-2022 08:49:18am', '1666031400-1666031400'),
(254, 80, 0, 1, '2022-10-18', '10/18/2022', '10/18/2022', '1', 0, 0, 0, 'Medical Emergency', 'Approved', '', 'Zaid', '18-10-2022 09:30:18am', '1666031400-1666031400'),
(255, 80, 0, 1, '2022-10-19', '10/19/2022', '10/19/2022', '1', 0, 0, 0, 'Medical Leave', 'Approved', '', 'Zaid', '18-10-2022 09:31:51am', '1666117800-1666117800'),
(256, 97, 0, 1, '2022-10-18 To 2022-10-19', '10/18/2022', '10/19/2022', '1', 1, 2, 0, 'Respected Sir,\r\n\r\nDue to some family emergency I need to be back at home so I request you to please grant my half day leave in the second half.\r\n\r\nThank You,\r\nAfifa Ansari', 'Approved', '', 'Zaid', '18-10-2022 11:38:15am', '1666031400-1666117800'),
(257, 97, 0, 1, '2022-10-19 To 2022-10-29', '10/19/2022', '10/29/2022', '10', 0, 0, 0, 'Respected Sir,\r\n\r\nDue to some family emergency, my mother\'s health issues and my cousin\'s wedding ceremony on 29th October 2022, my presence is needed at home. I\'m requesting you to please grant me 10 days of leave. I assure you if there\'s some important ', 'Imran Tabani', '', 'Zaid', '18-10-2022 11:49:31am', '1666117800-1666981800'),
(258, 96, 0, 1, '2022-10-24', '10/24/2022', '10/24/2022', '0.5', 1, 2, 0, 'Please grant me the leave to attend the Nikah of my friend.', 'Approved', '', 'Zaid', '18-10-2022 03:14:59pm', '1666549800-1666549800'),
(259, 96, 0, 1, '2022-10-25', '10/25/2022', '10/25/2022', '1', 0, 0, 0, 'Please grant me the leave to attend the Valeema of my friend.', 'Imran Tabani', '', 'Zaid', '18-10-2022 03:15:42pm', '1666636200-1666636200'),
(260, 82, 0, 1, '2022-10-20', '10/20/2022', '10/20/2022', '1', 0, 0, 0, 'Going to Home (Latur)', 'Approved', '', 'Zaid', '18-10-2022 06:51:30pm', '1666204200-1666204200'),
(262, 89, 0, 1, '2022-10-20', '10/20/2022', '10/20/2022', '1', 0, 0, 0, 'Medical Leave ( Cold, cough, fever, vomiting )', 'Approved', '', 'Zaid', '20-10-2022 09:01:26am', '1666204200-1666204200'),
(263, 80, 0, 1, '2022-10-20 To 2022-10-21', '10/20/2022', '10/21/2022', '2', 0, 0, 0, 'Medical Emergency', 'Approved', '', 'Zaid', '20-10-2022 09:32:34am', '1666204200-1666290600'),
(264, 94, 0, 1, '2022-10-21', '10/21/2022', '10/21/2022', '1', 0, 0, 0, 'Medical leave', 'Approved', '', 'Zaid', '21-10-2022 08:11:43am', '1666290600-1666290600'),
(265, 80, 0, 1, '2022-10-22', '10/22/2022', '10/22/2022', '1', 0, 0, 0, 'Out of station', 'Approved', '', 'Zaid', '21-10-2022 07:05:44pm', '1666377000-1666377000'),
(266, 89, 0, 1, '2022-10-22', '10/22/2022', '10/22/2022', '1', 0, 0, 0, 'Medical Leave\r\n', 'Approved', '', 'Zaid', '22-10-2022 08:20:54am', '1666377000-1666377000'),
(267, 78, 0, 1, '2022-10-22', '10/22/2022', '10/22/2022', '0.5', 1, 2, 0, 'Personal work  Leave Half day\r\n ', 'Accepted', '', 'Shahid Ahmed', '22-10-2022 01:51:56pm', '1666377000-1666377000');
INSERT INTO `user_leave` (`id`, `user_id`, `manager_id`, `leave_status`, `leave_date`, `from_date`, `to_date`, `leave_days`, `half_day`, `first_half`, `leave_type`, `leave_reason`, `leave_accepted_reason`, `leave_rejected_reason`, `action_by`, `created_datetime`, `str_leave_date`) VALUES
(268, 80, 0, 1, '2022-11-01 To 2022-11-30', '11/01/2022', '11/30/2022', '24', 0, 0, 0, 'wedding', 'Imran Tabani', '', 'Zaid', '24-10-2022 09:38:17am', '1667241000-1669746600'),
(269, 85, 0, 2, '2022-10-25', '10/25/2022', '10/25/2022', '0.5', 1, 1, 0, 'medical', '', 'Imran tabani', 'Zaid', '25-10-2022 03:25:46pm', '1666636200-1666636200'),
(270, 95, 0, 1, '2022-10-28', '10/28/2022', '10/28/2022', '0.5', 1, 2, 0, 'Upcoming wedding event of a sibling. (preparation at home)', 'Imran Tabani', '', 'Zaid', '26-10-2022 08:30:31pm', '1666895400-1666895400'),
(271, 90, 0, 1, '2022-10-27', '10/27/2022', '10/27/2022', '0.5', 1, 1, 0, 'Medical Emergency', 'Imran Tabani', '', 'Zaid', '27-10-2022 10:07:42am', '1666809000-1666809000'),
(272, 92, 0, 1, '2022-10-27', '10/27/2022', '10/27/2022', '0.5', 1, 1, 0, 'Medical Emergency ', 'Imran Tabani', '', 'Zaid', '27-10-2022 10:15:02am', '1666809000-1666809000'),
(275, 80, 0, 1, '2022-10-28', '10/28/2022', '10/28/2022', '1', 0, 0, 0, 'Medical Emergency', 'Imran Tabani', '', 'Zaid', '28-10-2022 09:36:18am', '1666895400-1666895400'),
(276, 107, 0, 1, '2022-10-29', '10/29/2022', '10/29/2022', '0.5', 1, 2, 0, 'Personal Reason', 'Approved', '', 'Zaid', '28-10-2022 10:01:59am', '1666981800-1666981800'),
(277, 76, 0, 1, '2022-10-28', '10/28/2022', '10/28/2022', '0.5', 1, 1, 0, 'Medical reason. Feeling dissy.woke up with the headache.', 'Imran Tabani', '', 'Zaid', '28-10-2022 10:19:15am', '1666895400-1666895400'),
(278, 82, 0, 1, '2022-10-28', '10/28/2022', '10/28/2022', '0.5', 1, 1, 0, 'Hi Sir,\r\nNot feeling well I have an appointment with doctor so I can\'t join work for the first half\r\n\r\nThanx', 'Imran Tabani', '', 'Zaid', '28-10-2022 10:55:30am', '1666895400-1666895400'),
(279, 103, 0, 1, '2022-10-29', '10/29/2022', '10/29/2022', '1', 0, 0, 0, 'I am not feeling good due to a fever and sickness Please accept this request and kindly grant me leave for  1 day 29-10-2022 .', 'Imran Tabani', '', 'Zaid', '28-10-2022 06:37:00pm', '1666981800-1666981800'),
(280, 95, 0, 1, '2022-11-03 To 2022-11-04', '11/03/2022', '11/04/2022', '2', 0, 0, 0, 'Wedding at home.', 'Imran Tabani', '', 'Zaid', '29-10-2022 11:50:57am', '1667413800-1667500200'),
(282, 27, 0, 1, '2022-10-31', '10/31/2022', '10/31/2022', '0.5', 1, 2, 0, 'I am happy to inform you that my nephew\'s haqeeqa will be held on 31 OCT so that\'s why I need a one day leave.', 'Imran Tabani', '', 'Zaid', '29-10-2022 01:22:23pm', '1667154600-1667154600'),
(283, 109, 0, 1, '2022-10-29', '10/29/2022', '10/29/2022', '0.5', 1, 1, 0, 'For Relative Nikah Attend', 'Imran Tabani', '', 'Zaid', '29-10-2022 01:24:02pm', '1666981800-1666981800'),
(284, 107, 0, 1, '2022-10-31', '10/31/2022', '10/31/2022', '1', 0, 0, 0, 'Medical Leave', 'Approved', '', 'Zaid', '31-10-2022 09:30:23am', '1667154600-1667154600'),
(285, 94, 0, 1, '2022-10-31', '10/31/2022', '10/31/2022', '0.5', 1, 2, 0, 'Medical Emergency', 'Approved', '', 'Zaid', '31-10-2022 12:14:38pm', '1667154600-1667154600'),
(286, 45, 0, 1, '2022-10-31', '10/31/2022', '10/31/2022', '0.5', 1, 1, 0, 'Medical half-day leave', 'Approved', '', 'Zaid', '31-10-2022 03:20:13pm', '1667154600-1667154600'),
(287, 89, 0, 1, '2022-10-31', '10/31/2022', '10/31/2022', '0.5', 1, 2, 0, 'Medical emergency ', 'Approved', '', 'Zaid', '31-10-2022 03:49:47pm', '1667154600-1667154600'),
(288, 90, 0, 1, '2022-11-02', '11/02/2022', '11/02/2022', '0.5', 1, 1, 0, 'Medical Leave', 'Approved', '', 'Shahid Ahmed', '02-11-2022 02:04:07pm', '1667327400-1667327400'),
(289, 85, 0, 1, '2022-11-08', '11/08/2022', '11/08/2022', '0.5', 1, 2, 0, 'cousin wedding', 'Approved', '', 'Zaid', '07-11-2022 01:37:08pm', '1667845800-1667845800'),
(290, 84, 0, 1, '2022-11-10', '11/10/2022', '11/10/2022', '1', 0, 0, 0, 'My close relative\'s wedding', 'Approved', '', 'Zaid', '08-11-2022 11:54:37am', '1668018600-1668018600'),
(292, 45, 0, 1, '2022-11-08', '11/08/2022', '11/08/2022', '0.5', 1, 1, 0, 'Medical Leave\r\nI am not feeling well so much cough and headache and fever so i am not able to come office', 'Approved', '', 'Zaid', '08-11-2022 03:51:20pm', '1667845800-1667845800'),
(295, 82, 0, 1, '2022-11-10', '11/10/2022', '11/10/2022', '0.5', 1, 1, 0, 'For urgent personal issues i had taken the half day leave ', 'Approved', '', 'Zaid', '10-11-2022 03:43:58pm', '1668018600-1668018600'),
(296, 89, 0, 1, '2022-11-11', '11/11/2022', '11/11/2022', '1', 0, 0, 0, 'Medical Emergency', 'Approved', '', 'Zaid', '11-11-2022 08:59:48am', '1668105000-1668105000'),
(297, 89, 0, 1, '2022-11-12', '11/12/2022', '11/12/2022', '1', 0, 0, 0, 'Medical Emergency', 'Approved', '', 'Zaid', '12-11-2022 10:07:03am', '1668191400-1668191400'),
(298, 43, 0, 1, '2022-11-12', '11/12/2022', '11/12/2022', '1', 0, 0, 0, 'Wisdom teeth pain and fever ', 'Approved', '', 'Zaid', '12-11-2022 10:49:20am', '1668191400-1668191400'),
(299, 64, 0, 1, '2022-11-21', '11/21/2022', '11/21/2022', '1', 0, 0, 0, 'Hi Team, My younger brother\'s marriage ceremony is on the date 20 Nov 2022, Please grant me leave. thanks.', 'Approved', '', 'Zaid', '14-11-2022 08:10:13pm', '1668969000-1668969000'),
(300, 109, 0, 1, '2022-11-14', '11/14/2022', '11/14/2022', '1', 0, 0, 0, 'Medical leave', 'Approved', '', 'Zaid', '15-11-2022 03:41:20pm', '1668364200-1668364200'),
(301, 27, 0, 1, '2022-11-15', '11/15/2022', '11/15/2022', '1', 0, 0, 0, 'Medical leave', 'Approved', '', 'Zaid', '15-11-2022 03:41:46pm', '1668450600-1668450600'),
(302, 75, 0, 1, '2022-11-15', '11/15/2022', '11/15/2022', '0.5', 1, 1, 0, 'Medical issue ( Rested at home due to fever treatment ) ', 'Approved', '', 'Zaid', '15-11-2022 05:13:51pm', '1668450600-1668450600'),
(303, 75, 0, 1, '2022-11-14', '11/14/2022', '11/14/2022', '1', 0, 0, 0, 'Medical Leave added by zaid', 'Approved', '', 'Zaid', '16-11-2022 11:43:25am', '1668364200-1668364200'),
(305, 71, 0, 1, '2022-11-04', '11/04/2022', '11/04/2022', '0.5', 1, 1, 0, 'Medical leave added by zaid', 'Approved', '', 'Zaid', '16-11-2022 12:18:46pm', '1667500200-1667500200'),
(306, 89, 0, 1, '2022-11-18', '11/18/2022', '11/18/2022', '1', 0, 0, 0, 'Medical Leave ', 'Approved', '', 'Zaid', '18-11-2022 11:41:34am', '1668709800-1668709800'),
(308, 104, 0, 1, '2022-11-16', '11/16/2022', '11/16/2022', '1', 0, 0, 0, 'Leave added by zaid', 'Approved', '', 'Zaid', '18-11-2022 12:08:22pm', '1668537000-1668537000'),
(309, 43, 0, 1, '2022-12-05', '12/05/2022', '12/05/2022', '1', 0, 0, 0, 'out of town', 'Approved', '', 'Zaid', '18-11-2022 04:49:46pm', '1670178600-1670178600'),
(310, 24, 0, 1, '2022-11-18', '11/18/2022', '11/18/2022', '0.5', 1, 2, 0, 'Medical leave', 'Approved', '', 'Zaid', '18-11-2022 05:18:52pm', '1668709800-1668709800'),
(311, 46, 0, 1, '2022-11-18', '11/18/2022', '11/18/2022', '0.5', 1, 2, 0, 'medical leave', 'Approved', '', 'Shahid Ahmed', '20-11-2022 02:47:37pm', '1668709800-1668709800'),
(312, 45, 0, 1, '2022-11-21', '11/21/2022', '11/21/2022', '0.5', 1, 1, 0, 'the first half I am not able to come office because of some hospital emergency', 'Approved', '', 'Zaid', '21-11-2022 07:27:41pm', '1668969000-1668969000'),
(313, 89, 0, 1, '2022-11-23', '11/23/2022', '11/23/2022', '0.5', 1, 1, 0, 'Medical Emergency', 'Approved', '', 'Zaid', '23-11-2022 09:18:27am', '1669141800-1669141800'),
(314, 36, 0, 1, '2022-11-26', '11/26/2022', '11/26/2022', '0.5', 1, 2, 0, 'To attend my close friend\'s wedding', 'Approved', '', 'Zaid', '23-11-2022 11:26:05am', '1669401000-1669401000'),
(315, 46, 0, 1, '2022-11-23', '11/23/2022', '11/23/2022', '0.5', 1, 1, 0, 'Physiotherapy session - Medical leave', 'Approved', '', 'Shahid Ahmed', '23-11-2022 05:07:40pm', '1669141800-1669141800'),
(316, 101, 0, 1, '2022-11-24', '11/24/2022', '11/24/2022', '0.5', 1, 2, 0, 'out of town ', 'Approved', '', 'Zaid', '24-11-2022 10:38:05am', '1669228200-1669228200'),
(317, 101, 0, 1, '2022-11-25 To 2022-11-30', '11/25/2022', '11/30/2022', '5', 0, 0, 0, 'Out of town. going to holy places', 'Approved', '', 'Zaid', '24-11-2022 10:39:49am', '1669314600-1669746600'),
(318, 97, 0, 1, '2022-11-25', '11/25/2022', '11/25/2022', '1', 0, 0, 0, 'Respected Sir,\r\n\r\nDue to some personal issues, I cannot come to the office tomorrow (25th November 2022).  Please grant my leave\r\n\r\nThanking You,\r\nAfifa Ansari. ', 'Approved', '', 'Zaid', '24-11-2022 05:33:23pm', '1669314600-1669314600'),
(319, 83, 0, 1, '2022-11-26', '11/26/2022', '11/26/2022', '0.5', 1, 2, 0, 'friend\'s engagement', 'Approved', '', 'Zaid', '24-11-2022 06:11:42pm', '1669401000-1669401000'),
(321, 77, 0, 1, '2022-11-26', '11/26/2022', '11/26/2022', '0.5', 1, 2, 0, 'There is a Family reunion function at my home.', 'Approved', '', 'Zaid', '25-11-2022 12:11:18pm', '1669401000-1669401000'),
(324, 96, 0, 1, '2022-11-28 To 2022-11-29', '11/28/2022', '11/29/2022', '2', 0, 0, 0, 'Going to Jalgaon for admission of my sister in BUMS Course.', 'Approved', '', 'Shahid Ahmed', '25-11-2022 09:28:59pm', '1669573800-1669660200'),
(325, 71, 0, 1, '2022-11-26', '11/26/2022', '11/26/2022', '1', 0, 0, 0, 'Today I am on medical leave.', 'Approved', '', 'Zaid', '26-11-2022 10:01:10am', '1669401000-1669401000'),
(326, 85, 0, 1, '2022-11-26', '11/26/2022', '11/26/2022', '0.5', 1, 1, 0, 'There was an accident at the beginning of the construction of my house, so I had to go to the hospital immediately with the laborers. I called in the morning and informed the office.', 'Approved', '', 'Zaid', '26-11-2022 05:01:52pm', '1669401000-1669401000'),
(328, 103, 0, 1, '2022-11-28', '11/28/2022', '11/28/2022', '0.5', 1, 1, 0, 'Due to urgent work from home, I got very late for coming on the job time ', 'Approved', '', 'Zaid', '28-11-2022 03:59:28pm', '1669573800-1669573800'),
(329, 90, 0, 1, '2022-11-29', '11/29/2022', '11/29/2022', '1', 0, 0, 0, 'My Dadi Passed away', 'Inna lillah wainna iilayh rajieun.', '', 'Zaid', '29-11-2022 09:07:32am', '1669660200-1669660200'),
(330, 107, 0, 1, '2022-11-29', '11/29/2022', '11/29/2022', '0.5', 1, 1, 0, 'Medical Leave', 'Approved', '', 'Zaid', '29-11-2022 09:36:00am', '1669660200-1669660200'),
(331, 82, 0, 1, '2022-12-01', '12/01/2022', '12/01/2022', '1', 0, 0, 0, 'Dear sir,\r\nI need One day leave for traveling from Latur to Malegaon  \r\nAnd i Will Join office from 2 Dec ', 'Approved', '', 'Zaid', '29-11-2022 05:05:33pm', '1669833000-1669833000'),
(332, 106, 0, 1, '2022-11-30', '11/30/2022', '11/30/2022', '1', 0, 0, 0, 'sick(Cold and flu)', 'Approved', '', 'Shahid Ahmed', '29-11-2022 08:52:13pm', '1669746600-1669746600'),
(333, 90, 0, 1, '2022-11-30 To 2022-12-01', '11/30/2022', '12/01/2022', '2', 0, 0, 0, 'Personal Reason', 'Approved', '', 'Shahid Ahmed', '30-11-2022 09:11:29am', '1669746600-1669833000'),
(334, 82, 0, 1, '2022-11-30', '11/30/2022', '11/30/2022', '0.5', 1, 2, 0, 'There was a change in my traveling schedule so I need to leave  Latur early  So i Need Half day leave on 30/11/22', 'Approved', '', 'Shahid Ahmed', '30-11-2022 01:07:50pm', '1669746600-1669746600'),
(335, 95, 0, 1, '2022-12-05', '12/05/2022', '12/05/2022', '0.5', 1, 1, 0, 'Took leave on 02/12/2022.\r\nI was unable to login to OTM hence adding now.\r\n\r\nLeave Date: 02/12/2022 Friday\r\nHalf Day leave.', 'Imran', '', 'Imran Tabani', '05-12-2022 11:15:09am', '1670178600-1670178600'),
(336, 75, 0, 1, '2022-12-05', '12/05/2022', '12/05/2022', '1', 0, 0, 0, 'Personal reason', 'Approved', '', 'Zaid', '06-12-2022 12:17:59pm', '1670178600-1670178600'),
(337, 82, 0, 1, '2022-12-08 To 2022-12-10', '12/08/2022', '12/10/2022', '3', 0, 0, 0, 'Dear Sir,\r\n\r\nI have to attend my cousin\'s wedding in surat, therefore, I won\'t be able to come office From Date (8-12-2022) to Date (10-12-2022).\r\n\r\nKindly grant me three days\' leave. I\'m very thankful to you.\r\n\r\nRegards;\r\n\r\nMuzamil Md Aslam Kacchi\r\n\r\nNoo', 'Approved', '', 'Zaid', '07-12-2022 11:42:54am', '1670437800-1670610600'),
(338, 24, 0, 1, '2022-12-31', '12/31/2022', '12/31/2022', '1', 0, 0, 0, 'For family wedding function.', 'Approved', '', 'Zaid', '08-12-2022 08:04:08pm', '1672425000-1672425000'),
(339, 112, 0, 1, '2022-12-10', '12/10/2022', '12/10/2022', '0.5', 1, 2, 0, 'Going Mumbai ,,,, Urgent', 'Approved', '', 'Zaid', '10-12-2022 05:35:06pm', '1670610600-1670610600'),
(340, 85, 0, 1, '2022-12-09', '12/09/2022', '12/09/2022', '1', 0, 0, 0, 'Medical leave added by zaid', 'Approved', '', 'Zaid', '10-12-2022 05:36:07pm', '1670524200-1670524200'),
(341, 87, 0, 1, '2022-12-16', '12/16/2022', '12/16/2022', '1', 0, 0, 0, 'Casual Leave', 'Approved', '', 'Zaid', '12-12-2022 06:54:19pm', '1671129000-1671129000'),
(342, 32, 0, 1, '2022-12-30', '12/30/2022', '12/30/2022', '0.5', 1, 2, 0, 'Going out of Malegaon', 'Approved', '', 'Zaid', '13-12-2022 07:29:01pm', '1672338600-1672338600'),
(343, 95, 0, 1, '2022-12-28', '12/28/2022', '12/28/2022', '1', 0, 0, 0, 'Personal.', 'Imran Tabani', '', 'Imran Tabani', '14-12-2022 04:17:10pm', '1672165800-1672165800'),
(344, 86, 0, 1, '2022-12-14', '12/14/2022', '12/14/2022', '0.5', 1, 1, 0, 'Personal Reason ', 'Approved', '', 'Zaid', '14-12-2022 04:24:30pm', '1670956200-1670956200'),
(345, 46, 0, 1, '2022-12-24', '12/24/2022', '12/24/2022', '0.5', 1, 2, 0, 'Personal', 'Approved', '', 'Shahid Ahmed', '15-12-2022 11:58:53am', '1671820200-1671820200'),
(346, 88, 0, 1, '2022-12-24', '12/24/2022', '12/24/2022', '1', 0, 0, 0, 'Dear sir, I need one day leave for my cousin brother\'s wedding ceremony on 24/12/2022, please grant me permission', 'Approved', '', 'Zaid', '15-12-2022 07:52:00pm', '1671820200-1671820200'),
(347, 45, 0, 1, '2022-12-16', '12/16/2022', '12/16/2022', '0.5', 1, 1, 0, 'It is to inform you that unfortunately I am suffering from unfit health conditions since a week. my legs so much pain and it\'s not working properly so that i am not able to come office pls consider my condition', 'Approved', '', 'Zaid', '16-12-2022 04:21:59pm', '1671129000-1671129000'),
(348, 71, 0, 1, '2022-12-16', '12/16/2022', '12/16/2022', '0.5', 1, 2, 0, 'Requesting Half Day Leave for Personal Reason', 'Approved', '', 'Zaid', '16-12-2022 05:06:25pm', '1671129000-1671129000'),
(349, 90, 0, 1, '2022-12-19', '12/19/2022', '12/19/2022', '1', 0, 0, 0, 'Out of station', 'Approved', '', 'Zaid', '19-12-2022 12:26:10am', '1671388200-1671388200'),
(350, 93, 0, 1, '2022-12-19', '12/19/2022', '12/19/2022', '1', 0, 0, 0, 'Not Feeling Well ', 'Approved', '', 'Zaid', '19-12-2022 01:39:51am', '1671388200-1671388200'),
(351, 92, 0, 2, '2022-12-19 To 2022-12-24', '12/19/2022', '12/24/2022', '6', 0, 0, 0, 'Husband having High BP hospitalized .Please grant leave I will complete the given task ', '', 'Imran Tabani', 'Imran Tabani', '19-12-2022 09:30:59am', '1671388200-1671820200'),
(352, 86, 0, 1, '2022-12-19', '12/19/2022', '12/19/2022', '1', 0, 0, 0, 'Feeling Not well', 'Approved', '', 'Zaid', '19-12-2022 11:13:43am', '1671388200-1671388200'),
(353, 104, 0, 1, '2022-12-19', '12/19/2022', '12/19/2022', '0.5', 1, 2, 0, 'I am unable to attend the second half today  because of a cold & fever so I have to go to the doctor for check up and also an appointment with the doctor for a routine check-up of my wife', 'Approved', '', 'Zaid', '19-12-2022 12:52:54pm', '1671388200-1671388200'),
(354, 94, 0, 1, '2022-12-19', '12/19/2022', '12/19/2022', '1', 0, 0, 0, 'Medical leave', 'Approved', '', 'Zaid', '19-12-2022 01:33:17pm', '1671388200-1671388200'),
(355, 85, 0, 1, '2022-12-19', '12/19/2022', '12/19/2022', '0.5', 1, 1, 0, 'Medical ', 'Approved', '', 'Zaid', '19-12-2022 03:43:49pm', '1671388200-1671388200'),
(356, 84, 0, 1, '2022-12-26', '12/26/2022', '12/26/2022', '1', 0, 0, 0, 'My close friend wedding', 'Approved', '', 'Zaid', '19-12-2022 05:18:00pm', '1671993000-1671993000'),
(357, 97, 0, 1, '2022-12-19', '12/19/2022', '12/19/2022', '1', 0, 0, 0, 'I was in Mumbai and came back this afternoon', 'Approved', '', 'Zaid', '19-12-2022 05:44:55pm', '1671388200-1671388200'),
(358, 46, 0, 1, '2022-12-19', '12/19/2022', '12/19/2022', '0.5', 1, 1, 0, 'came back from Mumbai in the early morning.', 'Approved', '', 'Shahid Ahmed', '19-12-2022 05:53:33pm', '1671388200-1671388200'),
(359, 89, 0, 1, '2022-12-19', '12/19/2022', '12/19/2022', '1', 0, 0, 0, 'Medical Leave', 'Approved', '', 'Zaid', '19-12-2022 05:57:10pm', '1671388200-1671388200'),
(360, 83, 0, 1, '2022-12-22', '12/22/2022', '12/22/2022', '0.5', 1, 1, 0, 'Personal reason ', 'Approved', '', 'Zaid', '19-12-2022 08:47:14pm', '1671647400-1671647400'),
(361, 103, 0, 1, '2022-12-20', '12/20/2022', '12/20/2022', '1', 0, 0, 0, 'Due to sickness & motion, I am not able to come today. So I\'ll continue from tomorrow ', 'Approved', '', 'Zaid', '20-12-2022 11:17:11am', '1671474600-1671474600'),
(362, 107, 0, 1, '2022-12-19', '12/19/2022', '12/19/2022', '1', 0, 0, 0, 'Medical Leave', 'Approved', '', 'Zaid', '20-12-2022 11:38:22am', '1671388200-1671388200'),
(363, 90, 0, 1, '2022-12-20', '12/20/2022', '12/20/2022', '0.5', 1, 1, 0, 'Not feeling well ', 'Approved', '', 'Zaid', '20-12-2022 12:53:40pm', '1671474600-1671474600'),
(364, 64, 0, 1, '2022-12-27', '12/27/2022', '12/27/2022', '1', 0, 0, 0, 'Hi Team, On 27 Dec I am going to Nashik for Passport Document verification, Please grand me leave thanks.', 'Approved', '', 'Zaid', '20-12-2022 01:10:57pm', '1672079400-1672079400'),
(365, 77, 0, 1, '2022-12-19', '12/19/2022', '12/19/2022', '0.5', 1, 1, 0, 'Feeling not well.', 'Approved', '', 'Zaid', '20-12-2022 04:48:29pm', '1671388200-1671388200'),
(366, 95, 0, 1, '2022-12-27', '12/27/2022', '12/27/2022', '1', 0, 0, 0, 'Personal.', 'Imran Tabani', '', 'Imran Tabani', '21-12-2022 12:13:25pm', '1672079400-1672079400'),
(367, 95, 0, 1, '2022-12-26', '12/26/2022', '12/26/2022', '0.5', 1, 2, 0, 'Personal.', 'Imran Tabani', '', 'Imran Tabani', '21-12-2022 12:14:19pm', '1671993000-1671993000'),
(368, 95, 0, 1, '2022-12-23', '12/23/2022', '12/23/2022', '0.5', 1, 2, 0, 'Personal.', 'Imran Tabani', '', 'Imran Tabani', '21-12-2022 12:34:01pm', '1671733800-1671733800'),
(369, 108, 0, 1, '2022-12-24', '12/24/2022', '12/24/2022', '1', 0, 0, 0, 'personal reason', 'Approved', '', 'Zaid', '21-12-2022 12:51:23pm', '1671820200-1671820200'),
(370, 106, 0, 1, '2022-12-22', '12/22/2022', '12/22/2022', '0.5', 1, 2, 0, 'Personal.', 'Approved', '', 'Zaid', '22-12-2022 10:32:22am', '1671647400-1671647400'),
(372, 64, 0, 1, '2022-12-22', '12/22/2022', '12/22/2022', '0.5', 1, 1, 0, 'Dear Team, Due to Medical reason I a am not come to office, Please grant me leave. Thanks', 'Approved', '', 'Zaid', '22-12-2022 04:30:03pm', '1671647400-1671647400'),
(373, 43, 0, 1, '2022-12-31', '12/31/2022', '12/31/2022', '1', 0, 0, 0, 'out of town', 'Approved, inform the client about your leave.', '', 'Shahid Ahmed', '23-12-2022 11:46:55am', '1672425000-1672425000'),
(374, 94, 0, 1, '2022-12-24', '12/24/2022', '12/24/2022', '0.5', 1, 2, 0, 'Medical Emergency', 'Imran Tabani', '', 'Imran Tabani', '24-12-2022 10:44:52am', '1671820200-1671820200'),
(375, 103, 0, 1, '2022-12-26', '12/26/2022', '12/26/2022', '0.5', 1, 2, 0, 'Need to attend marriage of my cousin brother and I have to present in reception please allow me to attend the walima ', 'Imran Tabani', '', 'Imran Tabani', '25-12-2022 01:25:08pm', '1671993000-1671993000'),
(376, 87, 0, 1, '2022-12-29', '12/29/2022', '12/29/2022', '0.5', 1, 1, 0, 'Attend Friends nikah', 'Imran Tabani', '', 'Imran Tabani', '25-12-2022 04:06:44pm', '1672252200-1672252200'),
(377, 87, 0, 1, '2022-12-30', '12/30/2022', '12/30/2022', '0.5', 1, 1, 0, 'Attend Friends wedding', 'Imran Tabani', '', 'Imran Tabani', '25-12-2022 04:07:31pm', '1672338600-1672338600'),
(378, 112, 0, 1, '2022-12-30', '12/30/2022', '12/30/2022', '0.5', 1, 2, 0, 'have to attend cousin\'s marriage.', 'Imran Tabani', '', 'Imran Tabani', '26-12-2022 11:26:49am', '1672338600-1672338600'),
(379, 83, 0, 1, '2022-12-31', '12/31/2022', '12/31/2022', '1', 0, 0, 0, 'Personal reason..', 'Imran Tabani', '', 'Imran Tabani', '26-12-2022 11:29:17am', '1672425000-1672425000'),
(380, 80, 0, 1, '2022-12-29', '12/29/2022', '12/29/2022', '0.5', 1, 2, 0, 'Personal reason', 'Approved', '', 'Zaid', '27-12-2022 04:25:38pm', '1672252200-1672252200'),
(381, 77, 0, 1, '2022-12-31', '12/31/2022', '12/31/2022', '1', 0, 0, 0, 'Casual leave.', 'Approved', '', 'Zaid', '27-12-2022 08:36:19pm', '1672425000-1672425000'),
(382, 108, 0, 1, '2022-12-31', '12/31/2022', '12/31/2022', '1', 0, 0, 0, 'have to attend wedding', 'Approved-Imran', '', 'Imran Tabani', '28-12-2022 07:30:42pm', '1672425000-1672425000'),
(383, 106, 0, 1, '2022-12-31', '12/31/2022', '12/31/2022', '1', 0, 0, 0, 'To attend the wedding ceremony.', 'Approved-Imran', '', 'Imran Tabani', '29-12-2022 10:41:36am', '1672425000-1672425000'),
(384, 78, 0, 2, '2023-01-02', '01/02/2023', '01/02/2023', '1', 0, 0, 0, 'I am going out of town for personal work. please approve my leave. Thank you ', '', '....', 'Zaid', '29-12-2022 12:29:04pm', '1672597800-1672597800'),
(385, 88, 0, 1, '2022-12-31', '12/31/2022', '12/31/2022', '1', 0, 0, 0, 'I need one day leave because I have to go to Mumbai to drop my uncle\'s family to the Airport and some other works', 'Approved-Imran', '', 'Imran Tabani', '29-12-2022 12:56:48pm', '1672425000-1672425000'),
(386, 30, 0, 1, '2022-12-31', '12/31/2022', '12/31/2022', '1', 0, 0, 0, 'Going to out of the station', 'Approved', '', 'Zaid', '29-12-2022 04:10:42pm', '1672425000-1672425000'),
(387, 27, 0, 1, '2023-01-02', '01/02/2023', '01/02/2023', '0.5', 1, 2, 0, 'I would like to inform you that my cousin\'s marriage is going to be held on 02nd January 2023. I am writing this letter as a request to grant me half day leave to join with my family for this glad occasion.', 'Approved', '', 'Zaid', '29-12-2022 07:08:19pm', '1672597800-1672597800'),
(388, 104, 0, 1, '2022-12-30', '12/30/2022', '12/30/2022', '0.5', 1, 2, 0, 'There is a lot of pain in the teeth since few days, so the appointment with the Dentist is fixed at 5 pm.', 'Approved', '', 'Zaid', '30-12-2022 11:37:56am', '1672338600-1672338600'),
(389, 82, 0, 1, '2023-01-02', '01/02/2023', '01/02/2023', '1', 0, 0, 0, 'Dear Sir, I have to attend my cousin\'s wedding, therefore, I won\'t be able to come office Date (2-1-2023). Kindly grant me one day\'s leave. I\'m very grateful to you. \r\n\r\nRegards; Muzamil Md Aslam Kacchi Noo', 'Approved', '', 'Zaid', '30-12-2022 12:14:12pm', '1672597800-1672597800'),
(390, 46, 0, 1, '2022-12-30', '12/30/2022', '12/30/2022', '0.5', 1, 1, 0, 'Extreme headache    ', 'Approved', '', 'Imran Tabani', '30-12-2022 06:14:49pm', '1672338600-1672338600'),
(391, 112, 0, 1, '2022-12-15', '12/15/2022', '12/15/2022', '0.5', 1, 2, 0, 'Medical Emergency Halfday', 'Approved', '', 'Zaid', '31-12-2022 12:31:57pm', '1671042600-1671042600'),
(392, 89, 0, 1, '2023-01-02', '01/02/2023', '01/02/2023', '0.5', 1, 2, 0, 'Personal Reason', 'Approved', '', 'Zaid', '01-01-2023 07:05:30pm', '1672597800-1672597800'),
(393, 80, 0, 1, '2023-01-02', '01/02/2023', '01/02/2023', '1', 0, 0, 0, 'Medical ', 'Approved', '', 'Zaid', '02-01-2023 11:21:21am', '1672597800-1672597800'),
(394, 107, 0, 1, '2023-01-04', '01/04/2023', '01/04/2023', '0.5', 1, 1, 0, 'Medical Leave', 'Approved', '', 'Zaid', '04-01-2023 03:46:30pm', '1672770600-1672770600'),
(395, 109, 0, 1, '2023-01-06', '01/06/2023', '01/06/2023', '0.5', 1, 1, 0, 'had a cold and fever', 'Accept', '', 'Zaid', '06-01-2023 04:53:34pm', '1672943400-1672943400'),
(396, 96, 0, 1, '2023-01-09', '01/09/2023', '01/09/2023', '1', 0, 0, 0, 'Going to Jalgaon for cancellation of admission of my sister.', 'Approved', '', 'Shahid Ahmed', '08-01-2023 08:47:07pm', '1673202600-1673202600'),
(397, 96, 0, 1, '2023-01-10', '01/10/2023', '01/10/2023', '0.5', 1, 1, 0, 'Going to bank for making DD for admission process of my sister.', 'Approved', '', 'Shahid Ahmed', '08-01-2023 08:50:16pm', '1673289000-1673289000'),
(398, 96, 0, 1, '2023-01-11', '01/11/2023', '01/11/2023', '0.5', 1, 1, 0, 'Going to Al-Ameen College for admission of my sister in BUMS.', 'Approved', '', 'Shahid Ahmed', '08-01-2023 08:51:39pm', '1673375400-1673375400'),
(399, 88, 0, 1, '2023-01-09', '01/09/2023', '01/09/2023', '1', 0, 0, 0, 'I will not come to office today because I have fever and some infection. I have got (IV) in my hand from which injections are given in the morning and evening. If I feel better tomorrow, I will come otherwise I\'ll not come tomorrow also.', 'Approved', '', 'Zaid', '09-01-2023 11:24:03am', '1673202600-1673202600'),
(400, 86, 0, 1, '2023-01-10', '01/10/2023', '01/10/2023', '1', 0, 0, 0, 'My baby feeling unwell', 'Approved', '', 'Zaid', '10-01-2023 08:50:02am', '1673289000-1673289000'),
(401, 94, 0, 1, '2023-01-16 To 2023-01-20', '01/16/2023', '01/20/2023', '5', 0, 0, 0, 'Internal Examination', 'Approved', '', 'Zaid', '10-01-2023 11:38:41am', '1673807400-1674153000'),
(402, 107, 0, 1, '2023-01-16 To 2023-01-20', '01/16/2023', '01/20/2023', '5', 0, 0, 0, 'Internal Examination ', 'Approved', '', 'Zaid', '10-01-2023 11:41:06am', '1673807400-1674153000'),
(403, 107, 0, 1, '2023-01-03', '01/03/2023', '01/03/2023', '1', 0, 0, 0, 'Medical Leave', 'Approved', '', 'Zaid', '10-01-2023 01:37:04pm', '1672684200-1672684200'),
(404, 89, 0, 1, '2023-01-27 To 2023-01-28', '01/27/2023', '01/28/2023', '2', 0, 0, 0, 'Out Of Station ', 'Approved', '', 'Zaid', '10-01-2023 03:52:25pm', '1674757800-1674844200'),
(406, 71, 0, 1, '2023-01-23 To 2023-01-24', '01/23/2023', '01/24/2023', '2', 0, 0, 0, '2 days leave for sister\'s engagement in Mumbai', 'Approved', '', 'Zaid', '12-01-2023 11:21:34am', '1674412200-1674498600'),
(407, 43, 0, 1, '2023-01-18', '01/18/2023', '01/18/2023', '0.5', 1, 2, 0, 'out of town', 'Approved', '', 'Zaid', '12-01-2023 05:53:11pm', '1673980200-1673980200'),
(410, 30, 0, 1, '2023-01-20', '01/20/2023', '01/20/2023', '1', 0, 0, 0, 'I have to attend my close relative\'s marriage. Please approve my leave request. Thanks', 'Approved', '', 'Zaid', '13-01-2023 10:57:32am', '1674153000-1674153000'),
(411, 114, 0, 1, '2023-01-13', '01/13/2023', '01/13/2023', '1', 0, 0, 0, 'Respected sir,\r\nI have high fever so I can not come to office today.  Please accept my request. ', 'Approved', '', 'Zaid', '13-01-2023 11:36:54am', '1673548200-1673548200'),
(412, 113, 0, 1, '2023-01-13', '01/13/2023', '01/13/2023', '0.5', 1, 2, 0, 'I\'m presenting this request for the mentioned half-day leave. My cousin sister\'s wedding will be performed, thus I must present as cousin brother. Kindly grant my request.', 'Approved', '', 'Zaid', '13-01-2023 04:06:05pm', '1673548200-1673548200'),
(414, 46, 0, 1, '2023-01-14', '01/14/2023', '01/14/2023', '0.5', 1, 2, 0, 'High Fever', 'Approved', '', 'Shahid Ahmed', '14-01-2023 07:16:59pm', '1673634600-1673634600'),
(415, 89, 0, 1, '2023-01-16', '01/16/2023', '01/16/2023', '0.5', 1, 1, 0, 'Medical leave ', 'Approved', '', 'Zaid', '16-01-2023 08:50:52am', '1673807400-1673807400'),
(416, 84, 0, 1, '2023-01-17', '01/17/2023', '01/17/2023', '1', 0, 0, 0, 'personal issue', 'Approved', '', 'Zaid', '16-01-2023 11:49:46am', '1673893800-1673893800'),
(417, 80, 0, 1, '2023-01-20', '01/20/2023', '01/20/2023', '0.5', 1, 2, 0, 'Medical', 'Approved', '', 'Zaid', '20-01-2023 11:41:18am', '1674153000-1674153000'),
(419, 45, 0, 1, '2023-01-30', '01/30/2023', '01/30/2023', '1', 0, 0, 0, 'This is to inform you that I need to take a one day leave on 30/01/2023 due to a personal reason. Here I am requesting you to kindly give your approval to take leave on the above date.', 'Approved', '', 'Zaid', '23-01-2023 07:46:04pm', '1675017000-1675017000'),
(420, 94, 0, 1, '2023-01-25 To 2023-02-03', '01/25/2023', '02/03/2023', '9', 0, 0, 0, 'MCA External Examination', 'Approved', '', 'Shahid Ahmed', '24-01-2023 03:35:29pm', '1674585000-1675362600'),
(421, 107, 0, 1, '2023-01-25 To 2023-02-03', '01/25/2023', '02/03/2023', '9', 0, 0, 0, 'Final Examination', 'Approved', '', 'Shahid Ahmed', '24-01-2023 03:35:42pm', '1674585000-1675362600'),
(422, 85, 0, 1, '2023-01-27', '01/27/2023', '01/27/2023', '0.5', 1, 1, 0, 'medical', 'Approved', '', 'Zaid', '27-01-2023 11:12:41am', '1674757800-1674757800'),
(423, 103, 0, 1, '2023-02-07 To 2023-02-17', '02/07/2023', '02/17/2023', '10', 0, 0, 0, 'I would like to inform you that my marriage going to be held on 8 and 9 February. I am writing this letter as a request to grant me leaves from 7 February to 17 February as I have to make some preparation, In my behalf, Aamir momin will be there. I will r', 'Approved', '', 'Zaid', '27-01-2023 02:48:22pm', '1675708200-1676572200'),
(424, 114, 0, 1, '2023-01-28', '01/28/2023', '01/28/2023', '0.5', 1, 2, 0, 'due to personal reason.', 'Approved', '', 'Zaid', '28-01-2023 01:29:36pm', '1674844200-1674844200'),
(425, 89, 0, 1, '2023-01-30', '01/30/2023', '01/30/2023', '1', 0, 0, 0, 'Medical Leave', 'Approved', '', 'Zaid', '30-01-2023 10:21:40am', '1675017000-1675017000'),
(427, 27, 0, 1, '2023-01-19', '01/19/2023', '01/19/2023', '1', 0, 0, 0, 'Medical issue with my newly born baby', 'Approved', '', 'Zaid', '31-01-2023 12:11:51pm', '1674066600-1674066600'),
(429, 83, 0, 1, '2023-02-08', '02/08/2023', '02/08/2023', '1', 0, 0, 0, 'family function ', 'Approved', '', 'Zaid', '01-02-2023 07:32:39pm', '1675794600-1675794600'),
(430, 80, 0, 1, '2023-02-03', '02/03/2023', '02/03/2023', '1', 0, 0, 0, 'Medical check-up ', 'Approved', '', 'Zaid', '02-02-2023 03:17:36pm', '1675362600-1675362600'),
(431, 103, 0, 1, '2023-02-06', '02/06/2023', '02/06/2023', '1', 0, 0, 0, 'I thought I can handle things and make preparations in weekend for marriage but unfortunately there are preparations still pending so i won\'t join the office today.', 'Approved', '', 'Zaid', '06-02-2023 11:42:55am', '1675621800-1675621800'),
(432, 97, 0, 0, '2023-02-10 To 2023-02-11', '02/10/2023', '02/11/2023', '2', 0, 0, 0, 'Respected Sir,\r\n\r\nMy cousin is getting married on 11th Feb 2023, so I would like to take a leave for 2 days. Please grant me leave.\r\n\r\nYours Faithfully,\r\nAfifa Ansari', '', '', '', '07-02-2023 04:01:05pm', '1675967400-1676053800'),
(433, 24, 0, 1, '2023-02-08', '02/08/2023', '02/08/2023', '0.5', 1, 1, 0, 'Due to the death of a close friend\'s father.', 'Approved', '', 'Zaid', '08-02-2023 06:05:43pm', '1675794600-1675794600'),
(434, 109, 0, 1, '2023-02-11', '02/11/2023', '02/11/2023', '0.5', 1, 2, 0, 'Friend Walima Attend ', 'approved', '', 'Shahid Ahmed', '10-02-2023 08:38:46pm', '1676053800-1676053800'),
(435, 96, 0, 0, '2023-02-22', '02/22/2023', '02/22/2023', '0.5', 1, 1, 0, 'I have to attend the Nikah of my cousin brother.', '', '', '', '13-02-2023 03:46:48pm', '1677004200-1677004200'),
(436, 96, 0, 0, '2023-02-23', '02/23/2023', '02/23/2023', '1', 0, 0, 0, 'I have to attend the Weddingof my cousin brother.', '', '', '', '13-02-2023 03:48:02pm', '1677090600-1677090600'),
(437, 89, 0, 0, '2023-02-25', '02/25/2023', '02/25/2023', '1', 0, 0, 0, 'Cousin\'s wedding ceremony', '', '', '', '15-02-2023 11:14:35am', '1677263400-1677263400'),
(438, 89, 0, 0, '2023-02-16', '02/16/2023', '02/16/2023', '0.5', 1, 1, 0, 'Not Feeling Well', '', '', '', '16-02-2023 09:11:22am', '1676485800-1676485800'),
(439, 115, 0, 0, '2023-02-17', '02/17/2023', '02/17/2023', '1', 0, 0, 0, 'Out of Town', '', '', '', '16-02-2023 09:56:52am', '1676572200-1676572200'),
(440, 101, 0, 0, '2023-02-15', '02/15/2023', '02/15/2023', '0.5', 1, 1, 0, 'Falimy Function ', '', '', '', '16-02-2023 12:04:45pm', '1676399400-1676399400'),
(441, 76, 0, 0, '2023-02-20', '02/20/2023', '02/20/2023', '1', 0, 0, 0, 'I have to go outside Malegaon', '', '', '', '16-02-2023 04:22:40pm', '1676831400-1676831400');

-- --------------------------------------------------------

--
-- Table structure for table `user_ot`
--

CREATE TABLE `user_ot` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `ot_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:requested, 1:accepted, 2:rejected',
  `ot_hours` float NOT NULL,
  `ot_date` varchar(255) NOT NULL,
  `str_ot_date` varchar(255) NOT NULL,
  `ot_time` varchar(255) NOT NULL,
  `ot_location` varchar(255) NOT NULL,
  `requested_description` varchar(255) NOT NULL,
  `rejected_description` varchar(255) NOT NULL,
  `action_by` varchar(255) NOT NULL,
  `created_datetime` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_ot`
--

INSERT INTO `user_ot` (`id`, `user_id`, `manager_id`, `project_id`, `project_name`, `ot_status`, `ot_hours`, `ot_date`, `str_ot_date`, `ot_time`, `ot_location`, `requested_description`, `rejected_description`, `action_by`, `created_datetime`) VALUES
(1, 41, 0, 224, 'FasterChecks', 1, 1, '2022-05-05', '1651689000', '9PM to 10PM', 'Home', 'Video QR cards generated for Latus health_', '', 'Zaid', '06-05-2022 12:27:21pm'),
(2, 45, 0, 250, 'Welzo HL7', 1, 8, '2022-05-07', '1651861800', '10 To 02 and  4 to 8', 'Office', 'New Angular project setup\r\nNode module install\r\ncreate page and routing\r\nTest Detail UI design with scratch with responsiveness', '', 'Zaid', '09-05-2022 10:53:02am'),
(3, 45, 0, 250, 'Welzo HL7', 1, 4, '2022-05-08', '1651948200', '4 to 8:30', 'Office', 'Test Detail UI design with scratch with responsiveness', '', 'Zaid', '09-05-2022 10:53:55am'),
(4, 27, 0, 81, 'Noorisys Internal', 1, 3, '2022-05-07', '1651861800', '6 AM to 9 AM', 'Home', '04-May-22 @night at Home  - Time - 6 AM to 9 AM\r\nQuran PDF Arbi  -  3 Hours \r\n1-Update the splash screen\r\n2-Update PDF\r\n3-Build apk signed and share it with Imran sir.\r\n', '', 'Zaid', '09-05-2022 01:10:17pm'),
(5, 27, 0, 81, 'Noorisys Internal', 1, 7, '2022-05-07', '1651861800', '2 PM to 5 PM - 8 PM to 12 AM ', 'Home', '07-May-22 @night at Home\r\nTime - 2 PM to 5 PM - 3 Hours\r\nTime - 8 PM to 12 AM - 4 Hours\r\n \r\nQuran PDF Noorisys  -  Total  7 Hours\r\n1-Create new iOS application for Quran PDF.\r\n2-Integrate the third party library for PDF and also design UI in flutter.\r\n3-C', '', 'Zaid', '09-05-2022 01:12:41pm'),
(6, 24, 0, 81, 'Noorisys Internal', 1, 2, '2022-05-21', '1653282000', '3:30 PM', 'Office', 'Job fest, Mansoora college.', '', 'Zaid', '23-05-2022 10:30:00am'),
(7, 46, 0, 81, 'Noorisys Internal', 1, 8, '2022-05-21', '1653071400', '9:30AM  to 6PM', 'Office', 'Job Fair, Mansoorta college', '', 'Shahid Ahmed', '24-05-2022 11:37:18am'),
(8, 32, 0, 224, 'FasterChecks', 1, 3.5, '2022-05-24', '1653330600', 'Tue 10:00 pm to Wed 01:30 am', 'Home', 'Fasterchecks task Create video for Latus partner (Video Flow)', '', 'Zaid', '25-05-2022 11:06:29am'),
(9, 24, 0, 81, 'Noorisys Internal', 1, 1, '2022-05-25', '1653417000', '8pm to 9pm', 'Office', 'Call with a new client and CEO (WP to mobile development)', '', 'Zaid', '26-05-2022 10:38:15am'),
(10, 43, 0, 81, 'Noorisys Internal', 1, 5, '2022-05-21', '1653071400', '12:00 PM to 05:00 PM', 'Office', 'I had gone to take an Interview at Mansoora Job fair.', '', 'Shahid Ahmed', '26-05-2022 12:13:08pm'),
(11, 24, 0, 81, 'Noorisys Internal', 1, 1, '2022-05-29', '1653762600', '11 PM to 12 AM', 'Office', 'Meeting with CEO', '', 'Zaid', '31-05-2022 10:58:35am'),
(12, 32, 0, 224, 'FasterChecks', 1, 4, '2022-05-31', '1653935400', '07:35 pm to 11:50', 'Office', 'Create new partner panel (Princess) and create cards for video and photo and create video also', '', 'Zaid', '31-05-2022 11:35:49pm'),
(13, 46, 0, 224, 'FasterChecks', 1, 4, '2022-05-31', '1653935400', '7:30 to 11:30', 'Office', 'Fasterchecks | princess cruises partner live on .net and card generate ', '', 'Salman | HR', '31-05-2022 11:41:53pm'),
(14, 77, 0, 224, 'FasterChecks', 1, 4, '2022-05-31', '1653935400', '7:30 PM TO 11:55 PM', 'Office', 'Working Fasterchecks white label panels. (partner\'s Princess VIdeo flow application and princess photo flow.)', '', 'Zaid', '31-05-2022 11:42:13pm'),
(15, 71, 0, 250, 'Welzo HL7', 1, 1, '2022-06-01', '1654021800', '6:45 PM To 7:55 PM', 'Office', 'Welzo client call', '', 'Shahid Ahmed', '01-06-2022 08:16:11pm'),
(16, 77, 0, 250, 'Welzo HL7', 1, 5, '2022-06-04', '1654281000', '3:00 PM TO 8:20 PM', 'Home', 'Make a product list component with routing. Make a product list UI. Make a product details component with routing and Make a product details page UI. Make a footer component. add footer component in all pages in welzo customer panel. Make user profile det', '', 'Zaid', '04-06-2022 08:21:53pm'),
(17, 32, 0, 224, 'FasterChecks', 1, 1, '2022-06-05', '1654367400', '09:50pm to 10:55pm ', 'Home', 'Changes in Princess activation card', '', 'Zaid', '06-06-2022 11:06:37am'),
(18, 46, 0, 224, 'FasterChecks', 1, 1, '2022-06-06', '1654453800', '7 to 8', 'Office', 'Fasterchecks Princess Cruises Live', '', 'Shahid Ahmed', '06-06-2022 08:13:40pm'),
(19, 24, 0, 224, 'FasterChecks', 1, 1, '2022-06-07', '1654540200', '7.30pm to 8.30pm', 'Office', 'Fasterechecks LAN issue, test was not loading, troubleshoot with Irfan', '', 'Zaid', '08-06-2022 11:03:30am'),
(20, 32, 0, 196, 'SesaPay Phase 3', 1, 6, '2022-06-09', '1654713000', '08:00 PM to 01:40AM  and 08:30 AM to 10:20 AM', 'Home', 'Create screens for Sesa Pay ( Landing and Profile screen)', '', 'Zaid', '10-06-2022 05:54:32pm'),
(21, 78, 0, 210, 'Noorisys Ongoin', 2, 8, '2022-06-14', '1655145000', '11:00 AM to 08:00 PM', 'Office', 'Accounting Works and Imran sir Meeting For Accounts ', 'It\'s a working day for admin, OT will not be counted.', 'Shahid Ahmed', '14-06-2022 06:25:53pm'),
(22, 78, 0, 210, 'Noorisys Ongoin', 1, 2, '2022-06-14', '1655145000', '07:00 AM to 10:30 PM ', 'Office', 'Accounts works \r\n( OT date 05 June-2022)', '', 'Shahid Ahmed', '14-06-2022 06:27:30pm'),
(23, 24, 0, 81, 'Noorisys Internal', 1, 1, '2022-06-13', '1655058600', '8pm to 9pm', 'Office', 'Meeting with CEO', '', 'Zaid', '14-06-2022 08:32:00pm'),
(24, 24, 0, 250, 'Welzo HL7', 1, 1, '2022-06-15', '1655231400', '8pm to 9pm', 'Office', 'Call with client, mailgun setup', '', 'Zaid', '15-06-2022 09:03:57pm'),
(25, 71, 0, 250, 'Welzo HL7', 1, 1, '2022-06-15', '1655231400', '7:30 PM To 8:35 PM', 'Office', 'Welzo client call (Demo / Discussion) ', '', 'Zaid', '16-06-2022 10:42:52am'),
(26, 24, 0, 81, 'Noorisys Internal', 1, 1, '2022-06-18', '1655490600', '7pm to 8pm', 'Office', 'Meeting with CEO', '', 'Zaid', '20-06-2022 11:04:17am'),
(27, 24, 0, 224, 'FasterChecks', 1, 1, '2022-06-23', '1655922600', '8pm to 9pm', 'Office', 'Goldsite update requested by Sameer', '', 'Zaid', '24-06-2022 11:26:33am'),
(28, 82, 0, 248, 'umrahaddons.com', 1, 7.5, '2022-06-26', '1656181800', '12.07PM   7:18 PM', 'Office', '! hr Ot on 25 June and 6.5 hr on 26 June  \r\nMaster Data of  Number Of pax\r\nMaster Data For Vehicle\r\nAdd Amount in add package is done \r\nGet Package is done as per the Requirement \r\nMaster Data for Ideal For, Included, Not Included, Arab City\r\n\r\n1 hr in de', '', 'Shahid Ahmed', '26-06-2022 07:21:01pm'),
(29, 45, 0, 248, 'umrahaddons.com', 1, 1, '2022-06-25', '1656095400', '1 Hr', 'Office', 'Meeting with sir and team', '', 'Shahid Ahmed', '27-06-2022 11:06:23am'),
(30, 45, 0, 248, 'umrahaddons.com', 1, 8, '2022-06-26', '1656181800', '12 to 9:30', 'Office', 'NO of Pax APIintegration\r\nVehicle Type API integration\r\nAPI Loader Add\r\nAdd New Icons and remove buttons and remove button\r\ncalculation the price amount od deduct 20 percent\r\n', '', 'Shahid Ahmed', '27-06-2022 11:11:17am'),
(31, 88, 0, 248, 'umrahaddons.com', 1, 1, '2022-06-25', '1656095400', '7:30 PM to 9:00 PM', 'Office', 'Meeting with sir and demo of Umrah-addons with team', '', 'Shahid Ahmed', '27-06-2022 11:18:53am'),
(32, 88, 0, 248, 'umrahaddons.com', 1, 8, '2022-06-26', '1656181800', '1:20 PM to 9:20 PM', 'Office', 'changes as told by sir on user UI and functionality\r\n    color changed as zowar\r\n    footer desing changed\r\n    icon changed\r\n    some functionality on search input\r\n    remove time field on booking form\r\n    helping safwan on add package form', '', 'Shahid Ahmed', '27-06-2022 11:38:19am'),
(34, 82, 0, 248, 'umrahaddons.com', 1, 4, '2022-07-03', '1656786600', '12:45 PM to 4:45 PM', 'Office', 'Task \r\n3/7/22\r\n\r\nadd ota id in package_list_for_user in user api\r\nadd ota_id and user_pax in booking api  \r\nAnd rest user api  ota_id is added \r\nChange in  tables', '', 'Shahid Ahmed', '04-07-2022 01:08:16pm'),
(35, 82, 0, 248, 'umrahaddons.com', 1, 4.5, '2022-07-02', '1656700200', '12:45 PM to 6 PM', 'Office', 'Task\r\n2/7/22\r\nMeeteing \r\n1:30 hr meeting \r\n\r\nadd supporter number in add provider api \r\nadd supporter number in update provider api \r\nadd supporter number in add OTA api \r\nadd supporter number in update OTA api \r\nadd ota_id in customer registration ', '', 'Shahid Ahmed', '04-07-2022 01:09:34pm'),
(36, 45, 0, 248, 'umrahaddons.com', 1, 7, '2022-07-02', '1656700200', '11:30 TO 6:30', 'Office', 'Meeting with Sir\r\nUI change for admin side with validation', '', 'Shahid Ahmed', '04-07-2022 08:08:21pm'),
(37, 88, 0, 248, 'umrahaddons.com', 1, 6.5, '2022-07-02', '1656700200', '11:40 PM to 6:15 PM', 'Office', 'demo and meeting with sir, working on task added by sir', '', 'Shahid Ahmed', '04-07-2022 08:10:32pm'),
(38, 24, 0, 210, 'Noorisys Ongoin', 2, 4, '2022-07-06', '1657045800', '4pm to 8pm', 'Office', 'Meeting with CEO', 'OT wasn\'t requested by me', 'Zaid', '07-07-2022 05:00:48pm'),
(39, 24, 0, 230, 'Coursier Médical', 2, 1, '2022-07-07', '1657132200', '4pm to 5pm', 'Office', 'CoursierMedical: Security document writing', 'I haven\'t requested to do OT for coursier', 'Zaid', '07-07-2022 05:02:04pm'),
(40, 103, 0, 154, 'Zowar', 2, 1, '2022-07-14', '1657737000', '7:30 to 8:40', 'Office', 'CHECKING RESPONSIVE WITH URL AND ALL FLOW FROM NEW DESIGN OF  HOTEL RESERVATION ', 'Not requested. Always ask before doing any OT', 'Zaid', '15-07-2022 11:00:00am'),
(41, 104, 0, 154, 'Zowar', 2, 1, '2022-07-14', '1657737000', '07:30 PM - 08:30PM', 'Office', 'CHECKING RESPONSIVE WITH URL AND ALL FLOW FROM NEW DESIGN OF ZOWAR/TRANSPORTATION', 'Not requested. Always ask before doing any OT', 'Zaid', '15-07-2022 11:03:19am'),
(42, 30, 0, 253, 'Noumi', 1, 2, '2022-07-26', '1658773800', '7:30 PM to 9:30 PM', 'Office', 'Meeting with Imran sir and all developers about application flow', '', 'Zaid', '27-07-2022 12:10:48pm'),
(43, 76, 0, 253, 'Noumi', 1, 2, '2022-07-26', '1658773800', '7:30 pm to 9:30 pm', 'Office', 'Noumi Meeting', '', 'Zaid', '27-07-2022 12:18:01pm'),
(45, 82, 0, 253, 'Noumi', 1, 1.5, '2022-07-26', '1658773800', '8 PM to 9:30 PM', 'Office', 'Date 26/7/22\r\nMeeting with client and Imran sir, Discussion  on the mobile user task list ', '', 'Zaid', '27-07-2022 12:52:36pm'),
(46, 32, 0, 253, 'Noumi', 1, 1, '2022-07-30', '1659119400', '26-07-2022 Tue 1 Hour OT after office time', 'Office', 'Meeting and discussion and client call', '', 'Zaid', '30-07-2022 06:37:19pm'),
(47, 27, 0, 253, 'Noumi', 1, 1.5, '2022-07-30', '1659119400', '8 PM to 9:30 PM', 'Office', 'This is a 26-July-22 OT for noumi app meeting with the CEO and all the developer. ', '', 'Zaid', '30-07-2022 06:37:51pm'),
(48, 95, 0, 256, 'Girme - Documentation', 1, 4, '2022-08-08', '1659897000', '1. (7 PM to 8:35 PM) 2. (10:30 to 12:30)', 'Office', '1. Girme Docs. work from office\r\n2. KSA Digital Marketing work from home.', '', 'Zaid', '10-08-2022 01:07:15pm'),
(49, 75, 0, 154, 'Zowar', 1, 1, '2022-08-09', '1659983400', '01:00 PM To 02:25 PM', 'Home', 'Emergency issue - database size crossed 10GB limit , Issue was fixed temporary be removing some useless data from database ', '', 'Zaid', '10-08-2022 06:37:17pm'),
(50, 24, 0, 154, 'Zowar', 1, 4, '2022-08-11', '1660156200', '09pm to 01am', 'Home', 'Zowar API troubleshoot', '', 'Zaid', '12-08-2022 11:07:08am'),
(51, 32, 0, 259, 'MarketSquare', 1, 1, '2022-08-12', '1660242600', '9:30 to 10:30', 'Office', 'Creating screens of customer flow and finalize all the screens', '', 'Zaid', '12-08-2022 12:37:24pm'),
(52, 76, 0, 253, 'Noumi', 1, 7, '2022-08-15', '1660501800', '11 am to 7 pm', 'Office', 'worked on Noumi', '', 'Zaid', '15-08-2022 07:47:47pm'),
(53, 76, 0, 154, 'Zowar', 1, 1, '2022-08-15', '1660501800', '7 pm to 8 pm', 'Office', 'Worked on zowar (storage problem) get database backup and truncate tables', '', 'Zaid', '15-08-2022 07:48:55pm'),
(54, 30, 0, 253, 'Noumi', 1, 8, '2022-08-15', '1660501800', '10:04 AM to 7:04 PM', 'Office', 'Design UI for (Change Email, Change Password, Change Language, Receipt Details, Offer Details, Store Details), Implement Share functionality', '', 'Zaid', '15-08-2022 07:55:09pm'),
(55, 30, 0, 253, 'Noumi', 1, 1, '2022-08-15', '1660501800', '7:04 PM to 8:04 PM', 'Office', 'Design UI for (Change Email, Change Password, Change Language, Receipt Details, Offer Details, Store Details), Implement Share functionality', '', 'Zaid', '15-08-2022 07:55:51pm'),
(56, 27, 0, 253, 'Noumi', 1, 7, '2022-08-15', '1660501800', '12:10 PM to 8:12 PM', 'Home', '1-Create UI of Offer Details \r\n2-Create UI of Receipt Details \r\n3-Create UI of Notification List \r\n4-Handle Favourite and UnFavourite in receipts list\r\n5-Handle Favourite and UnFavourite in Offers list\r\n6-Add app icon logo provided by designer \r\n7-Store L', '', 'Zaid', '15-08-2022 08:07:19pm'),
(57, 45, 0, 248, 'umrahaddons.com', 1, 8, '2022-08-15', '1660501800', '11:10', 'Office', '15/8/2022 OT TASK\r\nProvider update country, state, city drop down issue resolve\r\nOTA update country, state, city drop down issue resolve\r\nPackage list API Integration with functionality\r\nAll Providers API Integration with functionality\r\nAll Ota API Integr', '', 'Zaid', '15-08-2022 09:25:38pm'),
(59, 45, 0, 248, 'umrahaddons.com', 1, 1.5, '2022-08-15', '1660501800', '11:10', 'Office', '15/8/2022 OT TASK  (9.5 Hrs)\r\nProvider update country, state, city drop down issue resolve\r\nOTA update country, state, city drop down issue resolve\r\nPackage list API Integration with functionality\r\nAll Providers API Integration with functionality\r\nAll Ota', '', 'Zaid', '15-08-2022 09:28:38pm'),
(60, 88, 0, 248, 'umrahaddons.com', 1, 8, '2022-08-15', '1660501800', '11:40 am to 9:40 am', 'Office', 'demo of user panel and provider , changes as told by sir on user panel and provider', '', 'Zaid', '15-08-2022 09:29:12pm'),
(61, 88, 0, 248, 'umrahaddons.com', 1, 1, '2022-08-15', '1660501800', '11:40 am to 9:40 am', 'Office', 'demo with sir on user panel and provider panel, changes as told by sir', '', 'Zaid', '15-08-2022 09:30:25pm'),
(62, 75, 0, 154, 'Zowar', 1, 1, '2022-08-12', '1660242600', '12:00 To 01:00', 'Home', 'Issue of server permission as p12 file is not accessible from API ', '', 'Zaid', '16-08-2022 01:30:22am'),
(63, 76, 0, 154, 'Zowar', 1, 2, '2022-08-15', '1660501800', '10:30 pm to 12:30 am', 'Home', 'Database space issue', '', 'Zaid', '16-08-2022 11:00:52am'),
(64, 75, 0, 154, 'Zowar', 1, 2, '2022-08-16', '1660588200', '12:00 PM To 02:00 PM', 'Home', 'Free up database space and made API to delete useless entries from b2c seach table', '', 'Zaid', '16-08-2022 08:09:26pm'),
(65, 64, 0, 253, 'Noumi', 1, 4, '2022-08-15', '1660501800', '10:30 AM to 2:30 PM', 'Home', 'Noumi Admin Panel : Power admin Module UI design.', '', 'Zaid', '16-08-2022 08:21:19pm'),
(66, 96, 0, 259, 'MarketSquare', 1, 2, '2022-08-18', '1660761000', '8:00 to 10:10', 'Office', 'Grab Hub MOM-1', '', 'Zaid', '18-08-2022 10:11:49pm'),
(67, 103, 0, 253, 'Noumi', 2, 3, '2022-08-19', '1660847400', '5 pm to 8:16 pm', 'Office', 'Date: - 19-08-2022\r\nCHECKING UI AND ITS RESPONSE IN IPHONE_XS and Reported  to Developers\r\n', 'Expired', 'Zaid', '19-08-2022 08:18:18pm'),
(68, 30, 0, 253, 'Noumi', 1, 3, '2022-08-19', '1660847400', '12:00 AM to 3:00 AM', 'Home', 'Change UI according to Testers feedback, Fix build issues to upload app, Upload initial build on TestFlight', '', 'Zaid', '20-08-2022 03:26:11am'),
(69, 96, 0, 90, 'ALLAHU AKBAR', 1, 2, '2022-08-21', '1661020200', '11:00 AM to 01:00 PM', 'Home', 'Grab Hub PPT for user and provider web flow.', '', 'Zaid', '23-08-2022 01:48:23pm'),
(70, 78, 0, 210, 'Noorisys Ongoin', 1, 4, '2022-08-23', '1661193000', '10:00 PM to 02:00 AM', 'Office', 'Visa Application form filip  etc.', '', 'Zaid', '24-08-2022 03:21:13pm'),
(71, 95, 0, 81, 'Noorisys Internal', 1, 3.5, '2022-08-30', '1661797800', '10: 30 PM to 1:50 AM', 'Office', 'OT on 23/08/2022, for the Visa application and valuation report work. in night at office with the CEO and office admin.', '', 'Zaid', '30-08-2022 03:48:45pm'),
(72, 76, 0, 253, 'Noumi', 1, 4.5, '2022-09-03', '1662143400', '1 pm to 5.30 pm', 'Office', 'Noumi meeting with imran sir and working on Noumi API', '', 'Zaid', '04-09-2022 06:14:55pm'),
(73, 103, 0, 244, 'NeedJob.Today', 1, 3.5, '2022-09-05', '1662316200', '1:30 to 5:41', 'Office', 'TOTAL TIME WAS 3:45 MINUTES', '', 'Zaid', '05-09-2022 11:36:41am'),
(74, 84, 0, 244, 'NeedJob.Today', 1, 6.5, '2022-09-03', '1662143400', '12:35 PM to 07:35 PM', 'Office', 'I am working on Client CR', '', 'Zaid', '05-09-2022 11:56:05am'),
(75, 82, 0, 253, 'Noumi', 1, 4, '2022-09-03', '1662143400', '1 PM to 5 PM', 'Office', 'Meeting and uploading project on  server on heroco ', '', 'Zaid', '05-09-2022 03:28:52pm'),
(76, 30, 0, 253, 'Noumi', 1, 3, '2022-09-08', '1662575400', '6:00 PM to 9:00 PM', 'Office', 'Manage Database for favourite offers, Handle offers for make as favourite and remove favourite', '', 'Zaid', '08-09-2022 08:45:19pm'),
(77, 27, 0, 253, 'Noumi', 1, 2, '2022-09-08', '1662575400', '7:00 PM to 9:00 PM', 'Office', '1-Integrate the API of Offers List with handle paginations\r\n2-Handle Expire Offers and show expire markup.\r\n3-Upgrade the device as per the instructions given by the client \r\n4-Meeting with web developer related to the refund API.\r\n5-Parse 400 / 401 unaut', '', 'Zaid', '08-09-2022 08:51:17pm'),
(78, 77, 0, 253, 'Noumi', 1, 2, '2022-09-08', '1662575400', '7:40 PM To 9:40 PM', 'Office', 'Meeting with Imran sir and team. Make a remaining task sheet and discuss with team. Integrate the Get store details API integration and set the form value. Integrate the Update store API integration. List API integration of Manage receipt Header with pagi', '', 'Zaid', '08-09-2022 09:17:16pm'),
(79, 64, 0, 253, 'Noumi', 1, 1, '2022-09-08', '1662575400', '8 pm to 9 pm', 'Office', 'Multiple devices assign API Integration.\r\nSingle device assign API Integration.\r\nManage devices list API Integration with pagination and filter.', '', 'Zaid', '08-09-2022 09:17:28pm'),
(80, 76, 0, 253, 'Noumi', 1, 2, '2022-09-08', '1662575400', '7:30 pm to 9:30 pm', 'Office', 'All Header message API Changes\r\nMake API for Deviceassign API\r\nManage store API', '', 'Zaid', '08-09-2022 09:32:35pm'),
(81, 82, 0, 253, 'Noumi', 1, 2.5, '2022-09-08', '1662575400', '7 Pm to 9:30 Pm', 'Office', 'Refund receipt api ', '', 'Zaid', '09-09-2022 10:52:21am'),
(82, 64, 0, 253, 'Noumi', 1, 1, '2022-09-09', '1662661800', '7 pm to 8 pm', 'Office', 'getUnassignDevice API Integrate.\r\nUpdate assigned device API integrate.\r\nActive Inactive device API Integrate.\r\nUnassign device API Integrate.\r\nGet Categories master on Create campaign API Integrate.\r\nGet countries and cities master on create campaign API', '', 'Zaid', '09-09-2022 07:50:08pm'),
(83, 30, 0, 253, 'Noumi', 1, 2, '2022-09-09', '1662661800', '7:00 PM to 9:00 PM', 'Office', 'Parse amount from receipt data through JavaScript code', '', 'Zaid', '09-09-2022 08:53:39pm'),
(84, 76, 0, 253, 'Noumi', 1, 3, '2022-09-09', '1662661800', '6:30 to 9:30', 'Office', 'Update assign devices API\r\nUnassign device list API\r\nGet devices by poweradmin  id or store id\r\nget header messeage detail API\r\nactive deactive receipt attachment API\r\nunassign assigned device API\r\nadd campaign APi changes (promocode/QR code)', '', 'Zaid', '09-09-2022 09:26:18pm'),
(85, 96, 0, 259, 'MarketSquare', 1, 1.5, '2022-09-09', '1662661800', '7:45 PM to 9:30 PM', 'Office', 'Grab Hub Mobile Figma for post a job and raise a dispute flow.', '', 'Zaid', '09-09-2022 09:27:35pm'),
(86, 77, 0, 253, 'Noumi', 1, 1.5, '2022-09-09', '1662661800', '8:15 PM To 9:45 PM', 'Office', 'Integrate the Inactive API of Manage receipt Header. Integrate the power admin API. Integrate the store API. Integrate the devices API on the bases of power admin as well store. Integrate the add receipt header API. Integrate the get receipt header API. I', '', 'Zaid', '09-09-2022 09:50:49pm'),
(87, 82, 0, 253, 'Noumi', 1, 2, '2022-09-09', '1662661800', '7:42 PM to 9:42 PM', 'Office', 'Add recipt in 12 month of data ', '', 'Zaid', '10-09-2022 01:25:22pm'),
(88, 30, 0, 253, 'Noumi', 1, 3, '2022-09-10', '1662748200', '6:00 PM to 9:00 PM', 'Office', 'Change code for parsing Amount from receipt data, Design UI or custom dialog for Flash messages, Handle all API if device not matched then logout, Meeting with all team, Fix Add Receipt API, Implement functionality for search at offers list / Favourite of', '', 'Zaid', '10-09-2022 08:36:15pm'),
(89, 82, 0, 253, 'Noumi', 1, 1, '2022-09-10', '1662748200', '7.51 pm to 9:00 PM', 'Office', 'Date 10/9/22\r\ntoday task\r\ncategory wise mount\r\nget all standard admin master\r\nadd  count  and rate mark in user table  and in receipt add api', '', 'Zaid', '10-09-2022 09:01:41pm'),
(90, 76, 0, 253, 'Noumi', 1, 2.5, '2022-09-10', '1662748200', '7:30 pm to 9:00 pm', 'Office', 'get receipt attachment detail API\r\nget capmaign detail API\r\nupdate campaign banner API\r\nAdd Banner on Home page\r\nRemove banner from home page\r\nGet list of all home page banner', '', 'Zaid', '10-09-2022 09:04:31pm'),
(91, 77, 0, 253, 'Noumi', 1, 1, '2022-09-10', '1662748200', '8 PM To 9 PM', 'Office', 'Integrate the Add Receipt Attach  API. Integrate the Get Details of Receipt Attach API. Integrate the Update Receipt Attach API. Handle the all devices condition in add receipt Header API. Handle the all devices condition in add receipt Attach API. Meetin', '', 'Zaid', '10-09-2022 09:09:40pm'),
(92, 27, 0, 253, 'Noumi', 1, 2, '2022-09-10', '1662748200', '7:00 PM to 9:00 PM', 'Office', '1-Manage Banners Header Message inside the receipt Details \r\n2-Manage Filter inside the Offers List \r\n3-Manage Filter from database inside fav offers\r\n4-Create UI of Flash Message and also handle the dialog when app open and close.\r\n5-Meeting with imran s', '', 'Zaid', '10-09-2022 09:30:47pm'),
(93, 64, 0, 253, 'Noumi', 1, 1, '2022-09-10', '1662748200', '6 PM to 7 PM', 'Office', 'Campaign module Integration', '', 'Zaid', '12-09-2022 07:40:58pm'),
(94, 71, 0, 250, 'Welzo HL7', 1, 1, '2022-09-12', '1662921000', '7:30 PM To 8:30 PM', 'Office', '12 SEPTEMBER 2022  | Client Call\r\n- Demonstration\r\n	- Create an order on welzo.com\r\n	- Pharmacy Order manage (Pharmacy / Admin )\r\n	- Manage Product Inventory', '', 'Zaid', '12-09-2022 08:47:19pm'),
(95, 30, 0, 253, 'Noumi', 1, 3, '2022-09-12', '1662921000', '6:00 PM to 9:00 PM', 'Office', 'Implement functionality to search receipt in all receipt list and favourite receipt list, Read about BLE transmission in iOS', '', 'Zaid', '12-09-2022 09:11:55pm'),
(96, 82, 0, 253, 'Noumi', 1, 1.5, '2022-09-12', '1662921000', '7:35 Pm to 9:25 PM', 'Office', 'Date 12/9/22\r\n​Refunding Api with  5 year  table ', '', 'Zaid', '12-09-2022 09:21:17pm'),
(97, 76, 0, 253, 'Noumi', 1, 2, '2022-09-12', '1662921000', '7:40 pm to 9:40 pm', 'Office', 'add category with image url API\r\nupdate category with image url API\r\nget category detail API\r\nget Flash message list API', '', 'Zaid', '12-09-2022 09:27:28pm'),
(98, 27, 0, 253, 'Noumi', 1, 2, '2022-09-12', '1662921000', '7:30 to 9:30', 'Office', '1-Integrate the API of Category Master.\r\n2-Show on the landing screen.\r\n3-Manage Fav when user click onback pressed from deatils screen \r\n4-Solve issue when user click on fav button inside the listview.\r\n5-Create UI of Offers details screens (for barcode ', '', 'Zaid', '12-09-2022 09:32:00pm'),
(99, 77, 0, 253, 'Noumi', 1, 1.5, '2022-09-12', '1662921000', '8:00 PM To 9:30 PM', 'Office', 'Filter API integration of receipt header. Filter API integration of receipt attach. Add image params in add category API. Handle the get category API for the image in same model and add image category in edit API. Make a new module manage setting with rou', '', 'Zaid', '13-09-2022 11:05:28am'),
(100, 30, 0, 253, 'Noumi', 1, 3, '2022-09-13', '1663007400', '6:00 PM to 9:00 PM', 'Office', 'Manage Database for refund receipts if network not available, Change Add Receipt API, Discuss with web developers about APIs issues', '', 'Zaid', '13-09-2022 09:05:16pm'),
(101, 27, 0, 253, 'Noumi', 1, 1, '2022-09-13', '1663007400', '7:45 to 9:15', 'Office', 'Integrate Refund Receipt API (Scan NFC tag for new receipt for refund )', '', 'Zaid', '13-09-2022 09:15:51pm'),
(102, 76, 0, 253, 'Noumi', 1, 2, '2022-09-13', '1663007400', '7:10 pm to 9:10 pm', 'Office', 'Active - Inactive campaign API\r\nget details of campaign API\r\nsuper-admin list API\r\nedit Banner API fixing\r\n\r\nAdd new User Group\r\nGet List of User Group API\r\n\r\nAdd User Group privileges', '', 'Zaid', '13-09-2022 09:17:28pm'),
(103, 32, 0, 81, 'Noorisys Internal', 1, 2, '2022-09-13', '1663007400', '08:30 pm to 10:35 pm', 'Home', 'Create one more version of THanks giving black tie dinner party', '', 'Shahid Ahmed', '13-09-2022 10:24:01pm'),
(104, 76, 0, 253, 'Noumi', 1, 2, '2022-09-14', '1663093800', '6:30 pm to 8:30 pm', 'Office', 'add flash message API changes\r\nUpdate flash message API changes\r\nget user Group detail by ID API\r\nupdate setting API\r\nUser group list with privileges\' API\r\nUser list api with filter API Changes\r\nDashboard count API\r\nHome campaign remove API', '', 'Zaid', '14-09-2022 08:22:51pm'),
(105, 77, 0, 250, 'Welzo HL7', 1, 1, '2022-09-14', '1663093800', '7:45 PM TO 8:45 PM', 'Office', ' Bug fixing with Mohsin and test the test kit order flow. Build the customer panel, admin panel and pharmacy panel and test the changes. Meeting with Imran sir and team. Disc Bug fixing with Mohsin and test the test kit order flow. Build the customer pane', '', 'Zaid', '15-09-2022 11:22:06am'),
(106, 71, 0, 250, 'Welzo HL7', 1, 1.5, '2022-09-14', '1663093800', '7:30 PM TO 9:00 PM', 'Office', 'Meeting, Discussion, Flow Testing ( Test Kit Order ) With CEO and Team', '', 'Zaid', '15-09-2022 11:22:39am'),
(107, 30, 0, 253, 'Noumi', 1, 2.5, '2022-09-14', '1663093800', '6:30 PM to 9:00 PM', 'Office', 'Create Dialog for refund amount, Change API to refund receipt, Handle conditions for refund', '', 'Zaid', '15-09-2022 12:27:30pm'),
(108, 41, 0, 224, 'FasterChecks', 1, 1, '2022-09-15', '1663180200', '3:10 to 4:20PM', 'Home', '2000 ORT card generated_ merged in 1k / 1k file, inserted to admin and sent to client. ', '', 'Zaid', '15-09-2022 04:21:17pm'),
(109, 64, 0, 253, 'Noumi', 1, 1, '2022-09-14', '1663093800', '7:30 PM to 8:30 PM', 'Office', 'Campaign View API Integration.\r\nIncomplete campaign Handling on Edit campaign.\r\nCampaign flash msg file added.\r\nAdd Campaign to home page API Integration.\r\nRemove Campaign home page API Integration.\r\nList Homepage campaign UI and API Integration.', '', 'Zaid', '15-09-2022 07:56:12pm'),
(110, 76, 0, 253, 'Noumi', 1, 1, '2022-09-15', '1663180200', '7:00 pm to 8:00 pm', 'Office', 'Registered users List Filter API changes.\r\nget sub-admin API changes.\r\nget all unverified header text message API\r\nget all unverified header receipt API\r\nget all unverified campaign API\r\nGet power admin API bug fixes\r\nget all campaign API bug fixes\r\nget d', '', 'Zaid', '15-09-2022 08:05:06pm'),
(111, 27, 0, 253, 'Noumi', 1, 2, '2022-09-15', '1663180200', '7:00 PM to 9:00 PM', 'Office', '1-Integrate the API of landing API.\r\n2-Handle Category Amount and store it on database with master data.\r\n3-Show list of refunded list inside the parent list details.\r\n4-Show detail page of refunded receipt with add banners and header message.\r\n\r\n5-Demo w', '', 'Zaid', '15-09-2022 08:42:24pm'),
(112, 30, 0, 253, 'Noumi', 1, 2.5, '2022-09-15', '1663180200', '6:20 PM to 8:50 PM', 'Office', 'Integrate Flash messages API and manage database, App Demo with Imran Sir', '', 'Zaid', '15-09-2022 08:48:21pm'),
(113, 30, 0, 253, 'Noumi', 1, 1, '2022-09-16', '1663266600', '8:00 PM to 9:00 PM', 'Office', 'Work on feedback of Imran Sir (Demo with Tester), Validate and upload new build on TestFlight', '', 'Zaid', '16-09-2022 09:08:03pm'),
(114, 104, 0, 253, 'Noumi', 1, 1.5, '2022-09-16', '1663266600', '8:15PM - 09:54PM', 'Office', '- TEST ON NOUMI APP\r\n- MEETING WITH DEVELOPERS', '', 'Zaid', '16-09-2022 09:55:18pm'),
(115, 82, 0, 253, 'Noumi', 1, 2, '2022-09-16', '1663266600', '8 pm to 10 PM', 'Office', 'Date 16/9/22\r\n​Crone job  and delete old recipt  and demo of admin panel ', '', 'Zaid', '16-09-2022 10:01:06pm'),
(116, 76, 0, 253, 'Noumi', 1, 3, '2022-09-16', '1663266600', '7:00 pm to 10 pm', 'Office', 'Testing admin panel and bug fixing and DEMO', '', 'Zaid', '16-09-2022 10:01:25pm'),
(117, 103, 0, 253, 'Noumi', 1, 2, '2022-09-16', '1663266600', '8 pm to 10 pm', 'Office', 'Noumi admin panel demo', '', 'Shahid Ahmed', '16-09-2022 10:02:14pm'),
(118, 27, 0, 253, 'Noumi', 1, 1, '2022-09-16', '1663266600', '9:00 to 10:00', 'Office', 'Meeting with imran sir related to new noumi devices network issues and also explain application flow to the tester.\r\nBuild apk and share it to clients group. Talk with client related to the BLE device network issues.', '', 'Zaid', '16-09-2022 10:20:02pm'),
(119, 30, 0, 253, 'Noumi', 1, 1, '2022-09-19', '1663525800', '7:40 PM to 8:40 PM', 'Office', 'OT - Run and fix the example code of BLE in real device', '', 'Zaid', '19-09-2022 08:31:06pm'),
(120, 76, 0, 253, 'Noumi', 1, 1, '2022-09-19', '1663525800', '07:40 pm to 8:40 pm', 'Office', 'Bug fixing, Add banner API changes, MailChimp Intigration and setup live sever with shahid bhai', '', 'Zaid', '19-09-2022 08:32:50pm'),
(121, 27, 0, 247, 'Zowar mobile App', 1, 1, '2022-09-19', '1663525800', '7:50 to 8:50', 'Office', '1-Solve issues when reject the test-flight from app-store.\r\n2-Again upload new build for B2B and publish the app.\r\n', '', 'Zaid', '19-09-2022 08:47:34pm'),
(122, 30, 0, 253, 'Noumi', 1, 1, '2022-09-20', '1663612200', '7:30 PM to 8:30 PM', 'Office', 'Create 150+ products in Aeronium POS app and add 150+ product to cart to test the receipt', '', 'Zaid', '20-09-2022 08:27:26pm'),
(123, 71, 0, 250, 'Welzo HL7', 1, 2, '2022-09-22', '1663785000', '7:20 PM To 9:20 PM', 'Office', 'Sending the Lab form to the mintsoft', '', 'Shahid Ahmed', '23-09-2022 11:06:10am'),
(124, 71, 0, 250, 'Welzo HL7', 1, 2, '2022-09-21', '1663698600', '7:00 PM To 9:00 PM', 'Office', 'Pharmacy Cancel Order API functionality', '', 'Shahid Ahmed', '23-09-2022 11:07:39am'),
(125, 30, 0, 259, 'MarketSquare', 1, 1, '2022-09-24', '1663957800', '7:30 PM to 8:30 PM', 'Office', 'Design Intro text screens(3)', '', 'Shahid Ahmed', '24-09-2022 08:25:06pm'),
(126, 104, 0, 248, 'umrahaddons.com', 2, 1, '2022-09-24', '1663957800', '07:30 PM  -  08:30 PM', 'Office', 'TEST EXECUTED ON UMRAHADDONS', 'Expired', 'Zaid', '24-09-2022 08:36:35pm'),
(127, 103, 0, 248, 'umrahaddons.com', 2, 1, '2022-09-24', '1663957800', '7:30 to 8:30', 'Office', 'TEST EXECUTED ON UMRAHADDONS ADMIN PANEL/USER PANEL/PROVIDER PANEL', 'Expired', 'Zaid', '24-09-2022 08:38:37pm'),
(128, 77, 0, 250, 'Welzo HL7', 1, 1.5, '2022-09-27', '1664217000', '9:20 PM To 10 PM', 'Home', 'Make a manage suspend order module with routing. Make suspend order list and view component with routing. Make a UI for the list page. Make a UI for the detail page.', '', 'Shahid Ahmed', '27-09-2022 10:59:55pm'),
(129, 24, 0, 250, 'Welzo HL7', 1, 1, '2022-09-27', '1664217000', '7pm to 8pm', 'Office', 'Welzo demo call with CEO and developers', '', 'Zaid', '28-09-2022 07:25:47pm'),
(130, 30, 0, 253, 'Noumi', 1, 1, '2022-09-28', '1664303400', '7:45 PM to 8:45 PM', 'Office', 'Working on client feedback file', '', 'Shahid Ahmed', '28-09-2022 08:18:58pm'),
(131, 24, 0, 250, 'Welzo HL7', 1, 3, '2022-09-28', '1664303400', '6.45pm to 9.45pm', 'Office', 'Welzo demo with a client', '', 'Zaid', '28-09-2022 09:38:51pm'),
(133, 71, 0, 250, 'Welzo HL7', 1, 3, '2022-09-27', '1664217000', '9:00 PM To 12:00 PM', 'Home', 'OT 3 HOURS \r\n- Manage Suspended Order \r\n- Mark pharmacies order as paid from Shopify\r\n- Add filter to get pharmacies paid and unpaid orders', '', 'Shahid Ahmed', '29-09-2022 11:13:18am'),
(134, 71, 0, 250, 'Welzo HL7', 1, 4, '2022-09-28', '1664303400', '6:00 PM To 9:45 PM', 'Office', '- Client Call \r\n	- Pharmacy Panel \r\n		- Manage bulk edit product inventory \r\n		- Export Order in CSV file\r\n		- Mintsoft order / sending document to mintsoft\r\n		- Discussion\r\n		- Testing', '', 'Shahid Ahmed', '29-09-2022 11:19:11am'),
(135, 77, 0, 250, 'Welzo HL7', 1, 1, '2022-09-29', '1664389800', '8:30 PM To 9:30 PM', 'Office', ' Client call for the demo. Build the admin panel, customer panel and pharmacy panel. ', '', 'Shahid Ahmed', '29-09-2022 12:16:24pm'),
(136, 24, 0, 250, 'Welzo HL7', 1, 1, '2022-09-29', '1664389800', '7.30pm to 8.30pm', 'Office', 'welzo demo call with client', '', 'Zaid', '29-09-2022 08:36:57pm'),
(137, 71, 0, 250, 'Welzo HL7', 1, 2, '2022-09-29', '1664389800', '7:00 PM To 9:00 PM', 'Office', '29 SEPTEMBER 2022 \r\n	- Client Call\r\n		- Pharmacy Order Cancel \r\n		- Suspended Order \r\n		- Generate Invoice\r\n		- Manage Prescriber \r\n		- Prescriber info in prescription', '', 'Shahid Ahmed', '30-09-2022 11:39:21am'),
(138, 41, 0, 224, 'FasterChecks', 1, 1, '2022-10-03', '1664735400', '5:40PM to 6:50PM', 'Home', 'Checking client files, for unused codes in 500 files, escalated result with client, provide 5, samples cards for ORT, Then 200 for ORT and then 100 ORT after that 200 ORT Image cards generated added to admin and sent to client. ', '', 'Shahid Ahmed', '03-10-2022 06:52:34pm'),
(139, 27, 0, 81, 'Noorisys Internal', 1, 3, '2022-10-02', '1664649000', '7:00 PM to 10:00 PM', 'Home', 'Quran PDF (Madinah Shareef)\r\n1-Uplaod Quran PDF with add tasbeh in an app \r\n\r\nAmarveer \r\n1-Meeting with client related to the new changes (@Sizing)', '', 'Shahid Ahmed', '04-10-2022 08:30:08pm'),
(141, 27, 0, 253, 'Noumi', 1, 1, '2022-10-13', '1665599400', '8:15 to 9:15', 'Office', 'Work on client feedback and test, Client call about design changes, Change Home Screen design, change title bars of all pages', '', 'Shahid Ahmed', '13-10-2022 09:20:58pm'),
(142, 30, 0, 253, 'Noumi', 1, 1, '2022-10-13', '1665599400', '8:23 PM to 9:23 PM', 'Office', 'Work on client feedback and test, Client call about design changes, Change Home Screen design, change title bars of all pages', '', 'Shahid Ahmed', '13-10-2022 09:24:36pm'),
(143, 89, 0, 265, 'Noorisys.com Redesign', 1, 2, '2022-10-14', '1665685800', '6 PM - 8 PM', 'Office', 'Noorisys Redesign ', '', 'Zaid', '14-10-2022 08:03:49pm'),
(144, 30, 0, 253, 'Noumi', 1, 1, '2022-10-14', '1665685800', '8:00 PM to 9:00 PM', 'Office', 'Work on client feedback for design, Change UI for(Receipt list, favourite receipt list, Offers list, favourite offers list, Retailers showing on Map, Settings page), Manage custom colour schemes', '', 'Zaid', '14-10-2022 08:58:52pm'),
(145, 43, 0, 248, 'umrahaddons.com', 1, 1, '2022-10-14', '1665685800', '08 to 9', 'Office', 'For Uploading on Front Panel on the Live server', '', 'Zaid', '14-10-2022 09:09:17pm'),
(146, 30, 0, 253, 'Noumi', 1, 6, '2022-10-15', '1665772200', '9:10 AM to 3:10 PM', 'Office', 'Work on client feedback for design, Change UI for(Monthly Spending Review, Redesign custom Tabs and animate home tab, Design Intro Screens and handle the conditions)', '', 'Zaid', '15-10-2022 02:56:54pm'),
(147, 27, 0, 253, 'Noumi', 1, 5.5, '2022-10-15', '1665772200', '10:00 AM to 3:40 PM', 'Office', 'Work on client feedback for design, Change UI for(Monthly Spending Review, Redesign custom Tabs and animate home tab, Design Intro Screens and handle the conditions) ', '', 'Zaid', '15-10-2022 03:35:39pm'),
(148, 41, 0, 224, 'FasterChecks', 1, 1, '2022-10-21', '1666290600', '7:30 AM to 8:27 AM', 'Home', 'ORT 1k card generated merged in 1 file, inserted to admin and sent to client........ ', '', 'Shahid Ahmed', '21-10-2022 08:30:42am'),
(149, 32, 0, 253, 'Noumi', 1, 1, '2022-10-20', '1666204200', '08:30 to 09:30', 'Office', 'Create noumi device Illustration for guide screen', '', 'Shahid Ahmed', '22-10-2022 05:00:14pm'),
(150, 75, 0, 252, 'SesaPay Phase 4', 1, 8, '2022-10-28', '1666895400', '11:30', 'Office', 'sesapay phase 4 meeting with team ( introduction to old system and requirements of new system )', '', 'Zaid', '28-10-2022 08:15:04pm'),
(151, 27, 0, 253, 'Noumi', 1, 1, '2022-10-31', '1667154600', '03:00 PM tp 4 PM', 'Office', 'Fix issue related to NFC refund process.', '', 'Shahid Ahmed', '31-10-2022 03:56:47pm'),
(152, 24, 0, 210, 'Noorisys Ongoin', 1, 1, '2022-10-29', '1666981800', '7pm to 8pm', 'Office', 'Meeting with CEO and management', '', 'Zaid', '31-10-2022 08:36:52pm'),
(153, 36, 0, 264, 'Matness App', 1, 1, '2022-11-01', '1667241000', '8 PM to 9 PM', 'Office', 'Share the Post/Training on Social media ', '', 'Imran Tabani', '01-11-2022 08:53:10pm'),
(154, 82, 0, 269, 'Umrah project', 1, 2.5, '2022-11-02', '1667327400', '8:45 to 11::45', 'Home', 'umrahamall project  rework on angular built  ', '', 'Shahid Ahmed', '03-11-2022 03:21:18pm'),
(155, 109, 0, 269, 'Umrah project', 1, 3.5, '2022-11-02', '1667327400', '8:30 to 12', 'Office', 'Upload Project in Server and Record Demo of Admin Panel and Provider Panel', '', 'Shahid Ahmed', '03-11-2022 08:50:01pm'),
(156, 88, 0, 269, 'Umrah project', 1, 3, '2022-11-02', '1667327400', '9 pm to 12 pm', 'Office', 'umrah mall build for live server, testing for api issue and screen record for the demo.', '', 'Shahid Ahmed', '03-11-2022 08:52:24pm'),
(157, 24, 0, 252, 'SesaPay Phase 4', 1, 2, '2022-11-07', '1667759400', '10:45pm to 01:00am', 'Home', 'Phase 4 document update.', '', 'Zaid', '08-11-2022 12:57:04am'),
(159, 36, 0, 264, 'Matness App', 1, 1, '2022-11-08', '1667845800', '7:30 PM to 8:30 PM', 'Office', 'Change Privacy Policy, Terms, and Condition URL and Load the new URL in Webview\r\n- Change UI of Graph on User Profile and Other user profile Page (Show Only 7 Days Report) ', '', 'Shahid Ahmed', '08-11-2022 08:39:08pm'),
(160, 84, 0, 259, 'MarketSquare', 1, 1, '2022-11-08', '1667845800', '8:20 to 9:20 PM', 'Office', 'Market Square Milestone1 Client Call with B.A', '', 'Shahid Ahmed', '09-11-2022 11:59:48am'),
(161, 36, 0, 264, 'Matness App', 1, 1, '2022-11-09', '1667932200', '7:30 PM to 8:30 PM', 'Office', '- Show Only 7 Days Training/Workout Data on Graph (functionality) Users Profile', '', 'Zaid', '09-11-2022 08:28:32pm'),
(162, 76, 0, 81, 'Noorisys Internal', 1, 2, '2022-11-14', '1668364200', '10 pm to 12 am', 'Office', 'Meeting with imran sir for Noorisys Website redesign', '', 'Zaid', '15-11-2022 03:01:27pm'),
(163, 27, 0, 253, 'Noumi', 1, 1.5, '2022-11-17', '1668623400', '11:30 PM to 01:00 AM', 'Home', 'Attending call with developer  (IOT) related to BLE , also explain how BLE work and which characteristics used for getting the Read and write and notify operations.One more important things has explain what the issues we are facing when getting the record', '', 'Zaid', '18-11-2022 12:11:56pm'),
(164, 32, 0, 265, 'Noorisys.com Redesign', 1, 5.5, '2022-11-19', '1668796200', '12:30pm to 07:10pm (1hour Break)', 'Office', 'Creating images for portfolio its header and detail pages', '', 'Zaid', '19-11-2022 07:08:42pm'),
(165, 36, 0, 264, 'Matness App', 1, 7, '2022-11-19', '1668796200', '11:30 AM to 3:30PM , 5:30 PM to 8:30 PM', 'Home', '- Delete the OTP. (Change Login functionality)                                                                                              \r\n- OTP: specify in a text box \"Tu as reçu un code à 6 chiffres par email\".\r\n\r\n- Implement Update Score API \r\n- \"Sc', '', 'Zaid', '19-11-2022 09:10:58pm'),
(166, 76, 0, 81, 'Noorisys Internal', 1, 7, '2022-11-19', '1668796200', '12 pm to 8 pm', 'Office', 'Noumi Website Redesign', '', 'Zaid', '21-11-2022 12:40:00pm'),
(167, 36, 0, 264, 'Matness App', 1, 1, '2022-11-24', '1669228200', '8:10 PM to 9:10 PM', 'Office', '- API Response Changes  \r\n- Fixing Issues ', '', 'Zaid', '24-11-2022 09:07:39pm'),
(168, 85, 0, 264, 'Matness App', 1, 4, '2022-11-24', '1669228200', '4', 'Home', 'chatting issues resolved in matness app and add 2 tables in the database, create 2 models for last message update and status update in the chatting functionality. ', '', 'Shahid Ahmed', '25-11-2022 08:28:56pm'),
(169, 32, 0, 243, 'Janam', 1, 2, '2022-11-29', '1669660200', '28-11 11:30 am to 29-11 01:30 am', 'Home', 'Create slides of small baby video', '', 'Shahid Ahmed', '29-11-2022 08:36:35pm'),
(170, 95, 0, 243, 'Janam', 1, 3.5, '2022-12-05', '1670178600', '12:30 to 04:00', 'Office', 'OT Date: 26/11/2022 (Saturday)\r\nCall with CEO and Dr. Sameer Nakedar on Janam App.\r\n\r\nNote: Pl. check the OT hours from biometric.\r\n', '', 'Imran Tabani', '05-12-2022 11:20:51am'),
(171, 27, 0, 253, 'Noumi', 1, 1, '2022-12-06', '1670265000', '8:15 PM to 9:30 PM', 'Office', 'Attend call with Eposnow support for setup the application on cloud. and also create four demo receipts using eposnow.', '', 'Zaid', '06-12-2022 09:35:46pm'),
(172, 27, 0, 253, 'Noumi', 1, 1, '2022-12-06', '1670265000', '10:30 PM to 11:30 PM', 'Home', 'Create sample receipt using windows based EPOSNOW.', '', 'Zaid', '06-12-2022 11:46:18pm'),
(173, 24, 0, 253, 'Noumi', 1, 2, '2022-12-06', '1670265000', '7pm to 9pm', 'Office', 'Receipt generation and client call & email', '', 'Zaid', '07-12-2022 11:01:26am'),
(174, 24, 0, 250, 'Welzo HL7', 1, 1, '2022-12-12', '1670783400', '8pm to 9pm', 'Office', 'Worked on the QR code issue with Mohsin Mirza, Found the problem, and fixed it the following day.', '', 'Zaid', '13-12-2022 11:28:00am'),
(175, 95, 0, 243, 'Janam', 1, 1, '2022-12-20', '1671474600', '8:15 PM to 9:15 PM', 'Office', 'Janam PPT on abdominal pain.\r\nVideo corrections, Video screenshots and voiceover text running as subtitles. ', '', 'Imran Tabani', '21-12-2022 12:04:43pm'),
(176, 32, 0, 243, 'Janam', 1, 3, '2023-01-03', '1672684200', 'Tue 11:00 PM to Wed 2:00 AM', 'Home', 'Working on Perineal Trauma video Slide no. 10 done in this hours', '', 'Shahid Ahmed', '04-01-2023 03:54:25pm'),
(178, 32, 0, 81, 'Noorisys Internal', 1, 6, '2023-01-05', '1672857000', 'From - 11:00 pm to 3:00 am and From 09:00 am to 11:00 am', 'Home', 'Overtime Continue creating PPT pages and some changes in pages ', '', 'Shahid Ahmed', '06-01-2023 07:02:22pm'),
(179, 95, 0, 81, 'Noorisys Internal', 0, 2, '2023-01-04', '1672770600', '07:25 to 09:20', 'Office', 'Account\'s meeting.\r\n1. Client drafted emails and sent invoices. \r\n  Zowar + Welzo + Meats4All update + Bhaijaan Tours & Misc.\r\n', '', '', '06-01-2023 07:55:36pm'),
(180, 32, 0, 154, 'Zowar', 1, 8, '2023-01-08', '1673116200', 'Sun 03:00 pm to 09:00pm and then 11:00pm to 2:30pm', 'Home', 'Merge the videos and Create images slide animation as Video and finalize all the videos (14min length)', '', 'Shahid Ahmed', '09-01-2023 11:55:47am'),
(181, 36, 0, 264, 'Matness App', 1, 2, '2023-01-12', '1673461800', '9:50 AM to 10:50AM , 7:50PM to 8:50PM ', 'Office', 'CR\r\nRound the corners of the application icon\r\nThe \"commence l\'entraînement\" button should be corrected to \"commencer le challenge\"\r\nDo not write a score in the publication but only below it.', '', 'Zaid', '13-01-2023 07:10:37pm'),
(182, 30, 0, 253, 'Noumi', 1, 3, '2023-01-15', '1673721000', '6:00 PM to 9:00 PM', 'Home', 'Handle password validation UI at the registration page with animation', '', 'Shahid Ahmed', '16-01-2023 11:44:44am'),
(183, 30, 0, 253, 'Noumi', 1, 4, '2023-01-16', '1673807400', '9:00 PM to 1:00 AM', 'Home', 'Change email flow, change password, Design dialog and change texts', '', 'Shahid Ahmed', '16-01-2023 08:23:59pm'),
(184, 32, 0, 243, 'Janam', 1, 1.5, '2023-01-16', '1673807400', '12:00 pm to 01:30 am', 'Home', 'Add subtitle after changes in perineal trauma video as per Sameer ', '', 'Shahid Ahmed', '17-01-2023 11:45:04am'),
(185, 27, 0, 253, 'Noumi', 1, 1.5, '2023-01-17', '1673893800', '7:30 PM to 09:00 PM', 'Office', 'Working with Shahid bhai and also meeting with imran sir related to the refund commands.', '', 'Shahid Ahmed', '17-01-2023 09:09:14pm'),
(186, 24, 0, 253, 'Noumi', 1, 1, '2023-01-17', '1673893800', '7.30pm to 8.30pm', 'Office', 'Noumi receipt writing with Saim', '', 'Zaid', '18-01-2023 12:13:59pm'),
(187, 36, 0, 230, 'Coursier Médical', 1, 1.5, '2023-01-19', '1674066600', '9:50 AM to 11:20 AM', 'Office', '19-01-2023 Re-enable Delivery Man login and app functionality (CR)', '', 'Shahid Ahmed', '19-01-2023 08:15:34pm'),
(188, 27, 0, 81, 'Noorisys Internal', 1, 2, '2023-01-21', '1674239400', '11:10 AM to 1:15 PM', 'Office', 'For Flutter Interview ', '', 'Shahid Ahmed', '21-01-2023 01:18:59pm'),
(189, 32, 0, 81, 'Noorisys Internal', 1, 1.5, '2023-01-21', '1674239400', '12:00 pm to 01:30 pm', 'Office', 'Take designers Interview', '', 'Shahid Ahmed', '23-01-2023 11:42:33am'),
(190, 36, 0, 264, 'Matness App', 1, 4, '2023-01-21', '1674239400', '10 AM to 2 PM ', 'Office', '21-01-2023 Fixing issue \r\n- \"All lines of text within a colored component (such as training model buttons) or white component must be black. \r\nOther text on a black background like the application background (comment, score,...) or on the graphic must be ', '', 'Shahid Ahmed', '23-01-2023 08:39:06pm'),
(191, 30, 0, 253, 'Noumi', 1, 2, '2023-01-23', '1674412200', '6:45 PM to 8:45 PM', 'Office', '- Integrate refund process for BLE receipts (Calculate CRC value of each chunks)', '', 'Shahid Ahmed', '23-01-2023 08:46:21pm'),
(193, 30, 0, 253, 'Noumi', 1, 2, '2023-01-24', '1674498600', '6:30 PM to 8:30 PM', 'Office', 'Calculate CRC value of each chunks', '', 'Shahid Ahmed', '24-01-2023 08:41:45pm'),
(194, 27, 0, 253, 'Noumi', 1, 2, '2023-01-24', '1674498600', '8:30 PM to 9:30 PM 10:30 PM to 11:30 PM', 'Home', 'Create POS-80 image parsing issue documents. \r\n8:30 PM to 9:30 PM  @office with CTO\r\n10:30 PM to 11:30 PM @home ', '', 'Shahid Ahmed', '24-01-2023 11:38:45pm'),
(195, 24, 0, 253, 'Noumi', 1, 1, '2023-01-24', '1674498600', '8pm to 9pm', 'Office', 'POS 80 receipt parsing check with Saim and prepare a report', '', 'Zaid', '25-01-2023 11:43:06am'),
(196, 36, 0, 230, 'Coursier Médical', 1, 1.5, '2023-01-25', '1674585000', '10 AM to 11:30 AM ', 'Office', '25-01-2023 - Uncomment the option \"Deliver to my address\" while ordering the medicine.\r\n- Build Release and upload on playstore', '', 'Shahid Ahmed', '25-01-2023 08:37:23pm'),
(197, 30, 0, 253, 'Noumi', 1, 1, '2023-01-25', '1674585000', '7:45 PM to 8:45 PM', 'Office', 'Integrate refund process for BLE receipts\r\n- Calculate CRC and convert to hex string and reverse the string\r\n- Calculate Size of CRC and convert to hex string and reverse the string\r\n- Calculate XOR of size \r\n- Finalise the each chunks and write to file', '', 'Shahid Ahmed', '25-01-2023 08:41:45pm'),
(198, 76, 0, 253, 'Noumi', 1, 5.5, '2023-01-26', '1674671400', '11:30 pm to 6:00 pm', 'Office', 'Testing and uploading on live server', '', 'Shahid Ahmed', '26-01-2023 05:54:12pm'),
(199, 27, 0, 253, 'Noumi', 1, 3, '2023-01-26', '1674671400', '12:30 PM  to 3:30 PM', 'Office', 'Testing the app and also help to aqueel for creating md5', '', 'Shahid Ahmed', '26-01-2023 06:05:18pm'),
(200, 27, 0, 243, 'Janam', 1, 2, '2023-01-26', '1674671400', '3:30 PM to 5:30 PM', 'Office', 'Creating certificate of apple developer development and distribution and also setup code on xCode for publish \r\nfound some issues try to fix but not resolve due to flutter sdk. ', '', 'Shahid Ahmed', '26-01-2023 06:07:00pm'),
(201, 30, 0, 253, 'Noumi', 1, 8, '2023-01-26', '1674671400', '9:43 AM to 6:43 PM', 'Office', '26-01-2022 \r\nNoumi  — 8\r\nIntegrate refund process for BLE receipts\r\n- Generate ROPEN command according to chunks file size\r\n- Generate MD5 of the whole chunks (remove spaces and line breaks from chunks)\r\n- Generate RDONE command by chunks MD5\r\n- Start to ', '', 'Shahid Ahmed', '26-01-2023 06:15:40pm'),
(202, 30, 0, 253, 'Noumi', 1, 1, '2023-01-27', '1674757800', '8:00 PM to 9:00 PM', 'Office', '27-01-2022 \r\nNoumi  — 8\r\nIntegrate refund process for BLE receipts\r\n- Fix POS-80 driver issue\r\n- Write ROPEN command\r\n- Write each chunk one by one\r\n- Write RDONE command\r\n- Test (50 / 100/ 150 / 200  products receipt)\r\n- Failed refund process (Need to wo', '', 'Zaid', '27-01-2023 09:00:54pm'),
(203, 30, 0, 253, 'Noumi', 1, 1, '2023-01-28', '1674844200', '7:15 PM to 8:15 PM', 'Office', '28-01-2022 \r\nIntegrate refund process for BLE receipts\r\n- Refund process completed\r\n- Tested (50 / 100/ 150 / 200  products receipt)\r\n- Changed font according to feedback at splash and tabs title', '', 'Zaid', '28-01-2023 08:19:33pm'),
(204, 76, 0, 253, 'Noumi', 1, 1.5, '2023-01-31', '1675103400', '8:30pm to 10 pm', 'Office', 'Discussion final launch document with imran sir', '', 'Shahid Ahmed', '31-01-2023 09:53:40pm'),
(205, 36, 0, 264, 'Matness App', 1, 3, '2023-01-31', '1675103400', '9:00 PM to 11:59 PM', 'Office', '31-01-2023\r\n- Change all training titles (landing screen, during training, scoreboard and profile)\r\n- Displays for each type of challenge correspond to this (landing screen, during training, scoreboard and profile) \r\nAMRAP : TITLE + TIME + LIST OF MOVEMEN', '', 'Shahid Ahmed', '01-02-2023 11:01:36am'),
(206, 24, 0, 253, 'Noumi', 1, 1, '2023-01-31', '1675103400', '8.30pm to 9.30pm', 'Office', 'Worked on Noumi receipt with Saim and the CEO', '', 'Zaid', '01-02-2023 11:25:29am'),
(207, 27, 0, 253, 'Noumi', 1, 1.5, '2023-01-31', '1675103400', '8:30 PM to 10:00 PM', 'Office', 'Collaborating with the CEO to develop a roadmap and monitor progress in NOUMI, as well as determining the process for launching the app with full functionality.', '', 'Zaid', '01-02-2023 08:37:25pm'),
(208, 85, 0, 264, 'Matness App', 1, 4, '2023-01-31', '1675103400', '4', 'Office', 'Project: Matness \r\nWhen user B does the training of user A, the score of A and B should appear on the scoreboard of the publication of A and B.\"  \r\n\r\nAPI Name\r\nuser/challenge_rank/\r\npost_id:', '', 'Zaid', '01-02-2023 09:23:15pm'),
(209, 89, 0, 230, 'Coursier Médical', 1, 1, '2023-02-01', '1675189800', '6:00 to 7:00 PM', 'Office', 'Demo Meeting ', '', 'Zaid', '02-02-2023 12:05:27pm'),
(210, 90, 0, 273, 'CM clone', 1, 1, '2023-02-01', '1675189800', '6 pm to 7 pm', 'Office', 'Coursier Medical Demo Meeting', '', 'Zaid', '02-02-2023 12:09:54pm'),
(211, 86, 0, 230, 'Coursier Médical', 1, 1, '2023-02-01', '1675189800', '6pm to 7pm', 'Office', 'Demo meeting', '', 'Zaid', '02-02-2023 12:21:37pm');
INSERT INTO `user_ot` (`id`, `user_id`, `manager_id`, `project_id`, `project_name`, `ot_status`, `ot_hours`, `ot_date`, `str_ot_date`, `ot_time`, `ot_location`, `requested_description`, `rejected_description`, `action_by`, `created_datetime`) VALUES
(212, 36, 0, 264, 'Matness App', 1, 1.5, '2023-02-03', '1675362600', '10 : 00 AM to 11:00 AM , 10:45PM to 11:30 PM', 'Office', '03-02-2023 FOR ROUND>> Correct the set point below FOR ROUND to \"Effectuer les tours dans l\'ordre le plus vite possible\" - Delete \"\"Continuer le plus longtemps possible\"\" - Delete \"Continuer le plus longtemps possible\"', '', 'Zaid', '03-02-2023 11:49:19pm'),
(213, 36, 0, 230, 'Coursier Médical', 1, 5, '2023-02-04', '1675449000', '12:00 PM  to 6:30 PM, lunch break 3:00 OM to 4:30PM  ', 'Home', '- RND on Twilio Integration', '', 'Zaid', '06-02-2023 10:55:19am'),
(214, 36, 0, 273, 'CM clone', 1, 2, '2023-02-05', '1675535400', '11:52 AM  to 02:14 PM', 'Home', '- Create a Project (Clone of Coursier Medical)\r\n- Disable Hospital Model (Login Page)\r\n- Patient app Disable Hospital functionality\r\n- Change theme color', '', 'Zaid', '06-02-2023 10:58:19am'),
(215, 83, 0, 230, 'Coursier Médical', 1, 5, '2023-02-04', '1675449000', '11:30 am to 5:45 pm ', 'Home', 'It is related to Twilio integration.', '', 'Zaid', '06-02-2023 11:27:55am'),
(216, 95, 0, 243, 'Janam', 1, 1, '2023-02-04', '1675449000', '06:15 to 07:15', 'Home', 'Hindi Transcribing. (Typing + Translation) shared to Dr Sameer on the same day for feedback.\r\nObstetric Cholestasis', '', 'Shahid Ahmed', '06-02-2023 08:37:37pm'),
(217, 95, 0, 243, 'Janam', 1, 1, '2023-02-06', '1675621800', '8:15 PM to 9:15 PM', 'Office', 'Updated video folder and added links to new sheets.\r\n(Home + Office)', '', 'Shahid Ahmed', '06-02-2023 09:19:11pm'),
(218, 97, 0, 243, 'Janam', 1, 2.5, '2023-02-06', '1675621800', '6 pm to 8:25', 'Office', 'Recording for Janam voiceover.', '', 'Shahid Ahmed', '07-02-2023 03:58:26pm'),
(219, 30, 0, 253, 'Noumi', 1, 2, '2023-02-07', '1675708200', '9:30 AM to 11:30 AM', 'Office', '07-02-2022 \r\nNOUMI  — 10\r\n- Work on testers feedback file (Make iOS app similar to Android)', '', 'Zaid', '07-02-2023 08:31:12pm'),
(221, 78, 0, 81, 'Noorisys Internal', 0, 8, '2023-01-26', '1674671400', '-', 'Client Site', 'going to Mumbai for Laptop Purchase.', '', '', '08-02-2023 01:31:31pm'),
(222, 78, 0, 81, 'Noorisys Internal', 0, 6, '2023-01-21', '1674239400', '-', 'Office', 'Interview and Imran sir cabin door repairing', '', '', '08-02-2023 01:33:17pm'),
(223, 78, 0, 81, 'Noorisys Internal', 1, 6, '2023-02-01', '1675189800', '8pm to 2am', 'Office', 'Laptop Repairing and format Installation windows 10  ', '', 'Shahid Ahmed', '08-02-2023 01:36:25pm'),
(224, 36, 0, 264, 'Matness App', 1, 1.5, '2023-02-08', '1675794600', '10:00 AM to 11:45', 'Office', '08-02-2023 *Death by Calculation*\r\nFor Round  \r\n- No of laps wrong value (score is displayed instead of the selected number of rounds)\r\nDeath By \r\n- Display the no of movements perform in every minutes', '', 'Shahid Ahmed', '08-02-2023 08:37:21pm'),
(226, 30, 0, 253, 'Noumi', 1, 1.5, '2023-02-08', '1675794600', '10:00 AM to 11:30 AM', 'Office', '- Work on testers feedback file (Make iOS app similar to Android)', '', 'Shahid Ahmed', '08-02-2023 08:49:39pm'),
(227, 30, 0, 253, 'Noumi', 1, 1, '2023-02-09', '1675881000', '9:55 AM To 10:55 AM', 'Office', '- Implement encryption and decryption procedures for Retailers record, which includes Retailer name, email address, website and mobile number', '', 'Shahid Ahmed', '09-02-2023 07:55:02pm'),
(228, 30, 0, 247, 'Zowar mobile App', 1, 1, '2023-02-09', '1675881000', '10:55 AM To 11:55 AM', 'Office', '- Hide button “Umrah without visa” and “switch account to B2C and GCC” option from profile\r\n- Run and Test on both platform (Android / iOS)', '', 'Shahid Ahmed', '09-02-2023 07:56:15pm'),
(229, 36, 0, 264, 'Matness App', 1, 1, '2023-02-09', '1675881000', '7:45 PM to 8:45 ', 'Office', '09 -02-2023  Death by calculation changes (Landing page / Challenge Detail Page / Create Challenge Page / Create challenge detail Page)', '', 'Shahid Ahmed', '09-02-2023 08:42:30pm'),
(230, 24, 0, 154, 'Zowar', 0, 1, '2023-02-12', '1676140200', '3.30pm to 4.30pm', 'Home', 'Zowar server down, troubleshoot, and report to the client.', '', '', '13-02-2023 11:20:06am'),
(231, 36, 0, 264, 'Matness App', 1, 1, '2023-02-13', '1676226600', '8:35 PM to 9:35 PM', 'Home', '13-02-2023 \r\n- Change UI of Death by Training\r\n- change in Update score API', '', 'Shahid Ahmed', '13-02-2023 09:34:46pm'),
(232, 24, 0, 243, 'Janam', 0, 2, '2023-02-14', '1676313000', '7.45pm to 9.45pm', 'Office', 'Janam backend server troubleshooting. Deployment issue fixing', '', '', '15-02-2023 04:42:44pm'),
(233, 36, 0, 264, 'Matness App', 0, 1, '2023-02-15', '1676399400', '7:30 PM to 8:30 PM', 'Office', '15-02-2023\r\n- Meeting with iOS developer \r\n- Resolved issue on Challenge Detail Data shuffling ', '', '', '16-02-2023 08:00:47pm'),
(234, 24, 0, 81, 'Noorisys Internal', 0, 2, '2023-02-16', '1676485800', '6pm to 8pm', 'Office', 'Internal meeting with CEO and management team\r\nDr. Blog M1 demo call', '', '', '17-02-2023 10:40:12am');

-- --------------------------------------------------------

--
-- Table structure for table `weightage`
--

CREATE TABLE `weightage` (
  `id` int(50) NOT NULL,
  `users_group_id` int(50) NOT NULL,
  `weightage` int(80) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `weightage`
--

INSERT INTO `weightage` (`id`, `users_group_id`, `weightage`, `created_at`, `updated_at`) VALUES
(1, 2, 40, '', ''),
(2, 13, 40, '', ''),
(3, 4, 20, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_projects_projects_status` (`projects_status_id`),
  ADD KEY `fk_projects_project_types` (`projects_types_id`),
  ADD KEY `fk_projects_pople` (`created_by`);

--
-- Indexes for table `quarters`
--
ALTER TABLE `quarters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pople_people_group` (`users_group_id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_leave`
--
ALTER TABLE `user_leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_ot`
--
ALTER TABLE `user_ot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weightage`
--
ALTER TABLE `weightage`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;

--
-- AUTO_INCREMENT for table `quarters`
--
ALTER TABLE `quarters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_leave`
--
ALTER TABLE `user_leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=442;

--
-- AUTO_INCREMENT for table `user_ot`
--
ALTER TABLE `user_ot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `weightage`
--
ALTER TABLE `weightage`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
