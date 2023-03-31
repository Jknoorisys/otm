-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2022 at 08:39 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `otmanagement`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(30, 3, 3, 20, '2SN', '', '32,71,45,24', '2016-08-22 18:43:23', ''),
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
(81, 1, 4, 20, 'Noorisys Internal', '', '32,88,94,36,85,87,30,77,83,93,76,86,64,71,75,82,89,29,43,50,92,45,27,80,26,84,90,98,97,95,78,96,24,46,41', '2018-08-01 15:52:09', ''),
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
(101, 1, 3, 20, 'NMDFC', '', '36,30,29,27', '2018-09-26 15:50:39', ''),
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
(120, 3, 3, 20, 'Amarveer Sizing', '', '36,71,43,27,26,41', '2019-01-12 11:07:10', ''),
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
(154, 1, 3, 20, 'Zowar', '', '45,77,76,47,64,75,24,26,41', '2019-07-29 11:36:40', ''),
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
(182, 1, 3, 20, 'Meats4all', '', '36,85,30,77,64,29,50,45,24,41', '2020-04-02 19:18:51', ''),
(183, 1, 3, 20, 'Izikare-Allodocta Fixes', '<p>Start from 6th April, all the tasks in allodocta and izikare will be updated in this project.</p>', '36,30,71,75,43,50,45,26,46,24,41', '2020-04-07 12:50:54', ''),
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
(196, 1, 3, 20, 'SesaPay Phase 3', '', '20,36,83,82,29,27,80,26,46,24,41', '2020-09-04 09:57:52', ''),
(197, 3, 3, 20, 'Webucate', '', '71,43,27,24,41', '2020-09-07 10:39:47', ''),
(198, 3, 3, 20, 'Caliber Fabrics - Invoicing System', '', '76,64,75,78,24,41', '2020-09-09 19:14:47', ''),
(199, 3, 3, 20, 'Mepronto.com', '', '43,24,41', '2020-09-10 19:31:42', ''),
(200, 3, 3, 20, 'Annachi', '', '32,36,77,47,64,29,43,27,24,41', '2020-09-15 10:21:56', ''),
(201, 3, 3, 20, 'B2B Marketplace', '', '45,71,50,24,41', '2020-09-22 10:28:55', ''),
(202, 2, 3, 20, 'Chrome Plugin & Web', '', '24,46,41', '2020-09-23 15:41:55', ''),
(203, 3, 3, 20, 'OTA App Zowar', '', '32,36,30,77,64,75,29,27,24,41', '2020-10-07 13:04:00', ''),
(204, 3, 3, 20, 'UTMS UmraBus', '', '71,46,24,41', '2020-10-21 15:33:21', ''),
(205, 3, 3, 20, '#TT', '', '32,29,27,80,24,41', '2020-11-16 17:06:31', ''),
(206, 3, 2, 20, 'Devakat', '', '43,24,41', '2020-11-20 19:56:43', ''),
(207, 3, 3, 20, 'CV Creation', '', '83,46,24,41', '2020-11-25 15:17:34', ''),
(208, 2, 3, 20, 'Ayelaa.com', '', '71,24,41', '2020-12-11 15:20:48', ''),
(209, 1, 3, 20, 'Amtik', '', '36,30,77,82,43,45,27,24,41', '2020-12-11 17:13:00', ''),
(210, 1, 4, 20, 'Noorisys Ongoin', '', '78,24,46', '2021-01-05 18:20:11', ''),
(211, 2, 3, 20, 'MTransport', '', '32,36,75,45,27,80,26,24,41', '2021-01-12 13:31:58', ''),
(213, 3, 3, 20, 'Sales-Fluence WP', '', '45,24', '2021-01-13 13:52:53', ''),
(214, 3, 3, 20, 'TheCollection WP', '', '45,83,24', '2021-01-13 13:53:35', ''),
(215, 3, 3, 20, 'SFV', '', '32,36,83,29,24,41', '2021-01-25 14:00:19', ''),
(216, 3, 3, 20, 'Fetch Data (chregister)', '', '50,24,41', '2021-01-25 18:43:48', ''),
(217, 3, 3, 20, 'ATG', '', '43,46,24', '2021-02-02 15:21:10', ''),
(218, 2, 3, 24, 'Razasoft Work', '', '30,77,71,45,24', '2021-02-23 10:54:30', ''),
(219, 3, 3, 24, 'Jugl ongoing', '', '26,24', '2021-02-23 18:24:19', ''),
(220, 3, 3, 24, 'ilmioagente.it', '', '24', '2021-02-24 20:13:02', ''),
(221, 4, 3, 20, 'Online Radio Broadcasting', '', '75,29,41', '2021-03-03 19:33:00', ''),
(222, 3, 3, 20, 'SFTP App', '', '29,24,41', '2021-03-03 19:55:33', ''),
(223, 1, 3, 20, 'Test Social', '', '20,30,76,64,75,24,41', '2021-03-15 18:08:41', ''),
(224, 1, 2, 24, 'FasterChecks', '', '32,88,85,30,77,83,64,71,82,29,43,50,45,27,80,26,84,46,24,41', '2021-03-19 18:26:30', ''),
(225, 3, 3, 20, 'Saloon App', '', '36,30,83,82,43,45,24', '2021-03-22 12:04:13', ''),
(226, 4, 3, 24, 'Laravel Web', '', '71,50,45,24', '2021-03-22 12:08:04', ''),
(227, 3, 3, 20, 'BLE Device', '', '27', '2021-04-08 12:48:20', ''),
(228, 1, 3, 24, 'ShipConco', '', '83,45,46,24', '2021-04-08 18:53:51', ''),
(229, 3, 3, 20, 'Biznesful', '', '80,24', '2021-04-22 17:14:49', ''),
(230, 1, 3, 24, 'Coursier Médical', '', '32,36,30,77,86,64,71,45,27,80,26,84,24,41', '2021-05-19 19:34:55', ''),
(231, 1, 3, 24, 'View SocialApp', '', '32,87,76,64,75,27,24,41', '2021-06-01 19:28:22', ''),
(232, 3, 3, 20, 'Delaala', '', '83,82,24,41', '2021-06-15 13:37:26', ''),
(233, 3, 3, 24, 'Adaaf', '', '88,77,76,64,45,24', '2021-06-25 20:33:13', ''),
(234, 1, 3, 24, 'Rating App', '', '71,82,29,45,24,41', '2021-07-26 18:25:00', ''),
(235, 1, 3, 24, 'SesaPay Phase 2 Support and Improvments', '', '26,46,24,41', '2021-08-13 12:29:50', ''),
(236, 1, 2, 24, 'Sarah Marketplace (Tukusipan)', '', '84,24,41', '2021-10-14 17:20:01', ''),
(237, 1, 3, 20, 'Balckburnclinic', '', '26,24,41', '2021-11-15 12:37:08', ''),
(238, 1, 3, 24, 'Encheres - Hourly', '', '30,24', '2021-12-10 18:47:31', ''),
(239, 1, 3, 24, 'Noorify - Internal', '', '32,88,85,30,83,71,43,50,27,26,46,24,41', '2021-12-10 18:49:00', ''),
(240, 1, 3, 24, 'Bontikote', '', '45,27,98,97,95,78,96,24,46,41', '2022-01-31 10:57:36', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `users_group_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `photo` varchar(64) DEFAULT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `culture` varchar(5) DEFAULT NULL,
  `password` varchar(64) NOT NULL DEFAULT '',
  `pass` text NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `skin` varchar(64) DEFAULT NULL,
  `hashed_pass` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `users_group_id`, `name`, `photo`, `email`, `culture`, `password`, `pass`, `active`, `skin`, `hashed_pass`) VALUES
(20, 1, 'Imran', '88//8/8  88/ ///  8 8   8', 'admin@nooridev.in', 'en', '$P$Eqn5pSLBumz109.DWF3ZYHjTgF203r0', 'e6e061838856bf47e1de730719fb2609', 1, 'blue', '$2y$10$1nvoaAOLNW9xgYkX28QV/eLoP3OFUbTeIIk6ZyAQo24jG2WwKzTba'),
(24, 4, 'Shahid Ahmed', '', 'shahid@noorisys.com', 'en', '$P$ELR7MisaPfD4prLFL2P9Cq0LcUYZLD0', 'e6e061838856bf47e1de730719fb2609', 1, 'ColorCreature', NULL),
(25, 2, 'Zubair', '', 'zubair@noorisys.com', 'en', '$P$EmmeRD5TC2Z97yYFYXXcyp3qSZIzbJ0', 'e6e061838856bf47e1de730719fb2609', NULL, NULL, NULL),
(26, 2, 'Shahzad', '743123-s2.jpg', 'shahzad@noorisys.com', 'en', '$P$Eyh18bwbfEAeLI9xpLVA.JKHXeXDxk.', 'e6e061838856bf47e1de730719fb2609', 1, 'dark', ''),
(27, 2, 'Saim', '', 'saim@noorisys.com', 'en', '$P$Eo4nnpjO2XzN4ifjbZjEdUQt4YVJUJ/', 'e6e061838856bf47e1de730719fb2609', 1, 'red', NULL),
(28, 2, 'Waseem', '', 'waseem@noorisys.com', 'en', '$P$ELx4foSPwKeQzs/J07DYppG47ocZPU1', 'e6e061838856bf47e1de730719fb2609', NULL, NULL, NULL),
(29, 2, 'Naveed', '382723-64440375_2268846133222217_5765596170563308559_n.jpg', 'naveed@noorisys.com', 'en', '$P$EEoErhos7PnijgEkl2.lvQWky1fecI.', 'e6e061838856bf47e1de730719fb2609', 1, 'blue', NULL),
(30, 2, 'Aqueel', '', 'aqueel@noorisys.com', 'en', '$P$EsuMlIXgLynseMEbILVaILmoABTNn3/', 'e6e061838856bf47e1de730719fb2609', 1, NULL, NULL),
(31, 2, 'Zahid', '663781-wallpapers-hd-15.jpg', 'zahid@noorisys.com', 'en', '$P$ElsZuB00dcxnfWqmDoXe5w7HO1fJ0m0', 'e6e061838856bf47e1de730719fb2609', NULL, 'blue', NULL),
(32, 5, 'Taukeef', '', 'taukeef@noorisys.com', 'en', '$P$Ek.ck6WROR0/nDdZB31SHg4PxWdrRO/', 'e6e061838856bf47e1de730719fb2609', 1, 'red', NULL),
(36, 2, 'Altamash', '237527-profile_photo.png', 'altamash@noorisys.com', 'en', '$P$Evoh2djnx6PIzJOlGMLEO.n53.8RwI/', 'e6e061838856bf47e1de730719fb2609', 1, 'dark', NULL),
(37, 2, 'Zulkarnain', '', 'zulkarnain24@gmail.com', 'en', '$P$E27RRUu3kmjJ0Pmb.KGKUo7WWP77oD0', 'e6e061838856bf47e1de730719fb2609', NULL, NULL, NULL),
(39, 2, 'Rehan', '', 'rehan@noorisys.com', 'en', '$P$EjeHMEczD./3RnSGoahzQKUHHD3jpK0', 'e6e061838856bf47e1de730719fb2609', NULL, NULL, NULL),
(40, 2, 'Hanzala', '', 'hanzala@noorisys.com', 'en', '$P$EnJKqAcojaTQ3XOyEaXbGuH10cVJAM.', 'e6e061838856bf47e1de730719fb2609', NULL, NULL, NULL),
(41, 7, 'Ateeque Razvi', '', 'ar.noorisys@gmail.com', 'en', '$P$E8x1LwlRw.OEmQxl3NTN1nsD554GBz1', 'e6e061838856bf47e1de730719fb2609', 1, 'default', NULL),
(42, 8, 'Alok', '', 'alok@codescastle.com', 'en', '$P$EXaA0Dgu.tdp06dMsczNX9N9d56uz5/', 'e6e061838856bf47e1de730719fb2609', NULL, NULL, NULL),
(43, 2, 'Rizwan', '', 'rizwan@noorisys.com', 'en', '$P$EryZV3ioBsrnVloPmbWoAyudsm4JkY0', 'e6e061838856bf47e1de730719fb2609', 1, 'grey', NULL),
(44, 2, 'AbdulRehman', '', 'ara@noorisys.com', 'en', '$P$Ekmm6JaYOKy1v4CwTCLYslYtueiNM61', 'e6e061838856bf47e1de730719fb2609', NULL, 'blue', NULL),
(45, 2, 'Safwan', '', 'safwan@noorisys.com', 'en', '$P$Ek8281BzW3ysrH849m7q24XZ3QNJaw1', 'e6e061838856bf47e1de730719fb2609', 1, 'blue', NULL),
(46, 4, 'Zaid', '769083-zaid.jpg', 'zaid@noorisys.com', 'en', '$P$Ec/I2CV2KpbxfO5lgITm9wTOO8lvFs.', 'e6e061838856bf47e1de730719fb2609', 1, 'blue', NULL),
(47, 2, 'Maaz Ali', '', 'mazhar@noorisys.com', 'en', '$P$ESrqZmVlYjYdjOQL0h2Ga9umT7pykt.', 'e6e061838856bf47e1de730719fb2609', NULL, 'red', NULL),
(48, 2, 'Shoaib', '', 'shoaib@noorisys.com', 'en', '$P$E./SCeBX3wDzIt2r245sVPJUYHByxY1', 'e6e061838856bf47e1de730719fb2609', NULL, NULL, NULL),
(49, 2, 'Junaid', '', 'junaid@noorisys.com', 'en', '$P$EUKx5M/2KKdCyQuWWd.pfMMflNmZrJ1', 'e6e061838856bf47e1de730719fb2609', NULL, NULL, NULL),
(50, 2, 'Rizwan Haji', '', 'rizwan.a@noorisys.com', 'en', '$P$EqADkK4BRB/C4tBGV62CL2GT5AVbkG0', 'e6e061838856bf47e1de730719fb2609', 1, NULL, NULL),
(51, 2, 'Sufiyan', '894063-IMG_20170712_095940_788.jpg', 'sufiyan@noorisys.com', 'en', '$P$EprHWfq2QByb98ES69gacccpKx8dNy/', 'e6e061838856bf47e1de730719fb2609', NULL, 'blue', NULL),
(52, 5, 'N.M. Barkati', '', 'editor@ezamana.com', 'en', '$P$EUvcmuHEjzz/bIalxDcm6.cdcYXLWg/', 'e6e061838856bf47e1de730719fb2609', NULL, NULL, NULL),
(54, 2, 'Vikrant', '', 'vikrant@noorisys.com', 'en', '$P$E2Igk8GMt1b2CjW.RVfOht.VRRN3e01', 'e6e061838856bf47e1de730719fb2609', NULL, NULL, NULL),
(55, 2, 'Dhanashri', '', 'dhanashri@noorisys.com', 'en', '$P$EJmjNB7VbcF66X07cd0uFju3CGxGlx.', 'e6e061838856bf47e1de730719fb2609', NULL, NULL, NULL),
(56, 2, 'Shubhangi', '', 'shubhangi@noorisys.com', 'en', '$P$ElNBoZVKMXOVgw8uh8wBU7txzlPkh30', 'e6e061838856bf47e1de730719fb2609', NULL, NULL, NULL),
(57, 2, 'Irfan', '', 'irfan@noorisys.com', 'en', '$P$EmCpyrY1LCW7V1hrbO8s7qQyLlTX1S.', 'e6e061838856bf47e1de730719fb2609', NULL, NULL, NULL),
(59, 9, 'Peter Jugl', '', 'oswinsteig@gmail.com', 'en', '$P$EGSRxFxWqsQa4QU/WMzc8nuqJaWZ7s.', 'e6e061838856bf47e1de730719fb2609', NULL, NULL, NULL),
(62, 3, 'Boby', '', 'bertrand@nkengne.com', 'en', '$P$EHMJMEP3zFZ8E/Ps1ZGMXmTMQpnezt1', 'e6e061838856bf47e1de730719fb2609', NULL, NULL, NULL),
(63, 2, 'Vinod', '', 'vinod.porwal@mindnerves.com', 'en', '$P$Ea1YZ1lTxDQKOjCVYX/uTu9aX4Ail7/', 'e6e061838856bf47e1de730719fb2609', NULL, NULL, NULL),
(64, 2, 'Moeen', '', 'moin@noorisys.com', 'en', '$P$EaUZuiwxk55NerCYCNF4Int3VDbdvV.', 'e6e061838856bf47e1de730719fb2609', 1, 'dark', NULL),
(65, 2, 'AbdulAhad', '', 'abdulahad@noorisys.com', 'en', '$P$ESzwIzJtbyk0mvdRzepkB916V6F0W21', 'e6e061838856bf47e1de730719fb2609', NULL, NULL, NULL),
(66, 2, 'Ajit', '', 'ajitpawar277@gmail.com', 'en', '$P$EMioXLAEK1qxbNyXXtQq.5Wo8J/4R6.', 'e6e061838856bf47e1de730719fb2609', NULL, NULL, NULL),
(67, 2, 'Vikas', '', 'mnt.vikasshinde@gmail.com', 'en', '$P$EtcNqX2OUftuvmqvISc9ArJ2n64U.L1', 'e6e061838856bf47e1de730719fb2609', NULL, NULL, NULL),
(68, 8, 'Rohit Gupta', '', 'rohit@codescastle.com', 'en', '$P$EuO5BgXwQ057TQ1ckufoyvdvyOHtCP1', 'e6e061838856bf47e1de730719fb2609', NULL, NULL, NULL),
(69, 2, 'Ahmed', '', 'ahmed@noorisys.com', 'en', '$P$EKVUfO9GWsjPVQ/kLcddlg89vqhtLw.', 'e6e061838856bf47e1de730719fb2609', NULL, NULL, NULL),
(70, 2, 'Sham Vagga', '', 'sham.vagga@gmail.com', 'en', '$P$EqRijn9gZIgP2f59AAc633guos99EA0', 'e6e061838856bf47e1de730719fb2609', NULL, NULL, NULL),
(71, 2, 'Mohsin Mirza', '', 'mm5866733@gmail.com', 'en', '$P$EZU4mBEeDSkyB.CBYmJU2u92OLiUuZ0', 'e6e061838856bf47e1de730719fb2609', 1, 'blue', NULL),
(72, 2, 'Mudassir', '', 'mudassir@noorisys.com', 'en', '$P$E7KtZAdlRxMF90DloLqjkKPg4p.j3z.', 'e6e061838856bf47e1de730719fb2609', NULL, NULL, NULL),
(73, 9, 'Super-Client', '', 'super.client@nooridev.in', 'en', '$P$ExCvb0C9uGs1OEE7P6045/y0xpY1Gh/', 'e6e061838856bf47e1de730719fb2609', NULL, NULL, NULL),
(74, 2, 'Priyanka More', '', 'priyanka@noorisys.com', 'en', '$P$E92b14dUYNDYTj7sI5db693YEfC2/a1', 'e6e061838856bf47e1de730719fb2609', NULL, NULL, NULL),
(75, 2, 'Mohsin Pinjari', '788610-background-1.png', 'mohsin.pinjari@noorisys.com', 'en', '$P$ENX/VDRj8ASUfqc38KMNyEi3RwetBd/', 'e6e061838856bf47e1de730719fb2609', 1, 'blue', NULL),
(76, 2, 'Juned Dosani', '', 'juned.dosani@noorisys.com', 'en', '$P$EtUfMOva8eAUgs1JiqdnAsjOJ4U7FC/', 'e6e061838856bf47e1de730719fb2609', 1, 'ColorCreature', NULL),
(77, 2, 'Emad Jaweed', '698406-emad.jpg', 'emad@noorisys.com', 'en', '$P$EWhCTH88oo3mix1fBpB8nqN075FW0s0', 'e6e061838856bf47e1de730719fb2609', 1, 'ColorCreature', NULL),
(78, 8, 'Sahel', '', 'sahel@noorisys.com', 'en', '$P$ExD4v8IkaZEn5wRoLBgeHk6yRSdzpS1', 'e6e061838856bf47e1de730719fb2609', 1, NULL, NULL),
(79, 2, 'Momin Zaid', '', 'momin.zaid@noorisys.com', 'en', '$P$EM0rywUS2Gh3gqN9wnF43n7a8SOWh90', 'e6e061838856bf47e1de730719fb2609', NULL, NULL, NULL),
(80, 2, 'Shafana', '', 'shafana@noorisys.com', 'en', '$P$ECgWyc8zgQ1..NBXr7lFvYhBgC1LUl1', 'e6e061838856bf47e1de730719fb2609', 1, NULL, NULL),
(81, 2, 'Nausheen', '', 'nausheen@noorisys.com', 'en', '$P$Ezwx2nNthWamaoLQ1cOHKU2JseR/u10', 'e6e061838856bf47e1de730719fb2609', NULL, 'red', NULL),
(82, 2, 'Muzzammil Kachchi', '', 'muzzammil@noorisys.com', 'en', '$P$E0VfkzFYkW05BvN1uRhFdpp7jfMfTz1', 'e6e061838856bf47e1de730719fb2609', 1, NULL, NULL),
(83, 2, 'HifzurRahman', '', 'hifzurrahman@noorisys.com', 'en', '$P$EQ7JId/xJt8XPweoTQvkV0Hem5HfVP0', 'e6e061838856bf47e1de730719fb2609', 1, 'WinterTones', NULL),
(84, 2, 'Tajammul Husain', '', 'tajammul@noorisys.com', 'en', '$P$E8ePzUaHna7Ds7BRFhsQCLsm5KnflQ.', 'e6e061838856bf47e1de730719fb2609', 1, NULL, NULL),
(85, 2, 'Ammar Ahmed', '', 'ammar@noorisys.com', 'en', '$P$ElWcoJQsIK8Vyd0SRDNPCKoIiP.PAQ0', 'e6e061838856bf47e1de730719fb2609', 1, NULL, NULL),
(86, 2, 'Kalyani', '', 'kalyani@noorisys.com', 'en', '$P$E9.bA.rVnNP9AA2Do44OusprTwPpXI.', 'e6e061838856bf47e1de730719fb2609', 1, NULL, NULL),
(87, 2, 'Ansari Salman', '', 'salman@nooridev.in', 'en', '$P$EoVNzb2aU.BgOCQcp5DogP62/eJ0WA0', 'e6e061838856bf47e1de730719fb2609', 1, 'dark', NULL),
(88, 2, 'Abdul Rahman', '', 'abdulrahman@nooridev.in', 'en', '$P$Ez4iYm81akJqrTLcxB0qswGQVBdB4c0', 'e6e061838856bf47e1de730719fb2609', 1, 'default', NULL),
(89, 2, 'Nabeela', '905009-file_example_JPG_500kB.jpg', 'nabeela@nooridev.in', 'en', '$P$EUXDU/4LFgcUFiBfAg1XnulzlDSS.y0', 'e6e061838856bf47e1de730719fb2609', 1, NULL, NULL),
(90, 2, 'Zubiya', '', 'zubiya@nooridev.in', 'en', '$P$EB5mBNqmZiZIyHa7TAMAXiaYnPlwNt.', 'e6e061838856bf47e1de730719fb2609', 1, 'dark', NULL),
(91, 2, 'Tazkiya', '', 'tazkiya@nooridev.in', 'en', '$P$EhDG/gIkFdTLoDVwKne3yMMOTiVqEl.', 'e6e061838856bf47e1de730719fb2609', NULL, NULL, NULL),
(92, 2, 'Rumana', '', 'rumana@nooridev.in', 'en', '$P$EcKWNodrlHHtn6Sx0hcJ5yt1qRc278.', 'e6e061838856bf47e1de730719fb2609', 1, NULL, NULL),
(93, 2, 'Javeriya', '', 'javeriya@nooridev.in', 'en', '$P$EeatWrddhh4c5sjlRTv6x8XtuW0zam.', 'e6e061838856bf47e1de730719fb2609', 1, 'dark', NULL),
(94, 2, 'Aisha', '', 'aisha@nooridev.in', 'en', '$P$EP8aeo22YUtMV2neNWAtsTKLBmkdRX.', 'e6e061838856bf47e1de730719fb2609', 1, NULL, NULL),
(95, 8, 'Momin Abrar', '', 'abrar@fasterchecks.org', 'en', '$P$EEcI4PIFcKQuZ09sXaNPvRwVVa5T1S/', 'e6e061838856bf47e1de730719fb2609', 1, NULL, NULL),
(96, 8, 'Talha Ahmed', '', 'talha.ah@fasterchecks.org', 'en', '$P$E5flXs.8zmeBXl85uUxP0qtVaq/XmV1', 'e6e061838856bf47e1de730719fb2609', 1, NULL, NULL),
(97, 8, 'Afifa Ansari', '', 'afifa@fasterchecks.org', 'en', '$P$Ehryubxiy0ghZPNh8dGa8bMdNZK3310', 'e6e061838856bf47e1de730719fb2609', 1, NULL, NULL),
(98, 8, 'Abdul Qadir', '', 'abdulqadir8983@gmail.com', 'en', '$P$EtZ3ULBNbb9EfDVczAagSu9blzS4Z2/', 'e6e061838856bf47e1de730719fb2609', 1, NULL, NULL);

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
(2, 'Developer', NULL, 3, 4, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Client', NULL, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Manager', 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL),
(5, 'Designer', NULL, 3, 4, 3, NULL, NULL, NULL, 4, NULL),
(6, 'Afripamed Developers', NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Testers', NULL, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Management & Accounts', NULL, 3, 4, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Super-Client', NULL, 4, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'New Developer', NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_ot`
--

CREATE TABLE `user_ot` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_ot`
--

INSERT INTO `user_ot` (`id`, `user_id`, `manager_id`, `project_id`, `ot_status`, `ot_hours`, `ot_date`, `str_ot_date`, `ot_time`, `ot_location`, `requested_description`, `rejected_description`, `action_by`, `created_datetime`) VALUES
(51, 92, 0, 16, 2, 1, '2022-02-28', '1645986600', '6pm to 7pm', 'Office', 'last month', 'not valid', 'Zaid', '01-03-2022 01:31:57pm'),
(52, 92, 0, 239, 1, 2, '2022-02-28', '1645986600', '6pm to 8pm', 'Home', 'last month', '', 'Shahid Ahmed', '01-03-2022 01:32:25pm'),
(53, 93, 0, 17, 1, 1, '2022-03-01', '1646073000', '6pm to 7pm', 'Office', 'current month', '', 'Zaid', '01-03-2022 01:33:19pm'),
(54, 93, 0, 16, 2, 2, '2022-03-01', '1646073000', '6pm to 8pm', 'Home', 'current month', 'asdfghjkl;\'\r\n', 'Shahid Ahmed', '01-03-2022 01:33:41pm'),
(55, 93, 0, 239, 1, 2, '2022-03-01', '1646073000', '6pm to 7:30pm', 'Home', 'current month', '', 'Zaid', '01-03-2022 01:34:13pm'),
(56, 90, 0, 240, 1, 2, '2022-02-28', '1645986600', '6pm to 8pm', 'Office', '', '', 'Zaid', '01-03-2022 03:17:18pm'),
(57, 90, 0, 20, 2, 1, '2022-02-28', '1645986600', '6pm to 7pm', 'Office', '', 'zdxkkk', 'Zaid', '01-03-2022 03:17:36pm'),
(58, 90, 0, 240, 2, 3, '2022-03-01', '1646073000', '6pm to 8:30pm', 'Home', 'rtyuio', 'wertyui', 'Zaid', '01-03-2022 03:17:59pm'),
(59, 94, 0, 232, 2, 1, '2022-03-01', '1646073000', '6pm to 7pm', 'Home', '', 'jksadfghjkl', 'Zaid', '01-03-2022 03:44:31pm'),
(60, 89, 0, 240, 2, 3, '2022-02-28', '1645986600', '6pm to 8:30pm', 'Office', '', 'ASERTFYUHIOP[', 'Zaid', '01-03-2022 03:49:05pm'),
(61, 86, 0, 230, 2, 3, '2022-03-01', '1646073000', '6pm to 9pm', 'Home', 'ertyu7reui764wasdfghyfgo', 'asdfghjkl', 'Zaid', '01-03-2022 03:50:37pm'),
(62, 86, 0, 230, 0, 5, '2022-03-01', '1646073000', '6pm to 11pm', 'Home', 'rsdx;ydxhgf', '', '', '01-03-2022 03:51:18pm'),
(63, 93, 0, 16, 1, 2, '2022-02-28', '1645986600', '6pm to 7.30pm', 'Office', '', '', 'Zaid', '01-03-2022 04:03:47pm'),
(64, 93, 0, 16, 1, 2.5, '2022-03-01', '1646073000', '6pm to 8:30pm', 'Office', '', '', 'Zaid', '01-03-2022 04:05:17pm'),
(65, 92, 0, 239, 1, 2.5, '2022-03-01', '1646073000', '6pm to 8:30pm', 'Office', 'lkjhgfd', '', 'Shahid Ahmed', '01-03-2022 04:32:48pm'),
(66, 92, 0, 16, 2, 1.5, '2022-02-28', '1645986600', '6pm to 7.30pm', 'Home', '', 'sdfghjk', 'Shahid Ahmed', '01-03-2022 04:34:11pm'),
(67, 92, 0, 17, 1, 1, '2022-02-28', '1645986600', '6pm to 7pm', 'Office', '', '', 'Shahid Ahmed', '01-03-2022 04:41:27pm'),
(68, 92, 0, 206, 1, 2.5, '2022-02-28', '1645986600', '6pm to 8:30pm', 'Home', 'kjgfdsghjkl;', '', 'Shahid Ahmed', '01-03-2022 04:45:35pm'),
(69, 93, 0, 239, 0, 1.5, '2022-03-02', '1646159400', '6pm to 7:30pm', 'Office', 'sdfghjkl', '', '', '02-03-2022 09:35:10am'),
(71, 92, 0, 23, 0, 1.5, '2022-03-02', '1646159400', '6pm to 7.30pm', 'Office', 'ertyuiop', '', '', '02-03-2022 11:08:13am'),
(72, 93, 0, 16, 0, 2, '2022-03-01', '1646073000', '6pm to 8pm', 'Office', 'fghj', '', '', '02-03-2022 12:51:28pm');

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
-- Indexes for table `user_ot`
--
ALTER TABLE `user_ot`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_ot`
--
ALTER TABLE `user_ot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
