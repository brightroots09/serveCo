-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 13, 2018 at 02:08 PM
-- Server version: 10.1.31-MariaDB-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brightde_SC`
--

-- --------------------------------------------------------

--
-- Table structure for table `Chat`
--

CREATE TABLE `Chat` (
  `ChatID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `FriendID` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `DateTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `UserName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserImage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ChatType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GroupID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Chat`
--

INSERT INTO `Chat` (`ChatID`, `UserID`, `FriendID`, `Message`, `Image`, `DateTime`, `UserName`, `UserImage`, `ChatType`, `GroupID`) VALUES
(394, 81, '84,83,81', ' New Group Created ', '', '2018-07-31 16:07:03', 'test group', 'file_01504666604.jpeg-07_31_2018_18_37_02.jpeg', 'groupChat', 12),
(395, 84, '84,83,81', 'Ads a', '', '2018-07-31 16:07:18', 'electrician', 'https://brightdeveloper.work/server/img/file0.jpeg-06_19_2018_18_25_20.jpeg', 'groupChat', 12),
(396, 84, '81', 'Hi', '', '2018-07-31 16:11:07', 'electrician', 'https://brightdeveloper.work/server/img/file0.jpeg-06_19_2018_18_25_20.jpeg', 'single', 0),
(397, 84, '81,84,80', 'Hi', '', '2018-07-31 16:13:27', 'electrician', 'https://brightdeveloper.work/server/img/file0.jpeg-06_19_2018_18_25_20.jpeg', 'groupChat', 12),
(398, 84, '81,84,80', 'K', '', '2018-07-31 16:16:46', 'electrician', 'https://brightdeveloper.work/server/img/file0.jpeg-06_19_2018_18_25_20.jpeg', 'groupChat', 12),
(399, 84, '81,84,80', 'Ads', '', '2018-07-31 16:18:17', 'electrician', 'https://brightdeveloper.work/server/img/file0.jpeg-06_19_2018_18_25_20.jpeg', 'groupChat', 12),
(400, 3999, '3999', 'fad', '', '0000-00-00 00:00:00', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(401, 81, '80,81', 'J', '', '2018-07-31 18:36:26', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(402, 81, '84', '', '84811533126566997.png', '2018-08-01 17:59:25', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(403, 81, '80', '', '80811533188376932.png', '2018-08-02 11:09:35', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(404, 81, '84', '', '84811533201176657.png', '2018-08-02 14:42:55', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(405, 80, '81', '', '81801533203013694.png', '2018-08-02 15:13:31', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'single', 0),
(406, 80, '81', '', '81801533206643593.png', '2018-08-02 16:14:01', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'single', 0),
(407, 80, '81', '', '81801533207689719.png', '2018-08-02 16:31:28', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'single', 0),
(408, 80, '80,81,84', 'Added', '', '2018-08-02 16:32:06', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'groupChat', 12),
(409, 80, '80,81,84', 'Afar', '', '2018-08-02 16:32:07', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'groupChat', 12),
(410, 80, '80,81,84', 'Ads', '', '2018-08-02 16:32:08', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'groupChat', 12),
(411, 80, '80,81,84', 'Dad', '', '2018-08-02 16:32:09', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'groupChat', 12),
(412, 80, '80,81,84', 'Afar', '', '2018-08-02 16:32:09', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'groupChat', 12),
(413, 80, '80,81,84', 'Staff', '', '2018-08-02 16:32:10', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'groupChat', 12),
(414, 80, '80,81,84', 'Staff', '', '2018-08-02 16:32:11', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'groupChat', 12),
(415, 81, '84', 'Deadfall', '', '2018-08-02 16:37:04', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(416, 81, '84', 'Dead', '', '2018-08-02 16:37:05', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(417, 81, '84', 'Daddy', '', '2018-08-02 16:37:06', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(418, 81, '84', 'Dad', '', '2018-08-02 16:37:07', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(419, 80, '81', '', '81801533209207694.png', '2018-08-02 16:56:46', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'single', 0),
(420, 80, '81', '', '81801533209324699.png', '2018-08-02 16:58:43', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'single', 0),
(421, 81, '80,81,84', '', '80,81,84811533209878437.png', '2018-08-02 17:07:57', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(422, 81, '80', '', '80811533209935876.png', '2018-08-02 17:08:54', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(423, 80, '81', '', '81801533210115004.png', '2018-08-02 17:11:53', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'single', 0),
(424, 80, '81', '', '81801533210188881.png', '2018-08-02 17:13:07', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'single', 0),
(425, 80, '81', '', '81801533210233752.png', '2018-08-02 17:13:53', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'single', 0),
(426, 80, '80,81,84', '', '80,81,84801533210350401.png', '2018-08-02 17:15:49', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'groupChat', 12),
(427, 80, '81', '', '81801533210453839.png', '2018-08-02 17:17:32', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'single', 0),
(428, 80, '81', '', '81801533210568064.png', '2018-08-02 17:19:25', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'single', 0),
(429, 81, '84', '', '84811533210677403.png', '2018-08-02 17:21:15', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(430, 81, '80', '', '80811533211031224.png', '2018-08-02 17:26:54', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(431, 80, '80,81,84', '', '80,81,84801533211263041.png', '2018-08-02 17:30:59', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'groupChat', 12),
(432, 80, '80,81,84', '', '80,81,84801533211284792.png', '2018-08-02 17:31:21', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'groupChat', 12),
(433, 81, '80,81,84', '', '80,81,84811533211442851.png', '2018-08-02 17:33:58', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(434, 81, '80,81,84', '', '80,81,84811533211521632.png', '2018-08-02 17:35:18', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(435, 81, '80', 'Sad', '', '2018-08-02 17:36:33', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(436, 81, '80', 'As', '', '2018-08-02 17:36:38', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(437, 81, '80', '', '80811533211611582.png', '2018-08-02 17:36:46', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(438, 81, '80,81,84', '', '80,81,84811533211635896.png', '2018-08-02 17:37:13', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(439, 80, '81', '', '81801533212155802.png', '2018-08-02 17:45:52', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'single', 0),
(440, 80, '81', '', '81801533212329014.png', '2018-08-02 17:48:46', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'single', 0),
(441, 81, '80', '', '80811533212380549.png', '2018-08-02 17:49:37', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(442, 80, '81', '', '81801533212539235.png', '2018-08-02 17:52:16', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'single', 0),
(443, 80, '81', '', '81801533212689243.png', '2018-08-02 17:54:46', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'single', 0),
(444, 80, '80,81,84', '', '80,81,84801533212841699.png', '2018-08-02 17:57:18', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'groupChat', 12),
(445, 80, '80,81,84', '', '80,81,84801533212863263.png', '2018-08-02 17:57:40', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'groupChat', 12),
(446, 80, '81', '', '81801533212889289.png', '2018-08-02 17:58:05', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'single', 0),
(447, 80, '81', 'Adds adds', '', '2018-08-02 17:58:26', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'single', 0),
(448, 80, '81', 'Assad’s', '', '2018-08-02 17:58:28', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'single', 0),
(449, 81, '80', '', '80811533212927769.png', '2018-08-02 17:58:29', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(450, 81, '80', 'Staff', '', '2018-08-02 17:59:04', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(451, 81, '80', 'Shag', '', '2018-08-02 17:59:07', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(452, 80, '81', '', '81801533213238682.png', '2018-08-02 18:03:55', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'single', 0),
(453, 81, '84', 'Gju', '', '2018-08-02 18:04:14', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(454, 81, '84', 'Grh', '', '2018-08-02 18:04:15', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(455, 81, '84', 'Hjk', '', '2018-08-03 09:54:14', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(456, 81, '84', 'Hj', '', '2018-08-03 09:54:24', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(457, 81, '84', 'Hj', '', '2018-08-03 09:54:32', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(458, 81, '80,81,84', '', '80,81,84811533270297211.png', '2018-08-03 09:54:55', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(459, 84, '80,81,84', '', '80,81,84841533270335984.png', '2018-08-03 09:55:34', 'electrician', 'https://brightdeveloper.work/server/img/file0.jpeg-06_19_2018_18_25_20.jpeg', 'groupChat', 12),
(460, 84, '81', 'Hi', '', '2018-08-03 09:56:19', 'electrician', 'https://brightdeveloper.work/server/img/file0.jpeg-06_19_2018_18_25_20.jpeg', 'single', 0),
(461, 81, '80,81,84', '', '80,81,84811533270425094.png', '2018-08-03 09:57:03', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(462, 81, '80,81,84', 'Hi', '', '2018-08-03 09:57:16', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(463, 81, '80,81,84', '', '80,81,84811533270486827.png', '2018-08-03 09:58:04', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(464, 81, '80,81,84', 'Gjgjgjgjggjgjgkkyukykyykykykykkykyksadasdsadaddasdasdasdad', '', '2018-08-03 11:03:10', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(465, 81, '80,81,84', 'Adds', '', '2018-08-03 11:03:20', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(466, 81, '84', 'Dead', '', '2018-08-03 11:03:45', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(467, 81, '84', 'Car', '', '2018-08-03 11:03:50', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(468, 81, '84', 'C', '', '2018-08-03 11:03:55', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(469, 81, '84', 'Daddy', '', '2018-08-03 11:04:02', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(470, 81, '84', 'F', '', '2018-08-03 11:04:07', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(471, 81, '84', '', '84811533274529086.png', '2018-08-03 11:05:27', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(472, 81, '84', '', '84811533274697684.png', '2018-08-03 11:08:15', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(473, 81, '84', '', '84811533274899738.png', '2018-08-03 11:11:37', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(474, 81, '84', '', '84811533274984819.png', '2018-08-03 11:13:02', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'single', 0),
(475, 84, '81', '', '81841533275032129.png', '2018-08-03 11:13:50', 'electrician', 'https://brightdeveloper.work/server/img/file0.jpeg-06_19_2018_18_25_20.jpeg', 'single', 0),
(476, 84, '81', 'Chj', '', '2018-08-03 11:15:03', 'electrician', 'https://brightdeveloper.work/server/img/file0.jpeg-06_19_2018_18_25_20.jpeg', 'single', 0),
(477, 84, '81', 'Rgho', '', '2018-08-03 11:15:08', 'electrician', 'https://brightdeveloper.work/server/img/file0.jpeg-06_19_2018_18_25_20.jpeg', 'single', 0),
(478, 84, '81', '', '81841533275144563.png', '2018-08-03 11:15:42', 'electrician', 'https://brightdeveloper.work/server/img/file0.jpeg-06_19_2018_18_25_20.jpeg', 'single', 0),
(479, 81, '80,81,84', '', '80,81,84811533275482941.png', '2018-08-03 11:21:21', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(480, 81, '80,81,84', '', '80,81,84811533275799173.png', '2018-08-03 11:26:38', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(481, 81, '80,81,84', '', '80,81,84811533275844022.png', '2018-08-03 11:27:22', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(482, 81, '80,81,84', '', '80,81,84811533275865968.png', '2018-08-03 11:27:45', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(483, 81, '80,81,84', '', '80,81,84811533275878875.png', '2018-08-03 11:27:58', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(484, 81, '80,81,84', 'Assad’s', '', '2018-08-03 11:28:15', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(485, 81, '80,81,84', 'Adds', '', '2018-08-03 11:28:19', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(486, 81, '80,81,84', '', '80,81,84811533275912183.png', '2018-08-03 11:28:31', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(487, 81, '80,81,84', '', '80,81,84811533276164569.png', '2018-08-03 11:32:43', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(488, 81, '80,81,84', '', '80,81,84811533276382072.png', '2018-08-03 11:36:21', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(489, 81, '80,81,84', '', '80,81,84811533276493088.png', '2018-08-03 11:38:12', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(490, 81, '80,81,84', '', '80,81,84811533276615013.png', '2018-08-03 11:40:14', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(491, 81, '80,81,84', '', '80,81,84811533276641344.png', '2018-08-03 11:40:35', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(492, 81, '80,81,84', '', '80,81,84811533276667155.png', '2018-08-03 11:41:05', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(493, 81, '80,81,84', '', '80,81,84811533277210021.png', '2018-08-03 11:50:08', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(494, 81, '80,81,84', '', '80,81,84811533277240278.png', '2018-08-03 11:50:39', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(495, 84, '80,81,84', '', '80,81,84841533277354729.png', '2018-08-03 11:52:32', 'electrician', 'https://brightdeveloper.work/server/img/file0.jpeg-06_19_2018_18_25_20.jpeg', 'groupChat', 12),
(496, 81, '80,81,84', '', '80,81,84811533277385547.png', '2018-08-03 11:53:04', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(497, 84, '80,81,84', 'Hdhd', '', '2018-08-03 11:57:01', 'electrician', 'https://brightdeveloper.work/server/img/file0.jpeg-06_19_2018_18_25_20.jpeg', 'groupChat', 12),
(498, 84, '80,81,84', 'Hdhd', '', '2018-08-03 11:57:02', 'electrician', 'https://brightdeveloper.work/server/img/file0.jpeg-06_19_2018_18_25_20.jpeg', 'groupChat', 12),
(499, 81, '80,81,84', 'Linking', '', '2018-08-03 11:57:17', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(500, 81, '80,81,84', 'As', '', '2018-08-03 11:58:11', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(501, 81, '80,81,84', 'Nd', '', '2018-08-03 12:05:18', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(502, 81, '80,81,84', 'Cd', '', '2018-08-03 12:05:40', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(503, 81, '80,81,84', 'Gf', '', '2018-08-03 12:12:14', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(504, 81, '80,81,84', 'Gh', '', '2018-08-03 12:12:44', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(505, 81, '80,81,84', 'Assad’s', '', '2018-08-03 12:15:31', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(506, 81, '80,81,84', '', '80,81,84811533279218927.png', '2018-08-03 12:23:37', 'tech', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_50_50.jpeg', 'groupChat', 12),
(507, 80, '84', 'Hi', '', '2018-08-03 15:33:19', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'single', 0),
(508, 84, '80', '', '80841533290619322.png', '2018-08-03 15:33:37', 'electrician', 'https://brightdeveloper.work/server/img/file0.jpeg-06_19_2018_18_25_20.jpeg', 'single', 0),
(509, 80, '84', 'Hi', '', '2018-08-03 15:33:54', 'cont and comp', 'https://brightdeveloper.work/server/img/file0.jpeg-06_18_2018_19_44_28.jpeg', 'single', 0),
(510, 84, '80', 'Assad’s dada', '', '2018-08-03 15:34:00', 'electrician', 'https://brightdeveloper.work/server/img/file0.jpeg-06_19_2018_18_25_20.jpeg', 'single', 0),
(511, 84, '80', 'Cxcad', '', '2018-08-03 15:34:06', 'electrician', 'https://brightdeveloper.work/server/img/file0.jpeg-06_19_2018_18_25_20.jpeg', 'single', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Estimation`
--

