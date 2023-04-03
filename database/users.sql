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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pople_people_group` (`users_group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
