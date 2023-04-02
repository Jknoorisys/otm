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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_ot`
--
ALTER TABLE `user_ot`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_ot`
--
ALTER TABLE `user_ot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