CREATE TABLE `Estimation` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `ServicesID` int(11) NOT NULL,
  `PricePerHour` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TravelCharges` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TruckCharges` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ETA` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` int(11) NOT NULL,
  `CreatedBy` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiagnosticCharges` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AcceptedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Estimation`
--

INSERT INTO `Estimation` (`ID`, `UserID`, `ServicesID`, `PricePerHour`, `TravelCharges`, `TruckCharges`, `ETA`, `Status`, `CreatedBy`, `DiagnosticCharges`, `AcceptedBy`) VALUES
(39, 80, 53, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(40, 80, 54, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(41, 80, 55, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(42, 80, 56, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(43, 80, 57, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(44, 80, 58, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(45, 80, 59, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(46, 80, 60, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(47, 80, 61, '2', '2', '3', '16 min', 0, 'Cotractor', '1', 0),
(49, 80, 62, '2', '2', 'Optional(\"3\")', '16 min', 0, 'Cotractor', '1', 0),
(50, 80, 63, '$500', '$50', '$100', '16 min', 1, 'Cotractor', '$250', 79),
(51, 80, 64, '2', '2', '3', '16 min', 0, 'Cotractor', '1', 0),
(52, 80, 65, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(53, 80, 66, '2', '2', '3', '16 min', 0, 'Cotractor', '1', 0),
(56, 80, 68, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(57, 80, 67, '2', '2', 'Optional(\"3\")', '16 min', 0, 'Cotractor', '1', 0),
(58, 80, 69, '2', '2', '3', '16 min', 0, 'Cotractor', '1', 0),
(59, 80, 70, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(60, 80, 71, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(61, 80, 72, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(62, 80, 73, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(63, 80, 74, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(64, 80, 75, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(65, 80, 76, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(66, 80, 77, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(67, 80, 78, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(68, 80, 79, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(69, 80, 80, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(70, 80, 81, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(71, 80, 82, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(72, 80, 83, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(73, 80, 84, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(74, 80, 85, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(75, 80, 86, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(76, 80, 87, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(77, 80, 88, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(78, 80, 89, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(79, 80, 90, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(80, 80, 91, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(81, 80, 92, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(82, 80, 93, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(83, 80, 94, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(84, 80, 95, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(85, 80, 96, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(86, 80, 97, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(87, 80, 98, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(88, 80, 100, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(89, 80, 99, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(90, 80, 101, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(91, 80, 102, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(92, 80, 103, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(93, 80, 104, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(94, 80, 105, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(95, 80, 107, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(96, 80, 108, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(97, 80, 109, '85', '0', '65', '16 min', 1, 'Cotractor', '85', 79),
(98, 80, 110, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(99, 80, 111, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(100, 80, 112, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(101, 80, 113, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(102, 80, 115, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(103, 80, 117, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(104, 80, 118, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(105, 80, 120, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(106, 80, 116, '2', '2', '3', '16 min', 0, 'Cotractor', '1', 0),
(107, 80, 119, '2', '2', '3', '16 min', 0, 'Cotractor', '1', 0),
(108, 80, 125, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(109, 80, 126, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(110, 80, 127, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(111, 80, 128, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(113, 80, 130, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(115, 80, 132, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(118, 80, 135, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(121, 80, 138, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(122, 80, 139, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(123, 80, 140, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(124, 80, 141, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(125, 80, 142, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(126, 80, 143, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79),
(127, 80, 144, '2', '2', '3', '16 min', 1, 'Cotractor', '1', 79);

-- --------------------------------------------------------

--
-- Table structure for table `EstimationSetting`
--

CREATE TABLE `EstimationSetting` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `PricePerHour` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TravelCharges` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TruckCharges` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ETA` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiagnosticCharges` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `EstimationSetting`
--

INSERT INTO `EstimationSetting` (`ID`, `UserID`, `PricePerHour`, `TravelCharges`, `TruckCharges`, `ETA`, `DiagnosticCharges`) VALUES
(8, 80, '2', '2', '3', '16 min', '1'),
(9, 80, '90', '0', '65', '16 min', '90'),
(10, 80, '90', '0', '65', '16 min', '90'),
(11, 80, '2', '2', '3', '16 min', '1'),
(12, 80, '2', '2', '3', '16 min', '1'),
(13, 80, '2', '2', '3', '16 min', '1'),
(14, 80, '2', '2', '3', '16 min', '1');

-- --------------------------------------------------------

--
-- Table structure for table `Invoice`
--

CREATE TABLE `Invoice` (
  `InvoiceID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `JobID` int(11) NOT NULL,
  `Amount` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Request`
--

CREATE TABLE `Request` (
  `RequestID` int(11) NOT NULL,
  `UserOne` int(11) NOT NULL,
  `UserTwo` int(11) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Request`
--

INSERT INTO `Request` (`RequestID`, `UserOne`, `UserTwo`, `Status`) VALUES
(20, 81, 83, 1),
(21, 81, 84, 1),
(22, 83, 84, 1),
(23, 81, 87, 1),
(24, 81, 89, 0),
(25, 81, 86, 0),
(26, 81, 80, 1),
(27, 81, 82, 0),
(28, 81, 85, 0),
(29, 84, 80, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Services`
--

CREATE TABLE `Services` (
  `ID` int(11) NOT NULL,
  `USERID` int(11) NOT NULL,
  `ADDRESS` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `LAT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LNG` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `URGENCY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PROBLEM` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `SERVICEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SERVICENAME` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Services`
--

INSERT INTO `Services` (`ID`, `USERID`, `ADDRESS`, `LAT`, `LNG`, `URGENCY`, `PROBLEM`, `DESCRIPTION`, `SERVICEID`, `SERVICENAME`) VALUES
(53, 79, '#2345, Sector 60, Sahibzada Ajit Singh Nagar, Punjab 160070, India', '30.7048704', '76.7182163', 'Standard', 'plumbing', 'Need a plumber', '4', 'Plumbing'),
(54, 79, '#2345, Sector 60, Sahibzada Ajit Singh Nagar, Punjab 160070, India', '30.7048704', '76.7182163', 'Standard', 'leakage', 'Need plumber', '1', 'Air conditioning'),
(55, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.7046486', '76.7178726', 'Standard', 'kn', 'In', '4', 'Plumbing'),
(56, 79, 'G.T.Road, Near Bus Stand, Sector 71, Phagwara, Punjab 144401, India', '30.7046486', '76.7178726', 'Standard', 'we', 'Adds', '4', 'Plumbing'),
(57, 79, 'G.T.Road, Near Bus Stand, Sector 71, Phagwara, Punjab 144401, India', '30.7046486', '76.7178726', 'Emergency', 'nah', 'Bubble', '3', 'Heating'),
(58, 79, 'Near Aggarwal Enterprises, mouli baidwan, secctor 80, Sector 71, Sahibzada Ajit Singh Nagar, Punjab 160080, India', '30.704649', '76.717873', 'Emergency', 'just', 'Bun', '3', 'Heating'),
(59, 79, 'Shop No. 8-9, Ground Floor, Gurukirpa Complex, Godown Area, Zirakpur, Punjab 140603, India', '30.6601389', '76.8181695', 'Emergency', 'jhbhjb', 'Jhbhjjh', '3', 'Heating'),
(60, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.7046486', '76.7178726', 'Emergency', 'afar', 'Dads for', '3', 'Heating'),
(61, 79, 'R/21, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, India', '30.7029706', '76.6816615', 'Standard', 'kdkek', ' Xns', '3', 'Heating'),
(62, 79, 'F-427 phase-8B Ind. Area, sector 91, Mohali, Punjab, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.7020665', '76.6829382', 'Standard', 'kdkdj', 'Mdmd', '3', 'Heating'),
(63, 79, '2024, 55 N Brandon Dr, Glendale Heights, IL 60139, USA', '41.931297', '-88.088583', 'Standard', 'my shit is broke!', 'My AC is not working. Need help asap', '1', 'Air conditioning'),
(64, 79, '2024, 55 N Brandon Dr, Glendale Heights, IL 60139, USA', '41.931297', '-88.088583', 'Standard', 'My sink is leaking', 'My kitchen faucet is leaking', '4', 'Plumbing'),
(65, 79, '800 Lincoln Hwy, Clinton, IA 52732, USA', '41.837718', '-90.1932134', 'Standard', 'No AC', 'Air not blowing ', '1', 'Air conditioning'),
(66, 79, 'F-449 Industrial Area Mohali Phase 8-b, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, SH 12A, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, India', '30.7020633', '76.6836289', 'Standard', 'plumbing problem', 'Leakage in pipe', '4', 'Plumbing'),
(67, 79, 'F-449 Industrial Area Mohali Phase 8-b, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, SH 12A, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, India', '30.7020633', '76.6836289', 'Standard', 'need plumber', 'Leakage', '4', 'Plumbing'),
(68, 79, 'F-452 Phase-8B, Industrial Area, Mohali, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 160055, India', '30.7023539', '76.6832507', 'Standard', 'leakage', 'Need plumber', '4', 'Plumbing'),
(69, 79, 'F-452 Phase-8B, Industrial Area, Mohali, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 160055, India', '30.7023539', '76.6832507', 'Standard', 'wiring problem', 'Need electrician', '2', 'Electrician'),
(70, 79, 'Behgal cancer institute f-431-436 Industrial area 8b near, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.7018051', '76.6825072', 'Standard', 'check ', 'Plumb', '4', 'Plumbing'),
(71, 79, 'R/21, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, India', '30.7029706', '76.6816615', 'Standard', 'kckc', 'Kcc', '1', 'Air conditioning'),
(72, 79, 'F 449, Phase-8-B, Industrial Area, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.7016275', '76.6833846', 'Standard', 'kd', 'C', '4', 'Plumbing'),
(73, 79, 'F-449 Industrial Area Mohali Phase 8-b, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, SH 12A, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, India', '30.7020633', '76.6836289', 'Standard', 'xbx', 'Z s', '1', 'Air conditioning'),
(74, 79, 'F-452 Phase-8B, Industrial Area, Mohali, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 160055, India', '30.7023539', '76.6832507', 'Standard', 'phzsphs', 'Kdudds', '4', 'Plumbing'),
(75, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.7046486', '76.7178726', 'Standard', 'plumbing', 'Need plumber', '4', 'Plumbing'),
(76, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.7046486', '76.7178726', 'Emergency', 'dad', 'Dad', '4', 'Plumbing'),
(77, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.7046486', '76.7178726', 'Emergency', 'adds', 'Add add', '4', 'Plumbing'),
(78, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.704555', '76.718365', 'Emergency', 'adds', 'Did', '4', 'Plumbing'),
(79, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.7046486', '76.7178726', 'Emergency', 'SDSU', 'Sdvsdvs', '4', 'Plumbing'),
(80, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.704555', '76.718365', 'Emergency', 'gun', 'H', '4', 'Plumbing'),
(81, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.704555', '76.718365', 'Emergency', 'man kjkhbb', 'Jkbuibibik', '4', 'Plumbing'),
(82, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.704555', '76.718365', 'Emergency', 'link', 'Jhbjb', '4', 'Plumbing'),
(83, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.704555', '76.718365', 'Emergency', 'jbijbibuihiu', 'Joni I I', '4', 'Plumbing'),
(84, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.704555', '76.718365', 'Emergency', 'on', 'Ugh', '4', 'Plumbing'),
(85, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.7046486', '76.7178726', 'Emergency', 'the', 'He', '4', 'Plumbing'),
(86, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.7046486', '76.7178726', 'Emergency', 'Hecht', 'Thx', '4', 'Plumbing'),
(87, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.7046486', '76.7178726', 'Standard', 'Phil', 'Ugg’s', '4', 'Plumbing'),
(88, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.704555', '76.718365', 'Emergency', 'this', 'Dg', '4', 'Plumbing'),
(89, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.704555', '76.718365', 'Emergency', 'egg', 'Ed', '4', 'Plumbing'),
(90, 79, 'F-429, Phase 8B, Industrial Area, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 160059, India', '30.701821', '76.682771', 'Emergency', 'DJs', ' Ns', '4', 'Plumbing'),
(91, 79, 'F-449 Industrial Area Mohali Phase 8-b, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, SH 12A, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, India', '30.7020633', '76.6836289', 'Standard', 'sh', 'Sh', '4', 'Plumbing'),
(92, 79, 'F-452 Phase-8B, Industrial Area, Mohali, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 160055, India', '30.7023539', '76.6832507', 'Emergency', 'of', 'Of', '4', 'Plumbing'),
(93, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.704555', '76.718365', 'Emergency', 'in', 'In', '4', 'Plumbing'),
(94, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.704555', '76.718365', 'Emergency', 'fog', 'Sry', '4', 'Plumbing'),
(95, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.7046486', '76.7178726', 'Emergency', 'Lin', 'Jhbhjv', '4', 'Plumbing'),
(96, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.704555', '76.718365', 'Standard', 'did', 'Did', '4', 'Plumbing'),
(97, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.7046486', '76.7178726', 'Emergency', 'gd', 'S', '4', 'Plumbing'),
(98, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.704555', '76.718365', 'Emergency', 'add', 'Add', '4', 'Plumbing'),
(99, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.7046486', '76.7178726', 'Emergency', 'did', 'Add', '4', 'Plumbing'),
(100, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.704555', '76.718365', 'Emergency', 'as', 'Asdafdafa', '4', 'Plumbing'),
(101, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.7046486', '76.7178726', 'Standard', 'add', 'Sdgsgssd', '4', 'Plumbing'),
(102, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.704555', '76.718365', 'Emergency', 'd', 'Add', '4', 'Plumbing'),
(103, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.704555', '76.718365', 'Emergency', 'did', 'Suggs', '4', 'Plumbing'),
(104, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.704555', '76.718365', 'Emergency', 'was', 'Retrytfjgkj', '4', 'Plumbing'),
(105, 79, '2722, Mohali Bypass, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160071, India', '30.7046486', '76.7178726', 'Emergency', 'as', 'We', '4', 'Plumbing'),
(106, 79, '7071 Riverview Rd, Thomson, IL 61285, USA', '42.8488948', '-91.0873555', 'Standard', 'no ac ', 'Air conditioning not blowing that cold', '1', 'Air conditioning'),
(107, 79, '5956 Riverview Rd, Thomson, IL 61285, USA', '42.0142893', '-90.1246638', 'Emergency', 'no heat', 'Heat not working ', '3', 'Heating'),
(108, 79, '4811 N Brady St, Davenport, IA 52806, USA', '41.5705127', '-90.5679952', 'Standard', 'AC is down', 'AC buzzing noise', '1', 'Air conditioning'),
(109, 79, '816 W Main St, Thomson, IL 61285, USA', '41.9589607', '-90.0996406', 'Standard', 'smell smoke', 'Smell electrical burning ', '2', 'Electrician'),
(110, 79, '#2345, Sector 60, Sahibzada Ajit Singh Nagar, Punjab 160070, India', '30.7048704', '76.7182163', 'Emergency', 'did', 'Add', '4', 'Plumbing'),
(111, 79, '5759 Riverview Rd, Thomson, IL 61285, USA', '42.0101006', '-90.1248248', 'Standard', 'leaky pipe', 'Water dripping from plumbing pipe', '4', 'Plumbing'),
(112, 79, '5759 Riverview Rd, Thomson, IL 61285, USA', '42.0101006', '-90.1248248', 'Emergency', 'no ac', 'No ac,very hot!!', '1', 'Air conditioning'),
(113, 79, '5694 Riverview Rd, Thomson, IL 61285, USA', '42.0138061', '-90.1252378', 'Standard', 'no ac', 'Not working', '1', 'Air conditioning'),
(114, 79, '7071 Riverview Rd, Thomson, IL 61285, USA', '42.8488948', '-91.0873555', 'Emergency', 'no water', 'Water coming from ground in yard', '4', 'Plumbing'),
(115, 79, '309 Main St, Savanna, IL 61074, USA', '42.0936257', '-90.1567791', 'Standard', 'toilet overflowing ', 'Shit everywhere ', '4', 'Plumbing'),
(116, 79, '#2345, Sector 60, Sahibzada Ajit Singh Nagar, Punjab 160070, India', '30.7048704', '76.7182163', 'Emergency', 'adds', 'Stat', '2', 'Electrician'),
(117, 79, '2108 E 11th St, Davenport, IA 52803, USA', '41.5311704', '-90.5460553', 'Standard', 'no Ac', 'Ac has no fan', '1', 'Air conditioning'),
(118, 79, '518 Locust St, Davenport, IA 52803, USA', '41.5404254', '-90.5807611', 'Standard', 'no Ac', 'Air not working ', '1', 'Air conditioning'),
(119, 79, 'F-449 Industrial Area Mohali Phase 8-b, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, SH 12A, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, India', '30.7020633', '76.6836289', 'Standard', 'hhi TN', 'My', '1', 'Air conditioning'),
(120, 79, '57 Madison St, Savanna, IL 61074, USA', '42.0942451', '-90.1573518', 'Standard', 'Ac down', 'No cooling', '1', 'Air conditioning'),
(121, 79, 'F-449 Industrial Area Mohali Phase 8-b, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, SH 12A, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, India', '30.7020633', '76.6836289', 'Standard', 'ysrsu', 'Sursis', '1', 'Air conditioning'),
(122, 79, 'F-449 Industrial Area Mohali Phase 8-b, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, SH 12A, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, India', '30.7020633', '76.6836289', 'Emergency', 'gzip', 'Titsitsi', '2', 'Electrician'),
(123, 79, 'Starthub Nation, Plot No F-452 ,Phase-8B Ind Area. Mohali, Punjab, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 160062, India', '30.7023753', '76.6833341', 'Emergency', 'hsjsj', 'Hsjsj', '1', 'Air conditioning'),
(124, 95, 'F-449 Industrial Area Mohali Phase 8-b, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, SH 12A, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, India', '30.7020633', '76.6836289', 'Standard', 'fits its', 'Fairs', '1', 'Air conditioning'),
(125, 79, 'Center, IA, USA', '41.8992478', '-90.3560076', 'Standard', 'no heat', 'Furnace not blowing hot air', '3', 'Heating'),
(126, 79, 'S,C.f 19 phase 3B2 Sahibjada Ajit singh Nagar, Sector 71, Sahibzada Ajit Singh Nagar, Punjab 160019, India', '30.704649', '76.717873', 'Standard', 'plumbing', 'We fed', '4', 'Plumbing'),
(127, 79, 'S,C.f 19 phase 3B2 Sahibjada Ajit singh Nagar, Sector 71, Sahibzada Ajit Singh Nagar, Punjab 160019, India', '30.704649', '76.717873', 'Standard', 'sad', 'Adds', '4', 'Plumbing'),
(128, 79, 'S,C.f 19 phase 3B2 Sahibjada Ajit singh Nagar, Sector 71, Sahibzada Ajit Singh Nagar, Punjab 160019, India', '30.704649', '76.717873', 'Standard', '21', 'Add', '4', 'Plumbing'),
(130, 79, 'F-449 Industrial Area Mohali Phase 8-b, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, SH 12A, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, India', '30.7020633', '76.6836289', 'Standard', ' morning ', 'Hi ', '4', 'Plumbing'),
(132, 79, 'F-449 Industrial Area Mohali Phase 8-b, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, SH 12A, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, India', '30.7020633', '76.6836289', 'Standard', 'go', 'No', '4', 'Plumbing'),
(135, 79, 'F-449 Industrial Area Mohali Phase 8-b, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, SH 12A, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, India', '30.7020633', '76.6836289', 'Standard', 'food', 'I’d did', '4', 'Plumbing'),
(138, 79, 'F-449 Industrial Area Mohali Phase 8-b, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, SH 12A, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, India', '30.7020633', '76.6836289', 'Emergency', 'hh', 'Check ', '4', 'Plumbing'),
(139, 79, 'F-449 Industrial Area Mohali Phase 8-b, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, SH 12A, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, India', '30.7020633', '76.6836289', 'Standard', 'Fg', 'FghjMessage ', '4', 'Plumbing'),
(140, 79, 'F-449 Industrial Area Mohali Phase 8-b, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, SH 12A, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, India', '30.7020633', '76.6836289', 'Standard', 'ch', 'Fg', '4', 'Plumbing'),
(141, 79, 'F-449 Industrial Area Mohali Phase 8-b, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, SH 12A, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, India', '30.7020633', '76.6836289', 'Emergency', 'sh', 'DJs', '4', 'Plumbing'),
(142, 79, 'F-449 Industrial Area Mohali Phase 8-b, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, SH 12A, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, India', '30.7020633', '76.6836289', 'Standard', 'Fg', 'Sh', '4', 'Plumbing'),
(143, 79, 'F-449 Industrial Area Mohali Phase 8-b, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, SH 12A, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, India', '30.7020633', '76.6836289', 'Standard', 'I’d', 'Lx', '4', 'Plumbing'),
(144, 79, 'F-449 Industrial Area Mohali Phase 8-b, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, SH 12A, Sector 91, Sahibzada Ajit Singh Nagar, Punjab 140307, India', '30.7020633', '76.6836289', 'Standard', 'NC', 'Close', '4', 'Plumbing');

-- --------------------------------------------------------

--
-- Table structure for table `ServicesFunction`
--

CREATE TABLE `ServicesFunction` (
  `ID` int(11) NOT NULL,
  `ServicesID` int(11) NOT NULL,
  `ContractorID` int(11) NOT NULL,
  `TechnicianID` int(11) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ServicesFunction`
--

INSERT INTO `ServicesFunction` (`ID`, `ServicesID`, `ContractorID`, `TechnicianID`, `Status`) VALUES
(31, 53, 80, 81, 4),
(32, 57, 80, 82, 0),
(33, 59, 80, 82, 0),
(34, 60, 80, 82, 0),
(35, 54, 80, 83, 0),
(36, 58, 80, 82, 0),
(37, 63, 80, 83, 0),
(38, 65, 80, 83, 0),
(39, 56, 80, 81, 4),
(40, 68, 80, 81, 4),
(41, 55, 80, 81, 4),
(42, 70, 80, 81, 4),
(43, 72, 80, 81, 4),
(44, 74, 80, 81, 4),
(45, 77, 80, 81, 4),
(46, 83, 80, 81, 0),
(47, 94, 80, 81, 0),
(48, 95, 80, 81, 1),
(49, 96, 80, 81, 1),
(50, 93, 80, 81, 1),
(51, 109, 80, 87, 0),
(52, 108, 80, 83, 0),
(53, 107, 80, 88, 0),
(54, 111, 80, 81, 4),
(55, 112, 80, 83, 0),
(56, 113, 80, 83, 0),
(57, 115, 80, 81, 1),
(58, 117, 80, 83, 0),
(59, 118, 80, 83, 0),
(60, 110, 80, 81, 0),
(61, 105, 80, 81, 0),
(62, 120, 80, 83, 1),
(63, 125, 80, 82, 0),
(64, 127, 80, 81, 5),
(65, 128, 80, 81, 4),
(66, 130, 80, 81, 4),
(67, 131, 80, 81, 0),
(68, 132, 80, 81, 4),
(69, 126, 80, 81, 4),
(70, 135, 80, 81, 4),
(71, 136, 80, 81, 0),
(72, 138, 80, 81, 4),
(73, 139, 80, 81, 4),
(74, 140, 80, 81, 0),
(75, 91, 80, 81, 0),
(76, 87, 80, 81, 0),
(77, 86, 80, 81, 0),
(78, 90, 80, 81, 0),
(79, 141, 80, 81, 0),
(80, 142, 80, 81, 0),
(81, 78, 80, 81, 0),
(82, 80, 80, 81, 0),
(86, 143, 80, 81, 0),
(87, 144, 80, 81, 0),
(88, 100, 80, 81, 0),
(89, 84, 80, 81, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ServicesList`
--

CREATE TABLE `ServicesList` (
  `Id` int(11) NOT NULL,
  `Name` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ServicesList`
--

INSERT INTO `ServicesList` (`Id`, `Name`, `Image`) VALUES
(1, 'Air conditioning', 'air_conditioning@3x.png'),
(2, 'Electrician', 'electrical@3x.png'),
(3, 'Heating', 'heating@3x.png'),
(4, 'Plumbing', 'plumbing@3x.png');

-- --------------------------------------------------------

--
-- Table structure for table `TechRelationWithContr`
--

CREATE TABLE `TechRelationWithContr` (
  `ID` int(11) NOT NULL,
  `TechnicianID` int(11) NOT NULL,
  `ContractorID` int(11) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `TechRelationWithContr`
--

INSERT INTO `TechRelationWithContr` (`ID`, `TechnicianID`, `ContractorID`, `Status`) VALUES
(12, 81, 80, 1),
(13, 82, 80, 1),
(14, 83, 80, 1),
(15, 84, 80, 1),
(16, 85, 80, 1),
(18, 87, 80, 1),
(19, 88, 80, 1),
(21, 86, 80, 1),
(22, 89, 80, 1),
(23, 90, 80, 1),
(24, 92, 80, 0),
(25, 91, 80, 1),
(26, 93, 80, 0),
(27, 127, 128, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Token`
--

CREATE TABLE `Token` (
  `Id` int(11) NOT NULL,
  `Token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserId` int(11) NOT NULL,
  `ExpiresIn` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `Id` int(11) NOT NULL,
  `Fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` text COLLATE utf8mb4_unicode_ci,
  `ContactNo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ProfilePic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `CompanyName` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `LicenceNo` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LicenceImage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoOfTechnicians` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OtherCertificate` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Skill` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DeviceId` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `DeviceType` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Latitude` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Longitude` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Experience` int(11) NOT NULL,
  `services_provided` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `services_names` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`Id`, `Fname`, `Lname`, `Email`, `Password`, `ContactNo`, `ProfilePic`, `CompanyName`, `Address`, `LicenceNo`, `LicenceImage`, `NoOfTechnicians`, `OtherCertificate`, `Skill`, `UserType`, `DeviceId`, `DeviceType`, `Latitude`, `Longitude`, `Experience`, `services_provided`, `services_names`) VALUES
(79, 'cyst', 'test', 'customer@gmail.com', '123', '1898998', 'file0.jpeg-06_18_2018_19_43_24.jpeg', '', '', '', '', '', '', '', 'customer', '', '', '30.7046', '76.7179', 0, '', ''),
(80, '', '', 'contractor@gmail.com', '123456', '3242434', 'file0.jpeg-06_18_2018_19_44_28.jpeg', 'cont and comp', 'Chandigarh', '', 'file0.jpeg-06_18_2018_19_44_06.jpeg', '2', 'file0.jpeg-06_18_2018_19_44_06.jpeg,file1.jpeg-06_18_2018_19_44_06.jpeg,file2.jpeg-06_18_2018_19_44_06.jpeg,file3.jpeg-06_18_2018_19_44_06.jpeg', '', 'contractor', '1234567', 'I', '30.7046', '76.7179', 2, '1,2,3,4', 'Air conditioning,Electrician,Heating,Plumbing'),
(81, 'tech', ' ', 'tech@gmail.com', '123', '435342524', 'file0.jpeg-06_18_2018_19_50_50.jpeg', '', 'Mohali', '3414321', 'file1.jpeg-06_18_2018_19_50_52.jpeg', '', '', 'Plumbing', 'Technician', '1234567', 'I', '30.7046', '76.7179', 0, '', ''),
(82, 'new tech', ' ', 'heating@gmail.com', '123', '9784617', 'file0.jpeg-06_19_2018_17_52_46.jpeg', '', 'Mohali', '421817', 'file1.jpeg-06_19_2018_17_52_47.jpeg', '', '', 'Heating', 'Technician', 'E0406C2F60350AF84938DD4D5D341815547649BD19DA3A51D66A6E5929319CBE', 'I', '30.7020598725484', '76.683665590601', 0, '', ''),
(83, 'cool', ' ', 'air@gmail.com', '123', '4643', 'file0.jpeg-06_19_2018_18_23_33.jpeg', '', 'Usa', '13131646', 'file1.jpeg-06_19_2018_18_23_34.jpeg', '', '', 'Air conditioning', 'Technician', '0DF5032AF70B8366BD313FB58851014F72A08571D259FC8B75DFC0EEE79A32AA', 'I', '30.7021361433864', '76.6835897865272', 0, '', ''),
(84, 'electrician', ' ', 'electrician@gmail.com', '123', '86561', 'file0.jpeg-06_19_2018_18_25_20.jpeg', '', 'chandigarh', '46166765', 'file1.jpeg-06_19_2018_18_25_21.jpeg', '', '', 'Electrician', 'Technician', '', '', '30.7021057270515', '76.6836279010389', 0, '', ''),
(85, 'sne', ' ', 'texh@gmail.com', '123', '7656', 'file0.jpeg-06_19_2018_18_50_42.jpeg', '', 'do', '656', 'file1.jpeg-06_19_2018_18_50_42.jpeg', '', '', 'Air conditioning', 'Technician', '7479500E9CD7539D9D70DB43EE74F20240BE489A30D0D93B2CC47ABE5D5E09C8', 'I', '30.7021627820446', '76.683584749274', 0, '', ''),
(86, 'dj', ' ', 'g@gmail.com', '123', '4353264', 'file0.jpeg-06_19_2018_18_54_24.jpeg', '', 'die', '64346', 'file1.jpeg-06_19_2018_18_54_25.jpeg', '', '', 'Air conditioning', 'Technician', '1234567', 'I', '30.7020423739268', '76.6836619791903', 0, '', ''),
(87, 'dj', ' ', 'dj@gmail.con', '123', '5336', 'file0.jpeg-06_19_2018_19_04_49.jpeg', '', 'chj', '58825', 'file1.jpeg-06_19_2018_19_04_49.jpeg', '', '', 'Electrician', 'Technician', '', '', '30.7019128231618', '76.683432804492', 0, '', ''),
(88, 'lt', ' ', 'lr@gmail.com', '123', '25208', 'file0.jpeg-06_19_2018_19_06_23.jpeg', '', 'ghj', '855', 'file1.jpeg-06_19_2018_19_06_23.jpeg', '', '', 'Heating', 'Technician', '1234567', 'I', '30.7019128231618', '76.683432804492', 0, '', ''),
(89, 'dh', ' ', 'jd@gmail.com', '123', '4665', 'file0.jpeg-06_19_2018_19_12_02.jpeg', '', 'fjslel', '5764', 'file1.jpeg-06_19_2018_19_12_06.jpeg', '', '', 'Plumbing', 'Technician', '', '', '30.7021237740388', '76.6836195558855', 0, '', ''),
(90, 'john ', ' ', 'john@gmail.com', '123', '0854455', 'file_01517734614.jpeg-06_26_2018_14_22_57.jpeg', '', 'peru', '585', 'file_1993275686.jpeg-06_26_2018_14_22_58.jpeg', '', '', 'Plumbing', 'Technician', '7479500E9CD7539D9D70DB43EE74F20240BE489A30D0D93B2CC47ABE5D5E09C8', 'I', '30.7020909610013', '76.6836300054171', 0, '', ''),
(91, 'gil', ' ', 'gil@gmail.com', '123', '7946164', 'file_03665123707.jpeg-06_26_2018_15_30_01.jpeg', '', 'crotia', '4656', 'file_14275287218.jpeg-06_26_2018_15_30_02.jpeg', '', '', 'Heating', 'Technician', '1234567', 'I', '30.7021279936973', '76.6836060296913', 0, '', ''),
(92, 'tedk', ' ', 'tec@gmail.com', '123', '46465656', 'file_02224567365.jpeg-06_28_2018_12_58_55.jpeg', '', 'djdksk', '4646', 'file_11002288359.jpeg-06_28_2018_12_58_56.jpeg', '', '', 'Electrician', 'Technician', '3CB8F250878304749313A3253E19B18E7EC51D7F2BA2D17785F341E7C5893487', 'I', '30.702059043598', '76.6836442933101', 0, '', ''),
(93, 'sn', ' ', 'sk@gmail.com', '123', '46461', 'file_03271585358.jpeg-06_28_2018_13_24_03.jpeg', '', 'dkl', '466', 'file_12575949306.jpeg-06_28_2018_13_24_03.jpeg', '', '', 'Heating', 'Technician', '3CB8F250878304749313A3253E19B18E7EC51D7F2BA2D17785F341E7C5893487', 'I', '30.7020712016154', '76.6836495628906', 0, '', ''),
(94, 'Test', 'ver', 'hsjsjsjjs@yahoo.com', 'hahajaja', '8484646345', 'file_02081745269.jpeg-07_31_2018_21_09_32.jpeg', '', '', '', '', '', '', '', 'customer', '', '', '30.7022069677309', '76.6835400909414', 0, '', ''),
(95, 'Test', 'ver', 'verma@yahoo.com', 'zxcvb', '8196932837', 'file_02912590232.jpeg-08_02_2018_13_40_55.jpeg', '', '', '', '', '', '', '', 'customer', '534C5E1F16492A61350A45F75A9637094666A41A1103E1CFE2711229DA900CB7', 'I', '30.7021606633412', '76.6835895115565', 0, '', ''),
(96, '', '', 'bananaj@yahoo.com', '', '85858585858', 'file_03625918646.jpeg-08_02_2018_18_39_10.jpeg', 'banana', 'bananas', '', 'file_0304391501.jpeg-08_02_2018_18_07_55.jpeg', '84', 'file_0304391501.jpeg-08_02_2018_18_07_55.jpeg', '', 'contractor', '', '', '30.70210520898079', '76.68360690157841', 8, '1', 'Air conditioning'),
(97, 'hshsh', ' ', 'hahaj@yahoo.com', 'babajaj', '84848464646', 'file_02141993433.jpeg-08_02_2018_19_08_00.jpeg', '', 'bhajans', '84845', 'file_1361734743.jpeg-08_02_2018_19_08_00.jpeg', '', '', 'Air conditioning', 'Technician', '', '', '30.7020908087183', '76.6836613', 0, '', ''),
(98, '', '', 'hahahahah@yahoo.com', '', '878757564644', 'file_0263305625.jpeg-08_02_2018_19_31_00.jpeg', 'hshsh sh', 'cabs', '', 'file_03913325636.jpeg-08_02_2018_19_30_41.jpeg', '84', 'file_03913325636.jpeg-08_02_2018_19_30_41.jpeg', '', 'contractor', '', '', '30.70213189387481', '76.68361851191898', 54, '1', 'Air conditioning'),
(99, 'Test', ' ', 'test@yahoo.com', 'zxcvbnm', '8196932837', 'file_0485579883.jpeg-08_03_2018_14_27_35.jpeg', '', 'hshsh ja', '8455', 'file_1122337770.jpeg-08_03_2018_14_27_35.jpeg', '', '', 'Electrician', 'Technician', '', '', '30.7020907337883', '76.6836214690415', 0, '', ''),
(100, 'Test', 'vbbj', 'hajaja@yahoo.com', 'hahahahaj', '848787878787', 'file_0273847727.jpeg-08_03_2018_18_17_53.jpeg', '', '', '', '', '', '', '', 'customer', '', '', '30.7021027944339', '76.6836578944524', 0, '', ''),
(101, '', '', 'bananas@yahoo.com', '', '8161616', 'file_03691166487.jpeg-08_06_2018_12_50_02.jpeg', 'hsjsj', 'hsjsj', '', 'file_01121111941.jpeg-08_06_2018_12_48_40.jpeg', '545445', 'file_01121111941.jpeg-08_06_2018_12_48_40.jpeg,file_11636299464.jpeg-08_06_2018_12_48_40.jpeg', '', 'contractor', '', '', '30.70212373898497', '76.68361041977543', 848445, '4', 'Plumbing'),
(102, 'get', ' ', 'testq@yahoo.com', 'zxcvbnm', '8496932837', 'file_01901142871.jpeg-08_06_2018_18_35_14.jpeg', '', 'hahahshaha', '545545', 'file_11562928172.jpeg-08_06_2018_18_35_15.jpeg', '', '', 'Electrician', 'Technician', '', '', '30.7020549854158', '76.6836618161068', 0, '', ''),
(103, '', '', 'bsbsbjs@yahoo.com', '', '8196932837', 'file_02971072637.jpeg-08_07_2018_12_35_34.jpeg', 'check', 'hdhd', '', 'file_0623048415.jpeg-08_07_2018_12_35_14.jpeg', '4', 'file_0623048415.jpeg-08_07_2018_12_35_14.jpeg', '', 'contractor', 'B6D32234103CCEA4E7063BED4A1856D95B691547C6AA171B49D883EF0946E99F', 'I', '30.70214274966731', '76.68352419278983', 84, '4', 'Plumbing'),
(104, 'aa', 'af', 'adasdasddsdadaf@gmail.com', '13', '13', 'qe', '', '', '', '', '', '', '', '134', '13', 'I', '3', '2', 0, '', ''),
(105, 'test', 'test', 'tes@g.com', 'rfg', '65465', 'tesw', '', '', '', '', '', '', '', '1', '2', '2', '5', '1', 0, '', ''),
(106, 'Drsstdf', 'xuffxu', 'igxixxi@yahoo.com', 'tdotkgo', '7765765773', '/storage/emulated/0/Pictures/Screenshots/Screenshot_2018-08-08-09-19-27-91.png', '', '', '', '', '', '', '', '1', '2', '3', '5', '4', 0, '', ''),
(107, 'geet', 'bsjsha', 'jasjsshjs@yahoo.com', 'ndjskjsjksjas', '8491618798', '/storage/emulated/0/Pictures/Screenshots/Screenshot_2018-08-08-09-19-27-91.png', '', '', '', '', '', '', '', '1', '2', '3', '5', '4', 0, '', ''),
(108, 'geet', 'verma', 'bsbsjjskha@yahoo.com', 'ndkshallskskkHzls', '9464664949', '/storage/emulated/0/Pictures/Screenshots/Screenshot_2018-08-08-09-19-27-91.png', '', '', '', '', '', '', '', '1', '2', '3', '5', '4', 0, '', ''),
(109, 'geet', 'verma', 'verma12@yahoo.com', 'bsbsjsksklsls', '8499464613', '/storage/emulated/0/Pictures/Screenshots/Screenshot_2018-08-08-09-19-27-91.png', '', '', '', '', '', '', '', '1', '2', '3', '5', '4', 0, '', ''),
(110, 'abhey', 'geet', 'bsshjsnd@yahoo.com', 'bsbsnsjsmashskskks', '9494949499', '/storage/emulated/0/Pictures/Screenshots/Screenshot_2018-08-08-09-19-27-91.png', '', '', '', '', '', '', '', '1', '2', '3', '5', '4', 0, '', ''),
(111, 'Geet', 'iffif', 'jtxkgxkgit@yahoo.com', 'hsjrsitsitdi', '6757676276', '/storage/sdcard0/WhatsApp/Media/WhatsApp Images/IMG-20180809-WA0000.jpg', '', '', '', '', '', '', '', '1', '2', '3', '5', '4', 0, '', ''),
(112, 'Fngnfjg', 'jdhdgs', 'jsfjjd@yahoo.comz', 'fsjtsjtsjgk', '5945546545', '/storage/sdcard0/Pictures/Screenshots/Screenshot_2018-08-10-09-21-38.png', '', '', '', '', '', '', '', '1', '2', '3', '5', '4', 0, '', ''),
(113, 'C7y7ctuct', 'bsnshs', 'hshsjsj@yahoo.com', 'hshhsjshsksoso', '9797946643', '/storage/emulated/0/Pictures/Screenshots/Screenshot_2018-08-09-12-24-02.png', '', '', '', '', '', '', '', '1', '2', '3', '5', '4', 0, '', ''),
(114, 'Shfsjfs', 'jtsjzgjgx', 'jfjfxgj@yahoo.com', 'gkskgskgzkgzkg', '5765765795', '/storage/sdcard0/WhatsApp/Media/WhatsApp Images/IMG-20180809-WA0014.jpg', '', '', '', '', '', '', '', '1', '2', '3', '5', '4', 0, '', ''),
(115, 'Dgkjgdjsgj', 'jtsjtstjs', 'jtsjtshtsj@yahoo.com', 'gsjgskgsjfkg', '2462465495', '/storage/sdcard0/WhatsApp/Media/WhatsApp Images/IMG-20180809-WA0014.jpg', '', '', '', '', '', '', '', '1', '2', '3', '5', '4', 0, '', ''),
(116, 'Gshsjsjsj', 'vsshjs', 'vzbJskao@yahoo.com', 'vsbajakkala', '9494994613', '/storage/sdcard0/WhatsApp/Media/WhatsApp Images/IMG-20180809-WA0014.jpg', '', '', '', '', '', '', '', '1', '2', '3', '5', '4', 0, '', ''),
(117, 'Sggjstjj', 'gjdjdtjdt', 'tsjjtsdj@yahoo.com', 'ngsngsdky', '9549545494', '/storage/sdcard0/WhatsApp/Media/WhatsApp Images/IMG-20180809-WA0014.jpg', '', '', '', '', '', '', '', '1', '2', '3', '5', '4', 0, '', ''),
(118, 'hshshsjsj', 'jsjssjs', 'bsshsnsk@yahoo.com', 'bdnsjskksk', '8996461676', '/storage/emulated/0/WhatsApp/Media/WhatsApp Profile Photos/Sanjeev 20180810_101810.jpg', '', '', '', '', '', '', '', '1', '2', '3', '5', '4', 0, '', ''),
(119, 'bsbsjsh', 'hajsnsk', 'bsshsnk@yahoo.com', 'hahhsjksks', '9794994464', '/storage/emulated/0/WhatsApp/Media/WhatsApp Images/IMG-20180809-WA0001.jpeg', '', '', '', '', '', '', '', '1', '2', '3', '5', '4', 0, '', ''),
(120, 'Babsnsj', 'sbbsnsjw', 'sbbssjsj@yahoo.com', 'bsbsnsnksksls', '9494949449', '/storage/sdcard0/WhatsApp/Media/WhatsApp Images/IMG-20180809-WA0013.jpg', '', '', '', '', '', '', '', '1', '2', '3', '5', '4', 0, '', ''),
(121, 'Xidugzu', 'fjhzjx', 'djxdjjx@yahoo.vom', 'jfzkfskzkxk', '7576768686', '/storage/sdcard0/WhatsApp/Media/WhatsApp Images/IMG-20180809-WA0013.jpg', '', '', '', '', '', '', '', '1', '2', '3', '5', '4', 0, '', ''),
(122, 'Hshsjsj', 'bsbsbsh', 'bssbshsj@yahoo.com', 'bsnsnsnsjks', '9797946461', '/storage/sdcard0/WhatsApp/Media/WhatsApp Images/IMG-20180809-WA0013.jpg', '', '', '', '', '', '', '', '1', '2', '3', '5', '4', 0, '', ''),
(123, 'BBanaja', 'ahajaj', 'bsshjsjs@yahoo.com', 'bsbsnnsskskskksl', '9494646161', '/storage/sdcard0/WhatsApp/Media/WhatsApp Images/IMG-20180809-WA0013.jpg', '', '', '', '', '', '', '', '1', '2', '3', '5', '4', 0, '', ''),
(124, 'Vshhjsjs', 'bshssj', 'bsjssj@yahoo.com', 'bzhshsjssoos', '9494946461', '/storage/emulated/0/Pictures/Screenshots/Screenshot_2018-08-09-15-23-34.png', '', '', '', '', '', '', '', '1', '2', '3', '5', '4', 0, '', ''),
(125, 'Jfjfkd', 'jtsjs', 'mhdmgdjg@yahoo.com', 'gsnfsmtsmgsmy', '5949495495', '/storage/sdcard0/WhatsApp/Media/WhatsApp Images/IMG-20180809-WA0013.jpg', '', '', '', '', '', '', '', '1', '2', '3', '5', '4', 0, '', ''),
(126, 'Jfjfkd', 'jtsjs', 'mhdmgdjg@yahoo.com', 'gsnfsmtsmgsmy', '5949495495', '/storage/sdcard0/WhatsApp/Media/WhatsApp Images/IMG-20180809-WA0013.jpg', '', '', '', '', '', '', '', '1', '2', '3', '5', '4', 0, '', ''),
(127, 'Donald Trump', ' ', 'trump@Gmail.com', '$$$$', '5634387243', 'file_01668602048.jpeg-08_11_2018_21_06_59.jpeg', '', 'Money Street', '123456', 'file_120704630.jpeg-08_11_2018_21_06_59.jpeg', '', '', 'Air conditioning', 'Technician', '', '', '42.0146119292289', '-90.124003585865', 0, '', ''),
(128, '', '', 'trumptrain@Gmail.com', '', '5635556123', '', 'Trump Train', 'Money Central', '', 'file_01350820934.jpeg-08_11_2018_21_19_40.jpeg', '8', '', '', 'contractor', '', '', '42.01461490009282', '-90.12400385372368', 10, '1,3,4', 'Air conditioning,Heating,Plumbing');

-- --------------------------------------------------------

--
-- Table structure for table `UserGroup`
--

CREATE TABLE `UserGroup` (
  `GroupID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `MemberID` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `GroupName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GroupImage` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `UserGroup`
--

INSERT INTO `UserGroup` (`GroupID`, `UserID`, `MemberID`, `GroupName`, `GroupImage`) VALUES
(12, 81, '80,81,84', 'test group', 'file_01504666604.jpeg-07_31_2018_18_37_02.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `WorkingStatus`
--

CREATE TABLE `WorkingStatus` (
  `WorkingStatusID` int(11) NOT NULL,
  `ContractorID` int(11) NOT NULL,
  `TechnicianID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `JobID` int(11) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `WorkingStatus`
--

INSERT INTO `WorkingStatus` (`WorkingStatusID`, `ContractorID`, `TechnicianID`, `UserID`, `JobID`, `Status`) VALUES
(1, 64, 0, 0, 52, 0),
(2, 80, 0, 0, 53, 0),
(3, 80, 0, 0, 54, 0),
(4, 80, 0, 0, 55, 0),
(5, 80, 0, 0, 56, 0),
(6, 80, 0, 0, 57, 0),
(7, 80, 0, 0, 58, 0),
(8, 80, 0, 0, 59, 0),
(9, 80, 0, 0, 60, 0),
(10, 80, 0, 0, 61, 0),
(11, 80, 0, 0, 62, 0),
(12, 80, 0, 0, 62, 0),
(13, 80, 0, 0, 63, 0),
(14, 80, 0, 0, 64, 0),
(15, 80, 0, 0, 65, 0),
(16, 80, 0, 0, 66, 0),
(17, 80, 0, 0, 67, 0),
(18, 80, 0, 0, 67, 0),
(19, 80, 0, 0, 68, 0),
(20, 80, 0, 0, 67, 0),
(21, 80, 0, 0, 69, 0),
(22, 80, 0, 0, 70, 0),
(23, 80, 0, 0, 71, 0),
(24, 80, 0, 0, 72, 0),
(25, 80, 0, 0, 73, 0),
(26, 80, 0, 0, 74, 0),
(27, 80, 0, 0, 75, 0),
(28, 80, 0, 0, 76, 0),
(29, 80, 0, 0, 77, 0),
(30, 80, 0, 0, 78, 0),
(31, 80, 0, 0, 79, 0),
(32, 80, 0, 0, 80, 0),
(33, 80, 0, 0, 81, 0),
(34, 80, 0, 0, 82, 0),
(35, 80, 0, 0, 83, 0),
(36, 80, 0, 0, 84, 0),
(37, 80, 0, 0, 85, 0),
(38, 80, 0, 0, 86, 0),
(39, 80, 0, 0, 87, 0),
(40, 80, 0, 0, 88, 0),
(41, 80, 0, 0, 89, 0),
(42, 80, 0, 0, 90, 0),
(43, 80, 0, 0, 91, 0),
(44, 80, 0, 0, 92, 0),
(45, 80, 0, 0, 93, 0),
(46, 80, 0, 0, 94, 0),
(47, 80, 0, 0, 95, 0),
(48, 80, 0, 0, 96, 0),
(49, 80, 0, 0, 97, 0),
(50, 80, 0, 0, 98, 0),
(51, 80, 0, 0, 100, 0),
(52, 80, 0, 0, 99, 0),
(53, 80, 0, 0, 101, 0),
(54, 80, 0, 0, 102, 0),
(55, 80, 0, 0, 103, 0),
(56, 80, 0, 0, 104, 0),
(57, 80, 0, 0, 105, 0),
(58, 80, 0, 0, 107, 0),
(59, 80, 0, 0, 108, 0),
(60, 80, 0, 0, 109, 0),
(61, 80, 0, 0, 110, 0),
(62, 80, 0, 0, 111, 0),
(63, 80, 0, 0, 112, 0),
(64, 80, 0, 0, 113, 0),
(65, 80, 0, 0, 115, 0),
(66, 80, 0, 0, 117, 0),
(67, 80, 0, 0, 118, 0),
(68, 80, 0, 0, 120, 0),
(69, 80, 0, 0, 116, 0),
(70, 80, 0, 0, 119, 0),
(71, 80, 0, 0, 125, 0),
(72, 80, 0, 0, 126, 0),
(73, 80, 0, 0, 127, 0),
(74, 80, 0, 0, 128, 0),
(75, 80, 0, 0, 129, 0),
(76, 80, 0, 0, 130, 0),
(77, 80, 0, 0, 131, 0),
(78, 80, 0, 0, 132, 0),
(79, 80, 0, 0, 133, 0),
(80, 80, 0, 0, 134, 0),
(81, 80, 0, 0, 135, 0),
(82, 80, 0, 0, 136, 0),
(83, 80, 0, 0, 137, 0),
(84, 80, 0, 0, 138, 0),
(85, 80, 0, 0, 139, 0),
(86, 80, 0, 0, 140, 0),
(87, 80, 0, 0, 141, 0),
(88, 80, 0, 0, 142, 0),
(89, 80, 0, 0, 143, 0),
(90, 80, 0, 0, 144, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Chat`
--
ALTER TABLE `Chat`
  ADD PRIMARY KEY (`ChatID`);

--
-- Indexes for table `Estimation`
--
ALTER TABLE `Estimation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EstimationSetting`
--
ALTER TABLE `EstimationSetting`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Invoice`
--
ALTER TABLE `Invoice`
  ADD PRIMARY KEY (`InvoiceID`);

--
-- Indexes for table `Request`
--
ALTER TABLE `Request`
  ADD PRIMARY KEY (`RequestID`);

--
-- Indexes for table `Services`
--
ALTER TABLE `Services`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ServicesFunction`
--
ALTER TABLE `ServicesFunction`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ServicesList`
--
ALTER TABLE `ServicesList`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `TechRelationWithContr`
--
ALTER TABLE `TechRelationWithContr`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Token`
--
ALTER TABLE `Token`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `UserGroup`
--
ALTER TABLE `UserGroup`
  ADD PRIMARY KEY (`GroupID`);

--
-- Indexes for table `WorkingStatus`
--
ALTER TABLE `WorkingStatus`
  ADD PRIMARY KEY (`WorkingStatusID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Chat`
--
ALTER TABLE `Chat`
  MODIFY `ChatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;

--
-- AUTO_INCREMENT for table `Estimation`
--
ALTER TABLE `Estimation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `EstimationSetting`
--
ALTER TABLE `EstimationSetting`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `Invoice`
--
ALTER TABLE `Invoice`
  MODIFY `InvoiceID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Request`
--
ALTER TABLE `Request`
  MODIFY `RequestID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `Services`
--
ALTER TABLE `Services`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `ServicesFunction`
--
ALTER TABLE `ServicesFunction`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `ServicesList`
--
ALTER TABLE `ServicesList`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `TechRelationWithContr`
--
ALTER TABLE `TechRelationWithContr`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `Token`
--
ALTER TABLE `Token`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `UserGroup`
--
ALTER TABLE `UserGroup`
  MODIFY `GroupID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `WorkingStatus`
--
ALTER TABLE `WorkingStatus`
  MODIFY `WorkingStatusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
