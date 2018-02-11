-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2018 at 10:00 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kealcom_carrer`
--

-- --------------------------------------------------------

--
-- Table structure for table `create_schedule`
--

CREATE TABLE `create_schedule` (
  `id` int(11) NOT NULL,
  `jId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `interviewdate` date NOT NULL,
  `starttime` time NOT NULL,
  `endtime` time NOT NULL,
  `venue` text NOT NULL,
  `attendance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `jId` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `userId`, `jId`, `user`, `email`, `phone`) VALUES
(1, 569, 15, 'Anas Abdullah Alvi', 'alvi_moto@yahoo.com', '01752916688');

-- --------------------------------------------------------

--
-- Table structure for table `step_07`
--

CREATE TABLE `step_07` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `jId` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `interviewDate` date NOT NULL,
  `preselect` int(11) NOT NULL DEFAULT '0',
  `deselect` int(11) NOT NULL,
  `jobstatus` int(11) NOT NULL DEFAULT '0',
  `selected` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `step_07`
--

INSERT INTO `step_07` (`id`, `userId`, `jId`, `email`, `phone`, `interviewDate`, `preselect`, `deselect`, `jobstatus`, `selected`) VALUES
(1, 544, 1, 'shimulnoman03@gmail.com', '01793204444', '2017-12-04', 2, 0, 0, 0),
(2, 552, 1, 'mehedi.mehedi786@gmail.com', '01675742661', '2017-12-04', 1, 0, 0, 0),
(3, 546, 1, 'ovishishir24@gmail.com', '01933649407', '2017-11-30', 2, 0, 0, 0),
(11, 559, 1, 'sharif792@gmail.com', '01743912139', '2017-12-04', 1, 0, 0, 0),
(12, 554, 15, 'zahidulamin9@gmail.com', '01681145491', '2017-11-30', 2, 0, 0, 0),
(33, 571, 1, 'arnab.r@keal.com.bd', '01745912429', '2017-12-20', 0, 2, 0, 0),
(34, 569, 15, 'alvi_moto@yahoo.com', '01752916688', '2017-12-20', 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_absent`
--

CREATE TABLE `tbl_absent` (
  `aid` int(11) NOT NULL,
  `jId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `interviewdate` date NOT NULL,
  `starttime` time NOT NULL,
  `endtime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_absent`
--

INSERT INTO `tbl_absent` (`aid`, `jId`, `userId`, `interviewdate`, `starttime`, `endtime`) VALUES
(1, 1, 1, '2022-10-17', '10:00:00', '11:00:00'),
(2, 1, 1, '2022-10-17', '10:00:00', '11:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_achivement`
--

CREATE TABLE `tbl_achivement` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `achivement` varchar(255) NOT NULL,
  `detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_achivement`
--

INSERT INTO `tbl_achivement` (`id`, `userId`, `achivement`, `detail`) VALUES
(1, 538, 'test', 'test'),
(2, 538, 'test', 'test'),
(3, 571, 'sdgffdsgfg', 'sdfgsdfgsdf'),
(4, 571, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_address`
--

CREATE TABLE `tbl_address` (
  `aId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `flat` varchar(255) NOT NULL,
  `holding` varchar(255) NOT NULL,
  `building` varchar(255) NOT NULL,
  `road` varchar(255) NOT NULL,
  `block` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `divId` int(11) NOT NULL,
  `distId` int(11) NOT NULL,
  `thId` int(11) NOT NULL,
  `postId` int(11) NOT NULL,
  `codeId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_address`
--

INSERT INTO `tbl_address` (`aId`, `userId`, `flat`, `holding`, `building`, `road`, `block`, `area`, `divId`, `distId`, `thId`, `postId`, `codeId`, `status`) VALUES
(20, 0, '604', '..', 'Afnan dream', '', 'Dhanmondi 15', 'New Road, Zigatola, Dhanmondi-1209', 15, 1, 0, 0, 0, 0),
(21, 0, '...', '...', '...', '', '...', 'South Tetabhumi, Horimongal -3500, B-para, comilla', 14, 0, 0, 0, 0, 0),
(22, 0, 'Ground floor', '125', '', '', 'Mohomodia Housing LTD', 'Mohammodpur, Dhaka', 15, 1, 0, 0, 0, 0),
(23, 0, 'Ground floor', '1716', 'none', '', 'none', 'Kalmaswer', 15, 0, 0, 0, 0, 0),
(24, 0, '6', 'C-987', 'none', '', 'none', 'Chandana, Chowrasta', 15, 0, 0, 0, 0, 0),
(25, 0, '4th', '20', 'Diu Hostel', '', '05', 'Uttara', 15, 1, 3, 4, 0, 0),
(26, 0, '1st', '20/1', 'Abu Hanif Villa', '', '1', 'Rayerbagh', 15, 1, 460, 791, 0, 0),
(28, 479, '5th floor', '', 'kazi bari', '', 'bonoful', 'Kallayanpur', 15, 1, 0, 0, 0, 0),
(33, 499, '3', '101/1', 'Godhuli', '', 'B', 'Monipuripara', 15, 1, 473, 794, 0, 0),
(34, 475, '3rd', '197', '', '', '', 'Progati Sharini', 15, 1, 0, 0, 0, 0),
(35, 476, '2nd Floor', '112/4', '', '', '', 'Tejgoan', 15, 1, 473, 794, 0, 0),
(36, 502, 'B-1', '169', 'Amicus Bijurika', '', '7', 'Jolessoritala', 9, 16, 103, 315, 0, 0),
(37, 503, 'level-4', '29', '', '', 'Sector-14', 'Uttara Model Town', 15, 1, 475, 796, 0, 0),
(38, 505, '1st Floor', 'House no- 278/Kha,', 'Jesmin Manjil', '', 'N/A', 'Boyra, Boikali', 7, 51, 540, 537, 0, 0),
(39, 508, 'Level-03', '05', '', '', 'Block : B, Sector: 06', 'Mirpur', 15, 1, 465, 0, 0, 0),
(40, 511, 'Level-03', '05', '', '', 'Block : B, Sector: 06', 'Mirpur', 15, 1, 465, 782, 0, 0),
(41, 492, 'B2', '0', 'Hanif Villa', '', '20', 'South Rayerbag', 15, 1, 460, 769, 0, 0),
(42, 522, '2nd floor', '12/B', '', '', 'Monsurabad', 'Adabor', 15, 1, 492, 0, 0, 0),
(43, 527, '3rd Floor', '68/1/K', 'Rahomat Vila', '', 'E', 'Dhanmondi', 15, 1, 458, 929, 0, 0),
(44, 528, '4R', '36', '', '', '', 'DIT Project, Merul badda', 15, 1, 493, 774, 0, 0),
(45, 531, 'Flat-B3/level-3/ 2nd Floor', '26/1 west malibag', 'Bari Villa', '', '', 'Mogbazer', 15, 1, 470, 789, 0, 0),
(46, 538, '4', '101/1', 'Godhuli', 'sangshad vaban avenue', 'B', 'Monipuripara', 15, 1, 473, 794, 0, 1),
(47, 539, '', '39', '', '', 'D', 'Arambag', 15, 1, 506, 782, 0, 0),
(49, 540, 'Flat-203/Level-02', '14', 'Rose Villa', '', 'N/A', 'Gulshan-1', 15, 1, 459, 774, 0, 0),
(50, 549, '4-C', '102', '', '', 'C', 'Basundhara Residential Area, Dhaka-1229', 15, 1, 0, 0, 0, 0),
(51, 550, '3rd', '19/c', 'Ruposhi Bangla', '', '', 'Monipuripara', 15, 1, 473, 794, 0, 0),
(52, 553, '3rd Floor', '10', '', '', '07', 'Uttara', 15, 1, 0, 0, 0, 0),
(53, 558, '', '602/1-B', '', '', '', '', 15, 1, 470, 0, 0, 0),
(54, 546, 'Flat-B3 /level-3/ 2nd Floor', '26/1 west malibag', 'Bari  Villa', '', '', 'Mogbazer', 15, 1, 470, 789, 0, 0),
(55, 559, 'Flat 3-A, 3rd Floor,', 'House No 55', '', '', 'Mohammadia Haousing Limited', 'Mohammadpur', 15, 1, 466, 783, 0, 0),
(59, 516, '4/a', '151/12', '', '', '', 'South Pirebag, Mukti Housing, Taltola, Dhaka', 15, 1, 510, 0, 0, 1),
(60, 557, '3', '101/1', '', '', '', 'Monipuripara', 15, 1, 0, 0, 0, 0),
(61, 554, '1', '25', 'Amin Monjil', 'Moshjid Road', '57', 'South Arichpur, Tongi', 15, 2, 5, 27, 0, 0),
(63, 544, '2nd floor,level-3,floor-2', '74/7', '', 'green road', '', 'Farmgate', 15, 1, 473, 794, 0, 1),
(65, 560, '3C-1', '25/a', '', 'Dilu Road,Moghbazer.', '', '', 15, 1, 470, 949, 0, 0),
(67, 512, 'a', 'b', 'c', 'd', 'c', 'f', 15, 1, 474, 794, 0, 1),
(68, 569, '1st floor', '3', 'Surovi', 'Eskaton Garden Officer''s Quarters', 'N/A', 'Ramna Thana', 15, 1, 470, 788, 0, 1),
(70, 571, 'B2/3rd', '19/c', 'Ruposhi Bangla', '3rd', '', 'Monipuripara', 15, 1, 473, 932, 0, 1),
(71, 572, 'D', '66', 'Shahid Ghias Uddin Ahmed R/A', 'Nilkhet Rd', '', 'Dhaka University', 15, 1, 509, 19, 0, 0),
(72, 581, '24/1', '24/1', '', 'Bahadurpur Lane,', '', 'Faridabad', 15, 1, 511, 927, 0, 0),
(73, 594, '3A', '144,South Pirerbug', 'Keya monjil', '', 'Agargaon Taltola', 'Mirpur', 15, 0, 465, 0, 0, 1),
(74, 604, '5', '386/A', 'Glory Fazle Villa', '1', '', 'Jafrabad', 15, 1, 408, 406, 0, 0),
(75, 603, 'Flat-3A', '88', 'Nahar Plaza', '13', 'A', 'South banashree', 15, 1, 462, 0, 0, 1),
(76, 590, 'Level 3', '-', 'Mukti villa', '1383/8/3A', '-', 'Khilgoan', 15, 1, 462, 779, 0, 0),
(78, 617, '34/3/3B', 'N/A', 'N/A', '3', '10', 'Uttara', 15, 0, 475, 796, 0, 1),
(79, 619, '5th floor', '969/1', 'achol villa', 'dont have', 'dont have', 'mirpur 2', 15, 1, 465, 782, 0, 0),
(80, 619, '5th floor', '969/1', 'achol villa', 'dont have', 'dont have', 'mirpur 2', 15, 1, 465, 782, 0, 0),
(81, 619, '5th floor', '969/1', 'achol villa', 'dont have', 'dont have', 'mirpur 2', 15, 1, 465, 782, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `aId` int(11) NOT NULL,
  `jobTitle` varchar(255) NOT NULL,
  `deptName` varchar(255) NOT NULL,
  `lastDateApplication` date NOT NULL,
  `batch` varchar(255) NOT NULL,
  `edulevel` varchar(255) NOT NULL,
  `cmCompensation` text NOT NULL,
  `edJoining` date NOT NULL,
  `prJoining` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alevel`
--

CREATE TABLE `tbl_alevel` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cgpa` float NOT NULL,
  `pyearid` int(11) NOT NULL,
  `divid` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `overall` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_alevel`
--

INSERT INTO `tbl_alevel` (`id`, `userId`, `name`, `cgpa`, `pyearid`, `divid`, `status`, `overall`) VALUES
(2, 538, 'Joypurhat Sadar Thana High School', 0, 5, 'Dhaka', 1, 0),
(3, 556, 'Sarda Sundari Mohila College', 0, 20, 'karigori', 1, 0),
(4, 590, 'British Council', 0, 6, 'CIE', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alevel_grade`
--

CREATE TABLE `tbl_alevel_grade` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `grade` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_alevel_grade`
--

INSERT INTO `tbl_alevel_grade` (`id`, `userId`, `oid`, `grade`) VALUES
(1, 538, 10, 3.22),
(2, 538, 9, 2.44),
(3, 556, 14, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_apply`
--

CREATE TABLE `tbl_apply` (
  `id` int(11) NOT NULL,
  `jsId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `jId` int(11) NOT NULL,
  `dId` int(11) NOT NULL,
  `batch` int(11) NOT NULL,
  `LevelId` int(11) NOT NULL,
  `lastdApplication` date NOT NULL,
  `degId` int(11) NOT NULL,
  `mimcomp` varchar(255) NOT NULL,
  `mxmComp` varchar(255) NOT NULL,
  `expDate` date NOT NULL,
  `preRequisite` int(11) NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT '0',
  `app` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `step` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_apply`
--

INSERT INTO `tbl_apply` (`id`, `jsId`, `userId`, `jId`, `dId`, `batch`, `LevelId`, `lastdApplication`, `degId`, `mimcomp`, `mxmComp`, `expDate`, `preRequisite`, `status`, `app`, `date`, `step`) VALUES
(16, 11, 481, 1, 2, 0, 1, '2017-10-20', 5, '2000', '4500', '2017-11-01', 0, '3', 0, '2017-10-15 00:00:00', 0),
(18, 11, 482, 1, 2, 0, 1, '2017-10-20', 5, '2000', '4500', '2017-11-01', 0, '3', 0, '2017-10-15 00:00:00', 0),
(19, 11, 485, 1, 2, 0, 1, '2017-10-20', 5, '2000', '4500', '2017-11-01', 0, '0', 0, '2017-10-15 00:00:00', 0),
(21, 11, 478, 1, 2, 0, 1, '2017-10-20', 5, '2000', '4500', '2017-11-01', 0, '0', 0, '2017-10-14 00:00:00', 0),
(22, 11, 488, 1, 2, 0, 1, '2017-10-20', 5, '2000', '4500', '2017-11-01', 0, '3', 0, '2017-10-16 00:00:00', 0),
(23, 11, 479, 1, 2, 0, 1, '2017-10-20', 5, '2000', '4500', '2017-11-01', 0, '1', 0, '2017-10-14 00:00:00', 0),
(24, 11, 490, 1, 2, 0, 1, '2017-10-20', 5, '2000', '4500', '2017-11-01', 0, '0', 0, '2017-10-16 00:00:00', 0),
(25, 11, 491, 1, 2, 0, 1, '2017-10-20', 5, '2000', '4500', '2017-11-01', 0, '1', 0, '2017-10-16 00:00:00', 0),
(26, 11, 492, 1, 2, 0, 1, '2017-10-20', 5, '2000', '4500', '2017-11-01', 0, '1', 0, '2017-10-16 00:00:00', 0),
(29, 11, 496, 1, 2, 0, 1, '2017-10-20', 5, '2000', '4500', '2017-11-01', 0, '0', 0, '2017-10-17 00:00:00', 0),
(33, 11, 497, 1, 2, 0, 1, '2017-10-20', 5, '2000', '4500', '2017-11-01', 0, '0', 0, '2017-10-17 00:00:00', 0),
(37, 11, 483, 1, 2, 0, 1, '2017-10-20', 5, '2000', '4500', '2017-11-01', 0, '0', 0, '2017-10-15 00:00:00', 0),
(41, 14, 505, 8, 1, 0, 1, '2017-10-31', 4, '10,000tk', '12,000tk', '2017-11-30', 0, '1', 0, '2017-10-27 17:15:55', 0),
(42, 11, 508, 1, 2, 0, 1, '2017-10-20', 5, '2000', '4500', '2017-11-01', 0, '0', 0, '2017-10-29 15:13:17', 0),
(43, 11, 511, 1, 2, 0, 1, '2017-10-20', 5, '2000', '4500', '2017-11-01', 0, '1', 0, '2017-10-29 16:00:14', 0),
(44, 15, 505, 15, 1, 0, 1, '2017-11-30', 18, '2,000 Tk', '4,500 Tk', '2017-10-01', 0, '1', 0, '2017-10-31 16:06:13', 0),
(45, 11, 512, 1, 2, 0, 1, '2017-10-20', 5, '2000', '4500', '2017-11-01', 0, '0', 0, '2017-11-01 10:46:53', 0),
(46, 15, 499, 15, 1, 0, 1, '2017-11-30', 18, '2,000 Tk', '4,500 Tk', '2017-10-01', 0, '0', 0, '2017-11-02 10:31:41', 0),
(47, 11, 516, 1, 2, 0, 1, '2017-10-20', 5, '2000', '4500', '2017-11-01', 0, '1', 0, '2017-11-02 12:38:42', 0),
(48, 11, 517, 1, 2, 0, 1, '2017-10-20', 5, '2000', '4500', '2017-11-01', 0, '1', 0, '2017-11-02 16:15:58', 0),
(49, 14, 502, 8, 1, 0, 1, '2017-10-31', 4, '10,000tk', '12,000tk', '2017-11-30', 0, '0', 0, '2017-11-02 17:22:53', 0),
(50, 11, 522, 1, 2, 0, 1, '2017-10-20', 5, '2000', '4500', '2017-11-01', 0, '1', 0, '2017-11-02 18:16:52', 0),
(51, 11, 523, 1, 2, 0, 1, '2017-10-20', 5, '2000', '4500', '2017-11-01', 0, '0', 0, '2017-11-03 07:08:06', 0),
(52, 11, 524, 1, 2, 0, 1, '2017-10-20', 5, '2000', '4500', '2017-11-01', 0, '0', 0, '2017-11-03 08:25:41', 0),
(53, 11, 527, 1, 2, 0, 1, '2017-10-20', 5, '2000', '4500', '2017-11-01', 0, '1', 0, '2017-11-03 15:45:43', 0),
(54, 11, 528, 1, 2, 0, 1, '2017-10-20', 5, '2000', '4500', '2017-11-01', 0, '1', 0, '2017-11-03 17:53:19', 0),
(55, 15, 531, 15, 1, 0, 1, '2017-11-30', 18, '2,000 Tk', '4,500 Tk', '2017-12-01', 0, '0', 0, '2017-11-04 07:54:44', 0),
(57, 11, 532, 1, 2, 0, 1, '2017-11-30', 5, '2000', '4500', '2017-12-01', 0, '1', 0, '2017-11-05 04:09:56', 0),
(64, 11, 540, 1, 2, 0, 1, '2017-11-30', 5, '2000', '4500', '2017-12-01', 0, '1', 0, '2017-11-05 15:16:34', 0),
(66, 15, 502, 15, 1, 0, 1, '2017-11-30', 18, '2,000 Tk', '4,500 Tk', '2017-12-01', 0, '1', 0, '2017-11-06 07:11:19', 0),
(68, 14, 549, 8, 1, 0, 1, '2017-11-30', 4, '10,000tk', '12,000tk', '2017-12-01', 0, '0', 0, '2017-11-11 11:39:31', 0),
(69, 11, 550, 1, 2, 0, 1, '2017-11-30', 5, '2000', '4500', '2017-12-01', 0, '1', 0, '2017-11-12 08:16:32', 0),
(70, 11, 548, 1, 2, 0, 1, '2017-11-30', 5, '2000', '4500', '2017-12-01', 0, '0', 0, '2017-11-13 08:21:05', 0),
(72, 11, 558, 1, 2, 0, 1, '2017-11-30', 5, '2000', '4500', '2017-12-01', 0, '1', 0, '2017-11-14 04:02:24', 0),
(74, 11, 559, 1, 2, 0, 1, '2017-11-30', 5, '2000', '4500', '2017-12-01', 0, '1', 0, '2017-11-15 12:32:06', 0),
(75, 15, 554, 15, 1, 0, 1, '2017-11-30', 18, '2,000 Tk', '4,500 Tk', '2017-12-01', 0, '1', 0, '2017-11-23 18:30:48', 0),
(76, 14, 554, 8, 1, 0, 1, '2017-11-30', 4, '10,000tk', '12,000tk', '2017-12-01', 0, '0', 0, '2017-11-23 18:31:05', 0),
(77, 11, 565, 1, 2, 0, 1, '2017-11-30', 5, '2000', '4500', '2017-12-01', 0, '0', 0, '2017-11-24 18:27:17', 0),
(78, 15, 531, 15, 1, 0, 1, '2017-11-30', 18, '2,000 Tk', '4,500 Tk', '2017-12-01', 0, '1', 0, '2017-11-30 08:59:56', 1),
(79, 14, 531, 8, 1, 0, 1, '2017-11-30', 4, '10,000tk', '12,000tk', '2017-12-01', 0, '0', 0, '2017-11-30 09:44:32', 1),
(80, 11, 531, 1, 2, 0, 1, '2017-11-30', 5, '2000', '4500', '2017-12-01', 0, '0', 0, '2017-11-30 09:45:57', 1),
(81, 17, 559, 1, 2, 0, 1, '2017-12-30', 5, '4000', '4500', '2018-01-01', 0, '0', 0, '2017-12-01 13:48:56', 0),
(85, 16, 569, 15, 1, 0, 1, '2017-12-24', 18, '2,000 Tk', '4,500 Tk', '2018-01-01', 0, '1', 0, '2017-12-11 12:18:25', 0),
(86, 16, 570, 15, 1, 0, 1, '2017-12-24', 18, '2,000 Tk', '4,500 Tk', '2018-01-01', 0, '0', 0, '2017-12-11 12:48:28', 0),
(87, 16, 560, 15, 1, 0, 1, '2017-12-24', 18, '2,000 Tk', '4,500 Tk', '2018-01-01', 0, '1', 0, '2017-12-11 16:39:11', 0),
(90, 17, 579, 1, 2, 0, 1, '2017-12-30', 5, '4000', '4500', '2018-01-01', 0, '1', 0, '2017-12-13 05:09:39', 0),
(91, 17, 572, 1, 2, 0, 1, '2017-12-30', 5, '4000', '4500', '2018-01-01', 0, '0', 0, '2017-12-14 13:13:38', 0),
(92, 17, 581, 1, 2, 0, 1, '2017-12-30', 5, '4000', '4500', '2018-01-01', 0, '1', 0, '2017-12-14 16:01:59', 0),
(94, 16, 590, 15, 1, 0, 1, '2017-12-24', 18, '2,000 Tk', '4,500 Tk', '2018-01-01', 0, '0', 0, '2017-12-15 06:28:23', 0),
(95, 17, 594, 1, 2, 0, 1, '2017-12-30', 5, '4000', '4500', '2018-01-01', 0, '1', 0, '2017-12-15 13:44:31', 0),
(96, 17, 576, 1, 2, 0, 1, '2017-12-30', 5, '4000', '4500', '2018-01-01', 0, '0', 0, '2017-12-15 16:52:02', 0),
(97, 16, 576, 15, 1, 0, 1, '2017-12-24', 18, '2,000 Tk', '4,500 Tk', '2018-01-01', 0, '0', 0, '2017-12-15 16:52:15', 0),
(98, 16, 496, 15, 1, 0, 1, '2017-12-24', 18, '2,000 Tk', '4,500 Tk', '2018-01-01', 0, '0', 0, '2017-12-16 12:55:52', 0),
(99, 17, 603, 1, 2, 0, 1, '2017-12-30', 5, '4000', '4500', '2018-01-01', 0, '1', 0, '2017-12-17 21:50:51', 0),
(100, 17, 619, 1, 2, 0, 1, '2017-12-30', 5, '4000', '4500', '2018-01-01', 0, '1', 0, '2017-12-23 20:22:09', 0),
(101, 22, 531, 1, 2, 1, 1, '2017-12-30', 5, '2000', '4000', '2017-12-30', 0, '0', 0, '2017-12-27 12:14:57', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_apply_record`
--

CREATE TABLE `tbl_apply_record` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `jId` int(11) NOT NULL,
  `dId` int(11) NOT NULL,
  `levelId` int(11) NOT NULL,
  `lastdApplication` int(11) NOT NULL,
  `degId` int(11) NOT NULL,
  `mimcomp` int(11) NOT NULL,
  `mxmcomp` int(11) NOT NULL,
  `expDate` date NOT NULL,
  `prerequisite` varchar(255) NOT NULL,
  `destatus` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_apply_record`
--

INSERT INTO `tbl_apply_record` (`id`, `userId`, `jId`, `dId`, `levelId`, `lastdApplication`, `degId`, `mimcomp`, `mxmcomp`, `expDate`, `prerequisite`, `destatus`) VALUES
(1, 532, 1, 2, 1, 2017, 5, 2000, 0, '2017-12-01', '0', 0),
(2, 517, 1, 2, 1, 2017, 5, 2000, 4500, '2017-11-01', '0', 0),
(3, 522, 1, 2, 1, 2017, 5, 2000, 4500, '2017-11-01', '0', 0),
(4, 550, 1, 2, 1, 2017, 5, 2000, 4500, '2017-12-01', '0', 0),
(5, 550, 1, 2, 1, 2017, 5, 2000, 4500, '2017-12-01', '0', 0),
(6, 550, 1, 2, 1, 2017, 5, 2000, 4500, '2017-12-01', '0', 0),
(7, 550, 1, 2, 1, 2017, 5, 2000, 4500, '2017-12-01', '0', 0),
(8, 554, 15, 1, 1, 2017, 18, 2, 4, '2017-12-01', '0', 0),
(9, 550, 1, 2, 1, 2017, 5, 2000, 4500, '2017-12-01', '0', 0),
(10, 571, 1, 2, 1, 2017, 5, 4000, 4500, '2018-01-01', '0', 0),
(11, 571, 1, 2, 1, 2017, 5, 4000, 4500, '2018-01-01', '0', 0),
(12, 559, 1, 2, 1, 2017, 5, 4000, 4500, '2018-01-01', '0', 0),
(13, 546, 1, 2, 1, 2017, 5, 2000, 4500, '2017-12-01', '0', 0),
(14, 546, 1, 0, 0, 0, 0, 0, 0, '0000-00-00', '', 0),
(15, 552, 1, 2, 1, 2017, 5, 2000, 4500, '2017-12-01', '0', 0),
(16, 531, 1, 2, 1, 2017, 5, 2000, 4500, '2017-12-01', '0', 0),
(17, 531, 1, 2, 1, 2017, 5, 2000, 4500, '2017-12-01', '0', 0),
(18, 544, 1, 2, 1, 2017, 5, 2000, 4500, '2017-12-01', '0', 0),
(19, 469, 1, 2, 1, 2017, 5, 2000, 4500, '2017-11-01', '0', 0),
(20, 475, 1, 2, 1, 2017, 5, 2000, 4500, '2017-11-01', '0', 0),
(21, 476, 1, 2, 1, 2017, 5, 4000, 4500, '2018-01-01', '0', 0),
(22, 477, 1, 2, 1, 2017, 5, 2000, 4500, '2017-11-01', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_approveip`
--

CREATE TABLE `tbl_approveip` (
  `id` int(11) NOT NULL,
  `datee` int(11) NOT NULL,
  `timee` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_approveip`
--

INSERT INTO `tbl_approveip` (`id`, `datee`, `timee`, `ip`) VALUES
(1, 2018, 13, '43.255.122');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assesment`
--

CREATE TABLE `tbl_assesment` (
  `id` int(11) NOT NULL,
  `bId` int(11) NOT NULL,
  `interId` int(11) NOT NULL,
  `iDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_assesment`
--

INSERT INTO `tbl_assesment` (`id`, `bId`, `interId`, `iDate`) VALUES
(6, 2, 0, '2017-11-16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendence`
--

CREATE TABLE `tbl_attendence` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `eId` int(11) NOT NULL,
  `late_reason` varchar(20) NOT NULL,
  `original_time` time NOT NULL,
  `errand_place_in` varchar(20) NOT NULL,
  `errand_for_in` varchar(20) NOT NULL,
  `errand_from_in` time NOT NULL,
  `errand_to_in` time NOT NULL,
  `attendence_time` varchar(20) NOT NULL,
  `day` varchar(20) NOT NULL,
  `attendence_date` varchar(20) NOT NULL,
  `month` varchar(20) NOT NULL,
  `inip` varchar(255) NOT NULL,
  `early_leave` varchar(70) NOT NULL,
  `ongoing_works` text NOT NULL,
  `incase_errand_place` varchar(20) NOT NULL,
  `errand_for_out` varchar(25) NOT NULL,
  `errand_from_out` time NOT NULL,
  `errand_to_out` time NOT NULL,
  `outtime` varchar(20) NOT NULL,
  `outday` varchar(10) NOT NULL,
  `outmonth` varchar(20) NOT NULL,
  `outdate` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `hmark` int(11) NOT NULL,
  `ipOut` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_attendence`
--

INSERT INTO `tbl_attendence` (`id`, `userId`, `eId`, `late_reason`, `original_time`, `errand_place_in`, `errand_for_in`, `errand_from_in`, `errand_to_in`, `attendence_time`, `day`, `attendence_date`, `month`, `inip`, `early_leave`, `ongoing_works`, `incase_errand_place`, `errand_for_out`, `errand_from_out`, `errand_to_out`, `outtime`, `outday`, `outmonth`, `outdate`, `status`, `name`, `hmark`, `ipOut`) VALUES
(40, 572, 0, '---', '00:00:00', '', '', '00:00:00', '00:00:00', '15:16:08', '(Wed)', '2018-01-31', 'Jan', '::1', '', '', '', '', '00:00:00', '00:00:00', '15:17:59', '(Wed)', 'Jan', '2018-01-31', 0, '', 0, '::1'),
(45, 573, 0, '---', '00:00:00', '', '', '00:00:00', '00:00:00', '15:32:39', '(Wed)', '2018-01-31', 'Jan', '::1', '---', '', '', '', '00:00:00', '00:00:00', '15:34:30', '(Wed)', 'Jan', '2018-01-31', 0, '', 0, '::1'),
(46, 574, 0, '---', '00:00:00', '', '', '00:00:00', '00:00:00', '12:43:28', '(Sun)', '2018-02-04', 'Feb', '::1', '', '', '', '', '00:00:00', '00:00:00', '', '', '', '', 0, '', 0, ''),
(55, 571, 0, '---', '00:00:00', '', '', '00:00:00', '00:00:00', '14:22:45', '(Sun)', '2018-02-04', 'Feb', '::1', '', '', '', '', '00:00:00', '00:00:00', '', '', '', '', 0, '', 2, ''),
(59, 569, 7, '---', '00:00:00', '', '', '00:00:00', '00:00:00', '14:37:12', '(Sun)', '2018-02-04', 'Feb', '::1', '', '', '', '', '00:00:00', '00:00:00', '', '', '', '', 1, 'Alvi', 0, ''),
(60, 571, 8, '---', '00:00:00', '', '', '00:00:00', '00:00:00', '14:16:50', '(Mon)', '2018-02-05', 'Feb', '::1', '', '', '', '', '00:00:00', '00:00:00', '', '', '', '', 1, 'Arnab', 2, ''),
(61, 571, 0, '', '00:00:00', 'palton', 'CEO', '11:00:00', '15:00:00', '15:35:38', '(Mon)', '2018-02-05', 'Feb', '::1', '', '', '', '', '00:00:00', '00:00:00', '', '', '', '', 1, '', 2, ''),
(62, 571, 8, '', '00:00:00', 'palton', 'CEO', '11:00:00', '15:00:00', '15:37:51', '(Mon)', '2018-02-05', 'Feb', '::1', '', '', '', '', '00:00:00', '00:00:00', '', '', '', '', 1, 'Arnab', 2, ''),
(63, 571, 8, '---', '00:00:00', '', '', '00:00:00', '00:00:00', '09:05:36', '(Tue)', '2018-02-06', 'Feb', '::1', '', '', '', '', '00:00:00', '00:00:00', '', '', '', '', 1, 'Arnab', 2, ''),
(64, 569, 7, 'Sickness', '01:45:00', '', '', '00:00:00', '00:00:00', '12:44:57', '(Tue)', '2018-02-06', 'Feb', '::1', '', '', '', '', '00:00:00', '00:00:00', '', '', '', '', 0, 'Alvi', 0, ''),
(65, 569, 7, '', '00:00:00', 'palton', 'CEO', '01:46:00', '14:57:00', '12:45:50', '(Tue)', '2018-02-06', 'Feb', '::1', '', '', '', '', '00:00:00', '00:00:00', '', '', '', '', 1, 'Alvi', 0, ''),
(66, 571, 0, 'Traffic', '00:00:00', '', '', '00:00:00', '00:00:00', '13:24:41', '(Sat)', '2018-02-10', 'Feb', '::1', '', '', '', '', '00:00:00', '00:00:00', '', '', '', '', 0, 'Arnab', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_boardname`
--

CREATE TABLE `tbl_boardname` (
  `id` int(11) NOT NULL,
  `boardname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_boardname`
--

INSERT INTO `tbl_boardname` (`id`, `boardname`) VALUES
(3, 'IT Board For Intern'),
(4, 'Automation Board');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cgpa`
--

CREATE TABLE `tbl_cgpa` (
  `cgpaid` int(11) NOT NULL,
  `cgpa` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clg_name`
--

CREATE TABLE `tbl_clg_name` (
  `id` int(11) NOT NULL,
  `clgName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_clg_name`
--

INSERT INTO `tbl_clg_name` (`id`, `clgName`) VALUES
(1, 'A. K. HIGH SCHOOL AND COLLEGE'),
(2, 'Abujar Ghifari College'),
(3, 'Adamjee Cantonment College'),
(4, 'AFAZ UDDIN UCHCHA MADHIAMIC BIDHYALAY'),
(5, 'AGARGAONTALTALA GOVT.COLONY SCHOOL & MOHILA COLLEGE'),
(6, 'AGRANI GIRLS SCHOOL & COLLEGE'),
(7, 'AHMED BAWANY ACADEMY (SCHOOL & COLLEGE0'),
(8, 'Ahsania Mission College'),
(9, 'ALI AHMED HIGH SCHOOL AND COLLEGE'),
(10, 'ANOWARA BEGUM MUSLIM GIRLS SCHOOL & COLLEGE'),
(11, 'Anwara-Mannaf Girls College'),
(12, 'ARAMBAGH GIRL''S HIGH SCHOOL AND COLLEGE'),
(13, 'ASHULIA UCHHA MADHYAMIC BIDHALAYA'),
(14, 'AZIMPUR GIRIS SCHOOL & COLLEGE'),
(15, 'BADDA ALATUNNESSA HIGHER SECONDARY SCHOOL'),
(16, 'BADSHA FAHAD SCHOOL AND COLLEGE'),
(17, 'Badsha Faisal Institute School and College'),
(18, 'BAF Shaheen College Dhaka'),
(19, 'BAGHAPUR HIGH SCHOOL & COLLEGE'),
(20, 'BAIKAL SCHOOL & COLLEGE'),
(21, 'BALUGHAT HIGH SCHOOL & COLLEGE'),
(22, 'BAMOIL IDEAL HIGH SCHOOL AND COLLEGE (BM)'),
(23, 'Bangabandhu College, Dhaka'),
(24, 'Bangladesh Commerce College'),
(25, 'Bangladesh Home Economics College'),
(26, 'Bangladesh Krira Shikkha Protishtan'),
(27, 'Bangladesh Navy College'),
(28, 'BANOPHOOL ADIBASHI GREEN HEART COLLEGE'),
(29, 'BARISUR ANSHALIK HIGH SCHOOL COLLEGE'),
(30, 'BARNAMALA ADARSHA UCHACHA MADHYAMIK BIDHYALAYA'),
(31, 'BASHIR UDDIN IDEAL HIGHER SCHOOL ARY SCHOOL'),
(32, 'BCIC College'),
(33, 'BEPZA PUBLIC SCHOOL AND COLLEGE'),
(34, 'Biam Model School & College, Dhaka'),
(35, 'Bikalpa Model College'),
(36, 'Bir Shreshtha Noor Mohammad Public College'),
(37, 'BIR SHRESTHA MUNSHI ABDUR ROUF RIFLES COLLEGE'),
(38, 'BPATC SCHOOL & COLLEGE'),
(39, 'Cambrian College'),
(40, 'Chartered University College'),
(41, 'Chatona Model Academy'),
(42, 'College of Development Alternative (CODA)'),
(43, 'COLLEGEX (COLLEGE FOR EXCELLENCE)'),
(44, 'COSMOPOLITAN LABRATORY SCHOOL AND COLLEGE'),
(45, 'Daffodil International College'),
(46, 'DBT BM College'),
(47, 'Dhaka Biggan College'),
(48, 'DHAKA BOYS COLLEGE'),
(49, 'Dhaka Cantonment Girls Public School and College'),
(50, 'Dhaka City College'),
(51, 'DHAKA CITY INTERNATIONAL COLLEGE'),
(52, 'Dhaka College'),
(53, 'Dhaka Commerce College'),
(54, 'DHAKA EASTERN COLLEGE'),
(55, 'Dhaka Golden College'),
(56, 'DHAKA IDEAL COLLEGE'),
(57, 'Dhaka Imperial College'),
(58, 'Dhaka Mohanagar Mohila College'),
(59, 'Dhaka Mohila Degree College'),
(60, 'Dhaka Nursing College'),
(61, 'Dhaka Presidency College'),
(62, 'Dhaka Residential Model College'),
(63, 'DHAKA SHIKSHA BOARD LABORATORY COLLEGE'),
(64, 'Dhaka State College'),
(65, 'DOSHAID A.K. HIGHER SECONDARY SCHOOL'),
(66, 'Dr. Mahbubur Rahman Molla College'),
(67, 'Dr. Malika University College'),
(68, 'DR. MOHAMMAD SHAHIDULLAH ADARSHA MADYMIC BIDYAPITH'),
(69, 'East West Nursing College & Institute'),
(70, 'ENGINEERING UNIVERSITY SCHOOL & COLLEGE'),
(71, 'FEROZA BASHAR IDEAL COLLEGE'),
(72, 'FM International College'),
(73, 'Fundamental College'),
(74, 'Future Commerce College'),
(75, 'Gazipur Homoeopathic Medical College'),
(76, 'Glory College'),
(77, 'GOVT. LABORATORY HIGH SCHOOL AND COLLEGE'),
(78, 'Green Field College'),
(79, 'GULSHAN COLLEGE'),
(80, 'Gulshan Commerce College'),
(81, 'Gulshan Model High School and College'),
(82, 'Habibullah Bahar University College'),
(83, 'HAJI ABDUL AWAL COLLEGE'),
(84, 'Hamdard Public College'),
(85, 'Hazrat Shah Ali Mohila College'),
(86, 'Holy Child School & College'),
(87, 'Holy Flower Model College'),
(88, 'I.F.S.UCHCHA MADYANIC CIDYALAYA'),
(89, 'Icon College'),
(90, 'Ideal College, Dhanmondi'),
(91, 'Ideal Commerce College'),
(92, 'IDEAL LABORATORY COLLEGE'),
(93, 'Ideal School & College'),
(94, 'ISPAHANI GIRLS SCHOOL AND COLLEGE'),
(95, 'JAHANGIRNAGAR UNIVERSITY SCHOOL & COLLEGE'),
(96, 'JARINA SIKDER GIRLS SCHOOL AND COLLEGE'),
(97, 'K.L. JUBILEE SCHOOL AND COLLEGE'),
(98, 'Kabi Nazrul Govt. College'),
(99, 'KADAMTALA PURBO BASHABO HIGHER SECONDARY SCHOOL'),
(100, 'Kaderia Taibia Kamil Madrasah'),
(101, 'KALACHADPUR UCCHA MADDAMIC BIDDALAY'),
(102, 'KALLYANPUR GIRLS SCHOOL & COLLEGE'),
(103, 'KAMALAPUR UCHCHA MADYAMIK BIDYALAYA'),
(104, 'KERANIGONJ GIRL''S SCHOOL AND COLLEGE'),
(105, 'KERANIGONJ RESIDENTIIAL COLLEGE'),
(106, 'KHAN INTERNATIONAL COLLEGE'),
(107, 'KHILGAON GIRLS SCHOOL AND COLLEGE'),
(108, 'Khilgaon Ideal College'),
(109, 'Khilgaon Model University College'),
(110, 'King''s College'),
(111, 'KISHALAYA GIRL''S SCHOOL & COLLEGE'),
(112, 'Lakshmiipur Unani Medical College'),
(113, 'LALBAGH MODEL SCHOOL & COLLEGE'),
(114, 'Lalmatia Housing Society School & College'),
(115, 'LAUREL INTERNATIONAL COLLEGE'),
(116, 'Leads School & College'),
(117, 'LIGHT HOUSE COLLEGE'),
(118, 'LIGHTHOUSE CAREER COLLEGE'),
(119, 'Lysiam College'),
(120, 'MADARTEK ABDUL AZIZ UCHCHA MADHYAMIK BIDYALYA'),
(121, 'MALIKANDA MEGHULA SCHOOL AND COLLEGE'),
(122, 'Manipur High Bishwabidyalay College'),
(123, 'MATUAIL HAJI ABDUL LATIF BHUIYAN COLLEGE'),
(124, 'Meherunnesa Girls School & College'),
(125, 'Meherunnesa Mohila College'),
(126, 'MEHERUNNISA GIRLS SCHOOL & COLLEGE'),
(127, 'Metropolitan Model College'),
(128, 'Milestone College'),
(129, 'Mirpur Girls'' Ideal Laboratory Institute'),
(130, 'MIRPUR MAFID-E-AM SCHOOL & COLLEGE'),
(131, 'Mission College'),
(132, 'MOFAZZAL MOMENA CHAKLADAR MOHILA COLLEGE'),
(133, 'Mohammadpur Central University College'),
(134, 'Mohammadpur Model School & College'),
(135, 'Mohammadpur Mohila college'),
(136, 'Mohammadpur Preparatory College'),
(137, 'MOTIJHEEL GOVT. BOY''S SCHOOL & COLLEGE'),
(138, 'Motijheel Model High School and College'),
(139, 'NATIONAL BANK PUBLIC SCHOOL AND COLLEGE'),
(140, 'National College'),
(141, 'National Ideal College'),
(142, 'National Institute of Fashion Technology (NIFT)'),
(143, 'NATUN PALTAN LINE HIGHER SECONDARY SCHOOL'),
(144, 'Nawab Habibullah Model School & College'),
(145, 'NAWABAGON PILOT UCHCHA MADYAMIC BALIKA BIDYALAYA'),
(146, 'New Castle College'),
(147, 'New Model University College'),
(148, 'Nikunja Model College'),
(149, 'NOBARUN BIDDALAT ABD NOBARUN MOHABIDALOY'),
(150, 'North Western College'),
(151, 'Northern College Bangladesh'),
(152, 'Notre Dame College'),
(153, 'Premier College'),
(154, 'PURANA PALTAN GIRLS COLLEGE'),
(155, 'Quality Education College'),
(156, 'Queen Mary College'),
(157, 'Queen''s College'),
(158, 'R K Chowdhury bishwabidyala College'),
(159, 'Rajarbagh Police Lines School & College'),
(160, 'Rajdhani Ideal College'),
(161, 'Rajuk Uttara Model College'),
(162, 'Rayhan College'),
(163, 'Residential Laboratory College'),
(164, 'RUPNAGAR MODEL SCHOOL AND COLLEGE'),
(165, 'S O S HERMAN GMEINER COLLEGE. DHAKA'),
(166, 'SAHID PRESIDENT ZIAUR RAHAMAN COLLEGE'),
(167, 'Saint Joseph Higher Secondary School'),
(168, 'SALEHA HIGH SCHOOL'),
(169, 'Salimullah College'),
(170, 'SAMOTA COLLEGE'),
(171, 'Samsul Haq Khan School & College'),
(172, 'SAVAR CANTONMENT PUBLIC SCHOOL & COLLEGE'),
(173, 'SAVAR MODEL COLLEGE'),
(174, 'SCHOLARS CITY COLLEGE'),
(175, 'SHAHEED POLICE SMRITY COLLEGE'),
(176, 'Shahid Bir Uttam Lt. Anwar Girls'' College'),
(177, 'Shaikh Burhanuddin Post Graduate College'),
(178, 'SHAMSUL HOQUE KHAN SCHOOL & COLLEGE'),
(179, 'SHANTIPUR COLLEGE'),
(180, 'Sharif Bag Islamia Kamil Madrasah'),
(181, 'SHAROJ INTERNATIONAL SCHOOL AND COLLEGE'),
(182, 'SHASEED ZIA GIRLA HIGH SCHOOL AND COLLEGE'),
(183, 'SHER E BANGLA HIGHER SECONDARY SCHOOL .'),
(184, 'SHER-E-BANGLA BALIKA MAHAVIDYALAYA'),
(185, 'SHER-E-BANGLA NAGAR ADARSHA MOHILA MOHABIDYALAYA'),
(186, 'SHERE BANGLA NOGOR GOVT.GIRLS SCHOOL & COLLEGE'),
(187, 'SHOLLA HIGHER SECONDARY SCHOOL'),
(188, 'SHYAMPUR MODEL SCHOOL AND COLLEGE'),
(189, 'Siddheswari University College'),
(190, 'South Point School & College'),
(191, 'Soverin Girls College'),
(192, 'Sristi Central College, Asulia'),
(193, 'SRISTY CENTRAL COLLEGE'),
(194, 'Stamford College'),
(195, 'T & T University College'),
(196, 'TALENT CAMPUS COLLEGE'),
(197, 'Tanzim Homoeopathic Medical College'),
(198, 'Tejgaon College'),
(199, 'Tejgaon Mohila College'),
(200, 'The Australasian College'),
(201, 'Trust College'),
(202, 'U. U. Laboratory College'),
(203, 'Udayan Uccha Madyamik Bidyalaya'),
(204, 'UNIVERSITI LABORATORY SCHOOL AND COLLEGE'),
(205, 'UTTARA COMMERCE COLLECE'),
(206, 'Uttara Cridence College'),
(207, 'Uttara High School and College'),
(208, 'Uttara Model College'),
(209, 'UTTARA SCIENCE COLLEGE'),
(210, 'Uttara Town College'),
(211, 'VALUM ATAUR RAHMAN KHAN SCHOOL & COLLEGE'),
(212, 'VERSATILE MODEL COLLEGE'),
(213, 'Viqarunnisa Noon School & College'),
(214, 'Western College'),
(215, 'WIBT College'),
(216, 'Willes Little Flower School & College'),
(217, 'WILLIS LITTLE FLOWAR HIGHER SECONDARY SCHOOL'),
(218, 'Winsome School & College'),
(219, 'YWCA Girls College'),
(220, 'YWCA Higer Secondary Girls School'),
(221, 'ZINZIRA P M PILOT SECONDARY SCHOOL & COLLEGE'),
(222, 'ZIRABO DEWAN IDRIS COLLEGE'),
(223, 'College Name'),
(224, 'AKHCHASHI MAHILA COLLEGE'),
(225, 'BAKHUNDA COLLEGE'),
(226, 'Bangabandhu College, Faridpur'),
(227, 'Faridpur Homoeopathic Medical College'),
(228, 'HALIMA GIRLS SCHOOL AND COLLEGE FARIDPUR'),
(229, 'KABIRBAGH POURA MOHILA COLLEGE'),
(230, 'Kazi Sirajul Islam Homoeopathic Medical College'),
(231, 'SALTHA COLLEGE'),
(232, ''),
(233, 'AGRANI MODEL COLLEGE'),
(234, 'ALIHAGJJ REZAUL HAQUE MOHILA COLLEGE'),
(235, 'ANSAR VDP HIGH SCHOOL'),
(236, 'AZMATPUR ADARSHA SCHOOL AND COLLEGE'),
(237, '???????? ??????????? ????????? ???? ????????'),
(238, 'BARAI BARI A.K.U.INSTITUTION AND COLLEGE'),
(239, 'GAZIPUR COMMERCE COLLEGE'),
(240, 'GAZIPUR PUBLIC COLLEGE'),
(241, 'GAZIPUR RESIDENTIAL MODEL SCHOOL & COLLEGE'),
(242, 'HATIMARA HIGH SCHOOL & COLLEGE'),
(243, 'M.E.H.ARIF COLLEGE'),
(244, 'Muktijoddha College, Gazipur'),
(245, 'NAYANAGAR MOHILA COLLEGE'),
(246, 'RAJENDRAPUR CANT. PUBLIC SCHOOL AND COLLEGE'),
(247, 'SAFIUDDIN SARKER ACADEMY AND COLLEGE'),
(248, 'SALNA NASIR UDDIN MEMORIAL HIGH SCHOOL AND COLLEGE'),
(249, 'SHAHAJUDDIN SARKER MODEL HIGHER SECONDARY SCHOOL'),
(250, 'SHARIF MOMTAJUDDIN AHMED COLLEGE'),
(251, 'TARAGANJ H. N. UCCHA MADHYAMIC BIDYLAYA'),
(252, 'TIPU SULTAN COLLEGE'),
(253, 'TONGI PAILOT SCHOOL AND COLLEGE'),
(254, 'BATIKA MARI UCHCHA MADHYAMIK MADHYAMIR BIDYALAY'),
(255, 'Gopalgonj Homoeopathic Medical College'),
(256, 'NESARUDDIN TALUKDER UCHCHA MADYAMIC BIDYALAYA'),
(257, 'RATOIL IDEAL COLLEGE'),
(258, 'SHEIKH HASINA ADRSA MAHABIDYALAY'),
(259, 'UJANI B.K. B UNION COLLEGE'),
(260, 'BELGACHA HIGH SCHOOL AND B.M COLLEGE'),
(261, 'BHATARA USHCHA MADHYAMIK BIDYALAY'),
(262, 'GUTHAIL UCHCHA MADYMIC BIDYALAYA'),
(263, 'HABIBUR RAHMAN COLLEGE'),
(264, 'HASIL HIGHER SECONDARY SCHOOL'),
(265, 'ISLAMPUR J.J.K.M. GIRLS HIGH SCHOOL AND COLLEGE'),
(266, 'Jamalpur Homoeopathic Medical College'),
(267, 'JINNATON AFSOR MOHILA COLLGE'),
(268, 'JOMUNA SARKARKHANA HIGHER SECONDARY SCHOOL'),
(269, 'KHAJA SHAH SUFI YOUNUS ALI COLLEGE'),
(270, 'M M MEMORIAL COLLEGE'),
(271, 'MELAHANDA UMIR UDDIN PILOT HIGH SCHOOL AND COLLEGE'),
(272, 'NARUNDI UCHCHA MADHYMIK BIDYLAYA'),
(273, 'PEARPUR MOHARAJA SASHIKANTA MADHYAMIC BIDYALYA'),
(274, 'POGAL KIGHA COLLEGE'),
(275, 'S,N,C,ADORSHA COLLEGE'),
(276, 'SARISHA BARI PILOT UCCHA MADHYAMIK BALIKA BIDYALAYA'),
(277, 'Shaheed Ziaur Rahman College, Jamalpur'),
(278, 'SHEIKH KAMAL COLLEGE'),
(279, 'TEGHARIA SHAHED ALI HIGH CSHOOL & COLLEGE'),
(280, 'TULSHI PUR COLLEGE'),
(281, ''),
(282, 'AFTAB UDDIN SCHOOL AND COLLEGE'),
(283, 'Alhaj Abdul Kuddus Homoeopathic Medical College'),
(284, 'CHAR ADARSHA COLLEGE'),
(285, 'JANGALBARI MOHILA COLLEGE'),
(286, 'JANGALIA UNION UCHCHA MADHYAMIK SCHOOL & COLLEGE'),
(287, 'R .S. IDEAL COLLEGE'),
(288, 'SHIMUL KANDI COLLEGE'),
(289, 'TARAIL MUKTIZODHYA COLLEGE'),
(290, 'BAIRA COLLEGE'),
(291, 'BALIATI COLLEGE'),
(292, 'DR. ABDUR RAHIM KHAN MOHILA COLLEGE'),
(293, 'RAJIBPUR ADARSHA COLLEGE'),
(294, ''),
(295, ''),
(296, 'BIKRAMPUR TONGIBARI COLLEGE'),
(297, 'MALKHANAGAR HIGH SCHOOL AND COLLEGE'),
(298, 'MUNSHIGANG COLLEGE'),
(299, 'President Prof. Dr. Iajuddin Ahmed Resi. Model College'),
(300, 'RARIKHAL SIR J.C.BOSE INSTITUTION & COLLEGE'),
(301, 'AGRICULTURAL UNIVERSITY COLLEGE'),
(302, 'AKHTAR SULTANA MOHILA COLLEGE'),
(303, 'AULIANAGAR COLLEGE'),
(304, 'B.K.B COLLEGE'),
(305, 'BAKSHIMUL COLLEGE'),
(306, 'BEGUM FAJILATUNNESA MUJIB MOHILA COLLEGE'),
(307, 'BIRUNIA SADAR ALI SARKER MEMORIAL MOHILA COLLEGE'),
(308, 'CANTONMENT PURLIC SCHOOL & COLLEGE'),
(309, 'Chandpur College, Mymensingh'),
(310, 'DHALIA BAHULI UCHCHA MADHYAMIC BIDDAYLOY'),
(311, 'GAFARGAON MOHILA COLLEGE'),
(312, 'GOVT. ANANDA MOHAN COLLEGE'),
(313, 'HAJI CHERAG ALI COLLEGE'),
(314, 'HOSSAINPUR COLLEGE'),
(315, 'IDEAL INTERNATIONAL SCHOOL AND COLLEGE'),
(316, 'ISHWARGANJ GIRLS SXHOOL & COLLEGE'),
(317, 'JANATA MAHABIDYALAY'),
(318, 'KALSINDUR UCHCHA MADHYAMIK BIDYALAYA'),
(319, 'KAORAID GOYESHPUR COLLEGE'),
(320, 'KHURRAM KHAN CHOWDHURY COLLEGE'),
(321, 'MAHAKALI GIRLS SCHOOL AND COLLEGE'),
(322, 'MOMENSHAHI ISLAMI ACADEMY AND COLLEGE'),
(323, 'MUKTAGACHA COLLEGE'),
(324, 'MULIM GIRLS HIGH SCHOOL AND COLLEGE'),
(325, 'MUSHULI UCHCHA BIDYALAYA & COLLEGE'),
(326, 'Mymensing Homoeopathic Medical College'),
(327, 'MYMENSINGH COMMERCE COLLEGE'),
(328, 'MYMENSINGH GIRLS CADET COLLEGE'),
(329, 'Mymensingh Nursing College'),
(330, 'ROYAL MIDIA COLLEGE'),
(331, 'SAYER SAFAYEY MASHYMIK BIDDYANIKATION'),
(332, 'SHAHABUDDIN COLLEGE'),
(333, 'SHAHGONJ HIGH SCHOOL AND COLLEGE'),
(334, 'SHAHID SYED NAZRUL ISLAM COLLEGE'),
(335, 'UCHAKHILA HIGHER SECONDARY SCHOOL'),
(336, 'UTHURA HIGH SCHOOL & COLLEGE'),
(337, 'ADARSHA GIRLS SCHOOL & COLLEGE'),
(338, 'BALIAPARA HIGH SCHOOL AND COLLEGE'),
(339, 'BANDAR GIRL''S HIGHER SECONDARY SCHOOL'),
(340, 'HAJI IBRAHIM ALAMCHAN UCHHA MADYAIMIK BIDYALAYA'),
(341, 'HOSSAIN PUR S.P.UNION COLLEGE'),
(342, 'KAIMONNESSA COLLEGE'),
(343, 'Majhina Moujar Ahmadia Fazil Madrasah'),
(344, 'NURNNESSA UCHCHA MADHYAMIK BIDYALAYA'),
(345, 'PANCHRUKHI BEGUM ANOWARA COLLEGE'),
(346, 'REBATI MOHAN UCHAMADHYAMIK BIDYALAYA,SIDDIRGONJ'),
(347, 'SHANARPAR ROWSHAN ARA COLLEGE'),
(348, 'SINHA UCHCHA MADHAMIK BIDDALAYA'),
(349, 'SONARGAON G.R.INSTITUTION'),
(350, 'SULTANSADI HIGH SCHOOL AND COLLEGE'),
(351, 'ABDUL KADIR MOLLAH CITY COLLEGE'),
(352, 'ADIABAD ISLAMIA HIGH SCHOOL AND COLLEGE'),
(353, 'DAULATKANDI ADARSHA GIRLS HIGH SCHOOL AND COLLEGE'),
(354, 'DR.NAZRUL BIN NOOR MOHSIN GIRLS SCHOOL & COLLEGE'),
(355, 'HOSSAIN ALI COLLGE'),
(356, 'KHIDIRPUR COLLEGE'),
(357, 'LAKHPUR SHIMULIA COLLEGE'),
(358, 'MADHABDI DIGITAL COLLEGE'),
(359, 'MADHABDI UCHCHA MADHYMIC BALIKA BIDYALAYA'),
(360, 'Narshindi B.F.E Homoeopathic Medical College'),
(361, 'ROYPURA CHETANA BIKASH MOHILA COLLEGE'),
(362, 'SHAHID ASAD COLLEGIATE GIRLS SCHOOL & COLLEGE'),
(363, 'SHILMANDI ADARSHA COLLEGE'),
(364, 'UREA SARKARKHANA COLLEGE'),
(365, 'ATPARA COLLEGE'),
(366, 'BAUSHI ARDHACHANDRA HIGHER CECONDARY SCHOOL'),
(367, 'CHANDRANATH COLLEGE'),
(368, 'GONDA COLLEGE'),
(369, 'Hazi Abdul Aziz Khan College'),
(370, 'JANATA ADARSHA MOHABIDYALAY'),
(371, 'JOBAIDA RAHMAN MOHILA COLLEGE'),
(372, 'KHALIAJURI COLLEGE'),
(373, 'NETRAKONA RESIDENTIAL MODEL SCHOOL AND COLLEGE'),
(374, 'SANDIKONA UCHCHA MADHAYAMIK BIDHALYA'),
(375, 'ANKUR COLLEGIATE HIGHER SECONDARY SCHOOL'),
(376, 'BAHARPUR COLLEGE'),
(377, 'BANGABANDHU COLLEGE'),
(378, 'BELGACHHI ALIMUZZAMAN SCHOOL & COLLEGE'),
(379, 'IDEAL GIRLS COLLEGE'),
(380, 'KALIMOHAR JOHURUNNESA HIGHER SECONDARY SCHOOL'),
(381, 'LIAKAT ALI SMIRITI SCHOOL AND COLLEGE'),
(382, 'MUNSUR SCHOOL AND COLLEGE'),
(383, 'RABEYA IDRISH MOHILA COLLEGE'),
(384, 'Rajbari Homoeopathic Medical College'),
(385, ''),
(386, 'HABIB ULLAH COLLEGE'),
(387, 'PANDITSAR T.M. GIAS UDDIN COLEGE'),
(388, 'Sarishabari Homoeopathic Medical College'),
(389, 'ZAZIRA GIRLS HIGH SCHOOL&COLLEGE'),
(390, ''),
(391, 'BIR MUKTIJODDA ATIUR RAHMAN MODEL COLLEGE'),
(392, 'CHANDRAKONA COLLEGE'),
(393, 'JAMSAD ALI MEMORIAL COLLEGE'),
(394, 'MODEL GIRLS INSTITUTE COLLEGE'),
(395, ''),
(396, 'ARFAN COLLEGE LOWHATI'),
(397, 'Bharatesswary Homes'),
(398, 'BOALI MOHABIDHALAYA'),
(399, 'BRAHMAN SHASHON MOHILA COLLEGE'),
(400, 'CANTONMENT PUBLIC SCHOOL AND COLLEGE ,GHATAIL'),
(401, 'H M INSTITUTION SCHOOL & COLLEGE'),
(402, 'ISLAMIC UNIVERSITY TECHNICAL COLLEGE'),
(403, 'JANATA MAHABIDDALOY'),
(404, 'KAULZANI COLLEGE'),
(405, 'KHALILUR RAHMAN COLLEGE'),
(406, 'KHANDAKER FAJLUL HAQUE COLLEGE'),
(407, 'LAION FERDOUS ALAM FIROZ COLLEGE'),
(408, 'MADHUPUR SHAHID SMRITY HIGHER SECONDARY SCHOL'),
(409, 'NARANDIA T.R.K.N UCHCHA ;MADHAMIC BIDYAL'),
(410, 'NATUN KOHELA COLLEGE'),
(411, 'NORILLA COLLEGE'),
(412, 'PAKUTIA PUBLIC UCHCHA BIDYALAYA AND COLLEGE'),
(413, 'PALASHTALI MOHABIDYALAYA'),
(414, 'SAFDAR ALI COLLEGE'),
(415, 'SHAGAR DIGHI COLLEGE'),
(416, 'SHEIKH FAZILATUN NESA MIJIB MAHILA COLLEGE'),
(417, 'SHIMLA PUBLIC HIGHER SECONDARY SCHOOL'),
(418, 'SRISTY COLLEGE OF TANGAIL'),
(419, 'Tangail Homoeopathic Medical College'),
(420, 'VARATESHWARI HOMES HIGH SCHOOL'),
(421, 'ADARSHA TECHNICAL AND B. M. COLLEGE'),
(422, 'AGRANI BIDDYALAYA AND MAHABIDDYALAYA'),
(423, 'ALHAJ SUJAUDDULA COLLEGE'),
(424, 'ALIPUR MODEL COLLEGE'),
(425, 'ALOK NAGAR WOMEN''S COLLEGE'),
(426, 'BAGMARA COLLEGE'),
(427, 'BARGACHI HIGH SCHOOL AND COLLEGE'),
(428, 'BAUSHA COLLEGE'),
(429, 'BAYA HIGHI SCHOOL AND COLLEGE'),
(430, 'BEL PUKURIA WOMENS COLLEGE'),
(431, 'BHAYA LAXMIPUR BUDHIRHAT COLLEGE'),
(432, 'BIRKUTSA ABINASH SCHOOL AND COLLEGE'),
(433, 'CHABBISH NAGAR HIGH SCHOOL AND COLLEGE'),
(434, 'DAMKURAHAT COLLEGE'),
(435, 'DARGA DANGA HIGH SCHOOL AND COLLEGE'),
(436, 'DARSHANPARA SHAHEED KAMRUZZAMAN COLLEGE'),
(437, 'DHAMIN NAOGAON IDEAL COLLEGE'),
(438, 'DIGHA HIGH SCHOOL AND COLLEGE'),
(439, 'DURGA PUR ADARSO WOMENS COLLEGE'),
(440, 'DWIPNAGAR COLLEGE'),
(441, 'Fazar Ali Molla College'),
(442, 'GODAGARI HIGH SCHOOL AND COLLEGE'),
(443, 'GULGOFUR GIRLS'' HIGH SCHOOL AND COLLEGE'),
(444, 'JAMIRA COLLEGE'),
(445, 'JHALUKA COLLEGE'),
(446, 'JOTERAGHOB HIGH SCHOOL AND B.M COLLEGE'),
(447, 'K.H. TIKOR SCHOOL & COLLEGE'),
(448, 'KABI KAZI NAZRUL ISLAM COLLEGE'),
(449, 'KAKAN HAT COLLEGE'),
(450, 'KANTHAL BARIA S.A.K SCHOOL & COLLEGE'),
(451, 'KATILA SHOBOJ SHANGO SCHOOL & COLLEGE'),
(452, 'KESHABPUR HIGH SCHOOL AND COLLEGE'),
(453, 'KHADEMUL ISLAM GIRL''S SCHOOL &COLLEGE'),
(454, 'KHAL GRAM BISHNOPUR COLLEGE'),
(455, 'KISMAT BILLI ML. SCHOOL & COLLEGE'),
(456, 'KOYEL ADRASAHA COLLEGE'),
(457, 'LALIT NAGAR HIGH SCHOOL'),
(458, 'LALPUR MODEL COLLEGE'),
(459, 'MARIA COLLEGE'),
(460, 'MASJID MISSION ACADEMY SCHOOL & COLLEGE'),
(461, 'MIRGONZ COLLEGE'),
(462, 'MOAN PUR MOHILA COLLEGE'),
(463, 'MOHAMMADPUR MUKTIZODDHA MEMORIAL COLLEGE'),
(464, 'MONDUMALA GIRL''S HIGH SCHOOL AND COLLEGE'),
(465, 'MOTIHAR COLLEGE'),
(466, 'PAKURIA COLLEGE'),
(467, 'PALPUR DHARAMPUR COLLEGE'),
(468, 'RAJSHAHI CADET COLLEGE'),
(469, 'Rajshahi Homoeopathic Medical College'),
(470, 'RAJSHAHI MODEL SCHOOL AND COLLEGE'),
(471, 'Rajshahi Nursing College'),
(472, 'Rajshahi Residential College'),
(473, 'RAJSHAHI UNIVERSITY SCHOOL'),
(474, 'RAWTHA COLLEGE'),
(475, 'SAHDAH WOMEN''S COLLEGE'),
(476, 'SAYEDPUR MOCHMOIL WOMENS COLLEGE'),
(477, 'SHAHID MAMUN MAHMUD POLICE LINES SCHOOL & COLLEGE'),
(478, 'SHAHID NADER ALI GIRLS SCHOOL & COLLEGE.'),
(479, 'SHYAMPUR COLLEGE'),
(480, 'UPASHAHAR WOMANS COLLEGE'),
(481, 'AMADPUR COLLEGE'),
(482, 'ANNADANAGAR COLLEGE'),
(483, 'BADARGONJ M.L. HIGH SCHOOL & COLLEGE'),
(484, 'BARAIBARI COLLEGE'),
(485, 'Biam Model School & College, Rangpur'),
(486, 'CANTONMENT PUBLIC SCHOOL AND COLLEGE'),
(487, 'CARMICHAEL COLLEGIATE SCHOOL AND COLLEGE'),
(488, 'CHHARAN COLLEGE'),
(489, 'COLLECTORATE SCHOOL AND COLLEGE'),
(490, 'DANGIR HAT SCHHOOL AND COLLEGE'),
(491, 'DARSHANA BASIRON NESSA HIGH SCHOOL AND COLLEGE'),
(492, 'DEUTY HIGH SCHOOL AND COLLEGE'),
(493, 'DHANTALA R U HIGH SCHOOL AND COLLEGE'),
(494, 'GAJAGHANTA HIGH SCHOOL AND COLLEGE'),
(495, 'GURZIPARA COLLEGE'),
(496, 'HARAGACH MODEL COLLEGE'),
(497, 'JAIGIR HIGH SCHOOL & COLLEGE'),
(498, 'KERANIRHAT HIGH SCHOOL AND COLLEGE'),
(499, 'KHALEYA KHAPRI KHAL SCHOOL AND COLLEGE'),
(500, 'KUTUBPUR BL HIGH SCHOOL AND COLLEGE'),
(501, 'KUTUBPUR ORUNNESA HIGH SCHOOL & COLLEGE'),
(502, 'LALKUTHI GIRLS'' HIGH SCHOOL AND COLLEGE'),
(503, 'LION''S SCHOOL AND COLLEGE'),
(504, 'MAHIGANJ GIRLS HIGH SCHOOL AND COLLGE'),
(505, 'MIRZAPUR ADARSHA SCHOOL AND COLLEGE'),
(506, 'MOHIOSHI BEGUM ROKEYA WOMENS COLLEGE'),
(507, 'PADAGONJ HIGH SCHOOL & COLLEGE'),
(508, 'PAGLAPIR SCHOOL AND COLLEGE'),
(509, 'PAOTANA HAT COLLEGE'),
(510, 'POLICE LINE SCHOOL AND COLLEGE'),
(511, 'R.C.C.I PUBLIC SCHOOL AND COLLEGE'),
(512, 'RANGPUR CADET COLLEGE'),
(513, 'Rangpur College'),
(514, 'Rangpur Homoeopathic Medical College'),
(515, 'Rangpur Nursing College'),
(516, 'RANIPUKUR HIGH SCHOOL AND COLLEGE'),
(517, 'ROBERT GONJ GIRLS HIGH SCHOOL AND COLLEGE'),
(518, 'SAMAJ KALAYAN BIDYA BITHI GIRL''S SCHOOL & COLLEGE'),
(519, 'SATDARGAH COLLEGE'),
(520, 'SAYER KAZI PARA SCHOOL & COLLEGE'),
(521, 'SHERUDANGA SCHOOL AND COLLEGE'),
(522, 'SHYAMPUR GIRLS HIGH SCHOOL AND COLLEGE'),
(523, 'TARAGONJ O.A GIRLS SCHOOL AND COLLEGE'),
(524, 'TEPA MADUPUR GIRLS HIGH SCHOOL & COLLEGE'),
(525, 'VENDABARI WOMEN,S COLLEGE'),
(526, 'ALOK DIHI IDEAL COLLEGE'),
(527, 'AMBARI MOHILA COLLEGE'),
(528, 'AMTOLI COLLEGE'),
(529, 'BARA PUKURIA SCHOOL AND COLLEGE'),
(530, 'BARNAMALA NIKETON HIGH SCHOOL AND COLLEGE'),
(531, 'BELAICHANDI HIGH SCHOOL AND COLLEGE'),
(532, 'BHADURIA SCHOOL AND COLLEGE'),
(533, 'BOARDHAT COLLEGE'),
(534, 'CANTT.PUBLIC SCHOOL & COLLEGE'),
(535, 'CHEHEL GAZI COLLEGE'),
(536, 'CHIRIR BANDAR MOHILA COLLEGE'),
(537, 'COLLEGIATE GIRL''S HIGH SCHOOL& COLLEGE'),
(538, 'DALUA HIGH SCHOOL AND COLLEGE'),
(539, 'DAUDPUR GIRLS HIGH SCHOOL & COLLEGE'),
(540, 'DEOGAON BOKUL TALA COLLEGE'),
(541, 'Dinajpur Homoeopathic Medical College'),
(542, 'DINAJPUR ISLAMIA WOMEN''S COLLEGE'),
(543, 'GAUSUL AZAM GOLLAGE'),
(544, 'GHORA GHAT ADARSA COLLEGE'),
(545, 'GHUGHUDANGA HIGH SCHOOL AND COLLEGE'),
(546, 'GOLAPGONJ COLLEGE'),
(547, 'JAGATPUR COLLEGE'),
(548, 'JAMIR UDDIN SHAH GIRLS HIGH SCHOOL AND COLLEGE'),
(549, 'KACHINIA HIGH SCHOOL & COLLEGE'),
(550, 'KARENT HAT COLLEGE'),
(551, 'KETRAHAT COLLEGE'),
(552, 'KHANSAMA WOMENS''S COLLEGE'),
(553, 'KHOCHNA S.C.SCHOOL & COLLGE'),
(554, 'KUTUB DANGA HIGH SCHOOL & COLLEGE'),
(555, 'MADILA HAT COLLEGE'),
(556, 'MUNSHIPARA ADARSHA COLLEGE'),
(557, 'NASHIPUR HIGH SCHOOL AND COLLEGE'),
(558, 'NAWPARA SCHOOL AND COLLEGE'),
(559, 'PUKHURI HIGH SCHOOL & COLLEGE'),
(560, 'PURBA MALLIK PUR H.S. COLLEGE'),
(561, 'RAHGUNATHPUR COLLEGE'),
(562, 'RAJABASHOR SCHOOL AND COLLEGE'),
(563, 'RANIGANJ EHIA HOSSAIN SCHOOL & COLLEGE'),
(564, 'SETAB GANJ MOHILA COLLEGE'),
(565, 'SHANKARPUR COLLEGE'),
(566, 'SHAPLA GIRLS SCHOOL AND COLLEGE'),
(567, 'SUKHIPIR COLLEGE'),
(568, 'UTTAR LAXSHMIPUR HIGH SCHOOL AND COLLEGE'),
(569, 'UTTAR SALONDAR HIGH SCHOOL AND COLLEGE'),
(570, 'ANOR MARI COLLEGE'),
(571, 'ARARSHA COLLEGE'),
(572, 'BARABHITA SCHOOL & COLLEGE'),
(573, 'CANTONMENT PUBLIC SCHOOL AND COLLEGE SAIDPUR'),
(574, 'CHARAIKHOLA SCHOOL & COLLEGE'),
(575, 'COLLETORETORATE SCHOOL & COLLEGE'),
(576, 'GAYABARI SCHOOL AND COLLEGE'),
(577, 'GOVT.SAIDPUR INTERMEDIATE TECHNICAL COLLEGE'),
(578, 'HAZARIHAT SCHOOL & COLLEGE'),
(579, 'IDEAL COOLLEGE'),
(580, 'KAIMARI SCHOOL AND COLLEGE'),
(581, 'KAYA GOLAHAT HIGH SCHOOL & COLLEGE'),
(582, 'MAGURA COLLEGE'),
(583, 'MIRZAGONJ COLLEGE'),
(584, 'Nilphamari Homoeopathic Medical College'),
(585, 'POLASH BARI WEMENS COLLEGE'),
(586, 'RANA CHANDI HIGH SCHOOL AND COLLAEGE'),
(587, 'SAIDPUR ADARSHA GIRLS SCHOOL & COLLEGE'),
(588, 'SUNFLOWAR SCHOOL & COLLEGE'),
(589, 'Syedpur Homoeopathic Medical College'),
(590, 'TENGONMARI SCHOOLL AND COLLEGE'),
(591, 'TISTA COLLEGE'),
(592, 'UTTAR CHOWRA BARAGACHHA SCHOOL & COLLEGE'),
(593, 'AHMED UDDIN SAH NIKATAN SCHOOL AND COLLEGE'),
(594, 'ASADUZZAMAN GIRLS HIGH SCHOOL & COLLEGE'),
(595, 'BANANDANGA M.M.ALHAZ HOSSAIN MOHAMMAD ERSHAD SCHOOL & COLLEGE'),
(596, 'BASUDEBPUR CHANDRA KISHORE HIGH SCHOOL AND COLLEGE'),
(597, 'BAZARPARA COLLEGE'),
(598, 'BHATGRAM HIGH SCHOOL AND COLLEGE'),
(599, 'BONAR PARA GIRLS HIGH SCHOOL AND COLLEGE'),
(600, 'BURA BURI AZITULLA SARKER HIGH SCHOOL AND COLLEGE'),
(601, 'BURAIL HIGH SCHOOL AND COLLEGE'),
(602, 'CHANDIA MOHILA COLLEGE'),
(603, 'CHNADIPUR FAZLUL HOQUE SCHOOL AND COLLEGE'),
(604, 'DHAPERHAT PRIOBALA GIRLS HIGH SCHOOL AND COLLEGE'),
(605, 'DHOL BHANGA HIGH SCHOOL & COLLEGE'),
(606, 'DHUBNI KANCHIBARI COLLEGE'),
(607, 'EKRAMUL HAQUE IDEAL AND COMPUTER BIGGYAN COLLEGE'),
(608, 'HARINABARI COLLEGE'),
(609, 'HINGARPARA GIRLS HIGH SCHOOL AND B M COLLEGE'),
(610, 'JUMARBARI ADARSHA COLLEGE'),
(611, 'KAMAR PARA COLLEGE'),
(612, 'LAKSHMIPUR SCHOOL & COLLEGE'),
(613, 'LENGA BAZAR IDEAL COLLEGE'),
(614, 'MAHIMAGANJ WOMEN''S COLLEGE'),
(615, 'PALASH BARI MAHILA COLLEGE'),
(616, 'PIARAPUR I.G.M.SCHOOL & COLLEGE'),
(617, 'R.A.GANI SCHOOL & COLLEGE'),
(618, 'RAMDEB SHAIKH KHABIR UDDIN COLLEGE'),
(619, 'SHAGHATA PILOT GIRLS SCHOOL AND COLLEGE'),
(620, 'SHAHARGACHI MODEL M/L GIRL''S SCHOOL & COLLEGE'),
(621, 'SHIBRAM ALHAZ MD. HOSSAIN SMRITY SCHOOL & COLLEGE'),
(622, 'UDAKHALI WOMEN''S COLLEGE'),
(623, 'UDAYAN WOMEN''S COLLEGE'),
(624, 'ABDUR ROB SERNIABAT COLLEGE'),
(625, 'ABUL HOSSAIN KHAN COLLEGE'),
(626, 'ADARSHA HIGH SCHOOL AND COLLEGE'),
(627, 'Apex Homoeopathic Medical College'),
(628, 'ARIF MAHMUD COLLEGE'),
(629, 'BADALPARA HIGH SCHOOL AND COLLEGE'),
(630, 'BAGDHA SECONDARY SCHOOL & COLLEGE'),
(631, 'BAHADURPUR NISHIKANTA GAIN GIRL''S SCHOOL & COLLEGE'),
(632, 'BAKER GANJ MOHILA COLLEGE'),
(633, 'BARISAL CADET COLLEGE'),
(634, 'Barisal City College'),
(635, 'BARISAL MODEL SCHOOL AND COLLEGE'),
(636, 'Barthi Mahabidyalaya'),
(637, 'Begume Tofazzal Hossain Manik Mohila College'),
(638, 'BHASANCHAR BIDDANANDAPUR COLLEGE'),
(639, 'BISHARKANDI SHER E BANGLA DEGREE COLLEGE'),
(640, 'CHANDPASHA HIGH SCHOOL AND COLLEGE'),
(641, 'Char Kalekhan Adarsha College'),
(642, 'GOURNADI GIRLS SCHOOL AND COLLEGE'),
(643, 'Govt. Barisal College'),
(644, 'HAZI SYED BADRUL HOSSAIN COLLEGE'),
(645, 'JALLA UNION IDEAL COLLEGE'),
(646, 'JUGIR KANDA MOHILA MAHABIDYALAY'),
(647, 'KABAI UNION ISLAMIA COLLEGE'),
(648, 'KADERPUR SONAR BANGLA HIGH SCHOOL'),
(649, 'KARNOKATHI G.R. HIGH SCHOOL & COLLEGE'),
(650, 'KASHIPUR HIGH SCHOOL & COLLEGE'),
(651, 'MADDHABPASHA CHANDRADIP HIGH SCHOOL AND COLLEGE'),
(652, 'MAHANAGAR COLLEGE'),
(653, 'Mahilara Degree College'),
(654, 'MASJID BARI HIGH SCHOOL AND COLLEGE'),
(655, 'Muladi College'),
(656, 'NIZAMUDDIN DEGREE COLLEGE'),
(657, 'PURBO HOSNABAD MAHABIDDALYA'),
(658, 'RUPATALI JAGUA COLLEGE'),
(659, 'SATLA IDEAK COLLEGE'),
(660, 'SAYED KATI UNION ISLAMIA COLLEGE'),
(661, 'TALUKDER HAT SCHOOL & COLLEGE'),
(662, 'UJIRPUR MOHILA COLLEGE'),
(663, 'Ulania Muzzaffar Khan College'),
(664, 'Uzirpur Alhaz B N Khan College'),
(665, 'Hemayet Uddin College'),
(666, 'JOYKALASH TICHNICAL AND B.M. COLLEGE. (GENERAL)'),
(667, 'MONISWITA MOHILA COLLEGE'),
(668, 'PASCHIM CHHITKI SECOUNDERY SCHOOL & COLLEGE'),
(669, 'Rajapur Degree College'),
(670, 'SHAH MAHMUDIA COLLEGE'),
(671, 'SHIRJUG AZIMUNNESSA GIRLS SCHOOL & COLLEGE'),
(672, 'SYEDA JAMILA KHATUN GIRLS HIGH SCHOOL & COLLEGE'),
(673, 'Tofazzol Hossain Manik Mia College'),
(674, 'Government Hazi Mohammad Mohshin College'),
(675, 'Chittagong College'),
(676, 'Ispahani Public School & College'),
(677, 'Halishahar Cantonment Public School & College'),
(678, 'Nou Bahini School & College'),
(679, 'Ashekane Aulia College'),
(680, 'Hazera-Taju Degree College'),
(681, 'Government College of Commerce, Chittagong'),
(682, 'Agrabad Mohila College'),
(683, 'Chittagong Model School & College'),
(684, 'Government City College, Chittagong'),
(685, 'Patharghata Girls College'),
(686, 'Omargani MES College'),
(687, 'Chittagong Govt. Girls College'),
(688, 'Barrister Sultan Ahmad Chowdhury College'),
(689, 'Bangladesh Women''s Association School & College'),
(690, 'Islamia Degree College'),
(691, 'J.M. Sen College'),
(692, 'Dr. Fazlul Hazera College'),
(693, 'Chittagong Engineering University School and College'),
(694, 'Chittagong Public School & College'),
(695, 'B.A.F Shaheen College'),
(696, 'Sitakund Degree College'),
(697, 'Latifa Siddiqi Degree College'),
(698, 'Faujdarhat Cadet College'),
(699, 'Pahartali College'),
(700, 'Hathazari Degree College'),
(701, 'Katirhat Girl''s College'),
(702, 'Fatikchari Degree College'),
(703, 'Bhujpur National School & College'),
(704, 'Isapur B.M.C College'),
(705, 'Narayanhat Adarsha College'),
(706, 'Nanupur Laila Kabir College'),
(707, 'Gultaz Memorial School & College'),
(708, 'Heako Banani College'),
(709, 'Nazirhat College'),
(710, 'Kuaish Burischar Sheikh Mohammad City Corporation College'),
(711, 'Fateyabad College'),
(712, 'Mirasarai College'),
(713, 'Nizampur College'),
(714, 'Baraiahat College'),
(715, 'Chittagong University College'),
(716, 'Rangunia College'),
(717, 'South Rangunia Padua College'),
(718, 'Rajanagar Ranirhat College'),
(719, 'North Rangunia College'),
(720, 'M. Shah Alam Chowdhury College'),
(721, 'Sir Ashotosh Govt. College'),
(722, 'Boalkhali Shirajul Islam Degree College'),
(723, 'Kadurkhil Jalil Ambia College'),
(724, 'Satkania Govt. College'),
(725, 'Al Helal Adarsa College'),
(726, 'North Satkania Jafar Ahmad Chowdhury College'),
(727, 'Alaol Degree College'),
(728, 'Banshkhali Degree College'),
(729, 'Anowara College'),
(730, 'Paschim Patia A.J. Chowdhury College'),
(731, 'Shah Mohsen Aulia College'),
(732, 'Gachbaria Govt. College'),
(733, 'Satbaria Oli Ahmed Bir Bikram College'),
(734, 'Barama College'),
(735, 'Bara Aulia Degree College'),
(736, 'Chunti Girls College'),
(737, 'Patiya Govt. College'),
(738, 'Hulain Saleh Nur Degree College'),
(739, 'Muzaffarabad Jasoda Nagendra Nandi Residential Girl''s College'),
(740, 'Govt Hazi A.B. College'),
(741, 'Mustafizur Rahman College'),
(742, 'Raozan University College'),
(743, 'Noapara University College'),
(744, 'Kundeswari Girl''s College'),
(745, 'Gohira Degree College'),
(746, 'Agrasar Girls College'),
(747, 'Imam Gazzali University College'),
(748, 'Cox''s Bazar Govt. College'),
(749, 'Cox''s Bazar Govt. Girl''s College'),
(750, 'Chakoria College'),
(751, 'Maheshkhali College'),
(752, 'Kutubdia College'),
(753, 'Ramu College'),
(754, 'Eidgah Farid Ahmad College'),
(755, 'Ukhia College'),
(756, 'South Asian College,Chittagong'),
(757, 'Karnafuli College'),
(758, 'Kachalong College'),
(759, 'AGRICULTURAL UNIVERSITY COLLEGE'),
(760, 'AKHTAR SULTANA MOHILA COLLEGE'),
(761, 'AULIANAGAR COLLEGE'),
(762, 'B.K.B COLLEGE'),
(763, 'BAKSHIMUL COLLEGE'),
(764, 'BEGUM FAJILATUNNESA MUJIB MOHILA COLLEGE'),
(765, 'BIRUNIA SADAR ALI SARKER MEMORIAL MOHILA COLLEGE'),
(766, 'CANTONMENT PURLIC SCHOOL & COLLEGE'),
(767, 'Chandpur College, Mymensingh'),
(768, 'DHALIA BAHULI UCHCHA MADHYAMIC BIDDAYLOY'),
(769, 'GAFARGAON MOHILA COLLEGE'),
(770, 'GOVT. ANANDA MOHAN COLLEGE'),
(771, 'HAJI CHERAG ALI COLLEGE'),
(772, 'HOSSAINPUR COLLEGE'),
(773, 'IDEAL INTERNATIONAL SCHOOL AND COLLEGE'),
(774, 'ISHWARGANJ GIRLS SXHOOL & COLLEGE'),
(775, 'JANATA MAHABIDYALAY'),
(776, 'KALSINDUR UCHCHA MADHYAMIK BIDYALAYA'),
(777, 'KAORAID GOYESHPUR COLLEGE'),
(778, 'KHURRAM KHAN CHOWDHURY COLLEGE'),
(779, 'MAHAKALI GIRLS SCHOOL AND COLLEGE'),
(780, 'MOMENSHAHI ISLAMI ACADEMY AND COLLEGE'),
(781, 'MUKTAGACHA COLLEGE'),
(782, 'MULIM GIRLS HIGH SCHOOL AND COLLEGE'),
(783, 'MUSHULI UCHCHA BIDYALAYA & COLLEGE'),
(784, 'Mymensing Homoeopathic Medical College'),
(785, 'MYMENSINGH COMMERCE COLLEGE'),
(786, 'MYMENSINGH GIRLS CADET COLLEGE'),
(787, 'Mymensingh Nursing College'),
(788, 'ROYAL MIDIA COLLEGE'),
(789, 'SAYER SAFAYEY MASHYMIK BIDDYANIKATION'),
(790, 'SHAHABUDDIN COLLEGE'),
(791, 'SHAHGONJ HIGH SCHOOL AND COLLEGE'),
(792, 'SHAHID SYED NAZRUL ISLAM COLLEGE'),
(793, 'UCHAKHILA HIGHER SECONDARY SCHOOL'),
(794, 'UTHURA HIGH SCHOOL & COLLEGE'),
(795, 'AJMIRIGANJ COLLEGE'),
(796, 'AUSHKANDI RASHIDA PUBLIC SCHOOL & COLLEGE'),
(797, 'BAHUBAL COLLEGE'),
(798, 'GAZIPUR HIGH SCHOOL ANDR COLLEGE'),
(799, 'KABIR COLLEGIATE ACADEMY'),
(800, 'MUKTIJODDHA ZIA COLLEGE'),
(801, 'RAGIB RABEYA HIGH SCHOOL & COLLEGE'),
(802, 'SHAH JALAL COLLEGE'),
(803, 'Sufia Matin Mohila College'),
(804, ''),
(805, 'ABDUL GAFUR CHOWDHURY MAHILA COLLEGE'),
(806, 'BARAMCHAL HIGH SCHOOL AND COLLEGE'),
(807, 'BHATERA HIGH SCHOOL ADN COLLEGE'),
(808, 'BHUKBHMAIL SECHODARY SCHOOL AND COLLEGE'),
(809, 'CHHAKAPON HIGH SCHOOL AND COLLEGE'),
(810, 'JAGATSHI GOPAL KRISHNA M. SAIFUR RAHMAN SCHOOL & COLLEGE'),
(811, 'M. MUNTAZIM ALI COLLEGE'),
(812, 'Moulana Mufazzal Hossain Mohila College'),
(813, 'SHAHBAZPUR HIGH SCHOOL & COLLEGE'),
(814, 'THE BUDS RESIDENTIAL MODEL SCHOOL AND COLLEGE'),
(815, 'YOUSUF GONI ADARSHA COLLEGE'),
(816, ''),
(817, 'BADAGHAT COLLEGE'),
(818, 'BARKHAL M.L. SCHOOL AND COLLEGE'),
(819, 'BIBIANA MODEL COLAGE'),
(820, 'DUARA BAZAR COLLEGE'),
(821, 'ISLAMGANJ COLLEGE'),
(822, 'JAWA BAZAR COLLEGE'),
(823, 'MADHYANAGAR B.P. SCHOOL AND COLLEGE'),
(824, 'SAMUJ ALI HIGH SCHOOL AND COLLEGE'),
(825, 'SUNAMGONG GOVT. MOHILA COLLEGE'),
(826, 'SYEDPUR ADARSHA COLLEGE'),
(827, ''),
(828, 'AL-EMDAD SCHOOL & COLLEGE'),
(829, 'AMBERKHAN GIRLS HIGH SCHOOL AND COLLEGE'),
(830, 'ANANDA NIKETON SCHOOL AND COLLEGE'),
(831, 'BAROHAL COLLEGE'),
(832, 'BLUE BIRD HIGH SCHOOL AND COLLEGE'),
(833, 'BRITISH BANGLADESH INTERNATERNL SCHOOL S COLLEGE'),
(834, 'DAYAMIR COLLEGE'),
(835, 'DHAKA DAKASHIN GIRLS SCHOOL & COLLEGE'),
(836, 'DHAKA DAKSHIN MULTILATERAL HIGH SCHOOL & COLLEGE'),
(837, 'Govt. Tibbiya College'),
(838, 'IMRAN AHMED WOMEN?S COLLEGE'),
(839, 'ISRAB ALI HIGH SCHOOL AND COLLEGE'),
(840, 'JALAL PUR COLLEGE'),
(841, 'Jalalabad Homoeopathic Medical College'),
(842, 'KURAR BAZAR COLLEGE'),
(843, 'M.C. ACADEMY (SCHOOL & COLLEGE)'),
(844, 'Madan Mohon College'),
(845, 'MALIK NAHER MEMODIEL ACADEMY'),
(846, 'MANIK KONA HIGH SCHOOL & COLLEGE'),
(847, 'MOHAMMAD MOKON HIGH SCHOOL &COLLEGE'),
(848, 'SALUTIKOR COLLLEGE'),
(849, 'SCHOLARS HOME SCHOOL & COLLEGE'),
(850, 'SHAHJALAL JIMIA ISLAMIA SCHOOL &COLLEGE'),
(851, 'SYLHET CADET COLLEGE'),
(852, 'Sylhet Commerce College'),
(853, 'SYLHET INTERNATIONAL SCHOOL AND COLLEGE'),
(854, 'SYLHET MODEL SCHOOL &COLLEGE'),
(855, 'Sylhet Nursing College'),
(856, 'UTTAR BISHWANATH COLLGE'),
(857, 'WEST POINT SCHOOL & COLLEGE'),
(858, 'ZAKIGONJ GOVT. COLLEGE'),
(859, 'Abujar Ghifari College'),
(860, 'Adamjee Cantonment College'),
(861, 'AFAZ UDDIN UCHCHA MADHIAMIC BIDHYALAY'),
(862, 'AGARGAONTALTALA GOVT.COLONY SCHOOL & MOHILA COLLEGE'),
(863, 'AGRANI GIRLS SCHOOL & COLLEGE'),
(864, 'AHMED BAWANY ACADEMY (SCHOOL & COLLEGE0'),
(865, 'Ahsania Mission College'),
(866, 'ALI AHMED HIGH SCHOOL AND COLLEGE'),
(867, 'ANOWARA BEGUM MUSLIM GIRLS SCHOOL & COLLEGE'),
(868, 'Anwara-Mannaf Girls College'),
(869, 'ARAMBAGH GIRL''S HIGH SCHOOL AND COLLEGE'),
(870, 'ASHULIA UCHHA MADHYAMIC BIDHALAYA'),
(871, 'AZIMPUR GIRIS SCHOOL & COLLEGE'),
(872, 'BADDA ALATUNNESSA HIGHER SECONDARY SCHOOL'),
(873, 'BADSHA FAHAD SCHOOL AND COLLEGE'),
(874, 'Badsha Faisal Institute School and College'),
(875, 'BAF Shaheen College Dhaka'),
(876, 'BAGHAPUR HIGH SCHOOL & COLLEGE'),
(877, 'BAIKAL SCHOOL & COLLEGE'),
(878, 'BALUGHAT HIGH SCHOOL & COLLEGE'),
(879, 'BAMOIL IDEAL HIGH SCHOOL AND COLLEGE (BM)'),
(880, 'Bangabandhu College, Dhaka'),
(881, 'Bangladesh Commerce College'),
(882, 'Bangladesh Home Economics College'),
(883, 'Bangladesh Krira Shikkha Protishtan'),
(884, 'Bangladesh Navy College'),
(885, 'BANOPHOOL ADIBASHI GREEN HEART COLLEGE'),
(886, 'BARISUR ANSHALIK HIGH SCHOOL COLLEGE'),
(887, 'BARNAMALA ADARSHA UCHACHA MADHYAMIK BIDHYALAYA'),
(888, 'BASHIR UDDIN IDEAL HIGHER SCHOOL ARY SCHOOL'),
(889, 'BCIC College'),
(890, 'BEPZA PUBLIC SCHOOL AND COLLEGE'),
(891, 'Biam Model School & College, Dhaka'),
(892, 'Bikalpa Model College'),
(893, 'Bir Shreshtha Noor Mohammad Public College'),
(894, 'BIR SHRESTHA MUNSHI ABDUR ROUF RIFLES COLLEGE'),
(895, 'BPATC SCHOOL & COLLEGE'),
(896, 'Cambrian College'),
(897, 'Chartered University College'),
(898, 'Chatona Model Academy'),
(899, 'College of Development Alternative (CODA)'),
(900, 'COLLEGEX (COLLEGE FOR EXCELLENCE)'),
(901, 'COSMOPOLITAN LABRATORY SCHOOL AND COLLEGE'),
(902, 'Daffodil International College'),
(903, 'DBT BM College'),
(904, 'Dhaka Biggan College'),
(905, 'DHAKA BOYS COLLEGE'),
(906, 'Dhaka Cantonment Girls Public School and College'),
(907, 'Dhaka City College'),
(908, 'DHAKA CITY INTERNATIONAL COLLEGE'),
(909, 'Dhaka College'),
(910, 'Dhaka Commerce College'),
(911, 'DHAKA EASTERN COLLEGE'),
(912, 'Dhaka Golden College'),
(913, 'DHAKA IDEAL COLLEGE'),
(914, 'Dhaka Imperial College'),
(915, 'Dhaka Mohanagar Mohila College'),
(916, 'Dhaka Mohila Degree College'),
(917, 'Dhaka Nursing College'),
(918, 'Dhaka Presidency College'),
(919, 'Dhaka Residential Model College'),
(920, 'DHAKA SHIKSHA BOARD LABORATORY COLLEGE'),
(921, 'Dhaka State College'),
(922, 'DOSHAID A.K. HIGHER SECONDARY SCHOOL'),
(923, 'Dr. Mahbubur Rahman Molla College'),
(924, 'Dr. Malika University College'),
(925, 'DR. MOHAMMAD SHAHIDULLAH ADARSHA MADYMIC BIDYAPITH'),
(926, 'East West Nursing College & Institute'),
(927, 'ENGINEERING UNIVERSITY SCHOOL & COLLEGE'),
(928, 'FEROZA BASHAR IDEAL COLLEGE'),
(929, 'FM International College'),
(930, 'Fundamental College'),
(931, 'Future Commerce College'),
(932, 'Gazipur Homoeopathic Medical College'),
(933, 'Glory College'),
(934, 'GOVT. LABORATORY HIGH SCHOOL AND COLLEGE'),
(935, 'Green Field College'),
(936, 'GULSHAN COLLEGE'),
(937, 'Gulshan Commerce College'),
(938, 'Gulshan Model High School and College'),
(939, 'Habibullah Bahar University College'),
(940, 'HAJI ABDUL AWAL COLLEGE'),
(941, 'Hamdard Public College'),
(942, 'Hazrat Shah Ali Mohila College'),
(943, 'Holy Child School & College'),
(944, 'Holy Flower Model College'),
(945, 'I.F.S.UCHCHA MADYANIC CIDYALAYA'),
(946, 'Icon College'),
(947, 'Ideal College, Dhanmondi'),
(948, 'Ideal Commerce College'),
(949, 'IDEAL LABORATORY COLLEGE'),
(950, 'Ideal School & College'),
(951, 'ISPAHANI GIRLS SCHOOL AND COLLEGE'),
(952, 'JAHANGIRNAGAR UNIVERSITY SCHOOL & COLLEGE'),
(953, 'JARINA SIKDER GIRLS SCHOOL AND COLLEGE'),
(954, 'K.L. JUBILEE SCHOOL AND COLLEGE'),
(955, 'Kabi Nazrul Govt. College'),
(956, 'KADAMTALA PURBO BASHABO HIGHER SECONDARY SCHOOL'),
(957, 'Kaderia Taibia Kamil Madrasah'),
(958, 'KALACHADPUR UCCHA MADDAMIC BIDDALAY'),
(959, 'KALLYANPUR GIRLS SCHOOL & COLLEGE'),
(960, 'KAMALAPUR UCHCHA MADYAMIK BIDYALAYA'),
(961, 'KERANIGONJ GIRL''S SCHOOL AND COLLEGE'),
(962, 'KERANIGONJ RESIDENTIIAL COLLEGE'),
(963, 'KHAN INTERNATIONAL COLLEGE'),
(964, 'KHILGAON GIRLS SCHOOL AND COLLEGE'),
(965, 'Khilgaon Ideal College'),
(966, 'Khilgaon Model University College'),
(967, 'King''s College'),
(968, 'KISHALAYA GIRL''S SCHOOL & COLLEGE'),
(969, 'Lakshmiipur Unani Medical College'),
(970, 'LALBAGH MODEL SCHOOL & COLLEGE'),
(971, 'Lalmatia Housing Society School & College'),
(972, 'LAUREL INTERNATIONAL COLLEGE'),
(973, 'Leads School & College'),
(974, 'LIGHT HOUSE COLLEGE'),
(975, 'LIGHTHOUSE CAREER COLLEGE'),
(976, 'Lysiam College'),
(977, 'MADARTEK ABDUL AZIZ UCHCHA MADHYAMIK BIDYALYA'),
(978, 'MALIKANDA MEGHULA SCHOOL AND COLLEGE'),
(979, 'Manipur High Bishwabidyalay College'),
(980, 'MATUAIL HAJI ABDUL LATIF BHUIYAN COLLEGE'),
(981, 'Meherunnesa Girls School & College'),
(982, 'Meherunnesa Mohila College'),
(983, 'MEHERUNNISA GIRLS SCHOOL & COLLEGE'),
(984, 'Metropolitan Model College'),
(985, 'Milestone College'),
(986, 'Mirpur Girls'' Ideal Laboratory Institute'),
(987, 'MIRPUR MAFID-E-AM SCHOOL & COLLEGE'),
(988, 'Mission College'),
(989, 'MOFAZZAL MOMENA CHAKLADAR MOHILA COLLEGE'),
(990, 'Mohammadpur Central University College'),
(991, 'Mohammadpur Model School & College'),
(992, 'Mohammadpur Mohila college'),
(993, 'Mohammadpur Preparatory College'),
(994, 'MOTIJHEEL GOVT. BOY''S SCHOOL & COLLEGE'),
(995, 'Motijheel Model High School and College'),
(996, 'NATIONAL BANK PUBLIC SCHOOL AND COLLEGE'),
(997, 'National College'),
(998, 'National Ideal College'),
(999, 'National Institute of Fashion Technology (NIFT)'),
(1000, 'NATUN PALTAN LINE HIGHER SECONDARY SCHOOL'),
(1001, 'Nawab Habibullah Model School & College'),
(1002, 'NAWABAGON PILOT UCHCHA MADYAMIC BALIKA BIDYALAYA'),
(1003, 'New Castle College'),
(1004, 'New Model University College'),
(1005, 'Nikunja Model College'),
(1006, 'NOBARUN BIDDALAT ABD NOBARUN MOHABIDALOY'),
(1007, 'North Western College'),
(1008, 'Northern College Bangladesh'),
(1009, 'Notre Dame College'),
(1010, 'Premier College'),
(1011, 'PURANA PALTAN GIRLS COLLEGE'),
(1012, 'Quality Education College'),
(1013, 'Queen Mary College'),
(1014, 'Queen''s College'),
(1015, 'R K Chowdhury bishwabidyala College'),
(1016, 'Rajarbagh Police Lines School & College'),
(1017, 'Rajdhani Ideal College'),
(1018, 'Rajuk Uttara Model College'),
(1019, 'Rayhan College'),
(1020, 'Residential Laboratory College'),
(1021, 'RUPNAGAR MODEL SCHOOL AND COLLEGE'),
(1022, 'S O S HERMAN GMEINER COLLEGE. DHAKA'),
(1023, 'SAHID PRESIDENT ZIAUR RAHAMAN COLLEGE'),
(1024, 'Saint Joseph Higher Secondary School'),
(1025, 'SALEHA HIGH SCHOOL'),
(1026, 'Salimullah College'),
(1027, 'SAMOTA COLLEGE'),
(1028, 'Samsul Haq Khan School & College'),
(1029, 'SAVAR CANTONMENT PUBLIC SCHOOL & COLLEGE'),
(1030, 'SAVAR MODEL COLLEGE'),
(1031, 'SCHOLARS CITY COLLEGE'),
(1032, 'SHAHEED POLICE SMRITY COLLEGE'),
(1033, 'Shahid Bir Uttam Lt. Anwar Girls'' College'),
(1034, 'Shaikh Burhanuddin Post Graduate College'),
(1035, 'SHAMSUL HOQUE KHAN SCHOOL & COLLEGE'),
(1036, 'SHANTIPUR COLLEGE'),
(1037, 'Sharif Bag Islamia Kamil Madrasah'),
(1038, 'SHAROJ INTERNATIONAL SCHOOL AND COLLEGE'),
(1039, 'SHASEED ZIA GIRLA HIGH SCHOOL AND COLLEGE'),
(1040, 'SHER E BANGLA HIGHER SECONDARY SCHOOL .'),
(1041, 'SHER-E-BANGLA BALIKA MAHAVIDYALAYA'),
(1042, 'SHER-E-BANGLA NAGAR ADARSHA MOHILA MOHABIDYALAYA'),
(1043, 'SHERE BANGLA NOGOR GOVT.GIRLS SCHOOL & COLLEGE'),
(1044, 'SHOLLA HIGHER SECONDARY SCHOOL'),
(1045, 'SHYAMPUR MODEL SCHOOL AND COLLEGE'),
(1046, 'Siddheswari University College'),
(1047, 'South Point School & College'),
(1048, 'Soverin Girls College'),
(1049, 'Sristi Central College, Asulia'),
(1050, 'SRISTY CENTRAL COLLEGE'),
(1051, 'Stamford College'),
(1052, 'T & T University College'),
(1053, 'TALENT CAMPUS COLLEGE'),
(1054, 'Tanzim Homoeopathic Medical College'),
(1055, 'Tejgaon College'),
(1056, 'Tejgaon Mohila College'),
(1057, 'The Australasian College'),
(1058, 'Trust College'),
(1059, 'U. U. Laboratory College'),
(1060, 'Udayan Uccha Madyamik Bidyalaya'),
(1061, 'UNIVERSITI LABORATORY SCHOOL AND COLLEGE'),
(1062, 'UTTARA COMMERCE COLLECE'),
(1063, 'Uttara Cridence College'),
(1064, 'Uttara High School and College'),
(1065, 'Uttara Model College'),
(1066, 'UTTARA SCIENCE COLLEGE'),
(1067, 'Uttara Town College'),
(1068, 'VALUM ATAUR RAHMAN KHAN SCHOOL & COLLEGE'),
(1069, 'VERSATILE MODEL COLLEGE'),
(1070, 'Viqarunnisa Noon School & College'),
(1071, 'Western College'),
(1072, 'WIBT College'),
(1073, 'Willes Little Flower School & College'),
(1074, 'WILLIS LITTLE FLOWAR HIGHER SECONDARY SCHOOL'),
(1075, 'Winsome School & College'),
(1076, 'YWCA Girls College'),
(1077, 'YWCA Higer Secondary Girls School'),
(1078, 'ZINZIRA P M PILOT SECONDARY SCHOOL & COLLEGE'),
(1079, 'ZIRABO DEWAN IDRIS COLLEGE'),
(1080, 'College Name'),
(1081, 'AKHCHASHI MAHILA COLLEGE'),
(1082, 'BAKHUNDA COLLEGE'),
(1083, 'Bangabandhu College, Faridpur'),
(1084, 'Faridpur Homoeopathic Medical College'),
(1085, 'HALIMA GIRLS SCHOOL AND COLLEGE FARIDPUR'),
(1086, 'KABIRBAGH POURA MOHILA COLLEGE'),
(1087, 'Kazi Sirajul Islam Homoeopathic Medical College'),
(1088, 'SALTHA COLLEGE'),
(1089, ''),
(1090, 'AGRANI MODEL COLLEGE'),
(1091, 'ALIHAGJJ REZAUL HAQUE MOHILA COLLEGE'),
(1092, 'ANSAR VDP HIGH SCHOOL'),
(1093, 'AZMATPUR ADARSHA SCHOOL AND COLLEGE'),
(1094, '???????? ??????????? ????????? ???? ????????'),
(1095, 'BARAI BARI A.K.U.INSTITUTION AND COLLEGE'),
(1096, 'GAZIPUR COMMERCE COLLEGE'),
(1097, 'GAZIPUR PUBLIC COLLEGE'),
(1098, 'GAZIPUR RESIDENTIAL MODEL SCHOOL & COLLEGE'),
(1099, 'HATIMARA HIGH SCHOOL & COLLEGE'),
(1100, 'M.E.H.ARIF COLLEGE'),
(1101, 'Muktijoddha College, Gazipur'),
(1102, 'NAYANAGAR MOHILA COLLEGE'),
(1103, 'RAJENDRAPUR CANT. PUBLIC SCHOOL AND COLLEGE'),
(1104, 'SAFIUDDIN SARKER ACADEMY AND COLLEGE'),
(1105, 'SALNA NASIR UDDIN MEMORIAL HIGH SCHOOL AND COLLEGE'),
(1106, 'SHAHAJUDDIN SARKER MODEL HIGHER SECONDARY SCHOOL'),
(1107, 'SHARIF MOMTAJUDDIN AHMED COLLEGE'),
(1108, 'TARAGANJ H. N. UCCHA MADHYAMIC BIDYLAYA'),
(1109, 'TIPU SULTAN COLLEGE'),
(1110, 'TONGI PAILOT SCHOOL AND COLLEGE'),
(1111, 'BATIKA MARI UCHCHA MADHYAMIK MADHYAMIR BIDYALAY'),
(1112, 'Gopalgonj Homoeopathic Medical College'),
(1113, 'NESARUDDIN TALUKDER UCHCHA MADYAMIC BIDYALAYA'),
(1114, 'RATOIL IDEAL COLLEGE'),
(1115, 'SHEIKH HASINA ADRSA MAHABIDYALAY'),
(1116, 'UJANI B.K. B UNION COLLEGE'),
(1117, 'BELGACHA HIGH SCHOOL AND B.M COLLEGE'),
(1118, 'BHATARA USHCHA MADHYAMIK BIDYALAY'),
(1119, 'GUTHAIL UCHCHA MADYMIC BIDYALAYA'),
(1120, 'HABIBUR RAHMAN COLLEGE'),
(1121, 'HASIL HIGHER SECONDARY SCHOOL'),
(1122, 'ISLAMPUR J.J.K.M. GIRLS HIGH SCHOOL AND COLLEGE'),
(1123, 'Jamalpur Homoeopathic Medical College'),
(1124, 'JINNATON AFSOR MOHILA COLLGE'),
(1125, 'JOMUNA SARKARKHANA HIGHER SECONDARY SCHOOL'),
(1126, 'KHAJA SHAH SUFI YOUNUS ALI COLLEGE'),
(1127, 'M M MEMORIAL COLLEGE'),
(1128, 'MELAHANDA UMIR UDDIN PILOT HIGH SCHOOL AND COLLEGE'),
(1129, 'NARUNDI UCHCHA MADHYMIK BIDYLAYA'),
(1130, 'PEARPUR MOHARAJA SASHIKANTA MADHYAMIC BIDYALYA'),
(1131, 'POGAL KIGHA COLLEGE'),
(1132, 'S,N,C,ADORSHA COLLEGE'),
(1133, 'SARISHA BARI PILOT UCCHA MADHYAMIK BALIKA BIDYALAYA'),
(1134, 'Shaheed Ziaur Rahman College, Jamalpur'),
(1135, 'SHEIKH KAMAL COLLEGE'),
(1136, 'TEGHARIA SHAHED ALI HIGH CSHOOL & COLLEGE'),
(1137, 'TULSHI PUR COLLEGE'),
(1138, ''),
(1139, 'AFTAB UDDIN SCHOOL AND COLLEGE'),
(1140, 'Alhaj Abdul Kuddus Homoeopathic Medical College'),
(1141, 'CHAR ADARSHA COLLEGE'),
(1142, 'JANGALBARI MOHILA COLLEGE'),
(1143, 'JANGALIA UNION UCHCHA MADHYAMIK SCHOOL & COLLEGE'),
(1144, 'R .S. IDEAL COLLEGE'),
(1145, 'SHIMUL KANDI COLLEGE'),
(1146, 'TARAIL MUKTIZODHYA COLLEGE'),
(1147, 'BAIRA COLLEGE'),
(1148, 'BALIATI COLLEGE'),
(1149, 'DR. ABDUR RAHIM KHAN MOHILA COLLEGE'),
(1150, 'RAJIBPUR ADARSHA COLLEGE'),
(1151, ''),
(1152, ''),
(1153, 'BIKRAMPUR TONGIBARI COLLEGE'),
(1154, 'MALKHANAGAR HIGH SCHOOL AND COLLEGE'),
(1155, 'MUNSHIGANG COLLEGE'),
(1156, 'President Prof. Dr. Iajuddin Ahmed Resi. Model College'),
(1157, 'RARIKHAL SIR J.C.BOSE INSTITUTION & COLLEGE'),
(1158, 'AGRICULTURAL UNIVERSITY COLLEGE'),
(1159, 'AKHTAR SULTANA MOHILA COLLEGE'),
(1160, 'AULIANAGAR COLLEGE'),
(1161, 'B.K.B COLLEGE'),
(1162, 'BAKSHIMUL COLLEGE'),
(1163, 'BEGUM FAJILATUNNESA MUJIB MOHILA COLLEGE'),
(1164, 'BIRUNIA SADAR ALI SARKER MEMORIAL MOHILA COLLEGE'),
(1165, 'CANTONMENT PURLIC SCHOOL & COLLEGE'),
(1166, 'Chandpur College, Mymensingh'),
(1167, 'DHALIA BAHULI UCHCHA MADHYAMIC BIDDAYLOY'),
(1168, 'GAFARGAON MOHILA COLLEGE'),
(1169, 'GOVT. ANANDA MOHAN COLLEGE'),
(1170, 'HAJI CHERAG ALI COLLEGE'),
(1171, 'HOSSAINPUR COLLEGE'),
(1172, 'IDEAL INTERNATIONAL SCHOOL AND COLLEGE'),
(1173, 'ISHWARGANJ GIRLS SXHOOL & COLLEGE'),
(1174, 'JANATA MAHABIDYALAY'),
(1175, 'KALSINDUR UCHCHA MADHYAMIK BIDYALAYA'),
(1176, 'KAORAID GOYESHPUR COLLEGE'),
(1177, 'KHURRAM KHAN CHOWDHURY COLLEGE'),
(1178, 'MAHAKALI GIRLS SCHOOL AND COLLEGE'),
(1179, 'MOMENSHAHI ISLAMI ACADEMY AND COLLEGE'),
(1180, 'MUKTAGACHA COLLEGE'),
(1181, 'MULIM GIRLS HIGH SCHOOL AND COLLEGE'),
(1182, 'MUSHULI UCHCHA BIDYALAYA & COLLEGE'),
(1183, 'Mymensing Homoeopathic Medical College'),
(1184, 'MYMENSINGH COMMERCE COLLEGE'),
(1185, 'MYMENSINGH GIRLS CADET COLLEGE'),
(1186, 'Mymensingh Nursing College'),
(1187, 'ROYAL MIDIA COLLEGE'),
(1188, 'SAYER SAFAYEY MASHYMIK BIDDYANIKATION'),
(1189, 'SHAHABUDDIN COLLEGE'),
(1190, 'SHAHGONJ HIGH SCHOOL AND COLLEGE'),
(1191, 'SHAHID SYED NAZRUL ISLAM COLLEGE'),
(1192, 'UCHAKHILA HIGHER SECONDARY SCHOOL'),
(1193, 'UTHURA HIGH SCHOOL & COLLEGE'),
(1194, 'ADARSHA GIRLS SCHOOL & COLLEGE'),
(1195, 'BALIAPARA HIGH SCHOOL AND COLLEGE'),
(1196, 'BANDAR GIRL''S HIGHER SECONDARY SCHOOL'),
(1197, 'HAJI IBRAHIM ALAMCHAN UCHHA MADYAIMIK BIDYALAYA'),
(1198, 'HOSSAIN PUR S.P.UNION COLLEGE'),
(1199, 'KAIMONNESSA COLLEGE'),
(1200, 'Majhina Moujar Ahmadia Fazil Madrasah'),
(1201, 'NURNNESSA UCHCHA MADHYAMIK BIDYALAYA'),
(1202, 'PANCHRUKHI BEGUM ANOWARA COLLEGE'),
(1203, 'REBATI MOHAN UCHAMADHYAMIK BIDYALAYA,SIDDIRGONJ'),
(1204, 'SHANARPAR ROWSHAN ARA COLLEGE'),
(1205, 'SINHA UCHCHA MADHAMIK BIDDALAYA'),
(1206, 'SONARGAON G.R.INSTITUTION'),
(1207, 'SULTANSADI HIGH SCHOOL AND COLLEGE'),
(1208, 'ABDUL KADIR MOLLAH CITY COLLEGE'),
(1209, 'ADIABAD ISLAMIA HIGH SCHOOL AND COLLEGE'),
(1210, 'DAULATKANDI ADARSHA GIRLS HIGH SCHOOL AND COLLEGE'),
(1211, 'DR.NAZRUL BIN NOOR MOHSIN GIRLS SCHOOL & COLLEGE'),
(1212, 'HOSSAIN ALI COLLGE'),
(1213, 'KHIDIRPUR COLLEGE'),
(1214, 'LAKHPUR SHIMULIA COLLEGE'),
(1215, 'MADHABDI DIGITAL COLLEGE'),
(1216, 'MADHABDI UCHCHA MADHYMIC BALIKA BIDYALAYA'),
(1217, 'Narshindi B.F.E Homoeopathic Medical College'),
(1218, 'ROYPURA CHETANA BIKASH MOHILA COLLEGE'),
(1219, 'SHAHID ASAD COLLEGIATE GIRLS SCHOOL & COLLEGE'),
(1220, 'SHILMANDI ADARSHA COLLEGE'),
(1221, 'UREA SARKARKHANA COLLEGE'),
(1222, 'ATPARA COLLEGE'),
(1223, 'BAUSHI ARDHACHANDRA HIGHER CECONDARY SCHOOL'),
(1224, 'CHANDRANATH COLLEGE'),
(1225, 'GONDA COLLEGE'),
(1226, 'Hazi Abdul Aziz Khan College'),
(1227, 'JANATA ADARSHA MOHABIDYALAY'),
(1228, 'JOBAIDA RAHMAN MOHILA COLLEGE'),
(1229, 'KHALIAJURI COLLEGE'),
(1230, 'NETRAKONA RESIDENTIAL MODEL SCHOOL AND COLLEGE'),
(1231, 'SANDIKONA UCHCHA MADHAYAMIK BIDHALYA'),
(1232, 'ANKUR COLLEGIATE HIGHER SECONDARY SCHOOL'),
(1233, 'BAHARPUR COLLEGE'),
(1234, 'BANGABANDHU COLLEGE'),
(1235, 'BELGACHHI ALIMUZZAMAN SCHOOL & COLLEGE'),
(1236, 'IDEAL GIRLS COLLEGE'),
(1237, 'KALIMOHAR JOHURUNNESA HIGHER SECONDARY SCHOOL'),
(1238, 'LIAKAT ALI SMIRITI SCHOOL AND COLLEGE'),
(1239, 'MUNSUR SCHOOL AND COLLEGE'),
(1240, 'RABEYA IDRISH MOHILA COLLEGE'),
(1241, 'Rajbari Homoeopathic Medical College'),
(1242, ''),
(1243, 'HABIB ULLAH COLLEGE'),
(1244, 'PANDITSAR T.M. GIAS UDDIN COLEGE'),
(1245, 'Sarishabari Homoeopathic Medical College'),
(1246, 'ZAZIRA GIRLS HIGH SCHOOL&COLLEGE'),
(1247, ''),
(1248, 'BIR MUKTIJODDA ATIUR RAHMAN MODEL COLLEGE'),
(1249, 'CHANDRAKONA COLLEGE'),
(1250, 'JAMSAD ALI MEMORIAL COLLEGE'),
(1251, 'MODEL GIRLS INSTITUTE COLLEGE'),
(1252, ''),
(1253, 'ARFAN COLLEGE LOWHATI'),
(1254, 'Bharatesswary Homes'),
(1255, 'BOALI MOHABIDHALAYA'),
(1256, 'BRAHMAN SHASHON MOHILA COLLEGE'),
(1257, 'CANTONMENT PUBLIC SCHOOL AND COLLEGE ,GHATAIL'),
(1258, 'H M INSTITUTION SCHOOL & COLLEGE'),
(1259, 'ISLAMIC UNIVERSITY TECHNICAL COLLEGE'),
(1260, 'JANATA MAHABIDDALOY'),
(1261, 'KAULZANI COLLEGE'),
(1262, 'KHALILUR RAHMAN COLLEGE'),
(1263, 'KHANDAKER FAJLUL HAQUE COLLEGE'),
(1264, 'LAION FERDOUS ALAM FIROZ COLLEGE'),
(1265, 'MADHUPUR SHAHID SMRITY HIGHER SECONDARY SCHOL'),
(1266, 'NARANDIA T.R.K.N UCHCHA ;MADHAMIC BIDYAL'),
(1267, 'NATUN KOHELA COLLEGE'),
(1268, 'NORILLA COLLEGE'),
(1269, 'PAKUTIA PUBLIC UCHCHA BIDYALAYA AND COLLEGE'),
(1270, 'PALASHTALI MOHABIDYALAYA'),
(1271, 'SAFDAR ALI COLLEGE'),
(1272, 'SHAGAR DIGHI COLLEGE'),
(1273, 'SHEIKH FAZILATUN NESA MIJIB MAHILA COLLEGE'),
(1274, 'SHIMLA PUBLIC HIGHER SECONDARY SCHOOL'),
(1275, 'SRISTY COLLEGE OF TANGAIL'),
(1276, 'Tangail Homoeopathic Medical College'),
(1277, 'VARATESHWARI HOMES HIGH SCHOOL'),
(1278, 'ADARSHA TECHNICAL AND B. M. COLLEGE'),
(1279, 'AGRANI BIDDYALAYA AND MAHABIDDYALAYA'),
(1280, 'ALHAJ SUJAUDDULA COLLEGE'),
(1281, 'ALIPUR MODEL COLLEGE'),
(1282, 'ALOK NAGAR WOMEN''S COLLEGE'),
(1283, 'BAGMARA COLLEGE'),
(1284, 'BARGACHI HIGH SCHOOL AND COLLEGE'),
(1285, 'BAUSHA COLLEGE'),
(1286, 'BAYA HIGHI SCHOOL AND COLLEGE'),
(1287, 'BEL PUKURIA WOMENS COLLEGE'),
(1288, 'BHAYA LAXMIPUR BUDHIRHAT COLLEGE'),
(1289, 'BIRKUTSA ABINASH SCHOOL AND COLLEGE'),
(1290, 'CHABBISH NAGAR HIGH SCHOOL AND COLLEGE'),
(1291, 'DAMKURAHAT COLLEGE'),
(1292, 'DARGA DANGA HIGH SCHOOL AND COLLEGE'),
(1293, 'DARSHANPARA SHAHEED KAMRUZZAMAN COLLEGE'),
(1294, 'DHAMIN NAOGAON IDEAL COLLEGE'),
(1295, 'DIGHA HIGH SCHOOL AND COLLEGE'),
(1296, 'DURGA PUR ADARSO WOMENS COLLEGE'),
(1297, 'DWIPNAGAR COLLEGE'),
(1298, 'Fazar Ali Molla College'),
(1299, 'GODAGARI HIGH SCHOOL AND COLLEGE'),
(1300, 'GULGOFUR GIRLS'' HIGH SCHOOL AND COLLEGE'),
(1301, 'JAMIRA COLLEGE'),
(1302, 'JHALUKA COLLEGE'),
(1303, 'JOTERAGHOB HIGH SCHOOL AND B.M COLLEGE'),
(1304, 'K.H. TIKOR SCHOOL & COLLEGE'),
(1305, 'KABI KAZI NAZRUL ISLAM COLLEGE'),
(1306, 'KAKAN HAT COLLEGE');
INSERT INTO `tbl_clg_name` (`id`, `clgName`) VALUES
(1307, 'KANTHAL BARIA S.A.K SCHOOL & COLLEGE'),
(1308, 'KATILA SHOBOJ SHANGO SCHOOL & COLLEGE'),
(1309, 'KESHABPUR HIGH SCHOOL AND COLLEGE'),
(1310, 'KHADEMUL ISLAM GIRL''S SCHOOL &COLLEGE'),
(1311, 'KHAL GRAM BISHNOPUR COLLEGE'),
(1312, 'KISMAT BILLI ML. SCHOOL & COLLEGE'),
(1313, 'KOYEL ADRASAHA COLLEGE'),
(1314, 'LALIT NAGAR HIGH SCHOOL'),
(1315, 'LALPUR MODEL COLLEGE'),
(1316, 'MARIA COLLEGE'),
(1317, 'MASJID MISSION ACADEMY SCHOOL & COLLEGE'),
(1318, 'MIRGONZ COLLEGE'),
(1319, 'MOAN PUR MOHILA COLLEGE'),
(1320, 'MOHAMMADPUR MUKTIZODDHA MEMORIAL COLLEGE'),
(1321, 'MONDUMALA GIRL''S HIGH SCHOOL AND COLLEGE'),
(1322, 'MOTIHAR COLLEGE'),
(1323, 'PAKURIA COLLEGE'),
(1324, 'PALPUR DHARAMPUR COLLEGE'),
(1325, 'RAJSHAHI CADET COLLEGE'),
(1326, 'Rajshahi Homoeopathic Medical College'),
(1327, 'RAJSHAHI MODEL SCHOOL AND COLLEGE'),
(1328, 'Rajshahi Nursing College'),
(1329, 'Rajshahi Residential College'),
(1330, 'RAJSHAHI UNIVERSITY SCHOOL'),
(1331, 'RAWTHA COLLEGE'),
(1332, 'SAHDAH WOMEN''S COLLEGE'),
(1333, 'SAYEDPUR MOCHMOIL WOMENS COLLEGE'),
(1334, 'SHAHID MAMUN MAHMUD POLICE LINES SCHOOL & COLLEGE'),
(1335, 'SHAHID NADER ALI GIRLS SCHOOL & COLLEGE.'),
(1336, 'SHYAMPUR COLLEGE'),
(1337, 'UPASHAHAR WOMANS COLLEGE'),
(1338, 'AMADPUR COLLEGE'),
(1339, 'ANNADANAGAR COLLEGE'),
(1340, 'BADARGONJ M.L. HIGH SCHOOL & COLLEGE'),
(1341, 'BARAIBARI COLLEGE'),
(1342, 'Biam Model School & College, Rangpur'),
(1343, 'CANTONMENT PUBLIC SCHOOL AND COLLEGE'),
(1344, 'CARMICHAEL COLLEGIATE SCHOOL AND COLLEGE'),
(1345, 'CHHARAN COLLEGE'),
(1346, 'COLLECTORATE SCHOOL AND COLLEGE'),
(1347, 'DANGIR HAT SCHHOOL AND COLLEGE'),
(1348, 'DARSHANA BASIRON NESSA HIGH SCHOOL AND COLLEGE'),
(1349, 'DEUTY HIGH SCHOOL AND COLLEGE'),
(1350, 'DHANTALA R U HIGH SCHOOL AND COLLEGE'),
(1351, 'GAJAGHANTA HIGH SCHOOL AND COLLEGE'),
(1352, 'GURZIPARA COLLEGE'),
(1353, 'HARAGACH MODEL COLLEGE'),
(1354, 'JAIGIR HIGH SCHOOL & COLLEGE'),
(1355, 'KERANIRHAT HIGH SCHOOL AND COLLEGE'),
(1356, 'KHALEYA KHAPRI KHAL SCHOOL AND COLLEGE'),
(1357, 'KUTUBPUR BL HIGH SCHOOL AND COLLEGE'),
(1358, 'KUTUBPUR ORUNNESA HIGH SCHOOL & COLLEGE'),
(1359, 'LALKUTHI GIRLS'' HIGH SCHOOL AND COLLEGE'),
(1360, 'LION''S SCHOOL AND COLLEGE'),
(1361, 'MAHIGANJ GIRLS HIGH SCHOOL AND COLLGE'),
(1362, 'MIRZAPUR ADARSHA SCHOOL AND COLLEGE'),
(1363, 'MOHIOSHI BEGUM ROKEYA WOMENS COLLEGE'),
(1364, 'PADAGONJ HIGH SCHOOL & COLLEGE'),
(1365, 'PAGLAPIR SCHOOL AND COLLEGE'),
(1366, 'PAOTANA HAT COLLEGE'),
(1367, 'POLICE LINE SCHOOL AND COLLEGE'),
(1368, 'R.C.C.I PUBLIC SCHOOL AND COLLEGE'),
(1369, 'RANGPUR CADET COLLEGE'),
(1370, 'Rangpur College'),
(1371, 'Rangpur Homoeopathic Medical College'),
(1372, 'Rangpur Nursing College'),
(1373, 'RANIPUKUR HIGH SCHOOL AND COLLEGE'),
(1374, 'ROBERT GONJ GIRLS HIGH SCHOOL AND COLLEGE'),
(1375, 'SAMAJ KALAYAN BIDYA BITHI GIRL''S SCHOOL & COLLEGE'),
(1376, 'SATDARGAH COLLEGE'),
(1377, 'SAYER KAZI PARA SCHOOL & COLLEGE'),
(1378, 'SHERUDANGA SCHOOL AND COLLEGE'),
(1379, 'SHYAMPUR GIRLS HIGH SCHOOL AND COLLEGE'),
(1380, 'TARAGONJ O.A GIRLS SCHOOL AND COLLEGE'),
(1381, 'TEPA MADUPUR GIRLS HIGH SCHOOL & COLLEGE'),
(1382, 'VENDABARI WOMEN,S COLLEGE'),
(1383, 'ALOK DIHI IDEAL COLLEGE'),
(1384, 'AMBARI MOHILA COLLEGE'),
(1385, 'AMTOLI COLLEGE'),
(1386, 'BARA PUKURIA SCHOOL AND COLLEGE'),
(1387, 'BARNAMALA NIKETON HIGH SCHOOL AND COLLEGE'),
(1388, 'BELAICHANDI HIGH SCHOOL AND COLLEGE'),
(1389, 'BHADURIA SCHOOL AND COLLEGE'),
(1390, 'BOARDHAT COLLEGE'),
(1391, 'CANTT.PUBLIC SCHOOL & COLLEGE'),
(1392, 'CHEHEL GAZI COLLEGE'),
(1393, 'CHIRIR BANDAR MOHILA COLLEGE'),
(1394, 'COLLEGIATE GIRL''S HIGH SCHOOL& COLLEGE'),
(1395, 'DALUA HIGH SCHOOL AND COLLEGE'),
(1396, 'DAUDPUR GIRLS HIGH SCHOOL & COLLEGE'),
(1397, 'DEOGAON BOKUL TALA COLLEGE'),
(1398, 'Dinajpur Homoeopathic Medical College'),
(1399, 'DINAJPUR ISLAMIA WOMEN''S COLLEGE'),
(1400, 'GAUSUL AZAM GOLLAGE'),
(1401, 'GHORA GHAT ADARSA COLLEGE'),
(1402, 'GHUGHUDANGA HIGH SCHOOL AND COLLEGE'),
(1403, 'GOLAPGONJ COLLEGE'),
(1404, 'JAGATPUR COLLEGE'),
(1405, 'JAMIR UDDIN SHAH GIRLS HIGH SCHOOL AND COLLEGE'),
(1406, 'KACHINIA HIGH SCHOOL & COLLEGE'),
(1407, 'KARENT HAT COLLEGE'),
(1408, 'KETRAHAT COLLEGE'),
(1409, 'KHANSAMA WOMENS''S COLLEGE'),
(1410, 'KHOCHNA S.C.SCHOOL & COLLGE'),
(1411, 'KUTUB DANGA HIGH SCHOOL & COLLEGE'),
(1412, 'MADILA HAT COLLEGE'),
(1413, 'MUNSHIPARA ADARSHA COLLEGE'),
(1414, 'NASHIPUR HIGH SCHOOL AND COLLEGE'),
(1415, 'NAWPARA SCHOOL AND COLLEGE'),
(1416, 'PUKHURI HIGH SCHOOL & COLLEGE'),
(1417, 'PURBA MALLIK PUR H.S. COLLEGE'),
(1418, 'RAHGUNATHPUR COLLEGE'),
(1419, 'RAJABASHOR SCHOOL AND COLLEGE'),
(1420, 'RANIGANJ EHIA HOSSAIN SCHOOL & COLLEGE'),
(1421, 'SETAB GANJ MOHILA COLLEGE'),
(1422, 'SHANKARPUR COLLEGE'),
(1423, 'SHAPLA GIRLS SCHOOL AND COLLEGE'),
(1424, 'SUKHIPIR COLLEGE'),
(1425, 'UTTAR LAXSHMIPUR HIGH SCHOOL AND COLLEGE'),
(1426, 'UTTAR SALONDAR HIGH SCHOOL AND COLLEGE'),
(1427, 'ANOR MARI COLLEGE'),
(1428, 'ARARSHA COLLEGE'),
(1429, 'BARABHITA SCHOOL & COLLEGE'),
(1430, 'CANTONMENT PUBLIC SCHOOL AND COLLEGE SAIDPUR'),
(1431, 'CHARAIKHOLA SCHOOL & COLLEGE'),
(1432, 'COLLETORETORATE SCHOOL & COLLEGE'),
(1433, 'GAYABARI SCHOOL AND COLLEGE'),
(1434, 'GOVT.SAIDPUR INTERMEDIATE TECHNICAL COLLEGE'),
(1435, 'HAZARIHAT SCHOOL & COLLEGE'),
(1436, 'IDEAL COOLLEGE'),
(1437, 'KAIMARI SCHOOL AND COLLEGE'),
(1438, 'KAYA GOLAHAT HIGH SCHOOL & COLLEGE'),
(1439, 'MAGURA COLLEGE'),
(1440, 'MIRZAGONJ COLLEGE'),
(1441, 'Nilphamari Homoeopathic Medical College'),
(1442, 'POLASH BARI WEMENS COLLEGE'),
(1443, 'RANA CHANDI HIGH SCHOOL AND COLLAEGE'),
(1444, 'SAIDPUR ADARSHA GIRLS SCHOOL & COLLEGE'),
(1445, 'SUNFLOWAR SCHOOL & COLLEGE'),
(1446, 'Syedpur Homoeopathic Medical College'),
(1447, 'TENGONMARI SCHOOLL AND COLLEGE'),
(1448, 'TISTA COLLEGE'),
(1449, 'UTTAR CHOWRA BARAGACHHA SCHOOL & COLLEGE'),
(1450, 'AHMED UDDIN SAH NIKATAN SCHOOL AND COLLEGE'),
(1451, 'ASADUZZAMAN GIRLS HIGH SCHOOL & COLLEGE'),
(1452, 'BANANDANGA M.M.ALHAZ HOSSAIN MOHAMMAD ERSHAD SCHOOL & COLLEGE'),
(1453, 'BASUDEBPUR CHANDRA KISHORE HIGH SCHOOL AND COLLEGE'),
(1454, 'BAZARPARA COLLEGE'),
(1455, 'BHATGRAM HIGH SCHOOL AND COLLEGE'),
(1456, 'BONAR PARA GIRLS HIGH SCHOOL AND COLLEGE'),
(1457, 'BURA BURI AZITULLA SARKER HIGH SCHOOL AND COLLEGE'),
(1458, 'BURAIL HIGH SCHOOL AND COLLEGE'),
(1459, 'CHANDIA MOHILA COLLEGE'),
(1460, 'CHNADIPUR FAZLUL HOQUE SCHOOL AND COLLEGE'),
(1461, 'DHAPERHAT PRIOBALA GIRLS HIGH SCHOOL AND COLLEGE'),
(1462, 'DHOL BHANGA HIGH SCHOOL & COLLEGE'),
(1463, 'DHUBNI KANCHIBARI COLLEGE'),
(1464, 'EKRAMUL HAQUE IDEAL AND COMPUTER BIGGYAN COLLEGE'),
(1465, 'HARINABARI COLLEGE'),
(1466, 'HINGARPARA GIRLS HIGH SCHOOL AND B M COLLEGE'),
(1467, 'JUMARBARI ADARSHA COLLEGE'),
(1468, 'KAMAR PARA COLLEGE'),
(1469, 'LAKSHMIPUR SCHOOL & COLLEGE'),
(1470, 'LENGA BAZAR IDEAL COLLEGE'),
(1471, 'MAHIMAGANJ WOMEN''S COLLEGE'),
(1472, 'PALASH BARI MAHILA COLLEGE'),
(1473, 'PIARAPUR I.G.M.SCHOOL & COLLEGE'),
(1474, 'R.A.GANI SCHOOL & COLLEGE'),
(1475, 'RAMDEB SHAIKH KHABIR UDDIN COLLEGE'),
(1476, 'SHAGHATA PILOT GIRLS SCHOOL AND COLLEGE'),
(1477, 'SHAHARGACHI MODEL M/L GIRL''S SCHOOL & COLLEGE'),
(1478, 'SHIBRAM ALHAZ MD. HOSSAIN SMRITY SCHOOL & COLLEGE'),
(1479, 'UDAKHALI WOMEN''S COLLEGE'),
(1480, 'UDAYAN WOMEN''S COLLEGE'),
(1481, 'ABDUR ROB SERNIABAT COLLEGE'),
(1482, 'ABUL HOSSAIN KHAN COLLEGE'),
(1483, 'ADARSHA HIGH SCHOOL AND COLLEGE'),
(1484, 'Apex Homoeopathic Medical College'),
(1485, 'ARIF MAHMUD COLLEGE'),
(1486, 'BADALPARA HIGH SCHOOL AND COLLEGE'),
(1487, 'BAGDHA SECONDARY SCHOOL & COLLEGE'),
(1488, 'BAHADURPUR NISHIKANTA GAIN GIRL''S SCHOOL & COLLEGE'),
(1489, 'BAKER GANJ MOHILA COLLEGE'),
(1490, 'BARISAL CADET COLLEGE'),
(1491, 'Barisal City College'),
(1492, 'BARISAL MODEL SCHOOL AND COLLEGE'),
(1493, 'Barthi Mahabidyalaya'),
(1494, 'Begume Tofazzal Hossain Manik Mohila College'),
(1495, 'BHASANCHAR BIDDANANDAPUR COLLEGE'),
(1496, 'BISHARKANDI SHER E BANGLA DEGREE COLLEGE'),
(1497, 'CHANDPASHA HIGH SCHOOL AND COLLEGE'),
(1498, 'Char Kalekhan Adarsha College'),
(1499, 'GOURNADI GIRLS SCHOOL AND COLLEGE'),
(1500, 'Govt. Barisal College'),
(1501, 'HAZI SYED BADRUL HOSSAIN COLLEGE'),
(1502, 'JALLA UNION IDEAL COLLEGE'),
(1503, 'JUGIR KANDA MOHILA MAHABIDYALAY'),
(1504, 'KABAI UNION ISLAMIA COLLEGE'),
(1505, 'KADERPUR SONAR BANGLA HIGH SCHOOL'),
(1506, 'KARNOKATHI G.R. HIGH SCHOOL & COLLEGE'),
(1507, 'KASHIPUR HIGH SCHOOL & COLLEGE'),
(1508, 'MADDHABPASHA CHANDRADIP HIGH SCHOOL AND COLLEGE'),
(1509, 'MAHANAGAR COLLEGE'),
(1510, 'Mahilara Degree College'),
(1511, 'MASJID BARI HIGH SCHOOL AND COLLEGE'),
(1512, 'Muladi College'),
(1513, 'NIZAMUDDIN DEGREE COLLEGE'),
(1514, 'PURBO HOSNABAD MAHABIDDALYA'),
(1515, 'RUPATALI JAGUA COLLEGE'),
(1516, 'SATLA IDEAK COLLEGE'),
(1517, 'SAYED KATI UNION ISLAMIA COLLEGE'),
(1518, 'TALUKDER HAT SCHOOL & COLLEGE'),
(1519, 'UJIRPUR MOHILA COLLEGE'),
(1520, 'Ulania Muzzaffar Khan College'),
(1521, 'Uzirpur Alhaz B N Khan College'),
(1522, 'Hemayet Uddin College'),
(1523, 'JOYKALASH TICHNICAL AND B.M. COLLEGE. (GENERAL)'),
(1524, 'MONISWITA MOHILA COLLEGE'),
(1525, 'PASCHIM CHHITKI SECOUNDERY SCHOOL & COLLEGE'),
(1526, 'Rajapur Degree College'),
(1527, 'SHAH MAHMUDIA COLLEGE'),
(1528, 'SHIRJUG AZIMUNNESSA GIRLS SCHOOL & COLLEGE'),
(1529, 'SYEDA JAMILA KHATUN GIRLS HIGH SCHOOL & COLLEGE'),
(1530, 'Tofazzol Hossain Manik Mia College'),
(1531, 'Government Hazi Mohammad Mohshin College'),
(1532, 'Chittagong College'),
(1533, 'Ispahani Public School & College'),
(1534, 'Halishahar Cantonment Public School & College'),
(1535, 'Nou Bahini School & College'),
(1536, 'Ashekane Aulia College'),
(1537, 'Hazera-Taju Degree College'),
(1538, 'Government College of Commerce, Chittagong'),
(1539, 'Agrabad Mohila College'),
(1540, 'Chittagong Model School & College'),
(1541, 'Government City College, Chittagong'),
(1542, 'Patharghata Girls College'),
(1543, 'Omargani MES College'),
(1544, 'Chittagong Govt. Girls College'),
(1545, 'Barrister Sultan Ahmad Chowdhury College'),
(1546, 'Bangladesh Women''s Association School & College'),
(1547, 'Islamia Degree College'),
(1548, 'J.M. Sen College'),
(1549, 'Dr. Fazlul Hazera College'),
(1550, 'Chittagong Engineering University School and College'),
(1551, 'Chittagong Public School & College'),
(1552, 'B.A.F Shaheen College'),
(1553, 'Sitakund Degree College'),
(1554, 'Latifa Siddiqi Degree College'),
(1555, 'Faujdarhat Cadet College'),
(1556, 'Pahartali College'),
(1557, 'Hathazari Degree College'),
(1558, 'Katirhat Girl''s College'),
(1559, 'Fatikchari Degree College'),
(1560, 'Bhujpur National School & College'),
(1561, 'Isapur B.M.C College'),
(1562, 'Narayanhat Adarsha College'),
(1563, 'Nanupur Laila Kabir College'),
(1564, 'Gultaz Memorial School & College'),
(1565, 'Heako Banani College'),
(1566, 'Nazirhat College'),
(1567, 'Kuaish Burischar Sheikh Mohammad City Corporation College'),
(1568, 'Fateyabad College'),
(1569, 'Mirasarai College'),
(1570, 'Nizampur College'),
(1571, 'Baraiahat College'),
(1572, 'Chittagong University College'),
(1573, 'Rangunia College'),
(1574, 'South Rangunia Padua College'),
(1575, 'Rajanagar Ranirhat College'),
(1576, 'North Rangunia College'),
(1577, 'M. Shah Alam Chowdhury College'),
(1578, 'Sir Ashotosh Govt. College'),
(1579, 'Boalkhali Shirajul Islam Degree College'),
(1580, 'Kadurkhil Jalil Ambia College'),
(1581, 'Satkania Govt. College'),
(1582, 'Al Helal Adarsa College'),
(1583, 'North Satkania Jafar Ahmad Chowdhury College'),
(1584, 'Alaol Degree College'),
(1585, 'Banshkhali Degree College'),
(1586, 'Anowara College'),
(1587, 'Paschim Patia A.J. Chowdhury College'),
(1588, 'Shah Mohsen Aulia College'),
(1589, 'Gachbaria Govt. College'),
(1590, 'Satbaria Oli Ahmed Bir Bikram College'),
(1591, 'Barama College'),
(1592, 'Bara Aulia Degree College'),
(1593, 'Chunti Girls College'),
(1594, 'Patiya Govt. College'),
(1595, 'Hulain Saleh Nur Degree College'),
(1596, 'Muzaffarabad Jasoda Nagendra Nandi Residential Girl''s College'),
(1597, 'Govt Hazi A.B. College'),
(1598, 'Mustafizur Rahman College'),
(1599, 'Raozan University College'),
(1600, 'Noapara University College'),
(1601, 'Kundeswari Girl''s College'),
(1602, 'Gohira Degree College'),
(1603, 'Agrasar Girls College'),
(1604, 'Imam Gazzali University College'),
(1605, 'Cox''s Bazar Govt. College'),
(1606, 'Cox''s Bazar Govt. Girl''s College'),
(1607, 'Chakoria College'),
(1608, 'Maheshkhali College'),
(1609, 'Kutubdia College'),
(1610, 'Ramu College'),
(1611, 'Eidgah Farid Ahmad College'),
(1612, 'Ukhia College'),
(1613, 'South Asian College,Chittagong'),
(1614, 'Karnafuli College'),
(1615, 'Kachalong College'),
(1616, 'AGRICULTURAL UNIVERSITY COLLEGE'),
(1617, 'AKHTAR SULTANA MOHILA COLLEGE'),
(1618, 'AULIANAGAR COLLEGE'),
(1619, 'B.K.B COLLEGE'),
(1620, 'BAKSHIMUL COLLEGE'),
(1621, 'BEGUM FAJILATUNNESA MUJIB MOHILA COLLEGE'),
(1622, 'BIRUNIA SADAR ALI SARKER MEMORIAL MOHILA COLLEGE'),
(1623, 'CANTONMENT PURLIC SCHOOL & COLLEGE'),
(1624, 'Chandpur College, Mymensingh'),
(1625, 'DHALIA BAHULI UCHCHA MADHYAMIC BIDDAYLOY'),
(1626, 'GAFARGAON MOHILA COLLEGE'),
(1627, 'GOVT. ANANDA MOHAN COLLEGE'),
(1628, 'HAJI CHERAG ALI COLLEGE'),
(1629, 'HOSSAINPUR COLLEGE'),
(1630, 'IDEAL INTERNATIONAL SCHOOL AND COLLEGE'),
(1631, 'ISHWARGANJ GIRLS SXHOOL & COLLEGE'),
(1632, 'JANATA MAHABIDYALAY'),
(1633, 'KALSINDUR UCHCHA MADHYAMIK BIDYALAYA'),
(1634, 'KAORAID GOYESHPUR COLLEGE'),
(1635, 'KHURRAM KHAN CHOWDHURY COLLEGE'),
(1636, 'MAHAKALI GIRLS SCHOOL AND COLLEGE'),
(1637, 'MOMENSHAHI ISLAMI ACADEMY AND COLLEGE'),
(1638, 'MUKTAGACHA COLLEGE'),
(1639, 'MULIM GIRLS HIGH SCHOOL AND COLLEGE'),
(1640, 'MUSHULI UCHCHA BIDYALAYA & COLLEGE'),
(1641, 'Mymensing Homoeopathic Medical College'),
(1642, 'MYMENSINGH COMMERCE COLLEGE'),
(1643, 'MYMENSINGH GIRLS CADET COLLEGE'),
(1644, 'Mymensingh Nursing College'),
(1645, 'ROYAL MIDIA COLLEGE'),
(1646, 'SAYER SAFAYEY MASHYMIK BIDDYANIKATION'),
(1647, 'SHAHABUDDIN COLLEGE'),
(1648, 'SHAHGONJ HIGH SCHOOL AND COLLEGE'),
(1649, 'SHAHID SYED NAZRUL ISLAM COLLEGE'),
(1650, 'UCHAKHILA HIGHER SECONDARY SCHOOL'),
(1651, 'UTHURA HIGH SCHOOL & COLLEGE'),
(1652, 'AJMIRIGANJ COLLEGE'),
(1653, 'AUSHKANDI RASHIDA PUBLIC SCHOOL & COLLEGE'),
(1654, 'BAHUBAL COLLEGE'),
(1655, 'GAZIPUR HIGH SCHOOL ANDR COLLEGE'),
(1656, 'KABIR COLLEGIATE ACADEMY'),
(1657, 'MUKTIJODDHA ZIA COLLEGE'),
(1658, 'RAGIB RABEYA HIGH SCHOOL & COLLEGE'),
(1659, 'SHAH JALAL COLLEGE'),
(1660, 'Sufia Matin Mohila College'),
(1661, ''),
(1662, 'ABDUL GAFUR CHOWDHURY MAHILA COLLEGE'),
(1663, 'BARAMCHAL HIGH SCHOOL AND COLLEGE'),
(1664, 'BHATERA HIGH SCHOOL ADN COLLEGE'),
(1665, 'BHUKBHMAIL SECHODARY SCHOOL AND COLLEGE'),
(1666, 'CHHAKAPON HIGH SCHOOL AND COLLEGE'),
(1667, 'JAGATSHI GOPAL KRISHNA M. SAIFUR RAHMAN SCHOOL & COLLEGE'),
(1668, 'M. MUNTAZIM ALI COLLEGE'),
(1669, 'Moulana Mufazzal Hossain Mohila College'),
(1670, 'SHAHBAZPUR HIGH SCHOOL & COLLEGE'),
(1671, 'THE BUDS RESIDENTIAL MODEL SCHOOL AND COLLEGE'),
(1672, 'YOUSUF GONI ADARSHA COLLEGE'),
(1673, ''),
(1674, 'BADAGHAT COLLEGE'),
(1675, 'BARKHAL M.L. SCHOOL AND COLLEGE'),
(1676, 'BIBIANA MODEL COLAGE'),
(1677, 'DUARA BAZAR COLLEGE'),
(1678, 'ISLAMGANJ COLLEGE'),
(1679, 'JAWA BAZAR COLLEGE'),
(1680, 'MADHYANAGAR B.P. SCHOOL AND COLLEGE'),
(1681, 'SAMUJ ALI HIGH SCHOOL AND COLLEGE'),
(1682, 'SUNAMGONG GOVT. MOHILA COLLEGE'),
(1683, 'SYEDPUR ADARSHA COLLEGE'),
(1684, ''),
(1685, 'AL-EMDAD SCHOOL & COLLEGE'),
(1686, 'AMBERKHAN GIRLS HIGH SCHOOL AND COLLEGE'),
(1687, 'ANANDA NIKETON SCHOOL AND COLLEGE'),
(1688, 'BAROHAL COLLEGE'),
(1689, 'BLUE BIRD HIGH SCHOOL AND COLLEGE'),
(1690, 'BRITISH BANGLADESH INTERNATERNL SCHOOL S COLLEGE'),
(1691, 'DAYAMIR COLLEGE'),
(1692, 'DHAKA DAKASHIN GIRLS SCHOOL & COLLEGE'),
(1693, 'DHAKA DAKSHIN MULTILATERAL HIGH SCHOOL & COLLEGE'),
(1694, 'Govt. Tibbiya College'),
(1695, 'IMRAN AHMED WOMEN?S COLLEGE'),
(1696, 'ISRAB ALI HIGH SCHOOL AND COLLEGE'),
(1697, 'JALAL PUR COLLEGE'),
(1698, 'Jalalabad Homoeopathic Medical College'),
(1699, 'KURAR BAZAR COLLEGE'),
(1700, 'M.C. ACADEMY (SCHOOL & COLLEGE)'),
(1701, 'Madan Mohon College'),
(1702, 'MALIK NAHER MEMODIEL ACADEMY'),
(1703, 'MANIK KONA HIGH SCHOOL & COLLEGE'),
(1704, 'MOHAMMAD MOKON HIGH SCHOOL &COLLEGE'),
(1705, 'SALUTIKOR COLLLEGE'),
(1706, 'SCHOLARS HOME SCHOOL & COLLEGE'),
(1707, 'SHAHJALAL JIMIA ISLAMIA SCHOOL &COLLEGE'),
(1708, 'SYLHET CADET COLLEGE'),
(1709, 'Sylhet Commerce College'),
(1710, 'SYLHET INTERNATIONAL SCHOOL AND COLLEGE'),
(1711, 'SYLHET MODEL SCHOOL &COLLEGE'),
(1712, 'Sylhet Nursing College'),
(1713, 'UTTAR BISHWANATH COLLGE'),
(1714, 'WEST POINT SCHOOL & COLLEGE'),
(1715, 'ZAKIGONJ GOVT. COLLEGE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_college`
--

CREATE TABLE `tbl_college` (
  `colid` int(11) NOT NULL,
  `colname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_controlling`
--

CREATE TABLE `tbl_controlling` (
  `conId` int(11) NOT NULL,
  `conName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_controlling`
--

INSERT INTO `tbl_controlling` (`conId`, `conName`) VALUES
(1, 'Dhaka'),
(2, 'Rajshahi'),
(3, 'Chittagong'),
(4, 'Khulna'),
(5, 'Barisal'),
(6, 'Comilla'),
(7, 'Jessore'),
(8, 'Sylhet'),
(9, 'Dinajpur'),
(10, 'Madrasah Board'),
(11, 'Technical Board');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_criteria`
--

CREATE TABLE `tbl_criteria` (
  `id` int(11) NOT NULL,
  `criteriaName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_criteria`
--

INSERT INTO `tbl_criteria` (`id`, `criteriaName`) VALUES
(1, 'attire'),
(2, 'Language proficiency'),
(3, 'attitude'),
(4, 'Educational qualification'),
(5, 'Technical Skills'),
(6, 'Body language'),
(7, 'communication skills'),
(8, 'Computer literacy'),
(9, 'Self-presentation'),
(10, 'Interpersonal ability'),
(11, 'Sense of humor'),
(12, 'Knowledge for the Particular Post'),
(13, 'Knowledge for the Job');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cv`
--

CREATE TABLE `tbl_cv` (
  `cvId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `nId` int(11) NOT NULL,
  `maritalStatus` varchar(255) NOT NULL,
  `division` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `thana` varchar(255) NOT NULL,
  `post` varchar(255) NOT NULL,
  `postCode` int(11) NOT NULL,
  `degreeName` varchar(255) NOT NULL,
  `gpa` float NOT NULL,
  `cgpa` float NOT NULL,
  `school` varchar(255) NOT NULL,
  `college` varchar(255) NOT NULL,
  `university` varchar(255) NOT NULL,
  `controllingAuthority` varchar(255) NOT NULL,
  `passingYear` int(11) NOT NULL,
  `companyName` varchar(255) NOT NULL,
  `cPost` varchar(255) NOT NULL,
  `workingPeriod` varchar(255) NOT NULL,
  `trainingName` varchar(255) NOT NULL,
  `trainingDes` text NOT NULL,
  `skillName` varchar(255) NOT NULL,
  `skillDes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cv`
--

INSERT INTO `tbl_cv` (`cvId`, `name`, `dob`, `email`, `phone`, `nId`, `maritalStatus`, `division`, `district`, `thana`, `post`, `postCode`, `degreeName`, `gpa`, `cgpa`, `school`, `college`, `university`, `controllingAuthority`, `passingYear`, `companyName`, `cPost`, `workingPeriod`, `trainingName`, `trainingDes`, `skillName`, `skillDes`) VALUES
(1, 'Protyasha', '1994-11-30', 'protyasha.s@keal.com.bd', '01721313350', 123, 'single', 'Dhaka', 'Dhaka', 'Tejgaon', 'tejgaon TSO', 1215, 'BSc', 5, 3.66, 'Faridpur Govt Girls High school', 'sarda sundari Mohila college, Faridpur', 'Daffodil International University', 'Dhaka', 2017, 'ABC', 'intern', '3 month', 'Web Development', 'I have complete web development under LICT', 'Computer', 'Ms word,Powerpoint, Excel'),
(2, 'Arnab', '1995-02-01', 'arnab.r@keal.com.bd', '01745912429', 456, 'Single', 'Dhaka', 'Dhaka', 'Tejgaon', 'Tejgaon TSO', 1215, 'Bsc', 4.8, 3.5, 'xyz', 'hjk', 'Daffodil International University', 'Dhaka', 2017, 'ABC', 'intern', '3 month', 'Web', 'From IBCS-PRIMAX.', 'Computer', 'Ms word,Powerpoint, Excel');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_date`
--

CREATE TABLE `tbl_date` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_date`
--

INSERT INTO `tbl_date` (`id`, `date`) VALUES
(18, '2017-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_degree`
--

CREATE TABLE `tbl_degree` (
  `degId` int(11) NOT NULL,
  `degName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_degree`
--

INSERT INTO `tbl_degree` (`degId`, `degName`) VALUES
(1, 'Diploma in EEE'),
(2, 'Diploma'),
(4, 'BSc in EEE'),
(5, 'BSc in CSE'),
(6, 'BSc(Civil)'),
(7, 'MBA'),
(8, 'MBA(Finance)'),
(9, 'BSc Eng(Mech)'),
(10, 'BSc Eng(EETE)'),
(11, 'Post Graduation'),
(12, 'EMBA'),
(13, 'Masters'),
(14, 'LLB'),
(15, 'B Pharm'),
(16, 'M Pharm'),
(17, 'LLB(HONS.)'),
(18, 'Bachelor Degree in EEE, IPE ETE or ME'),
(19, 'Diploma in CSE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_degree_grad`
--

CREATE TABLE `tbl_degree_grad` (
  `deid` int(11) NOT NULL,
  `degName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_degree_grad`
--

INSERT INTO `tbl_degree_grad` (`deid`, `degName`) VALUES
(1, 'BSc'),
(2, 'BBA'),
(3, 'MBBS'),
(4, 'B.Pharm'),
(5, 'BSS'),
(6, 'BA'),
(7, 'MSS'),
(8, 'M.Pharm'),
(9, 'LLB'),
(10, 'LLM'),
(11, 'MSc'),
(12, 'MBA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `dId` int(11) NOT NULL,
  `deptName` varchar(70) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`dId`, `deptName`, `description`) VALUES
(1, 'Industrial Automation', ''),
(2, 'IT', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_diploma`
--

CREATE TABLE `tbl_diploma` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `degId` int(11) NOT NULL,
  `dId` int(11) NOT NULL,
  `cgpa` float(10,2) NOT NULL,
  `pyearid` int(11) NOT NULL,
  `divId` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_diploma`
--

INSERT INTO `tbl_diploma` (`id`, `userId`, `name`, `degId`, `dId`, `cgpa`, `pyearid`, `divId`, `status`) VALUES
(2, 474, 'Islami Bank Institute of Technology', 1, 0, 3.00, 0, 15, 0),
(3, 474, 'Islami Bank Institute of Technology', 1, 1, 3.27, 9, 15, 0),
(4, 489, 'munshiganj polytechnic Institute', 2, 1, 3.20, 1, 15, 0),
(5, 505, 'Khulna Polytechnic Institute', 1, 0, 2.82, 8, 15, 0),
(6, 531, 'Feni Computer Institute', 2, 2, 3.40, 7, 15, 0),
(8, 546, 'Feni Computer Institute', 19, 0, 4.25, 7, 15, 0),
(9, 559, 'Rangpur Polytechnic Institute', 19, 0, 3.60, 10, 0, 0),
(10, 538, 'Joypurhat Govt. Degree College', 3, 0, 4.00, 17, 14, 1),
(11, 556, 'Sarda Sundari Mohila College', 3, 0, 3.88, 17, 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_diploma_disipline`
--

CREATE TABLE `tbl_diploma_disipline` (
  `id` int(11) NOT NULL,
  `disipline` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_diploma_disipline`
--

INSERT INTO `tbl_diploma_disipline` (`id`, `disipline`) VALUES
(1, 'Tourism and Hospitality'),
(2, 'Design Studies'),
(3, 'Food and Beverage Studies');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_disappertime`
--

CREATE TABLE `tbl_disappertime` (
  `id` int(11) NOT NULL,
  `jId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dtime` time NOT NULL,
  `ddate` date NOT NULL,
  `reason` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `attend` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_disappertime`
--

INSERT INTO `tbl_disappertime` (`id`, `jId`, `userId`, `dtime`, `ddate`, `reason`, `status`, `attend`) VALUES
(1, 8, 505, '11:00:00', '2017-11-06', 'Now I am outside of Dhaka, so please take my interview 06/11/2017', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `distId` int(11) NOT NULL,
  `distName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`distId`, `distName`) VALUES
(1, '	DHAKA'),
(2, '	GAZIPUR'),
(3, '	NARAYANGONJ'),
(4, '	NARSINGDI'),
(5, '	KISHOREGANJ'),
(6, '	TANGAIL'),
(7, '	FARIDPUR'),
(8, '	RAJBARI'),
(9, '	MUNSHIGANJ'),
(10, '	GOPALGANJ'),
(11, '	MADARIPUR'),
(12, '	MANIKGANJ'),
(13, '	SHARIATPUR'),
(14, '	RAJSHAHI'),
(15, '	SIRAJGANJ'),
(16, '	BOGRA'),
(17, '	PABNA'),
(18, '	CHAPAINAWABGANJ'),
(19, '	NATORE'),
(20, '	JOYPURHAT'),
(21, '	NAOGAON'),
(22, '	CHITTAGONG'),
(23, '	COX''S BAZAR'),
(24, '	KHAGRACHHARI'),
(25, '	RANGAMATI'),
(26, '	BANDARBAN'),
(27, '	COMILLA'),
(28, '	NOAKHALI'),
(29, '	LAKSHMIPUR'),
(30, '	CHANDPUR'),
(31, '	FENI'),
(32, '	BRAHMANBARIA'),
(33, '	SYLHET'),
(34, '	SUNAMGANJ'),
(35, '	MOULVIBAZAR'),
(36, '	HABIGANJ'),
(37, '	BARISAL'),
(38, '	BHOLA'),
(39, '	PATUAKHALI'),
(40, '	PIROJPUR'),
(41, '	JHALOKATI'),
(42, '	BARGUNA'),
(43, '	RANGPUR'),
(44, '	DINAJPUR'),
(45, '	GAIBANDHA'),
(46, '	KURIGRAM'),
(47, '	LALMONIRHAT'),
(48, '	NILPHAMARI'),
(49, '	PANCHAGARH'),
(50, '	THAKURGAON'),
(51, '	KHULNA'),
(52, '	BAGERHAT'),
(53, '	CHUADANGA'),
(54, '	JESSORE'),
(55, '	JHENAIDAH'),
(56, '	KUSHTIA'),
(57, '	MAGURA'),
(58, '	MEHERPUR'),
(59, '	NARAIL'),
(60, '	SATKHIRA'),
(61, '	MYMENSINGH'),
(62, '	SHERPUR'),
(63, '	JAMALPUR'),
(64, '	NETROKONA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_division`
--

CREATE TABLE `tbl_division` (
  `divId` int(11) NOT NULL,
  `divName` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_division`
--

INSERT INTO `tbl_division` (`divId`, `divName`) VALUES
(6, 'Barishal'),
(7, 'Khulna'),
(9, 'Rajshahi'),
(10, 'Rangpur'),
(13, 'Shylet'),
(14, 'Chittagang'),
(15, 'Dhaka'),
(16, 'Mymensingh');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_education`
--

CREATE TABLE `tbl_education` (
  `eId` int(11) NOT NULL,
  `eduLevel` varchar(255) NOT NULL,
  `lenYears` int(11) NOT NULL,
  `lenMonths` int(11) NOT NULL,
  `lenDays` int(11) NOT NULL,
  `lenCHours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_education`
--

INSERT INTO `tbl_education` (`eId`, `eduLevel`, `lenYears`, `lenMonths`, `lenDays`, `lenCHours`) VALUES
(1, 'Primary Schooling\r\n', 5, 0, 0, 0),
(2, 'Junior Schooling\r\n', 3, 0, 0, 0),
(3, 'Secondary Schooling\r\n', 10, 0, 0, 0),
(4, 'College\r\n', 2, 0, 0, 0),
(5, 'Graduation\r\n', 4, 0, 0, 0),
(6, 'Post Graduation\r\n', 2, 0, 0, 0),
(7, 'Professional Training\r\n', 0, 6, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_egrade`
--

CREATE TABLE `tbl_egrade` (
  `id` int(11) NOT NULL,
  `si` int(10) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `basicAmount` varchar(255) DEFAULT NULL,
  `houseRent` varchar(255) DEFAULT NULL,
  `houseRentAmount` int(10) DEFAULT NULL,
  `medical` int(10) DEFAULT NULL,
  `transportAllowance` varchar(255) DEFAULT NULL,
  `othersAllowance` varchar(255) DEFAULT NULL,
  `cellPhoneCredit` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `hypotheticalTax` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_egrade`
--

INSERT INTO `tbl_egrade` (`id`, `si`, `grade`, `designation`, `type`, `basicAmount`, `houseRent`, `houseRentAmount`, `medical`, `transportAllowance`, `othersAllowance`, `cellPhoneCredit`, `total`, `hypotheticalTax`) VALUES
(1, 160, 'Managing Director', 'FTE ', '234,100.00', '50%', '117,050.00', 1000, 1000, '353,150.00', '', '', '', ''),
(2, 159, 'CEO', 'FTE ', '214,100.00', '50%', '107,050.00', 1000, 1000, '323,150.00', '', '', '', ''),
(3, 158, 'Deputy Managing Director', 'FTE ', '194,100.00', '50%', '97,050.00', 1000, 1000, '293,150.00', '', '', '', ''),
(4, 157, 'Deputy Managing Director', 'FTE ', '184,100.00', '50%', '92,050.00', 1000, 1000, '278,150.00', '', '', '', ''),
(5, 156, 'Deputy Managing Director', 'FTE ', '174,100.00', '50%', '87,050.00', 1000, 1000, '263,150.00', '', '', '', ''),
(6, 155, 'Deputy Managing Director', 'FTE ', '164,100.00', '50%', '82,050.00', 1000, 1000, '248,150.00', '', '', '', ''),
(7, 154, 'Deputy Managing Director', 'FTE ', '154,100.00', '50%', '77,050.00', 1000, 1000, '233,150.00', '', '', '', ''),
(8, 153, 'Deputy Managing Director', 'FTE ', '144,100.00', '50%', '72,050.00', 1000, 1000, '218,150.00', '', '', '', ''),
(9, 152, 'Deputy Managing Director', 'FTE ', '134,100.00', '50%', '67,050.00', 1000, 1000, '203,150.00', '', '', '', ''),
(10, 151, 'Executive Director', 'FTE ', '124,100.00', '50%', '62,050.00', 1000, 1000, '188,150.00', '', '', '', ''),
(11, 150, 'Executive Director', 'FTE ', '119,100.00', '50%', '59,550.00', 1000, 1000, '180,650.00', '', '', '', ''),
(12, 149, 'Executive Director', 'FTE ', '114,100.00', '50%', '57,050.00', 1000, 1000, '173,150.00', '', '', '', ''),
(13, 148, 'Executive Director', 'FTE ', '109,100.00', '50%', '54,550.00', 1000, 1000, '165,650.00', '', '', '', ''),
(14, 147, 'Executive Director', 'FTE ', '104,100.00', '50%', '52,050.00', 1000, 1000, '158,150.00', '', '', '', ''),
(15, 146, 'Executive Director', 'FTE ', '99,100.00', '50%', '49,550.00', 1000, 1000, '150,650.00', '', '', '', ''),
(16, 145, 'Sr. General Manager', 'FTE ', '94,100.00', '50%', '47,050.00', 1000, 1000, '143,150.00', '', '', '', ''),
(17, 144, 'Sr. General Manager', 'FTE ', '91,100.00', '50%', '45,550.00', 1000, 1000, '138,650.00', '', '', '', ''),
(18, 143, 'Sr. General Manager', 'FTE ', '88,100.00', '50%', '44,050.00', 1000, 1000, '134,150.00', '', '', '', ''),
(19, 142, 'Sr. General Manager', 'FTE ', '85,100.00', '50%', '42,550.00', 1000, 1000, '129,650.00', '', '', '', ''),
(20, 141, 'Sr. General Manager', 'FTE ', '82,100.00', '50%', '41,050.00', 1000, 1000, '125,150.00', '', '', '', ''),
(21, 140, 'General Manager', 'FTE ', '79,100.00', '50%', '39,550.00', 1000, 1000, '120,650.00', '', '', '', ''),
(22, 139, 'General Manager', 'FTE ', '76,600.00', '50%', '38,300.00', 1000, 1000, '116,900.00', '', '', '', ''),
(23, 138, 'General Manager', 'FTE ', '74,100.00', '50%', '37,050.00', 1000, 1000, '113,150.00', '', '', '', ''),
(24, 137, 'General Manager', 'FTE ', '71,600.00', '50%', '35,800.00', 1000, 1000, '109,400.00', '', '', '', ''),
(25, 136, 'General Manager', 'FTE ', '69,100.00', '50%', '34,550.00', 1000, 1000, '105,650.00', '', '', '', ''),
(26, 135, 'General Manager', 'FTE ', '66,600.00', '50%', '33,300.00', 1000, 1000, '101,900.00', '', '', '', ''),
(27, 134, 'General Manager', 'FTE ', '64,100.00', '50%', '32,050.00', 1000, 1000, '98,150.00', '', '', '', ''),
(28, 133, 'General Manager', 'FTE ', '61,600.00', '50%', '30,800.00', 1000, 1000, '94,400.00', '', '', '', ''),
(29, 132, 'General Manager', 'FTE ', '59,100.00', '50%', '29,550.00', 1000, 1000, '90,650.00', '', '', '', ''),
(30, 131, 'General Manager', 'FTE ', '56,600.00', '50%', '28,300.00', 1000, 1000, '86,900.00', '', '', '', ''),
(31, 130, 'Deputy General Manager', 'FTE ', '54,100.00', '50%', '27,050.00', 1000, 1000, '83,150.00', '', '', '', ''),
(32, 129, 'Deputy General Manager', 'FTE ', '52,100.00', '50%', '26,050.00', 1000, 1000, '80,150.00', '', '', '', ''),
(33, 128, 'Deputy General Manager', 'FTE ', '50,100.00', '50%', '25,050.00', 1000, 1000, '77,150.00', '', '', '', ''),
(34, 127, 'Asst. General Manager', 'FTE ', '48,100.00', '50%', '24,050.00', 1000, 1000, '74,150.00', '', '', '', ''),
(35, 126, 'Asst. General Manager', 'FTE ', '46,600.00', '50%', '23,300.00', 1000, 1000, '71,900.00', '', '', '', ''),
(36, 125, 'Asst. General Manager', 'FTE ', '45,100.00', '50%', '22,550.00', 1000, 1000, '69,650.00', '', '', '', ''),
(37, 124, 'Asst. General Manager', 'FTE ', '43,600.00', '50%', '21,800.00', 1000, 1000, '67,400.00', '', '', '', ''),
(38, 123, 'Asst. General Manager', 'FTE ', '42,100.00', '50%', '21,050.00', 1000, 1000, '65,150.00', '', '', '', ''),
(39, 122, 'Asst. General Manager', 'FTE ', '40,600.00', '50%', '20,300.00', 1000, 1000, '62,900.00', '', '', '', ''),
(40, 121, 'Asst. General Manager', 'FTE ', '39,100.00', '50%', '19,550.00', 1000, 1000, '60,650.00', '', '', '', ''),
(41, 120, 'Sr. Manager', 'FTE ', '37,600.00', '50%', '18,800.00', 1000, 1000, '58,400.00', '', '', '', ''),
(42, 119, 'Sr. Manager', 'FTE ', '36,600.00', '50%', '18,300.00', 1000, 1000, '56,900.00', '', '', '', ''),
(43, 118, 'Sr. Manager', 'FTE ', '35,600.00', '50%', '17,800.00', 1000, 1000, '55,400.00', '', '', '', ''),
(44, 117, 'Sr. Manager', 'FTE ', '34,600.00', '50%', '17,300.00', 1000, 1000, '53,900.00', '', '', '', ''),
(45, 116, 'Sr. Manager', 'FTE ', '33,600.00', '50%', '16,800.00', 1000, 1000, '52,400.00', '', '', '', ''),
(46, 115, 'Sr. Manager', 'FTE ', '32,600.00', '50%', '16,300.00', 1000, 1000, '50,900.00', '', '', '', ''),
(47, 114, 'Sr. Manager', 'FTE ', '31,600.00', '50%', '15,800.00', 1000, 1000, '49,400.00', '', '', '', ''),
(48, 113, 'Sr. Manager', 'FTE ', '30,600.00', '50%', '15,300.00', 1000, 1000, '47,900.00', '', '', '', ''),
(49, 112, 'Manager', 'FTE ', '29,600.00', '50%', '14,800.00', 1000, 1000, '46,400.00', '', '', '', ''),
(50, 111, 'Manager', 'FTE ', '28,600.00', '50%', '14,300.00', 1000, 1000, '44,900.00', '', '', '', ''),
(51, 110, 'Manager', 'FTE ', '27,600.00', '50%', '13,800.00', 1000, 1000, '43,400.00', '', '', '', ''),
(52, 109, 'Manager', 'FTE ', '26,600.00', '50%', '13,300.00', 1000, 1000, '41,900.00', '', '', '', ''),
(53, 108, 'Manager', 'FTE ', '25,600.00', '50%', '12,800.00', 1000, 1000, '40,400.00', '', '', '', ''),
(54, 107, 'Manager', 'FTE ', '24,600.00', '50%', '12,300.00', 1000, 1000, '38,900.00', '', '', '', ''),
(55, 106, 'Manager', 'FTE ', '23,600.00', '50%', '11,800.00', 1000, 1000, '37,400.00', '', '', '', ''),
(56, 105, 'Deputy Manager', 'FTE ', '22,600.00', '50%', '11,300.00', 1000, 1000, '35,900.00', '', '', '', ''),
(57, 104, 'Deputy Manager', 'FTE ', '21,600.00', '50%', '10,800.00', 1000, 1000, '34,400.00', '', '', '', ''),
(58, 103, 'Asst Manager', 'FTE ', '20,600.00', '50%', '10,300.00', 1000, 1000, '32,900.00', '', '', '', ''),
(59, 102, 'Asst Manager', 'FTE ', '19,800.00', '50%', '9,900.00', 1000, 1000, '31,700.00', '', '', '', ''),
(60, 101, 'Asst Manager', 'FTE ', '19,000.00', '50%', '9,500.00', 1000, 1000, '30,500.00', '', '', '', ''),
(61, 100, 'Asst Manager', 'FTE ', '18,200.00', '50%', '9,100.00', 1000, 1000, '29,300.00', '', '', '', ''),
(62, 99, 'Sr. Officer', 'FTE ', '17,400.00', '50%', '8,700.00', 1000, 1000, '28,100.00', '', '', '', ''),
(63, 98, 'Sr. Officer', 'FTE ', '16,600.00', '50%', '8,300.00', 1000, 1000, '26,900.00', '', '', '', ''),
(64, 97, 'Sr. Officer', 'FTE ', '15,800.00', '50%', '7,900.00', 1000, 1000, '25,700.00', '', '', '', ''),
(65, 96, 'Sr. Officer', 'FTE ', '15,000.00', '50%', '7,500.00', 1000, 1000, '24,500.00', '', '', '', ''),
(66, 95, 'Sr. Officer', 'FTE ', '14,200.00', '50%', '7,100.00', 1000, 1000, '23,300.00', '', '', '', ''),
(67, 94, 'Sr. Officer', 'FTE ', '13,400.00', '50%', '6,700.00', 1000, 1000, '22,100.00', '', '', '', ''),
(68, 93, 'Sr. Officer', 'FTE ', '12,600.00', '50%', '6,300.00', 1000, 1000, '20,900.00', '', '', '', ''),
(69, 92, 'Sr. Officer', 'FTE ', '11,800.00', '50%', '5,900.00', 1000, 1000, '19,700.00', '', '', '', ''),
(70, 91, ' Officer', 'FTE ', '11,000.00', '50%', '5,500.00', 1000, 1000, '18,500.00', '', '', '', ''),
(71, 90, 'Officer', 'FTE ', '10,500.00', '50%', '5,250.00', 1000, 1000, '17,750.00', '', '', '', ''),
(72, 89, 'Officer', 'FTE ', '10,000.00', '50%', '5,000.00', 1000, 1000, '17,000.00', '', '', '', ''),
(73, 88, 'Officer', 'FTE ', '9,500.00', '50%', '4,750.00', 1000, 1000, '16,250.00', '', '', '', ''),
(74, 87, 'Officer', 'FTE ', '9,000.00', '50%', '4,500.00', 1000, 1000, '15,500.00', '', '', '', ''),
(75, 86, 'Officer', 'FTE ', '8,500.00', '50%', '4,250.00', 1000, 1000, '14,750.00', '', '', '', ''),
(76, 85, 'Officer', 'FTE ', '8,000.00', '50%', '4,000.00', 1000, 1000, '14,000.00', '', '', '', ''),
(77, 84, 'Officer', 'FTE ', '7,500.00', '50%', '3,750.00', 1000, 1000, '13,250.00', '', '', '', ''),
(78, 83, 'Officer', 'FTE ', '7,000.00', '50%', '3,500.00', 1000, 1000, '12,500.00', '', '', '', ''),
(79, 82, 'Officer', 'FTE ', '6,500.00', '50%', '3,250.00', 1000, 1000, '11,750.00', '', '', '', ''),
(80, 81, 'Officer', 'FTE ', '6,000.00', '50%', '3,000.00', 1000, 1000, '11,000.00', '', '', '', ''),
(81, 80, 'Jr. Officer ', 'FTE ', '5,950.00', '50%', '2,975.00', 1000, 1000, '10,925.00', '', '', '', ''),
(82, 79, 'Jr. Officer ', 'FTE ', '5,550.00', '50%', '2,775.00', 1000, 1000, '10,325.00', '', '', '', ''),
(83, 78, 'Jr. Officer ', 'FTE ', '5,150.00', '50%', '2,575.00', 1000, 1000, '9,725.00', '', '', '', ''),
(84, 77, 'Jr. Officer ', 'FTE ', '4,750.00', '50%', '2,375.00', 1000, 1000, '9,125.00', '', '', '', ''),
(85, 76, 'Jr. Officer ', 'FTE ', '4,350.00', '50%', '2,175.00', 1000, 1000, '8,525.00', '', '', '', ''),
(86, 75, 'Sub Jr. Officer ', 'FTE ', '3,950.00', '50%', '1,975.00', 1000, 1000, '7,925.00', '', '', '', ''),
(87, 74, 'Sub Jr. Officer', 'FTE ', '3,650.00', '50%', '1,825.00', 1000, 1000, '7,475.00', '', '', '', ''),
(88, 73, 'Sub Jr. Officer ', 'FTE ', '3,350.00', '50%', '1,675.00', 1000, 1000, '7,025.00', '', '', '', ''),
(89, 72, 'Sub Jr. Officer ', 'FTE ', '3,050.00', '50%', '1,525.00', 1000, 1000, '6,575.00', '', '', '', ''),
(90, 71, 'Part-time/ Contractual Consultant', 'PTE ', '29,000.00', '50%', '14,500.00', 1000, 1000, '45,500.00', '', '', '', ''),
(91, 70, 'Part-time/ Contractual Consultant', 'PTE ', '28,000.00', '50%', '14,000.00', 1000, 1000, '44,000.00', '', '', '', ''),
(92, 69, 'Part-time/ Contractual Consultant', 'PTE ', '27,000.00', '50%', '13,500.00', 1000, 1000, '42,500.00', '', '', '', ''),
(93, 68, 'Part-time/ Contractual Consultant', 'PTE ', '26,000.00', '50%', '13,000.00', 1000, 1000, '41,000.00', '', '', '', ''),
(94, 67, 'Part-time/ Contractual Consultant', 'PTE ', '25,000.00', '50%', '12,500.00', 1000, 1000, '39,500.00', '', '', '', ''),
(95, 66, 'Part-time/ Contractual Consultant', 'PTE ', '24,000.00', '50%', '12,000.00', 1000, 1000, '38,000.00', '', '', '', ''),
(96, 65, 'Part-time/ Contractual Consultant', 'PTE ', '23,000.00', '50%', '11,500.00', 1000, 1000, '36,500.00', '', '', '', ''),
(97, 64, 'Part-time/ Contractual Consultant', 'PTE ', '22,000.00', '50%', '11,000.00', 1000, 1000, '35,000.00', '', '', '', ''),
(98, 63, 'Part-time/ Contractual Consultant', 'PTE ', '21,000.00', '50%', '10,500.00', 1000, 1000, '33,500.00', '', '', '', ''),
(99, 62, 'Part-time/ Contractual Consultant', 'PTE ', '20,000.00', '50%', '10,000.00', 1000, 1000, '32,000.00', '', '', '', ''),
(100, 61, 'Part-time/ Contractual Consultant', 'PTE ', '19,000.00', '50%', '9,500.00', 1000, 1000, '30,500.00', '', '', '', ''),
(101, 60, 'Part-time/ Contractual Consultant', 'PTE ', '18,000.00', '50%', '9,000.00', 1000, 1000, '29,000.00', '', '', '', ''),
(102, 59, 'Part-time/ Contractual Consultant', 'PTE ', '17,000.00', '50%', '8,500.00', 1000, 1000, '27,500.00', '', '', '', ''),
(103, 58, 'Part-time/ Contractual Consultant', 'PTE ', '16,000.00', '50%', '8,000.00', 1000, 1000, '26,000.00', '', '', '', ''),
(104, 57, 'Part-time/ Contractual Consultant', 'PTE ', '15,000.00', '50%', '7,500.00', 1000, 1000, '24,500.00', '', '', '', ''),
(105, 56, 'Part-time/ Contractual Consultant', 'PTE ', '14,000.00', '50%', '7,000.00', 1000, 1000, '23,000.00', '', '', '', ''),
(106, 55, 'Part-time/ Contractual Consultant', 'PTE ', '13,000.00', '50%', '6,500.00', 1000, 1000, '21,500.00', '', '', '', ''),
(107, 54, 'Part-time/ Contractual Consultant', 'PTE ', '12,000.00', '50%', '6,000.00', 1000, 1000, '20,000.00', '', '', '', ''),
(108, 53, 'Part-time/ Contractual Consultant', 'PTE ', '11,000.00', '50%', '5,500.00', 1000, 1000, '18,500.00', '', '', '', ''),
(109, 52, 'Part-time/ Contractual Consultant', 'PTE ', '10,000.00', '50%', '5,000.00', 1000, 1000, '17,000.00', '', '', '', ''),
(110, 51, 'Part-time/ Contractual Consultant', 'PTE ', '9,000.00', '50%', '4,500.00', 1000, 1000, '15,500.00', '', '', '', ''),
(111, 50, 'Part-time/ Contractual Consultant', 'PTE ', '8,000.00', '50%', '4,000.00', 1000, 1000, '13,500.00', '', '', '', ''),
(112, 49, 'Part-time/ Contractual Staff', 'PTE ', '15,400.00', '50%', '7,700.00', 1000, 1000, '25,100.00', '', '', '                            ', ''),
(113, 48, 'Part-time/ Contractual Staff', 'PTE ', '14,900.00', '50%', '7,450.00', 1000, 1000, '24,350.00', '', '', '', '                     '),
(114, 47, 'Part-time/ Contractual Staff', 'PTE ', '14,400.00', '50%', '7,200.00', 1000, 1000, '23,600.00', '', '', '', ''),
(115, 46, 'Part-time/ Contractual Staff', 'PTE ', '13,900.00', '50%', '6,950.00', 1000, 1000, '22,850.00', '', '', '', ''),
(116, 45, 'Part-time/ Contractual Staff', 'PTE ', '13,400.00', '50%', '6,700.00', 1000, 1000, '22,100.00', '', '', '', ''),
(117, 44, 'Part-time/ Contractual Staff', 'PTE ', '12,900.00', '50%', '6,450.00', 1000, 1000, '21,350.00', '', '', '', ''),
(118, 43, 'Part-time/ Contractual Staff', 'PTE ', '12,400.00', '50%', '6,200.00', 1000, 1000, '20,600.00', '', '', '', ''),
(119, 42, 'Part-time/ Contractual Staff', 'PTE ', '11,900.00', '50%', '5,950.00', 1000, 1000, '19,850.00', '', '', '', ''),
(120, 41, 'Part-time/ Contractual Staff', 'PTE ', '11,400.00', '50%', '5,700.00', 1000, 1000, '19,100.00', '', '', '', ''),
(121, 40, 'Part-time/ Contractual Staff', 'PTE ', '10,900.00', '50%', '5,450.00', 1000, 1000, '18,350.00', '', '', '', ''),
(122, 39, 'Part-time/ Contractual Staff', 'PTE ', '10,400.00', '50%', '5,200.00', 1000, 1000, '17,600.00', '', '', '', ''),
(123, 38, 'Part-time/ Contractual Staff', 'PTE ', '9,900.00', '50%', '4,950.00', 1000, 1000, '16,850.00', '', '', '', ''),
(124, 37, 'Part-time/ Contractual Staff', 'PTE ', '9,400.00', '50%', '4,700.00', 1000, 1000, '16,100.00', '', '', '', ''),
(125, 36, 'Part-time/ Contractual Staff', 'PTE ', '8,900.00', '50%', '4,450.00', 1000, 1000, '15,350.00', '', '', '', ''),
(126, 35, 'Part-time/ Contractual Staff', 'PTE ', '8,400.00', '50%', '4,200.00', 1000, 1000, '14,600.00', ' ', '', '', ''),
(127, 34, 'Part-time/ Contractual Staff', 'PTE ', '7,900.00', '50%', '3,950.00', 1000, 1000, '13,850.00', '', '', '', ''),
(128, 33, 'Part-time/ Contractual Staff ', 'PTE ', '7,400.00', '50%', '3,700.00', 1000, 1000, '13,100.00', '', '', '', ''),
(129, 32, 'Part-time/ Contractual Staff ', 'PTE ', '6,900.00', '50%', '3,450.00', 1000, 1000, '12,350.00', '', '', '', ''),
(130, 31, 'Part-time/ Contractual Staff ', 'PTE ', '6,400.00', '50%', '3,200.00', 1000, 1000, '11,600.00', '', '', '', ''),
(131, 30, 'Part-time/ Contractual Staff ', 'PTE ', '5,900.00', '50%', '2,950.00', 1000, 1000, '10,850.00', '', '', '', ''),
(132, 29, 'Part-time/ Contractual Staff ', 'PTE ', '5,400.00', '50%', '2,700.00', 1000, 1000, '10,100.00', '', '', '', ''),
(133, 28, 'Support Staff(Driver)', 'FTE ', '6,800.00', '50%', '3,400.00', 1000, 1000, '12,200.00', '', '', '', ''),
(134, 27, 'Support Staff(Driver)', 'FTE ', '6,600.00', '50%', '3,300.00', 1000, 1000, '11,900.00', '', '', '', ''),
(135, 26, 'Support Staff(Driver)', 'FTE ', '6,400.00', '50%', '3,200.00', 1000, 1000, '11,600.00', '', '', '', ''),
(136, 25, 'Support Staff(Driver)', 'FTE ', '6,200.00', '50%', '3,100.00', 1000, 1000, '11,300.00', '', '', '', ''),
(137, 24, 'Support Staff', 'FTE ', '6,000.00', '50%', '3,000.00', 1000, 1000, '11,000.00', '', '', '', ''),
(138, 23, 'Support Staff', 'FTE ', '5,800.00', '50%', '2,900.00', 1000, 1000, '10,700.00', '', '', '', ''),
(139, 22, 'Support Staff', 'FTE ', '5,600.00', '50%', '2,800.00', 1000, 1000, '10,400.00', '', '', '', ''),
(140, 21, 'Support Staff', 'FTE ', '5,400.00', '50%', '2,700.00', 1000, 1000, '10,100.00', '', '', '', ''),
(141, 20, 'Support Staff', 'FTE ', '5,200.00', '50%', '2,600.00', 1000, 1000, '9,800.00', '', '', '', ''),
(142, 19, 'Support Staff', 'FTE ', '5,000.00', '50%', '2,500.00', 1000, 1000, '9,500.00', '', '', '', ''),
(143, 18, 'Support Staff', 'FTE ', '4,800.00', '50%', '2,400.00', 1000, 1000, '9,200.00', '', '', '', ''),
(144, 17, 'Support Staff', 'FTE ', '4,600.00', '50%', '2,300.00', 1000, 1000, '8,900.00', '', '', '', ''),
(145, 16, 'Support Staff', 'FTE ', '4,400.00', '50%', '2,200.00', 1000, 1000, '8,600.00', '', '', '', ''),
(146, 15, 'Support Staff', 'FTE ', '4,200.00', '50%', '2,100.00', 1000, 1000, '8,300.00', '', '', '', ''),
(147, 14, 'Support Staff', 'FTE ', '4,000.00', '50%', '2,000.00', 1000, 1000, '8,000.00', '', '', '', ''),
(148, 13, 'Support Staff', 'FTE ', '3,800.00', '50%', '1,900.00', 1000, 1000, '7,700.00', '', '', '', ''),
(149, 12, 'Support Staff', 'FTE ', '3,600.00', '50%', '1,800.00', 1000, 1000, '7,400.00', '', '', '', ''),
(150, 11, 'Support Staff', 'FTE ', '3,400.00', '50%', '1,700.00', 1000, 1000, '7,100.00', '', '', '', ''),
(151, 10, 'Support Staff', 'FTE ', '3,200.00', '50%', '1,600.00', 1000, 1000, '6,800.00', '', '', '', ''),
(152, 9, 'Support Staff', 'FTE ', '3,000.00', '50%', '1,500.00', 1000, 1000, '6,500.00', '', '', '', ''),
(153, 8, 'Support Staff', 'FTE ', '2,800.00', '50%', '1,400.00', 1000, 1000, '6,200.00', '', '', '', ''),
(154, 7, 'Support Staff', 'FTE ', '2,600.00', '50%', '1,300.00', 1000, 1000, '5,900.00', '', '', '', ''),
(155, 6, 'Support Staff', 'FTE ', '2,400.00', '50%', '1,200.00', 1000, 1000, '5,600.00', '', '', '', ''),
(156, 5, 'Support Staff', 'FTE ', '2,200.00', '50%', '1,100.00', 1000, 1000, '5,300.00', '', '', '', ''),
(157, 4, 'Support Staff', 'FTE ', '2,000.00', '50%', '1,000.00', 1000, 1000, '5,000.00', '', '', '', ''),
(158, 3, 'Support Staff', 'FTE ', '1,800.00', '50%', '900', 1000, 1000, '4,700.00', '', '', '', ''),
(159, 2, 'Support Staff', 'FTE ', '1,600.00', '50%', '800', 1000, 1000, '4,400.00', '', '', '', ''),
(160, 1, 'Support Staff', 'FTE ', '1,400.00', '50%', '700', 1000, 1000, '4,100.00', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `id` int(11) NOT NULL,
  `eId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `office_contact` varchar(100) NOT NULL,
  `optional_email` varchar(50) NOT NULL,
  `status` varchar(255) NOT NULL,
  `employeestat` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `date` varchar(100) NOT NULL,
  `defultInTime` varchar(20) NOT NULL,
  `defultOuttime` varchar(20) NOT NULL,
  `grade` int(11) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`id`, `eId`, `userId`, `user`, `job_title`, `designation`, `office_contact`, `optional_email`, `status`, `employeestat`, `ip`, `browser`, `date`, `defultInTime`, `defultOuttime`, `grade`, `active`) VALUES
(7, 0, 569, 'Alvi', 'IT Intern', 'Intern Officer', '01844046644', 'arnabroy816@gmail.com', '1', 0, '', '', '', '09:00', '17:00', 0, 0),
(8, 0, 571, 'Arnab', 'Software Engineer', 'Software Engineer', '01844046644', 'arnabroy816@gmail.com', '1', 0, '', '', '', '10:00', '18:00', 0, 1),
(11, 0, 538, 'Protyasha', 'IT Intern', 'Intern Officer', '01844046631', 'protyasha2233@gmail.com', '', 8, '', '', '', '10:00', '17:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee1`
--

CREATE TABLE `tbl_employee1` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `jId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employeeone`
--

CREATE TABLE `tbl_employeeone` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `jId` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(80) NOT NULL,
  `phone` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_employeeone`
--

INSERT INTO `tbl_employeeone` (`id`, `userId`, `jId`, `name`, `email`, `phone`) VALUES
(1, 569, 15, 'Anas Abdullah Alvi', 'alvi_moto@yahoo.com', '01752916688'),
(2, 559, 1, 'Md. Sharif Ahmed', 'sharif792@gmail.com', '01743912139');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_emrecord`
--

CREATE TABLE `tbl_emrecord` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `estat` int(11) NOT NULL,
  `adate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_emrecord`
--

INSERT INTO `tbl_emrecord` (`id`, `userId`, `estat`, `adate`) VALUES
(1, 538, 8, ''),
(2, 538, 8, '2018-02-11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_errand`
--

CREATE TABLE `tbl_errand` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `errand_place_in` varchar(255) NOT NULL,
  `errand_for_in` varchar(255) NOT NULL,
  `errand_from_in` varchar(255) NOT NULL,
  `errand_to_in` varchar(255) NOT NULL,
  `attendence_time` varchar(30) NOT NULL,
  `day` varchar(25) NOT NULL,
  `attendence_date` varchar(255) NOT NULL,
  `inip` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `hrmark` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_estatus`
--

CREATE TABLE `tbl_estatus` (
  `id` int(11) NOT NULL,
  `estat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_estatus`
--

INSERT INTO `tbl_estatus` (`id`, `estat`) VALUES
(8, 'Joined/Active'),
(9, 'Liend/Inactive'),
(10, 'Resign/Inactive'),
(11, 'Fired/Inactive'),
(12, 'Heldup/Inactive'),
(13, 'Suspended/Inactive'),
(14, 'Longterm/Leave');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_extra`
--

CREATE TABLE `tbl_extra` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_extra`
--

INSERT INTO `tbl_extra` (`id`, `userId`, `activity`, `detail`) VALUES
(3, 538, 'test', 'test'),
(4, 538, 'test', 'test'),
(5, 571, 'sdfgsdf', 'sdfgsdfdf'),
(6, 571, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gap_analysis`
--

CREATE TABLE `tbl_gap_analysis` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gap` text NOT NULL,
  `comment` text NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_gap_analysis`
--

INSERT INTO `tbl_gap_analysis` (`id`, `userId`, `email`, `gap`, `comment`, `date`, `link`) VALUES
(1, 539, '', '1. can not able to upload pdf twice\r\n2. can not able to insert data', '', '2017-11-09 07:52:05', ''),
(2, 546, '', 'Not Include specific University name &amp; comilla board', '', '2017-11-11 06:20:00', ''),
(3, 550, '', 'https://recruitment.keal.com.bd/LoginRegistrationForm/permanent_address.php\r\nHere should be a back button. Redirect to resume.php', '', '2017-11-12 08:04:51', ''),
(4, 550, '', '{https://recruitment.keal.com.bd/LoginRegistrationForm/view_exp.php}\r\nafter submitting work Experience it shows o added.', '', '2017-11-12 08:11:13', ''),
(6, 0, 'protyasha.s@keal.com.bd', 'insertgap', '', '2017-12-23 08:54:10', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gpa`
--

CREATE TABLE `tbl_gpa` (
  `gpaId` int(11) NOT NULL,
  `gpa` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_grad`
--

CREATE TABLE `tbl_grad` (
  `verId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `uId` int(11) NOT NULL,
  `deid` int(11) NOT NULL,
  `studydeptId` int(11) NOT NULL,
  `minor` int(11) NOT NULL,
  `cgpa` float(10,2) NOT NULL,
  `divId` int(11) NOT NULL,
  `pyearid` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_grad`
--

INSERT INTO `tbl_grad` (`verId`, `userId`, `uId`, `deid`, `studydeptId`, `minor`, `cgpa`, `divId`, `pyearid`, `status`) VALUES
(5, 469, 45, 0, 1, 0, 3.24, 0, 1, 0),
(6, 475, 30, 0, 1, 0, 3.72, 0, 1, 0),
(7, 482, 44, 0, 2, 0, 2.15, 0, 1, 0),
(8, 481, 0, 0, 1, 0, 3.18, 0, 1, 0),
(9, 477, 30, 0, 1, 0, 3.87, 0, 0, 0),
(10, 478, 30, 0, 1, 0, 3.82, 0, 0, 0),
(11, 488, 37, 0, 1, 0, 3.13, 0, 1, 0),
(12, 479, 7, 0, 1, 0, 3.57, 0, 3, 0),
(13, 488, 37, 0, 1, 0, 3.13, 0, 1, 0),
(14, 492, 30, 0, 1, 0, 3.58, 0, 1, 0),
(18, 501, 37, 0, 1, 0, 3.42, 0, 1, 0),
(19, 502, 29, 0, 2, 0, 3.01, 0, 1, 0),
(20, 505, 0, 0, 2, 0, 3.35, 0, 3, 0),
(21, 511, 35, 0, 1, 0, 3.11, 0, 1, 0),
(22, 517, 48, 0, 1, 0, 2.80, 0, 1, 0),
(23, 522, 37, 0, 1, 0, 3.38, 0, 1, 0),
(24, 526, 46, 0, 1, 0, 3.27, 0, 1, 0),
(25, 527, 44, 0, 1, 0, 3.37, 0, 1, 0),
(26, 528, 41, 0, 1, 0, 2.92, 0, 1, 0),
(27, 531, 0, 0, 1, 0, 2.97, 0, 1, 0),
(29, 539, 0, 0, 4, 0, 3.68, 0, 7, 0),
(30, 540, 0, 0, 1, 0, 2.57, 0, 1, 0),
(31, 544, 23, 0, 14, 0, 3.15, 0, 3, 0),
(32, 491, 46, 0, 1, 0, 3.25, 0, 1, 0),
(33, 549, 45, 0, 2, 0, 2.47, 0, 3, 0),
(34, 550, 37, 0, 1, 0, 3.50, 0, 1, 0),
(35, 552, 37, 0, 1, 0, 3.32, 0, 1, 0),
(36, 546, 51, 0, 1, 0, 3.70, 0, 1, 0),
(37, 559, 38, 0, 1, 0, 3.65, 0, 6, 1),
(38, 516, 37, 0, 1, 0, 3.28, 0, 3, 0),
(43, 554, 30, 0, 2, 0, 3.95, 0, 1, 0),
(51, 557, 35, 5, 166, 167, 3.88, 0, 19, 1),
(52, 556, 37, 1, 1, 1, 3.66, 0, 1, 1),
(53, 538, 4, 6, 166, 168, 3.88, 0, 17, 1),
(54, 569, 30, 1, 2, 2, 3.98, 0, 1, 1),
(55, 571, 37, 1, 1, 1, 3.50, 0, 1, 1),
(56, 581, 40, 1, 2, 2, 2.32, 0, 3, 1),
(57, 594, 29, 1, 2, 0, 3.25, 0, 1, 1),
(58, 590, 59, 1, 2, 0, 3.23, 0, 1, 1),
(59, 604, 44, 1, 2, 0, 2.87, 0, 1, 1),
(60, 603, 2, 1, 1, 0, 2.80, 0, 1, 1),
(61, 617, 30, 1, 2, 2, 3.30, 0, 4, 1),
(62, 618, 56, 1, 2, 2, 3.22, 0, 4, 1),
(63, 619, 2, 1, 1, 0, 3.18, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group`
--

CREATE TABLE `tbl_group` (
  `gId` int(11) NOT NULL,
  `GName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_group`
--

INSERT INTO `tbl_group` (`gId`, `GName`) VALUES
(3, 'Arts'),
(4, 'Commerce'),
(5, 'Science');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hedu`
--

CREATE TABLE `tbl_hedu` (
  `HID` int(11) NOT NULL,
  `subName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_hedu`
--

INSERT INTO `tbl_hedu` (`HID`, `subName`) VALUES
(1, 'Graduate'),
(2, 'Under_Graduate');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hsc`
--

CREATE TABLE `tbl_hsc` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cgpa` float(10,2) NOT NULL,
  `pyearid` int(11) NOT NULL,
  `divId` int(11) NOT NULL,
  `gId` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_hsc`
--

INSERT INTO `tbl_hsc` (`id`, `userId`, `name`, `cgpa`, `pyearid`, `divId`, `gId`, `status`) VALUES
(2, 469, 'Rajuk Uttara Model College', 5.00, 8, 15, 0, 0),
(3, 475, 'Narayanganj Govt. Mohila collage', 4.40, 6, 15, 0, 0),
(4, 482, 'Saidpur College', 3.50, 9, 9, 0, 0),
(5, 481, 'Hamidpur Al Hera Degree College, Jessore', 3.70, 7, 7, 0, 0),
(6, 478, 'Gazipur Cantonment College', 5.00, 6, 15, 0, 0),
(8, 477, 'Safiuddin sarker academy and college', 0.00, 6, 15, 0, 0),
(9, 488, 'Pirgonj govt college', 4.10, 7, 10, 0, 0),
(10, 479, 'GOVT. KC COLLEGE, JHENEDAH', 5.00, 10, 7, 0, 0),
(11, 488, 'Pirgonj govt college', 4.10, 7, 9, 0, 0),
(12, 492, 'Cambrian College', 5.00, 7, 15, 0, 0),
(15, 501, 'Joypurhat Govt. Degree College', 5.00, 8, 9, 5, 0),
(16, 502, 'Govt. Azizul Haque College, Bogra', 5.00, 7, 9, 5, 0),
(17, 511, 'Adamjee Cantonment College', 4.70, 7, 15, 5, 0),
(18, 517, 'B A F Shaheen College Kurmitola', 3.80, 8, 15, 5, 0),
(19, 522, 'Thakurgaon Govt College', 4.30, 8, 10, 5, 0),
(20, 526, 'Varendra collage, Rajshahi', 3.80, 7, 9, 5, 0),
(21, 527, 'Bir Shreshtha Noor Mohammad Rifles Public &amp; College', 4.40, 8, 15, 5, 0),
(22, 528, 'Cambrian College', 5.00, 7, 15, 5, 0),
(24, 539, 'Dhaka Commerce Collage', 4.80, 13, 15, 4, 0),
(25, 540, 'Shiddheswari Girls College', 4.20, 8, 15, 5, 1),
(26, 544, 'Rajshahi city college , rajshahi.', 4.60, 9, 9, 5, 0),
(27, 491, 'Kazi Rahamatullah', 3.60, 8, 7, 5, 0),
(28, 549, 'Faridpur Rajendra College', 4.20, 8, 15, 5, 0),
(30, 552, 'Uttara Town Collage', 4.80, 6, 15, 5, 0),
(31, 516, 'Gazipur Cantonment College', 5.00, 8, 15, 5, 0),
(32, 538, 'Sarda Sundari Mohila College', 5.00, 8, 15, 5, 1),
(33, 550, 'Joypurhat Degree College', 4.88, 8, 9, 5, 1),
(35, 554, 'Government Science College, Dhaka', 4.80, 6, 15, 5, 0),
(38, 557, 'Sarda Sundari Mohila College', 5.00, 8, 15, 5, 1),
(39, 556, 'Sarda Sundari Mohila College', 5.00, 8, 15, 5, 1),
(40, 569, 'Notre Dame College', 5.00, 6, 15, 5, 1),
(41, 571, 'Joypurhat Govt. Degree College', 4.10, 8, 9, 5, 1),
(42, 581, 'Engineering University Higher Secondary School and College', 4.40, 9, 15, 5, 1),
(43, 594, 'Dhaka College', 5.00, 6, 15, 5, 1),
(44, 604, 'Ideal College', 4.80, 8, 15, 5, 1),
(45, 603, 'Bir shesthro Noor Mohammad Public College', 5.00, 7, 15, 5, 1),
(46, 617, 'The Buds Residential Model School &amp; College', 4.40, 9, 13, 5, 1),
(47, 618, 'Badalgachhi Govt. College', 3.80, 9, 9, 5, 1),
(48, 619, 'Dhaka College', 5.00, 7, 15, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_iboard`
--

CREATE TABLE `tbl_iboard` (
  `id` int(11) NOT NULL,
  `bId` int(11) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `datee` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_iboard`
--

INSERT INTO `tbl_iboard` (`id`, `bId`, `uname`, `email`, `designation`, `datee`) VALUES
(3, 0, 'A.Y.M Saif ullah', 'ceo@keal.com.bd', 'CEO', '2017-11-16'),
(4, 0, 'A.Y.M Saif ullah', 'ceo@keal.com.bd', 'CEO', '2017-11-22'),
(5, 0, 'A.Y.M Saif ullah', 'ceo@keal.com.bd', 'CEO', '2017-11-22'),
(6, 0, 'A.Y.M Saif ullah', 'ceo@keal.com.bd', 'CEO', '2017-11-22'),
(7, 0, 'A.Y.M Saif ullah', 'ceo@keal.com.bd', 'CEO', '2017-11-22'),
(11, 0, 'A.Y.M Saif ullah', 'ceo@keal.com.bd', 'CEO', '2017-11-14'),
(12, 0, 'Arnab Prosad Roy', 'arnab.r@keal.com.bd', 'Trainee Junior IT Officer', '2017-11-14'),
(13, 3, 'Protyasha Saha', 'protyasha.s@keal.com.bd', 'Trainee Junior IT Officer', '2017-11-14'),
(14, 3, 'A.Y.M Saif ullah', 'ceo@keal.com.bd', 'CEO', '2017-11-19'),
(15, 3, 'Arnab Prosad Roy', 'arnab.r@keal.com.bd', 'Trainee Junior IT Officer', '2017-11-19'),
(19, 4, 'A.Y.M Saif ullah', 'ceo@keal.com.bd', 'CEO', '2017-11-16'),
(20, 4, 'Arnab Prosad Roy', 'arnab.r@keal.com.bd', 'Trainee Junior IT Officer', '2017-11-16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_interview`
--

CREATE TABLE `tbl_interview` (
  `id` int(11) NOT NULL,
  `jId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `interviewdate` date NOT NULL,
  `starttime` varchar(40) NOT NULL,
  `endtime` varchar(40) NOT NULL,
  `venue` text NOT NULL,
  `status` int(11) DEFAULT '0',
  `statustow` int(11) NOT NULL,
  `attend` int(11) NOT NULL DEFAULT '0',
  `step` int(11) NOT NULL,
  `dId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_interview`
--

INSERT INTO `tbl_interview` (`id`, `jId`, `userId`, `interviewdate`, `starttime`, `endtime`, `venue`, `status`, `statustow`, `attend`, `step`, `dId`) VALUES
(11, 1, 481, '2017-10-18', '03:00pm', '05:00pm', 'House #64, block-B, road-03, Niketon, Gulshan-01.', 1, 0, 1, 0, 0),
(20, 1, 479, '2017-10-19', '10:00', '12:00', 'Kyoto Engineering &amp; Automation Ltd\r\n                                                                B2 House 64 Block B Road 3\r\n                                                            Niketon Gulshan Dhaka 1212', 1, 0, 1, 0, 0),
(21, 1, 482, '2017-10-19', '10:00', '12:00', 'Kyoto Engineering &amp; Automation Ltd\r\nHouse-64, Block-B, Road-3,\r\nNiketon, Gulshan ,Dhaka 1212', 1, 0, 2, 0, 0),
(36, 8, 505, '2017-11-06', '11:00am', '11:30am', 'Kyoto Engineering &amp; Automation Ltd. B2 House 64 Block B Road 3\r\n                                        Niketon Gulshan Dhaka 1212', 1, 0, 1, 0, 0),
(38, 15, 505, '2017-11-06', '11:00am', '11:30pm', 'Kyoto Engineering &amp; Automation Ltd. B2 House 64 Block B Road 3                                         Niketon Gulshan Dhaka 1212', 1, 0, 1, 0, 0),
(45, 1, 538, '2017-11-15', '11:30', '12:00', 'Kyoto Engineering &amp; Automation Ltd. B2 House 64 Block B Road 3\r\n                                        Niketon Gulshan Dhaka 1212', 1, 0, 1, 0, 0),
(46, 1, 492, '2017-11-14', '11:00', '11:30', 'Kyoto Engineering &amp; Automation Ltd. B2 House 64 Block B Road 3\r\n                                        Niketon Gulshan Dhaka 1212', 1, 0, 1, 0, 0),
(47, 1, 527, '2017-11-19', '11:00', '11:30', 'Kyoto Engineering &amp; Automation Ltd. B2 House 64 Block B Road 3\r\n                                        Niketon Gulshan Dhaka 1212', 1, 0, 0, 0, 0),
(48, 1, 516, '2017-11-19', '11:30', '12:00', 'Kyoto Engineering &amp; Automation Ltd. B2 House 64 Block B Road 3\r\n                                        Niketon Gulshan Dhaka 1212', 1, 0, 1, 0, 0),
(49, 8, 502, '2017-02-01', '11:30', '12:30', 'Kyoto Engineering &amp; Automation Ltd. B2 House 64 Block B Road 3\r\n                                        Niketon Gulshan Dhaka 1212', 1, 0, 1, 0, 0),
(50, 8, 502, '2017-11-20', '11:30', '12:30', 'Kyoto Engineering &amp; Automation Ltd. B2 House 64 Block B Road 3\r\n                                        Niketon Gulshan Dhaka 1212', 1, 0, 1, 0, 0),
(51, 15, 555, '2017-11-30', '11:00', '11:30', 'Kyoto Engineering &amp; Automation Ltd. B2 House 64 Block B Road 3\r\n                                        Niketon Gulshan Dhaka 1212', 1, 0, 0, 0, 1),
(53, 1, 558, '2017-11-30', '12:00', '12:30', 'Kyoto Engineering &amp; Automation Ltd. B2 House 64 Block B Road 3\r\n                                        Niketon Gulshan Dhaka 1212', 2, 0, 0, 0, 2),
(54, 1, 528, '2017-11-30', '12:30', '13:00', 'Kyoto Engineering &amp; Automation Ltd. B2 House 64 Block B Road 3\r\n                                        Niketon Gulshan Dhaka 1212', 4, 0, 0, 0, 2),
(55, 1, 522, '2017-11-30', '13:00', '13:30', 'Kyoto Engineering &amp; Automation Ltd. B2 House 64 Block B Road 3\r\n                                        Niketon Gulshan Dhaka 1212', 4, 1, 0, 0, 0),
(60, 1, 532, '2017-12-04', '12:15', '12:30', 'Kyoto Engineering &amp; Automation Ltd. B2 House 64 Block B Road 3\r\n                                        Niketon Gulshan Dhaka 1212\r\n\r\nEmergency Number 01844046631, 01844046621', 4, 1, 0, 0, 0),
(61, 1, 517, '2017-12-04', '10:15', '10:30', 'Kyoto Engineering &amp; Automation Ltd. B2 House 64 Block B Road 3\r\n                                        Niketon Gulshan Dhaka 1212\r\n\r\nEmergency Contact: 01844046631, 01844046621', 4, 1, 0, 0, 0),
(69, 15, 538, '2017-12-20', '09:30', '09:45', 'Kyoto Engineering &amp; Automation Ltd. B2 House 64 Block B Road 3\r\n                                        Niketon Gulshan Dhaka 1212', 0, 0, 0, 0, 0),
(70, 1, 540, '2017-12-20', '10:30', '11:00', 'Kyoto Engineering &amp; Automation Ltd. B2 House 64 Block B Road 3\r\n                                        Niketon Gulshan Dhaka 1212', 0, 0, 0, 0, 0),
(71, 1, 594, '2017-12-20', '11:30', '11:30', 'Kyoto Engineering &amp; Automation Ltd. B2 House 64 Block B Road 3\r\n                                        Niketon Gulshan Dhaka 1212', 0, 0, 0, 0, 0),
(72, 1, 581, '2017-12-20', '12:15', '12:45', 'Kyoto Engineering &amp; Automation Ltd. B2 House 64 Block B Road 3\r\n                                        Niketon Gulshan Dhaka 1212', 0, 0, 0, 0, 0),
(73, 15, 560, '2017-12-20', '12:45', '13:15', 'Kyoto Engineering &amp; Automation Ltd. B2 House 64 Block B Road 3\r\n                                        Niketon Gulshan Dhaka 1212', 0, 0, 0, 0, 0),
(74, 15, 569, '2017-12-20', '14:15', '14:45', 'Kyoto Engineering &amp; Automation Ltd. B2 House 64 Block B Road 3\r\n                                        Niketon Gulshan Dhaka 1212', 3, 1, 0, 0, 0),
(75, 1, 603, '2017-12-24', '10:30', '11:00', 'Kyoto Engineering &amp; Automation Ltd. B2 House 64 Block B Road 3\r\n                                        Niketon Gulshan Dhaka 1212', 1, 1, 0, 0, 0),
(76, 1, 571, '2017-12-25', '14:00', '13:30', 'Kyoto Engineering &amp; Automation Ltd. B2 House 64 Block B Road 3\r\n                                        Niketon Gulshan Dhaka 1212', 0, 0, 0, 0, 0),
(77, 15, 538, '2017-12-25', '11:00', '23:30', 'Kyoto Engineering &amp; Automation Ltd. B2 House 64 Block B Road 3\r\n                                        Niketon Gulshan Dhaka 1212', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jobtitle`
--

CREATE TABLE `tbl_jobtitle` (
  `jId` int(11) NOT NULL,
  `jobtitle` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `jd` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_jobtitle`
--

INSERT INTO `tbl_jobtitle` (`jId`, `jobtitle`, `description`, `jd`) VALUES
(1, 'Intern Officer \r\n', 'This is a temporary job with a view to select future employees\r\n', ''),
(2, 'Engineer', '', ''),
(3, 'Sr software Engineer', '', ''),
(4, 'Jr Software Engineer', '', ''),
(5, 'HR', '', ''),
(6, 'Manager', '', ''),
(7, 'Asst. Manager', '', ''),
(8, 'Assistant Engineer (EEE, IPE and Mechanical Engineering)', '&lt;p&gt;&lt;em&gt;&lt;strong&gt;Job Description / Responsibility&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;Complete engineering design, testing&amp;nbsp; and commissioning of facility instrumentation and control systems.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;Attend customer queries and provide solution of their automation requirement.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;Resolve problems by integrating automation solutions into customer&amp;rsquo;s factory, machine or property from an array of products of Omron and other brands of the company.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;Automation project planning, scheduling and budgeting based upon project commissioning and start-up schedule.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;Develop and implement facility control and automation solutions based upon cause and effect documentation, control narrative and an understanding of the facility environment.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;Insure accuracy and reliability of instrumentation, control and safety systems.&amp;nbsp;&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;Generate system architecture and automation network drawings.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;System testing and troubleshooting of control programs&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;Creating Ladder Diagram.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;Capable of solving all technical and managerial problems at project site.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;Direct and coordinate manufacturing, construction, installation, maintenance, support, documentation, and testing activities to ensure compliance with specifications, codes, and customer requirements.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;Perform detailed calculations to compute and establish manufacturing, construction, and installation standards and specifications.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;Writing technical documentation and monitoring reports.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;Preparation of feasible business proposals for electric and electronic products, Mechanical products and Machines in Bangladesh.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;Doing R&amp;amp;D for the Bangladesh industrial automation sector which paves the way to enhance the conventional manufacturing process.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;Educational Requirements:&lt;/em&gt; &lt;/strong&gt;&amp;nbsp;Graduation in EEE, IPE and Mechanical Engineering.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;&lt;strong&gt;Additional Job Requirements: &lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Age: 25 to 40 year(s)&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;High level of PC skill of all basic MS Office Applications.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;High level of Communication Skill (Reading &amp;amp; Writing) .&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;Ability to work in a team.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;Ability to work outdoor and undertake journey.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;Must have pleasant personality, optimistic, have the ability to convince customer.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Job Location&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Dhaka.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Other Benefits: As per company policy&lt;/strong&gt; .&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'JdBank/f4067035e8.pdf'),
(11, 'Managing Director', '', ''),
(12, 'CEO', '', ''),
(13, 'AGM', '', ''),
(14, 'DGM', '', ''),
(15, 'Internship in Electrical &amp; Industrial Automation', 'Internship in Electrical &amp; Industrial Automation', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_job_level`
--

CREATE TABLE `tbl_job_level` (
  `levelId` int(11) NOT NULL,
  `levelName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_job_level`
--

INSERT INTO `tbl_job_level` (`levelId`, `levelName`) VALUES
(1, 'Entry'),
(2, 'Mid'),
(3, 'TOP');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_joining_info`
--

CREATE TABLE `tbl_joining_info` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `emaill` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `rdatee` date NOT NULL,
  `datee` date NOT NULL,
  `timee` time NOT NULL,
  `venue` text NOT NULL,
  `checklist` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_joining_info`
--

INSERT INTO `tbl_joining_info` (`id`, `userId`, `emaill`, `phone`, `rdatee`, `datee`, `timee`, `venue`, `checklist`, `status`) VALUES
(1, 569, '', '', '2017-12-27', '2017-12-30', '11:00:00', 'Kyoto Engineering &amp; Automation Ltd. B2 House 64 Block B Road 3, Niketon Gulshan Dhaka 1212', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lang`
--

CREATE TABLE `tbl_lang` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `flang` varchar(255) NOT NULL,
  `reading` varchar(30) NOT NULL,
  `writing` varchar(30) NOT NULL,
  `speaking` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_lang`
--

INSERT INTO `tbl_lang` (`id`, `userId`, `flang`, `reading`, `writing`, `speaking`) VALUES
(5, 571, 'Bangla', 'Excellent', 'Excellent', 'Excellent'),
(6, 571, 'Bangla', 'very Good', 'Excellent', 'very Good'),
(7, 571, 'fghfgh', 'very Good', 'Excellent', 'very Good');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lateapproval`
--

CREATE TABLE `tbl_lateapproval` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `late_reason` int(11) NOT NULL,
  `original_time` time NOT NULL,
  `Date` varchar(30) NOT NULL,
  `time` time NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_latecoming`
--

CREATE TABLE `tbl_latecoming` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `late_reason` varchar(255) NOT NULL,
  `original_time` time NOT NULL,
  `attendence_time` time NOT NULL,
  `datee` varchar(30) NOT NULL,
  `time` time NOT NULL,
  `hmark` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_latecoming`
--

INSERT INTO `tbl_latecoming` (`id`, `userId`, `late_reason`, `original_time`, `attendence_time`, `datee`, `time`, `hmark`) VALUES
(1, 571, 'traffic', '09:00:08', '10:06:00', '2018-02-11', '00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_latereason`
--

CREATE TABLE `tbl_latereason` (
  `id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level_subject`
--

CREATE TABLE `tbl_level_subject` (
  `oid` int(11) NOT NULL,
  `subjectname` varchar(30) NOT NULL,
  `alevel` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_level_subject`
--

INSERT INTO `tbl_level_subject` (`oid`, `subjectname`, `alevel`) VALUES
(1, 'Accounting', 'Accounting'),
(2, 'Agriculture', 'Afrikaans '),
(3, 'Arabic ', 'Afrikaans - First Language (AS'),
(4, 'Art and Design (BD, MV, MU, PK', 'Afrikaans - Language (AS Level'),
(5, 'Bangladesh Studies ', 'Applied Information and Commun'),
(6, 'Bengali ', 'Arabic '),
(7, 'Biology', 'Arabic - Language (AS Level on'),
(8, 'Business Studies', 'Art and Design '),
(9, 'CDT: Design and Communication ', 'Biology'),
(10, 'Chemistry ', 'Business Studies'),
(11, 'Commerce', 'Chemistry '),
(12, 'Commercial Studies', 'Chinese '),
(13, 'Computer Science ', 'Chinese - Language (AS Level o'),
(14, 'Design and Technology', 'Chinese - Literature (AS Level'),
(15, 'Economics ', 'Classical Studies '),
(16, 'English Language ', 'Classical Studies '),
(17, 'Environmental Management', 'Computer Science '),
(18, 'Fashion and Fabrics', 'Computing '),
(19, 'Fashion and Textiles', 'Design and Technology '),
(20, 'Food and Nutrition', 'Design and Textiles '),
(21, 'French', 'Divinity '),
(22, 'Geography', 'Economics '),
(23, 'German', 'English - Language '),
(24, 'Global Perspectives', 'English - Language AS and A Le'),
(25, 'Hinduism', 'English - Literature '),
(26, 'History ', 'Environmental Management'),
(27, 'History (Modern World Affairs)', 'Food Studies '),
(28, 'Islamic Studies ', 'French '),
(29, 'Islamiyat', 'French - Language (AS Level on'),
(30, 'Literature in English', 'French - Literature (AS Level '),
(31, 'Marine Science', 'General Paper 8001 '),
(32, 'Mathematics', 'General Paper 8004 '),
(33, 'Mathematics D', 'Geography '),
(34, 'Nepali', 'German '),
(35, 'Pakistan Studies', 'German - Language (AS Level on'),
(36, 'Physics', 'Global Perspectives '),
(37, 'Principles of Accounts', 'Hindi'),
(38, 'Religious Studies', 'Hindi - Language (AS Level onl'),
(39, 'Science - Combined', 'Hindi - Literature (AS Level o'),
(40, 'Setswana ', 'Hinduism '),
(41, 'Sinhala', 'Hinduism '),
(42, 'Sociology', 'History '),
(43, 'Spanish', 'History '),
(44, 'Statistics', 'Islamic Studies '),
(45, 'Swahili', 'Japanese Language (AS Level on'),
(46, 'Tamil', 'Language and Literature in Eng'),
(47, 'Travel and Tourism', 'Law'),
(48, 'Urdu - First Language', 'Marathi '),
(49, 'Urdu - Second Language', 'Marathi - Language (AS Level o'),
(50, '', 'Marine Science'),
(51, '', 'Mathematics '),
(52, '', 'Mathematics (US) '),
(53, '', 'Mathematics - Further'),
(54, '', 'Music '),
(55, '', 'Physical Education'),
(56, '', 'Physical Science '),
(57, '', 'Physics '),
(58, '', 'Portuguese '),
(59, '', 'Portuguese - Language (AS Leve'),
(60, '', 'Portuguese - Literature (AS Le'),
(61, '', 'Psychology'),
(62, '', 'Sociology '),
(63, '', 'Spanish '),
(64, '', 'Spanish - First Language (AS L'),
(65, '', 'Spanish - Language (AS Level o'),
(66, '', 'Spanish - Literature (AS Level'),
(67, '', 'Tamil '),
(68, '', 'Tamil - Language (AS Level onl'),
(69, '', 'Telugu'),
(70, '', 'Telugu - Language (AS Level on'),
(71, '', 'Thinking Skills '),
(72, '', 'Travel and Tourism '),
(73, '', 'Urdu '),
(74, '', 'Urdu - Language (AS Level only'),
(75, '', 'Urdu - Pakistan only ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `datee` date NOT NULL,
  `activity` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `uname`, `pass`, `email`, `designation`, `datee`, `activity`, `image`) VALUES
(1, 'ceo', 'fd0db3a490dcd8cb796c91c1f69fff99', '', '', '0000-00-00', 0, ''),
(4, 'CEO', 'd232e8c4adcfc457cd04d3ccc907fe32', '', '', '0000-00-00', 0, ''),
(5, 'Arnab', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0000-00-00', 0, 'uploads/4fc11c291f.jpg'),
(6, 'Protyasha', 'f6f2e33be559358810c3a4dca158dd89', '', '', '0000-00-00', 0, ''),
(13, 'A.Y.M Saif ullah', '38d8b1a4b89070c5c22eb59871def6dd', 'ceo@keal.com.bd', 'CEO', '2017-11-14', 3, '0'),
(14, 'Arnab Prosad Roy', '5a2ab1c31e56a86d224d567249461990', 'arnab.r@keal.com.bd', 'Trainee Junior IT Officer', '2017-11-14', 3, '0'),
(15, 'Protyasha Saha', '4599a93b6185f2655816f2a6f4d72fb6', 'protyasha.s@keal.com.bd', 'Trainee Junior IT Officer', '2017-11-14', 3, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_olevel`
--

CREATE TABLE `tbl_olevel` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cgpa` float(10,2) NOT NULL,
  `pyearid` int(11) NOT NULL,
  `divId` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_olevel`
--

INSERT INTO `tbl_olevel` (`id`, `userId`, `name`, `cgpa`, `pyearid`, `divId`, `status`) VALUES
(1, 557, 'Sarda Sundari Mohila College', 0.00, 10, 0, 0),
(2, 556, 'Sarda Sundari Mohila College', 0.00, 9, 0, 0),
(3, 590, 'British Council', 0.00, 9, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_olevel_grads`
--

CREATE TABLE `tbl_olevel_grads` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `grade` float NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_olevel_grads`
--

INSERT INTO `tbl_olevel_grads` (`id`, `userId`, `oid`, `grade`, `status`) VALUES
(7, 538, 33, 3.22, 0),
(9, 538, 7, 3.5, 0),
(10, 557, 15, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_others`
--

CREATE TABLE `tbl_others` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `edutype` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `deid` int(11) NOT NULL,
  `studydeptId` int(11) NOT NULL,
  `minor` int(11) NOT NULL,
  `cgpa` float NOT NULL,
  `pyearid` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_others`
--

INSERT INTO `tbl_others` (`id`, `userId`, `edutype`, `name`, `deid`, `studydeptId`, `minor`, `cgpa`, `pyearid`, `status`) VALUES
(4, 531, 'Bachelor of Science', 'University Of Information Technology And Science', 0, 1, 0, 2.97, 1, 0),
(6, 538, '', 'Sarda Sundari Mohila College', 0, 16, 2, 3.88, 12, 1),
(7, 538, '', 'Daffodil', 0, 1, 1, 3.66, 1, 1),
(8, 538, '', 'Sarda Sundari Mohila Collegehj', 0, 1, 1, 3.88, 18, 1),
(9, 538, '', 'Milestone School and College', 0, 13, 4, 3.88, 14, 1),
(12, 557, '', 'Govt girls high school', 5, 166, 168, 3.66, 15, 1),
(13, 556, '', 'Daffodil', 5, 166, 167, 4, 17, 1),
(14, 538, '', 'Sarda Sundari Mohila College', 6, 166, 167, 3.88, 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_overall`
--

CREATE TABLE `tbl_overall` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL DEFAULT '0',
  `ssc` int(11) NOT NULL,
  `olevel` int(11) NOT NULL,
  `vocational` int(11) NOT NULL,
  `hsc` int(11) NOT NULL,
  `diploma` int(11) NOT NULL,
  `alevel` int(11) NOT NULL,
  `ugard` int(11) NOT NULL,
  `otherUgard` int(11) NOT NULL,
  `postgrad` int(11) NOT NULL,
  `otherPgard` int(11) NOT NULL,
  `overall` int(11) NOT NULL DEFAULT '1',
  `workexp` int(11) NOT NULL,
  `training` int(11) NOT NULL,
  `ref` int(11) NOT NULL,
  `port` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_overall`
--

INSERT INTO `tbl_overall` (`id`, `userId`, `ssc`, `olevel`, `vocational`, `hsc`, `diploma`, `alevel`, `ugard`, `otherUgard`, `postgrad`, `otherPgard`, `overall`, `workexp`, `training`, `ref`, `port`) VALUES
(35, 556, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0),
(36, 556, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(37, 556, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(38, 556, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(39, 556, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(40, 556, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0),
(41, 538, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0),
(42, 538, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0),
(43, 538, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0),
(44, 538, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(45, 538, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0),
(46, 538, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(47, 538, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0),
(48, 557, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0),
(49, 538, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(50, 538, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(51, 557, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(52, 538, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0),
(53, 538, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(54, 538, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0),
(55, 538, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0),
(56, 538, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0),
(57, 538, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0),
(58, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0),
(59, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0),
(60, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0),
(61, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0),
(62, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0),
(63, 569, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0),
(64, 569, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(65, 569, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0),
(66, 538, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0),
(67, 571, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(68, 571, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0),
(69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(70, 571, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0),
(71, 538, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0),
(72, 571, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0),
(73, 538, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0),
(74, 571, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0),
(75, 572, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(76, 581, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0),
(77, 581, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(78, 581, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0),
(79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(80, 581, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0),
(81, 594, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(82, 594, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(83, 594, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0),
(84, 594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(85, 594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(86, 594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(87, 594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(88, 594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(89, 594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(90, 594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(91, 581, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0),
(92, 590, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0),
(93, 590, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(94, 604, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0),
(95, 603, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0),
(96, 603, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(97, 603, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(98, 603, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(99, 603, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(100, 603, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(101, 603, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(102, 617, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0),
(103, 617, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(104, 617, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(105, 617, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(106, 618, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0),
(107, 554, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0),
(108, 619, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0),
(109, 619, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paddress`
--

CREATE TABLE `tbl_paddress` (
  `userId` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `flat` varchar(255) NOT NULL,
  `holding` varchar(255) NOT NULL,
  `building` varchar(255) NOT NULL,
  `road` varchar(255) NOT NULL,
  `block` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `divId` int(11) NOT NULL,
  `distId` int(11) NOT NULL,
  `thId` int(11) NOT NULL,
  `postId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_paddress`
--

INSERT INTO `tbl_paddress` (`userId`, `pid`, `id`, `flat`, `holding`, `building`, `road`, `block`, `area`, `divId`, `distId`, `thId`, `postId`, `status`) VALUES
(0, 16, 1, '', '', '', '', '', '', 0, 0, 0, 0, 0),
(0, 17, 0, '3dr floor', '197', '', 'Norda', '', 'Progoti Sharani', 0, 1, 0, 3, 0),
(0, 18, 0, '604', '..', 'Afnan dream', '41/23/10', 'Dhanmondi 15', 'New Road, Zigatola, Dhanmondi-1209', 0, 1, 0, 0, 0),
(0, 19, 0, '...', '...', '...', '...', '...', 'South Tetabhumi, Horimongal -3500, B-para, comilla', 0, 0, 0, 0, 0),
(0, 20, 0, 'Ground floor', '125', '', '8', 'Mohomodia Housing LTD', 'Mohammodpur, Dhaka', 0, 1, 0, 0, 0),
(0, 21, 0, '', '', '', '', '', '', 0, 2, 0, 0, 0),
(0, 22, 0, 'Ground floor', '1716', 'none', 'Dengur ali sarker', 'none', 'Kalmaswer', 0, 0, 0, 0, 0),
(0, 23, 0, '6', 'C-987', 'none', 'Banarupa Road', 'none', 'Chandana, Chowrasta', 0, 0, 0, 0, 0),
(0, 24, 1, '', '', '', '', '', '', 0, 0, 0, 0, 0),
(0, 25, 1, '', '', '', '', '', '', 0, 0, 0, 0, 0),
(0, 26, 0, '4th', '20', 'Diu Hostel', '05', '05', 'Uttara', 0, 1, 3, 4, 0),
(0, 27, 0, '12/8', '12/8', 'Kazi Bari', '1', '', 'Kollyanpur', 0, 1, 0, 0, 0),
(0, 28, 0, '', '', '', '', '', 'Mohisbathan', 0, 0, 0, 0, 0),
(0, 29, 0, '1st', '20/1', 'Abu Hanif Villa', '1', '1', 'Rayerbagh', 0, 1, 460, 791, 0),
(0, 30, 0, '3rd floor', '156', '', '3', '', 'monipuripara', 0, 1, 473, 968, 0),
(0, 31, 0, '', '', '', '', '', '', 0, 0, 0, 0, 0),
(479, 34, 0, '5th floor', '', 'kazi bari', '1', 'bonoful', 'Kallayanpur', 0, 1, 0, 0, 0),
(479, 35, 0, '', '', '', 'Selim Uddin Road,', '', 'Arappur', 0, 55, 0, 0, 0),
(499, 39, 0, '3', '101/1', 'Godhuli', 'Shangshad vaban evenue', 'B', 'rathkola', 0, 7, 46, 183, 0),
(475, 40, 0, '3rd', '197', '', 'H M SEN ROAD RAJBARI, BANDAR', '', 'Bandar', 0, 3, 0, 0, 0),
(502, 41, 1, '', '', '', '', '', '', 0, 0, 0, 0, 0),
(502, 42, 1, 'B-1', '169', 'Amicus Bijurika', 'Jahaz building len , Jolessoritala', '7', 'Jolessoritala', 0, 16, 103, 315, 0),
(511, 43, 1, '', '', '', '', '', '', 0, 0, 0, 0, 0),
(492, 44, 1, '', '', '', '', '', '', 0, 0, 0, 0, 0),
(522, 45, 0, '', '', '', '', '', 'Shinghpara', 0, 49, 357, 0, 0),
(522, 46, 0, '', '', 'S', '', '', 'Shinghpara', 0, 49, 357, 993, 0),
(527, 47, 0, '', '', '', '', '', '', 0, 28, 0, 0, 0),
(531, 48, 0, 'Basan Bapari badi', '', '', '', '', 'Tulabaria', 0, 31, 225, 619, 0),
(538, 49, 0, '2', '57', 'vaban', '3', 'a', 'rathkola', 0, 7, 46, 183, 1),
(540, 50, 0, 'Flat-203/Level-02', '14', 'Rose Villa', '6', 'N/A', 'Gulshan-1', 0, 1, 459, 774, 0),
(550, 51, 0, '', '512', '', '', '', 'sabujnagar', 0, 20, 132, 359, 0),
(546, 52, 0, 'Basan Bapari badi', '', '', '', '', 'Tulabaria', 0, 31, 225, 619, 0),
(516, 55, 0, '', '', '', '', '', 'Juri, Moulvibazar, Sylhet', 0, 33, 532, 695, 0),
(557, 56, 0, '3', '101/1', '', '', '', 'Monipuripara', 0, 1, 473, 794, 0),
(554, 57, 0, '1', '25', 'Amin Monjil', 'Moshjid Road', '57', 'South Arichpur, Tongi', 15, 2, 5, 27, 0),
(512, 58, 0, 'a', 'b', 'c', 'd', 'c', 'f', 0, 1, 474, 794, 0),
(571, 59, 0, '', '254', '', 'Behind Road', '', 'sabujnagar', 0, 20, 132, 821, 0),
(594, 60, 0, '3A', '144,South Pirerbug', 'Keya monjil', 'N/A', 'N/A', 'Mirpur', 0, 0, 405, 0, 1),
(603, 61, 0, 'Shourab villa', '956/B', 'Shoutab Villa', 'kawnia madrasha shorik', 'AminBari', 'Kawnia', 0, 37, 270, 0, 1),
(617, 62, 0, '34/3/3B', 'N/A', 'N/A', '3', '10', 'Uttara', 0, 1, 475, 796, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_passingyear`
--

CREATE TABLE `tbl_passingyear` (
  `pyearid` int(11) NOT NULL,
  `pyear` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_passingyear`
--

INSERT INTO `tbl_passingyear` (`pyearid`, `pyear`) VALUES
(1, 2017),
(3, 2016),
(4, 2015),
(5, 2014),
(6, 2013),
(7, 2012),
(8, 2011),
(9, 2010),
(10, 2009),
(11, 2008),
(12, 2007),
(13, 2006),
(14, 2005),
(15, 2004),
(16, 2003),
(17, 2002),
(18, 2001),
(19, 2000),
(20, 1999),
(21, 1998),
(22, 1997),
(23, 1996),
(24, 1995),
(25, 1994),
(26, 1993),
(27, 1992),
(28, 1991);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_personalinfo`
--

CREATE TABLE `tbl_personalinfo` (
  `perId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `perName` varchar(255) NOT NULL,
  `fName` varchar(255) NOT NULL,
  `mName` varchar(255) NOT NULL,
  `sName` varchar(255) NOT NULL,
  `perEmail` varchar(255) NOT NULL,
  `perPhone` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(255) NOT NULL,
  `nId` varchar(40) NOT NULL,
  `maritalStatus` varchar(255) NOT NULL,
  `stat` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_personalinfo`
--

INSERT INTO `tbl_personalinfo` (`perId`, `userId`, `perName`, `fName`, `mName`, `sName`, `perEmail`, `perPhone`, `dob`, `gender`, `nId`, `maritalStatus`, `stat`, `status`) VALUES
(12, 481, 'Hasibul Hasan', '', '', '', 'hasibul_uap@outlook.com', '01683-902204', '0000-00-00', 'male', '2147483647', 'single', 0, 1),
(13, 475, 'Alavi Zaman Disha', '', '', '', 'dishaalavi@gmail.com', '01682161622', '1996-11-15', 'female', '2147483647', 'single', 0, 1),
(14, 482, 'Md. Ataul karim', '', '', '', 'ataulkarim55@gmail.com', '01727774319', '0000-00-00', 'male', '2147483647', 'single', 0, 1),
(15, 478, 'Md. Sabiqul Haque Susmoy', '', '', '', 'mshsusmoy@gmail.com', '01778007648', '2017-08-20', 'male', '2147483647', 'single', 0, 1),
(16, 477, 'Md. Abu Hanif', '', '', '', 'm.abuhanif007@gmail.com', '01718555964', '1995-10-02', 'male', '2147483647', 'single', 0, 1),
(19, 479, 'Zinath Farhana', '', '', '', 'choitifarhana.ice@gmail.com', '8801741239569', '1992-12-31', 'female', '2147483647', 'married', 0, 1),
(20, 489, 'sandilazad', '', '', '', 'sandilazad@gmail.com', '+881754272330', '1996-01-19', 'male', '2147483647', 'single', 0, 1),
(22, 488, 'Most.Tamanna Rahman', '', '', '', 'tamannarahmant090@gmail.com', '01767571090', '1994-12-01', 'female', '2147483647', 'single', 0, 1),
(23, 492, 'MD.Zubayer Alam Shuvo', '', '', '', 'zubayer.alam.shuvo@gmail.com', '01674868905', '1995-04-14', 'male', '0', 'single', 0, 1),
(24, 499, 'Protyasha', '', '', '', 'protyasha.s@keal.com.bd', '01721313350', '1994-11-30', 'female', '1234', 'single', 0, 1),
(26, 476, 'Md. Nayeem Ahmad', '', '', '', '', '', '1995-01-08', 'male', '1921090856', 'single', 0, 1),
(29, 502, 'Partho Saha', '', '', '', 'adittopartho@gmail.com', '01723165403', '0000-00-00', 'male', '2147483647', 'single', 0, 1),
(30, 503, 'Fahima E-noor Popy', '', '', '', 'fahima.enoor@gmail.com', '01855958254', '1990-09-11', 'female', '2147483647', 'married', 0, 1),
(31, 505, 'MD MAHADI HASAN RABBI', '', '', '', 'rabbysk3@gmail.com', '01918005851', '1992-01-26', 'male', '2147483647', 'single', 0, 1),
(32, 508, 'Musfiqur Rahman', '', '', '', 'musfiq08@gmail.com', '01758073957', '1995-10-08', 'male', '2147483647', 'single', 0, 1),
(34, 511, 'Musfiqur Rahman', '', '', '', 'musfiqbracu@gmail.com', '01758073957', '1995-10-08', 'male', '2147483647', 'single', 0, 1),
(38, 522, 'Md. Shahjahan Dipu', '', '', '', 'shahjahan.dipu@gmail.com', '01789525053', '1994-01-15', 'male', '2147483647', 'single', 0, 1),
(39, 526, 'Prokash Karmokar', '', '', '', 'prokashkarmokar@gmail.com', '01737163249', '1994-09-29', 'male', '2147483647', 'single', 0, 1),
(40, 527, 'Iftekhar  Hossain', '', '', '', 'iftekharncb@gmail.com', '01833080197', '1993-11-21', 'male', '2147483647', 'single', 0, 1),
(43, 528, 'Md. Mushfiqur Rahman', '', '', '', 'mushfiqur.rahman07@gmail.com', '01675464781', '1994-01-27', 'male', '2147483647', 'single', 1, 1),
(45, 531, 'shishir chandra das', '', '', '', 'dasshishir33@gmail.com', '01828131532', '1992-11-06', 'male', '2147483647', 'single', 0, 1),
(51, 540, 'Afsana Imam', '', '', '', 'afsana.imam@gmail.com', '01733745753', '1994-08-12', 'female', '2147483647', 'single', 0, 1),
(54, 539, 'ABDUR RAZZAQ', '', '', '', '', '', '1989-03-05', 'male', '2392997488', 'single', 0, 1),
(55, 544, 'shafat al noman', '', '', '', 'shimulnoman03@gmail.com', '01793204444', '1993-01-05', 'male', '19938198505000041', 'single', 0, 1),
(56, 491, 'Kazi Rahamatullah', '', '', '', 'md.kazi.rahmat@gmail.com', '01753362960', '1993-11-10', 'male', '19934120408000010', 'single', 0, 1),
(57, 549, 'Harunnur Rasid', '', '', '', '', '', '1994-02-02', 'male', '19942924709000023', 'single', 0, 1),
(58, 550, 'ArnabProsad Roy', '', '', '', 'arnab2230@diu.edu.bd', '01745912429', '1995-02-01', 'male', '19953824708000080', 'single', 0, 1),
(59, 553, 'Mohi Uddin Siyam', '', '', '', 'mssiyam96@gmail.com', '01732666005', '1993-02-24', 'male', '19932699501000072', 'single', 0, 1),
(60, 546, 'Shishir Chandra Das', '', '', '', 'ovishishir24@gmail.com', '01933649407', '1992-06-11', 'male', '19923012943000208', 'single', 0, 1),
(61, 559, 'Md. Sharif Ahmed', '', '', '', 'sharif792@gmail.com', '01743912139', '1988-12-30', 'male', '3212465371505', 'single', 0, 1),
(62, 516, 'Md. Mahmudur Rahman', '', '', '', 'mahmudur665@gmail.com', '01723640267', '1993-10-19', 'male', '19933353098000188', 'single', 0, 1),
(65, 554, 'Zahidul Amin', '', '', '', 'zahidulamin9@gmail.com', '01681145491', '1996-07-16', 'male', '19963393063000082', 'single', 0, 1),
(66, 538, 'Protyasha Saha', '', '', '', 'protyasha.s@keal.com.bd', '01721313350', '0000-00-00', 'female', '1234', 'single', 0, 0),
(72, 512, 'Fariha', 'test', 'test', 'Not Applicable', '', '', '0000-00-00', 'female', '1234', 'single', 0, 1),
(73, 569, 'Anas Abdullah Alvi', 'MD. Akram Hossain', 'Anjuman Ara Begum', 'N/A', '', '', '0000-00-00', 'male', '8248554019', 'single', 0, 1),
(74, 571, 'ArnabProsad Roy', 'Jayanta Prosad Roy', 'Shipra Roy', 'Not Applicable', '', '', '0000-00-00', 'male', '19953824708000080', 'single', 0, 0),
(75, 572, 'Faiaz Sharaf Uddin', 'A.S.M Jahangir Murshed', 'Hasna Banu', 'Single', '', '', '0000-00-00', 'male', '19942697521000008', 'single', 0, 0),
(76, 581, 'Tasmim Islam', 'Azharul Islam', 'Salina Masum', 'No', '', '', '0000-00-00', 'male', '8682947901', 'single', 0, 0),
(77, 594, 'Md.Sajid Hasan Khan', 'Engr.Md.Harunur Rashid Khan', 'Mrs.Keya Harun', 'N/A', '', '', '0000-00-00', 'male', '2382262406', 'single', 0, 1),
(78, 590, 'Md. Shahriyar Uddin', 'Md.Shahab Uddin', 'Mrs.Shamim Akter', '-', '', '', '0000-00-00', 'male', '-', 'single', 0, 0),
(79, 604, 'MD.SALMAN HOSSAIN', 'MD.ANWAR HOSSAIN', 'SHAHNAJ AKHTER', 'Single', '', '', '0000-00-00', 'male', '19942611884000226', 'single', 0, 1),
(80, 603, 'Ashraful Abedin Shourab', 'F.F. Jainal Abedin', 'Rozi Bul Bul', 'Farjana akhter', '', '', '0000-00-00', 'female', '19950695102000094', 'single', 0, 1),
(81, 617, 'Polock Roy', 'Pranab Roy', 'Anita Roy', 'N/A', '', '', '0000-00-00', 'male', '19922699501000673', 'single', 0, 1),
(82, 619, 'SHAJIR UDDIN HAIDER', 'SHAMSUDDIN HAIDER', 'RAWSHAN ARA BEGUM', 'NO ONE', '', '', '0000-00-00', 'female', '19952694813000240', 'single', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_perticipant`
--

CREATE TABLE `tbl_perticipant` (
  `perticipantsl` int(11) NOT NULL,
  `sessionid` int(11) NOT NULL,
  `perticipantid` int(11) NOT NULL,
  `reportingtime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_perticipant`
--

INSERT INTO `tbl_perticipant` (`perticipantsl`, `sessionid`, `perticipantid`, `reportingtime`) VALUES
(1, 0, 105, '11:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ph`
--

CREATE TABLE `tbl_ph` (
  `id` int(11) NOT NULL,
  `datee` date NOT NULL,
  `reason` varchar(255) NOT NULL,
  `day` varchar(25) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_ph`
--

INSERT INTO `tbl_ph` (`id`, `datee`, `reason`, `day`, `type`) VALUES
(1, '2018-02-21', 'Mother Language Day', '', 'Mandatory'),
(2, '2018-02-21', 'Mother Language Day', 'Wednessday', 'Mandatory'),
(3, '2018-03-01', 'labour day', 'Thrusday', 'Volantory');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_philosophy`
--

CREATE TABLE `tbl_philosophy` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `ques1` varchar(255) NOT NULL,
  `ques2` varchar(255) NOT NULL,
  `ques3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_portfolio`
--

CREATE TABLE `tbl_portfolio` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `uId` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_portfolio`
--

INSERT INTO `tbl_portfolio` (`id`, `userId`, `link`, `uId`, `password`, `status`) VALUES
(15, 571, 'https://arnabr.000webhostapp.com/portfolio', '', '', 1),
(14, 538, '', '', '', 1),
(4, 550, 'https://arnabr.000webhostapp.com/portfolio', '', '', 0),
(5, 559, 'https://www.learnictbd.com', '', '', 0),
(6, 546, 'http://rosegarden.edu.bd/', '', '', 0),
(16, 581, 'http://tasmimislam.com/', '', '', 1),
(13, 557, '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `postId` int(11) NOT NULL,
  `postName` varchar(255) NOT NULL,
  `postCode` int(11) NOT NULL,
  `thId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`postId`, `postName`, `postCode`, `thId`) VALUES
(1, 'Dhamrai', 1350, 1),
(2, 'Kamalpur', 1351, 1),
(3, 'Keraniganj', 1310, 3),
(4, 'Dhaka Jute Mills', 1311, 3),
(5, 'Ati', 1312, 3),
(6, 'Kalatia', 1313, 3),
(7, 'Amin Bazar', 1348, 5),
(8, 'Dairy Farm', 1341, 5),
(9, 'EPZ', 1349, 5),
(10, 'Jahangirnagar Univer', 1342, 5),
(11, 'Kashem Cotton Mills', 1346, 5),
(12, 'Rajphulbaria', 1347, 5),
(13, 'Savar', 1340, 5),
(14, 'Savar Canttonment', 1344, 5),
(15, 'Saver P.A.T.C', 1343, 5),
(16, 'Shimulia', 1345, 5),
(17, 'Agla', 1323, 4),
(18, 'Churain', 1325, 4),
(19, 'Daudpur', 1322, 4),
(20, 'Hasnabad', 1321, 4),
(21, 'Khalpar', 1324, 4),
(22, 'Nawabganj', 1320, 4),
(23, 'B.O.F', 1703, 6),
(24, 'B.R.R', 1701, 6),
(25, 'Chandna', 1702, 6),
(26, 'Gazipur Sadar', 1700, 6),
(27, 'National University', 1704, 6),
(28, 'Kaliakaar', 1750, 7),
(29, 'Safipur', 1751, 7),
(30, 'Kaliganj', 1720, 8),
(31, 'Pubail', 1721, 8),
(32, 'Santanpara', 1722, 8),
(33, 'Vaoal Jamalpur', 1723, 8),
(34, 'kapashia', 1730, 9),
(35, 'Barmi', 1743, 10),
(36, 'Bashamur', 1747, 10),
(37, 'Boubi', 1748, 10),
(38, 'Kawraid', 1745, 10),
(39, 'Satkhamair', 1744, 10),
(40, 'Sreepur', 1740, 10),
(41, 'Rajendrapur', 1741, 10),
(42, 'Rajendrapur Canttome', 1742, 10),
(43, 'Narayanganj Sadar', 1400, 11),
(44, 'Bhulta', 1462, 13),
(45, 'Kanchan', 1461, 13),
(46, 'Murapara', 1464, 13),
(47, 'Nagri', 1463, 13),
(48, 'Rupganj', 1460, 13),
(49, 'Bandar', 1410, 14),
(50, 'BIDS', 1413, 14),
(51, 'D.C Mills', 1411, 14),
(52, 'Madanganj', 1414, 14),
(53, 'Madanganj', 1412, 14),
(54, 'Araihazar', 1450, 15),
(55, 'Gopaldi', 1451, 15),
(56, 'Karimpur', 1605, 16),
(57, 'Madhabdi', 1604, 16),
(58, 'Narshingdi College', 1602, 16),
(59, 'Narshingdi Sadar', 1600, 16),
(60, 'Panchdona', 1603, 16),
(61, 'UMC Jute Mills', 1601, 16),
(62, 'Char Sindhur', 1612, 20),
(63, 'Ghorashal', 1613, 20),
(64, 'Ghorashal Urea Facto', 1611, 20),
(65, 'Palash', 1610, 20),
(66, 'Kagmari', 1901, 35),
(67, 'Korotia', 1903, 35),
(68, 'Purabari', 1904, 35),
(69, 'Santosh', 1902, 35),
(70, 'Tangail Sadar', 1900, 35),
(71, 'Anawara', 4376, 159),
(72, 'Battali', 4378, 159),
(73, 'Paroikora', 4377, 159),
(74, 'Boalkhali', 4366, 158),
(75, 'Charandwip', 4369, 158),
(76, 'Iqbal Park', 4365, 158),
(77, 'Kadurkhal', 4368, 158),
(78, 'Kanungopara', 4363, 158),
(79, 'Sakpura', 4367, 158),
(80, 'Saroatoli', 4364, 158),
(81, 'Bhandar Sharif', 4352, 162),
(82, 'Fatikchhari', 4350, 162),
(83, 'Harualchhari', 4354, 162),
(84, 'Najirhat', 4353, 162),
(85, 'Nanupur', 4351, 162),
(86, 'Narayanhat', 4355, 162),
(87, 'Chitt.University', 4331, 163),
(88, 'Fatahabad', 4335, 163),
(89, 'Gorduara', 4332, 163),
(90, 'Hathazari', 4330, 163),
(91, 'Katirhat', 4333, 163),
(92, 'Madrasa', 4339, 163),
(93, 'Mirzapur', 4334, 163),
(94, 'Nuralibari', 4337, 163),
(95, 'Yunus Nagar', 4338, 163),
(96, 'Cox''s Bazar Sadar', 4700, 178),
(97, 'Eidga', 4702, 178),
(98, 'Zhilanja', 4701, 178),
(99, 'Baiddyabal Gharia', 6402, 135),
(100, 'Digapatia', 6401, 135),
(101, 'Madhnagar', 6403, 135),
(102, 'Natore Sadar', 6400, 135),
(103, 'Chhoysuti', 2341, 30),
(104, 'Kaliarchar', 2340, 30),
(105, 'Madhupur', 1996, 40),
(106, 'Dhonbari', 1997, 40),
(107, 'Nagarkanda', 7840, 50),
(108, 'Talma', 7841, 50),
(109, 'Baliakandi', 7730, 60),
(110, 'Nalia', 7731, 60),
(111, 'Jonapur', 8133, 70),
(112, 'Kashiani', 8130, 70),
(113, 'Ramdia College', 8131, 70),
(114, 'Ratoil', 8132, 70),
(115, 'Khodmohanpur', 6220, 90),
(116, 'Belkuchi', 6740, 100),
(117, 'Enayetpur', 6751, 100),
(118, 'Rajapur', 6742, 100),
(119, 'Sohagpur', 6741, 100),
(120, 'Sthal', 6752, 100),
(121, 'Belabo', 1640, 17),
(122, 'Shibpur', 1620, 18),
(123, 'Bazar Hasnabad', 1631, 19),
(124, 'Radhaganj bazar', 1632, 19),
(125, 'Raypura', 1630, 19),
(126, 'Hatirdia', 1651, 21),
(127, 'Katabaria', 1652, 21),
(128, 'Monohordi', 1650, 21),
(129, 'Astagram', 2380, 22),
(130, 'Bajitpur', 2336, 23),
(131, 'Laksmipur', 2338, 23),
(132, 'Sararchar', 2337, 23),
(133, 'Bhairab', 2350, 24),
(134, 'Hossenpur', 2320, 25),
(135, 'Itna', 2390, 26),
(136, 'Karimganj', 2310, 27),
(137, 'Gochhihata', 2331, 28),
(138, 'Katiadi', 2330, 28),
(139, 'Kishoreganj S.Mills', 2301, 29),
(140, 'Kishoreganj Sadar', 2300, 29),
(141, 'Maizhati', 2302, 29),
(142, 'Nilganj', 2303, 29),
(143, 'Abdullahpur', 2371, 31),
(144, 'MIthamoin', 2370, 31),
(145, 'Nikli', 2360, 32),
(146, 'Pakundia', 2326, 33),
(147, 'Tarail', 2316, 34),
(148, 'Dhuburia', 1937, 38),
(149, 'Nagarpur', 1936, 38),
(150, 'Salimabad', 1938, 38),
(151, 'Gorai', 1941, 39),
(152, 'Jarmuki', 1944, 39),
(153, 'M.C. College', 1942, 39),
(154, 'Mirzapur', 1940, 39),
(155, 'Mohera', 1945, 39),
(156, 'Warri paikpara', 1943, 39),
(157, 'Ballabazar', 1973, 41),
(158, 'Elinga', 1974, 41),
(159, 'Kalihati', 1970, 41),
(160, 'Nagarbari', 1977, 41),
(161, 'Nagarbari SO', 1976, 41),
(162, 'Nagbari', 1972, 41),
(163, 'Palisha', 1975, 41),
(164, 'Rajafair', 1971, 41),
(165, 'D. Pakutia', 1982, 42),
(166, 'Dhalapara', 1983, 42),
(167, 'Ghatail', 1980, 42),
(168, 'Lohani', 1984, 42),
(169, 'Zahidganj', 1981, 42),
(170, 'Delduar', 1910, 43),
(171, 'Elasin', 1913, 43),
(172, 'Hinga Nagar', 1914, 43),
(173, 'Jangalia', 1911, 43),
(174, 'Lowhati', 1915, 43),
(175, 'Patharail', 1912, 43),
(176, 'Bhuapur', 1960, 44),
(177, 'Basail', 1920, 45),
(178, 'Gopalpur', 1990, 46),
(179, 'Hemnagar', 1992, 46),
(180, 'Jhowail', 1991, 46),
(181, 'Ambikapur', 7802, 47),
(182, 'Baitulaman Politecni', 7803, 47),
(183, 'Faridpursadar', 7800, 47),
(184, 'Kanaipur', 7801, 47),
(185, 'Bishwa jaker Manjil', 7822, 49),
(186, 'Hat Krishapur', 7821, 49),
(187, 'Sadarpur', 7820, 49),
(188, 'Kamarkali', 7851, 51),
(189, 'Madukhali', 7850, 51),
(190, 'Charbadrashan', 7810, 52),
(191, 'Boalmari', 7860, 53),
(192, 'Rupatpat', 7861, 53),
(193, 'Bhanga', 7830, 54),
(194, 'Alfadanga', 7870, 55),
(195, 'Goalanda', 7710, 56),
(196, 'Khankhanapur', 7711, 56),
(197, 'Rajbari Sadar', 7700, 56),
(198, 'Mrigibazar', 7723, 58),
(199, 'Pangsha', 7720, 58),
(200, 'Ramkol', 7721, 58),
(201, 'Ratandia', 7722, 58),
(202, 'Kathakhali', 1503, 61),
(203, 'Mirkadim', 1502, 61),
(204, 'Munshiganj Sadar', 1500, 61),
(205, 'Rikabibazar', 1501, 61),
(206, 'Gouragonj', 1534, 62),
(207, 'Haldia SO', 1532, 62),
(208, 'Haridia DESO', 1533, 62),
(209, 'Korhati', 1531, 62),
(210, 'Lohajang', 1530, 62),
(211, 'Medini Mandal EDSO', 1535, 62),
(212, 'Ichapur', 1542, 63),
(213, 'Kola', 1541, 63),
(214, 'Malkha Nagar', 1543, 63),
(215, 'Shekher Nagar', 1544, 63),
(216, 'Sirajdikhan', 1540, 63),
(217, 'Baghra', 1557, 64),
(218, 'Barikhal', 1551, 64),
(219, 'Bhaggyakul', 1558, 64),
(220, 'Hashara', 1553, 64),
(221, 'Kolapara', 1554, 64),
(222, 'Kumarbhog', 1555, 64),
(223, 'Mazpara', 1552, 64),
(224, 'Srinagar', 1550, 64),
(225, 'Vaggyakul SO', 1556, 64),
(226, 'Gajaria', 1510, 65),
(227, 'Hossendi', 1511, 65),
(228, 'Rasulpur', 1512, 65),
(229, 'Bajrajugini', 1523, 66),
(230, 'Baligao', 1522, 66),
(231, 'Betkahat', 1521, 66),
(232, 'Dighirpar', 1525, 66),
(233, 'Hasail', 1524, 66),
(234, 'Pura', 1527, 66),
(235, 'Pura EDSO', 1526, 66),
(236, 'Tangibari', 1520, 66),
(237, 'Barfa', 8102, 67),
(238, 'Chandradighalia', 8103, 67),
(239, 'Gopalganj Sadar', 8100, 67),
(240, 'Ulpur', 8101, 67),
(241, 'Patgati', 8121, 68),
(242, 'Tungipara', 8120, 68),
(243, 'Batkiamari', 8141, 69),
(244, 'Khandarpara', 8142, 69),
(245, 'Maksudpur', 8140, 69),
(246, 'Jonapur', 8133, 70),
(247, 'Kashiani', 8130, 70),
(248, 'Ramdia College', 8131, 70),
(249, 'Ratoil', 8132, 70),
(250, 'Charmugria', 7901, 72),
(251, 'Habiganj', 7903, 72),
(252, 'Kulpaddi', 7902, 72),
(253, 'Madaripur Sadar', 7900, 72),
(254, 'Mustafapur', 7904, 72),
(255, 'Khalia', 7911, 73),
(256, 'Rajoir', 7910, 73),
(257, 'Kalkini', 7920, 74),
(258, 'Sahabrampur', 7921, 74),
(259, 'Barangail', 1804, 76),
(260, 'Gorpara', 1802, 76),
(261, 'Mahadebpur', 1803, 76),
(262, 'Manikganj Bazar', 1801, 76),
(263, 'Manikganj Sadar', 1800, 76),
(264, 'Baira', 1821, 77),
(265, 'joymantop', 1822, 77),
(266, 'Singair', 1820, 77),
(267, 'Aricha', 1851, 78),
(268, 'Shibaloy', 1850, 78),
(269, 'Tewta', 1852, 78),
(270, 'Uthli', 1853, 78),
(271, 'Baliati', 1811, 79),
(272, 'Saturia', 1810, 79),
(273, 'Gheor', 1840, 81),
(274, 'Doulatpur', 1860, 82),
(275, 'Angaria', 8001, 83),
(276, 'Chikandi', 8002, 83),
(277, 'Shariatpur Sadar', 8000, 83),
(278, 'Jajira', 8010, 85),
(279, 'Bhozeshwar', 8021, 86),
(280, 'Gharisar', 8022, 86),
(281, 'Kartikpur', 8024, 86),
(282, 'Naria', 8020, 86),
(283, 'Upshi', 8023, 86),
(284, 'Gosairhat', 8050, 87),
(285, 'Damudhya', 8040, 88),
(286, 'Bhedorganj', 8030, 89),
(287, 'Arani', 6281, 91),
(288, 'Bagha', 6280, 91),
(289, 'Charghat', 6270, 91),
(290, 'Sarda', 6271, 92),
(291, 'Durgapur', 6240, 94),
(292, 'Puthia', 6260, 95),
(293, 'Tanor', 6230, 96),
(294, 'Godagari', 6290, 97),
(295, 'Premtoli', 6291, 97),
(296, 'Raipur', 6701, 99),
(297, 'Rashidabad', 6702, 99),
(298, 'Sirajganj Sadar', 6700, 99),
(299, 'Gandail', 6712, 102),
(300, 'Kazipur', 6710, 102),
(301, 'Shuvgachha', 6711, 102),
(302, 'Lahiri Mohanpur', 6762, 105),
(303, 'Salap', 6763, 105),
(304, 'Ullapara', 6760, 105),
(305, 'Ullapara R.S', 6761, 105),
(306, 'Tarash', 6780, 106),
(307, 'Jamirta', 6772, 107),
(308, 'Kaijuri', 6773, 107),
(309, 'Porjana', 6771, 107),
(310, 'Shahjadpur', 6770, 107),
(311, 'Adamdighi', 5890, 108),
(312, 'Nasharatpur', 5892, 108),
(313, 'Santahar', 5891, 108),
(314, 'Bogra Canttonment', 5801, 109),
(315, 'Bogra Sadar', 5800, 109),
(316, 'Dhunat', 5850, 110),
(317, 'Gosaibari', 5851, 110),
(318, 'Dupchachia', 5880, 111),
(319, 'Talora', 5881, 111),
(320, 'Gabtoli', 5820, 112),
(321, 'Sukhanpukur', 5821, 112),
(322, 'Kahalu', 5870, 113),
(323, 'Nandigram', 5860, 114),
(324, 'Chandan Baisha', 5831, 115),
(325, 'Sariakandi', 5830, 115),
(326, 'Chandaikona', 5841, 117),
(327, 'Palli Unnyan Accademy', 5842, 117),
(328, 'Sherpur', 5840, 117),
(329, 'Shibganj', 5810, 118),
(330, 'Sonatola', 5826, 119),
(331, 'Hamayetpur', 6602, 120),
(332, 'Kaliko Cotton Mills', 6601, 120),
(333, 'Pabna Sadar', 6600, 120),
(334, 'Bera', 6680, 121),
(335, 'Kashinathpur', 6682, 121),
(336, 'Nakalia', 6681, 121),
(337, 'Puran Bharenga', 6683, 121),
(338, 'Chatmohar', 6630, 123),
(339, 'Sagarkandi', 6661, 125),
(340, 'Sujanagar', 6660, 125),
(341, 'Dhapari', 6621, 127),
(342, 'Ishwardi', 6620, 127),
(343, 'Pakshi', 6622, 127),
(344, 'Rajapur', 6623, 127),
(345, 'Bhangura', 6640, 128),
(346, 'Sathia', 6670, 129),
(347, 'Amnura', 6303, 130),
(348, 'Chapainawbganj Sadar', 6300, 130),
(349, 'Rajarampur', 6301, 130),
(350, 'Ramchandrapur', 6302, 130),
(351, 'Mandumala', 6311, 131),
(352, 'Nachol', 6310, 131),
(353, 'Kansart', 6341, 132),
(354, 'Manaksha', 6342, 132),
(355, 'Shibganj U.P.O', 6340, 132),
(356, 'Bholahat', 6330, 133),
(357, 'Hatgurudaspur', 6440, 136),
(358, 'Singra', 6450, 139),
(359, 'Joypurhat Sadar', 5900, 142),
(360, 'kalai', 5930, 143),
(361, 'Akklepur', 5940, 144),
(362, 'jamalganj', 5941, 144),
(363, 'Tilakpur', 5942, 144),
(364, 'Panchbibi', 5910, 145),
(365, 'Khetlal', 5920, 146),
(366, 'Naogaon Sadar', 6500, 147),
(367, 'Dhamuirhat', 6580, 150),
(368, 'Badalgachhi', 6570, 151),
(369, 'Mahadebpur', 6530, 152),
(370, 'Niamatpur', 6520, 154),
(371, 'Patnitala', 6540, 155),
(372, 'Moduhil', 6561, 156),
(373, 'Sapahar', 6560, 156),
(374, 'Kashimpur', 6591, 157),
(375, 'Raninagar', 6590, 157),
(376, 'Chunti', 4398, 164),
(377, 'Lohagara', 4396, 164),
(378, 'Padua', 4397, 164),
(379, 'Abutorab', 4321, 165),
(380, 'Azampur', 4325, 165),
(381, 'Bharawazhat', 4323, 165),
(382, 'Darrogahat', 4322, 165),
(383, 'Joarganj', 4324, 165),
(384, 'Korerhat', 4327, 165),
(385, 'Mirsharai', 4320, 165),
(386, 'Mohazanhat', 4328, 165),
(387, 'Budhpara', 4371, 166),
(388, 'Patiya Head Office', 4370, 166),
(389, 'Dhamair', 4361, 167),
(390, 'Rangunia', 4360, 167),
(391, 'B.I.T Post Office', 4349, 168),
(392, 'Beenajuri', 4341, 168),
(393, 'Dewanpur', 4347, 168),
(394, 'Fatepur', 4345, 168),
(395, 'Gahira', 4343, 168),
(396, 'Guzra Noapara', 4346, 168),
(397, 'jagannath Hat', 4344, 168),
(398, 'Kundeshwari', 4342, 168),
(399, 'Mohamuni', 4348, 168),
(400, 'Rouzan', 4340, 168),
(401, 'Barabkunda', 4312, 169),
(402, 'Baroidhala', 4311, 169),
(403, 'Bawashbaria', 4313, 169),
(404, 'Bhatiari', 4315, 169),
(405, 'Fouzdarhat', 4316, 169),
(406, 'Jafrabad', 4317, 169),
(407, 'Kumira', 4314, 169),
(408, 'Sitakunda', 4310, 169),
(409, 'Sandwip', 4300, 170),
(410, 'Shiberhat', 4301, 170),
(411, 'Urirchar', 4302, 170),
(412, 'Baitul Ijjat', 4387, 171),
(413, 'Bazalia', 4388, 171),
(414, 'Satkania', 4386, 171),
(415, 'Al- Amin Baria Madrasa', 4221, 176),
(416, 'Amin Jute Mills', 4211, 176),
(417, 'Anandabazar', 4215, 176),
(418, 'Bayezid Bostami', 4210, 176),
(419, 'Chandgaon', 4212, 176),
(420, 'Chawkbazar', 4203, 176),
(421, 'Chitt. Cantonment', 4220, 176),
(422, 'Chitt. Customs Acca', 4219, 176),
(423, 'Chitt. Politechnic In', 4209, 176),
(424, 'Chitt. Sailers Colon', 4218, 176),
(425, 'Chittagong Airport', 4205, 176),
(426, 'Chittagong Bandar', 4100, 176),
(427, 'Chittagong GPO', 4000, 176),
(428, 'Export Processing', 4223, 176),
(429, 'Firozshah', 4207, 176),
(430, 'Halishahar', 4216, 176),
(431, 'Halishshar', 4225, 176),
(432, 'Jalalabad', 4214, 176),
(433, 'Jaldia Merine Accademy', 4206, 176),
(434, 'Middle Patenga', 4222, 176),
(435, 'Mohard', 4208, 176),
(436, 'North Halishahar', 4226, 176),
(437, 'North Katuli', 4217, 176),
(438, 'Pahartoli', 4202, 176),
(439, 'Patenga', 4204, 176),
(440, 'Rampura TSO', 4224, 176),
(441, 'Wazedia', 4213, 176),
(442, 'Kutubdia', 4720, 180),
(443, 'Ramu', 4730, 182),
(444, 'Hnila', 4761, 184),
(445, 'St.Martin', 4762, 184),
(446, 'Teknaf', 4760, 184),
(447, 'Ukhia', 4750, 185),
(448, 'Khagrachari Sadar', 4400, 186),
(449, 'Diginala', 4420, 187),
(450, 'Laxmichhari', 4470, 188),
(451, 'Mahalchhari', 4430, 189),
(452, 'Ramghar Head Office', 4440, 190),
(453, 'Manikchhari', 4460, 191),
(454, 'Matiranga', 4450, 192),
(455, 'Panchhari', 4410, 193),
(456, 'Rangamati Sadar', 4500, 194),
(457, 'Barakal', 4570, 197),
(458, 'Bilaichhari', 4550, 199),
(459, 'Chandraghona', 4531, 200),
(460, 'Kaptai', 4530, 200),
(461, 'Kaptai Nuton Bazar', 4533, 200),
(462, 'Kaptai Project', 4532, 200),
(463, 'Jarachhari', 4560, 201),
(464, 'Longachh', 4580, 202),
(465, 'Nanichhar', 4520, 203),
(466, 'Rajsthali', 4540, 204),
(467, 'Bandarban Sadar', 4600, 205),
(468, 'Alikadam', 4650, 206),
(469, 'Lama', 4641, 208),
(470, 'Thanchi', 4630, 208),
(471, 'Naikhong', 4660, 209),
(472, 'Ruma', 4620, 210),
(473, 'Roanchhari', 4610, 211),
(474, 'Comilla Contoment', 3501, 212),
(475, 'Comilla Sadar', 3500, 212),
(476, 'Courtbari', 3503, 212),
(477, 'Halimanagar', 3502, 212),
(478, 'Suaganj', 3504, 212),
(479, 'Barura', 3560, 214),
(480, 'Murdafarganj', 3562, 214),
(481, 'Poyalgachha', 3561, 214),
(482, 'Brahmanpara', 3526, 215),
(483, 'Burichang', 3520, 216),
(484, 'Maynamoti bazar', 3521, 216),
(485, 'Chandia', 3510, 217),
(486, 'Madhaiabazar', 3511, 217),
(487, 'Batisa', 3551, 218),
(488, 'Chiora', 3552, 218),
(489, 'Chouddagram', 3550, 218),
(490, 'Dashpara', 3518, 219),
(491, 'Daudkandi', 3516, 219),
(492, 'Eliotganj', 3519, 219),
(493, 'Gouripur', 3517, 219),
(494, 'Barashalghar', 3532, 220),
(495, 'Davidhar', 3530, 220),
(496, 'Dhamtee', 3533, 220),
(497, 'Gangamandal', 3531, 220),
(498, 'Homna', 3546, 221),
(499, 'Bipulasar', 3572, 222),
(500, 'Laksam', 3570, 222),
(501, 'Lakshamanpur', 3571, 222),
(502, 'Bangra', 3543, 223),
(503, 'Companyganj', 3542, 223),
(504, 'Muradnagar', 3540, 223),
(505, 'Pantibazar', 3545, 223),
(506, 'Ramchandarpur', 3541, 223),
(507, 'Sonakanda', 3544, 223),
(508, 'Chhariabazar', 3582, 224),
(509, 'Dhalua', 3581, 224),
(510, 'Gunabati', 3583, 224),
(511, 'Langalkot', 3580, 224),
(512, 'Chaprashir Hat', 3811, 228),
(513, 'Char Jabbar', 3812, 228),
(514, 'Charam Tua', 3809, 228),
(515, 'Din Monir Hat', 3803, 228),
(516, 'Kabirhat', 3807, 228),
(517, 'Khalifar Hat', 3808, 228),
(518, 'Mriddarhat', 3806, 228),
(519, 'Noakhali College', 3801, 228),
(520, 'Noakhali Sadar', 3800, 228),
(521, 'Pak Kishoreganj', 3804, 228),
(522, 'Sonapur', 3802, 228),
(523, 'Alaiarpur', 3831, 229),
(524, 'Amisha Para', 3847, 229),
(525, 'Banglabazar', 3822, 229),
(526, 'Bazra', 3824, 229),
(527, 'Begumganj', 3820, 229),
(528, 'Bhabani Jibanpur', 3837, 229),
(529, 'Choumohani', 3821, 229),
(530, 'Dauti', 3843, 229),
(531, 'Durgapur', 3848, 229),
(532, 'Gopalpur', 3828, 229),
(533, 'Jamidar Hat', 3825, 229),
(534, 'Joyag', 3844, 229),
(535, 'Joynarayanpur', 3829, 229),
(536, 'Khalafat Bazar', 3833, 229),
(537, 'Khalishpur', 3842, 229),
(538, 'Maheshganj', 3838, 229),
(539, 'Mir Owarishpur', 3823, 229),
(540, 'Nadona', 3839, 229),
(541, 'Nandiapara', 3841, 229),
(542, 'Oachhekpur', 3835, 229),
(543, 'Rajganj', 3834, 229),
(544, 'Sonaimuri', 3827, 229),
(545, 'Tangirpar', 3832, 229),
(546, 'Thanar Hat', 3845, 229),
(547, 'Bansa Bazar', 3879, 230),
(548, 'Bodalcourt', 3873, 230),
(549, 'Chatkhil', 3870, 230),
(550, 'Dosh Gharia', 3878, 230),
(551, 'Karihati', 3877, 230),
(552, 'Khilpara', 3872, 230),
(553, 'Palla', 3871, 230),
(554, 'Rezzakpur', 3874, 230),
(555, 'Sahapur', 3881, 230),
(556, 'Sampara', 3882, 230),
(557, 'Shingbahura', 3883, 230),
(558, 'Solla', 3875, 230),
(559, 'Beezbag', 3862, 231),
(560, 'Chatarpaia', 3864, 231),
(561, 'Kallyandi', 3861, 231),
(562, 'Kankirhat', 3863, 231),
(563, 'Senbag', 3860, 231),
(564, 'T.P. Lamua', 3865, 231),
(565, 'Afazia', 3891, 233),
(566, 'Hatiya', 3890, 233),
(567, 'Tamoraddi', 3892, 233),
(568, 'Amani Lakshimpur', 3709, 237),
(569, 'Bhabaniganj', 3702, 237),
(570, 'Chandraganj', 3708, 237),
(571, 'Choupalli', 3707, 237),
(572, 'Dalal Bazar', 3701, 237),
(573, 'Duttapara', 3706, 237),
(574, 'Keramatganj', 3704, 237),
(575, 'Lakshimpur Sadar', 3700, 237),
(576, 'Mandari', 3703, 237),
(577, 'Rupchara', 3705, 237),
(578, 'Alipur', 3721, 238),
(579, 'Dolta', 3725, 238),
(580, 'Kanchanpur', 3723, 238),
(581, 'Naagmud', 3724, 238),
(582, 'Panpara', 3722, 238),
(583, 'Ramganj', 3720, 238),
(584, 'Bhuabari', 3714, 239),
(585, 'Haydarganj', 3713, 239),
(586, 'Nagerdighirpar', 3712, 239),
(587, 'Rakhallia', 3711, 239),
(588, 'Raypur', 3710, 239),
(589, 'Char Alexgander', 3730, 241),
(590, 'Hajirghat', 3731, 241),
(591, 'Ramgatirhat', 3732, 241),
(592, 'Baburhat', 3602, 242),
(593, 'Chandpur Sadar', 3600, 242),
(594, 'Puranbazar', 3601, 242),
(595, 'Sahatali', 3603, 242),
(596, 'Chandra', 3651, 243),
(597, 'Faridganj', 3650, 243),
(598, 'Gridkaliandia', 3653, 243),
(599, 'Islampur Shah Isain', 3655, 243),
(600, 'Rampurbazar', 3654, 243),
(601, 'Rupsha', 3652, 243),
(602, 'Gandamara', 3661, 244),
(603, 'Hayemchar', 3660, 244),
(604, 'Bolakhal', 3611, 245),
(605, 'Hajiganj', 3610, 245),
(606, 'Chotoshi', 3623, 246),
(607, 'Islamia Madrasha', 3624, 246),
(608, 'Khilabazar', 3621, 246),
(609, 'Pashchim Kherihar Al', 3622, 246),
(610, 'Shahrasti', 3620, 246),
(611, 'Kachua', 3630, 247),
(612, 'Pak Shrirampur', 3631, 247),
(613, 'Rahima Nagar', 3632, 247),
(614, 'Shachar', 3633, 247),
(615, 'Kalipur', 3642, 248),
(616, 'Matlobganj', 3640, 248),
(617, 'Mohanpur', 3641, 248),
(618, 'Fazilpur', 3901, 250),
(619, 'Feni Sadar', 3900, 250),
(620, 'Laskarhat', 3903, 250),
(621, 'Sharshadie', 3902, 250),
(622, 'Chhagalnaia', 3910, 251),
(623, 'Daraga Hat', 3912, 251),
(624, 'Maharajganj', 3911, 251),
(625, 'Puabashimulia', 3913, 251),
(626, 'Chhilonia', 3922, 252),
(627, 'Dagonbhuia', 3920, 252),
(628, 'Dudmukha', 3921, 252),
(629, 'Rajapur', 3923, 252),
(630, 'Fulgazi', 3942, 254),
(631, 'Munshirhat', 3943, 254),
(632, 'Pashurampur', 3940, 254),
(633, 'Shuarbazar', 3941, 254),
(634, 'Ahmadpur', 3932, 255),
(635, 'Kazirhat', 3933, 255),
(636, 'Motiganj', 3931, 255),
(637, 'Sonagazi', 3930, 255),
(638, 'Ashuganj', 3402, 256),
(639, 'Ashuganj Share', 3403, 256),
(640, 'Brahamanbaria Sadar', 3400, 256),
(641, 'Poun', 3404, 256),
(642, 'Talshahar', 3401, 256),
(643, 'Akhaura', 3450, 257),
(644, 'Azampur', 3451, 257),
(645, 'Gangasagar', 3452, 257),
(646, 'Banchharampur', 3420, 258),
(647, 'Chandidar', 3462, 259),
(648, 'Chargachh', 3463, 259),
(649, 'Gopinathpur', 3464, 259),
(650, 'Kasba', 3460, 259),
(651, 'Kuti', 3461, 259),
(652, 'Jibanganj', 3419, 260),
(653, 'Kaitala', 3417, 260),
(654, 'Laubfatehpur', 3411, 260),
(655, 'Nabinagar', 3410, 260),
(656, 'Rasullabad', 3412, 260),
(657, 'Ratanpur', 3414, 260),
(658, 'Salimganj', 3418, 260),
(659, 'Shahapur', 3415, 260),
(660, 'Shamgram', 3413, 260),
(661, 'Fandauk', 3441, 261),
(662, 'Nasirnagar', 3440, 261),
(663, 'Chandura', 3432, 505),
(664, 'Sarial', 3430, 505),
(665, 'Shahbajpur', 3431, 505),
(666, 'Birahimpur', 3106, 264),
(667, 'Jalalabad', 3107, 264),
(668, 'Jalalabad Cantoment', 3104, 264),
(669, 'Kadamtali', 3111, 264),
(670, 'Kamalbazer', 3112, 264),
(671, 'Khadimnagar', 3103, 264),
(672, 'Lalbazar', 3113, 264),
(673, 'Mogla', 3108, 264),
(674, 'Ranga Hajiganj', 3109, 264),
(675, 'Shahajalal Science & Technology University', 3114, 264),
(676, 'Silam', 3105, 264),
(677, 'Sylhet Sadar', 3100, 264),
(678, 'Sylhet Biman Bondar', 3102, 264),
(679, 'Sylhet Cadet College', 3101, 264),
(680, 'Balaganj', 3120, 265),
(681, 'Begumpur', 3125, 265),
(682, 'Brahman Shashon', 3122, 265),
(683, 'Gaharpur', 3128, 265),
(684, 'Goala Bazar', 3124, 265),
(685, 'Karua', 3121, 265),
(686, 'Kathal Khair', 3127, 265),
(687, 'Natun Bazar', 3129, 265),
(688, 'Omarpur', 3126, 265),
(689, 'Tajpur', 3123, 265),
(690, 'Bianibazar', 3170, 266),
(691, 'Churkai', 3175, 266),
(692, 'jaldup', 3171, 266),
(693, 'Kurar bazar', 3173, 266),
(694, 'Mathiura', 3172, 266),
(695, 'Salia bazar', 3174, 266),
(696, 'Bishwanath', 3130, 267),
(697, 'Dashghar', 3131, 267),
(698, 'Deokalas', 3133, 267),
(699, 'Doulathpur', 3132, 267),
(700, 'Singer kanch', 3134, 267),
(701, 'Chiknagul', 3152, 268),
(702, 'Goainhat', 3150, 268),
(703, 'Jaflong', 3151, 268),
(704, 'Kompanyganj', 3140, 269),
(705, 'Fenchuganj', 3116, 270),
(706, 'Fenchuganj SareKarkh', 3117, 270),
(707, 'banigram', 3164, 271),
(708, 'Chandanpur', 3165, 271),
(709, 'Dakkhin Bhadashore', 3162, 271),
(710, 'Dhaka Dakkhin', 3161, 271),
(711, 'Gopalgannj', 3160, 271),
(712, 'Ranaping', 3163, 271),
(713, 'Jainthapur', 3156, 272),
(714, 'Chatulbazar', 3181, 273),
(715, 'Gachbari', 3183, 273),
(716, 'Kanaighat', 3180, 273),
(717, 'Manikganj', 3182, 273),
(718, 'Ichhamati', 3191, 275),
(719, 'Jakiganj', 3190, 275),
(720, 'Pagla', 3001, 277),
(721, 'Patharia', 3002, 277),
(722, 'Sunamganj Sadar', 3000, 277),
(723, 'Bishamsapur', 3010, 278),
(724, 'Chhatak', 3080, 279),
(725, 'Chhatak Cement Factory', 3081, 279),
(726, 'Chhatak Paper Mills', 3082, 279),
(727, 'Chourangi Bazar', 3893, 279),
(728, 'Gabindaganj', 3083, 279),
(729, 'Gabindaganj Natun Bazar', 3084, 279),
(730, 'Islamabad', 3088, 279),
(731, 'jahidpur', 3087, 279),
(732, 'Khurma', 3085, 279),
(733, 'Moinpur', 3086, 279),
(734, 'Dhirai Chandpur', 3040, 281),
(735, 'Jagdal', 3041, 281),
(736, 'Atuajan', 3062, 282),
(737, 'Hasan Fatemapur', 3063, 282),
(738, 'Jagnnathpur', 3060, 282),
(739, 'Rasulganj', 3064, 282),
(740, 'Shiramsi', 3065, 282),
(741, 'Syedpur', 3061, 282),
(742, 'Duara bazar', 3070, 284),
(743, 'Tahirpur', 3030, 287),
(744, 'Afrozganj', 3203, 288),
(745, 'Barakapan', 3201, 288),
(746, 'Monumukh', 3202, 288),
(747, 'Moulvibazar Sadar', 3200, 288),
(748, 'Baralekha', 3250, 289),
(749, 'Dhakkhinbag', 3252, 289),
(750, 'Juri', 3251, 289),
(751, 'Purbashahabajpur', 3253, 289),
(752, 'Kamalganj', 3220, 290),
(753, 'Keramatnaga', 3221, 290),
(754, 'Munshibazar', 3224, 290),
(755, 'Patrakhola', 3222, 290),
(756, 'Shamsher Nagar', 3223, 290),
(757, 'Baramchal', 3237, 292),
(758, 'Kajaldhara', 3234, 292),
(759, 'Karimpur', 3235, 292),
(760, 'Kulaura', 3230, 292),
(761, 'Langla', 3232, 292),
(762, 'Prithimpasha', 3233, 292),
(763, 'Tillagaon', 3231, 292),
(764, 'Rajnagar', 3240, 293),
(765, 'Kalighat', 3212, 294),
(766, 'Khejurichhara', 3213, 294),
(767, 'Narain Chora', 3211, 294),
(768, 'Demra', 1360, 506),
(769, 'Matuail', 1362, 506),
(770, 'Sarulia', 1361, 506),
(771, 'Dhaka CantonmentTSO', 1206, 507),
(772, 'Jigatala TSO', 1209, 508),
(773, 'Banani TSO', 1213, 509),
(774, 'Gulshan Model Town', 1212, 509),
(775, 'Dhania TSO', 1232, 510),
(776, 'Joypara', 1330, 511),
(777, 'Narisha', 1332, 511),
(778, 'Palamganj', 1331, 511),
(779, 'KhilgaonTSO', 1219, 512),
(780, 'KhilkhetTSO', 1229, 513),
(781, 'Posta TSO', 1211, 514),
(782, 'Mirpur TSO', 1216, 515),
(783, 'Mohammadpur Housing', 1207, 516),
(784, 'Sangsad BhabanTSO', 1225, 516),
(785, 'BangabhabanTSO', 1222, 517),
(786, 'DilkushaTSO', 1223, 517),
(787, 'New Market TSO', 1205, 518),
(788, 'Dhaka GPO', 1000, 519),
(789, 'Shantinagr TSO', 1217, 520),
(790, 'Basabo TSO', 1214, 521),
(791, 'Dhaka Sadar HO', 1100, 522),
(792, 'Gendaria TSO', 1204, 522),
(793, 'Wari TSO', 1203, 522),
(794, 'Tejgaon TSO', 1215, 523),
(795, 'Dhaka Politechnic', 1208, 524),
(796, 'Uttara Model Twon TSO', 1230, 525),
(797, 'Gopaya', 3302, 295),
(798, 'Hobiganj Sadar', 3300, 295),
(799, 'Shaestaganj', 3301, 295),
(800, 'Azmireeganj', 3360, 296),
(801, 'Baniachang', 3350, 297),
(802, 'Jatrapasha', 3351, 297),
(803, 'Kadirganj', 3352, 297),
(804, 'Bahubal', 3310, 298),
(805, 'Itakhola', 3331, 299),
(806, 'Madhabpur', 3330, 299),
(807, 'Saihamnagar', 3333, 299),
(808, 'Shahajibazar', 3332, 299),
(809, 'Chandpurbagan', 3321, 300),
(810, 'Chunarughat', 3320, 300),
(811, 'Narapati', 3322, 300),
(812, 'Kalauk', 3340, 301),
(813, 'Lakhai', 3341, 301),
(814, 'Digalbak', 3373, 302),
(815, 'Golduba', 3372, 302),
(816, 'Goplarbazar', 3371, 302),
(817, 'Inathganj', 3374, 302),
(818, 'Nabiganj', 3370, 302),
(819, 'Barishal Sadar', 8200, 303),
(820, 'Bukhainagar', 8201, 303),
(821, 'Jaguarhat', 8206, 303),
(822, 'Kashipur', 8205, 303),
(823, 'Patang', 8204, 303),
(824, 'Saheberhat', 8202, 303),
(825, 'Sugandia', 8203, 303),
(826, 'Agailzhara', 8240, 304),
(827, 'Gaila', 8241, 304),
(828, 'Paisarhat', 8242, 304),
(829, 'Babuganj', 8210, 305),
(830, 'Barishal Cadet', 8216, 305),
(831, 'Chandpasha', 8212, 305),
(832, 'Madhabpasha', 8213, 305),
(833, 'Nizamuddin College', 8215, 305),
(834, 'Rahamatpur', 8211, 305),
(835, 'Thakur Mallik', 8214, 305),
(836, 'Batajor', 8233, 309),
(837, 'Gouranadi', 8230, 309),
(838, 'Kashemabad', 8232, 309),
(839, 'Tarki Bandar', 8231, 309),
(840, 'Dakuarhat', 8223, 310),
(841, 'Dhamura', 8221, 310),
(842, 'Jugirkanda', 8222, 310),
(843, 'Shikarpur', 8224, 310),
(844, 'Uzirpur', 8220, 310),
(845, 'Langutia', 8274, 311),
(846, 'Laskarpur', 8271, 311),
(847, 'Mahendiganj', 8270, 311),
(848, 'Nalgora', 8273, 311),
(849, 'Ulania', 8272, 311),
(850, 'Charkalekhan', 8252, 312),
(851, 'Kazirchar', 8251, 312),
(852, 'Muladi', 8250, 312),
(853, 'Bhola Sadar', 8300, 313),
(854, 'Joynagar', 8301, 313),
(855, 'Charfashion', 8340, 314),
(856, 'Dularhat', 8341, 314),
(857, 'Keramatganj', 8342, 314),
(858, 'Doulatkhan', 8310, 316),
(859, 'Hajipur', 8311, 316),
(860, 'Daurihat', 8331, 317),
(861, 'Gazaria', 8332, 317),
(862, 'Lalmohan UPO', 8330, 317),
(863, 'Borhanuddin UPO', 8320, 319),
(864, 'Mirzakalu', 8321, 319),
(865, 'Dumkee', 8602, 320),
(866, 'Moukaran', 8601, 320),
(867, 'Patuakhali Sadar', 8600, 320),
(868, 'Rahimabad', 8603, 320),
(869, 'Bagabandar', 8621, 321),
(870, 'Bauphal', 8620, 321),
(871, 'Birpasha', 8622, 321),
(872, 'Kalaia', 8624, 321),
(873, 'Kalishari', 8623, 321),
(874, 'Galachipa', 8640, 322),
(875, 'Gazipur Bandar', 8641, 322),
(876, 'Dashmina', 8630, 323),
(877, 'Hularhat', 8501, 328),
(878, 'Parerhat', 8502, 328),
(879, 'Pirojpur Sadar', 8500, 328),
(880, 'Bhandaria', 8550, 329),
(881, 'Dhaoa', 8552, 329),
(882, 'Kanudashkathi', 8551, 329),
(883, 'Jolagati', 8513, 330),
(884, 'Joykul', 8512, 330),
(885, 'Kaukhali', 8510, 330),
(886, 'Keundia', 8511, 330),
(887, 'Darus Sunnat', 8521, 331),
(888, 'Jalabari', 8523, 331),
(889, 'Kaurikhara', 8522, 331),
(890, 'Swarupkathi', 8520, 331),
(891, 'Betmor Natun Hat', 8565, 333),
(892, 'Gulishakhali', 8563, 333),
(893, 'Halta', 8562, 333),
(894, 'Mathbaria', 8560, 333),
(895, 'Shilarganj', 8566, 333),
(896, 'Tiarkhali', 8564, 333),
(897, 'Tushkhali', 8561, 333),
(898, 'Nazirpur', 8540, 334),
(899, 'Sriramkathi', 8541, 334),
(900, 'Baukathi', 8402, 335),
(901, 'Gabha', 8403, 335),
(902, 'Jhalokathi Sadar', 8400, 335),
(903, 'Nabagram', 8401, 335),
(904, 'Shekherhat', 8404, 335),
(905, 'Beerkathi', 8421, 336),
(906, 'Nalchhiti', 8420, 336),
(907, 'Amua', 8431, 337),
(908, 'Kathalia', 8430, 337),
(909, 'Niamatee', 8432, 337),
(910, 'Shoulajalia', 8433, 337),
(911, 'Rajapur', 8410, 338),
(912, 'Barguna Sadar', 8700, 339),
(913, 'Nali Bandar', 8701, 339),
(914, 'Amtali', 8710, 340),
(915, 'Bamna', 8730, 341),
(916, 'Betagi', 8740, 343),
(917, 'Darul Ulam', 8741, 343),
(918, 'Kakchira', 8721, 344),
(919, 'Patharghata', 8720, 344),
(920, 'Alamnagar', 5402, 345),
(921, 'Mahiganj', 5403, 345),
(922, 'Rangpur Cadet College', 5404, 345),
(923, 'Rangpur Carmiecal College', 5405, 345),
(924, 'Rangpur Sadar', 5400, 345),
(925, 'Rangpur Upa-Shahar', 5401, 345),
(926, 'Badarganj', 5430, 346),
(927, 'Shyampur', 5431, 346),
(928, 'Gangachara', 5410, 347),
(929, 'Haragachh', 5441, 349),
(930, 'Kaunia', 5440, 349),
(931, 'Mithapukur', 5460, 350),
(932, 'Taraganj', 5420, 351),
(933, 'Pirgachha', 5450, 352),
(934, 'Dinajpur Rajbari', 5201, 353),
(935, 'Dinajpur Sadar', 5200, 353),
(936, 'Biral', 5210, 354),
(937, 'Birampur', 5266, 355),
(938, 'Chrirbandar', 5240, 356),
(939, 'Ranirbandar', 5241, 356),
(940, 'Phulbari', 5260, 358),
(941, 'Birganj', 5220, 359),
(942, 'Ghoraghat', 5291, 361),
(943, 'Osmanpur', 5290, 361),
(944, 'Parbatipur', 5250, 363),
(945, 'Khansama', 5230, 364),
(946, 'Pakarhat', 5231, 364),
(947, 'Daudpur', 5281, 365),
(948, 'Gopalpur', 5282, 365),
(949, 'Nababganj', 5280, 365),
(950, 'Gaibandha Sadar', 5700, 366),
(951, 'Bharatkhali', 5761, 367),
(952, 'Phulchhari', 5760, 367),
(953, 'Naldanga', 5711, 368),
(954, 'Saadullapur', 5710, 368),
(955, 'Gobindhaganj', 5740, 369),
(956, 'Mahimaganj', 5741, 369),
(957, 'Bonarpara', 5750, 370),
(958, 'saghata', 5751, 370),
(959, 'Bamandanga', 5721, 371),
(960, 'Sundarganj', 5720, 371),
(961, 'Palashbari', 5730, 372),
(962, 'Kurigram Sadar', 5600, 373),
(963, 'Pandul', 5601, 373),
(964, 'Phulbari', 5680, 373),
(965, 'Chilmari', 5630, 374),
(966, 'Jorgachh', 5631, 374),
(967, 'Bhurungamari', 5670, 375),
(968, 'Rajibpur', 5650, 376),
(969, 'Nazimkhan', 5611, 377),
(970, 'Rajarhat', 5610, 377),
(971, 'Bazarhat', 5621, 378),
(972, 'Ulipur', 5620, 378),
(973, 'Nageshwar', 5660, 380),
(974, 'Roumari', 5640, 381),
(975, 'Kulaghat SO', 5502, 382),
(976, 'Lalmonirhat Sadar', 5500, 382),
(977, 'Moghalhat', 5501, 382),
(978, 'Aditmari', 5510, 383),
(979, 'Baura', 5541, 385),
(980, 'Burimari', 5542, 385),
(981, 'Patgram', 5540, 385),
(982, 'Hatibandha', 5530, 386),
(983, 'Nilphamari Sadar', 5300, 387),
(984, 'Nilphamari Sugar Mil', 5301, 387),
(985, 'Dimla', 5350, 388),
(986, 'Ghaga Kharibari', 5351, 388),
(987, 'Chilahati', 5341, 389),
(988, 'Domar', 5340, 389),
(989, 'Syedpur', 5310, 390),
(990, 'Syedpur Upashahar', 5311, 390),
(991, 'Jaldhaka', 5330, 391),
(992, 'Kishoriganj', 5320, 392),
(993, 'Panchagra Sadar', 5000, 393),
(994, 'Boda', 5010, 395),
(995, 'Tetulia', 5030, 396),
(996, 'Dabiganj', 5020, 397),
(997, 'Chotto Dab', 5040, 527),
(998, 'Mirjapur', 5041, 527),
(999, 'Ruhia', 5103, 398),
(1000, 'Shibganj', 5102, 398);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_postgraduate`
--

CREATE TABLE `tbl_postgraduate` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `uId` int(11) NOT NULL,
  `deid` int(11) NOT NULL,
  `studydeptId` int(11) NOT NULL,
  `minor` int(11) NOT NULL,
  `cgpa` float NOT NULL,
  `pyearid` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_postgraduate`
--

INSERT INTO `tbl_postgraduate` (`id`, `userId`, `uId`, `deid`, `studydeptId`, `minor`, `cgpa`, `pyearid`, `status`) VALUES
(3, 539, 49, 0, 4, 0, 3.68, 7, 0),
(4, 559, 74, 0, 1, 0, 3.26, 4, 1),
(7, 557, 30, 0, 14, 0, 3.66, 1, 1),
(8, 554, 30, 0, 2, 0, 0, 0, 1),
(17, 538, 30, 0, 2, 1, 3.66, 13, 1),
(18, 538, 29, 4, 16, 2, 3.88, 17, 1),
(19, 557, 3, 4, 170, 168, 3.66, 17, 1),
(20, 557, 29, 6, 166, 165, 3.24, 18, 0),
(21, 557, 34, 5, 167, 169, 3.88, 19, 0),
(22, 556, 29, 1, 1, 1, 3.66, 1, 0),
(23, 556, 30, 5, 167, 167, 3.88, 16, 0),
(24, 556, 53, 4, 171, 168, 3.88, 16, 0),
(25, 538, 35, 5, 167, 166, 3.66, 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_processnote`
--

CREATE TABLE `tbl_processnote` (
  `id` int(11) NOT NULL,
  `jId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `sDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `info` int(11) NOT NULL DEFAULT '0',
  `phonecall` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_processnote`
--

INSERT INTO `tbl_processnote` (`id`, `jId`, `userId`, `sDate`, `info`, `phonecall`) VALUES
(15, 1, 499, '2017-10-26 09:20:04', 1, ''),
(16, 1, 499, '2017-10-29 09:49:48', 1, ''),
(17, 1, 499, '2017-10-30 04:13:53', 1, ''),
(18, 15, 531, '2017-11-04 10:46:13', 1, ''),
(19, 1, 538, '2017-11-05 08:08:37', 1, ''),
(20, 1, 538, '2017-11-06 04:45:40', 1, ''),
(21, 1, 538, '2017-11-06 04:47:33', 1, ''),
(22, 1, 540, '2017-11-06 04:48:32', 1, ''),
(23, 1, 532, '2017-11-06 04:48:52', 1, ''),
(24, 15, 531, '2017-11-06 04:49:10', 1, ''),
(25, 15, 531, '2017-11-06 04:49:49', 1, ''),
(26, 1, 528, '2017-11-06 04:51:50', 1, ''),
(27, 1, 527, '2017-11-06 04:52:11', 1, ''),
(28, 1, 524, '2017-11-06 04:53:08', 1, ''),
(29, 1, 523, '2017-11-06 04:53:23', 1, ''),
(30, 1, 522, '2017-11-06 04:54:46', 1, ''),
(31, 8, 502, '2017-11-06 04:55:02', 1, ''),
(32, 1, 517, '2017-11-06 04:55:12', 1, ''),
(33, 1, 516, '2017-11-06 04:55:28', 1, ''),
(34, 1, 511, '2017-11-06 04:58:21', 1, ''),
(35, 1, 476, '2017-11-06 04:59:32', 1, ''),
(36, 1, 497, '2017-11-06 04:59:45', 1, ''),
(37, 1, 496, '2017-11-06 05:00:26', 1, ''),
(38, 1, 492, '2017-11-06 05:00:58', 1, ''),
(39, 1, 491, '2017-11-06 05:01:18', 1, ''),
(40, 1, 488, '2017-11-06 05:01:33', 1, ''),
(41, 1, 538, '2017-11-06 10:46:13', 1, ''),
(42, 1, 544, '2017-11-08 08:53:58', 1, ''),
(43, 1, 496, '2017-11-09 11:25:43', 1, ''),
(44, 1, 497, '2017-11-09 11:26:17', 1, ''),
(45, 1, 476, '2017-11-09 11:28:21', 1, ''),
(46, 15, 531, '2017-11-09 11:28:54', 1, ''),
(47, 1, 532, '2017-11-09 11:29:03', 1, ''),
(48, 1, 540, '2017-11-09 11:29:23', 1, ''),
(49, 1, 527, '2017-11-15 05:36:01', 1, ''),
(50, 1, 516, '2017-11-15 06:26:53', 1, ''),
(51, 1, 523, '2017-11-16 03:43:02', 1, ''),
(52, 1, 485, '2017-11-20 05:31:19', 1, ''),
(53, 1, 490, '2017-11-20 05:35:48', 1, ''),
(54, 1, 496, '2017-11-20 05:38:05', 1, ''),
(55, 0, 558, '2017-11-23 11:18:04', 1, ''),
(56, 0, 559, '2017-11-23 11:18:12', 1, ''),
(57, 0, 552, '2017-11-23 11:18:25', 1, ''),
(58, 0, 559, '2017-11-23 11:23:35', 1, ''),
(59, 0, 558, '2017-11-23 11:23:40', 1, ''),
(60, 0, 552, '2017-11-23 11:24:00', 1, ''),
(61, 0, 548, '2017-11-23 11:24:09', 1, ''),
(62, 0, 546, '2017-11-23 11:24:18', 1, ''),
(63, 0, 564, '2017-11-23 11:37:14', 1, ''),
(64, 0, 563, '2017-11-23 11:37:21', 1, ''),
(65, 0, 560, '2017-11-23 11:38:06', 1, ''),
(66, 0, 555, '2017-11-23 11:38:16', 1, ''),
(67, 0, 564, '2017-11-24 14:15:16', 1, ''),
(68, 0, 563, '2017-11-24 14:16:27', 1, ''),
(69, 0, 562, '2017-11-24 14:16:31', 1, ''),
(70, 0, 561, '2017-11-24 14:16:37', 1, ''),
(71, 0, 560, '2017-11-24 14:16:50', 1, ''),
(72, 0, 553, '2017-11-24 14:17:05', 1, ''),
(73, 0, 551, '2017-11-24 14:17:16', 1, ''),
(74, 1, 565, '2017-11-26 08:11:16', 1, ''),
(75, 1, 532, '2017-11-27 16:57:45', 1, ''),
(76, 1, 485, '2017-11-27 17:00:06', 1, ''),
(77, 1, 490, '2017-11-27 17:04:18', 1, ''),
(78, 1, 496, '2017-11-27 17:06:35', 1, ''),
(79, 1, 483, '2017-11-27 17:07:55', 1, ''),
(80, 1, 523, '2017-11-27 17:12:28', 1, ''),
(81, 1, 565, '2017-11-27 17:13:19', 1, ''),
(82, 0, 566, '2017-11-28 05:41:10', 1, ''),
(83, 0, 564, '2017-11-28 05:41:48', 1, ''),
(84, 0, 567, '2017-12-06 10:21:00', 1, ''),
(85, 0, 566, '2017-12-06 10:21:13', 1, ''),
(86, 0, 564, '2017-12-06 10:21:21', 1, ''),
(87, 15, 560, '2017-12-12 13:43:39', 1, ''),
(88, 15, 570, '2017-12-12 13:43:49', 1, ''),
(89, 0, 572, '2017-12-14 12:39:34', 1, ''),
(90, 0, 573, '2017-12-14 12:39:44', 1, ''),
(91, 0, 574, '2017-12-14 12:39:59', 1, ''),
(92, 0, 575, '2017-12-14 12:40:11', 1, ''),
(93, 0, 576, '2017-12-14 12:40:28', 1, ''),
(94, 0, 577, '2017-12-14 12:40:37', 1, ''),
(95, 0, 578, '2017-12-14 12:40:45', 1, ''),
(96, 1, 571, '2017-12-17 07:35:14', 1, ''),
(97, 1, 496, '2017-12-19 13:59:55', 1, ''),
(98, 1, 576, '2017-12-19 14:00:18', 1, ''),
(99, 1, 496, '2017-12-21 04:52:52', 1, ''),
(100, 1, 576, '2017-12-21 05:04:48', 1, ''),
(101, 15, 590, '2017-12-21 05:08:45', 1, ''),
(102, 15, 590, '2017-12-21 05:09:02', 1, ''),
(103, 0, 614, '2017-12-22 04:09:41', 1, ''),
(104, 0, 615, '2017-12-22 04:10:07', 1, ''),
(105, 0, 616, '2017-12-22 04:10:12', 1, ''),
(106, 1, 571, '2017-12-23 06:49:55', 1, ''),
(107, 1, 576, '2017-12-23 07:53:45', 1, ''),
(108, 1, 571, '2017-12-23 07:57:14', 1, ''),
(109, 1, 571, '2017-12-23 08:04:51', 1, ''),
(110, 1, 576, '2017-12-23 17:55:50', 1, ''),
(111, 1, 576, '2017-12-23 17:55:55', 1, ''),
(112, 1, 496, '2017-12-23 17:56:00', 1, ''),
(113, 0, 620, '2017-12-28 11:13:53', 1, ''),
(114, 0, 618, '2017-12-28 11:14:05', 1, ''),
(115, 1, 0, '2018-01-13 12:30:43', 1, ''),
(116, 1, 0, '2018-01-13 15:06:14', 1, ''),
(117, 0, 620, '2018-01-13 15:06:21', 1, ''),
(118, 1, 619, '2018-01-20 15:01:11', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_p_other`
--

CREATE TABLE `tbl_p_other` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `deid` int(11) NOT NULL,
  `studydeptId` int(11) NOT NULL,
  `minor` int(11) NOT NULL,
  `cgpa` float NOT NULL,
  `pyearid` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_p_other`
--

INSERT INTO `tbl_p_other` (`id`, `userId`, `name`, `deid`, `studydeptId`, `minor`, `cgpa`, `pyearid`, `status`) VALUES
(4, 538, 'Daffodil', 0, 14, 1, 3.88, 1, 1),
(5, 538, 'Govt girls high school', 5, 1, 4, 3.88, 14, 1),
(6, 538, 'Daffodil', 4, 1, 2, 3.66, 15, 0),
(7, 557, 'Daffodil', 4, 177, 176, 4, 16, 1),
(8, 556, 'Daffodil', 6, 167, 167, 3.66, 19, 0),
(9, 556, 'Daffodil', 6, 168, 169, 3.88, 18, 0),
(10, 538, 'Sarda Sundari Mohila College', 6, 167, 168, 3.88, 16, 0),
(11, 538, 'Daffodil', 6, 167, 166, 3.88, 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reference`
--

CREATE TABLE `tbl_reference` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `organization` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `specialization` int(11) NOT NULL,
  `relationship` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `stat` int(11) NOT NULL DEFAULT '0',
  `distId` int(11) NOT NULL,
  `thId` int(11) NOT NULL,
  `postId` int(11) NOT NULL,
  `refstat` int(11) NOT NULL DEFAULT '0',
  `refrej` int(11) NOT NULL DEFAULT '0',
  `agree` int(11) NOT NULL DEFAULT '0',
  `disagree` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_reference`
--

INSERT INTO `tbl_reference` (`id`, `userId`, `name`, `organization`, `designation`, `email`, `phone`, `specialization`, `relationship`, `status`, `stat`, `distId`, `thId`, `postId`, `refstat`, `refrej`, `agree`, `disagree`) VALUES
(11, 512, 'Arnab Prosad Roy', 'Kyoto Engineering', 'Junior IT Officer', 'arnab.r@keal.com.bd', '01745912429', 20, 10, 1, 1, 0, 0, 0, 0, 0, 1, 0),
(12, 569, 'MS Muhit', 'AIUB', 'Assistant Professor', 'muhit@aiub.edu', '01715528057', 6, 9, 1, 1, 0, 0, 0, 0, 0, 1, 0),
(14, 538, 'Arnab', 'Kyoto Engineering', 'Junior IT Officer', 'arnab.r@keal.com.bd', '01745912429', 20, 10, 1, 1, 1, 473, 794, 1, 0, 1, 0),
(22, 581, 'Md. Munir Hossain', 'Standard Chartered Bank', 'Line Manager', 'mdmunir@gmail.com', '+8801713-061786', 16, 1, 1, 0, 1, 472, 792, 0, 0, 0, 0),
(20, 571, 'Protyasha Saha', 'Kyoto Engineering', 'Junior IT Officer', 'protyasha.s@keal.com.bd', '01721313350', 16, 4, 1, 1, 59, 532, 986, 1, 0, 1, 0),
(23, 554, 'Dr. Mehedi Bin Mohammad', 'American International University-Bangladesh', 'Assistant professor, Faculty of EEE', 'mehedibinmohammad@gmail.com', '01716304595', 6, 9, 1, 0, 1, 0, 147, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_relationship`
--

CREATE TABLE `tbl_relationship` (
  `id` int(11) NOT NULL,
  `relationType` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_relationship`
--

INSERT INTO `tbl_relationship` (`id`, `relationType`) VALUES
(1, 'Family Relation'),
(2, 'Neighbour'),
(3, 'Professional'),
(4, 'Friend'),
(5, 'Friend of a Relation'),
(6, 'Family Friend'),
(7, 'Friend of a Neighbour'),
(8, 'Relation of a Neighbour'),
(9, 'Teacher'),
(10, 'Colleague');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_same`
--

CREATE TABLE `tbl_same` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_same`
--

INSERT INTO `tbl_same` (`id`, `name`) VALUES
(1, 'same as present');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_school`
--

CREATE TABLE `tbl_school` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gId` int(11) NOT NULL,
  `cgpa` float(10,2) NOT NULL,
  `pyearid` int(11) NOT NULL,
  `divId` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_school`
--

INSERT INTO `tbl_school` (`id`, `userId`, `name`, `gId`, `cgpa`, `pyearid`, `divId`, `status`) VALUES
(3, 469, 'Milestone School and College', 5, 5.00, 10, 0, 0),
(4, 475, 'Bandar Girls'' School &amp; collage', 5, 4.75, 8, 0, 0),
(5, 482, 'Saidpur High School', 5, 4.56, 11, 0, 0),
(6, 481, 'Rifleâ€™s School, Jessore', 5, 4.31, 9, 0, 0),
(7, 478, 'Rani Bilashmoni Govt. Boys High School', 5, 5.00, 8, 15, 0),
(9, 477, 'Safiuddin sarker academy and college', 5, 0.00, 8, 0, 0),
(10, 488, 'Pirgonj Govt Girls High School', 5, 4.75, 9, 0, 0),
(11, 479, 'GOVT. GIRLS SCHOOL, JHENEDAH', 5, 4.75, 12, 0, 0),
(12, 489, 'jodunath pilot high school', 5, 4.92, 6, 15, 0),
(13, 488, 'Pirgonj Govt Girls High School', 5, 4.75, 9, 9, 0),
(14, 492, 'Shamsul Hauq Khan School and College', 5, 5.00, 9, 15, 0),
(16, 479, 'Govt. Girls School, Jhenedah, Bangladesh.', 5, 4.75, 12, 7, 0),
(17, 499, 'Govt girls high school', 5, 5.00, 10, 15, 0),
(18, 501, 'Joypurhat Sadar Thana High School', 5, 5.00, 10, 9, 0),
(19, 502, 'Bogra Cantonment Public School &amp; College, Bogra', 5, 5.00, 9, 9, 0),
(20, 503, 'Mohammad Ali  High School', 5, 3.88, 14, 15, 0),
(21, 511, 'Mirpur Bangla High School', 5, 5.00, 9, 15, 0),
(22, 517, 'Shaheed Ramiz Uddin Cantoment School', 5, 4.63, 10, 15, 0),
(23, 522, 'Thakurgaon Govt Boy''s High School', 5, 5.00, 10, 10, 0),
(24, 526, 'Rohanpur AB govt high school', 5, 4.31, 10, 9, 0),
(25, 527, 'Basurhat A.H.C Govt. High School', 5, 5.00, 10, 14, 0),
(26, 528, 'Banani Bidyaniketan School and College', 5, 4.56, 9, 15, 0),
(27, 531, 'Tulabaria High school', 5, 4.44, 11, 0, 0),
(28, 538, 'Govt girls high school', 5, 4.88, 10, 15, 1),
(29, 539, 'Jannat Academy High School', 4, 4.31, 15, 15, 0),
(30, 540, 'Faizur Rahman Ideal Institute', 5, 4.94, 10, 15, 1),
(31, 544, 'Rajshahi collegiate school , rajshahi.', 5, 4.94, 11, 9, 0),
(32, 491, 'Noapara Model Secondary School,Jessore', 5, 5.00, 11, 7, 0),
(33, 549, 'faridpur Zilla School', 5, 5.00, 10, 15, 0),
(34, 550, 'Joypurhat Sadar Thana High School', 5, 4.50, 10, 9, 0),
(35, 552, 'Siraj Uddin Sarker Vidyaniketon', 5, 4.88, 8, 15, 0),
(36, 546, 'Tulabaria High School', 5, 4.44, 11, 14, 0),
(37, 516, 'Gazipur Cantonment Board High School', 5, 5.00, 10, 15, 0),
(39, 554, 'Siraj Uddin Sarker Vidyaniketan and College', 5, 5.00, 8, 15, 0),
(41, 557, 'Govt girls high school', 5, 4.88, 10, 15, 1),
(43, 556, 'Govt girls high school', 5, 3.88, 10, 15, 1),
(44, 569, 'BIAM Model School and College', 5, 5.00, 8, 15, 1),
(45, 571, 'Joypurhat Sadar Thana High School', 5, 4.25, 10, 9, 1),
(46, 581, 'Bangladesh Bank Adarsha High School', 5, 4.88, 11, 15, 1),
(47, 594, 'Dhanmondi Govt. Boys High School', 0, 5.00, 8, 15, 1),
(48, 604, 'Islamabad High School', 5, 5.00, 10, 15, 1),
(49, 603, 'Barisal Zilla School', 5, 5.00, 9, 6, 1),
(50, 617, 'The Buds Residential Model School &amp; College', 5, 5.00, 0, 0, 1),
(51, 618, 'Bhanderpur BL High School', 5, 4.06, 11, 9, 1),
(52, 619, 'Monipur High School', 5, 5.00, 9, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_school_name`
--

CREATE TABLE `tbl_school_name` (
  `id` int(11) NOT NULL,
  `schoolName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_school_name`
--

INSERT INTO `tbl_school_name` (`id`, `schoolName`) VALUES
(1, 'Sydney International School'),
(2, 'Government Laboratory High School, Mymensingh?'),
(3, 'Tarundia Jagat Memorial High School, Ishwarganj, Mymensingh'),
(4, 'Rangon Academy'),
(7, 'Mirpur International Tutorial'),
(8, 'St Gregory''s School'),
(9, 'Mohammadpur Preparatory School & College.'),
(10, 'A. K. High School and College'),
(11, 'St. Peters School of London'),
(12, 'Vision Global School'),
(14, 'Regent College, Dhaka'),
(15, 'Kakali High School, Dhaka'),
(16, 'IBQ ? Institute for British Qualifications'),
(17, 'Morning Glory School (MGS)'),
(18, 'British International Kids School (BIKS)'),
(19, 'JAAGO Foundation'),
(20, 'Harding High School'),
(22, 'Daffodil International School (DIS)'),
(23, 'Green Leaf International School?(GLIS)'),
(25, 'Mirpur Govt. High School'),
(26, 'Arcadia International School & College(AISCO)'),
(27, 'Islami Bank International School & College'),
(28, 'Cardiff International School Dhaka(CISD)'),
(29, 'Barnamala Adarsha High School & College'),
(30, 'Bangladesh Web School'),
(31, 'Civil Aviation High School (est.1978)'),
(32, 'Scholastica'),
(33, 'Green Dale International School, Dhaka[14]'),
(37, 'Singapore International School[15]'),
(38, 'Canadian Trillinium School'),
(39, 'Begum Sufia Model High School'),
(40, 'Cordova Int''l School & College'),
(41, 'Ganobhaban Government High School'),
(42, 'M.D.C. Model Institute'),
(43, 'Monipur High School'),
(44, 'Saint Joseph Higher Secondary School'),
(45, 'Sristy Central School & College Dhaka'),
(46, 'Joy Govinda High School, Narayanganj'),
(47, 'Gonobidya Niketon?High School, Narayanganj'),
(48, 'Morgan Gils High School, Narayanganj'),
(49, 'Narayanganj High School, Narayanganj'),
(50, 'Narayanganj Bar Academy'),
(51, 'Bangladesh International School and College'),
(52, 'Bottomley Home Girls'' High School'),
(53, 'Eminence International School & College'),
(54, 'Faizur Rahman Ideal School'),
(55, 'S. F. X. Greenherald International Schools'),
(56, 'Maple Leaf International School'),
(57, 'PrimRose Kindergarten & School'),
(58, 'Ebenezer International School'),
(59, 'Seabreeze International School'),
(60, 'South Breeze School'),
(61, 'National Ideal School'),
(62, 'Shaheed Police Smrity School & College'),
(63, 'Bir Shrestha Munshi Abdur Rouf Public College'),
(64, 'Viquarunnisa Noon School & College'),
(65, 'Cantonment Public School & College'),
(66, 'Mohammadpur Govt. Boys High School, Dhaka'),
(67, 'Oxford International School, Dhaka'),
(68, 'B.A.F. Shaheen English Medium School (SEMS)'),
(69, 'American International School of Dhaka'),
(70, 'K B High School'),
(71, 'Armanitola Government High School'),
(72, 'Sharoj International College'),
(73, 'Bashir Uddin Adarsha High School and College'),
(74, 'Baridhara Scholars Institution'),
(75, 'Holy Cross High School'),
(76, 'Willes Little Flower School & College'),
(77, 'Bangladesh International School'),
(78, 'Bangladesh International Tutorial'),
(79, 'Dhaka Government Muslim High School'),
(80, 'Dhaka International Tutorial'),
(81, 'Dhaka Residential Model College'),
(82, 'Dhanmondi Government Boys'' High School'),
(83, 'Dhanmondi Government Girls'' High School'),
(84, 'Dhanmondi Tutorial'),
(85, 'European Standard School'),
(86, 'Green Gems International School'),
(87, 'Government Laboratory High School'),
(88, 'Gulshan Model High School & College'),
(89, 'Hurdco International School'),
(90, 'Ideal School & College'),
(91, 'Habirbari Union Sonar Bengali High School'),
(92, 'International School Dhaka'),
(93, 'Jamila Aynul High School'),
(94, 'Junior Laboratory High School'),
(95, 'Kalyanpur Girls'' School & College'),
(96, 'Tejgaon Government High School'),
(97, 'Khilgaon Government High School Dhaka'),
(98, 'Karatitola C.M.S. Memorial High School'),
(99, 'Kurmitola High School'),
(100, 'Motijheel Government Boys'' High School'),
(101, 'The Ark Int''l School[17]'),
(102, 'Premier School Dhaka'),
(103, 'Ashraf Ali Bahumukhi High School'),
(104, 'Green Scholars International School & College'),
(105, 'The New School Dhaka,[18]'),
(106, 'Siddheswari Boys'' High School'),
(107, 'University Laboratory School and College, I.E.R., Dhaka University, Dhaka'),
(108, 'Uttara High School & College'),
(109, 'Don Bosco School and College'),
(110, 'Nakhal Para Hossain Ali High School'),
(111, 'New Ananda English School'),
(112, 'Civil Aviation High School'),
(113, 'Jasim Uddin Institute'),
(114, 'British American English Medium School'),
(115, 'Charu Aunggon Art School & Fine Art Academy'),
(116, 'Domrakandi High School'),
(117, 'Hope International School'),
(118, 'Civil Aviation High School'),
(119, 'Fulknuri Kildergarten & high School'),
(120, 'Baliapara High School And College'),
(121, 'British Columbia School'),
(122, 'London School Of English(LSE)'),
(123, 'Moulovir Char High School'),
(124, 'Bagerhat govt. High School'),
(125, 'Govt. Laboratory High School, Khulna'),
(126, ''),
(127, 'Khulna Zilla School, Khulna'),
(128, ''),
(129, 'Khulna Public School & College'),
(130, ''),
(131, 'Hazi Foyez Uddin Girls High School, Khulna'),
(132, ''),
(133, 'Govt. Cornation Girls High School, Khulna'),
(134, ''),
(135, 'Khulna Govt. Girls High School'),
(136, ''),
(137, 'St. Joseph High School, Khulna'),
(138, ''),
(139, 'Cantonment Public School & College, Khulna'),
(140, ''),
(141, 'Khulna Collegiate Girls School'),
(142, 'Military Collegiate School Khulna?(MCSK)'),
(143, 'Metropolitan Police Line School'),
(144, 'Primary Training Institute (P.T.I)'),
(145, 'Bheramara Pilot High School (BPHS)'),
(146, 'Nilmoniganj Secondary School'),
(147, 'Seva Sangha Girl''s High School'),
(148, 'Nutan Khayertala Secondary School'),
(149, 'Jessore Cantonment High School'),
(150, 'Dawood Public School'),
(151, ''),
(152, 'Jessore Zilla School'),
(153, ''),
(154, 'Jessore Govt. Girls High School'),
(155, ''),
(156, 'Police Line Secondary School, Jessore'),
(157, ''),
(158, 'Jessore Rifles School'),
(159, ''),
(160, 'Moshin Boys High School, Daulatpur, Khulna'),
(161, 'Chaprail High School'),
(162, ''),
(163, 'Maheshpur Boys High School'),
(164, 'II College'),
(165, 'Satkhira Government High School'),
(166, 'Sarafatil Dakhil Madrasha'),
(167, 'Maheshpur Girls High School'),
(168, 'New Children Grace School'),
(169, 'Jhenidah Cadet College(JCC)'),
(170, 'Panchbibi L. B. Pilot Govt. High School'),
(171, 'Naogaon K.D. Government High School'),
(172, 'Millennium Scholastic School & College'),
(173, 'School Of Physics & Applied Math'),
(174, 'Chamagram H, N High School'),
(175, 'Karbala High School'),
(176, 'Technical Training Center'),
(177, 'Polytechnical Institute'),
(178, 'Harimohon Govt High School'),
(179, 'Pukurpar Dakhil Madrasha'),
(180, 'Nawabgonj Govt College'),
(181, 'Bogra Cantonment Public School and College'),
(182, 'Natore Govt. Boys High School'),
(183, 'Natore Govt. Girls High School'),
(184, 'Gurudaspur Pilot High School'),
(185, 'Harina Bagbati High School'),
(186, 'Saraswatipur High School'),
(187, 'Seroil Govt. High School'),
(188, 'Dhankundi Shahnaj Siraj High School'),
(189, 'Shimul Memorial North South School, Rajshahi'),
(190, 'Ashraf Zindani High School'),
(191, 'Araji Thangzara Habibur Rahaman High School'),
(192, 'BIAM Laboratory School (English Version), Rangpur'),
(193, 'Debiganj Alodini Government Girls High School'),
(194, 'Debiganj Girls High School'),
(195, 'Debiganj Riverview Girls High School'),
(196, 'Dr. Major (Rec.) T. Zaman High School'),
(197, 'Pantahbari Balakandi Govt. Primary Schooll'),
(198, 'Pantahbari Balakandi High Schooll'),
(199, 'Rangpur Zilla School'),
(200, 'Thakurgaon Government Boys'' High School'),
(201, 'Thakurgaon Government Girls'' High School'),
(202, 'Ulipur M. S. School and College'),
(203, 'Aided High School'),
(204, 'Jalalabad Cantonment Public School & College'),
(205, 'Jubilee High School'),
(206, 'Oxford International School and College'),
(207, 'Palash High School'),
(208, 'Patli Union High School'),
(209, 'Quazi Jalaluddin High School'),
(210, 'Raja Girish Chandra High School'),
(211, 'Saarc International School & College'),
(212, 'Patuakhali Jubilee School'),
(213, 'Bauphal Govt. Secondary School'),
(214, ' Nowmala Secondary School'),
(215, 'Dhaporkati Dk Secondary School'),
(216, 'Ibn Sina Pre Cadet School'),
(217, 'Barikhola South primary School'),
(218, 'Chandpur District[edit]'),
(219, 'Daffodil International School'),
(220, 'Ludhua School & College'),
(221, 'Chittagong District[edit]'),
(222, 'A. L. Khan High School'),
(223, 'Abdus Sobhan Rahat Ali High School'),
(224, 'Fatickchari Coronation Model High School'),
(225, 'Abdul Khalek Academy'),
(226, 'Abdur Rahman Government Girls'' High School'),
(227, 'Agrabad Balika Bidyalay'),
(228, 'Agrabad Government Colony High School'),
(229, 'Amirabad Janakalyan High School'),
(230, 'Aparnacharan City Corporation Girls'' High School'),
(231, 'Ayesha Obayed Girls High School'),
(232, 'Azimpur High School'),
(233, 'Bakalia Government High School'),
(234, 'Bangladesh Bank Colony High School'),
(235, 'Bangladesh Elementary School'),
(236, 'Bangladesh Mohila Shomiti Girls'' High School'),
(237, 'Bangladesh Navy School and College, Chittagong'),
(238, 'Bauria Golam Khalek Academy'),
(239, 'Burischar High School'),
(240, 'Cantonment English School & College'),
(241, 'Chickdair High School'),
(242, 'Child Heaven School'),
(243, 'Chittagong Cantonment Public School & College'),
(244, 'Chittagong Collegiate School'),
(245, 'Chittagong Government Girls High School'),
(246, 'Chittagong Government High School'),
(247, 'Chittagong Grammar School'),
(248, 'Chittagong International School'),
(249, 'Chittagong Model School and College'),
(250, 'Chittagong Municipal Model High School'),
(251, 'Chittagong Police Institution'),
(252, 'Chittagong Steel Mills High School'),
(253, 'Chittagong Urea Fertilizer School and College'),
(254, 'CIDER International School'),
(255, 'Dr. Khastagir Government Girls'' School'),
(256, 'Dwip Bondhu Mostafizur Rahman High school'),
(257, 'East Sandwip Enam Nahar Girls High school'),
(258, 'Eastern Refinery Model High School'),
(259, 'Fatehpur Mehernega High School'),
(260, 'Faujderhat Cadet School & College'),
(261, 'Faujdarhat Collegiate School'),
(262, 'Faujdarhat K. M. High School'),
(263, 'Ispahani Public School & College'),
(264, 'Gachua Adarsha High School'),
(265, 'Garib-E-Newaz High School'),
(266, 'Government Muslim High School[3]'),
(267, 'Gunners'' English School'),
(268, 'Hazi Muhammad Mohsin Government High School?'),
(269, 'Hatey Khari School & College'),
(270, 'Hathazari Parbati Model High School'),
(271, 'Holy Child School & College[5]'),
(272, 'Holy Flower Ideal School'),
(273, 'Ispahani Public School & College'),
(274, 'J.M. Senior School & College'),
(275, 'Jeben Nur Sultana High School'),
(276, 'Kalapania Chowdhury Biddah Nikaton'),
(277, 'Kalapania High School'),
(278, 'Kargil Government High School'),
(279, 'Katgar Golam Nabi High School'),
(280, 'Kazi Afaz Uddin Adarsha High School'),
(281, 'Khawja Ajmeri High School'),
(282, 'Khulshi Cherry Grammar School'),
(283, 'Little Jewels School'),
(284, 'Magdhara High School'),
(285, 'Maitbhanga High School'),
(286, 'Milestone International School'),
(287, 'Miriam Ashram High School'),
(288, 'Modhya Santospur High School'),
(289, 'Momena Sekander Govt. Girls High School'),
(290, 'Musapur Bodiuzzaman High School'),
(291, 'Musapur Hajee Abdul Baten High School'),
(292, 'Muslim Education Society High School'),
(293, 'Nasirabad Government High School'),
(294, 'Pologround High School'),
(295, 'Pomara High School'),
(296, 'Port Authority High School, Chittagong'),
(297, 'Queen Mary School & College[6]'),
(298, 'Rahamatpur High School'),
(299, 'Saint Placid''s High School'),
(300, 'St. Scholastica''s Girls'' High School'),
(301, 'Sandwip Ideal High School'),
(302, 'Sandwip Model High School'),
(303, 'Sandwip Public High School'),
(304, 'Santospur High School'),
(305, 'Sarkarhat N. R. High School'),
(306, 'Silver Bell Kindergarten and Girls High School'),
(307, 'Sitakund Government Model High School'),
(308, 'South East Sandwip High school'),
(309, 'South Sandwip Abeda Foyez Girls High School'),
(310, 'South Sandwip High School'),
(311, 'Sunshine Grammar School'),
(312, 'TSP Complex Secondary School'),
(313, 'P. H. Ameen Academy'),
(314, 'Panchuria Halima Rahman High School'),
(315, ''),
(316, 'Comilla District'),
(317, ''),
(318, 'Akbbarer Nesa Girls High School'),
(319, 'Bakhrabad Gas Adarsha Bidhalaya'),
(320, 'Bibir Bazar High School'),
(321, 'Comilla Cantonment High School'),
(322, 'Comilla High School'),
(323, 'Comilla Modern High School'),
(324, 'Comilla Zilla School'),
(325, 'Ispahani Public School & College'),
(326, 'Laksam Pilot High School'),
(327, 'Nawab Faizunnessa Government Girls'' High School'),
(328, 'Oxford International School & College, Chandina'),
(329, 'Oxford International School & College, Debidwar'),
(330, 'Subrati Shahajdi M. M. High School'),
(331, 'Union Technical High School'),
(332, 'Jagatpur Sadhana High School'),
(333, 'Gunabati High School'),
(334, ''),
(335, 'Cox''s Bazar District[edit]'),
(336, ''),
(337, 'Cox''s Bazar Govt. High School'),
(338, ''),
(339, 'Feni District'),
(340, ''),
(341, 'Feni Government Pilot High School'),
(342, 'Karim Ullah High School'),
(343, 'Shaheen Academy School & College Feni'),
(344, ''),
(345, 'Lakshmipur District[edit]'),
(346, ''),
(347, 'Lhumbnagar Academy High School'),
(348, ''),
(349, 'Noakhali District[edit]'),
(350, ''),
(351, 'Noakhali Zilla School'),
(352, 'Begumganj Government Pilot High School'),
(353, 'Brother Andre''s High School'),
(354, 'Pana Mia T.F High School'),
(355, 'Bazra M.L. High School'),
(356, 'Al-Farooq Academy'),
(357, 'Noakhali Government Girls'' High School'),
(358, 'Mohammad Pur Janata High School'),
(359, 'Abir Para High School'),
(360, 'Basurhat A. H. C. Govt. High School'),
(361, 'Companyganj Model School'),
(362, 'Bijbag N.K High School'),
(363, ''),
(364, 'Rangamati District[edit]'),
(365, ''),
(366, 'Kaptai High School'),
(367, 'Rangamati Government High School'),
(368, 'Faridpur Govt Girl''S High School'),
(369, 'Faridpur Zilla School');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_score`
--

CREATE TABLE `tbl_score` (
  `id` int(11) NOT NULL,
  `eId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `datee` date NOT NULL,
  `criteria1` float NOT NULL,
  `criteria2` float NOT NULL,
  `criteria3` float NOT NULL,
  `criteria4` float NOT NULL,
  `criteria5` float NOT NULL,
  `criteria6` float NOT NULL,
  `criteria7` float NOT NULL,
  `criteria8` float NOT NULL,
  `criteria9` float NOT NULL,
  `criteria10` float NOT NULL,
  `totalScore` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_score`
--

INSERT INTO `tbl_score` (`id`, `eId`, `userId`, `datee`, `criteria1`, `criteria2`, `criteria3`, `criteria4`, `criteria5`, `criteria6`, `criteria7`, `criteria8`, `criteria9`, `criteria10`, `totalScore`) VALUES
(2, 14, 538, '2017-11-15', 2, 2, 4, 3, 4, 3, 2, 5, 3, 5, 0),
(3, 15, 538, '2017-11-15', 9, 8, 9, 9, 8, 8, 8, 8, 8, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_skill`
--

CREATE TABLE `tbl_skill` (
  `skillId` int(11) NOT NULL,
  `skillName` varchar(255) NOT NULL,
  `skillDes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_skill`
--

INSERT INTO `tbl_skill` (`skillId`, `skillName`, `skillDes`) VALUES
(1, 'Computer', 'MS word, Powerpoint, excel');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_skills`
--

CREATE TABLE `tbl_skills` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `skill` varchar(30) NOT NULL,
  `descp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_skills`
--

INSERT INTO `tbl_skills` (`id`, `userId`, `skill`, `descp`) VALUES
(1, 571, 'dfgd', 'dfg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_specialization`
--

CREATE TABLE `tbl_specialization` (
  `spId` int(11) NOT NULL,
  `specialization` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_specialization`
--

INSERT INTO `tbl_specialization` (`spId`, `specialization`) VALUES
(1, 'Supply Chain Management'),
(2, 'ABC License Holder'),
(3, 'Automation & Robotic Engineering'),
(5, 'Supply Chain Management'),
(6, 'Electrical Engineering'),
(7, 'Civil Engineering'),
(8, 'General Administration'),
(9, 'Aeronautical Engineering'),
(10, 'Accounting'),
(11, 'RMG Expert'),
(12, 'Production Management'),
(13, 'Management Expert'),
(14, 'Lawyer'),
(15, 'Company Secretary'),
(16, 'Banking & Insurance'),
(17, 'Marketing'),
(18, 'CG Animation & Graphic Designer'),
(19, 'Asset Management(A&F)'),
(20, 'ICT'),
(21, 'Biomedical Expert'),
(22, 'Pharmacologist'),
(23, 'Sales'),
(24, 'HR Expert'),
(25, 'Naval Engineering'),
(26, 'Mechanical Engineering'),
(27, 'Agriculture Engineering'),
(28, 'Medical Practitioner'),
(29, 'Chemical Engineering'),
(30, 'Journalist '),
(31, 'Hospital Management'),
(32, 'Secretary'),
(33, 'Librarian'),
(34, 'Real Estate Expert'),
(35, 'Retail & Distribution Expert'),
(36, 'Front Desk Management '),
(37, 'Housekeeping'),
(38, 'Leisure & Travel Expert'),
(39, 'Musician'),
(40, 'Automobile Engineering'),
(41, 'Economist'),
(42, 'Textile Expert'),
(43, 'Academician'),
(44, 'Taxation Expert '),
(45, 'CNF & Commercial Expert'),
(46, 'Aviation'),
(47, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ssc`
--

CREATE TABLE `tbl_ssc` (
  `sscId` int(11) NOT NULL,
  `conId` int(11) NOT NULL,
  `scName` varchar(255) NOT NULL,
  `eGroup` varchar(255) NOT NULL,
  `gpa` float NOT NULL,
  `passingYear` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_ssc`
--

INSERT INTO `tbl_ssc` (`sscId`, `conId`, `scName`, `eGroup`, `gpa`, `passingYear`) VALUES
(1, 1, 'xyz', 'science', 5, 2009),
(2, 2, 'ghi', 'Arts', 4.88, 2010);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_store_job`
--

CREATE TABLE `tbl_store_job` (
  `jsId` int(11) NOT NULL,
  `jId` int(11) NOT NULL,
  `dId` int(11) NOT NULL,
  `batch` varchar(11) NOT NULL,
  `levelId` int(11) NOT NULL,
  `ldApplication` date NOT NULL,
  `degId` int(11) NOT NULL,
  `mimcomp` varchar(255) NOT NULL,
  `mxmcomp` varchar(255) NOT NULL,
  `expDate` date NOT NULL,
  `prerequisite` text NOT NULL,
  `joblocation` varchar(255) NOT NULL,
  `apply` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_store_job`
--

INSERT INTO `tbl_store_job` (`jsId`, `jId`, `dId`, `batch`, `levelId`, `ldApplication`, `degId`, `mimcomp`, `mxmcomp`, `expDate`, `prerequisite`, `joblocation`, `apply`) VALUES
(4, 8, 1, '0', 1, '2017-10-31', 4, '10,000tk', '12,000tk', '2017-11-30', 'Graduation in EEE, IPE and Mechanical Engineering', '', ''),
(5, 15, 1, '0', 1, '2017-12-24', 18, '2,000 Tk', '4,500 Tk', '2018-01-01', 'Proof of BSc. Exam Completion .\r\nRecommendation from Faculty\r\nID Documents\r\nSatisfactory Interview', '', ''),
(6, 1, 2, '1', 1, '2017-12-30', 5, '2000', '4000', '2017-12-30', 'Bsc in CSE', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_studydept`
--

CREATE TABLE `tbl_studydept` (
  `studydeptId` int(11) NOT NULL,
  `studyDept` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_studydept`
--

INSERT INTO `tbl_studydept` (`studydeptId`, `studyDept`) VALUES
(1, 'CSE'),
(2, 'EEE'),
(3, 'ECE'),
(4, 'BBA'),
(5, 'civil'),
(6, 'architecture'),
(7, 'Mechanical'),
(8, 'Accounting'),
(9, 'Finance'),
(10, 'English'),
(11, 'Management '),
(12, 'Marketing '),
(13, 'Pharmacy'),
(14, 'IT'),
(15, 'Bangla'),
(16, 'sociology'),
(17, 'Information Science and Library Management'),
(18, 'World Religions and Culture'),
(19, 'Linguistics'),
(20, 'Theatre and Performance Studies'),
(21, 'Islamic History & Culture'),
(22, 'Islamic Studies'),
(23, 'Philosophy'),
(24, 'History'),
(25, 'Pali and Buddhist Studies'),
(26, 'Sanskrit'),
(27, 'Urdu'),
(28, 'Persian Language and Literature'),
(29, 'Arabic'),
(30, 'Dance'),
(31, 'Music'),
(32, 'Theoretical and Computational Chemistry'),
(33, 'Applied Mathematics'),
(34, 'Biomedical Physics & Technology'),
(35, 'Theoretical Physics'),
(36, 'Statistics'),
(37, 'Chemistry'),
(38, 'Mathematics'),
(39, 'Physics'),
(40, 'Law'),
(41, 'Organization Strategy and Leadership'),
(42, 'Tourism and Hospitality Management'),
(43, 'International Business'),
(44, 'Management Information Systems (MIS)'),
(45, 'Banking and Insurance'),
(46, 'Marketing'),
(47, 'Accounting & Information Systems'),
(48, 'Management'),
(49, 'Japanese Studies'),
(50, 'Printing and Publication Studies'),
(51, 'Communication Disorders'),
(52, 'Criminology'),
(53, 'Television, Film and Photography'),
(54, 'Development Studies'),
(55, 'Women and Gender Studies'),
(56, 'Peace and Conflict Studies'),
(57, 'Population Sciences'),
(58, 'Anthropology'),
(59, 'Public Administration'),
(60, 'Mass Communication & Journalism'),
(61, 'International Relations'),
(62, 'Political Science'),
(63, 'Economics'),
(64, 'Educational and Counselling Psychology'),
(65, 'Genetic Engineering and Bio-Technology'),
(66, 'Clinical Psychology'),
(67, 'Fisheries'),
(68, 'Microbiology'),
(69, 'Psychology'),
(70, 'Biochemistry and Molecular Biology'),
(71, 'Zoology'),
(72, 'Botany'),
(73, 'Soil, Water & Environment'),
(74, 'Pharmaceutical Technology'),
(75, 'Clinical Pharmacy and Pharmacology'),
(76, 'Pharmaceutical Chemistry'),
(77, 'Meteorology'),
(78, 'Disaster Science and Management'),
(79, 'Oceanography'),
(80, 'Geology'),
(81, 'Geography & Environment'),
(82, 'Robotics and Mechatronics Engineering'),
(83, 'Nuclear Engineering'),
(84, 'Applied Chemistry & Chemical Engineering'),
(85, 'History of Arts'),
(86, 'Craft'),
(87, 'Sculpture'),
(88, 'Ceramics'),
(89, 'Oriental Art'),
(90, 'Printmaking'),
(91, 'graphic design'),
(92, 'Drawing and Painting'),
(93, 'Leather Engineering and Technology'),
(94, 'Disaster Management and Vulnerability Studies'),
(95, 'Energy'),
(96, 'Health Economics'),
(97, 'Modern Languages'),
(98, 'Social Welfare and Research'),
(99, 'Nutrition and Food Science'),
(100, 'Business Administration'),
(101, 'Statistical Research and Training'),
(102, 'Education and Research'),
(103, 'Medical Science'),
(104, 'Chemical Engineering'),
(105, 'Materials and Metallurgical Engineering'),
(106, 'Glass and Ceramic Engineering'),
(107, 'Petroleum and Mineral Resourse Engineering'),
(108, 'Water Resourses Engineering'),
(109, 'Naval Architecture and Marine Engineering'),
(110, 'Industrial and Production Engineering'),
(111, 'Biomedical Engineering'),
(112, 'Urban and Regional Planning'),
(113, 'Humanities'),
(114, 'Information and CommunicationTechnology'),
(115, 'Appropiate Technology'),
(116, 'Water and Flood Management Engineering'),
(117, 'Accident and Research Technology'),
(118, 'Disaster Prevention and urban Safety'),
(119, 'Nuclear Power Engineering'),
(120, 'Veterinary Science'),
(121, 'Agriculture'),
(122, 'Agricultural Engineering and Technology'),
(123, 'Animal Husbandry'),
(124, 'Fisheries'),
(125, 'Agricultural Economics and Rural Sociology'),
(126, 'Agricultural Economics'),
(127, 'Agricultural Finance'),
(128, 'Agricultural Statistics'),
(129, 'Agribusiness and Marketing'),
(130, 'Rural Sociology'),
(131, 'Fisheries,?Biology?and Genetics'),
(132, 'Fisheries Management'),
(133, 'Fisheries Technology'),
(134, 'Dairy Science'),
(135, 'Poultry Science'),
(136, 'Animal Nutrition'),
(137, 'Animal Science'),
(138, 'Genetics'),
(139, 'Animal Breeding?and?Genetics'),
(140, 'Farm Structure and Environmental Engineering'),
(141, 'Farm Power and Machinery'),
(142, 'Food Technology and Rural Industries'),
(143, 'Computer Science?and Mathematics'),
(144, 'Environmental Science'),
(145, 'Biotechnology'),
(146, 'Agroforestry'),
(147, 'Languages'),
(148, 'Biochemistry?and Molecular Biology'),
(149, 'Agricultural Chemistry'),
(150, 'Agricultural Extension?Education'),
(151, 'Genetics?and?Plant Breeding'),
(152, 'Crop Botany'),
(153, 'Plant Pathology'),
(154, 'Horticulture'),
(155, 'Entomology'),
(156, 'Soil Science'),
(157, 'Agronomy'),
(158, 'Surgery and?Obstetrics'),
(159, 'Pathology'),
(160, 'Parasitology'),
(161, 'Pharmacology'),
(162, 'Microbiology?and?Hygiene'),
(163, 'Physiology'),
(164, 'Anatomy?and?Histology'),
(165, 'Aeronautical Engineering?'),
(166, 'Aerospace and Avionics'),
(167, 'Petroleum and Mining Engineering'),
(168, 'Water  Resources and Coastal Engineering '),
(169, 'International Relations'),
(170, 'Finance and Banking'),
(171, 'Information System'),
(172, 'Medical Science'),
(173, 'Textile Engineering'),
(174, 'Yarn Engineering'),
(175, 'Jute and  Allied Fiber Process Engineering'),
(176, 'Fabric Engineering'),
(177, 'Wet Processing Enginering'),
(178, 'Dyes and Chemical Engineering'),
(179, 'Material Science Engineering'),
(180, 'Apparel Engineering'),
(181, 'Textile Machinery and Design Maintenance'),
(182, 'Apparel Merchandizing'),
(183, 'Textile Fashion and Designing');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_thana`
--

CREATE TABLE `tbl_thana` (
  `thId` int(11) NOT NULL,
  `thName` varchar(255) NOT NULL,
  `distId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_thana`
--

INSERT INTO `tbl_thana` (`thId`, `thName`, `distId`) VALUES
(1, 'DHAMRAI', 1),
(2, 'KERANIGANJ', 1),
(3, 'NAWABGANJ', 1),
(4, 'SAVAR', 1),
(5, 'GAZIPUR SADAR', 2),
(6, 'KALIAKAIR', 2),
(7, 'KALIGANJ', 2),
(8, 'KAPASIA', 2),
(9, 'SREEPUR', 2),
(10, 'NARAYANGANJ SADAR', 3),
(11, 'FATULLAH', 3),
(12, 'RUPGANJ', 3),
(13, 'BANDAR', 3),
(14, 'ARAIHAZAR ', 3),
(15, 'NARSHINGDI SADAR', 4),
(16, 'BELABO', 4),
(17, 'SHIBPUR', 4),
(18, 'RAYPURA', 4),
(19, 'PALASH', 4),
(20, 'MONOHORDI', 4),
(21, 'ASTAGRAM', 5),
(22, 'BAJITPUR', 5),
(23, 'BHAIRAB', 5),
(24, 'HOSSENPUR', 5),
(25, 'ITNA', 5),
(26, 'KARIMGANJ', 5),
(27, 'KATIADI', 5),
(28, 'KISHOREGANJ SADAR', 5),
(29, 'KALIARCHAR', 5),
(30, 'MITHAMOIN', 5),
(31, 'NIKLI', 5),
(32, 'PAKUNDIA', 5),
(33, 'TARAIL', 5),
(34, 'TANGAIL SADAR', 6),
(35, 'KASHKAOLIA', 6),
(36, 'SAKHIPUR', 6),
(37, 'NAGARPUR', 6),
(38, 'MIRZAPUR', 6),
(39, 'MADHUPUR', 6),
(40, 'KALIHATI', 6),
(41, 'GHATAIL', 6),
(42, 'DELDUAR', 6),
(43, 'BHUAPUR', 6),
(44, 'BASAIL', 6),
(45, 'GOPALPUR', 6),
(46, 'FARIDPUR SADAR', 7),
(47, 'Shriangan', 7),
(48, 'SADARPUR', 7),
(49, 'NAGARKANDA', 7),
(50, 'MADHUKHALI', 7),
(51, 'CHARBHADRASAN', 7),
(52, 'BOALMARI', 7),
(53, 'BHANGA', 7),
(54, 'ALFADANGA ', 7),
(55, 'RAJBARI SADAR', 8),
(56, 'PANGSHA', 8),
(57, 'BALIAKANDI ', 8),
(58, 'MUNSHIGANJ SADAR', 9),
(59, 'LOHAJONG', 9),
(60, 'SIRAJDIKHAN', 9),
(61, 'SRINAGAR', 9),
(62, 'GAJARIA', 9),
(63, 'TANGIBARI', 9),
(64, 'GOPALGANJ SADAR', 10),
(65, 'TUNGIPARA', 10),
(66, 'MAKSUDPUR', 10),
(67, 'KASHIANI', 10),
(68, 'MADARIPUR SADAR', 11),
(69, 'RAJOIR', 11),
(70, 'KALKINI', 11),
(71, 'BARHAMGANJ', 11),
(72, 'MANIKGANJ SADAR', 12),
(73, 'SINGAIR', 12),
(74, 'SHIBLOYA', 12),
(75, 'SATURIA', 12),
(76, 'LECHHRAGANJ', 12),
(77, 'GHEOR', 12),
(78, 'DOULATPUR', 12),
(79, 'SHARIATPUR SADAR', 13),
(80, 'JAJIRA', 13),
(81, 'NARIA', 13),
(82, 'GOSAIRHAT', 13),
(83, 'DAMUDHYA', 13),
(84, 'BHEDORGANJ', 13),
(85, 'Khodmohanpur', 14),
(86, 'Bagha', 14),
(87, 'Charghat', 14),
(88, 'Bhabaniganj', 14),
(89, 'Durgapur', 14),
(90, 'Puthia', 14),
(91, 'Tanor', 14),
(92, 'Godagari', 14),
(93, 'Lalitganj', 14),
(94, 'Sirajganj Sadar', 15),
(95, 'Belkuchi', 15),
(96, 'Baiddya Jam Toil', 15),
(97, 'Kazipur', 15),
(98, 'Dhangora', 15),
(99, 'Ullapara', 15),
(100, 'Tarash', 15),
(101, 'Shahjadpur', 15),
(102, 'Alamdighi', 16),
(103, 'Bogra Sadar', 16),
(104, ' Dhunat', 16),
(105, ' Dupchachia', 16),
(106, 'Gabtoli', 16),
(107, 'Kahalu', 16),
(108, 'Nandigram', 16),
(109, 'Sariakandi', 16),
(110, 'Sherpur', 16),
(111, 'Shibganj', 16),
(112, 'Sonatola', 16),
(113, 'Pabna Sadar', 17),
(114, 'Bera', 17),
(115, 'Chatmohar', 17),
(116, 'Sujanagar', 17),
(117, 'Banwarinagar', 17),
(118, 'Ishwardi', 17),
(119, 'Bhangura', 17),
(120, 'Sathia', 17),
(121, 'Chapainawabganj Sadar', 18),
(122, 'Nachol', 18),
(123, 'Shibganj U.P.O', 18),
(124, 'Bholahat', 18),
(125, 'Rohanpur', 18),
(126, 'Natore Sadar', 19),
(127, 'Hatgurudaspur', 19),
(128, 'Gopalpur UPO', 19),
(129, 'Harua', 19),
(130, 'Singra', 19),
(131, 'Laxman', 19),
(132, 'Joypurhat Sadar', 20),
(133, 'Kalai', 20),
(134, 'Akkelpur', 20),
(135, 'Panchbibi', 20),
(136, 'Khetlal', 20),
(137, 'Naogaon Sadar', 21),
(138, 'Nitpur', 21),
(139, 'Ahsanganj', 21),
(140, 'Dhamuirhat', 21),
(141, 'Badalgachhi', 21),
(142, 'Mahadebpur', 21),
(143, 'Prasadpur', 21),
(144, 'Niamatpur', 21),
(145, 'Patnitala', 21),
(146, 'Sapahar', 21),
(147, 'Raninagar', 21),
(148, 'Boalkhali', 22),
(149, 'Anawara', 22),
(150, 'Jaldi', 22),
(151, 'East Joara', 22),
(152, 'Fatikchhari', 22),
(153, 'Hathazari', 22),
(154, 'Lohagara', 22),
(155, 'Mirsharai', 22),
(156, 'Patiya', 22),
(157, 'Rangunia', 22),
(158, 'Rouzan', 22),
(159, 'Sitakunda', 22),
(160, 'Sandwip', 22),
(161, 'Satkania', 22),
(162, 'Kotwali(Chittagong Sadar)', 22),
(163, 'Cox''s Bazar Sadar', 23),
(164, 'Chiringga', 23),
(165, 'Kutubdia', 23),
(166, 'Gorakghat', 23),
(167, 'Ramu', 23),
(168, 'Teknaf', 23),
(169, 'Ukhia', 23),
(170, 'Khagrachari Sadar', 24),
(171, 'Diginala', 24),
(172, 'Laxmichhari', 24),
(173, 'Mahalchhari', 24),
(174, 'Ramghar Head Office', 24),
(175, 'Manikchhari', 24),
(176, 'Matiranga', 24),
(177, 'Panchhari', 24),
(178, 'Rangamati Sadar', 25),
(179, 'Marishya', 25),
(180, 'Barakal', 25),
(181, 'Kalampati', 25),
(182, 'Bilaichhari', 25),
(183, 'Kaptai', 25),
(184, 'Jarachhari', 25),
(185, 'Longachh', 25),
(186, 'Naniachhar', 25),
(187, 'Rajsthali', 25),
(188, 'Bandarban Sadar', 26),
(189, 'Alikadam', 26),
(190, 'Thanchi', 26),
(191, 'Naikhong', 26),
(192, 'Ruma', 26),
(193, 'Roanchhari', 26),
(194, 'Comilla Sadar', 27),
(195, 'Barura', 27),
(196, 'Brahmanpara', 27),
(197, 'Burichang', 27),
(198, 'Chandina', 27),
(199, 'Chouddagram', 27),
(200, 'Daudkandi', 27),
(201, 'Davidhar', 27),
(202, 'Homna', 27),
(203, '', 0),
(204, 'Laksam', 27),
(205, 'Muradnagar', 27),
(206, 'Langalkot', 27),
(207, 'Noakhali Sadar', 28),
(208, 'Begumganj', 28),
(209, 'Chatkhil', 28),
(210, 'Senbag', 28),
(211, 'Hatiya', 28),
(212, 'Basurhat', 28),
(213, 'Lakshimpur Sadar', 29),
(214, 'Ramganj', 29),
(215, 'Raypur', 29),
(216, 'Kamalnagar', 29),
(217, 'Char Alexgander', 29),
(218, 'Chandpur Sadar', 30),
(219, 'Faridganj', 30),
(220, 'Hayemchar', 30),
(221, 'Haziganj', 30),
(222, 'Shahrasti', 30),
(223, 'Kachua', 30),
(224, 'Matlobganj', 30),
(225, 'Feni Sadar', 31),
(226, 'Chhagalnaia', 31),
(227, 'Dagonbhuia', 31),
(228, 'Pashurampur', 31),
(229, 'Sonagazi', 31),
(230, 'Brahamanbaria Sadar', 32),
(231, 'Akhaura', 32),
(232, 'Banchharampur', 32),
(233, 'Kasba', 32),
(234, 'Nabinagar', 32),
(235, 'Nasirnagar', 32),
(236, 'Sylhet Sadar', 33),
(237, 'Balaganj', 33),
(238, 'Bianibazar', 33),
(239, 'Bishwanath', 33),
(240, 'Goainhat', 33),
(241, 'Kompanyganj', 33),
(242, 'Fenchuganj', 33),
(243, 'Gopalganj', 33),
(244, 'Jaintapur', 33),
(245, 'Kanaighat', 33),
(246, 'Jakiganj', 33),
(247, 'Sunamganj Sadar', 34),
(248, 'Bishamsapur', 34),
(249, 'Chhatak', 34),
(250, 'Ghungiar', 34),
(251, 'Dhirai Chandpur', 34),
(252, 'Jagnnathpur', 34),
(253, 'Duara bazar', 34),
(254, 'Sachna', 34),
(255, 'Tahirpur', 34),
(256, 'Moulvibazar Sadar', 35),
(257, 'Baralekha', 35),
(258, 'Kamalganj', 35),
(259, 'Kulaura', 35),
(260, 'Rajnagar', 35),
(261, 'Srimangal', 35),
(262, 'Hobiganj Sadar', 36),
(263, 'Azmireeganj', 36),
(264, 'Baniachang', 36),
(265, 'Bahubal', 36),
(266, 'Madhabpur', 36),
(267, 'Chunarughat', 36),
(268, 'Kalauk', 36),
(269, 'Nabiganj', 36),
(270, 'Barishal Sadar', 37),
(271, 'Agailzhara', 37),
(272, 'Babuganj', 37),
(273, 'Barajalia', 37),
(274, 'Sahebganj', 37),
(275, 'Gouranadi', 37),
(276, 'Uzirpur', 37),
(277, 'Mahendiganj', 37),
(278, 'Muladi', 37),
(279, 'Bhola Sadar', 38),
(280, 'Charfashion', 38),
(281, 'Hajirhat', 38),
(282, 'Doulatkhan', 38),
(283, 'Lalmohan UPO', 38),
(284, 'Hatshoshiganj', 38),
(285, 'Borhanuddin UPO', 38),
(286, 'Patuakhali Sadar', 39),
(287, 'Bauphal', 39),
(288, 'Galachipa', 39),
(289, 'Dashmina', 39),
(290, 'Khepupara', 39),
(291, 'Subidkhali', 39),
(292, 'Pirojpur Sadar', 40),
(293, 'Bhandaria', 40),
(294, 'Kaukhali', 40),
(295, 'Swarupkathi', 40),
(296, 'Banaripara', 40),
(297, 'Mathbaria', 40),
(298, 'Nazirpur', 40),
(299, 'Jhalokathi Sadar', 41),
(300, 'Nalchhiti', 41),
(301, 'Kathalia', 41),
(302, 'Rajapur', 41),
(303, 'Barguna Sadar', 42),
(304, 'Amtali', 42),
(305, 'Bamna', 42),
(306, 'Betagi', 42),
(307, 'Patharghata', 42),
(308, 'Rangpur Sadar', 43),
(309, 'Badarganj', 43),
(310, 'Gangachara', 0),
(311, '43', 0),
(312, 'Pirganj', 43),
(313, 'Kaunia', 43),
(314, 'Mithapukur', 43),
(315, 'Taraganj', 43),
(316, 'Pirgachha', 43),
(317, 'Dinajpur Sadar', 44),
(318, 'Biral', 44),
(319, 'Birampur', 44),
(320, 'Chrirbandar', 44),
(321, 'Bangla Hili', 44),
(322, 'Phulbari', 44),
(323, 'Birganj', 44),
(324, 'Maharajganj', 44),
(325, 'Osmanpur', 44),
(326, 'Setabganj', 44),
(327, 'Parbatipur', 44),
(328, 'Khansama', 44),
(329, 'Nababganj', 44),
(330, 'Gaibandha Sadar', 45),
(331, 'Phulchhari', 45),
(332, 'Saadullapur', 45),
(333, 'Gobindaganj', 45),
(334, 'Bonarpara', 45),
(335, 'Sundarganj', 45),
(336, 'Palashbari', 45),
(337, 'Kurigram Sadar', 46),
(338, 'Chilmari', 46),
(339, 'Bhurungamari', 46),
(340, 'Rajibpur', 46),
(341, 'Rajarhat', 46),
(342, 'Ulipur', 46),
(343, 'Nageshwar', 46),
(344, 'Roumari', 0),
(345, '46', 0),
(346, 'Lalmonirhat Sadar', 47),
(347, 'Aditmari', 47),
(348, 'Patgram', 47),
(349, 'Hatibandha', 47),
(350, 'Nilphamari Sadar', 48),
(351, 'Dimla', 48),
(352, 'Domar', 48),
(353, 'Syedpur', 48),
(354, 'Jaldhaka', 48),
(355, 'Kishoriganj', 0),
(356, '48', 0),
(357, 'Panchagarh Sadar', 49),
(358, 'Boda', 49),
(359, 'Tetulia', 49),
(360, 'Dabiganj', 49),
(361, 'Thakurgaon Sadar', 50),
(362, 'Baliadangi', 50),
(363, 'Jibanpur', 50),
(364, 'Rani Sankail', 50),
(365, 'Pirganj', 50),
(366, 'Chalna Bazar', 51),
(367, 'Batiaghat', 51),
(368, 'Digalia', 51),
(369, 'Paikgachha', 51),
(370, 'Phultala', 51),
(371, 'Alaipur(Rupsha)', 51),
(372, 'Terakhada', 51),
(373, 'Sajiara', 51),
(374, 'Kotwali(Khulna Sadar)', 51),
(375, 'Madinabad', 51),
(376, 'Bagerhat Sadar', 52),
(377, 'Chitalmari', 52),
(378, 'Fakirhat', 52),
(379, 'Kachua UPO', 52),
(380, 'Mollahat', 52),
(381, 'Chalna Ankorage', 52),
(382, 'Morelganj', 52),
(383, 'Rampal', 52),
(384, 'Rayenda', 52),
(385, 'Alamdanga', 53),
(386, 'Chuadanga Sadar', 53),
(387, 'Damurhuda', 53),
(388, 'Doulatganj', 53),
(389, 'Bagharpara', 54),
(390, 'Chaugachha', 54),
(391, 'Jhikargachha', 54),
(392, 'Keshabpur', 54),
(393, 'Jessore Sadar', 54),
(394, 'Monirampur', 54),
(395, 'Sarsa', 54),
(396, 'Harinakundu', 55),
(397, 'Jhenaidah Sadar', 55),
(398, 'Kotchandpur', 55),
(399, 'Maheshpur', 55),
(400, 'Shailakupa', 55),
(401, 'Bheramara', 56),
(402, 'Janipur', 56),
(403, 'Kumarkhali', 56),
(404, 'Kushtia Sadar', 56),
(405, 'Mirpur', 56),
(406, 'Rafayetpur', 56),
(407, 'Magura Sadar', 57),
(408, 'Mohammadpur', 57),
(409, 'Arpara', 57),
(410, 'Shripur', 57),
(411, 'Meherpur Sadar', 58),
(412, 'Gangni', 58),
(413, 'Kalia', 59),
(414, 'Laxmipasha', 59),
(415, 'Narail Sadar', 59),
(416, 'Mohajan', 59),
(417, 'Ashashuni', 60),
(418, 'Debbhata', 60),
(419, 'Kalaroa', 60),
(420, 'Kaliganj', 60),
(421, 'Satkhira Sadar', 60),
(422, 'Nakipur', 60),
(423, 'Mymensingh Sadar', 61),
(424, 'Bhaluka', 61),
(425, 'Gaforgaon', 61),
(426, 'Gouripur', 61),
(427, 'Fulbaria', 61),
(428, 'Haluaghat', 61),
(429, 'Isshwargonj', 61),
(430, 'Muktagachha', 61),
(431, 'Nandail', 61),
(432, 'Phulpur', 61),
(433, 'Trishal', 61),
(434, 'Sherpur Sadar', 62),
(435, 'Nalitabari', 62),
(436, 'Jhinaigati', 62),
(437, 'Nakla', 62),
(438, 'Shribardi', 62),
(439, 'Jamalpur Sadar', 63),
(440, 'Islampur', 63),
(441, 'Dewanganj', 63),
(442, 'Malandah', 63),
(443, 'Mathargonj', 63),
(444, 'Shorishabari', 63),
(445, 'Netrakona Sadar', 64),
(446, 'Atpara', 64),
(447, 'Durgapur', 64),
(448, 'Barhatta', 64),
(449, 'Kalmakanda', 64),
(450, 'Khaliajuri', 64),
(451, 'Kendua', 64),
(452, 'Madan', 64),
(453, 'Purbadhola', 64),
(454, 'Mohanganj', 64),
(455, 'Sarai', 32),
(456, 'Demra', 1),
(457, 'Dhaka Cantonment', 1),
(458, 'Dhanmondi', 1),
(459, 'Gulshan', 1),
(460, 'Jatrabari', 1),
(461, 'Joypara', 1),
(462, 'Khilgaon', 1),
(463, 'Khilkhet', 1),
(464, 'Lalbag', 1),
(465, 'Mirpur', 1),
(466, 'Mohammadpur', 1),
(467, 'Motijheel', 1),
(468, 'New Market', 1),
(469, 'Palton', 1),
(470, 'Ramna', 1),
(471, 'Sabujbag', 1),
(472, 'Sutrapur', 1),
(473, 'Tejgaon', 1),
(474, 'Tejgaon Industrial Area', 1),
(475, 'Uttara', 1),
(476, 'Tushbhandar', 47),
(477, 'Chotto Dab', 49),
(478, 'Noapara', 54),
(479, 'Naldanga', 55),
(480, 'Taala', 60),
(481, 'Bakshigonj', 62),
(482, 'Moddoynagar', 64),
(483, 'Dhobaura', 64),
(484, 'Dharampasha', 64),
(485, 'Monnunagar', 2),
(486, 'Kotalipara', 10),
(487, 'Tarakanda', 61),
(488, 'Baidder Bazar', 3),
(489, 'Siddirganj', 3),
(490, 'Rajshahi Sadar', 14),
(491, 'Debottar', 17),
(492, 'Adabor', 1),
(493, 'Badda', 1),
(494, 'Bangsal', 1),
(495, 'Biman Bandar', 1),
(496, 'Chak Bazar', 1),
(497, 'Dakshin Khan', 1),
(498, 'Darus Salam', 1),
(499, 'Gendaria', 1),
(500, 'Hazaribag', 1),
(501, 'Kadamtali', 1),
(502, 'Kafrul', 1),
(503, 'Kalabagan', 1),
(504, 'Kamrangirchar', 1),
(505, 'Kotwali', 1),
(506, 'Pallabi', 1),
(507, 'Rampura', 1),
(508, 'Shah Ali', 1),
(509, 'Shahbag', 1),
(510, 'Sher-e-Bangla', 1),
(511, 'Shyampur', 1),
(512, 'Turag', 1),
(513, 'Uttar Khan', 1),
(514, 'Mohakhali', 1),
(515, 'Bogura Sadar', 16),
(516, 'Majhir', 16),
(517, 'Lama', 26),
(518, 'Titas', 27),
(519, 'Meghna', 27),
(520, 'Comilla Adarsha Sadar', 27),
(521, 'Monohargonj', 27),
(522, 'Sonaimuri', 28),
(523, 'Kabirhat', 28),
(524, 'Companiganj', 28),
(525, 'MatlabUttar', 30),
(526, 'Fulgazi', 31),
(527, 'Ashuganj', 32),
(528, 'Bijoynagar', 32),
(529, 'South Shurma', 33),
(530, 'South Sunamganj', 34),
(531, 'Sullah', 34),
(532, 'Juri', 35),
(533, 'Bakerganj', 37),
(534, 'Mirzaganj', 39),
(535, 'Taltoli', 42),
(536, 'Char Rajibpur', 46),
(537, 'Dacope', 51),
(538, 'Dumuria', 51),
(539, 'Daulatpur', 51),
(540, 'Khalishpur', 51),
(541, 'Harintana', 51),
(542, 'Shekhpara', 56),
(543, 'Mujibnagar', 58);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_time`
--

CREATE TABLE `tbl_time` (
  `id` int(11) NOT NULL,
  `stime` time NOT NULL,
  `endtime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_timerecord`
--

CREATE TABLE `tbl_timerecord` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `defTimein` varchar(30) NOT NULL,
  `defTimeOut` varchar(30) NOT NULL,
  `adate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_timerecord`
--

INSERT INTO `tbl_timerecord` (`id`, `userId`, `defTimein`, `defTimeOut`, `adate`) VALUES
(1, 538, '10:00', '17:00', '2018-02-11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_training`
--

CREATE TABLE `tbl_training` (
  `trainingId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `tInstitution` varchar(255) NOT NULL,
  `trainingName` varchar(255) NOT NULL,
  `tTopic` varchar(255) NOT NULL,
  `sMonth` varchar(10) NOT NULL,
  `eMonth` varchar(10) NOT NULL,
  `tLenth` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_training`
--

INSERT INTO `tbl_training` (`trainingId`, `userId`, `tInstitution`, `trainingName`, `tTopic`, `sMonth`, `eMonth`, `tLenth`, `status`) VALUES
(3, 9, 'Ibcs Primax', 'web development', 'oop', '', '', '4', 0),
(4, 0, 'Leveraging ICT for Growth Employment And Governance Project', 'LICT Top Up IT Web Design &amp; Development', 'Design &amp; Development', '', '', '200', 0),
(5, 0, 'Daffodil International University', 'CCNA', 'CCNA', '', '', '5', 0),
(6, 0, 'BITM', 'Software Testing &amp; Quality Assurance using Selenium', 'Software Testing &amp; Quality Assurance using Selenium', '', '', '3', 0),
(7, 0, 'wsms', 'automation,electronic', 'cut TV,led TV,microcontroller,Home appliances', '', '', '3', 0),
(8, 0, 'BCC', 'LICT', 'Web development', '', '', '3', 0),
(11, 0, 'LICT', 'Web Development', 'php', '', '', '3', 0),
(12, 499, 'LICT', 'Web Development', 'php', '', '', '3 month', 0),
(13, 501, 'US software', 'LICT', 'Web Development', '', '', '4', 0),
(14, 498, 'LICT', 'Web Development', 'php', '', '', '3 month', 0),
(16, 505, 'Micro Electronic Limited', '3 month Industrial Training', 'Electrical and Electronic Component Make, Service etc', '', '', '3 month', 0),
(17, 499, 'IBCS Primax', 'Web Development With OOP', 'OOP php', 'jan-2017', 'mar-2017', '3months', 0),
(18, 517, 'BITM', 'SEIP', 'PHP', 'December-2', 'February-2', '3 months', 0),
(19, 527, 'SEIP of Basis', 'Web Application Dot Net C#', 'Dot Net', 'Aug-2017', 'Oct-2017', '3 Months', 0),
(20, 527, 'SEIP of Basis', 'Web Application Dot Net C#', 'Dot Net', 'Aug-2017', 'Oct-2017', '3 Months', 0),
(22, 544, 'IT GLOBAL ONLINE LTD.', 'Intern', 'web development', 'oct-2017', 'jan-2017', '3 month', 0),
(23, 531, 'Hello Academy', 'Wordpress Theme Development', 'wordpress development, codestar framework,visual composer', '05/12/2016', '06/08/2017', '8 month', 0),
(24, 531, 'BITM', 'Web Application Development-PHP', 'HTML,CSS,JAVASCRIPT,PHP,LARAVEL FRAMEWORK', '07/03/2017', '05/06/2017', '3 MONTH', 0),
(25, 531, 'bdjobs.com', 'Programming with PHP Basics and CodeIgniter Framework', 'HTML,CSS,JAVASCRIPT,PHP,CodeIgniter FRAMEWORK', '27/04/2012', '02/07/2012', '3 MONTH', 0),
(26, 549, 'Ashuganj Power Station Company LTD (APSCL)', 'Industrial Internship', 'Power generation, distribution and management system', 'jan-2016', 'Feb-2016', '15 days', 0),
(27, 549, 'Rural Developement Area (RDA), Bagura', 'Live In Field Experience', 'Survey, Research, team work, Rural life style', 'Aug-2015', 'Sep-2015', '10 days', 0),
(28, 550, 'IBCS PriMax', 'OOP PhP', 'Web Development with oop php', 'jan-2017', 'mar-2017', '3 months', 0),
(29, 546, 'BITM', 'Web Application Development-PHP', ':HTML,CSS,JAVASCRIPT,PHP,LARAVEL FRAMEWORK', '07/03/2017', '05/06/2017', '3 MONTH', 0),
(30, 546, 'Hello Academy', 'Wordpress Theme Development', ':wordpress development, codestar framework,visual composer', '05/12/2016', '06/08/2017', '8 month', 0),
(31, 546, 'bdjobs.com', 'Programming with PHP Basics and CodeIgniter Framework', ':HTML,CSS,JAVASCRIPT,PHP,CodeIgniter FRAMEWORK', '27/04/2012', '02/07/2012', '3 MONTH', 0),
(32, 559, 'BITM', 'Web App Development', 'C#Dot Net', 'July-2017', 'October-20', '3 Month', 0),
(33, 516, 'BASIS Insttitute of Technology &amp; Management', 'Web Application Development - PHP', 'Basic PHP, Web Basic (HTML, CSS, JS) etc.', '09/11/2015', '01/02.2016', '3 months', 0),
(56, 557, '', '', '', '', '', '', 0),
(57, 572, 'IBCS PriMax', 'OOP PhP', 'Web Development with oop php', 'jan-2017', 'mar-2017', '3 months', 1),
(58, 572, 'LICT', 'OOP PhP', 'Web Development with oop php', 'dec-2016', 'mar-2017', '4month', 1),
(59, 572, 'BASIS', 'Profeesional Web Development With Asp.Net', 'Asp.Net', 'Sep-2016', 'Nov-2016', '3 months', 1),
(60, 581, 'Bangladesh Computer Council', 'TOP UP IT', 'Web Development in PHP', 'Aug-2015', 'Oct-2016', '13 month', 1),
(61, 594, 'Arena Security', 'Cyber Security', 'Cyber Security', '10/2017', 'Running', '6 month', 1),
(62, 594, 'Arena Security', 'Cyber Security', 'Cyber Security', 'Oct-2017', 'Feb-2018', '4 month', 1),
(63, 594, 'Arena Security', 'Cyber Security', 'Cyber Security', 'Oct-2017', 'Feb-2018', '4 months', 1),
(64, 594, 'Arena Security', 'Cyber Security', 'Cyber Security', 'Oct-2017', 'Feb-2018', '4 months', 1),
(65, 594, 'Arena Security', 'Cyber Security', 'Cyber Security', 'Oct-2017', 'Feb-2018', '4 months', 1),
(66, 594, '', '', '', '', '', '', 1),
(67, 603, 'BITM', 'Web Application Development-Dot Net', 'C# And Asp.net Framework', 'Oct-2016', 'Dec-2016', '3 month', 1),
(68, 603, 'From Cisco Network Academy,IICT,CUET', 'CCNA Routing and switching: Introduction to network', 'Routing and switching', 'September-', 'Oct-2015', '2 month', 1),
(69, 603, 'Coderstrust ltd', 'Advance web design', 'Html,CSS,Bootstrap,Javascript,Jquery,photoshop', 'Feb-2016', 'April-2016', '3 months', 1),
(70, 603, 'Coderstrust ltd', 'Advance web design', 'Html,CSS,Bootstrap,Javascript,Jquery,photoshop', 'Feb-2016', 'April-2016', '3 months', 1),
(71, 603, 'ICT Division Bangladesh.', 'Mobile Game Graphics &amp; Mobile Game Development', 'Basic Animation And Game development', 'july-2016', 'july-2016', '10 days', 1),
(72, 603, 'ICT Division Bangladesh.', 'Mobile Game Graphics &amp; Mobile Game Development', 'Basic Animation And Game development', 'july-2016', 'july-2016', '10 days', 1),
(73, 603, 'ICT Division Bangladesh.', 'Mobile Game Graphics &amp; Mobile Game Development', 'Basic Animation And Game development', 'july-2016', 'july-2016', '10 days', 1),
(74, 603, 'BITM', 'Web Application Development-Dot Net', 'C# And Asp.net Framework', 'Oct-2016', 'Dec-2016', '3 month', 1),
(75, 603, 'BITM', 'Web Application Development-Dot Net', 'C# And Asp.net Framework', 'Oct-2016', 'Dec-2016', '3 month', 1),
(76, 603, '', '', '', '', '', '', 1),
(77, 617, 'AIUB', 'CCNA', 'Routing &amp; Switching', 'July 2016', 'July 2017', '1 Year', 1),
(78, 617, 'NCCIT', 'Computer Application', 'Basic Course', 'March 2008', 'July 2008', '6 months', 1),
(79, 617, 'AIUB', 'CCNA', 'Routing &amp; Switching', 'July 2016', 'July 2017', '1 Year', 1),
(80, 619, 'IICT, CUET', 'CCNA Routing and switching', 'Introduction to Network', 'may 2016', 'october 20', '3 months', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_university`
--

CREATE TABLE `tbl_university` (
  `uId` int(11) NOT NULL,
  `uName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_university`
--

INSERT INTO `tbl_university` (`uId`, `uName`) VALUES
(1, 'Dhaka University of Engineering & Technology'),
(2, 'Chittagong University of Engineering & Technology'),
(3, 'Barisal University'),
(4, 'Begum Rokeya University'),
(5, 'Comilla University'),
(6, 'Hajee Mohammad Danesh Science & Technology University'),
(7, 'Islamic University'),
(8, 'Jagannath University'),
(9, 'Jahangirnagar University'),
(10, 'Jessore University of Science & Technology'),
(11, 'Khulna University'),
(12, 'Khulna University of Engineering and Technology'),
(13, 'Mawlana Bhashani Science & Technology University'),
(14, 'National University'),
(15, 'Noakhali Science & Technology University'),
(16, 'Pabna University of Science and Technology'),
(17, 'Patuakhali Science And Technology University'),
(18, 'Rajshahi University of Engineering & Technology'),
(19, 'Rangamati Science and Technology University'),
(20, 'Shahjalal University of Science & Technology'),
(21, 'University of Chittagong'),
(22, 'University of Dhaka'),
(23, 'University of Rajshahi'),
(24, 'Sher-e-Bangla Agricultural University'),
(25, 'Bangladesh Agricultural University'),
(26, 'Bangladesh Open University'),
(27, 'Bangladesh University of Textiles'),
(28, 'Rabindra University, Bangladesh'),
(29, 'Ahsanullah University of Science and Technology'),
(30, 'American International University-Bangladesh'),
(31, 'ASA University Bangladesh'),
(32, 'Asian University of Bangladesh'),
(33, 'Atish Dipankar University of Science & Technology'),
(34, 'BGMEA University of Fashion & Technology(BUFT)'),
(35, 'BRAC University'),
(36, 'City University'),
(37, 'Daffodil International University'),
(38, 'Dhaka International University'),
(39, 'Eastern University'),
(40, 'East West University'),
(41, 'Southeast University'),
(42, 'World University of Bangladesh'),
(43, 'Uttara University'),
(44, 'United International University'),
(45, 'Independent University Bangladesh '),
(46, 'The University of Asia Pacific'),
(47, 'University of Liberal Arts Bangladesh'),
(48, 'University of Development Alternative'),
(49, 'International Islamic University Chittagong'),
(50, 'North Western University'),
(51, 'University of Information Technology and Science'),
(52, 'Anwer Khan Modern University'),
(53, 'Army University of Engineering and Technology (BAUET), Qadirabad'),
(54, 'Army University of Science and Technology(BAUST), Saidpur'),
(55, 'Bangladesh Army International University of Science & Technology(BAIUST) ,Comilla'),
(56, 'Bangladesh University of Business & Technology'),
(57, 'International University of Business Agriculture & Technology'),
(58, 'North East University Bangladesh'),
(59, 'North South University'),
(60, 'Varendra University'),
(61, 'Victoria University of Bangladesh'),
(62, 'The Millennium University'),
(63, 'The People''s University of Bangladesh'),
(64, 'Times University, Bangladesh'),
(65, 'University of Creative Technology, Chittagong'),
(66, 'Fareast International University'),
(67, 'European University of Bangladesh'),
(68, 'Royal University of Dhaka'),
(69, 'Prime University'),
(70, 'Primeasia University'),
(71, 'Presidency University'),
(72, 'Shanto-Mariam University of Creative Technology'),
(73, 'Sonargaon University'),
(74, 'Southern University Bangladesh'),
(75, 'Stamford University Bangladesh'),
(76, 'State University of Bangladesh	'),
(77, 'University of South Asia');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_upload`
--

CREATE TABLE `tbl_upload` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `resume` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_upload`
--

INSERT INTO `tbl_upload` (`id`, `userId`, `resume`) VALUES
(7, 499, 'admin/Resume/2605c16d1e.pdf'),
(8, 505, 'admin/Resume/b32f59ceaa.pdf'),
(9, 516, 'admin/Resume/5eca90a4d6.pdf'),
(10, 522, 'admin/Resume/db3c9417d0.pdf'),
(11, 524, 'admin/Resume/e77a83d888.pdf'),
(12, 531, 'admin/Resume/6a0c3c0e72.pdf'),
(13, 532, 'admin/Resume/c82eee16ec.pdf'),
(14, 539, 'admin/Resume/89a2acaa73.pdf'),
(15, 540, 'admin/Resume/7c6e9e4174.pdf'),
(19, 538, 'admin/Resume/8266882045.pdf'),
(20, 492, 'admin/Resume/beec2a35b4.pdf'),
(21, 508, 'admin/Resume/5333461640.pdf'),
(22, 0, 'admin/Resume/7fb2475d64.pdf'),
(23, 544, 'admin/Resume/6f58073455.pdf'),
(24, 549, 'admin/Resume/77d6ad1ae4.pdf'),
(25, 553, 'admin/Resume/11561bfff3.pdf'),
(26, 552, 'admin/Resume/268662d676.pdf'),
(27, 558, 'admin/Resume/163091e453.pdf'),
(28, 546, 'admin/Resume/1e8d132b98.pdf'),
(29, 559, 'admin/Resume/6c2404bbec.pdf'),
(30, 554, 'admin/Resume/4c203c43df.pdf'),
(31, 560, 'admin/Resume/c2ccb86412.pdf'),
(32, 569, 'admin/Resume/8885286824.pdf'),
(33, 570, 'admin/Resume/10faa861c3.pdf'),
(34, 572, 'admin/Resume/4af485f51f.pdf'),
(35, 581, 'admin/Resume/d31d7a4bc7.pdf'),
(36, 576, 'admin/Resume/a721ab8555.pdf'),
(37, 598, 'admin/Resume/54bc764649.pdf'),
(38, 590, 'admin/Resume/f2d336434b.pdf'),
(39, 617, 'admin/Resume/39e1115d8a.pdf'),
(40, 619, 'admin/Resume/6109354fd1.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_urecord`
--

CREATE TABLE `tbl_urecord` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `browser` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_urecord`
--

INSERT INTO `tbl_urecord` (`id`, `userId`, `ip`, `browser`, `time`) VALUES
(18, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 06:54:04'),
(14, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 06:36:57'),
(13, 505, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-02 06:36:25'),
(17, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 06:51:33'),
(16, 479, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-02 06:38:15'),
(15, 505, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-02 06:37:44'),
(19, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 06:54:07'),
(20, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 06:54:11'),
(21, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 06:54:16'),
(22, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 06:54:19'),
(23, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 06:54:22'),
(24, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 06:54:29'),
(25, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 06:58:54'),
(26, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 06:59:08'),
(27, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 06:59:12'),
(28, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 06:59:20'),
(29, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 06:59:26'),
(30, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 06:59:30'),
(31, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 06:59:43'),
(32, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 06:59:52'),
(33, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 07:00:04'),
(34, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 07:02:34'),
(35, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 07:02:47'),
(36, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 07:02:54'),
(37, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 07:07:28'),
(38, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 07:07:41'),
(39, 479, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-02 07:07:44'),
(40, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 07:07:44'),
(41, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 07:08:03'),
(42, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 07:08:04'),
(43, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 08:23:34'),
(44, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 08:23:35'),
(45, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 08:23:36'),
(46, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 08:23:42'),
(47, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 08:23:47'),
(48, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 08:23:56'),
(49, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 08:24:01'),
(50, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 08:24:06'),
(51, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 08:24:20'),
(52, 505, '103.86.108.210', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 08:34:55'),
(53, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-02 08:45:00'),
(54, 505, '103.86.108.210', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 08:45:02'),
(55, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-02 08:45:16'),
(56, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-02 08:46:23'),
(57, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 08:50:30'),
(58, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-02 09:24:10'),
(59, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 09:30:41'),
(60, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 09:37:02'),
(61, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 09:55:35'),
(62, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 10:27:43'),
(63, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 10:28:49'),
(64, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 10:31:41'),
(65, 0, '103.98.205.211', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-02 11:09:53'),
(66, 0, '14.1.100.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 12:26:32'),
(67, 0, '14.1.100.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 12:27:32'),
(68, 516, '14.1.100.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 12:31:56'),
(69, 516, '14.1.100.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 12:33:03'),
(70, 516, '14.1.100.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 12:38:19'),
(71, 516, '14.1.100.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 12:38:42'),
(72, 0, '116.58.203.147', 'Mozilla/5.0 (Linux; Android 5.0.2; SM-G530H Build/', '2017-11-02 12:49:22'),
(73, 0, '116.58.203.147', 'Mozilla/5.0 (Linux; Android 5.0.2; SM-G530H Build/', '2017-11-02 13:08:55'),
(74, 0, '45.127.247.8', 'Mozilla/5.0 (Windows NT 6.1; rv:56.0) Gecko/201001', '2017-11-02 15:32:44'),
(75, 0, '45.127.247.8', 'Mozilla/5.0 (Windows NT 6.1; rv:56.0) Gecko/201001', '2017-11-02 15:35:53'),
(76, 0, '45.127.247.8', 'Mozilla/5.0 (Windows NT 6.1; rv:56.0) Gecko/201001', '2017-11-02 15:35:59'),
(77, 0, '175.41.45.238', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-11-02 16:05:29'),
(78, 0, '43.230.122.2', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', '2017-11-02 16:07:37'),
(79, 0, '43.230.122.2', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', '2017-11-02 16:07:56'),
(80, 0, '43.230.122.2', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', '2017-11-02 16:08:46'),
(81, 517, '175.41.45.238', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-11-02 16:14:04'),
(82, 517, '175.41.45.238', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-11-02 16:15:51'),
(83, 517, '175.41.45.238', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-11-02 16:15:58'),
(84, 517, '175.41.45.238', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-11-02 16:16:21'),
(85, 0, '43.230.122.2', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', '2017-11-02 16:17:41'),
(86, 0, '43.230.122.2', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', '2017-11-02 16:18:00'),
(87, 0, '43.230.122.2', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', '2017-11-02 16:18:51'),
(88, 0, '43.230.122.2', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', '2017-11-02 16:20:24'),
(89, 517, '175.41.45.238', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-11-02 16:21:23'),
(90, 517, '175.41.45.238', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-11-02 16:24:02'),
(91, 519, '43.230.122.2', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', '2017-11-02 16:24:28'),
(92, 517, '175.41.45.238', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-11-02 16:24:56'),
(93, 517, '175.41.45.238', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-11-02 16:25:06'),
(94, 519, '43.230.122.2', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', '2017-11-02 16:25:53'),
(95, 517, '175.41.45.238', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-11-02 16:25:59'),
(96, 517, '175.41.45.238', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-11-02 16:27:32'),
(97, 517, '175.41.45.238', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-11-02 17:03:24'),
(98, 0, '103.19.253.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 17:07:42'),
(99, 0, '103.19.253.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 17:07:45'),
(100, 502, '43.229.208.10', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko', '2017-11-02 17:18:02'),
(101, 502, '43.229.208.10', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko', '2017-11-02 17:22:40'),
(102, 502, '43.229.208.10', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko', '2017-11-02 17:22:53'),
(103, 505, '103.86.108.210', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 17:23:00'),
(104, 0, '103.58.74.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-02 17:47:38'),
(105, 0, '45.127.248.184', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 17:48:42'),
(106, 0, '45.127.248.184', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 17:50:24'),
(107, 0, '103.239.253.164', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:56.0) ', '2017-11-02 17:50:41'),
(108, 522, '45.127.248.184', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 17:58:40'),
(109, 522, '45.127.248.184', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 18:02:28'),
(110, 522, '45.127.248.184', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 18:04:59'),
(111, 0, '103.58.74.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-02 18:05:02'),
(112, 522, '45.127.248.184', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 18:05:03'),
(113, 522, '45.127.248.184', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 18:05:32'),
(114, 0, '103.58.74.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-02 18:07:58'),
(115, 521, '103.58.74.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-02 18:16:02'),
(116, 522, '45.127.248.184', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 18:16:15'),
(117, 522, '45.127.248.184', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 18:16:29'),
(118, 522, '45.127.248.184', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 18:16:52'),
(119, 522, '45.127.248.184', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-02 18:17:05'),
(120, 0, '103.242.217.42', 'Mozilla/5.0 (Linux; Android 4.4.2; V45 Build/KOT49', '2017-11-02 20:06:39'),
(121, 0, '103.230.106.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-03 05:27:02'),
(122, 523, '203.76.222.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-03 07:07:27'),
(123, 523, '203.76.222.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-03 07:08:06'),
(124, 524, '203.76.222.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-03 08:24:35'),
(125, 524, '203.76.222.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-03 08:25:41'),
(126, 0, '45.114.232.246', 'Mozilla/5.0 (Linux; Android 6.0.1; ONE E1003 Build', '2017-11-03 10:00:51'),
(127, 526, '103.252.227.48', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', '2017-11-03 11:14:15'),
(128, 526, '103.252.227.48', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', '2017-11-03 11:26:23'),
(129, 526, '103.252.227.48', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', '2017-11-03 11:31:08'),
(130, 526, '103.252.227.48', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', '2017-11-03 11:31:42'),
(131, 526, '103.252.227.48', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', '2017-11-03 11:31:59'),
(132, 526, '103.252.227.48', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', '2017-11-03 11:32:03'),
(133, 0, '103.96.104.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-03 13:04:51'),
(134, 0, '103.96.104.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-03 13:04:54'),
(135, 527, '103.96.104.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-03 13:12:53'),
(136, 527, '103.96.104.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-03 13:13:36'),
(137, 527, '103.96.104.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-03 13:14:06'),
(138, 527, '103.96.104.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-03 13:14:10'),
(139, 527, '103.96.104.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-03 13:14:11'),
(140, 527, '103.96.104.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-03 13:14:15'),
(141, 527, '103.96.104.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-03 13:14:25'),
(142, 527, '103.96.104.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-03 13:15:08'),
(143, 527, '103.96.104.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-03 15:08:59'),
(144, 527, '103.96.104.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-03 15:22:19'),
(145, 527, '103.96.104.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-03 15:28:56'),
(146, 527, '103.96.104.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-03 15:29:26'),
(147, 527, '103.96.104.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-03 15:38:22'),
(148, 527, '103.96.104.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-03 15:38:56'),
(149, 527, '103.96.104.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-03 15:44:52'),
(150, 527, '103.96.104.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-03 15:45:38'),
(151, 527, '103.96.104.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-03 15:45:43'),
(152, 527, '103.96.104.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-03 15:45:49'),
(153, 0, '103.52.142.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-03 17:40:55'),
(154, 528, '103.52.142.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-03 17:44:45'),
(155, 528, '103.52.142.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-03 17:52:19'),
(156, 528, '103.52.142.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-03 17:53:11'),
(157, 528, '103.52.142.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-03 17:53:19'),
(158, 528, '103.52.142.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-03 17:53:34'),
(159, 528, '103.52.142.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-03 17:53:55'),
(160, 528, '103.52.142.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-03 17:54:13'),
(161, 528, '103.52.142.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-03 17:55:50'),
(162, 0, '203.190.9.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-04 03:03:03'),
(163, 0, '203.190.9.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-04 03:06:17'),
(164, 0, '203.190.9.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-04 03:06:26'),
(165, 523, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-04 03:44:12'),
(166, 0, '27.147.201.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-04 04:04:40'),
(167, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-04 04:52:28'),
(168, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-04 04:53:06'),
(169, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-04 04:55:55'),
(170, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-04 04:55:58'),
(171, 528, '103.52.142.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-04 05:39:03'),
(172, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-04 05:42:40'),
(173, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-04 05:45:45'),
(174, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-04 05:45:52'),
(175, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-04 05:46:04'),
(176, 0, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-04 07:40:13'),
(177, 0, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-04 07:40:16'),
(178, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-04 07:51:49'),
(179, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-04 07:54:44'),
(180, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-04 07:55:09'),
(181, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-04 08:00:20'),
(182, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-04 08:00:57'),
(183, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-04 08:03:10'),
(184, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-04 08:04:46'),
(185, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-04 08:04:50'),
(186, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-04 08:05:08'),
(187, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-04 08:05:33'),
(188, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-04 08:05:36'),
(189, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-04 08:05:42'),
(190, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-04 08:19:43'),
(191, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-04 08:39:55'),
(192, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-04 08:39:56'),
(193, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-04 09:23:32'),
(194, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-04 09:23:34'),
(195, 505, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-04 09:23:50'),
(196, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-04 09:24:43'),
(197, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-04 09:30:46'),
(198, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-04 09:35:49'),
(199, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-04 09:41:12'),
(200, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-04 09:45:08'),
(201, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-04 09:48:48'),
(202, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-04 09:49:04'),
(203, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-04 09:55:04'),
(204, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-04 10:28:52'),
(205, 505, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-04 10:35:09'),
(206, 505, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-04 10:35:22'),
(207, 505, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-04 10:35:50'),
(208, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-04 10:36:02'),
(209, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-04 10:36:11'),
(210, 505, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-04 10:36:21'),
(211, 505, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-04 10:37:30'),
(212, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-04 10:37:54'),
(213, 505, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-04 10:44:19'),
(214, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-04 11:19:41'),
(215, 505, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-04 11:20:08'),
(216, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-04 11:21:29'),
(217, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-04 11:21:47'),
(218, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-04 11:23:14'),
(219, 505, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-04 11:26:30'),
(220, 505, '103.86.108.210', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-04 17:20:27'),
(221, 0, '103.18.180.82', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:56.0) G', '2017-11-04 17:53:55'),
(222, 0, '103.18.180.82', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:56.0) G', '2017-11-04 17:53:56'),
(223, 531, '103.237.37.251', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-05 03:26:56'),
(224, 531, '103.237.37.251', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-05 03:27:25'),
(225, 531, '103.237.37.251', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-05 03:27:31'),
(226, 531, '103.237.37.251', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-05 03:28:06'),
(227, 531, '103.237.37.251', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-05 03:29:01'),
(228, 531, '103.237.37.251', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-05 03:34:12'),
(229, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 03:39:40'),
(230, 0, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 03:39:55'),
(231, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 03:40:29'),
(232, 531, '103.237.37.251', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-05 03:47:10'),
(233, 531, '103.237.37.251', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-05 03:47:24'),
(234, 531, '103.237.37.251', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-05 03:47:56'),
(235, 531, '103.237.37.251', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-05 03:54:15'),
(236, 531, '103.237.37.251', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-05 03:56:35'),
(237, 531, '103.237.37.251', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-05 03:57:27'),
(238, 531, '103.237.37.251', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-05 03:57:38'),
(239, 0, '123.200.20.201', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:56.0) G', '2017-11-05 04:04:08'),
(240, 532, '123.200.20.201', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:56.0) G', '2017-11-05 04:08:27'),
(241, 531, '103.237.37.251', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-05 04:09:30'),
(242, 532, '123.200.20.201', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:56.0) G', '2017-11-05 04:09:56'),
(243, 532, '123.200.20.201', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:56.0) G', '2017-11-05 04:10:11'),
(244, 531, '103.237.37.251', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-05 04:10:21'),
(245, 531, '103.237.37.251', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-05 04:10:40'),
(246, 531, '103.237.37.251', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-05 04:14:53'),
(247, 531, '103.237.37.251', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-05 04:20:57'),
(248, 499, '118.179.151.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 05:19:32'),
(249, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-05 05:26:36'),
(250, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-05 05:27:01'),
(251, 536, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 06:53:32'),
(252, 536, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 06:54:49'),
(253, 536, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 06:55:05'),
(254, 536, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 06:59:38'),
(255, 536, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 06:59:42'),
(256, 536, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 06:59:53'),
(257, 536, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 07:18:48'),
(258, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 07:30:05'),
(259, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 07:30:14'),
(260, 532, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 07:31:12'),
(261, 532, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 07:31:32'),
(262, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 07:34:58'),
(263, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 07:56:02'),
(264, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 07:56:05'),
(265, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 07:56:09'),
(266, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 08:01:48'),
(267, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 08:01:52'),
(268, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 08:03:03'),
(269, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 08:03:08'),
(270, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 08:03:15'),
(271, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 08:08:06'),
(272, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 08:23:50'),
(273, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 08:23:52'),
(274, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 08:26:27'),
(275, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 08:26:32'),
(276, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 08:26:40'),
(277, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 08:27:03'),
(278, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 08:27:51'),
(279, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 08:31:00'),
(280, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 08:31:20'),
(281, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 08:32:08'),
(282, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 08:34:58'),
(283, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 08:36:26'),
(284, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 08:37:37'),
(285, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 08:37:43'),
(286, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 08:39:13'),
(287, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 08:41:06'),
(288, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 08:41:10'),
(289, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 08:41:56'),
(290, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 08:42:45'),
(291, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 08:43:51'),
(292, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 08:44:13'),
(293, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 08:46:04'),
(294, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 08:48:00'),
(295, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 08:48:11'),
(296, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 08:51:47'),
(297, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 08:53:40'),
(298, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 08:53:48'),
(299, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 08:54:06'),
(300, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 08:54:29'),
(301, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 08:55:14'),
(302, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 08:55:16'),
(303, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 08:55:42'),
(304, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 08:58:19'),
(305, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 09:03:48'),
(306, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 09:03:51'),
(307, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 09:03:53'),
(308, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 09:07:12'),
(309, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 09:07:19'),
(310, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 09:07:41'),
(311, 539, '123.108.244.15', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-05 09:08:07'),
(312, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 09:08:39'),
(313, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 09:15:13'),
(314, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 09:19:31'),
(315, 539, '123.108.244.15', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-05 09:23:17'),
(316, 539, '123.108.244.15', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-05 09:23:39'),
(317, 539, '123.108.244.15', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-05 09:27:35'),
(318, 539, '123.108.244.15', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-05 09:28:09'),
(319, 539, '123.108.244.15', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-05 09:28:27'),
(320, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 09:29:28'),
(321, 539, '123.108.244.15', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-05 09:30:21'),
(322, 539, '123.108.244.15', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-05 09:32:04'),
(323, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 09:41:53'),
(324, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 09:41:58'),
(325, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 09:42:01'),
(326, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 09:42:04'),
(327, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 09:42:08'),
(328, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 09:42:13'),
(329, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 09:42:16'),
(330, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 09:42:19'),
(331, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 09:42:59'),
(332, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 09:43:02'),
(333, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 09:43:10'),
(334, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-05 09:43:14'),
(335, 539, '123.108.244.15', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-05 09:50:56'),
(336, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 10:26:44'),
(337, 539, '123.108.244.15', 'Mozilla/5.0 (Linux; Android 7.1.1; ONEPLUS A3000 B', '2017-11-05 10:29:58'),
(338, 539, '123.108.244.15', 'Mozilla/5.0 (Linux; Android 7.1.1; ONEPLUS A3000 B', '2017-11-05 10:33:30'),
(339, 528, '103.85.241.66', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-05 10:37:57'),
(340, 528, '103.85.241.66', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-05 10:38:37'),
(341, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 10:39:25'),
(342, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 10:39:45'),
(343, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 10:40:03'),
(344, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 10:40:23'),
(345, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 10:45:12'),
(346, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 11:18:09'),
(347, 0, '103.218.26.62', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0_3 like Mac', '2017-11-05 11:23:39'),
(348, 0, '103.218.26.62', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0_3 like Mac', '2017-11-05 11:23:57'),
(349, 0, '103.229.84.166', 'Mozilla/5.0 (Linux; Android 7.0; MI 5 Build/NRD90M', '2017-11-05 11:52:42'),
(350, 0, '45.113.236.94', 'Mozilla/5.0 (Linux; Android 5.1.1; SM-J120G Build/', '2017-11-05 11:58:31'),
(351, 0, '45.113.236.94', 'Mozilla/5.0 (Linux; Android 5.1.1; SM-J120G Build/', '2017-11-05 12:01:02'),
(352, 0, '103.205.134.166', 'Mozilla/5.0 (Linux; Android 4.4.2; GT-I9515 Build/', '2017-11-05 15:10:44'),
(353, 540, '103.205.134.166', 'Mozilla/5.0 (Linux; Android 4.4.2; GT-I9515 Build/', '2017-11-05 15:16:04'),
(354, 0, '59.152.103.150', 'Mozilla/5.0 (Linux; Android 5.0.1; GT-I9500 Build/', '2017-11-05 15:16:21'),
(355, 540, '103.205.134.166', 'Mozilla/5.0 (Linux; Android 4.4.2; GT-I9515 Build/', '2017-11-05 15:16:34'),
(356, 540, '103.205.134.166', 'Mozilla/5.0 (Linux; Android 4.4.2; GT-I9515 Build/', '2017-11-05 15:16:40'),
(357, 540, '103.205.134.166', 'Mozilla/5.0 (Linux; Android 4.4.2; GT-I9515 Build/', '2017-11-05 15:17:26'),
(358, 540, '103.205.134.166', 'Mozilla/5.0 (Linux; Android 4.4.2; GT-I9515 Build/', '2017-11-05 15:19:44'),
(359, 540, '103.218.26.62', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0_3 like Mac', '2017-11-05 15:19:49'),
(360, 540, '103.205.134.166', 'Mozilla/5.0 (Linux; Android 4.4.2; GT-I9515 Build/', '2017-11-05 15:19:52'),
(361, 540, '103.218.26.62', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0_3 like Mac', '2017-11-05 15:20:39'),
(362, 540, '103.205.134.166', 'Mozilla/5.0 (Linux; Android 4.4.2; GT-I9515 Build/', '2017-11-05 15:21:43'),
(363, 540, '103.218.26.62', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-05 15:22:23'),
(364, 540, '103.205.134.166', 'Mozilla/5.0 (Linux; Android 4.4.2; GT-I9515 Build/', '2017-11-05 15:43:27'),
(365, 540, '103.205.134.166', 'Mozilla/5.0 (Linux; Android 4.4.2; GT-I9515 Build/', '2017-11-05 15:45:15'),
(366, 540, '103.205.134.166', 'Mozilla/5.0 (Linux; Android 4.4.2; GT-I9515 Build/', '2017-11-05 15:47:10'),
(367, 540, '103.205.134.166', 'Mozilla/5.0 (Linux; Android 4.4.2; GT-I9515 Build/', '2017-11-05 15:47:48'),
(368, 540, '103.205.134.166', 'Mozilla/5.0 (Linux; Android 4.4.2; GT-I9515 Build/', '2017-11-05 15:48:13'),
(369, 540, '103.205.134.166', 'Mozilla/5.0 (Linux; Android 4.4.2; GT-I9515 Build/', '2017-11-05 15:48:22'),
(370, 540, '103.205.134.166', 'Mozilla/5.0 (Linux; Android 4.4.2; GT-I9515 Build/', '2017-11-05 15:48:51'),
(371, 0, '103.198.139.196', 'Mozilla/5.0 (Linux; Android 7.0; SAMSUNG SM-G935T ', '2017-11-05 20:38:16'),
(372, 539, '119.30.32.134', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-05 22:46:21'),
(373, 539, '119.30.32.134', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-05 22:48:00'),
(374, 539, '119.30.32.134', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-05 22:48:18'),
(375, 539, '119.30.32.134', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-05 22:48:57'),
(376, 0, '119.30.32.134', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-05 22:49:47'),
(377, 539, '119.30.32.134', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-05 22:50:50'),
(378, 539, '119.30.32.134', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-05 22:53:11'),
(379, 539, '119.30.32.134', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-05 22:53:23'),
(380, 539, '119.30.32.134', 'Mozilla/5.0 (Windows NT 10.0; rv:56.0) Gecko/20100', '2017-11-05 22:55:08'),
(381, 539, '119.30.32.134', 'Mozilla/5.0 (Windows NT 10.0; rv:56.0) Gecko/20100', '2017-11-05 22:56:01'),
(382, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 03:15:31'),
(383, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 03:15:33'),
(384, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 03:15:45'),
(385, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 03:15:53'),
(386, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 03:15:56'),
(387, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 03:15:58'),
(388, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 03:16:03'),
(389, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 03:47:55'),
(390, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 03:47:57'),
(391, 505, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 03:48:16'),
(392, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 04:15:36'),
(393, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 04:16:05'),
(394, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 05:08:02'),
(395, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 05:08:26'),
(396, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 05:09:49'),
(397, 0, '123.200.20.201', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:56.0) G', '2017-11-06 05:46:49'),
(398, 532, '123.200.20.201', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:56.0) G', '2017-11-06 05:47:03'),
(399, 531, '103.73.226.38', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-06 05:56:14'),
(400, 531, '103.73.226.38', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-06 05:56:28'),
(401, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 06:05:11'),
(402, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 06:18:13'),
(403, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 06:18:38'),
(404, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 06:19:18'),
(405, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 06:19:36'),
(406, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 06:20:13'),
(407, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 06:20:21'),
(408, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 06:20:25'),
(409, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 06:20:26'),
(410, 0, '119.30.32.56', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-11-06 06:29:58'),
(411, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 06:34:16'),
(412, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 06:34:17'),
(413, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 06:34:19'),
(414, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 06:36:42'),
(415, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 06:36:45'),
(416, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 06:36:59'),
(417, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 06:38:42'),
(418, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 06:43:41'),
(419, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 06:43:46'),
(420, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 06:49:38'),
(421, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 06:52:51'),
(422, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 06:58:56'),
(423, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 07:03:01'),
(424, 502, '43.229.208.10', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko', '2017-11-06 07:05:37'),
(425, 502, '43.229.208.10', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko', '2017-11-06 07:07:01'),
(426, 502, '43.229.208.10', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko', '2017-11-06 07:07:08'),
(427, 502, '43.229.208.10', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko', '2017-11-06 07:09:22'),
(428, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 07:10:39'),
(429, 502, '43.229.208.10', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko', '2017-11-06 07:10:43'),
(430, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 07:10:52'),
(431, 502, '43.229.208.10', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko', '2017-11-06 07:11:03'),
(432, 502, '43.229.208.10', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko', '2017-11-06 07:11:19'),
(433, 502, '43.229.208.10', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko', '2017-11-06 07:11:23'),
(434, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 07:16:46'),
(435, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 07:17:23'),
(436, 502, '43.229.208.10', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko', '2017-11-06 07:19:08'),
(437, 502, '43.229.208.10', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko', '2017-11-06 07:19:26'),
(438, 502, '43.229.208.10', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko', '2017-11-06 07:19:53'),
(439, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 07:20:59'),
(440, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 07:24:34'),
(441, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 07:37:56'),
(442, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 07:38:37'),
(443, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 07:39:25'),
(444, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 07:39:35'),
(445, 539, '123.108.246.16', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-06 08:58:51'),
(446, 539, '123.108.246.16', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-06 08:59:36'),
(447, 539, '37.111.233.208', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-06 09:05:19'),
(448, 539, '37.111.233.208', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-06 09:05:35'),
(449, 539, '37.111.233.208', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-06 09:06:48'),
(450, 539, '37.111.233.208', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-06 09:06:52'),
(451, 539, '37.111.233.208', 'Mozilla/5.0 (Windows NT 10.0; rv:56.0) Gecko/20100', '2017-11-06 09:07:16'),
(452, 539, '37.111.233.208', 'Mozilla/5.0 (Windows NT 10.0; rv:56.0) Gecko/20100', '2017-11-06 09:08:12'),
(453, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 09:27:53'),
(454, 528, '103.85.241.66', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-06 09:32:49'),
(455, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 09:38:49'),
(456, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 09:48:36'),
(457, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 09:48:47'),
(458, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 09:48:56'),
(459, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 10:10:32'),
(460, 492, '103.237.36.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 10:25:12'),
(461, 492, '103.237.36.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 10:26:16'),
(462, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 10:26:30'),
(463, 492, '103.237.36.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 10:27:30'),
(464, 492, '103.237.36.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 10:27:48'),
(465, 492, '103.237.36.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 10:28:25'),
(466, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 10:28:32'),
(467, 492, '103.237.36.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 10:28:50'),
(468, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 10:30:22'),
(469, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 10:32:24'),
(470, 0, '103.58.92.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-06 10:37:15'),
(471, 0, '103.58.92.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-06 10:37:47'),
(472, 508, '103.58.92.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-06 10:39:51'),
(473, 508, '103.58.92.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-06 10:41:04'),
(474, 508, '103.58.92.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-06 10:41:17'),
(475, 508, '103.58.92.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-06 10:41:24'),
(476, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 10:45:42'),
(477, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 10:46:41'),
(478, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-06 10:47:31'),
(479, 0, '103.96.104.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 12:01:10'),
(480, 539, '37.111.233.208', 'Mozilla/5.0 (Linux; Android 7.1.1; ONEPLUS A3000 B', '2017-11-06 12:39:55'),
(481, 0, '103.55.144.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 13:17:46'),
(482, 0, '103.55.144.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 13:17:50'),
(483, 0, '103.55.144.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 13:18:17'),
(484, 492, '103.237.39.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 14:41:49'),
(485, 492, '103.237.39.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 14:42:12'),
(486, 492, '103.237.39.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 14:42:37'),
(487, 492, '103.237.39.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 14:42:40'),
(488, 492, '103.237.39.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 14:43:54'),
(489, 492, '103.237.39.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 16:07:16'),
(490, 492, '103.237.39.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 16:10:07'),
(491, 492, '103.237.39.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 16:10:30');
INSERT INTO `tbl_urecord` (`id`, `userId`, `ip`, `browser`, `time`) VALUES
(492, 492, '103.237.39.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-06 16:10:33'),
(493, 539, '37.111.233.208', 'Mozilla/5.0 (Windows NT 10.0; rv:56.0) Gecko/20100', '2017-11-07 01:48:09'),
(494, 539, '37.111.233.208', 'Mozilla/5.0 (Windows NT 10.0; rv:56.0) Gecko/20100', '2017-11-07 01:58:37'),
(495, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-07 03:07:49'),
(496, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-07 04:02:22'),
(497, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-07 04:02:53'),
(498, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-07 04:03:14'),
(499, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-07 04:04:22'),
(500, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-07 04:05:09'),
(501, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-07 04:05:26'),
(502, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-07 04:05:58'),
(503, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-07 06:11:10'),
(504, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-07 06:37:16'),
(505, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-07 06:44:01'),
(506, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-07 07:10:04'),
(507, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-07 07:11:14'),
(508, 0, '103.230.107.45', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-07 07:18:08'),
(509, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-07 08:18:58'),
(510, 539, '119.30.39.167', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-07 08:19:06'),
(511, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-07 08:19:45'),
(512, 539, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-07 08:20:15'),
(513, 539, '119.30.39.167', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-07 08:21:01'),
(514, 539, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-07 08:21:23'),
(515, 539, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-07 08:21:52'),
(516, 539, '119.30.39.167', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-07 08:23:12'),
(517, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-07 08:24:21'),
(518, 539, '119.30.39.167', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-07 08:25:55'),
(519, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-07 08:26:23'),
(520, 539, '119.30.39.167', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-07 08:27:23'),
(521, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-07 08:28:08'),
(522, 539, '119.30.39.167', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-07 08:28:45'),
(523, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-07 08:34:52'),
(524, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-07 08:42:27'),
(525, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-07 08:42:36'),
(526, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-07 08:52:34'),
(527, 539, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-07 09:32:00'),
(528, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-07 09:33:08'),
(529, 539, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-07 09:58:13'),
(530, 539, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-07 09:58:17'),
(531, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-07 09:58:29'),
(532, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-07 10:00:26'),
(533, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-07 10:01:12'),
(534, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-07 10:01:21'),
(535, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-07 10:14:14'),
(536, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-07 10:14:20'),
(537, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-07 10:22:55'),
(538, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-07 10:23:05'),
(539, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-07 10:23:17'),
(540, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-07 10:28:40'),
(541, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-07 10:28:43'),
(542, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-07 10:47:53'),
(543, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-07 10:48:15'),
(544, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-07 10:48:48'),
(545, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-07 10:49:06'),
(546, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-07 10:49:17'),
(547, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-07 11:29:07'),
(548, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-07 11:29:12'),
(549, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-07 11:29:32'),
(550, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-07 11:31:07'),
(551, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-07 11:31:18'),
(552, 528, '103.85.241.66', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-07 13:43:07'),
(553, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-08 03:25:43'),
(554, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-08 03:26:35'),
(555, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-08 03:28:46'),
(556, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-08 03:28:54'),
(557, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-08 03:44:46'),
(558, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-08 03:49:30'),
(559, 539, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-08 03:50:09'),
(560, 539, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-08 03:51:41'),
(561, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-08 03:52:10'),
(562, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-08 03:56:11'),
(563, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-08 03:56:41'),
(564, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-08 03:56:55'),
(565, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-08 03:57:23'),
(566, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-08 03:57:36'),
(567, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-08 03:58:05'),
(568, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-08 03:58:28'),
(569, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-08 03:59:23'),
(570, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-08 04:01:13'),
(571, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-08 04:01:17'),
(572, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-08 04:01:28'),
(573, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-08 04:01:52'),
(574, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-08 04:02:48'),
(575, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-08 04:03:29'),
(576, 0, '202.134.9.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-08 04:08:26'),
(577, 544, '202.134.9.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-08 04:17:59'),
(578, 544, '202.134.9.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-08 04:19:02'),
(579, 544, '202.134.9.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-08 04:19:10'),
(580, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-08 04:33:00'),
(581, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-08 04:33:02'),
(582, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-08 04:33:18'),
(583, 544, '202.134.9.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-08 04:50:40'),
(584, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-08 05:09:17'),
(585, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:56.0) Geck', '2017-11-08 06:23:45'),
(586, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-08 06:44:34'),
(587, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-08 06:57:46'),
(588, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-08 06:57:55'),
(589, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-08 06:58:23'),
(590, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-08 06:59:19'),
(591, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-08 07:08:47'),
(592, 0, '202.40.177.50', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-08 07:33:37'),
(593, 0, '202.40.177.50', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-08 07:33:42'),
(594, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-08 09:01:56'),
(595, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-08 09:01:59'),
(596, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2017-11-08 09:02:41'),
(597, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-08 09:08:27'),
(598, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-08 09:08:40'),
(599, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-08 09:09:20'),
(600, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-08 09:09:55'),
(601, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-08 09:16:07'),
(602, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-08 09:16:59'),
(603, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-08 09:45:29'),
(604, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-08 10:08:08'),
(605, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-08 10:51:45'),
(606, 528, '103.52.140.65', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-08 14:21:24'),
(607, 0, '45.115.113.18', 'Mozilla/5.0 (Linux; Android 7.0; Redmi Note 4 Buil', '2017-11-08 15:54:35'),
(608, 0, '103.73.107.217', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:5', '2017-11-08 17:31:51'),
(609, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-09 03:28:09'),
(610, 531, '103.73.107.252', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-09 05:48:32'),
(611, 531, '103.73.107.252', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-09 05:48:52'),
(612, 531, '103.73.107.252', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-09 05:49:33'),
(613, 531, '103.73.107.252', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-09 05:49:51'),
(614, 531, '103.73.107.252', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-09 05:50:10'),
(615, 531, '103.73.107.252', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-09 05:50:20'),
(616, 531, '103.73.107.252', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-09 05:50:28'),
(617, 0, '103.73.107.252', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-09 05:50:33'),
(618, 531, '103.73.107.252', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-09 05:53:52'),
(619, 531, '103.73.107.252', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-09 05:54:27'),
(620, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-09 07:23:49'),
(621, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-09 07:42:30'),
(622, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-09 07:43:18'),
(623, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-09 07:45:13'),
(624, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-09 09:38:46'),
(625, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-09 10:56:31'),
(626, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-09 10:56:34'),
(627, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-09 10:56:46'),
(628, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-09 10:58:21'),
(629, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-09 10:59:19'),
(630, 531, '64.233.173.135', 'Mozilla/5.0 (Linux; Android 4.4.2; iris505 Build/i', '2017-11-09 13:42:04'),
(631, 531, '103.205.134.234', 'Mozilla/5.0 (Linux; Android 4.4.2; iris505 Build/i', '2017-11-09 13:42:31'),
(632, 531, '64.233.173.137', 'Mozilla/5.0 (Linux; Android 4.4.2; iris505 Build/i', '2017-11-09 13:43:15'),
(633, 531, '64.233.173.136', 'Mozilla/5.0 (Linux; Android 4.4.2; iris505 Build/i', '2017-11-09 13:46:27'),
(634, 505, '103.86.108.211', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-09 17:55:02'),
(635, 0, '103.78.52.250', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-11-09 18:44:54'),
(636, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-10 10:47:08'),
(637, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-10 10:54:48'),
(638, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-10 10:58:07'),
(639, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-10 10:58:27'),
(640, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-10 10:59:12'),
(641, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-10 10:59:19'),
(642, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-10 11:05:16'),
(643, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-10 11:23:42'),
(644, 539, '119.30.39.144', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', '2017-11-10 14:54:29'),
(645, 528, '103.52.140.65', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-10 17:29:20'),
(646, 539, '119.30.39.144', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-11 00:59:36'),
(647, 539, '119.30.39.144', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-11 01:00:11'),
(648, 539, '119.30.39.144', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-11 01:00:34'),
(649, 539, '119.30.39.144', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-11 01:01:15'),
(650, 539, '119.30.39.144', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-11 01:01:28'),
(651, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-11 05:25:18'),
(652, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-11 06:14:37'),
(653, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-11 06:26:05'),
(654, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-11 06:26:47'),
(655, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-11 06:30:21'),
(656, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-11 06:32:48'),
(657, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-11 06:33:08'),
(658, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-11 06:40:32'),
(659, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-11 06:40:36'),
(660, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-11 06:40:58'),
(661, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-11 06:56:27'),
(662, 0, '77.88.47.28', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', '2017-11-11 07:16:41'),
(663, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-11 07:22:45'),
(664, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-11 07:26:11'),
(665, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-11 07:26:18'),
(666, 492, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-11 07:47:22'),
(667, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-11 08:29:02'),
(668, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-11 08:29:25'),
(669, 492, '103.237.39.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-11 08:29:48'),
(670, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-11 08:30:13'),
(671, 492, '103.237.39.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-11 08:30:15'),
(672, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-11 08:30:39'),
(673, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-11 08:59:25'),
(674, 0, '144.48.115.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-11 09:06:25'),
(675, 0, '144.48.115.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-11 09:06:38'),
(676, 0, '144.48.115.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-11 09:12:53'),
(677, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-11 09:15:03'),
(678, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-11 09:52:30'),
(679, 0, '103.43.148.126', 'Mozilla/5.0 (Linux; Android 6.0.1; Redmi 4A Build/', '2017-11-11 09:55:40'),
(680, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-11 10:20:35'),
(681, 488, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-11 10:21:07'),
(682, 488, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-11 10:25:53'),
(683, 488, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-11 10:25:55'),
(684, 499, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-11 10:27:07'),
(685, 499, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-11 10:31:50'),
(686, 499, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-11 10:32:06'),
(687, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-11 10:51:07'),
(688, 491, '103.71.40.2', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-11 10:57:40'),
(689, 491, '103.71.40.2', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-11 10:58:03'),
(690, 491, '103.71.40.2', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-11 10:58:37'),
(691, 491, '103.71.40.2', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-11 10:58:52'),
(692, 491, '103.71.40.2', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-11 10:59:17'),
(693, 488, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-11 11:14:25'),
(694, 549, '137.59.50.81', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:56.0) ', '2017-11-11 11:37:41'),
(695, 549, '137.59.50.81', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:56.0) ', '2017-11-11 11:39:31'),
(696, 549, '137.59.50.81', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:56.0) ', '2017-11-11 11:39:36'),
(697, 549, '137.59.50.81', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:56.0) ', '2017-11-11 11:41:05'),
(698, 549, '137.59.50.81', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:56.0) ', '2017-11-11 11:51:59'),
(699, 549, '137.59.50.81', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:56.0) ', '2017-11-11 11:53:05'),
(700, 549, '137.59.50.81', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:56.0) ', '2017-11-11 11:58:46'),
(701, 549, '137.59.50.81', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:56.0) ', '2017-11-11 12:09:21'),
(702, 549, '137.59.50.81', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:56.0) ', '2017-11-11 12:09:25'),
(703, 549, '137.59.50.81', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:56.0) ', '2017-11-11 12:09:58'),
(704, 549, '137.59.50.81', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:56.0) ', '2017-11-11 13:17:06'),
(705, 549, '137.59.50.81', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:56.0) ', '2017-11-11 13:18:02'),
(706, 549, '137.59.50.81', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:56.0) ', '2017-11-11 13:21:20'),
(707, 549, '137.59.50.81', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:56.0) ', '2017-11-11 13:23:58'),
(708, 0, '103.222.22.90', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-11 16:55:56'),
(709, 0, '103.222.22.90', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-11 16:55:59'),
(710, 0, '180.148.215.194', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:56.0) ', '2017-11-11 17:21:12'),
(711, 0, '180.148.215.194', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:56.0) ', '2017-11-11 17:21:16'),
(712, 488, '180.148.215.194', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:56.0) ', '2017-11-11 17:21:41'),
(713, 488, '180.148.215.194', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:56.0) ', '2017-11-11 17:22:10'),
(714, 488, '180.148.215.194', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:56.0) ', '2017-11-11 17:23:18'),
(715, 492, '180.148.215.194', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:56.0) ', '2017-11-11 17:23:47'),
(716, 492, '180.148.215.194', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:56.0) ', '2017-11-11 17:24:28'),
(717, 0, '27.147.243.48', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:56.0) G', '2017-11-11 19:36:43'),
(718, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-12 04:35:45'),
(719, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-12 04:40:34'),
(720, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-12 04:40:44'),
(721, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-12 04:41:00'),
(722, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-12 04:43:34'),
(723, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-12 04:43:39'),
(724, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-12 04:44:09'),
(725, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-12 04:44:20'),
(726, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-12 05:55:30'),
(727, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-12 05:55:32'),
(728, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-12 07:50:55'),
(729, 528, '103.52.140.65', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-12 07:54:52'),
(730, 550, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-12 07:55:52'),
(731, 550, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-12 07:56:05'),
(732, 550, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-12 07:59:04'),
(733, 550, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-12 08:05:26'),
(734, 550, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-12 08:09:26'),
(735, 550, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-12 08:09:29'),
(736, 550, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-12 08:11:33'),
(737, 550, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-12 08:12:25'),
(738, 550, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-12 08:13:29'),
(739, 550, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-12 08:13:39'),
(740, 550, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-12 08:16:32'),
(741, 550, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-12 08:16:35'),
(742, 550, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-12 08:20:42'),
(743, 550, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-12 08:20:54'),
(744, 550, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-12 08:21:04'),
(745, 0, '103.239.5.146', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-11-12 09:01:28'),
(746, 488, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-12 09:59:42'),
(747, 488, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-12 10:26:04'),
(748, 488, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-12 10:26:09'),
(749, 488, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-12 10:30:14'),
(750, 488, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-12 10:30:49'),
(751, 488, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-12 10:31:18'),
(752, 488, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-12 10:31:40'),
(753, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-12 11:23:52'),
(754, 0, '103.230.107.8', 'Mozilla/5.0 (Linux; Android 7.1.1; TA-1053 Build/N', '2017-11-12 15:47:37'),
(755, 0, '103.230.107.8', 'Mozilla/5.0 (Linux; Android 7.1.1; TA-1053 Build/N', '2017-11-12 15:50:52'),
(756, 0, '103.231.231.142', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-12 16:25:53'),
(757, 553, '103.197.205.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-12 19:29:01'),
(758, 553, '103.197.205.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-12 19:43:51'),
(759, 553, '103.197.205.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-12 19:43:59'),
(760, 553, '103.197.205.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-12 19:44:22'),
(761, 553, '103.197.205.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-12 19:47:59'),
(762, 553, '103.197.205.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-12 19:53:25'),
(763, 553, '103.197.205.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-12 19:53:55'),
(764, 0, '54.173.35.129', 'ia_archiver', '2017-11-12 19:56:54'),
(765, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-13 03:49:22'),
(766, 550, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-13 03:49:37'),
(767, 550, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-13 03:49:47'),
(768, 550, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-13 03:50:26'),
(769, 0, '103.19.255.199', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-13 04:02:04'),
(770, 550, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-13 04:19:58'),
(771, 550, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-13 04:20:05'),
(772, 0, '103.230.106.13', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 4X Build/', '2017-11-13 04:20:35'),
(773, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-13 08:09:25'),
(774, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-13 08:09:43'),
(775, 548, '144.48.115.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-13 08:18:37'),
(776, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-13 08:18:45'),
(777, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-13 08:18:53'),
(778, 548, '144.48.115.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-13 08:20:59'),
(779, 548, '144.48.115.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-13 08:21:05'),
(780, 548, '144.48.115.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-13 08:21:11'),
(781, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-13 08:22:39'),
(782, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-13 08:44:29'),
(783, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-13 08:46:39'),
(784, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-13 09:13:32'),
(785, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-13 09:38:42'),
(786, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-13 09:38:45'),
(787, 492, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-13 09:38:59'),
(788, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-13 10:06:44'),
(789, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-13 10:34:47'),
(790, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-13 10:39:33'),
(791, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-13 10:39:36'),
(792, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-13 10:39:51'),
(793, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-13 10:39:55'),
(794, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-13 10:39:56'),
(795, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-13 10:39:56'),
(796, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-13 10:39:57'),
(797, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-13 10:40:31'),
(798, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-13 10:41:04'),
(799, 552, '103.231.231.142', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-13 17:00:32'),
(800, 552, '103.231.231.142', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-13 17:02:06'),
(801, 552, '103.231.231.142', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-13 17:02:12'),
(802, 0, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-13 17:07:47'),
(803, 0, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-13 17:09:05'),
(804, 552, '103.231.231.142', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-13 17:13:43'),
(805, 552, '103.231.231.142', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-13 17:13:55'),
(806, 0, '66.249.75.86', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', '2017-11-13 17:17:00'),
(807, 0, '103.230.104.34', 'Mozilla/5.0 (Windows NT 6.1; rv:56.0) Gecko/201001', '2017-11-13 17:31:31'),
(808, 488, '103.230.104.34', 'Mozilla/5.0 (Windows NT 6.1; rv:56.0) Gecko/201001', '2017-11-13 17:35:21'),
(809, 488, '103.230.104.34', 'Mozilla/5.0 (Windows NT 6.1; rv:56.0) Gecko/201001', '2017-11-13 17:36:10'),
(810, 488, '103.230.104.34', 'Mozilla/5.0 (Windows NT 6.1; rv:56.0) Gecko/201001', '2017-11-13 17:39:44'),
(811, 488, '103.230.104.34', 'Mozilla/5.0 (Windows NT 6.1; rv:56.0) Gecko/201001', '2017-11-13 17:40:15'),
(812, 488, '103.230.104.34', 'Mozilla/5.0 (Windows NT 6.1; rv:56.0) Gecko/201001', '2017-11-13 17:40:55'),
(813, 488, '103.230.104.34', 'Mozilla/5.0 (Windows NT 6.1; rv:56.0) Gecko/201001', '2017-11-13 17:41:05'),
(814, 488, '103.230.104.34', 'Mozilla/5.0 (Windows NT 6.1; rv:56.0) Gecko/201001', '2017-11-13 17:41:20'),
(815, 0, '202.181.18.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-13 19:02:36'),
(816, 0, '103.197.155.25', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-13 19:20:04'),
(817, 0, '103.197.155.25', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-13 19:20:05'),
(818, 555, '103.197.155.25', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-13 19:25:30'),
(819, 555, '103.197.155.25', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-13 19:26:12'),
(820, 555, '103.197.155.25', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-13 19:27:31'),
(821, 555, '103.197.155.25', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-13 19:27:39'),
(822, 555, '103.197.155.25', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-13 19:27:56'),
(823, 555, '103.197.155.25', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-13 19:28:05'),
(824, 539, '119.30.35.60', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-14 02:37:03'),
(825, 539, '119.30.35.60', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-14 02:42:39'),
(826, 539, '119.30.35.60', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-14 02:46:21'),
(827, 539, '119.30.35.60', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-14 02:55:30'),
(828, 556, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-14 03:06:27'),
(829, 556, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-14 03:23:24'),
(830, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-14 03:34:32'),
(831, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-14 03:35:25'),
(832, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-14 03:49:19'),
(833, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-14 03:49:37'),
(834, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-14 03:49:39'),
(835, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-14 03:53:46'),
(836, 0, '103.230.106.60', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-11-14 03:53:53'),
(837, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-14 03:57:00'),
(838, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-14 03:57:48'),
(839, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-14 03:57:57'),
(840, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-14 03:58:02'),
(841, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-14 03:58:23'),
(842, 558, '103.230.106.60', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-11-14 04:01:30'),
(843, 558, '103.230.106.60', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-11-14 04:02:24'),
(844, 558, '103.230.106.60', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-11-14 04:02:29'),
(845, 558, '103.230.106.60', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-11-14 04:04:43'),
(846, 558, '103.230.106.60', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-11-14 04:06:01'),
(847, 558, '103.230.106.60', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-11-14 04:07:07'),
(848, 558, '103.230.106.60', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-11-14 04:09:38'),
(849, 558, '103.230.106.60', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-11-14 04:11:01'),
(850, 558, '103.230.106.60', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-11-14 04:11:09'),
(851, 558, '103.230.106.60', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-11-14 04:11:16'),
(852, 558, '103.230.106.60', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-11-14 04:11:45'),
(853, 558, '103.230.106.60', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-11-14 04:13:22'),
(854, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-14 07:25:26'),
(855, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-14 07:25:28'),
(856, 0, '54.173.35.129', 'ia_archiver', '2017-11-14 15:29:47'),
(857, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-14 17:17:32'),
(858, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-14 17:27:54'),
(859, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-14 17:28:04'),
(860, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-14 17:28:34'),
(861, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-14 17:28:41'),
(862, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-14 17:28:52'),
(863, 528, '103.52.140.65', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-14 18:54:42'),
(864, 527, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-15 05:53:08'),
(865, 527, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-15 05:53:41'),
(866, 527, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-15 05:53:50'),
(867, 527, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-15 05:54:31'),
(868, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-15 07:59:03'),
(869, 546, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 09:21:55'),
(870, 546, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 09:22:20'),
(871, 546, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 09:22:24'),
(872, 546, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 09:22:43'),
(873, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-15 09:24:17'),
(874, 546, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 09:27:07'),
(875, 546, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 09:27:39'),
(876, 546, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 09:31:40'),
(877, 546, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 09:39:30'),
(878, 546, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 09:44:20'),
(879, 546, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 09:45:13'),
(880, 546, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 09:53:39'),
(881, 546, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 09:54:11'),
(882, 546, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 09:54:19'),
(883, 546, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 09:54:22'),
(884, 546, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 09:54:27'),
(885, 546, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 09:54:49'),
(886, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-15 09:55:17'),
(887, 527, '103.96.104.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 11:14:39'),
(888, 0, '103.96.104.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 11:16:07'),
(889, 527, '103.96.104.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 11:32:35'),
(890, 527, '103.96.104.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 11:33:02'),
(891, 527, '103.96.104.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 11:34:41'),
(892, 527, '103.96.104.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 11:35:25'),
(893, 527, '103.96.104.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 11:45:30'),
(894, 559, '103.230.5.218', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-15 12:29:55'),
(895, 559, '103.230.5.218', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-15 12:32:06'),
(896, 559, '103.230.5.218', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-15 12:32:15'),
(897, 559, '103.230.5.218', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-15 12:34:44'),
(898, 559, '103.230.5.218', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-15 12:35:18'),
(899, 559, '103.230.5.218', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-15 12:39:16'),
(900, 559, '103.230.5.218', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-15 12:43:38'),
(901, 559, '103.230.5.218', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-15 12:44:30'),
(902, 559, '103.230.5.218', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-15 12:45:24'),
(903, 546, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 15:17:52'),
(904, 505, '103.86.108.211', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 15:25:23'),
(905, 505, '103.86.108.211', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 15:25:45'),
(906, 0, '137.59.50.81', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:57.0) ', '2017-11-15 15:29:38'),
(907, 0, '103.86.108.211', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 16:00:33'),
(908, 0, '119.30.47.112', 'Mozilla/5.0 (Linux; Android 5.1; HUAWEI CUN-U29 Bu', '2017-11-15 16:15:34'),
(909, 516, '14.1.100.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 18:17:24'),
(910, 516, '14.1.100.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 18:21:51'),
(911, 516, '14.1.100.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 18:22:13'),
(912, 516, '14.1.100.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 18:28:49'),
(913, 516, '14.1.100.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 18:34:17'),
(914, 516, '14.1.100.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-15 18:34:22'),
(915, 538, '180.148.215.194', 'Mozilla/5.0 (Android 7.0; Mobile; rv:56.0) Gecko/5', '2017-11-15 18:53:33'),
(916, 538, '180.148.215.194', 'Mozilla/5.0 (Android 7.0; Mobile; rv:56.0) Gecko/5', '2017-11-15 18:54:11'),
(917, 538, '180.148.215.194', 'Mozilla/5.0 (Android 7.0; Mobile; rv:56.0) Gecko/5', '2017-11-15 18:54:19'),
(918, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-16 03:32:05'),
(919, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-16 03:32:07'),
(920, 516, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-16 03:32:20'),
(921, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-16 03:46:45'),
(922, 516, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-16 03:50:10'),
(923, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-16 03:52:21'),
(924, 527, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-16 03:56:36'),
(925, 527, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-16 03:57:41'),
(926, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 04:10:42'),
(927, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 04:11:51'),
(928, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 04:12:09'),
(929, 0, '137.59.50.81', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:57.0) ', '2017-11-16 04:42:04'),
(930, 0, '137.59.50.81', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:57.0) ', '2017-11-16 05:06:51'),
(931, 0, '137.59.50.81', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:57.0) ', '2017-11-16 05:10:57'),
(932, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 05:16:09'),
(933, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 05:22:28'),
(934, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 05:29:29'),
(935, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 05:29:43'),
(936, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 05:33:01'),
(937, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 05:35:00'),
(938, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 05:57:05'),
(939, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 05:57:19'),
(940, 0, '137.59.50.81', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:57.0) ', '2017-11-16 06:16:28'),
(941, 516, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 06:29:27'),
(942, 516, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 06:30:41'),
(943, 527, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 06:32:07'),
(944, 527, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 06:43:13'),
(945, 516, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 06:44:02'),
(946, 516, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 07:26:06'),
(947, 516, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 08:07:49'),
(948, 516, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 08:07:59'),
(949, 516, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 08:09:09'),
(950, 516, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 08:09:14'),
(951, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 08:38:15'),
(952, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 08:38:25'),
(953, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 08:38:34'),
(954, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 08:39:48'),
(955, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 09:06:04'),
(956, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 09:55:49'),
(957, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-16 11:11:50'),
(958, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-16 11:11:54'),
(959, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-16 11:12:13'),
(960, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-16 11:13:16'),
(961, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-16 11:14:00'),
(962, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-16 11:14:25'),
(963, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-16 11:17:13'),
(964, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-16 11:18:24'),
(965, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-16 11:27:14'),
(966, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-16 11:27:50'),
(967, 516, '14.1.100.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-16 12:56:33'),
(968, 0, '203.95.220.34', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-16 16:06:06'),
(969, 0, '203.95.220.34', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-16 16:06:11'),
(970, 561, '203.95.220.34', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-16 16:14:52'),
(971, 561, '203.95.220.34', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-16 16:16:49'),
(972, 561, '203.95.220.34', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-16 16:17:20');
INSERT INTO `tbl_urecord` (`id`, `userId`, `ip`, `browser`, `time`) VALUES
(973, 0, '203.95.220.34', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-16 16:17:42'),
(974, 0, '203.95.220.34', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-16 16:17:44'),
(975, 561, '203.95.220.34', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-16 16:18:07'),
(976, 561, '203.95.220.34', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-16 16:18:29'),
(977, 561, '203.95.220.34', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-16 16:18:46'),
(978, 0, '203.95.220.34', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-16 16:18:49'),
(979, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-17 14:43:11'),
(980, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-17 14:44:12'),
(981, 0, '95.27.248.182', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1;', '2017-11-18 01:28:29'),
(982, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 06:34:02'),
(983, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 06:40:50'),
(984, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 06:46:48'),
(985, 562, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-18 06:47:26'),
(986, 562, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-18 06:48:14'),
(987, 562, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-18 06:49:00'),
(988, 562, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-18 07:03:33'),
(989, 562, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-18 07:03:53'),
(990, 562, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-18 07:11:04'),
(991, 562, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-18 07:12:03'),
(992, 562, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-18 07:12:24'),
(993, 562, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-18 07:13:30'),
(994, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 07:23:56'),
(995, 562, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-11-18 07:37:31'),
(996, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 07:59:17'),
(997, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 08:02:54'),
(998, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 08:02:59'),
(999, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 08:03:03'),
(1000, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 08:38:15'),
(1001, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 08:44:35'),
(1002, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 08:47:07'),
(1003, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 08:47:40'),
(1004, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 09:01:02'),
(1005, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 09:01:33'),
(1006, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 09:24:48'),
(1007, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 09:24:55'),
(1008, 546, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 09:27:58'),
(1009, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 09:45:06'),
(1010, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 09:45:33'),
(1011, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 09:45:51'),
(1012, 546, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 10:02:54'),
(1013, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 10:06:04'),
(1014, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 10:49:23'),
(1015, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 11:19:05'),
(1016, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 11:19:09'),
(1017, 538, '180.148.215.194', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-11-18 13:28:52'),
(1018, 538, '180.148.215.194', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-11-18 13:29:02'),
(1019, 527, '103.96.104.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 17:06:42'),
(1020, 527, '103.96.104.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 17:07:21'),
(1021, 527, '103.96.104.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-18 17:08:24'),
(1022, 539, '119.30.39.185', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-19 02:51:37'),
(1023, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-19 07:17:41'),
(1024, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-19 07:17:57'),
(1025, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-19 07:28:40'),
(1026, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-19 07:40:26'),
(1027, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-19 07:40:44'),
(1028, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-19 08:42:24'),
(1029, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-19 08:44:07'),
(1030, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-19 08:53:06'),
(1031, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-19 08:58:22'),
(1032, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-19 09:03:30'),
(1033, 550, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-19 09:17:30'),
(1034, 550, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-19 09:18:26'),
(1035, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-19 09:24:06'),
(1036, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-19 09:24:16'),
(1037, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-19 09:52:57'),
(1038, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-19 09:54:34'),
(1039, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-19 09:54:41'),
(1040, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-19 09:57:11'),
(1041, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-19 10:04:11'),
(1042, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-19 10:11:01'),
(1043, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-19 10:16:29'),
(1044, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-19 10:25:51'),
(1045, 502, '37.111.233.224', 'Mozilla/5.0 (Linux; Android 6.0; HUAWEI VNS-L31 Bu', '2017-11-19 11:06:24'),
(1046, 502, '37.111.233.224', 'Mozilla/5.0 (Linux; Android 6.0; HUAWEI VNS-L31 Bu', '2017-11-19 11:07:24'),
(1047, 550, '180.148.215.194', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-11-19 16:08:11'),
(1048, 550, '180.148.215.194', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-11-19 16:08:39'),
(1049, 550, '180.148.215.194', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-11-19 16:13:32'),
(1050, 550, '180.148.215.194', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-11-19 16:25:21'),
(1051, 550, '180.148.215.194', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-11-19 16:25:26'),
(1052, 552, '180.148.215.194', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-11-19 16:25:52'),
(1053, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-20 04:57:26'),
(1054, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-20 05:03:03'),
(1055, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-20 05:14:56'),
(1056, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-20 05:15:00'),
(1057, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-20 05:51:41'),
(1058, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-20 05:52:00'),
(1059, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-20 05:52:24'),
(1060, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-20 08:25:07'),
(1061, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-20 08:25:37'),
(1062, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-20 08:29:08'),
(1063, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-20 08:29:19'),
(1064, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-20 08:37:58'),
(1065, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-20 09:04:16'),
(1066, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-20 09:12:36'),
(1067, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-20 09:21:19'),
(1068, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-20 09:25:43'),
(1069, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-20 09:28:23'),
(1070, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-20 09:28:32'),
(1071, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-20 09:31:36'),
(1072, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-20 09:33:05'),
(1073, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-20 09:33:16'),
(1074, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-20 09:36:38'),
(1075, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-20 09:36:42'),
(1076, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-20 11:15:49'),
(1077, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-20 11:15:55'),
(1078, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-20 11:18:08'),
(1079, 546, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-20 15:15:19'),
(1080, 0, '103.73.224.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-21 13:36:49'),
(1081, 0, '77.88.47.28', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', '2017-11-22 00:40:38'),
(1082, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-22 03:22:09'),
(1083, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-22 03:22:47'),
(1084, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-22 05:06:11'),
(1085, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-22 05:33:05'),
(1086, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-22 05:36:02'),
(1087, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-22 05:36:19'),
(1088, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-22 05:36:30'),
(1089, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-22 05:39:53'),
(1090, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-22 05:41:45'),
(1091, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-22 05:46:39'),
(1092, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-22 07:17:34'),
(1093, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-22 07:18:23'),
(1094, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-11-22 08:46:37'),
(1095, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-22 09:05:05'),
(1096, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-22 09:05:15'),
(1097, 0, '77.88.47.28', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', '2017-11-22 12:25:57'),
(1098, 0, '103.230.105.58', 'Mozilla/5.0 (Linux; Android 5.1; Z958 Build/LMY47O', '2017-11-23 03:10:59'),
(1099, 0, '27.147.226.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 04:03:10'),
(1100, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 07:04:31'),
(1101, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-23 07:26:32'),
(1102, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-23 07:26:46'),
(1103, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 08:04:13'),
(1104, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 08:21:13'),
(1105, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 08:21:17'),
(1106, 556, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 08:23:04'),
(1107, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-23 08:26:48'),
(1108, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-23 08:26:57'),
(1109, 539, '119.30.39.29', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-23 08:31:10'),
(1110, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 08:33:03'),
(1111, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-23 09:13:31'),
(1112, 556, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 09:23:59'),
(1113, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 11:06:09'),
(1114, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 11:06:12'),
(1115, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 11:09:54'),
(1116, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 11:12:59'),
(1117, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 11:27:50'),
(1118, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 11:28:29'),
(1119, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 11:28:32'),
(1120, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 11:29:45'),
(1121, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 11:30:58'),
(1122, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 11:31:17'),
(1123, 0, '103.230.5.218', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-11-23 15:54:53'),
(1124, 552, '103.231.231.142', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-23 16:06:49'),
(1125, 552, '103.231.231.142', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-23 16:07:37'),
(1126, 552, '103.231.231.142', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-23 16:12:04'),
(1127, 552, '103.231.231.142', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-23 16:12:07'),
(1128, 554, '103.231.231.142', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-23 17:12:04'),
(1129, 554, '103.231.231.142', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-23 17:12:22'),
(1130, 554, '103.231.231.142', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-23 17:13:46'),
(1131, 552, '103.231.231.142', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-23 17:13:58'),
(1132, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-23 17:14:16'),
(1133, 554, '103.231.231.142', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-23 17:27:48'),
(1134, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-23 17:38:51'),
(1135, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-23 17:43:45'),
(1136, 554, '202.181.18.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 17:59:12'),
(1137, 554, '202.181.18.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 18:09:18'),
(1138, 554, '202.181.18.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 18:12:17'),
(1139, 554, '202.181.18.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 18:13:01'),
(1140, 554, '202.181.18.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 18:13:05'),
(1141, 554, '202.181.18.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 18:13:23'),
(1142, 554, '202.181.18.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 18:22:33'),
(1143, 554, '202.181.18.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 18:25:15'),
(1144, 554, '202.181.18.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 18:30:25'),
(1145, 554, '202.181.18.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 18:30:48'),
(1146, 554, '202.181.18.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 18:30:58'),
(1147, 554, '202.181.18.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 18:31:05'),
(1148, 554, '202.181.18.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 18:31:09'),
(1149, 554, '202.181.18.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 18:32:42'),
(1150, 554, '202.181.18.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 18:33:34'),
(1151, 554, '202.181.18.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-23 18:34:30'),
(1152, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-24 02:44:09'),
(1153, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-24 02:44:50'),
(1154, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-24 02:45:31'),
(1155, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-24 02:45:44'),
(1156, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-24 02:46:00'),
(1157, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-24 10:38:33'),
(1158, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-24 10:39:25'),
(1159, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-24 10:39:27'),
(1160, 0, '103.205.68.229', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-24 18:06:52'),
(1161, 565, '103.205.68.229', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-24 18:26:44'),
(1162, 565, '103.205.68.229', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-24 18:27:17'),
(1163, 565, '103.205.68.229', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-24 18:27:31'),
(1164, 565, '103.205.68.229', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-24 18:35:56'),
(1165, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 03:25:13'),
(1166, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-25 03:35:50'),
(1167, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-25 03:43:52'),
(1168, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-25 03:43:56'),
(1169, 565, '103.205.68.229', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 03:43:58'),
(1170, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-25 03:44:15'),
(1171, 565, '103.205.68.229', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 03:44:30'),
(1172, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-25 03:51:42'),
(1173, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-25 04:12:37'),
(1174, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-25 04:15:29'),
(1175, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-25 04:19:12'),
(1176, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-25 04:19:32'),
(1177, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-25 04:20:45'),
(1178, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-25 04:20:48'),
(1179, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 05:06:00'),
(1180, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-25 05:40:13'),
(1181, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-25 05:45:27'),
(1182, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 05:54:23'),
(1183, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 05:54:36'),
(1184, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 05:59:12'),
(1185, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-25 06:06:04'),
(1186, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-25 06:09:17'),
(1187, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 06:12:28'),
(1188, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-25 06:12:56'),
(1189, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 06:13:56'),
(1190, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 06:33:22'),
(1191, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-25 06:46:28'),
(1192, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-25 06:46:32'),
(1193, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-25 06:46:44'),
(1194, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 06:46:53'),
(1195, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 06:59:28'),
(1196, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-25 07:01:57'),
(1197, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 07:08:21'),
(1198, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 07:15:16'),
(1199, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 08:15:41'),
(1200, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 08:15:48'),
(1201, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-25 08:23:16'),
(1202, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 08:29:27'),
(1203, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 08:31:18'),
(1204, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 08:31:25'),
(1205, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 08:42:36'),
(1206, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 08:59:24'),
(1207, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-25 09:11:43'),
(1208, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-25 09:12:12'),
(1209, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 09:13:39'),
(1210, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 09:42:04'),
(1211, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 09:42:18'),
(1212, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 10:13:04'),
(1213, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 10:25:50'),
(1214, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 10:30:03'),
(1215, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 10:30:28'),
(1216, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 10:31:31'),
(1217, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 10:32:25'),
(1218, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 10:48:58'),
(1219, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 10:56:00'),
(1220, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 10:59:45'),
(1221, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 10:59:49'),
(1222, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 11:09:04'),
(1223, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-25 11:14:06'),
(1224, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-25 15:05:12'),
(1225, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-25 15:05:42'),
(1226, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-26 03:48:48'),
(1227, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-26 04:16:39'),
(1228, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-26 04:20:26'),
(1229, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-26 04:42:01'),
(1230, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-26 04:44:11'),
(1231, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-26 04:44:43'),
(1232, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-26 08:15:00'),
(1233, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-26 08:17:05'),
(1234, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-26 09:45:49'),
(1235, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-26 09:46:32'),
(1236, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-26 09:53:38'),
(1237, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-26 09:59:50'),
(1238, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-26 10:05:28'),
(1239, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-26 10:05:43'),
(1240, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-26 10:05:51'),
(1241, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-26 10:20:41'),
(1242, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-26 12:03:33'),
(1243, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-26 12:46:51'),
(1244, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-26 12:47:29'),
(1245, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-26 12:47:31'),
(1246, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-26 15:46:10'),
(1247, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-26 15:46:47'),
(1248, 554, '103.231.231.142', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-26 16:57:47'),
(1249, 552, '103.231.231.142', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-26 16:59:39'),
(1250, 546, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-26 17:51:28'),
(1251, 546, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-26 17:53:48'),
(1252, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 03:12:12'),
(1253, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 05:24:16'),
(1254, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 05:24:46'),
(1255, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-27 05:39:06'),
(1256, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-27 05:39:33'),
(1257, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-27 05:39:35'),
(1258, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 06:41:11'),
(1259, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 06:45:44'),
(1260, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 06:46:58'),
(1261, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 06:52:02'),
(1262, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 06:58:12'),
(1263, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 06:59:06'),
(1264, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 07:01:13'),
(1265, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 07:02:30'),
(1266, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 07:03:22'),
(1267, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 07:09:29'),
(1268, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 07:09:37'),
(1269, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 07:11:05'),
(1270, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-27 07:27:22'),
(1271, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-27 07:27:37'),
(1272, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 07:29:22'),
(1273, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 07:59:24'),
(1274, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 07:59:49'),
(1275, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 08:00:10'),
(1276, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 08:04:58'),
(1277, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 08:06:17'),
(1278, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 08:06:36'),
(1279, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 08:07:22'),
(1280, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 08:07:25'),
(1281, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 08:08:15'),
(1282, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 08:14:15'),
(1283, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 08:14:58'),
(1284, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 08:23:42'),
(1285, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-27 08:29:08'),
(1286, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-27 08:29:11'),
(1287, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-27 08:31:57'),
(1288, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 09:08:00'),
(1289, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 09:08:22'),
(1290, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 09:08:26'),
(1291, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 09:08:29'),
(1292, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 09:09:17'),
(1293, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 09:09:23'),
(1294, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 09:16:44'),
(1295, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 09:38:32'),
(1296, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 09:40:25'),
(1297, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-27 09:48:29'),
(1298, 0, '103.86.109.174', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-27 18:44:24'),
(1299, 566, '103.86.109.174', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-27 18:49:12'),
(1300, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-28 02:18:59'),
(1301, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-28 02:19:22'),
(1302, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-28 02:19:23'),
(1303, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 03:58:44'),
(1304, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 03:59:43'),
(1305, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 04:08:45'),
(1306, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 04:27:12'),
(1307, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 04:56:13'),
(1308, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 05:12:28'),
(1309, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 05:28:46'),
(1310, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 06:05:08'),
(1311, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 06:15:33'),
(1312, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 06:15:41'),
(1313, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 06:37:39'),
(1314, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 06:37:39'),
(1315, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 07:05:23'),
(1316, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 07:05:52'),
(1317, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 07:10:07'),
(1318, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 07:10:12'),
(1319, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-28 07:21:54'),
(1320, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-28 07:21:57'),
(1321, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-28 07:22:10'),
(1322, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-28 07:23:46'),
(1323, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 07:35:15'),
(1324, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-28 08:34:53'),
(1325, 0, '123.200.20.201', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:57.0) G', '2017-11-28 08:45:51'),
(1326, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 08:53:21'),
(1327, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 08:53:35'),
(1328, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 08:53:43'),
(1329, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 09:23:26'),
(1330, 556, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 09:46:45'),
(1331, 556, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 09:49:50'),
(1332, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-28 09:51:58'),
(1333, 556, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 09:52:21'),
(1334, 556, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 09:52:45'),
(1335, 556, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 10:43:54'),
(1336, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 10:57:26'),
(1337, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 10:57:36'),
(1338, 546, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-28 11:42:35'),
(1339, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-28 16:38:01'),
(1340, 552, '103.231.231.142', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-11-28 16:45:49'),
(1341, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-29 03:44:49'),
(1342, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-29 03:47:41'),
(1343, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-29 03:49:30'),
(1344, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-29 04:01:18'),
(1345, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-29 04:01:55'),
(1346, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-29 04:08:05'),
(1347, 554, '103.230.105.54', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-29 04:40:37'),
(1348, 554, '103.230.105.54', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-29 04:41:16'),
(1349, 554, '103.230.105.54', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-29 04:41:19'),
(1350, 0, '202.40.177.50', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-29 06:48:23'),
(1351, 566, '202.40.177.50', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-29 06:49:10'),
(1352, 528, '103.52.140.45', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-11-29 07:16:53'),
(1353, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-29 07:28:39'),
(1354, 554, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-29 07:29:02'),
(1355, 554, '202.181.18.209', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:48.0) Geck', '2017-11-29 07:35:14'),
(1356, 554, '202.181.18.209', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:48.0) Geck', '2017-11-29 07:43:12'),
(1357, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-29 10:17:23'),
(1358, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-29 10:19:02'),
(1359, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-29 10:19:08'),
(1360, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-29 10:20:41'),
(1361, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-29 10:21:47'),
(1362, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-29 10:52:04'),
(1363, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-29 10:53:24'),
(1364, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-29 10:54:59'),
(1365, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-29 10:55:18'),
(1366, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-11-29 10:56:44'),
(1367, 558, '103.230.104.54', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-11-29 12:23:55'),
(1368, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-29 15:59:40'),
(1369, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-29 16:02:02'),
(1370, 0, '103.68.4.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-29 18:29:42'),
(1371, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-30 01:58:59'),
(1372, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-30 01:59:49'),
(1373, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-30 01:59:51'),
(1374, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 03:55:02'),
(1375, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 04:11:27'),
(1376, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-30 04:13:52'),
(1377, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 04:16:17'),
(1378, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 04:19:06'),
(1379, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 06:37:39'),
(1380, 554, '180.234.212.253', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-30 06:58:25'),
(1381, 554, '180.234.212.253', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-30 06:59:27'),
(1382, 554, '180.234.212.253', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-30 06:59:28'),
(1383, 554, '180.234.212.253', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-30 07:00:15'),
(1384, 554, '180.234.212.253', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-30 07:00:28'),
(1385, 554, '180.234.212.253', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-11-30 07:00:41'),
(1386, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 07:40:18'),
(1387, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 08:54:34'),
(1388, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 08:54:43'),
(1389, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 08:54:50'),
(1390, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 08:59:53'),
(1391, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 08:59:56'),
(1392, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 09:00:00'),
(1393, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 09:07:01'),
(1394, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 09:07:06'),
(1395, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 09:10:31'),
(1396, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-30 09:11:09'),
(1397, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-30 09:14:53'),
(1398, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-30 09:16:56'),
(1399, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-30 09:18:10'),
(1400, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-11-30 09:19:09'),
(1401, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-11-30 09:42:47'),
(1402, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 09:44:21'),
(1403, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 09:44:25'),
(1404, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 09:44:32'),
(1405, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 09:44:35'),
(1406, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 09:45:54'),
(1407, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 09:45:57'),
(1408, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 09:45:59'),
(1409, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 09:53:50'),
(1410, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 09:58:58'),
(1411, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 10:00:23'),
(1412, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 10:00:53'),
(1413, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 10:01:42'),
(1414, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-11-30 10:14:19'),
(1415, 550, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-11-30 10:59:14'),
(1416, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-11-30 11:18:48'),
(1417, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-11-30 11:19:30'),
(1418, 0, '27.147.201.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-01 03:59:43'),
(1419, 0, '27.147.201.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-01 04:15:51'),
(1420, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-01 06:45:14'),
(1421, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-01 06:46:25'),
(1422, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-01 06:46:26'),
(1423, 0, '27.147.206.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-01 09:58:55'),
(1424, 0, '27.147.206.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-01 09:59:58'),
(1425, 0, '27.147.206.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-01 10:00:21'),
(1426, 0, '27.147.206.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-01 10:23:42'),
(1427, 0, '27.147.206.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-01 10:23:55'),
(1428, 0, '27.147.206.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-01 10:24:04'),
(1429, 0, '27.147.206.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-01 10:25:04'),
(1430, 0, '27.147.206.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-01 10:26:06'),
(1431, 559, '103.230.5.218', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-12-01 13:47:06'),
(1432, 559, '103.230.5.218', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-12-01 13:48:56'),
(1433, 559, '103.230.5.218', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-12-01 13:49:04'),
(1434, 559, '103.230.5.218', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-12-01 13:49:13'),
(1435, 0, '27.147.206.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-01 14:35:18'),
(1436, 0, '27.147.206.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-01 14:35:54'),
(1437, 0, '27.147.206.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-01 14:36:05'),
(1438, 0, '27.147.206.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-01 14:37:01'),
(1439, 0, '27.147.206.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-01 14:37:20'),
(1440, 0, '27.147.206.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-01 14:38:08'),
(1441, 0, '27.147.206.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-01 14:38:58'),
(1442, 0, '27.147.206.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-01 14:39:49'),
(1443, 0, '27.147.206.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-01 14:41:22'),
(1444, 0, '27.147.206.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-01 14:42:22'),
(1445, 0, '27.147.206.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-01 14:42:58'),
(1446, 544, '45.64.139.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-01 16:45:04'),
(1447, 544, '45.64.139.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-01 16:48:17'),
(1448, 544, '45.64.139.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-01 16:48:33');
INSERT INTO `tbl_urecord` (`id`, `userId`, `ip`, `browser`, `time`) VALUES
(1449, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-01 17:22:00'),
(1450, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-01 17:23:12'),
(1451, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-01 17:23:14'),
(1452, 544, '45.64.139.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-01 17:28:32'),
(1453, 544, '45.64.139.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-01 17:40:48'),
(1454, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-02 04:28:57'),
(1455, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-02 04:35:11'),
(1456, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-02 11:21:40'),
(1457, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-02 11:22:46'),
(1458, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-02 11:24:52'),
(1459, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-02 11:25:09'),
(1460, 544, '45.64.139.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-02 14:38:21'),
(1461, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-03 04:13:48'),
(1462, 0, '27.147.226.68', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:57.0) Geck', '2017-12-03 04:38:45'),
(1463, 0, '27.147.226.68', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:57.0) Geck', '2017-12-03 04:38:47'),
(1464, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-03 04:50:51'),
(1465, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-03 04:51:56'),
(1466, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-03 04:52:30'),
(1467, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-03 04:53:21'),
(1468, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-03 04:53:52'),
(1469, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-03 05:56:13'),
(1470, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-03 05:56:16'),
(1471, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-03 05:59:13'),
(1472, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-03 06:03:29'),
(1473, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-03 06:04:19'),
(1474, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-03 06:04:52'),
(1475, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-03 06:18:39'),
(1476, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-03 06:20:43'),
(1477, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-03 06:21:55'),
(1478, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-03 06:22:04'),
(1479, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-03 06:25:08'),
(1480, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-03 06:30:09'),
(1481, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-03 06:36:48'),
(1482, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-03 06:39:11'),
(1483, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-03 06:40:25'),
(1484, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 06:42:24'),
(1485, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 06:42:53'),
(1486, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 06:44:51'),
(1487, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 06:55:33'),
(1488, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 06:56:12'),
(1489, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 06:56:16'),
(1490, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 07:08:49'),
(1491, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 07:09:41'),
(1492, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 07:12:16'),
(1493, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 07:12:35'),
(1494, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 07:14:17'),
(1495, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-03 07:17:09'),
(1496, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-03 07:17:22'),
(1497, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-03 07:18:05'),
(1498, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 07:21:13'),
(1499, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 07:21:22'),
(1500, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 07:41:49'),
(1501, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 07:44:35'),
(1502, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 07:44:41'),
(1503, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-03 08:23:04'),
(1504, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-03 08:23:05'),
(1505, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-03 08:23:28'),
(1506, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 08:35:11'),
(1507, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 08:36:27'),
(1508, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 08:36:46'),
(1509, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 08:36:50'),
(1510, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 08:45:45'),
(1511, 559, '103.230.5.218', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-12-03 08:48:41'),
(1512, 559, '103.230.5.218', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-12-03 08:48:58'),
(1513, 559, '103.230.5.218', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', '2017-12-03 08:49:17'),
(1514, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-03 08:53:33'),
(1515, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-03 08:54:38'),
(1516, 552, '163.47.36.2', 'Mozilla/5.0 (Linux; Android 7.1.1; TA-1053 Build/N', '2017-12-03 08:54:52'),
(1517, 552, '163.47.36.2', 'Mozilla/5.0 (Linux; Android 7.1.1; TA-1053 Build/N', '2017-12-03 08:57:11'),
(1518, 552, '163.47.36.2', 'Mozilla/5.0 (Linux; Android 7.1.1; TA-1053 Build/N', '2017-12-03 08:57:13'),
(1519, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 09:06:51'),
(1520, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 09:06:58'),
(1521, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 09:07:24'),
(1522, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 09:08:07'),
(1523, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 09:08:18'),
(1524, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-03 10:01:09'),
(1525, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-03 10:01:24'),
(1526, 558, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-03 10:05:01'),
(1527, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 10:13:11'),
(1528, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 10:13:14'),
(1529, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 10:16:01'),
(1530, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 10:23:44'),
(1531, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 10:25:19'),
(1532, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 10:25:26'),
(1533, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 10:27:19'),
(1534, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 10:28:03'),
(1535, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 10:28:07'),
(1536, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 10:39:09'),
(1537, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 10:39:12'),
(1538, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 10:39:29'),
(1539, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 10:43:32'),
(1540, 558, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-03 10:45:28'),
(1541, 558, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-03 10:45:34'),
(1542, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 10:45:48'),
(1543, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 10:46:02'),
(1544, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 10:46:34'),
(1545, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 10:47:41'),
(1546, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 10:51:40'),
(1547, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 10:53:18'),
(1548, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 10:57:16'),
(1549, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 10:59:34'),
(1550, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 11:06:02'),
(1551, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 11:06:08'),
(1552, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 11:20:29'),
(1553, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 11:23:02'),
(1554, 544, '45.64.139.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-03 11:25:27'),
(1555, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 11:25:32'),
(1556, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-03 11:26:12'),
(1557, 544, '45.64.139.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-03 11:26:44'),
(1558, 544, '45.64.139.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-03 11:27:09'),
(1559, 544, '45.64.139.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-03 11:27:45'),
(1560, 544, '45.64.139.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-03 11:30:42'),
(1561, 544, '45.64.139.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-03 11:38:16'),
(1562, 538, '180.148.215.194', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:57.0) ', '2017-12-03 13:51:03'),
(1563, 538, '180.148.215.194', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:57.0) ', '2017-12-03 13:51:18'),
(1564, 538, '180.148.215.194', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:57.0) ', '2017-12-03 13:53:13'),
(1565, 532, '180.148.215.194', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:57.0) ', '2017-12-03 13:53:27'),
(1566, 517, '180.148.215.194', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:57.0) ', '2017-12-03 13:54:19'),
(1567, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-04 04:24:47'),
(1568, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-04 04:25:02'),
(1569, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-04 04:25:32'),
(1570, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-04 04:28:38'),
(1571, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-04 04:29:33'),
(1572, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-04 06:09:51'),
(1573, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-04 11:10:53'),
(1574, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-04 14:55:25'),
(1575, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-04 14:56:09'),
(1576, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-04 14:56:37'),
(1577, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-04 14:57:02'),
(1578, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-04 14:57:03'),
(1579, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-04 14:57:19'),
(1580, 546, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-04 21:15:57'),
(1581, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-05 07:45:26'),
(1582, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-05 07:45:41'),
(1583, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-05 07:51:02'),
(1584, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-05 07:54:58'),
(1585, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-05 08:38:03'),
(1586, 554, '103.230.107.57', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-05 15:45:30'),
(1587, 554, '103.230.107.57', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-05 15:46:06'),
(1588, 554, '103.230.107.57', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-05 15:46:15'),
(1589, 0, '27.147.201.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-05 16:42:49'),
(1590, 0, '27.147.201.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-05 16:46:17'),
(1591, 546, '160.202.144.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-05 18:50:34'),
(1592, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-06 04:13:39'),
(1593, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-06 04:15:25'),
(1594, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-06 05:28:03'),
(1595, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-06 06:11:14'),
(1596, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-06 06:11:18'),
(1597, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-06 06:11:31'),
(1598, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-06 09:24:24'),
(1599, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-06 09:24:44'),
(1600, 0, '180.148.215.194', 'Mozilla/5.0 (Linux; Android 5.1; P6 PRO Build/LMY4', '2017-12-06 14:14:18'),
(1601, 0, '180.148.215.194', 'Mozilla/5.0 (Linux; Android 5.1; P6 PRO Build/LMY4', '2017-12-06 18:57:32'),
(1602, 0, '180.148.215.194', 'Mozilla/5.0 (Linux; Android 5.1; P6 PRO Build/LMY4', '2017-12-06 18:59:44'),
(1603, 0, '180.148.215.194', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:57.0) ', '2017-12-06 19:18:19'),
(1604, 0, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-06 21:08:05'),
(1605, 0, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-06 21:08:34'),
(1606, 0, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-06 21:09:14'),
(1607, 0, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-06 21:10:16'),
(1608, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-07 05:55:31'),
(1609, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-07 05:56:06'),
(1610, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:56.0) Geck', '2017-12-07 09:10:08'),
(1611, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-07 10:01:31'),
(1612, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-07 10:25:45'),
(1613, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-07 17:25:53'),
(1614, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-07 17:26:25'),
(1615, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-07 17:26:35'),
(1616, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-07 17:26:41'),
(1617, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-07 17:26:55'),
(1618, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 04:02:09'),
(1619, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 04:03:12'),
(1620, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 04:22:11'),
(1621, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 04:33:52'),
(1622, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 04:36:13'),
(1623, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 04:36:37'),
(1624, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-09 04:36:44'),
(1625, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-09 04:36:44'),
(1626, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 04:43:56'),
(1627, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 04:44:31'),
(1628, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 04:44:44'),
(1629, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 04:44:53'),
(1630, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-09 05:38:55'),
(1631, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-09 05:41:06'),
(1632, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-09 05:42:10'),
(1633, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-09 05:46:16'),
(1634, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-09 05:46:50'),
(1635, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-09 05:48:36'),
(1636, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 06:19:39'),
(1637, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 06:19:57'),
(1638, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-09 06:20:01'),
(1639, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 06:20:06'),
(1640, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 06:20:45'),
(1641, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 06:20:55'),
(1642, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 06:21:03'),
(1643, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 06:21:12'),
(1644, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 06:21:27'),
(1645, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 06:26:38'),
(1646, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 06:27:08'),
(1647, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 06:27:45'),
(1648, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 06:29:15'),
(1649, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 06:30:06'),
(1650, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 06:30:26'),
(1651, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 06:31:39'),
(1652, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 06:32:18'),
(1653, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 06:32:38'),
(1654, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 06:33:42'),
(1655, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-09 06:34:26'),
(1656, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-09 06:36:06'),
(1657, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 06:39:20'),
(1658, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-09 06:39:22'),
(1659, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 06:39:57'),
(1660, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-09 06:39:57'),
(1661, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-09 06:40:41'),
(1662, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 06:41:08'),
(1663, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 06:42:43'),
(1664, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 06:47:31'),
(1665, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 06:50:23'),
(1666, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 06:56:15'),
(1667, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 07:01:27'),
(1668, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 07:02:06'),
(1669, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 07:15:16'),
(1670, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 07:16:03'),
(1671, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 07:16:52'),
(1672, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 07:17:30'),
(1673, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 07:17:39'),
(1674, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 07:51:02'),
(1675, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 07:57:04'),
(1676, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 07:58:33'),
(1677, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-09 08:06:26'),
(1678, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-09 08:07:52'),
(1679, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-09 08:08:44'),
(1680, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-09 08:08:53'),
(1681, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 08:12:35'),
(1682, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-09 08:28:42'),
(1683, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-09 08:29:03'),
(1684, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-09 08:29:16'),
(1685, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-09 08:30:34'),
(1686, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 08:33:58'),
(1687, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 08:34:05'),
(1688, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 08:34:38'),
(1689, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-09 09:28:46'),
(1690, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-09 09:32:28'),
(1691, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 09:32:50'),
(1692, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 09:32:53'),
(1693, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-09 09:34:42'),
(1694, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-09 09:34:47'),
(1695, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-09 09:34:58'),
(1696, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 10:11:47'),
(1697, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 10:11:51'),
(1698, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 10:16:29'),
(1699, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 10:18:21'),
(1700, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 10:18:31'),
(1701, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 10:33:51'),
(1702, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 10:33:54'),
(1703, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', '2017-12-09 10:33:58'),
(1704, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-09 10:42:11'),
(1705, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-09 10:42:29'),
(1706, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-09 10:42:35'),
(1707, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-09 10:44:12'),
(1708, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-09 10:44:17'),
(1709, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-09 10:44:28'),
(1710, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-09 10:48:12'),
(1711, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-09 10:48:47'),
(1712, 556, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-09 10:49:32'),
(1713, 556, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-09 10:49:37'),
(1714, 556, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-09 10:50:03'),
(1715, 556, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-09 10:53:21'),
(1716, 556, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-09 10:55:48'),
(1717, 556, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-09 11:04:49'),
(1718, 556, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-09 11:11:53'),
(1719, 556, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-09 11:14:12'),
(1720, 556, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-09 11:14:17'),
(1721, 556, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-09 11:17:12'),
(1722, 556, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-09 11:17:55'),
(1723, 556, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-09 11:18:20'),
(1724, 0, '103.86.109.174', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-12-09 16:07:54'),
(1725, 0, '27.147.201.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-09 16:45:49'),
(1726, 0, '27.147.201.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-09 16:47:08'),
(1727, 0, '103.73.107.247', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-12-09 18:04:58'),
(1728, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-10 07:06:42'),
(1729, 0, '202.40.177.50', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-12-10 09:27:52'),
(1730, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-10 10:21:51'),
(1731, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-10 10:22:01'),
(1732, 559, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-10 11:18:57'),
(1733, 0, '202.40.177.50', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-12-10 11:53:41'),
(1734, 566, '202.40.177.50', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-12-10 11:53:46'),
(1735, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-10 18:33:43'),
(1736, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-10 18:34:17'),
(1737, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-10 18:34:22'),
(1738, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 04:08:19'),
(1739, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 04:08:40'),
(1740, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 04:18:37'),
(1741, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 04:19:29'),
(1742, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 04:19:44'),
(1743, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 05:15:06'),
(1744, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 06:09:27'),
(1745, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 06:09:35'),
(1746, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 06:10:02'),
(1747, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 06:20:07'),
(1748, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-11 06:44:17'),
(1749, 560, '103.92.154.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 06:48:09'),
(1750, 560, '103.92.154.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 06:57:06'),
(1751, 512, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 07:23:21'),
(1752, 512, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 07:23:32'),
(1753, 512, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 07:24:40'),
(1754, 512, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 07:29:32'),
(1755, 512, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 07:33:51'),
(1756, 512, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 07:40:28'),
(1757, 512, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 07:40:57'),
(1758, 512, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 07:41:00'),
(1759, 512, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 07:46:33'),
(1760, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-11 09:02:06'),
(1761, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-11 09:04:25'),
(1762, 512, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 09:41:31'),
(1763, 512, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 09:48:22'),
(1764, 512, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 10:15:30'),
(1765, 512, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 10:15:34'),
(1766, 512, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 10:16:15'),
(1767, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-11 10:21:37'),
(1768, 512, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 10:28:28'),
(1769, 512, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 10:29:56'),
(1770, 512, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 10:30:27'),
(1771, 512, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 10:31:47'),
(1772, 512, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 10:32:16'),
(1773, 512, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 10:32:34'),
(1774, 512, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 10:33:01'),
(1775, 512, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 10:33:14'),
(1776, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-11 10:34:55'),
(1777, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-11 10:36:00'),
(1778, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-11 10:40:02'),
(1779, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 10:45:23'),
(1780, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 10:46:39'),
(1781, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 10:59:14'),
(1782, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 10:59:40'),
(1783, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 10:59:47'),
(1784, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-11 11:02:24'),
(1785, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-11 11:02:24'),
(1786, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-11 11:04:11'),
(1787, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-11 11:04:38'),
(1788, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-11 11:04:38'),
(1789, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-11 11:10:22'),
(1790, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-11 11:11:43'),
(1791, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 11:11:57'),
(1792, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-11 11:12:20'),
(1793, 569, '103.231.162.126', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 11:40:43'),
(1794, 0, '119.30.38.17', 'Mozilla/5.0 (Linux; Android 6.0.1; HTC_D530u Build', '2017-12-11 11:57:50'),
(1795, 0, '119.30.38.17', 'Mozilla/5.0 (Linux; Android 6.0.1; HTC_D530u Build', '2017-12-11 11:58:07'),
(1796, 0, '119.30.38.17', 'Mozilla/5.0 (Linux; Android 6.0.1; HTC_D530u Build', '2017-12-11 11:59:11'),
(1797, 569, '103.231.162.126', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 12:09:06'),
(1798, 569, '103.231.162.126', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 12:11:01'),
(1799, 569, '103.231.162.126', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 12:15:02'),
(1800, 569, '103.231.162.126', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 12:18:08'),
(1801, 569, '103.231.162.126', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 12:18:25'),
(1802, 569, '103.231.162.126', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 12:18:31'),
(1803, 570, '119.30.38.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 12:43:04'),
(1804, 570, '119.30.38.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 12:45:08'),
(1805, 570, '119.30.38.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 12:45:32'),
(1806, 570, '119.30.38.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 12:48:28'),
(1807, 570, '119.30.38.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 12:48:33'),
(1808, 570, '119.30.38.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 12:48:48'),
(1809, 570, '119.30.38.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 12:53:41'),
(1810, 570, '119.30.38.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 12:54:14'),
(1811, 570, '119.30.38.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 12:55:35'),
(1812, 570, '119.30.38.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 12:55:55'),
(1813, 570, '119.30.38.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 12:56:21'),
(1814, 570, '119.30.38.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 12:58:53'),
(1815, 0, '119.30.38.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 13:36:50'),
(1816, 0, '119.30.38.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 13:36:59'),
(1817, 0, '119.30.38.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 13:37:18'),
(1818, 570, '119.30.38.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 13:37:35'),
(1819, 570, '119.30.38.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 13:38:28'),
(1820, 570, '119.30.38.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 13:38:45'),
(1821, 569, '103.231.162.126', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 14:23:20'),
(1822, 569, '103.231.162.126', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 14:27:02'),
(1823, 0, '27.147.201.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-11 16:13:05'),
(1824, 560, '43.224.112.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 16:38:18'),
(1825, 560, '43.224.112.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 16:39:10'),
(1826, 560, '43.224.112.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 16:39:17'),
(1827, 560, '43.224.112.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 16:39:32'),
(1828, 560, '43.224.112.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 16:40:12'),
(1829, 560, '43.224.112.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 16:40:23'),
(1830, 560, '43.224.112.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 16:41:24'),
(1831, 560, '43.224.112.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 16:41:39'),
(1832, 560, '43.224.112.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-11 16:41:42'),
(1833, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-11 17:34:04'),
(1834, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-11 17:34:23'),
(1835, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-11 17:35:51'),
(1836, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-12 07:05:18'),
(1837, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-12 07:09:46'),
(1838, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-12 07:09:47'),
(1839, 569, '103.231.162.126', 'Mozilla/5.0 (Linux; U; Android 6.0.1; en-us; Redmi', '2017-12-12 07:35:50'),
(1840, 569, '123.108.244.102', 'Mozilla/5.0 (Linux; U; Android 6.0.1; en-us; Redmi', '2017-12-12 12:35:27'),
(1841, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-12 13:42:03'),
(1842, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-12 13:43:27'),
(1843, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-12 13:43:34'),
(1844, 569, '119.30.45.193', 'Mozilla/5.0 (Linux; U; Android 6.0.1; en-us; Redmi', '2017-12-12 13:50:02'),
(1845, 0, '27.147.201.100', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-12-12 15:40:30'),
(1846, 0, '27.147.201.100', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-12-12 15:40:54'),
(1847, 569, '110.76.129.90', 'Mozilla/5.0 (Linux; U; Android 6.0.1; en-us; Redmi', '2017-12-12 18:10:52'),
(1848, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-13 03:13:20'),
(1849, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-13 03:46:51'),
(1850, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 04:21:18'),
(1851, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 04:26:07'),
(1852, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 04:26:08'),
(1853, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 04:26:33'),
(1854, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 04:30:51'),
(1855, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 04:38:14'),
(1856, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 04:38:35'),
(1857, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 04:38:59'),
(1858, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 04:43:09'),
(1859, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 04:49:35'),
(1860, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 04:49:57'),
(1861, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 04:50:09'),
(1862, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 05:01:56'),
(1863, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 05:02:02'),
(1864, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 05:02:09'),
(1865, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 05:03:49'),
(1866, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 05:03:53'),
(1867, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 05:03:56'),
(1868, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 05:09:32'),
(1869, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 05:09:39'),
(1870, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 05:09:44'),
(1871, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 05:16:42'),
(1872, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 05:20:48'),
(1873, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-13 05:23:33'),
(1874, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-13 05:24:07'),
(1875, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-13 05:24:39'),
(1876, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-13 05:25:03'),
(1877, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-13 05:25:14'),
(1878, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-13 05:26:14'),
(1879, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-13 05:26:28'),
(1880, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-13 05:26:31'),
(1881, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-13 05:30:27'),
(1882, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 05:31:46'),
(1883, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 05:35:57'),
(1884, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 05:38:28'),
(1885, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 05:43:47'),
(1886, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 05:44:42'),
(1887, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 05:53:56'),
(1888, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 05:54:30'),
(1889, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 05:55:55'),
(1890, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 05:57:10'),
(1891, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-13 05:57:51'),
(1892, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-13 06:01:18'),
(1893, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-13 06:02:28'),
(1894, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 06:07:22'),
(1895, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-13 06:07:23'),
(1896, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-13 06:07:34'),
(1897, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-13 06:07:49'),
(1898, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 06:08:01'),
(1899, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-13 06:10:25'),
(1900, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 06:11:56'),
(1901, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-13 06:12:12'),
(1902, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 06:12:26'),
(1903, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 06:12:36'),
(1904, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 06:12:44'),
(1905, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 06:20:31'),
(1906, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 06:21:49'),
(1907, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-13 06:32:23'),
(1908, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 06:32:30'),
(1909, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 06:33:03'),
(1910, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 06:37:05'),
(1911, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 07:39:37'),
(1912, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 07:39:50'),
(1913, 569, '110.76.129.90', 'Mozilla/5.0 (Linux; U; Android 6.0.1; en-us; Redmi', '2017-12-13 09:12:30'),
(1914, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-13 10:44:22'),
(1915, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-13 11:14:16'),
(1916, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-13 11:15:27'),
(1917, 569, '180.234.212.253', 'Mozilla/5.0 (Linux; U; Android 6.0.1; en-us; Redmi', '2017-12-13 12:17:56'),
(1918, 569, '37.111.205.177', 'Mozilla/5.0 (Linux; U; Android 6.0.1; en-us; Redmi', '2017-12-13 14:55:28'),
(1919, 0, '103.221.254.243', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_1_2 like Mac', '2017-12-14 04:56:18'),
(1920, 0, '103.206.228.253', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 05:00:06'),
(1921, 0, '103.206.228.253', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 05:00:14'),
(1922, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-14 05:02:44'),
(1923, 0, '43.229.209.216', 'Mozilla/5.0 (Linux; Android 5.1.1; Redmi 3 Build/L', '2017-12-14 05:10:53'),
(1924, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-14 05:11:09'),
(1925, 0, '43.229.209.216', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:57.0) ', '2017-12-14 05:12:43'),
(1926, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-14 05:14:05');
INSERT INTO `tbl_urecord` (`id`, `userId`, `ip`, `browser`, `time`) VALUES
(1927, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-14 05:14:11'),
(1928, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-14 05:14:50'),
(1929, 0, '103.63.158.170', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 05:17:10'),
(1930, 0, '103.63.158.170', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 05:17:34'),
(1931, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-14 05:23:38'),
(1932, 0, '182.48.84.34', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-14 05:26:15'),
(1933, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-14 05:41:50'),
(1934, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-14 05:41:52'),
(1935, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-14 05:42:10'),
(1936, 0, '107.167.112.217', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-12-14 05:49:48'),
(1937, 0, '107.167.112.217', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-12-14 05:49:50'),
(1938, 0, '103.60.160.57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 05:59:52'),
(1939, 0, '103.60.160.57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 05:59:53'),
(1940, 546, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 06:01:48'),
(1941, 546, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 06:02:25'),
(1942, 546, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 06:02:49'),
(1943, 0, '103.91.130.210', 'Mozilla/5.0 (Linux; Android 7.0; Redmi Note 4 Buil', '2017-12-14 06:03:58'),
(1944, 0, '103.80.0.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 06:05:33'),
(1945, 0, '27.147.190.228', 'Mozilla/5.0 (Linux; Android 6.0; Primo RM3 Build/M', '2017-12-14 06:07:08'),
(1946, 0, '115.127.80.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-14 06:33:39'),
(1947, 0, '103.230.106.30', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', '2017-12-14 06:33:53'),
(1948, 0, '103.230.106.30', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', '2017-12-14 06:34:27'),
(1949, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-14 06:35:29'),
(1950, 0, '202.134.11.150', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-G900H Build/', '2017-12-14 06:43:38'),
(1951, 0, '43.224.119.214', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:57.0) G', '2017-12-14 06:44:01'),
(1952, 0, '103.51.2.186', 'Mozilla/5.0 (Linux; Android 5.0; P6 Build/LRX21M) ', '2017-12-14 07:03:52'),
(1953, 0, '103.205.68.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 07:05:46'),
(1954, 0, '107.167.109.111', 'Opera/9.80 (MAUI Runtime; Opera Mini/4.4.33792/79.', '2017-12-14 07:10:05'),
(1955, 0, '182.48.95.110', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:57.0) G', '2017-12-14 07:29:08'),
(1956, 0, '103.218.26.54', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-14 07:48:39'),
(1957, 0, '103.72.77.106', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', '2017-12-14 08:16:39'),
(1958, 0, '103.72.77.106', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', '2017-12-14 08:16:41'),
(1959, 0, '119.30.35.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-14 08:49:43'),
(1960, 570, '119.30.35.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-14 08:50:10'),
(1961, 570, '119.30.35.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-14 08:50:27'),
(1962, 0, '160.202.144.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 08:55:39'),
(1963, 0, '103.230.104.49', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 4X Build/', '2017-12-14 09:08:09'),
(1964, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-14 09:17:34'),
(1965, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-14 09:17:40'),
(1966, 0, '103.230.104.49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 09:17:55'),
(1967, 0, '64.233.173.26', 'Mozilla/5.0 (Linux; Android 5.1; V52 Build/LMY47D)', '2017-12-14 09:20:09'),
(1968, 557, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-14 09:20:25'),
(1969, 0, '202.134.9.144', 'Mozilla/5.0 (Linux; Android 7.1.1; SM-J510FN Build', '2017-12-14 09:28:22'),
(1970, 0, '202.134.9.144', 'Mozilla/5.0 (Linux; Android 7.1.1; SM-J510FN Build', '2017-12-14 09:28:36'),
(1971, 0, '103.230.105.11', 'Mozilla/5.0 (Linux; U; Android 6.0.1; en-us; Redmi', '2017-12-14 09:36:27'),
(1972, 0, '103.230.105.11', 'Mozilla/5.0 (Linux; U; Android 6.0.1; en-us; Redmi', '2017-12-14 09:36:40'),
(1973, 0, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-12-14 09:52:48'),
(1974, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-14 11:03:46'),
(1975, 569, '110.76.129.90', 'Mozilla/5.0 (Linux; U; Android 6.0.1; en-us; Redmi', '2017-12-14 11:05:53'),
(1976, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-14 11:13:16'),
(1977, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-14 11:13:19'),
(1978, 0, '103.96.36.26', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', '2017-12-14 11:20:29'),
(1979, 0, '103.96.36.26', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', '2017-12-14 11:20:39'),
(1980, 0, '114.130.10.3', 'Mozilla/5.0 (Android 4.4.2; Mobile; rv:57.0) Gecko', '2017-12-14 11:25:47'),
(1981, 0, '202.134.9.141', 'Mozilla/5.0 (Linux; Android 6.0; i21 Build/MRA58K;', '2017-12-14 12:14:03'),
(1982, 0, '116.58.201.108', 'Mozilla/5.0 (Linux; Android 4.4.4; HTC_D626x Build', '2017-12-14 12:38:40'),
(1983, 569, '119.30.45.16', 'Mozilla/5.0 (Linux; U; Android 6.0.1; en-us; Redmi', '2017-12-14 12:51:58'),
(1984, 0, '45.248.151.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 12:53:14'),
(1985, 0, '45.248.151.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 12:54:10'),
(1986, 572, '103.221.254.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 12:57:42'),
(1987, 572, '103.221.254.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 12:58:03'),
(1988, 572, '103.221.254.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 13:05:42'),
(1989, 572, '103.221.254.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 13:08:43'),
(1990, 572, '103.221.254.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 13:13:29'),
(1991, 572, '103.221.254.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 13:13:38'),
(1992, 572, '103.221.254.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 13:13:42'),
(1993, 572, '103.221.254.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 13:14:01'),
(1994, 572, '103.221.254.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 13:14:08'),
(1995, 572, '103.221.254.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 13:14:12'),
(1996, 572, '103.221.254.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 13:16:20'),
(1997, 0, '103.62.141.34', 'Mozilla/5.0 (Windows Phone 10.0; Android 6.0.1; Mi', '2017-12-14 13:40:46'),
(1998, 0, '27.131.15.249', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', '2017-12-14 13:42:05'),
(1999, 0, '27.131.15.249', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', '2017-12-14 13:42:22'),
(2000, 0, '107.167.98.75', 'Opera/9.80 (Android; Opera Mini/7.5.33361/79.6; U;', '2017-12-14 13:59:06'),
(2001, 0, '182.48.89.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 15:14:12'),
(2002, 0, '103.59.36.34', 'Mozilla/5.0 (Linux; Android 7.0; PRA-LX2 Build/HUA', '2017-12-14 15:45:17'),
(2003, 0, '103.51.2.126', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-14 15:58:50'),
(2004, 0, '202.133.89.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 15:58:50'),
(2005, 0, '202.133.89.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 15:59:03'),
(2006, 581, '103.51.2.126', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-14 16:01:24'),
(2007, 581, '103.51.2.126', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-14 16:01:59'),
(2008, 581, '103.51.2.126', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-14 16:02:02'),
(2009, 582, '202.133.89.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 16:02:36'),
(2010, 582, '202.133.89.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 16:03:20'),
(2011, 581, '103.51.2.126', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-14 16:29:32'),
(2012, 581, '103.51.2.126', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-14 16:30:09'),
(2013, 0, '119.30.32.237', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-G532G Build/', '2017-12-14 16:41:36'),
(2014, 580, '182.48.89.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 17:01:31'),
(2015, 0, '103.79.219.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 17:40:33'),
(2016, 0, '103.79.219.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 17:40:35'),
(2017, 0, '43.224.116.126', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', '2017-12-14 17:44:24'),
(2018, 476, '43.224.116.126', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', '2017-12-14 17:45:51'),
(2019, 476, '43.224.116.126', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', '2017-12-14 17:46:37'),
(2020, 476, '43.224.116.126', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', '2017-12-14 17:46:45'),
(2021, 0, '103.83.233.19', 'Mozilla/5.0 (Linux; Android 7.1.2; TA-1053 Build/N', '2017-12-14 18:12:26'),
(2022, 0, '103.83.233.19', 'Mozilla/5.0 (Linux; Android 7.1.2; TA-1053 Build/N', '2017-12-14 18:13:07'),
(2023, 0, '103.83.233.19', 'Mozilla/5.0 (Linux; Android 7.1.2; TA-1053 Build/N', '2017-12-14 18:25:52'),
(2024, 0, '103.83.233.19', 'Mozilla/5.0 (Linux; Android 7.1.2; TA-1053 Build/N', '2017-12-14 18:30:26'),
(2025, 0, '144.48.151.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 18:37:09'),
(2026, 0, '144.48.151.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 18:37:18'),
(2027, 0, '103.218.26.54', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-14 18:51:29'),
(2028, 0, '144.48.110.90', 'Mozilla/5.0 (Linux; Android 6.0.1; Redmi 4 Build/M', '2017-12-14 19:08:23'),
(2029, 0, '220.247.128.93', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 19:11:04'),
(2030, 0, '180.92.225.28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 19:12:10'),
(2031, 0, '202.134.13.130', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-J210F Build/', '2017-12-14 19:44:56'),
(2032, 0, '103.14.26.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 20:37:29'),
(2033, 0, '103.55.146.165', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-14 20:45:10'),
(2034, 0, '103.220.204.133', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_1_2 like Mac', '2017-12-14 21:15:12'),
(2035, 0, '103.78.224.7', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', '2017-12-14 22:19:30'),
(2036, 0, '103.205.134.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 23:05:02'),
(2037, 0, '103.205.134.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 23:05:05'),
(2038, 589, '103.205.134.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 23:09:21'),
(2039, 589, '103.205.134.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 23:09:48'),
(2040, 589, '103.205.134.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 23:10:23'),
(2041, 589, '103.205.134.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-14 23:10:48'),
(2042, 0, '103.77.62.41', 'Mozilla/5.0 (Linux; Android 5.0.1; GT-I9506 Build/', '2017-12-15 02:37:00'),
(2043, 0, '103.60.160.57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-15 03:04:56'),
(2044, 0, '103.60.160.57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-15 03:04:57'),
(2045, 0, '103.72.77.69', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:56.0) G', '2017-12-15 03:13:41'),
(2046, 0, '45.64.136.158', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-12-15 04:22:40'),
(2047, 0, '45.64.136.158', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-12-15 04:22:42'),
(2048, 0, '103.96.104.253', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-12-15 05:10:13'),
(2049, 527, '103.96.104.253', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-12-15 05:10:55'),
(2050, 0, '160.202.144.30', 'Mozilla/5.0 (Linux; Android 5.1; Primo GH5 Plus Bu', '2017-12-15 05:29:21'),
(2051, 0, '144.48.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-15 05:34:34'),
(2052, 476, '43.224.116.126', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', '2017-12-15 05:39:54'),
(2053, 476, '43.224.116.126', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', '2017-12-15 05:41:53'),
(2054, 0, '64.233.173.24', 'Mozilla/5.0 (Linux; Android 7.0; SM-G930W8 Build/N', '2017-12-15 06:06:35'),
(2055, 0, '45.64.136.158', 'Mozilla/5.0 (Linux; Android 7.0; TRT-L21A Build/HU', '2017-12-15 06:14:47'),
(2056, 590, '45.64.136.158', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-12-15 06:23:09'),
(2057, 590, '45.64.136.158', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-12-15 06:28:23'),
(2058, 590, '45.64.136.158', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-12-15 06:28:32'),
(2059, 0, '103.231.162.126', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:57.0) ', '2017-12-15 06:28:55'),
(2060, 0, '103.231.162.126', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:57.0) ', '2017-12-15 06:28:58'),
(2061, 590, '45.64.136.158', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-12-15 06:29:29'),
(2062, 0, '64.233.173.24', 'Mozilla/5.0 (Linux; Android 7.1.2; SYMPHONY Z10 Bu', '2017-12-15 06:48:17'),
(2063, 0, '180.211.153.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-15 07:58:33'),
(2064, 0, '180.211.153.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-15 08:38:39'),
(2065, 0, '180.211.153.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-15 08:40:51'),
(2066, 0, '103.19.131.253', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-15 08:43:10'),
(2067, 0, '180.211.153.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-15 08:44:07'),
(2068, 0, '103.19.131.253', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-15 08:44:38'),
(2069, 0, '103.19.131.253', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-15 08:44:47'),
(2070, 0, '180.211.153.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-15 08:46:06'),
(2071, 0, '180.211.153.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-15 08:49:23'),
(2072, 0, '103.252.227.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-15 10:07:04'),
(2073, 0, '182.48.67.74', 'Mozilla/5.0 (Linux; Android 6.0; ALE-L21 Build/Hua', '2017-12-15 10:29:36'),
(2074, 569, '103.231.162.126', 'Mozilla/5.0 (Linux; U; Android 6.0.1; en-us; Redmi', '2017-12-15 11:11:38'),
(2075, 0, '103.83.233.7', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-15 11:54:51'),
(2076, 0, '103.83.233.7', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-15 11:58:44'),
(2077, 569, '119.30.47.127', 'Mozilla/5.0 (Linux; U; Android 6.0.1; en-us; Redmi', '2017-12-15 13:04:19'),
(2078, 0, '103.83.235.169', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_2_5 like Mac', '2017-12-15 13:16:44'),
(2079, 0, '103.83.235.169', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_2_5 like Mac', '2017-12-15 13:18:47'),
(2080, 594, '103.83.235.169', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_2_5 like Mac', '2017-12-15 13:22:18'),
(2081, 594, '103.83.235.169', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_2_5 like Mac', '2017-12-15 13:42:59'),
(2082, 594, '103.83.235.169', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_2_5 like Mac', '2017-12-15 13:44:31'),
(2083, 594, '103.83.235.169', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_2_5 like Mac', '2017-12-15 13:44:36'),
(2084, 594, '103.83.235.169', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_2_5 like Mac', '2017-12-15 13:44:52'),
(2085, 594, '103.83.235.169', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_2_5 like Mac', '2017-12-15 13:45:01'),
(2086, 581, '103.51.2.126', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-15 14:50:38'),
(2087, 581, '103.51.2.126', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-15 14:51:02'),
(2088, 581, '103.51.2.126', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-15 14:53:56'),
(2089, 0, '103.230.106.47', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-12-15 14:54:33'),
(2090, 581, '103.51.2.126', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-15 14:56:06'),
(2091, 581, '103.51.2.126', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-15 14:56:34'),
(2092, 0, '103.43.150.142', 'Mozilla/5.0 (Linux; Android 4.4.2; HUAWEI Y625-U32', '2017-12-15 15:02:50'),
(2093, 0, '139.59.92.21', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-12-15 16:45:43'),
(2094, 576, '43.230.123.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-15 16:50:09'),
(2095, 576, '43.230.123.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-15 16:52:02'),
(2096, 576, '43.230.123.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-15 16:52:05'),
(2097, 576, '43.230.123.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-15 16:52:15'),
(2098, 576, '43.230.123.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-15 16:52:19'),
(2099, 576, '43.230.123.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-15 16:57:55'),
(2100, 569, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-15 17:57:22'),
(2101, 569, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-15 17:58:43'),
(2102, 569, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-15 17:58:45'),
(2103, 0, '180.234.33.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-15 18:04:59'),
(2104, 0, '180.234.33.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-15 18:09:52'),
(2105, 569, '103.231.162.126', 'Mozilla/5.0 (Linux; U; Android 6.0.1; en-us; Redmi', '2017-12-15 19:18:43'),
(2106, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-15 19:22:36'),
(2107, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-15 19:22:58'),
(2108, 554, '202.181.18.209', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-L21 Build/H', '2017-12-15 19:23:03'),
(2109, 0, '103.67.198.22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-15 19:31:38'),
(2110, 0, '103.67.198.22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-15 19:31:40'),
(2111, 0, '107.167.112.135', 'Opera/9.80 (Android; Opera Mini/21.0.2254/79.10; U', '2017-12-15 19:56:51'),
(2112, 0, '107.167.112.135', 'Opera/9.80 (Android; Opera Mini/21.0.2254/79.10; U', '2017-12-15 19:58:23'),
(2113, 0, '37.111.201.224', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-12-15 22:23:39'),
(2114, 0, '37.111.201.224', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-12-15 22:24:03'),
(2115, 0, '66.249.66.80', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', '2017-12-16 04:13:05'),
(2116, 0, '103.217.111.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-16 05:40:56'),
(2117, 0, '103.60.175.101', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-16 05:51:17'),
(2118, 0, '180.234.59.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-16 10:34:17'),
(2119, 569, '103.231.162.126', 'Mozilla/5.0 (Linux; U; Android 6.0.1; en-us; Redmi', '2017-12-16 10:37:39'),
(2120, 0, '43.250.81.54', 'Mozilla/5.0 (Linux; Android 5.1.1; SAMSUNG SM-J320', '2017-12-16 12:07:39'),
(2121, 0, '43.250.81.54', 'Mozilla/5.0 (Linux; Android 5.1.1; SAMSUNG SM-J320', '2017-12-16 12:09:42'),
(2122, 0, '43.250.81.54', 'Mozilla/5.0 (Linux; Android 5.1.1; SAMSUNG SM-J320', '2017-12-16 12:09:51'),
(2123, 0, '43.250.81.54', 'Mozilla/5.0 (Linux; Android 5.1.1; SAMSUNG SM-J320', '2017-12-16 12:10:00'),
(2124, 0, '43.250.81.54', 'Mozilla/5.0 (Linux; Android 5.1.1; SAMSUNG SM-J320', '2017-12-16 12:10:04'),
(2125, 569, '103.231.162.126', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-16 12:45:13'),
(2126, 496, '203.190.14.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-16 12:54:59'),
(2127, 496, '203.190.14.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-16 12:55:52'),
(2128, 496, '203.190.14.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-16 12:55:57'),
(2129, 496, '203.190.14.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-16 12:56:49'),
(2130, 496, '203.190.14.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-16 12:57:09'),
(2131, 496, '203.190.14.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-16 12:57:16'),
(2132, 496, '203.190.14.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-16 12:57:26'),
(2133, 496, '203.190.14.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-16 12:57:34'),
(2134, 496, '203.190.14.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-16 12:59:39'),
(2135, 0, '27.131.15.249', 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4) Build/', '2017-12-16 13:35:13'),
(2136, 0, '103.196.235.50', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-12-16 14:15:28'),
(2137, 0, '103.60.175.66', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', '2017-12-16 15:02:15'),
(2138, 0, '103.60.175.66', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', '2017-12-16 15:07:48'),
(2139, 598, '103.60.175.66', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', '2017-12-16 15:13:10'),
(2140, 598, '103.60.175.66', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', '2017-12-16 15:14:16'),
(2141, 0, '202.134.13.139', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko', '2017-12-16 16:02:47'),
(2142, 0, '202.134.13.139', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko', '2017-12-16 16:03:08'),
(2143, 0, '58.97.241.138', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:54.0) Geck', '2017-12-16 17:23:39'),
(2144, 569, '103.231.162.126', 'Mozilla/5.0 (Linux; U; Android 6.0.1; en-us; Redmi', '2017-12-17 01:43:40'),
(2145, 0, '45.64.139.126', 'Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0)', '2017-12-17 02:28:36'),
(2146, 0, '103.103.32.2', 'Mozilla/5.0 (Linux; Android 7.0; MI 5 Build/NRD90M', '2017-12-17 03:00:41'),
(2147, 0, '103.103.32.2', 'Mozilla/5.0 (Linux; Android 7.0; MI 5 Build/NRD90M', '2017-12-17 03:00:55'),
(2148, 0, '103.103.32.2', 'Mozilla/5.0 (Linux; Android 7.0; MI 5 Build/NRD90M', '2017-12-17 03:01:26'),
(2149, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-17 03:14:37'),
(2150, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-17 03:14:51'),
(2151, 0, '106.0.52.5', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', '2017-12-17 05:32:48'),
(2152, 0, '182.48.67.74', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-17 06:23:04'),
(2153, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-17 06:47:20'),
(2154, 0, '103.78.53.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-17 06:49:43'),
(2155, 0, '103.78.53.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-17 06:50:30'),
(2156, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-17 07:10:49'),
(2157, 516, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-17 07:40:19'),
(2158, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-17 07:42:09'),
(2159, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-17 09:47:38'),
(2160, 516, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-17 09:47:54'),
(2161, 516, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-17 09:49:12'),
(2162, 516, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-17 09:52:04'),
(2163, 516, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-17 09:53:53'),
(2164, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-17 09:54:34'),
(2165, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-17 09:54:50'),
(2166, 516, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-17 09:55:29'),
(2167, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-17 09:56:01'),
(2168, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-17 09:56:24'),
(2169, 0, '182.48.67.74', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-17 10:01:11'),
(2170, 516, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-17 10:05:44'),
(2171, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-17 10:09:46'),
(2172, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-17 10:10:20'),
(2173, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-17 10:11:16'),
(2174, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-17 10:11:45'),
(2175, 516, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-17 10:11:48'),
(2176, 516, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-17 10:16:26'),
(2177, 516, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-17 10:17:17'),
(2178, 569, '103.231.162.126', 'Mozilla/5.0 (Linux; U; Android 6.0.1; en-us; Redmi', '2017-12-17 10:35:54'),
(2179, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-17 11:02:06'),
(2180, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-17 11:02:21'),
(2181, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-17 11:03:25'),
(2182, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-17 11:09:11'),
(2183, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-17 11:09:57'),
(2184, 0, '107.167.113.143', 'Opera/9.80 (Android; Opera Mini/32.0.2254/79.10; U', '2017-12-17 11:57:10'),
(2185, 590, '45.64.136.158', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-12-17 12:15:45'),
(2186, 590, '45.64.136.158', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-12-17 12:28:23'),
(2187, 590, '45.64.136.158', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-12-17 12:30:08'),
(2188, 0, '103.221.52.22', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-12-17 14:02:40'),
(2189, 0, '27.147.226.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-17 14:41:13'),
(2190, 0, '27.147.226.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-17 14:41:15'),
(2191, 0, '103.102.136.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-17 14:44:49'),
(2192, 0, '103.102.136.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-17 14:45:04'),
(2193, 0, '43.245.122.22', 'Mozilla/5.0 (Linux; Android 6.0.1; Redmi 3S Build/', '2017-12-17 14:47:02'),
(2194, 0, '27.147.226.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-17 14:48:06'),
(2195, 0, '202.134.9.146', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-12-17 16:19:40'),
(2196, 0, '202.134.9.146', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-12-17 17:28:12'),
(2197, 0, '119.30.35.221', 'Mozilla/5.0 (Linux; Android 6.0; Attila l8 Build/M', '2017-12-17 17:39:59'),
(2198, 0, '103.79.219.74', 'Mozilla/5.0 (Linux; Android 5.0.2; SM-G530H Build/', '2017-12-17 18:02:41'),
(2199, 0, '182.160.101.51', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-12-17 18:37:22'),
(2200, 0, '182.160.101.51', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebK', '2017-12-17 18:37:24'),
(2201, 0, '27.147.206.99', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (', '2017-12-17 18:47:26'),
(2202, 0, '123.108.244.156', 'Mozilla/5.0 (Linux; Android 7.0; SM-J730GM Build/N', '2017-12-17 20:17:32'),
(2203, 603, '123.108.244.156', 'Mozilla/5.0 (Linux; Android 7.0; SM-J730GM Build/N', '2017-12-17 20:32:40'),
(2204, 0, '103.217.111.194', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-17 20:53:52'),
(2205, 604, '103.217.111.194', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-17 20:57:46'),
(2206, 0, '134.96.48.127', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-G532G Build/', '2017-12-17 20:58:57'),
(2207, 604, '103.217.111.194', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-17 21:08:22'),
(2208, 603, '123.108.244.156', 'Mozilla/5.0 (Linux; Android 7.0; SM-J730GM Build/N', '2017-12-17 21:09:19'),
(2209, 603, '123.108.244.156', 'Mozilla/5.0 (Linux; Android 7.0; SM-J730GM Build/N', '2017-12-17 21:50:19'),
(2210, 603, '123.108.244.156', 'Mozilla/5.0 (Linux; Android 7.0; SM-J730GM Build/N', '2017-12-17 21:50:51'),
(2211, 603, '123.108.244.156', 'Mozilla/5.0 (Linux; Android 7.0; SM-J730GM Build/N', '2017-12-17 21:50:54'),
(2212, 603, '123.108.244.156', 'Mozilla/5.0 (Linux; Android 7.0; SM-J730GM Build/N', '2017-12-17 21:51:36'),
(2213, 603, '123.108.244.156', 'Mozilla/5.0 (Linux; Android 7.0; SM-J730GM Build/N', '2017-12-17 21:51:46'),
(2214, 603, '123.108.244.156', 'Mozilla/5.0 (Linux; Android 7.0; SM-J730GM Build/N', '2017-12-17 21:51:51'),
(2215, 603, '123.108.244.156', 'Mozilla/5.0 (Linux; Android 7.0; SM-J730GM Build/N', '2017-12-17 21:51:53'),
(2216, 603, '123.108.244.156', 'Mozilla/5.0 (Linux; Android 7.0; SM-J730GM Build/N', '2017-12-17 21:52:22'),
(2217, 0, '66.249.66.79', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', '2017-12-17 22:59:27'),
(2218, 0, '66.249.66.78', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', '2017-12-17 23:38:06'),
(2219, 0, '103.200.36.204', 'Mozilla/5.0 (Linux; Android 7.0; P9 Build/NRD90M; ', '2017-12-18 04:29:41'),
(2220, 0, '103.200.36.204', 'Mozilla/5.0 (Linux; Android 7.0; P9 Build/NRD90M; ', '2017-12-18 04:33:59'),
(2221, 0, '139.59.120.47', 'Mozilla/5.0 (Windows NT 10.0; rv:46.0) Gecko/20100', '2017-12-18 05:08:01'),
(2222, 0, '37.111.202.66', 'Mozilla/5.0 (Linux; Android 7.0; SM-J730GM Build/N', '2017-12-18 05:43:50'),
(2223, 603, '37.111.202.66', 'Mozilla/5.0 (Linux; Android 7.0; SM-J730GM Build/N', '2017-12-18 05:43:59'),
(2224, 603, '37.111.202.66', 'Mozilla/5.0 (Linux; Android 7.0; SM-J730GM Build/N', '2017-12-18 05:44:09'),
(2225, 603, '37.111.202.66', 'Mozilla/5.0 (Linux; Android 7.0; SM-J730GM Build/N', '2017-12-18 05:44:13'),
(2226, 603, '37.111.202.66', 'Mozilla/5.0 (Linux; Android 7.0; SM-J730GM Build/N', '2017-12-18 05:45:11'),
(2227, 0, '123.108.246.142', 'Mozilla/5.0 (Linux; Android 7.0; SM-G930F Build/NR', '2017-12-18 06:16:56'),
(2228, 0, '123.108.246.142', 'Mozilla/5.0 (Linux; Android 7.0; SM-G930F Build/NR', '2017-12-18 06:17:05'),
(2229, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-18 08:12:05'),
(2230, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-18 08:14:40'),
(2231, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-18 08:14:43'),
(2232, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-18 08:17:12'),
(2233, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-18 08:17:16'),
(2234, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-18 08:17:17'),
(2235, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-18 08:21:31'),
(2236, 0, '103.78.54.178', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) Ap', '2017-12-18 10:10:07'),
(2237, 0, '103.203.94.14', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-18 10:41:25'),
(2238, 0, '103.203.94.14', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-18 10:41:41'),
(2239, 0, '103.204.244.2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-12-18 12:51:15'),
(2240, 0, '103.204.244.2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-12-18 12:51:19'),
(2241, 0, '103.76.196.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-18 13:07:48'),
(2242, 0, '103.76.196.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-18 13:07:49'),
(2243, 0, '103.103.32.2', 'Mozilla/5.0 (Linux; Android 7.0; MI 5 Build/NRD90M', '2017-12-18 14:28:53'),
(2244, 0, '103.103.32.2', 'Mozilla/5.0 (Linux; Android 7.0; MI 5 Build/NRD90M', '2017-12-18 14:29:18'),
(2245, 0, '223.165.2.236', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-18 15:44:10'),
(2246, 0, '223.165.2.236', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-18 15:44:10'),
(2247, 0, '118.67.223.206', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_1_1 like Mac', '2017-12-18 18:17:28'),
(2248, 0, '103.242.216.140', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-18 19:51:54'),
(2249, 0, '37.111.201.34', 'Mozilla/5.0 (Linux; Android 7.0; SM-J730GM Build/N', '2017-12-18 20:03:47'),
(2250, 0, '27.123.247.26', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-J710F Build/', '2017-12-19 04:35:43'),
(2251, 0, '27.123.247.26', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-J710F Build/', '2017-12-19 04:35:51'),
(2252, 0, '103.204.211.126', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-19 10:09:01'),
(2253, 0, '45.64.139.126', 'Mozilla/5.0 (Windows NT 6.1; rv:57.0) Gecko/201001', '2017-12-19 12:43:41'),
(2254, 0, '45.64.139.126', 'Mozilla/5.0 (Windows NT 6.1; rv:57.0) Gecko/201001', '2017-12-19 12:44:00'),
(2255, 0, '64.233.173.25', 'Mozilla/5.0 (Linux; Android 7.0; BLL-L22 Build/HUA', '2017-12-19 14:38:58'),
(2256, 0, '64.233.173.26', 'Mozilla/5.0 (Linux; Android 7.0; BLL-L22 Build/HUA', '2017-12-19 14:39:06'),
(2257, 0, '182.48.95.110', 'Mozilla/5.0 (Mobile; Windows Phone 8.1; Android 4.', '2017-12-19 16:46:45'),
(2258, 0, '45.120.114.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-19 16:53:18'),
(2259, 0, '103.211.28.112', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) Ap', '2017-12-19 16:56:40'),
(2260, 0, '103.211.28.112', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) Ap', '2017-12-19 16:56:53'),
(2261, 0, '103.206.228.249', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-19 17:25:26'),
(2262, 0, '103.217.111.248', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-19 17:34:46'),
(2263, 0, '103.102.27.122', 'Mozilla/5.0 (Linux; Android 4.4.2; CHC-U01 Build/H', '2017-12-19 17:38:46'),
(2264, 0, '103.72.77.106', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', '2017-12-19 17:43:30'),
(2265, 0, '103.72.77.106', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', '2017-12-19 17:43:33'),
(2266, 0, '103.102.27.122', 'Mozilla/5.0 (Linux; Android 4.4.2; CHC-U01 Build/H', '2017-12-19 17:51:26'),
(2267, 0, '103.209.20.2', 'Mozilla/5.0 (Linux; Android 5.1; Helio S1 Build/LM', '2017-12-19 17:53:39'),
(2268, 0, '123.108.246.243', 'Mozilla/5.0 (Windows NT 6.1; rv:48.0) Gecko/201001', '2017-12-19 18:08:40'),
(2269, 0, '123.108.246.243', 'Mozilla/5.0 (Windows NT 6.1; rv:48.0) Gecko/201001', '2017-12-19 18:09:20'),
(2270, 0, '123.108.246.70', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:57.0) G', '2017-12-19 18:28:54'),
(2271, 0, '103.55.144.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-19 18:29:15'),
(2272, 0, '116.58.200.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-19 18:50:06'),
(2273, 0, '202.133.89.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-19 19:06:26'),
(2274, 582, '202.133.89.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-19 19:06:58'),
(2275, 0, '103.60.175.119', 'Mozilla/5.0 (Linux; Android 6.0.1; MI 5 Build/MXB4', '2017-12-20 02:38:10'),
(2276, 0, '119.30.32.127', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-G610F Build/', '2017-12-20 06:39:55'),
(2277, 0, '185.89.218.227', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_0_2 like Mac', '2017-12-20 06:59:09'),
(2278, 0, '103.4.146.62', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-20 08:14:14'),
(2279, 0, '45.127.245.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-20 08:32:13'),
(2280, 0, '165.225.106.76', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-20 08:32:31'),
(2281, 0, '64.233.173.25', 'Mozilla/5.0 (X11; Fedora; Linux x86_64) AppleWebKi', '2017-12-20 08:46:27'),
(2282, 0, '103.222.20.69', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-20 09:59:01'),
(2283, 0, '103.222.20.69', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-20 10:01:20'),
(2284, 0, '182.48.95.110', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', '2017-12-20 10:05:53'),
(2285, 0, '182.48.95.110', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', '2017-12-20 10:05:54'),
(2286, 0, '103.70.143.193', 'Mozilla/5.0 (Linux; Android 4.4.2; HTC_D626ph Buil', '2017-12-20 10:33:18'),
(2287, 0, '182.48.67.74', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-20 10:47:42'),
(2288, 0, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-12-20 10:49:46'),
(2289, 531, '182.48.90.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2017-12-20 10:49:55'),
(2290, 0, '203.83.162.18', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) Ap', '2017-12-20 13:58:11'),
(2291, 0, '203.76.222.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-20 17:08:51'),
(2292, 0, '203.112.72.181', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:57.0) G', '2017-12-20 19:41:27'),
(2293, 0, '203.112.72.181', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:57.0) G', '2017-12-20 19:41:37'),
(2294, 0, '202.86.220.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-20 19:58:55'),
(2295, 0, '202.86.220.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-20 19:59:12'),
(2296, 0, '202.181.18.130', 'Mozilla/5.0 (Windows NT 10.0; rv:57.0) Gecko/20100', '2017-12-21 05:36:26'),
(2297, 590, '45.64.136.158', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-12-21 06:21:32'),
(2298, 590, '45.64.136.158', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-12-21 06:24:56'),
(2299, 590, '45.64.136.158', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-12-21 06:26:18'),
(2300, 0, '124.6.238.130', 'Mozilla/5.0 (Linux; Android 5.0.2; SM-G530H Build/', '2017-12-21 06:29:17'),
(2301, 603, '119.30.38.76', 'Mozilla/5.0 (Linux; Android 7.0; SM-J730GM Build/N', '2017-12-21 07:27:03'),
(2302, 603, '119.30.38.76', 'Mozilla/5.0 (Linux; Android 7.0; SM-J730GM Build/N', '2017-12-21 07:28:34'),
(2303, 0, '103.60.175.66', 'Mozilla/5.0 (Linux; Android 7.0; BLL-L22 Build/HUA', '2017-12-21 09:23:43'),
(2304, 0, '103.60.175.66', 'Mozilla/5.0 (Linux; Android 7.0; BLL-L22 Build/HUA', '2017-12-21 09:23:51'),
(2305, 0, '220.158.204.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-21 13:48:50'),
(2306, 0, '203.112.72.179', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:57.0) ', '2017-12-21 14:01:41'),
(2307, 0, '203.112.72.179', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:57.0) ', '2017-12-21 14:01:46'),
(2308, 0, '103.76.45.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-21 14:10:45'),
(2309, 0, '103.76.45.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-21 14:15:22'),
(2310, 614, '103.76.45.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-21 14:18:34'),
(2311, 0, '45.118.62.252', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2017-12-21 15:41:25'),
(2312, 0, '116.58.201.52', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_2_1 like Mac', '2017-12-21 17:22:25'),
(2313, 0, '116.58.201.52', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_2_1 like Mac', '2017-12-21 17:23:04'),
(2314, 0, '45.125.222.42', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_2_1 like Mac', '2017-12-21 17:26:37'),
(2315, 0, '103.206.228.251', 'Mozilla/5.0 (Linux; Android 7.0; HUAWEI NXT-L29 Bu', '2017-12-21 17:43:50'),
(2316, 0, '103.94.135.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-21 18:19:33'),
(2317, 0, '103.43.150.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-21 18:20:39'),
(2318, 0, '175.29.166.145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-21 18:36:08'),
(2319, 0, '175.29.166.145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-21 18:36:10'),
(2320, 0, '175.29.166.145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-21 18:36:42'),
(2321, 0, '175.29.166.145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-21 18:36:45'),
(2322, 0, '144.48.109.102', 'Mozilla/5.0 (Linux; Android 7.0; SM-G615F Build/NR', '2017-12-21 19:05:00'),
(2323, 0, '103.85.241.42', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:57.0) ', '2017-12-21 20:51:11'),
(2324, 0, '107.167.108.239', 'Opera/9.80 (Android; Opera Mini/7.7.40394/79.13; U', '2017-12-22 01:18:43'),
(2325, 0, '103.230.107.47', 'Mozilla/5.0 (Linux; Android 6.0; Primo RM3 Build/M', '2017-12-22 13:59:12'),
(2326, 0, '64.233.173.25', 'Mozilla/5.0 (Linux; Android 4.4.4; SM-G360H Build/', '2017-12-22 16:19:34'),
(2327, 0, '103.84.255.192', 'Mozilla/5.0 (Linux; Android 7.0; SAMSUNG SM-G935F ', '2017-12-22 16:28:58'),
(2328, 617, '103.84.255.192', 'Mozilla/5.0 (Linux; Android 7.0; SAMSUNG SM-G935F ', '2017-12-22 16:39:15'),
(2329, 617, '103.84.255.192', 'Mozilla/5.0 (Linux; Android 7.0; SAMSUNG SM-G935F ', '2017-12-22 17:18:36'),
(2330, 617, '103.84.255.192', 'Mozilla/5.0 (Linux; Android 7.0; SAMSUNG SM-G935F ', '2017-12-22 17:19:56'),
(2331, 0, '103.84.255.192', 'Mozilla/5.0 (Linux; Android 7.0; SAMSUNG SM-G935F ', '2017-12-22 17:59:48'),
(2332, 617, '103.84.255.192', 'Mozilla/5.0 (Linux; Android 7.0; SAMSUNG SM-G935F ', '2017-12-22 17:59:54'),
(2333, 0, '103.60.175.12', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 3S Build/', '2017-12-22 19:43:37'),
(2334, 569, '110.76.129.90', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-22 22:59:04'),
(2335, 569, '110.76.129.90', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-22 23:01:10'),
(2336, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-23 05:00:28'),
(2337, 618, '202.125.75.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-23 05:45:02'),
(2338, 618, '202.125.75.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-23 06:32:53'),
(2339, 618, '202.125.75.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-23 06:33:19'),
(2340, 618, '202.125.75.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-23 06:38:03'),
(2341, 618, '202.125.75.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-23 06:38:34'),
(2342, 618, '202.125.75.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-23 06:44:42'),
(2343, 0, '103.230.107.39', 'Mozilla/5.0 (Linux; Android 6.0; HUAWEI NMO-L31 Bu', '2017-12-23 08:35:39'),
(2344, 0, '103.230.107.39', 'Mozilla/5.0 (Linux; Android 6.0; HUAWEI NMO-L31 Bu', '2017-12-23 08:35:56'),
(2345, 0, '180.149.30.62', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-23 09:14:36'),
(2346, 554, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-23 10:08:11'),
(2347, 554, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-23 10:08:36'),
(2348, 554, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-23 10:08:41'),
(2349, 554, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-23 10:08:49'),
(2350, 538, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-23 10:12:47'),
(2351, 554, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-23 10:24:03'),
(2352, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-23 10:27:53'),
(2353, 569, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-23 10:28:06'),
(2354, 554, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-23 10:28:30'),
(2355, 554, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-23 10:29:18'),
(2356, 0, '103.204.211.126', 'Mozilla/5.0 (Linux; Android 7.0; Redmi Note 4 Buil', '2017-12-23 13:53:06'),
(2357, 569, '110.76.129.90', 'Mozilla/5.0 (Linux; U; Android 6.0.1; en-us; Redmi', '2017-12-23 14:44:36'),
(2358, 0, '58.97.235.59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-23 14:55:30'),
(2359, 0, '58.97.235.59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-23 14:55:36'),
(2360, 0, '103.74.228.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2017-12-23 16:54:25'),
(2361, 0, '103.85.156.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-23 16:55:48'),
(2362, 0, '64.233.173.26', 'Mozilla/5.0 (Linux; Android 4.4.4; SM-G360H Build/', '2017-12-23 19:12:23'),
(2363, 603, '203.76.222.6', 'Mozilla/5.0 (Linux; Android 7.0; SM-J730GM Build/N', '2017-12-23 20:19:16'),
(2364, 619, '103.95.210.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-23 20:21:05'),
(2365, 603, '203.76.222.6', 'Mozilla/5.0 (Linux; Android 7.0; SM-J730GM Build/N', '2017-12-23 20:21:33'),
(2366, 619, '103.95.210.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-23 20:22:09'),
(2367, 619, '103.95.210.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-23 20:22:14'),
(2368, 619, '103.95.210.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-23 20:24:02'),
(2369, 619, '103.95.210.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-23 20:26:13'),
(2370, 619, '103.95.210.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-23 20:26:20'),
(2371, 619, '103.95.210.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-23 20:26:28'),
(2372, 619, '103.95.210.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-23 20:26:34'),
(2373, 619, '103.95.210.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-23 20:26:37'),
(2374, 619, '103.95.210.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-23 20:26:39'),
(2375, 619, '103.95.210.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-23 20:27:06'),
(2376, 619, '103.95.210.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-23 20:27:13'),
(2377, 619, '103.95.210.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-23 20:29:57'),
(2378, 619, '103.95.210.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-23 20:39:09'),
(2379, 619, '103.95.210.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-23 20:47:09'),
(2380, 619, '103.95.210.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-23 20:47:20'),
(2381, 619, '103.95.210.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-23 20:48:23'),
(2382, 619, '103.95.210.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-23 20:48:35'),
(2383, 619, '103.95.210.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-23 20:48:41'),
(2384, 0, '103.85.156.139', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-12-23 22:07:12'),
(2385, 0, '103.200.36.198', 'Mozilla/5.0 (Linux; Android 7.0; Redmi Note 4 Buil', '2017-12-23 23:16:24'),
(2386, 0, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-24 03:48:58'),
(2387, 571, '43.225.151.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2017-12-24 03:49:41'),
(2388, 0, '119.30.38.105', 'Mozilla/5.0 (Linux; Android 7.1.2; SYMPHONY Z10 Bu', '2017-12-24 05:53:20'),
(2389, 0, '103.103.32.2', 'Mozilla/5.0 (Linux; Android 6.0.1; MI 3C Build/MMB', '2017-12-24 06:03:39'),
(2390, 0, '103.103.32.2', 'Mozilla/5.0 (Linux; Android 6.0.1; MI 3C Build/MMB', '2017-12-24 06:03:57'),
(2391, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-26 10:54:05'),
(2392, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-27 05:48:29'),
(2393, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-27 05:48:32'),
(2394, 538, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-27 05:48:53'),
(2395, 538, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-27 06:13:08'),
(2396, 538, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-27 06:14:57'),
(2397, 538, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2017-12-27 06:15:02'),
(2398, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-02 09:06:24'),
(2399, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-02 09:06:27'),
(2400, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-02 09:06:52'),
(2401, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-02 09:09:09'),
(2402, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-02 09:09:52'),
(2403, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-02 09:13:00'),
(2404, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-02 09:14:08'),
(2405, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-02 09:14:57'),
(2406, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-02 09:14:59');
INSERT INTO `tbl_urecord` (`id`, `userId`, `ip`, `browser`, `time`) VALUES
(2407, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-02 09:16:14'),
(2408, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-02 09:19:12'),
(2409, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-02 09:20:38'),
(2410, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-02 09:55:03'),
(2411, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-02 10:04:31'),
(2412, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-02 10:16:30'),
(2413, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-02 10:59:19'),
(2414, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-03 03:24:43'),
(2415, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-03 03:24:47'),
(2416, 538, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-03 03:25:08'),
(2417, 538, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-03 03:45:39'),
(2418, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2018-01-03 06:10:24'),
(2419, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2018-01-03 06:24:44'),
(2420, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2018-01-03 06:25:28'),
(2421, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2018-01-03 08:09:04'),
(2422, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2018-01-03 08:17:03'),
(2423, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2018-01-03 08:17:07'),
(2424, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2018-01-03 08:17:08'),
(2425, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2018-01-03 08:17:09'),
(2426, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2018-01-03 08:17:10'),
(2427, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2018-01-03 08:19:10'),
(2428, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0)', '2018-01-03 10:10:39'),
(2429, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-04 04:22:55'),
(2430, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-04 04:56:50'),
(2431, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-04 04:56:58'),
(2432, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-04 04:56:59'),
(2433, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-04 05:11:26'),
(2434, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-04 05:12:18'),
(2435, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-04 06:37:55'),
(2436, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-04 06:38:10'),
(2437, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-04 07:32:44'),
(2438, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-04 08:00:23'),
(2439, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-04 08:08:00'),
(2440, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-04 08:16:44'),
(2441, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-06 08:35:16'),
(2442, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-07 03:42:25'),
(2443, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-07 04:30:49'),
(2444, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-07 04:31:21'),
(2445, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-08 08:32:42'),
(2446, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-08 08:33:20'),
(2447, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-08 08:34:11'),
(2448, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-08 08:34:15'),
(2449, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-08 08:34:17'),
(2450, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-08 08:34:21'),
(2451, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-08 08:34:25'),
(2452, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-08 08:34:34'),
(2453, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-08 08:34:35'),
(2454, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-08 08:34:36'),
(2455, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-08 08:34:42'),
(2456, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-08 08:35:05'),
(2457, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-08 08:35:12'),
(2458, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-08 08:35:16'),
(2459, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-08 08:35:21'),
(2460, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-08 08:35:27'),
(2461, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-08 08:35:31'),
(2462, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-08 08:52:00'),
(2463, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-09 09:05:44'),
(2464, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-09 09:05:57'),
(2465, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-11 08:34:07'),
(2466, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-11 08:34:09'),
(2467, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-11 08:35:01'),
(2468, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-11 08:36:06'),
(2469, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-11 08:39:33'),
(2470, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-11 08:39:35'),
(2471, 538, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-11 08:40:42'),
(2472, 538, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-11 08:45:44'),
(2473, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-13 06:25:32'),
(2474, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-15 05:57:23'),
(2475, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-15 05:59:23'),
(2476, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-15 06:01:21'),
(2477, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-15 06:02:28'),
(2478, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-15 06:02:32'),
(2479, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-18 05:27:03'),
(2480, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-18 05:34:55'),
(2481, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-18 05:36:43'),
(2482, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-18 05:36:48'),
(2483, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-18 05:36:51'),
(2484, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-18 05:36:54'),
(2485, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-18 05:36:57'),
(2486, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-18 05:37:00'),
(2487, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-18 05:37:03'),
(2488, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-18 05:37:11'),
(2489, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-18 05:37:48'),
(2490, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-18 05:59:43'),
(2491, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-18 06:07:54'),
(2492, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-18 06:27:52'),
(2493, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-18 06:28:12'),
(2494, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-18 06:28:15'),
(2495, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-18 06:29:21'),
(2496, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-18 06:54:27'),
(2497, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-18 06:56:28'),
(2498, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-18 07:58:38'),
(2499, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-18 08:00:29'),
(2500, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-18 08:00:35'),
(2501, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-18 08:00:57'),
(2502, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-18 08:03:34'),
(2503, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-20 04:06:19'),
(2504, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-20 04:58:07'),
(2505, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-20 08:09:06'),
(2506, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-29 05:37:36'),
(2507, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-29 05:37:38'),
(2508, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-29 05:38:02'),
(2509, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-29 05:46:48'),
(2510, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-29 05:46:50'),
(2511, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-29 05:47:13'),
(2512, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-29 05:49:55'),
(2513, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-29 05:50:47'),
(2514, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-29 06:30:53'),
(2515, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-29 06:31:27'),
(2516, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-29 06:31:43'),
(2517, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-29 07:24:04'),
(2518, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-29 07:26:34'),
(2519, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-29 07:26:50'),
(2520, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-29 07:27:07'),
(2521, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-29 07:27:36'),
(2522, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-29 07:28:21'),
(2523, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-29 07:50:10'),
(2524, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-29 07:50:13'),
(2525, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-29 07:50:14'),
(2526, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-29 07:50:14'),
(2527, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-29 07:50:15'),
(2528, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-29 07:54:52'),
(2529, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-30 05:49:44'),
(2530, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-30 05:50:13'),
(2531, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-30 10:17:38'),
(2532, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-30 10:23:39'),
(2533, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0)', '2018-01-30 10:24:29'),
(2534, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-01-31 03:04:51'),
(2535, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-01-31 05:15:36'),
(2536, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-01 06:18:51'),
(2537, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-01 06:50:44'),
(2538, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-01 06:50:58'),
(2539, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-01 06:51:02'),
(2540, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-01 06:52:57'),
(2541, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-01 06:54:31'),
(2542, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-01 06:55:11'),
(2543, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-01 06:57:59'),
(2544, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-01 06:58:43'),
(2545, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-01 06:59:13'),
(2546, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-01 07:13:30'),
(2547, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-01 07:13:32'),
(2548, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-01 07:18:12'),
(2549, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-03 03:51:50'),
(2550, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-03 03:51:52'),
(2551, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-03 03:52:18'),
(2552, 569, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-03 05:15:43'),
(2553, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-03 06:34:06'),
(2554, 569, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-03 06:35:45'),
(2555, 569, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-03 09:30:21'),
(2556, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-04 06:41:28'),
(2557, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-04 06:41:30'),
(2558, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-04 06:43:21'),
(2559, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-04 07:28:31'),
(2560, 569, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-04 08:25:52'),
(2561, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-04 09:16:09'),
(2562, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-04 09:16:38'),
(2563, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-04 09:19:07'),
(2564, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-05 04:23:21'),
(2565, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-06 04:06:04'),
(2566, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-06 04:29:12'),
(2567, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-06 06:39:55'),
(2568, 569, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-06 06:42:19'),
(2569, 569, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-06 07:16:32'),
(2570, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-07 03:45:52'),
(2571, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-07 03:51:08'),
(2572, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-07 03:51:23'),
(2573, 538, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-07 03:51:59'),
(2574, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-07 06:00:56'),
(2575, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-07 06:01:19'),
(2576, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-10 03:51:50'),
(2577, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-10 06:14:46'),
(2578, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-11 05:13:12'),
(2579, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-11 05:17:30'),
(2580, 571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0)', '2018-02-11 05:31:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_job`
--

CREATE TABLE `tbl_user_job` (
  `jsId` int(11) NOT NULL,
  `jId` int(11) NOT NULL,
  `dId` int(11) NOT NULL,
  `batch` varchar(11) NOT NULL,
  `levelId` int(255) NOT NULL,
  `ldApplication` date NOT NULL,
  `degId` int(11) NOT NULL,
  `mimcomp` varchar(255) NOT NULL,
  `mxmcomp` varchar(255) NOT NULL,
  `expDate` date NOT NULL,
  `prerequisite` text NOT NULL,
  `joblocation` varchar(255) NOT NULL,
  `apply` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_job`
--

INSERT INTO `tbl_user_job` (`jsId`, `jId`, `dId`, `batch`, `levelId`, `ldApplication`, `degId`, `mimcomp`, `mxmcomp`, `expDate`, `prerequisite`, `joblocation`, `apply`) VALUES
(14, 8, 1, '0', 1, '2017-11-30', 4, '10,000tk', '12,000tk', '2017-12-01', 'Graduation in EEE, IPE and Mechanical Engineering', '', ''),
(15, 15, 1, '0', 1, '2017-11-30', 18, '2,000 Tk', '4,500 Tk', '2017-12-01', 'Bachelor Degree in EEE, IPE ETE or ME', '', ''),
(16, 15, 1, '0', 1, '2017-12-24', 18, '2,000 Tk', '4,500 Tk', '2018-01-01', 'Proof of BSc. Exam Completion .\r\nRecommendation from Faculty\r\nID Documents\r\nSatisfactory Interview', '', ''),
(17, 1, 2, '0', 1, '2017-12-30', 5, '4000', '4500', '2018-01-01', 'Proof of Completion of BSc Degree\r\nID Documents\r\nRecommendation from Faculty\r\nSuccessful Interview', '', ''),
(18, 1, 2, '0', 1, '2017-12-30', 5, '4000', '4500', '2018-01-01', 'Proof of Completion of BSc Degree\r\nID Documents\r\nRecommendation from Faculty\r\nSuccessful Interview', '', ''),
(19, 1, 2, '0', 1, '2017-12-30', 5, '4000', '4500', '2018-01-01', 'Proof of Completion of BSc Degree\r\nID Documents\r\nRecommendation from Faculty\r\nSuccessful Interview', '', ''),
(20, 1, 2, '0', 1, '2017-12-30', 5, '4000', '4500', '2018-01-01', 'Proof of Completion of BSc Degree\r\nID Documents\r\nRecommendation from Faculty\r\nSuccessful Interview', '', ''),
(21, 1, 2, '0', 1, '2017-12-30', 5, '4000', '4500', '2018-01-01', 'Proof of Completion of BSc Degree\r\nID Documents\r\nRecommendation from Faculty\r\nSuccessful Interview', '', ''),
(22, 1, 2, '1', 1, '2017-12-30', 5, '2000', '4000', '2017-12-30', 'Bsc in CSE', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_reg`
--

CREATE TABLE `tbl_user_reg` (
  `regId` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `spId` int(11) NOT NULL,
  `statuss` int(11) NOT NULL DEFAULT '0',
  `applyresult` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(255) NOT NULL DEFAULT '0',
  `IP` varchar(255) NOT NULL,
  `listing` int(11) NOT NULL DEFAULT '0',
  `applied_status` int(11) NOT NULL DEFAULT '0',
  `resume_status` int(11) NOT NULL DEFAULT '0',
  `selected_status` int(11) NOT NULL DEFAULT '0',
  `step` int(11) NOT NULL DEFAULT '0',
  `userstat` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_reg`
--

INSERT INTO `tbl_user_reg` (`regId`, `userName`, `email`, `phone`, `dob`, `spId`, `statuss`, `applyresult`, `date`, `image`, `IP`, `listing`, `applied_status`, `resume_status`, `selected_status`, `step`, `userstat`) VALUES
(1, 'parveezmaruf', 'arnab.r@keal.com.bd', '1671416010', '0000-00-00', 0, 1, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(2, 'Md. Alhelal Rabbi', 'alhelalrabbi@gmail.com', '1719354404', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(3, 'wakilahmed12', 'wakilahmed12@gmail.com', '1714647475', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(4, 'Labiba Zaman', 'zamanlabiba@gmail.com', '1552453099', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(5, 'bayazidkhan', 'bayazid.khan@hotmail.com', '1719000906', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(6, 'Asif Iqbal Rony', 'rony_mkt@hotmail.com', '1734720273', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(7, 'shajjadul_i', 'shajjadul_i@yahoo.com', '1926789870', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(8, 'Md.Farhad Farvez', 'farhadfarvez@gmail.com', '1919001178', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(9, 'swarnalisaha', 'sharnalishaha@yahoo.com', '1718070008', '0000-00-00', 0, 1, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(10, 'mahbubahme', 'mahbubahmed2012@gmail.com', '1879427207', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(11, 'Moazzem Hossain', 'm.ratan52@gmail.com', '1718892439', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(12, 'Roba Ummy Jamila', 'jamilaroba@yahoo.com', '1928004223', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(13, 'Omkesh Kumer Ghosh', 'omkesh_kg@yahoo.com', '1813700001', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(14, 'Mahmuda Huq', 'tithi.ewu12@gmail.com', '1740813865', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(15, 'D.M. Jainul Abedin', 'dewancd@gmail.com', '1843505051', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(16, 'sakib123', 'nsakib022@gmail.com', '1715022601', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(17, 'Rifat88', 'rsangida@unm.edu', '1812849191', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(18, 'salah uddin', 'suddin.eee111@gmail.com', '1911736039', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(19, 'Md. Asif Ahamed', 'asif_jnu@hotmail.com', '1671501888', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(20, 'salamuiu', 'salamuiu.bd@gmail.com', '1737473240', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(21, 'Md.Mehedi Hasan', 'mehedihasan.jpi1@gmail.com', '1964572162', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(22, 'Engr. Sharif', 'sharif.bd250@gmail.com', '1912995434', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(23, 'pshowrov', 'showrov.paul@gmail.com', '1716278306', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(24, 'MD. ARAFAT ABDULLAH', 'arafat1803@gmail.com', '1819922664', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(25, 'Saifullah Sakib', 'sakibtahsin@gmail.com', '1558951029', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(26, 'Al Amin', 'alaminmunna48@gmail.com', '171976915', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(27, 'arjan', 'arjanmisdu@gmail.com', '1631909460', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(28, 'Mumasud', 'masud01011996@gmail.com', '1933452466', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(29, 'Nasrin Akhter Ripa', 'nasrinripa1113@gmail.com', '1780961588', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(30, 'mahmudulmoonp', 'mahmudulmoonp@gmail.com', '1710737851', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(31, 'Monir', 'monirul.i.2071@gmail.com', '1736433737', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(32, 'Mz.Monir', 'mmonir.ewu@gmail.com', '1675542708', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(33, 'MD.MONIRUL ISLAM', 'moniaust11@gmail.com', '1927321679', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(34, 'Tareq007', 'mahmudt007@gmail.com', '1829681060', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(35, 'mitul0935', 'pppmaruf0935@gmail.com', '1682765045', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(36, 'MD TANVIR FAYSHAL', 'fayshal999@outlook.com', '1943678567', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(37, 'Md.Neamun Nasir', 'neamunnasir@yahoo.com', '1717328138', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(38, 'salamun92', 'salamun.du@gmail.com', '1726464597', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(39, 'riadul617', 'riadul617@gmail.com', '1676031581', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(40, 'Jahidul Islam', 'jahiduljahid00@gmail.com', '1709326512', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(41, 'taifur18', 'taifur1989@gmail.com', '1824420725', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(42, 'noman8408', 'noman8408@gmail.com', '1717814607', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(43, 'Md. Iqram Hossain', 'iqramraju@gmail.com', '1765966063', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(44, 'Misbaul', 'mizbaulislam@yahoo.com', '1819364535', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(45, 'Md. Monowarul Azim', 'monowar.mkt@gmail.com', '1923655951', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(46, 'jahangrir5265', 'jahangirmpi@hotmail.com', '1738783752', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(47, 'Shafiqul Islam', 'sopno.shafiq@gmail.com', '1686618952', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(48, 'ashraful', 'ashrafulhuda26@gmail.com', '1878737548', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(49, 'Md. Salahuddin Al Sumon', 's.sumon_49@yahoo.com', '1712949568', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(50, 'Md. Rashadul Islam', 'rislam139@gmail.com', '1832832973', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(51, 'Rejoyana kamal', 'rejoyana011@gmail.com', '1711082580', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(52, 'Nazmul islam', 'islamnazmul856@gmail.com', '1816008496', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(53, 'PABITRA', 'pabitra.sen.bd@gmail.com', '1711120869', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(54, 'bikaschandradas', 'bikas289@gmail.com', '1735278658', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(55, 'Sojun', 'nazmul.sojun@yahoo.com', '1912754679', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(56, 'Farhana Afrin', 'samantaafrin1667@gmail.com', '1716477472', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(57, 'Abirzzz', 'abir.khan74@gmail.com', '1755114609', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(58, 'Shah Mohammad Saleh', 'shh_saleh@yahoo.com', '1817504167', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(59, 'Mithun Roy', 'mr.roy17@gmail.com', '1617269202', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(60, 'Ansary', 'abuayubeansary85@gmail.com', '1830579990', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(61, 'Sadia Jaman', 'hafeza_ewu@hotmail.com', '1820100983', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(62, 'Md. Azim', 'azimsikder94@gmail.com', '1761940202', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(63, 'humayun045', 'humayun_kabir03@yahoo.com', '1740133643', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(64, 'Md Obydullah', 'jakuan2000@gmail.com', '1717742114', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(65, 'Syen Nagib Mahafuj', 'xoy.nagib@gmail.com', '1711056500', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(66, 'aminur', 'aminur98rahman@yahoo.com', '1914854663', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(67, 'saif.imraan', 'saif.imraan@outlook.com', '1721778578', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(68, 'shaon15086', 'shawon1344@gmail.com', '1703005035', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(69, 'Runju Ahmed', 'engr.runju@gmail.com', '1719363181', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(70, 'Minar330', 'hminar95@gmail.com', '1516105662', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(71, 'zaman0280', 'mf.zaman88@gmail.com', '1550023530', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(72, 'Sharmin Shekha', 'shekha_rose@yahoo.com', '1722059722', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(73, 'Md. Nazmul Hossain', 'hasannazmul434@gmail.com', '1729475405', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(74, 'Walidur Rahaman', 'walidur.rahaman498@gmail.com', '1750010498', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(75, 'Md Nurul Amin', 'nurulamin8030@gmail.com', '1833808030', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(76, 'Nizam Uddin', 'nijambpi@gmail.com', '1728188846', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(77, 'rashadislam59', 'rashadislam59@yahoo.com', '1832832973', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(78, 'Sarawat Mahgabin Shetu', 'shetu92ewu@gmail.com', '1710300787', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(79, 'Ashif Ahmed', 'ashifahmed0721@gmail.com', '1761743660', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(80, 'M.A.KHALEK REZA', 'khalek.reza@gmail.com', '1746942140', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(81, 'Md. Ahosan Habib', 'ahosanhabib.pe@gmail.com', '1767740295', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(82, 'Md.Kawser Sheikh', 'kawserr61@gmail.com', '1813581258', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(83, 'happy', 'happe28@gmail.com', '1727848252', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(84, 'ashikkhan', 'ashikkhan.jnu7@gmail.com', '1723720223', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(85, 'Salma Binte Taher', 'salmabtaher@gmail.com', '1521253957', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(86, 'asif.wahid.himel', 'himelnpi@gmail.com', '1629128298', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(87, 'mirajuddin', 'mirajuddin916@gmail.com', '1937691916', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(88, 'asraf', 'tamimasraf@gmail.com', '1913441636', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(89, 'faruque99', 'omarbdfk@gmail.com', '1732535205', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(90, 'syedmdiner', 'syedmdiner@gmail.com', '1926662359', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(91, 'tanika', 'mimislamtanika@gmail.com', '1882171141', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(92, 'Md. Shafiul Azam', 'shafiulazam88@yahoo.com', '1717290283', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(93, 'zamanbup', 'zamanbup@gmail.com', '1827577719', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(94, 'Md. Sazzad Hossain', 'sazzad.cu20@gmail.com', '1918119788', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(95, 'saddam019', 'saddam.bstu.cse@gmail.com', '1937502003', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(96, 'snigdha', 'snigdha2323@gmail.com', '1925150034', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(97, 'Sabiha Newaz', 'sabihaninta@gmail.com', '1770515433', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(98, 'Rashedojjaman', 'rashedojjaman@gmail.com', '1515671534', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(99, 'Sayeedurrs', 'sayeedurrs@yahoo.com', '1673926605', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(100, 'Dil Afroz', 'luckyafroz100@gmail.com', '1712220998', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(101, 'alimdak1987@gmail.com', 'alimdak1987@gmail.com', '1751418688', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(102, 'Md. Jahirul Islam', 'md.jahiruleee12@gmail.com', '1714669013', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(103, 'subas665', 'subash_bspi46@live.com', '1829465539', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(104, 'Md.Mehedi Hasan', 'mehedihasantas@gmail.com', '1710669088', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(105, 'Mahathe', 'mahathe1995@gmail.com', '1790476020', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(106, 'alauddin', 'engineerala98@gmail.com', '1794569747', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(107, 'Shafikul Islam', 'shafikul1992@gmail.com', '1676211896', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(108, 'naresh47', 'roynareshsu.me47@gmail.com', '1854020947', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(109, 'Delwar Hossain', 'delwar6656@gmail.com', '1620955889', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(110, 'Md Anamul Haque', 'anamulhaque@engineer.com', '1723211466', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(111, 'Md. Ratul Islam', 'ratul.islambsl21@gmail.com', '1710225471', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(112, 'Md. Rafi Al Amin', 'r7a_4@yahoo.com', '1531261421', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(113, 'monirul362', 'monirulislam362@gmail.com', '1723021362', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(114, 'MD.Ashikur Rahman', 'arrahmanrinku@gmail.com', '1670760668', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(115, 'utsobkhondaker', 'utsob.kh@gmail.com', '1676173230', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(116, 'haque', 'haque5024@gmail.com', '88017448650', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(117, 'Saon khan', 'saonkhan51@yahoo.com', '1749381326', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(118, 'Mohammad Mojibur Rahman Chowdhury', 'mmrc.10307027@gmail.com', '1620330299', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(119, 'shopno', 'a4shopno@gmail.com', '167223870', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(120, 'sajibstone', 'sajibstone@gmail.com', '1723355181', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(121, 'ABU TAWAB', 'onlytawab@gmail.com', '1677205851', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(122, 'Saiyada Naimun Nahar', 'snnnaimun@yahoo.com', '1766449971', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(123, 'Ahasan Ullah Hasan', 'ahasanullahmitu@gmail.com', '1714487853', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(124, 'muniaakondh', 'muniaakondh@gmail.com', '1754628136', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(125, 'Dilruba Akhter', 'munia_1983@yahoo.com', '1823660976', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(126, 'shamsursajal', 'shamsursajal@yahoo.com', '1916683400', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(127, 'mdshakilparvez', 'shakilpervez5355@gmail.com', '1750108812', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(128, 'MD. ABU NAIM SHORKAR', 'md.abunaimshorkar@gmail.com', '1619781758', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(129, 'hasanemam', 'hasanemam1993@gmail.com', '1614771066', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(130, 'Mijanur Rahman', 'mijanurrahman874@yahoo.com', '1683230280', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(131, 'Md Bulbul Islam', 'md4bulbul@gmail.com', '1974707377', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(132, 'Rasel Ahmed', 'eng.rasel017@gmail.com', '1741714607', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(133, 'khannazin', 'naziniftekhar@gmail.com', '1675406467', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(134, 'Rasel Ahmed', 'dip.eng.rasel@gmail.com', '1741714607', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(135, 'Md.Razu Ahmed', 'arazu733@gmail.com', '1710564209', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(136, 'Mirazul Islam Moon', 'mirazulislammoon07@gmail.com', '1818775617', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(137, 'Md Omar Faruk', 'fmajumder51@gmail.com', '1991958984', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(138, 'ziaur70', 'zia7020@yahoo.com', '1715374618', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(139, 'MD SHAMIM ISLAM', 'shamimislam2197@gmail.com', '1680542197', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(140, 'nashiafariha', 'nashiafariha_2010@yahoo.com', '1934567777', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(141, 'Md.Hazrot ali', 'hazrat189@yahoo.com', '1632150240', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(142, 'Rasel Ahmed', 'rasel2023@diu.edu.bd', '1521560519', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(143, 'MD.Sayed Hasan', 'sayed2047@diu.edu.bd', '1926566265', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(144, 'Md. Sadrul Alam', 'shawon361@gmail.com', '1715361321', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(145, 'Imtiaz ahmed', 'imtiaztazin123@gmail.com', '1674986464', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(146, 'usufnawaj', 'usufnawaj@gmail.com', '1711086456', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(147, 'hasib1971', 'mohammadhasib1971@Gmail.com', '1714874621', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(148, 'Sankar Dey', 'sankar11013@gmail.com', '1818842446', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(149, 'M@munjnu', 'saiful.sebpo@gmail.com', '1712305093', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(150, 'RomanaSanjida', 'sanjidaromana19@gmail.com', '1776426033', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(151, 'Jubayer', 'jubayerhossain.bd89@gmail.com', '1774609801', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(152, 'Azdana Sakee', 'azdana16th@gmail.com', '1675186248', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(153, 'bassarru', 'bassarru@gmail.com', '1884469796', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(154, 'shamskhan', 'mgskhan@gmail.com', '1749472781', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(155, 'MD MOSTOFA KAMAL', 'likhon.bogra@gmail.com', '1728463864', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(156, 'Mizanur Rahman', 'kmizan170@gmail.com', '1559429241', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(157, 'Nilufar Yasmin', 'nilnilufar90@gmail.com', '1686478883', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(158, 'toriqul417', 'toriqulislam421@gmail.com', '1674749930', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(159, 'Atik821834', 'atik821834@gmail.com', '1766302491', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(160, 'maruf0935', 'maruf0935@gmail.com', '1916094913', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(161, 'Md.Wbayedur Rahman', 'wbayedur2015@gmail.com', '1722057687', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(162, 'Syad Amirul Haque', 'syad_amir@yahoo.com', '1716296144', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(163, 'miduliiuc', 'midul10@gmail.com', '1728685689', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(164, 'Md. Moniruzzaman', 'e.masummunir@gmail.com', '1757429469', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(165, 'ajmerina', 'pinky.knd@gmail.com', '1770633699', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(166, 'BAHALUL82', 'mbahaluldhk@gmail.com', '1797278694', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(167, 'tareqsajjad', 'tareqsajjad@gmail.com', '1916672444', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(168, 'skrajy', 'skrajy@gmail.com', '1722261696', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(169, 'Md.Sabuj Hossain', 'msh.jsr@gmail.com', '1943758575', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(170, 'Shahidbd73', 'Shahidbd73@gmail.com', '1816182123', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(171, 'Tareq Hossain', 'munna.tareq@yahoo.com', '1830111718', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(172, 'rana.masudalom', 'rana.masudalom@gmail.com', '1715670108', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(173, 'Alamin', 'alamin150149@gmail.com', '1823589860', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(174, 'srabonahmed011', 'sonyahmed011@gmail.com', '1738319139', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(175, 'Md: Raihan Kabir', 'raihankabir@qmail.com.bd', '1684424973', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(176, 'ahasanul rafi', 'rafi.ahasanul@yahoo.com', '1714256517', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(177, 'renesa', 'renesa.tamannum076@gmail.com', '1913373696', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(178, 'monira_sultana1', 'kazimonirasultana@gmail.com', '1617624462', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(179, 'Md.Abu Saleh Faraizi', 'abusalehfaraizi481@gmail.com', '1924256481', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(180, 'Foysal09', 'foah1009@gmail.com', '1962401457', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(181, 'Asad6617', 'smrasel157@gmail.com', '1673741729', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(182, 'Syed.Niloy', 'syed.feh.niloy@gmail.com', '1727328505', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(183, 'Chitto Ronjon', 'chittoronjon15@gmail.com', '1744748282', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(184, 'Kazi Habibur Rahman', 'shantamoni666@gmail.com', '1680386668', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(185, 'Masud Rana', 'masudranapbt@gmail.com', '1767575329', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(186, 'MD:RAKIBUL ISLAM', 'ri2453549@gmail.com', '1795642072', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(187, 'Shaik Shadik', 'shaikshadik03@gmail.com', '1688652257', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(188, 'rukhsana akhter', 'sima_ms_cu09@yahoo.com', '1711220960', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(189, 'Rayhan Arif', 'rayhanuddin.du@gmail.com', '1738148187', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(190, 'Farhad jamal', 'farhadjamal60@gmail.com', '1723666638', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(191, 'wasim', 'Wasim_01914@yahoo.com', '1718163337', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(192, 'towhidul', 'tohidul.ru07@gmail.com', '1718996843', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(193, 'mahi937', 'albasir937@gmail.com', '1916079524', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(194, 'kaniz fatima', 'kanizbangladesh01@gmail.com', '1681874387', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(195, 'Prince', 'prince.khan.bd@gmail.com', '1515697759', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(196, 'Md.Morad Hossain', 'soulstar093@gmail.com', '1812136563', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(197, 'Ishtiaque', 'ishtiaque.ahemed@gmail.com', '1624559777', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(198, 'Md Humayun kabir', 'humayun1723@gmail.com', '1792395980', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(199, 'aminul mon', 'aminulmon44@gmail.com', '1701742616', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(200, 'Md.Sojibul Islam', 'sojibuiu2007@gmail.com', '1916389313', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(201, 'titon saha', 'titonsaha375@gmail.com', '1671347056', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(202, 'Arafat89', 'arafathossan14@gmail.com', '1710660594', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(203, 'mistisokal', 'jubayer.south@gmail.com', '1762518080', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(204, 'noman158', 'nomanjobs158@gmail.com', '1913907522', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(205, 'Nazmul Amin', 'eamnazmul@gmail.com', '1717152703', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(206, 'dusaiful', 'saifulmis009@gmail.com', '1738241104', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(207, 'Sadia Afridin', 'sadia.afridin@gmail.com', '1762766263', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(208, 'Mahfuz Al Ferdaus', 'mahfuz.ferdaus@gmail.com', '1913769449', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(209, 'Kazi Monjurul Alam', 'monjurul4019@econdu.ac.bd', '1753333949', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(210, 'Md. Shaiful Islam', 'shaifulislam1703@gmail.com', '1911907884', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(211, 'BELAYET', 'belayethossain4@gmail.com', '1912527955', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(212, 'abulkhair', 'abulkhairbd27@gmail.com', '1780808590', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(213, 'Omar Faruqe', 'omar.faruqe25@gmail.com', '1710454519', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(214, 'MAHFUZ', 'magfuz099@gmail.com', '1710293516', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(215, 'ethics', 'ismailhossain139@gmail.com', '1921530073', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(216, 'Subrata', 'subrata01927@gmail.com', '1927982756', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(217, 'mannajstu', 'waleur.jessore@gmail.com', '1742293004', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(218, 'Fateha Jahan', 'fateha.jahan14@gmail.com', '1816894384', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(219, 'Khan Tanvir Hossain', 'tkhan4994@gmail.com', '1951434214', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(220, 'Md. Shirazul Islam', 'shirazul99@gmail.com', '1722972231', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(221, 'imraz', 'mdimrazsultan@gmail.com', '1681034173', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(222, 'Md.Bappy', 'bappy585019@gmail.com', '1738278338', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(223, 'A.H.M. Mashiur Rahman', 'mdmoshiur64@gmail.com', '1723255102', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(224, 'Al Mehedi Hasan', 'mehedi7715drmc@gmail.com', '1558381319', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(225, 'Fahmid Azad Badhon', 'fahmid1azad@gmail.com', '1684936118', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(226, 'Shakil Sultan Sunmoon', 'sshakilsultan74@gmail.com', '1918275144', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(227, 'Asraf Bin Shalim', 'shajal.sbpc@gmail.com', '1515215328', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(228, 'Rubel Talukder', 'rubel.jkkniu@gmail.com', '1748892601', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(229, 'Saud002', 'saud.al.abedin@gmail.com', '1681735690', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(230, 'moontasirul', 'moontasirul01@gmail.com', '1717523911', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(231, 'sabbir2532', 'sabbir2532@gmail.com', '1680059819', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(232, 'Thauhida Hussain', 'zue.rahana@yahoo.com', '1819083405', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(233, 'Ismail', 'shovo731@gmail.com', '1921530073', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(234, 'anwar mithu', 'anwarmithu05@gmail.com', '1622493146', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(235, 'shahriar92', 'shahriarseu@gmail.com', '1778142479', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(236, 'rajib banik chowdhury', 'rbanik100@gmail.com', '1915184560', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(237, 'Tama', 'tamasaha.jnu@gmail.com', '1672119603', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(238, 'Chitto Ronjon', 'chittoronjon16@gmail.com', '1744748282', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(239, 'Md.Saifuzzaman', 'turan.du14@gmail.com', '1716320534', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(240, 'NAYEEMA ZAHAN', 'nayeemazahan@yahoo.com', '1552389511', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(241, 'Md. Mehedi Hasan', 'mehedi4n@gmail.com', '1716498655', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(242, 'nurhossain', 'nurhossain276@yahoo.com', '1913588742', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(243, 'Mr. Roy', 'roysagor539@gmail.com', '1741614068', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(244, 'arif', 'islamarif083@gmail.com', '1721421658', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(245, 'amhos_trikal', 'amdad.sojib@gmail.com', '1928782931', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(246, 'suzonbd', 'suzon.seo@gmail.com', '1726389137', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(247, 'Mahabub Alom Monir', 'mahabubalommonir111@gmail.com', '1738187144', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(248, 'Billal Hossain', 'billalhossain.june@gmail.com', '1683289497', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(249, 'salahuddin', 'saka.uiu2011@gmail.com', '1670229864', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(250, 'Md. Atikur Rahman', 'rahmanatik26@gmail.com', '1673520232', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(251, 'Asad Faruk', 'faruk.asad123@gmail.com', '1722779975', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(252, 'Motaher Hossain', 'mijbatalukder@gmail.com', '1740494244', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(253, 'jeba0935', 'samiha0935@gmail.com', '1675942350', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(254, 'towsif7', 'towsif.newaz@yahoo.com', '1672092088', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(255, 'Neha Agarwal', 'neha.ag1410@gmail.com', '1674009272', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(256, 'Nazmoon Naher', 'nazmoon_786@yahoo.com', '1915177193', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(257, 'Shamim Ahmed Jwel', 'shamimahmed8421@gmail.com', '1912833295', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(258, 'Rita', 'rita1989islam@gmail.com', '1911657952', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(259, 'Abdul Kader', 'abdulkaderjnu@gmail.com', '1675554669', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(260, 'Azrin Mim', 'azrinmim@gmail.com', '1989730903', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(261, 'kowsar.jony', 'kowsar.jony11035@gmail.com', '1851664635', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(262, 'Reaz Hossain', 'reazhossain71@gmail.com', '1732334400', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(263, 'Mohammad Ali Khan', 'xvirus.bd@gmail.com', '1763602525', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(264, 'shorna', 'shornaamin91@gmail.com', '1670739361', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(265, 'zaki', 'zakiadnan123456789@gmail.com', '1557320004', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(266, 'Sayeef Asrar', 'sayeef_asrar@yahoo.com', '1670911000', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(267, 'mkhrokib', 'rokibs92@gmail.com', '1741638180', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(268, 'sumi_cse', 'sumicse758@gmail.com', '1626401454', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(269, 'Tanim0701', 'Tanim0701@gmail.com', '1616171888', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(270, 'Reaz Hossain', 'reazhossain75@yahoo.com', '1732334400', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(271, 'Reaz Hossain', 'reaz.h@keal.com.bd', '1844046621', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(272, 'Md.Abu Jahid', 'abirjahidsu@gmail.com', '1783279096', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(273, 'al.mahmud', 'abdullahalmahmud28@gmail.com', '1937363677', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(274, 'rajibraju', 'rajibraju02@gmail.com', '1765880128', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(275, 'Tufayal Hossin', 'tufayalhossin95@gmail.com', '1931552620', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(276, 'A. N. M. Nahid Hasan', 'nahidhasangb@gmail.com', '1744905993', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(277, 'sss', 'www.sss3sp@gmail.com', '1683353583', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(278, 'Md.Hafizur Rahman', 'hafizur755755@gmail.com', '1912460483', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(279, 'Nourin Antora', 'antora389@gmail.com', '1770804998', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(280, 'plceng', 'sohelrana7684@gmail.com', '1746647684', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(281, 'Nufaysa Ahmed', 'nufaysaahmed@gmail.com', '1912370958', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(282, 'onik', 'aunny.kamal@gmail.com', '1675586902', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(283, 'jobaer', 'jobaer.fenibd@gmail.com', '1815177345', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(284, 'engr.sharif.bd', 'esharifengr.bd@gmail.com', '1912995434', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(285, 'Md. Farhad Uddin', 'farhaduddin123@gmail.com', '1913588101', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(286, 'Md Amit Hasan Tonmoy', 'tonmoy897@gmail.com', '1725278853', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(287, 'badhan_me', 'sudipto.ruet@gmail.com', '1921378547', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(288, 'adnanshahriar', 'adnan.shahriar@northsouth.edu', '1750740906', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(289, 'Md.Sanaullah', 'sun.cse93@gmail.com', '1673962095', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(290, 'afnansadid', 'afnansadid@outlook.com', '1740333234', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(291, 'manjurahammed', 'manjur.cse09@gmail.com', '1736438372', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(292, 'mahadiosb', 'mahadiosb@gmail.com', '1682624958', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(293, 'faisalmaksud', 'faisal.maksud@gmail.com', '1686935215', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(294, 'adnanshahriar', 'ssadnan1005@gmail.com', '1750740906', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(295, 'Sanjida Zaman', 'sanjidamridu101@gmail.com', '1750523928', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(296, 'Md Rukunuzzaman', 'mdrukunuzzamanrukan@gmail.com', '1965088938', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(297, 'tasnimshamma', 'tasnimshamma07@gmail.com', '1717965523', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(298, 'jamal', 'rubeljamal@gmail.com', '1682795544', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(299, 'ahamod3.1416', 'ahamod3.1416@gmail.com', '1671117217', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(300, 'ronyahmed007', 'roniahmedmba007@gmail.com', '1793660371', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(301, 'Samiur Rahman Khan', 'Sami_7khan@yahoo.com', '1686094667', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(302, 'Zubair', 'zubair.rahman@live.com', '1680521292', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(303, 'salowarafsan', 'salowasamin28@gmail.com', '1521202971', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(304, 'shovonaziz', 'shovonaziz@gmail.com', '1918114129', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(305, 'Pranoy Chakraborty', 'pranoy200@gmail.com', '1846392900', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(306, 'Tazin', 'bmtazin@gmail.com', '1681830308', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(307, 'Mithun Das', 'mithund654@gmail.com', '1685132481', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(308, 'Md. Shuvo Islam', 'shuvoislamcmt3@gmail.com', '1791805394', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(309, 'Saif Saleh', 'saifsaleh24@gmail.com', '1674756715', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(310, 'aziz', 'aziz.cse.cu@gmail.com', '1682587828', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(311, 'Tanvir Ahmed Anik', 'aniknahmed@gmail.com', '1683648283', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(312, 'Sawrav Das', 'sawravdas@gmail.com', '1521108097', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(313, 'Lamia Kibria', 'lamiakibria@gmail.com', '1675963709', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(314, 'ragib_hasan', 'ragibhasan894@gmail.com', '1677701647', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(315, 'sadia.ria4@gmail.com', 'sadia.ria4@gmail.com', '1688211524', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(316, 'naushaba_zerin', 'naushaba@live.com', '1688635504', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(317, 'Mansur Mahamud', 'mmjuwel@gmail.com', '1823460523', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(318, 'asif_2192', 'asif_2192@yahoo.com', '1913620111', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(319, 'srtonni', 'tonnicsediu@gmail.com', '1787173489', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(320, 'shaon.bsmrstu@gmail.com', 'shaon.bsmrstu@gmail.com', '1914850817', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(321, 'Amena Siddika', 'newmoon875@gmail.com', '1534604891', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(322, 'Shuvangkar Dhar', 'shuvangkar.eee@gmail.com', '1878076756', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(323, 'ayesha', 'rongtuli453@gmail.com', '1947211131', '0000-00-00', 0, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(329, 'Md. Sadrul Alam', 'dinarbracversity@yahoo.com', '01719-131060', '1986-03-10', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(330, 'Zarin Taslima Chowdhury', 'zarintaslima6@gmail.com', '01684380193', '1992-09-30', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(331, 'Shah Md.Kawsar Koraishy Chowdhury', 'md.kawsarc@yahoo.com', '01723084266', '1987-10-04', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(332, 'Mohammad Amran Kabir', 'amran024@gmail.com', '01918-989551', '1989-10-12', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(333, 'Abdul Mukit', 'mukitsajib88@gmail.com', '01675207879', '1988-12-05', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(334, 'Md. Mahbubur Rahman', 'mahbubkcu@gmail.com', '01920-426925', '1987-06-21', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(335, 'SM RASEL', 'smrasel.jre@gmail.com', '01734-894497', '1991-11-24', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(336, 'MD. NEWAZ SHARIF PULAK', 'pulaksust@gmail.com', '01676451126', '1990-12-19', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(337, ' Christopher Bardel Prottoy ', 'christopherbardel@gmail.com', '01745822222 ', '1993-06-22', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(338, 'Sadia Sharmin Prome', 'sadia.sharmin.prome@gmail.com', '01631193127', '1994-04-27', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(339, 'Bibi Moriom Bristy', 'rimjhimbristy047@gmail.com', '01671048317', '1992-07-03', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(340, 'Bibi Moriam', 'queen.bba.12@gmail.com', ' 01735954944', '1992-11-12', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(341, 'Syeda Shahana Akhter', 's.shahana.akhter@gmail.com', '01939900024', '1986-12-22', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(342, 'ANIKA BINTEE ROFIQUE', 'bintee_bd@yahoo.com', ' 01727346343', '1990-08-16', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(343, 'Sajib Ahmed', 'sajibahmed8899@gmail.com', '01677535443', '1993-10-20', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(344, 'Nabila Shawkat', 'nabilashawkat@yahoo.com', '01910168636', '1991-03-25', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(345, 'SMRITY ROY', 'smrityroy2014@gmail.com', '01914522168', '1986-12-16', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(346, 'Shanji Mony Nayan', 'shanjinayansmart@yahoo.com', '01521103659', '1988-05-03', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(347, 'Masud Rana', 'masudeidna73@gmail.com', '01722980322', '1994-09-12', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(348, 'MD. TARIKUL ISLAM', 'tarikulrpg@gmail.com', ' 01761-360400', '1995-08-21', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(349, 'ABDULLAH-AL-MAMUN', 'a.a.mamun3446@gmail.com', '01721974071', '1992-09-28', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(350, 'Md. Ali Akbar', 'shohagshohag281@gmail.com', '01753 693073', '1995-09-10', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(351, 'FARUK HOSSAIN', 'kzs.faruk@gmail.com', '01728-975275', '1993-11-05', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(352, 'Md Rasel Akhon', 'mdrasel34@gmail.com', '01967677563', '1996-05-16', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(353, 'Md. Monir Hossain', 'hossainmdmonir704@gmail.com', '01764986402', '1995-11-25', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(354, 'H.M. MUTOAJJIHAN', 'sienats@rocketmail.com', '01729451957', '1994-09-03', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(355, 'Tariqul islam', 'islam.tariqul059@gmail.com', '01681-943512', '1994-01-01', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(356, 'Kaniz Fatima', 'Kaniz95@yahoo.com', '01681874387', '1995-10-25', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(357, 'Kanakdev Pramanik', 'kanakdevpramanik@gmail.com', '01738241445', '1993-11-07', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(358, 'Md. MAHABUB ALAM', 'Kanchon620@gmail.com', '01680095602', '1996-11-11', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(359, 'Md. Alauddin', 'shojol12102@gmail.com', ' 01913957430', '1996-04-22', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(360, 'MD. MOSABBER ALI', 'mdmosabberali420@gmail.com', ' 01710 243989', '1994-01-10', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(361, 'Md.Abdulla-All-Mamun', 'rupomeeenub@gmail.com', '01752933135', '1993-12-17', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(362, 'MOHAMMAD MIZANUR RAHMAN', 'ridoy.mizan@gmail.com', '01728418227', '1991-02-08', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(363, 'Md. Hafizur Rahaman', 'hafizurgreen@gmail.com', ' 01732992266', '1993-02-01', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(364, 'MD. Mamunur Rashid', 'mamunur.elec@gmail.com', '01722684288', '1991-09-01', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(365, 'Sazzad Hossain', 'sazzadhossainrasel1994@gmail.com', '01965-481735', '1994-11-30', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(366, 'MD. JASIM UDDIN', 'Jasimbd77@yahoo.com', '01930-89572', '1989-07-10', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(367, 'Md. Shahab Uddin', 'shahabuddin371203@gmail.com', '01921-182092', '1993-02-01', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(368, 'Md. Imam Hossain', 'emonkhan.emon@gmail.com', '01758983613', '1991-07-01', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(369, 'MD. IMAM HOSSAIN', 'imamhossain626@gmail.com', '01677-166804', '1991-09-19', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(370, 'Mijanur Rahman', 'mijanurrahman@yahoo.com', ' 01683230280', '1995-10-01', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(371, ' Md. Nazmol Hossain', 'tushar01fb@gmail.com', '01745162685', '1991-12-15', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(372, 'md muslim uddin', 'muslimuddinmitu@gmail.com', '01817646432', '1993-12-05', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(373, 'MD. RAJU MIA', 'ahmmedr423@gmail.com', '01738-154278', '1994-11-08', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(374, 'M0HMMAD SAHIN', 'Sahinn219@gmail.com', '01830101991', '1992-01-01', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(375, 'MOHAMMAD AZIM UDDIN BHUIYAN', 'abtuhin00@gmail.com', '01950340810', '1994-06-05', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0);
INSERT INTO `tbl_user_reg` (`regId`, `userName`, `email`, `phone`, `dob`, `spId`, `statuss`, `applyresult`, `date`, `image`, `IP`, `listing`, `applied_status`, `resume_status`, `selected_status`, `step`, `userstat`) VALUES
(376, 'MD. AFTAB UDDIN', 'aurony31@gmail', '01747094485', '1993-01-01', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(377, 'Md. Hasibul Islam', 'hasibulhira99@gmail.com', '01782857904', '1994-04-12', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(378, 'Mohammed Jashim Uddin ', 'j.u.rony95@gmail.com', '01681383531', '1995-01-01', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(379, 'Md.Sujan Mia', 'sujanmia167@gmail.com', '01714219500', '1991-05-25', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(380, 'Md. Hamidur Rahman', 'hamidur4710@gmail.com', '01755-104710', '1995-10-15', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(381, 'Md. Rayhan', 'mohammad.rayhan29@yahoo.com', '01811365277', '1989-12-05', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(382, 'SHAHIDUL ISLAM', 'shahidctg934@gmail.com', '01881-643060', '1992-06-24', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(383, 'MD. Tusher Alam', 'tusher.emkay@gmail.com', '01955-313220', '1985-01-01', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(384, 'MAHABUBUR RAHMAN KHAN', 'diamond123459@gmail.com', '01714-748043', '1990-12-05', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(385, ' Khairul islam', 'khairulislam903@gmail.com', '01920351252', '1986-11-01', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(386, 'Md. Sourav chowdhury', 'sourav.chowdhury117@gmail.com', '01767183656', '1996-02-08', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(387, 'SABBIR AHMED', '5.ctg123@gmail.com', '01960287680', '1993-11-08', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(388, 'MD.MOZAMMELHOSAIN', 'mozammel_bd@yahoo.com', '01752390092', '1994-05-17', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(389, 'Md.Moksuder Rahman', 'Moksuder123@gmail.com', ' 01751-404522', '1991-09-10', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(390, 'Chowdhury Saleha Ferdowsy ', 'shipu9300@gmail.com', '01744611611', '1994-05-10', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(391, 'MD. ARIFUL ISLAM', 'ariful828@gmail.com', '801672918338', '1996-12-31', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(392, 'Abul Khair', 'skhairbd@gmail.com', '01780-808590', '1994-10-28', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(393, 'engr.ekramzodder@gmail.com', 'engr.ekramzodder@gmail.com', '01672841867', '1990-02-13', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(394, ' Md. Rizon Ahamod', 'rizonahamod999@gmail.com', '01723371999', '1995-01-07', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(395, 'MD. Imran Hossain', 'imran.eee525@gmail.com', '01737-273762', '1994-01-01', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(396, 'Md Tariqul Islam', 'tariqulislam58555@gmail.com', '01748753199', '1994-06-10', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(397, 'MD. MAHBUBUR RAHMAN', 'shimul7297@gmail.com', '01686406197', '1994-12-12', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(398, 'JONAEATH HOSSIN', 'uiujonaeatheee@gmail.com', '01912174833', '1989-09-25', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(399, 'MD. MOHSIN SUJON', 'mohsinsujon7@gmail.com', '01799596968', '1988-05-08', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(400, 'RAJIB BOISHNAB', 'rajib.boishnab@gmail.com', '01857749266', '1990-12-31', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(401, ' KAMRUJJAMAN', 'kamrujjaman.cse@gmail.com', '01750303954', '1995-08-13', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(402, 'MD. GOLAM RABBANI', 'deerabbanibd@gmail.com', '01714-946200', '1993-02-02', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(403, 'Engr. Muhammad Sulyman Hoque', 'engisulyman@gmail.com', ' 01921-553910', '1990-06-18', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(404, 'Shakila Akter', 'shakilaakter0007@gmail.com', ' 01918-969094', '1996-02-12', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(405, 'AVISHEK KUMAR SAHA', 'shubhosaha15@gmail.com', '01929225791', '1995-05-28', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(406, 'Md. Omar Faruk Sabuj', 'sabuj.ieb14@ymail.com', '01521310646', '1993-06-11', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(407, 'Md. Shohel Rana', 'shohelpub34@gmail.com', '01700-562645', '1995-06-01', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(408, 'MD. Hafizur Rahman Happy', 'hafizur.rahman@citycell.com', '01199806219', '1993-01-14', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(409, 'SIRAJUL ISLAM', 'Sirazulislam1994@gmail.com', '01788-721200', '1994-01-02', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(410, 'KAMRUL ISLAM', 'kamrulm638@gmail.com', '01816-767374', '1995-01-15', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(411, 'ASADUZZAMAN SAJAL', 'assadsajal@gmail.com', '01940197445', '1996-02-17', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(412, 'Md Nurul Islam', 'nurulabirkhan@gmail.com', '01684839983', '1996-03-01', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(413, 'Md. Tareq Hossain ', 'tareq1044@gmail.com', '01721042750', '1993-07-28', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(414, 'ABDUL HANNAN', 'Hannan.hazari91@gmail.com', ' 01721042750', '1990-01-01', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(415, 'FAKHARUDDIN AHAMMAD', 'fakhar_wu@yahoo.com', '01745205694', '2015-10-05', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(416, 'SHIB CHARON ROY', 'shivu2012uiu@gmail.com', '01723890536', '1990-04-10', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(417, 'MD. TAUHIDUR RAHMAN TAREQ', 'tauhid.tareq33@gmail.com', '01916537031', '1993-12-07', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(418, 'MUHAMMAD IKRAM HOSSAIN', 'Mikramhossain58@gmail.com', '01825195658', '1995-10-22', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(419, 'MD.MAHBUBUL ALAM', 'mahbubmy1990@gmail.com', '01724-000324', '1990-07-10', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(420, 'MD ATIQUR RAHMAN', 'atiqurbd93@gmail.com', '01726540444', '1993-08-08', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(421, 'MD. FOUAD HOSSAIN', 'engr.fouad13@gmail.com', '01611-311707', '1993-06-21', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(422, 'Mohammad Firuz Mahmood', 'mdfirozmahmood@gmail.com', '01913022975', '1990-03-18', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(423, 'MAHABOBOR RAHAMAN', 'engmahabobor.mt@gmail.com', '01771249250', '1991-10-10', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(424, 'Md. Shahadat Hossain Akash', 'sh_akash@yahoo.com', '01973800100', '1995-08-08', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(425, 'MD. HOMAIUN KABIR', 'homaiunkabirbubt@gmail.com', '01623989924', '1992-01-01', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(426, 'Md. Mahamudur Rahman', 'mahamudur390@gmail.com', '01751-375390', '1995-11-11', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(427, 'Md.Gulam Rabbani', 'kabbohasanchowdhury@gmail.com', ' 01776572702', '1994-06-20', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(428, 'MD. ISMAIL HOSSAIN', 'hossainismail.ieb@gmail.com', '01925626638', '1992-07-28', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(429, 'A.H.M Motiur Rahman', 'hasan.rr90@yahoo.com', '01515242418', '1994-10-26', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(430, 'Md. Jakir Hossain', 'jakirasik@gmail.com', '01764-567522', '1995-05-10', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(431, 'MD. HABIBUR RAHMAN', 'inghabib.nu1111@gmail.com', '01854374680', '1995-06-21', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(432, 'Md. Sajjatul Islam', 'sajjatul692324@gmail.com', '01939471824', '1997-05-19', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(433, 'Md.Jewel Rana', 'mdjewelr85@gmail.com', ' 01740150155', '1995-08-07', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(434, 'MOHAMMED ZAHED HOSSAIN SIDDIQUE', 'zahedparsons@yahoo.com', '01811585656', '1997-12-07', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(435, 'S.M. Syful Islam', 'syful.masum@gmail.com', '01711082594', '1988-07-04', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(436, 'MD. BAKTHIAR HOSSAIN ZOARDER', 'bhzoarder@yahoo.com', '01774328816', '1987-10-05', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(437, 'MAHIN AHSAN', 'palaahsan@gmail.com', '01916972882', '1990-10-05', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(438, ' HIMEL DUTTA NEWTON', 'himelanarjo@yahoo.com', '01714480711', '1982-12-31', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(439, 'Chowdhury Ummul Fida', 'fidachowdhury@ymail.com', '01628927162', '1990-05-06', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(440, 'S.M.R RAHMAN', 'manob4999@gmail.com', '01818488500', '1988-09-08', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(441, 'Roman Ali Thakur', 'roman.thakur@brac.net', '01730347393', '1979-12-31', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(442, 'A.T.M. Moslah Uddin (Jabed)', 'atmmujabed@yahoo.com', '01711-471753', '1981-10-25', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(443, 'REZANUR RAHMAN ', 'rezanur1967@gmail.com', '01715 833218 ', '1966-10-02', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(444, 'MD. KHABIRUL ISLAM', 'khabirulislam565@gmail.com', '01819-239993', '1967-10-15', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(445, 'FYAJ MD. ASIF ', 'asifmiu@gmail.com', ' 01717-366028', '1985-07-17', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(446, 'SHAMIM AHMED MAZUMDER', 'shamim1710@yahoo.com', '01732806704', '1981-12-31', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(447, 'Mohammad Mahmudul Hasan', 'robin_mahmud@yahoo.com', '01676 - 424079', '1977-08-11', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(448, 'Sanjida Sharmin', 'sanjida_sharmin2000@yahoo.com', '01753757951', '1992-02-12', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(449, 'MD.MASUD AL-AMIN', 'masudkhan01679494430@gmail.com', '01744-779481', '1993-01-15', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(450, 'S M Mahmud Hashan', 'hashanrana@yahoo.com', '01621856544 ', '1988-01-30', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(451, 'MD. REZAUL MAHMUD', 'mdrezaulmahmud@yahoo.com', '01677-699568', '1992-12-31', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(452, 'K.M Ashfique Mahmud Shovo', 'jobsashfique@gmail.com', '01612830658', '1993-09-24', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(453, 'Sharmin Zaman', 'sharmin.zaman08@gmail.com', '01534792759', '1991-05-08', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(454, 'NASIF NEWAJ MAHMOOD', 'nasif.newaj@gmail.com', '01740555160', '1990-08-03', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(455, 'Farhan Mohammad', 'farhan_mohammad420@yahoo.com', '01715-016016', '1989-11-17', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(456, '   ATM Ekramul Hossain', 'ekramhlhossain07@yahoo.com', 'ekramhlhossain07@yahoo.com,', '1963-07-17', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(457, 'Md. Ataur Rahman', 'mdataurrhman1@gmail.com', '01737-094147', '1991-01-21', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(458, 'Mohammad Anwar Hossain', 'smn_081@yahoo.com', '01911167169', '1988-10-12', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(459, 'MD. ALAMGIR HOSSAIN', 'alamgirmgtjnu@gmail.com', '01813922336', '1992-09-02', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(460, 'MD. JOYNAL ABEDIN', 'joynal.ibaru@yahoo.com', '01744980447', '1992-11-11', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(461, ' ASHFAK ALAM', 'ashfakshoaib007@gmail.com', '01711083840', '1989-11-01', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(462, 'Ummel Ara Chowdhury', 'eshachy132@gmail.com', '01824646408', '1993-07-12', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(463, 'SHARIKA NAHID', 'nahidsharika@gmail.com', '01675425447  ', '1992-08-26', 6, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(464, 'SUBROTO SIKDER', 'subrozzal@gmail.com', '01719485511', '1988-12-15', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(465, 'John Gomes', 'john_10656@yahoo.com', '01717710656', '1985-11-20', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(466, 'Labiba Mahmood', 'labibaaa83@gmail.com', '01671552020', '1995-05-19', 24, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(467, 'S.M. Giyasuddin', 'shimul.cse012@gmail.com', '01748545749', '1994-02-12', 20, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(468, 'Md Saif Bin Jahangir', 'saishuvo@hotmail.com', '01558964398', '0000-00-00', 20, 0, 0, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(469, 'Suhaila Akhtar Shifa', 'sabrinasuhaila@gmail.com', '01717205751', '1992-04-20', 20, 1, 1, '2017-10-03 09:43:25', '0', '', 0, 0, 0, 0, 0, 0),
(471, 'Jinea Jahan', 'jiniajahan65@gmail.com', '01628298521', '1996-12-02', 20, 0, 0, '2017-10-06 12:55:50', '0', '', 0, 0, 0, 0, 0, 0),
(472, 'Monsur Ahmed Chowdhury', 'macrifat@yahoo.com', '01832226184', '1993-01-01', 20, 1, 0, '2017-10-09 15:44:52', '0', '', 0, 0, 0, 0, 0, 0),
(473, 'Jafor kazi', 'jafort9@gmail.com', '01951048383', '1994-10-12', 10, 1, 0, '2017-10-09 18:23:13', '0', '', 0, 0, 0, 0, 0, 0),
(474, 'Moazzem Hossain', 'mhratanbd@gmail.com', '01718892439', '0000-00-00', 6, 0, 0, '2017-10-11 05:00:34', '0', '', 0, 0, 0, 0, 0, 0),
(475, 'Alavi Zaman Disha', 'dishaalavi@gmail.com', '01682161622', '1996-11-15', 20, 1, 1, '2017-10-14 15:29:37', '0', '', 0, 0, 0, 0, 0, 0),
(476, 'Nayeem Ahmad', 'nayeem811995@yahoo.com', '01515664665', '1995-01-08', 20, 1, 1, '2017-10-14 16:30:20', 'admin/uploads/5b0c694374.jpg', '', 1, 0, 0, 0, 0, 0),
(477, 'Md. Abu Hanif', 'm.abuhanif007@gmail.com', '01718555964', '1995-10-02', 20, 1, 1, '2017-10-14 17:21:43', '0', '', 0, 0, 0, 0, 0, 0),
(478, 'Md. Sabiqul Haque Susmoy', 'mshsusmoy@gmail.com', '01778007648', '2017-08-20', 20, 1, 1, '2017-10-14 17:27:13', '0', '', 0, 0, 0, 0, 0, 0),
(479, 'Zinath Farhana', 'choitifarhana.ice@gmail.com', '8801741239569', '1992-12-31', 20, 1, 1, '2017-10-14 17:37:45', '0', '', 0, 0, 0, 0, 0, 0),
(481, 'Hasibul Hasan', 'hasibul_uap@outlook.com', '01683-902204', '0000-00-00', 20, 1, 1, '2017-10-15 11:44:02', '0', '', 0, 0, 0, 0, 0, 0),
(482, 'Ataul Karim', 'ataulkarim55@gmail.com', '01727774319', '2017-10-15', 20, 1, 1, '2017-10-15 15:12:07', '0', '', 0, 0, 0, 0, 0, 0),
(483, 'S.M.Imtiaz Hussain Image', 'smimtiaz.cse@gmail.com', '01638720289', '1993-03-23', 20, 1, 1, '2017-10-15 15:51:11', '0', '', 0, 0, 0, 0, 0, 0),
(484, 'g m saiful islam', 'saifulislam@yahoo.com', '+8801819818666', '1991-05-03', 20, 0, 0, '2017-10-15 16:33:23', '0', '', 0, 0, 0, 0, 0, 0),
(485, 'tanvirrahman', 'tanvirrahman.aiub@gmail.com', '01682993264', '0000-00-00', 20, 1, 1, '2017-10-15 17:04:54', '0', '', 0, 0, 0, 0, 0, 0),
(486, 'G M Saiful Islam', 'karib_bravo@hotmail.com', '+8801819818667', '1980-02-18', 23, 0, 0, '2017-10-15 18:25:46', '0', '', 0, 0, 0, 0, 0, 0),
(487, 'SandilAzad', 'sandilazad@gmail.com', '+8801754272330', '1996-01-19', 6, 0, 0, '2017-10-15 18:26:03', '0', '', 0, 0, 0, 0, 0, 0),
(488, 'tamanna rahman', 'TamannaRahmant090@gmail.com', '01767571090', '1994-12-01', 20, 1, 1, '2017-10-16 00:16:19', '0', '', 0, 0, 0, 0, 0, 0),
(489, 'sandilazad ', 'mr.pavel24@gmail.com', '01754272330', '1996-01-19', 6, 1, 0, '2017-10-16 03:58:24', '0', '', 0, 0, 0, 0, 0, 0),
(490, 'Nabodip', 'nabodip064@gmail.com', '01760292026', '1995-10-29', 20, 1, 1, '2017-10-16 04:05:05', '0', '', 0, 0, 0, 0, 0, 0),
(491, 'Kazi Rahamatullah', 'md.kazi.rahmat@gmail.com', '01753362960', '1993-11-10', 20, 1, 1, '2017-10-16 04:17:09', '0', '', 0, 0, 0, 0, 0, 0),
(492, 'MD.Zubayer Alam Shuvo', 'zubayer.alam.shuvo@gmail.com', '01674868905', '1995-10-14', 20, 1, 1, '2017-10-16 13:37:57', 'admin/uploads/65b888796d.jpg', '', 0, 0, 0, 0, 0, 0),
(493, 'Tareq Monawar', 'tareqmonawar.cuet@gmail.com', '+8801827296866', '1994-10-27', 20, 0, 0, '2017-10-16 19:24:48', '0', '', 0, 0, 0, 0, 0, 0),
(494, 'Md Abdur Rouf', 'nayoun896366@gmail.com', '01734073879', '1990-03-01', 6, 1, 0, '2017-10-17 03:55:36', '0', '', 0, 0, 0, 0, 0, 0),
(496, 'Tareq Monawar', 'kachpoka754@gmail.com', '01827296866', '1994-10-27', 20, 1, 1, '2017-10-17 11:48:44', '0', '', 0, 0, 0, 0, 0, 0),
(497, 'Mohammad Ashraful Miah ', 'ashu.ashraful@gmail.com', '01722058555', '1994-09-29', 7, 1, 1, '2017-10-17 13:33:48', '0', '', 0, 0, 0, 0, 0, 0),
(499, 'Protyasha', 'protyas@keal.com.bd', '01926356556', '1994-11-30', 20, 1, 1, '2017-10-18 05:18:39', 'admin/uploads/1a2f8eba4c.jpg', '', 1, 0, 0, 0, 0, 0),
(500, 'rijwan', 'rijwanc007@gmail.com', '01986348224', '1994-11-07', 20, 0, 0, '2017-10-19 09:47:50', '0', '', 0, 0, 0, 0, 0, 0),
(501, 'Arnab', 'arnab.', '017', '1995-02-01', 20, 1, 0, '2017-10-20 15:08:05', 'uploads/5167c4695c.jpg', '', 0, 0, 0, 0, 0, 0),
(502, 'Partho Saha ', 'adittopartho@gmail.com', '01723165403', '0000-00-00', 6, 1, 1, '2017-10-23 16:50:28', 'admin/uploads/616a327f67.jpg', '', 1, 0, 0, 0, 0, 0),
(503, 'Fahima E-noor Poipy', 'fahima.enoor@gmail.com', '01855958254', '1990-09-11', 6, 1, 0, '2017-10-25 08:46:30', '0', '', 0, 0, 0, 0, 0, 0),
(504, 'Md. Sabbir Hossain', 'sabbir340@gmail.com', '01926786653 ', '1994-11-25', 6, 1, 0, '2017-10-26 05:59:56', '0', '', 0, 0, 0, 0, 0, 0),
(505, 'MD MAHADI HASAN RABBI', 'rabbysk3@gmail.com', '0191805851', '1992-01-26', 6, 1, 1, '2017-10-27 16:50:08', 'admin/uploads/3d90509d7c.jpg', '', 0, 0, 0, 0, 0, 0),
(506, 'Md. Abu Hanif Saleh', 'abuhanif870@gmail.com', '01723596207', '1994-12-30', 6, 1, 0, '2017-10-27 23:49:03', '0', '', 0, 0, 0, 0, 0, 0),
(507, 'Noor A Tasnim', 'abir1994s@gmail.com', '01680985513', '1995-03-13', 6, 1, 0, '2017-10-29 02:04:34', '0', '', 0, 0, 0, 0, 0, 0),
(508, 'Musfiqur Rahman', 'musfiq08@gmail.com', '01758073957', '1995-08-10', 20, 1, 1, '2017-10-29 14:12:39', '0', '', 0, 0, 0, 0, 0, 0),
(509, 'ahmed Shahriar Sajib', 'ahmedshahriar.raj@gmail.com', '+8801711092476', '1995-10-11', 6, 0, 0, '2017-10-29 15:32:46', '0', '', 0, 0, 0, 0, 0, 0),
(510, 'Musfiqur Rahman', 'musfiq.rahman008@gmail.com', '01717830606', '1995-10-08', 20, 0, 0, '2017-10-29 15:38:32', '0', '', 0, 0, 0, 0, 0, 0),
(511, 'Musfiqur Rahman', 'musfiqbracu@gmail.com', '01913011847', '1995-10-08', 20, 1, 1, '2017-10-29 15:47:30', '0', '', 0, 0, 0, 0, 0, 0),
(512, 'Khondker Fariha Hossain', 'farihafiha@gmail.com', '01934333375', '1995-03-31', 20, 1, 1, '2017-11-01 10:37:22', '0', '', 0, 0, 0, 0, 0, 0),
(514, 'Rayhan shuvo', 'rayhanshuvo.bd@gmail.com', '01730464658', '1994-11-19', 20, 0, 0, '2017-11-02 06:01:25', '0', '202.134.11.146', 0, 0, 0, 0, 0, 0),
(515, 'Md Shamim Ahmed', 'shamimahmed903@gmail.com', '01683895044', '1995-11-12', 0, 0, 0, '2017-11-02 06:57:02', '0', '103.225.93.19', 0, 0, 0, 0, 0, 0),
(516, 'Md. Mahmudur Rahman', 'mahmudur665@gmail.com', '01723640267', '1993-10-19', 20, 1, 1, '2017-11-02 12:29:59', 'admin/uploads/3982ee7c9d.jpg', '14.1.100.103', 0, 0, 0, 0, 0, 0),
(517, 'rijwan', 'rijwan_chowdhury@yahoo.com', '01747255426', '1994-11-07', 20, 1, 517, '2017-11-02 16:09:52', '0', '175.41.45.238', 0, 0, 0, 0, 0, 0),
(518, 'Mohd Abdullah Al Mamun', 'mamun.me12@gmail.com', '+8801521515195', '1993-12-27', 20, 0, 0, '2017-11-02 16:11:15', '0', '43.230.122.2', 0, 0, 0, 0, 0, 0),
(519, 'Mohd Abdullah Al Mamun', 'mamunwitchbug@gmail.com', '01521515195', '1993-12-27', 20, 1, 0, '2017-11-02 16:23:22', '0', '43.230.122.2', 0, 0, 0, 0, 0, 0),
(520, 'rozin', 'rozin2345@gmail.com', '8801675295184', '1992-06-04', 20, 1, 0, '2017-11-02 17:09:11', '0', '103.19.253.154', 0, 0, 0, 0, 0, 0),
(521, 'Sabbir Ahmed', 'sabbir.ahmed.delu@gmail.com', '01819186543', '1995-04-26', 20, 1, 0, '2017-11-02 17:51:23', '0', '103.58.74.146', 0, 0, 0, 0, 0, 0),
(522, 'Md. Shahjahan Dipu', 'shahjahan_dipu@diu.edu.bd', '01789525053', '1994-01-15', 20, 1, 1, '2017-11-02 17:53:17', 'admin/uploads/13d132538a.png', '45.127.248.184', 0, 0, 0, 0, 0, 0),
(523, 'Nishat Sultana', 'nish.bd44@gmail.com', '01624472435', '1994-06-12', 20, 1, 1, '2017-11-03 07:05:31', '0', '203.76.222.89', 0, 0, 0, 0, 0, 0),
(524, 'Ismail Hossain', 'ismail32cse@gmail.com', '01686254438', '1994-10-12', 20, 1, 1, '2017-11-03 08:20:18', '0', '203.76.222.6', 0, 0, 0, 0, 0, 0),
(525, 'Aniruddha Sen', 'senaniruddha07@gmail.com', '+8801625273487', '1994-02-03', 20, 0, 0, '2017-11-03 10:02:14', '0', '45.114.232.246', 0, 0, 0, 0, 0, 0),
(526, 'Prokash Karmokar', 'prokashkarmokar@gmail.com', '01737163249', '1994-09-29', 20, 1, 0, '2017-11-03 11:11:20', 'admin/uploads/dabae597e2.jpg', '103.252.227.48', 0, 0, 0, 0, 0, 0),
(527, 'Iftekhar  Hossain', 'iftekharncb@gmail.com', '01833080197', '1993-11-21', 20, 1, 0, '2017-11-03 13:08:58', 'admin/uploads/cfb9cb69b6.jpg', '103.96.104.250', 0, 0, 0, 0, 0, 0),
(528, 'Md. Mushfiqur Rahman', 'mushfiqur.rahman07@gmail.com', '01675464781', '1994-01-27', 20, 1, 1, '2017-11-03 17:43:42', 'admin/uploads/9ad43dee95.jpg', '103.52.142.1', 0, 0, 0, 0, 0, 0),
(529, 'Junayet Ahmed Sajib', 'junayet3@gmail.com', '+8801916721938', '1996-01-23', 20, 0, 0, '2017-11-04 04:06:51', '0', '27.147.201.228', 0, 0, 0, 0, 0, 0),
(530, 'Md. Toufiq Rahman', 'toufiq016@yahoo.com', '+8801673710768', '0000-00-00', 20, 0, 0, '2017-11-04 07:29:57', '0', '103.242.219.100', 0, 0, 0, 0, 0, 0),
(531, 'Shishir chandra Das', 'dasshishir33@gmail.com', '01828131532', '1992-06-11', 20, 1, 1, '2017-11-04 07:45:23', 'admin/uploads/0bb7f4f9df.jpg', '182.48.90.154', 0, 0, 0, 0, 0, 0),
(532, 'Shak Sufian Shourov', 'shaksufians@gmail.com', '01760875432', '0000-00-00', 20, 1, 1, '2017-11-05 04:06:04', '0', '123.200.20.201', 1, 0, 0, 0, 0, 0),
(538, 'Protyasha Saha', 'protyasha.s@keal.com.bd', '01721313350', '1995-11-15', 6, 1, 1, '2017-11-30 09:06:24', '0', '', 0, 1, 1, 0, 0, 0),
(539, 'ABDUR RAZZAQ', 'abdurrazzaq11@yahoo.com', '01839830011', '1989-03-05', 24, 1, 0, '2017-11-05 09:04:10', 'admin/uploads/6af08b80a8.jpg', '123.108.244.15', 0, 0, 0, 0, 0, 0),
(540, 'Afsana Imam', 'afsana.imam@gmail.com', '01733745753', '1994-08-12', 20, 1, 1, '2017-11-05 15:12:52', 'admin/uploads/461774287c.jpg', '103.205.134.166', 0, 0, 0, 0, 0, 0),
(541, 'Aktia Sadia', 'sadia.pritey@gmail.com', '01670296394', '1994-12-01', 20, 1, 0, '2017-11-05 15:19:36', '0', '59.152.103.150', 0, 0, 0, 0, 0, 0),
(542, 'Showmik Islam', 'showmikislam@gmail.com', '01675507529', '1993-01-01', 6, 0, 0, '2017-11-06 15:41:45', '0', '202.134.11.150', 0, 0, 0, 0, 0, 0),
(543, 'Md.Shakil Hossain', 'shakil.justcse11@gmail.com', '+8801754090758', '1992-11-22', 20, 0, 0, '2017-11-07 07:20:56', '0', '103.230.104.19', 0, 0, 0, 0, 0, 0),
(544, 'shafat al noman', 'shimulnoman03@gmail.com', '01793204444', '1993-01-05', 20, 1, 1, '2017-11-08 04:13:10', '0', '202.134.9.148', 0, 0, 0, 0, 0, 0),
(545, 'Md.Mahmudul Hasan', 'diner.hasan007@yahoo.com', '001746203777', '1992-10-11', 20, 1, 0, '2017-11-08 16:59:15', '0', '103.60.175.90', 0, 0, 0, 0, 0, 0),
(546, 'Shishir chandra Das', 'ovishishir24@gmail.com', '01933649407', '1992-06-11', 20, 1, 1, '2017-11-09 05:52:38', 'admin/uploads/87e24c706f.jpg', '103.73.107.252', 0, 0, 0, 0, 0, 0),
(547, 'MD. Moinuddin', 'moinuddinmd956@gmail.com', '01521350185', '1996-08-25', 0, 0, 0, '2017-11-09 18:48:34', '0', '103.78.52.250', 0, 0, 0, 0, 0, 0),
(548, 'MD Tanvir Haque', 'shadakaloths@gmail.com', '01686354488', '1993-09-13', 20, 1, 1, '2017-11-11 09:07:46', '0', '144.48.115.101', 0, 0, 0, 0, 0, 0),
(549, 'Harunnur Rasid', 'harunnurrasid@gmail.com', '01723231490', '0000-00-00', 6, 1, 1, '2017-11-11 11:33:50', 'admin/uploads/0369cfda25.jpg', '137.59.50.81', 0, 0, 0, 0, 0, 0),
(550, 'Arnab Roy', 'arnab.r@keal.com.bd', '0174591242966', '1995-02-01', 20, 1, 1, '2017-11-12 07:54:05', 'admin/uploads/4127fa8f65.jpg', '43.225.151.18', 3, 0, 0, 0, 0, 0),
(551, 'Jahid Hasan', 'jahidhasancmt4@gmail.com', '01785419717', '0000-00-00', 20, 1, 0, '2017-11-12 12:51:01', '0', '103.225.231.30', 0, 0, 0, 0, 0, 0),
(552, 'Mehedi hasan', 'mehedi.mehedi786@gmail.com', '01675742661', '1995-02-25', 20, 1, 1, '2017-11-12 15:49:16', '0', '103.230.107.8', 0, 0, 0, 0, 0, 0),
(553, 'Mohi Uddin Siyam', 'mssiyam96@gmail.com', '01732666005', '1993-02-24', 20, 1, 0, '2017-11-12 19:27:24', 'admin/uploads/5b20ee1429.jpg', '103.197.205.2', 0, 0, 0, 0, 0, 0),
(554, 'Zahidul Amin', 'zahidulamin9@gmail.com', '01681145491', '1996-07-16', 6, 1, 1, '2017-11-13 19:06:20', '0', '202.181.18.209', 0, 0, 0, 0, 0, 0),
(555, 'Md. Tanvir Ahmed Siddiqee', 'tanvirahmedsiddiqee@gmail.com', '01716532401', '1995-07-08', 20, 1, 0, '2017-11-13 19:23:31', '0', '103.197.155.25', 0, 0, 0, 0, 0, 0),
(556, 'Lamia kibria', 'lamia.k@keal.com.bd', '01675963709', '1995-02-21', 20, 1, 0, '2017-11-14 03:03:41', '0', '43.225.151.18', 0, 0, 0, 0, 0, 0),
(557, 'Jarin Hossain', 'jarin.h@keal.com.bd', '01682314295', '1995-04-15', 20, 1, 0, '2017-11-14 03:53:14', '0', '43.225.151.18', 0, 0, 0, 0, 0, 0),
(558, 'Avijit Barmon', 'barmonavijit@gmail.com', '01798040934', '1993-08-26', 20, 1, 1, '2017-11-14 03:56:52', '0', '103.230.106.60', 1, 0, 0, 0, 0, 0),
(559, 'Md. Sharif Ahmed', 'sharif792@gmail.com', '01743912139', '1988-12-30', 20, 1, 1, '2017-11-15 12:29:01', 'admin/uploads/84be762119.jpg', '103.230.5.218', 2, 0, 0, 0, 0, 0),
(560, 'Nusrat Jahan Nupur', 'njnupur1@gmail.com', '01866044791', '0000-00-00', 6, 1, 0, '2017-11-16 13:43:16', '0', '103.197.48.133', 0, 0, 0, 0, 0, 0),
(561, 'Muhibbbur Rahman', 'raadcseibs@gmail.com', '01728463405', '1994-11-19', 20, 1, 0, '2017-11-16 16:13:31', '0', '203.95.220.34', 0, 0, 0, 0, 0, 0),
(562, 'Test', 'aymunsatif@gmail.com', '01928379389', '1971-01-23', 45, 1, 0, '2017-11-18 06:45:10', '0', '43.225.151.18', 0, 0, 0, 0, 0, 0),
(563, 'Md. Rubaiyat Ansari', 'mak.ansari26@gmail.com', '+8801711112644', '1988-08-27', 3, 0, 0, '2017-11-21 20:00:45', '0', '192.241.243.129', 0, 0, 0, 0, 0, 0),
(564, 'Anwarul Islam Mithu', 'mithu6014@gmail.com', '+8801622493146', '1993-07-21', 3, 0, 0, '2017-11-23 04:05:39', '0', '27.147.226.29', 0, 0, 0, 0, 0, 0),
(565, 'Kakoli Saha', 'kakolisaha306@gmail.com', '01683731580', '1994-06-30', 20, 1, 1, '2017-11-24 18:16:02', '0', '103.205.68.229', 0, 0, 0, 0, 0, 0),
(566, 'Mahiuddin Al Kamal', 'mahiuddinalkamal@gmail.com', '01686975074', '1993-01-25', 20, 1, 0, '2017-11-27 18:47:10', '0', '103.86.109.174', 0, 0, 0, 0, 0, 0),
(567, 'Anas Abdullah Alvi', 'anasalvimoto@gmail.com', '01818043569', '1996-09-14', 6, 0, 0, '2017-12-01 15:57:18', '0', '45.251.231.63', 0, 0, 0, 0, 0, 0),
(568, 'Ahmed Rafid Farhan', 'arfarhann@gmail.com', '+8801686644270', '1995-10-04', 20, 0, 0, '2017-12-09 18:07:58', '0', '103.73.107.247', 0, 0, 0, 0, 0, 0),
(569, 'Anas Abdullah Alvi', 'alvi_moto@yahoo.com', '01752916688', '1996-09-14', 6, 1, 0, '2017-12-11 11:34:08', 'admin/uploads/19d7844ae0.jpg', '103.231.162.126', 0, 0, 0, 0, 0, 0),
(570, 'Sakiba Tabassum Haque', 'boniehaque@gmail.com', '01717009244', '1992-01-22', 27, 1, 0, '2017-12-11 12:37:43', '0', '119.30.38.17', 1, 0, 0, 0, 0, 0),
(571, 'Arnab Prosad Roy', 'arnab.r@keal.com.bd', '01745912429', '1995-02-01', 20, 1, 1, '2017-12-13 04:48:39', 'admin/uploads/86c38f8970.jpg', '43.225.151.18', 0, 0, 0, 0, 0, 1),
(572, 'faiaz sharaf', 'faiaz000@hotmail.com', '01772563399', '1994-10-02', 20, 1, 1, '2017-12-14 04:58:52', 'admin/uploads/6f2b447695.png', '103.221.254.243', 0, 0, 0, 0, 0, 0),
(573, 'Umme Aimon', 'ummeaimon.eee@gmail.com', '01685458993', '1994-09-20', 6, 0, 0, '2017-12-14 06:36:46', '0', '103.230.106.30', 0, 0, 0, 0, 0, 0),
(574, 'Naeeb', 'md.naeeb@gmail.com', '01676430139', '1993-11-04', 20, 1, 0, '2017-12-14 07:07:10', '0', '103.205.68.245', 0, 0, 0, 0, 0, 0),
(575, 'Md. Shovon Ahmed', 'shovon.ahmed89@gmail.com', '01684104503', '1993-12-15', 6, 1, 0, '2017-12-14 09:20:02', '0', '103.230.104.49', 0, 0, 0, 0, 0, 0),
(576, 'Shafayat Bin Mahmud', 'shafayatmahmud@gmail.com', '0186893697', '1993-07-16', 20, 1, 1, '2017-12-14 09:38:15', '0', '103.230.105.11', 0, 0, 0, 0, 0, 0),
(577, 'Md.Rasel', 'md.rasel.naeee@gmail.com', '01557352818', '1994-01-20', 20, 0, 0, '2017-12-14 11:29:09', '0', '114.130.10.3', 0, 0, 0, 0, 0, 0),
(578, 'Md.Abdur Rahman', 'rahmanjust94@gmail.com', '+8801630172388', '1994-01-25', 6, 0, 0, '2017-12-14 12:19:32', '0', '202.134.9.141', 0, 0, 0, 0, 0, 0),
(579, 'Ariful Haque', 'arifulhaqueanna@gmail.com', '01833563832', '1994-10-10', 20, 0, 0, '2017-12-14 12:58:51', '0', '45.248.151.197', 0, 0, 0, 0, 0, 0),
(580, 'Sabbir Ahmed Osmani', 'osmani.bd@gmail.com', '01759004987', '1981-11-28', 20, 1, 0, '2017-12-14 15:16:59', '0', '182.48.89.158', 0, 0, 0, 0, 0, 0),
(581, 'Tasmim Islam', 'tasmimislam@gmail.com', '01516782104', '1993-03-01', 20, 1, 1, '2017-12-14 15:59:41', '0', '103.51.2.126', 0, 0, 0, 0, 0, 0),
(582, 'sadman sakib', 'sadmansam9@gmail.com', '01681363963', '1995-01-01', 20, 1, 0, '2017-12-14 16:00:31', '0', '202.133.89.133', 0, 0, 0, 0, 0, 0),
(583, 'Niger Sultana Mimi', 'mimijsr09@gmail.com', '01613676464', '1995-05-31', 6, 0, 0, '2017-12-14 17:42:42', '0', '103.79.219.3', 0, 0, 0, 0, 0, 0),
(584, 'Niger Sultana Mimi', 'nsmimi99@gmail.com', '01680059732', '1995-05-31', 6, 0, 0, '2017-12-14 17:44:58', '0', '103.79.219.3', 0, 0, 0, 0, 0, 0),
(585, 'Tareq Mahmud', 'tmraju10@gmail.com', '+8801722374711', '1993-12-30', 6, 0, 0, '2017-12-14 18:17:44', '0', '103.83.233.19', 0, 0, 0, 0, 0, 0),
(586, 'MD.Nazmus Sakib', 'nsakib836@yahoo.com', '01748236084', '1994-10-17', 6, 1, 0, '2017-12-14 19:15:26', '0', '220.247.128.93', 0, 0, 0, 0, 0, 0),
(587, 'Md Mezbaul Islam ', 'press.sajib@gmail.com', '+8801675404488', '1989-11-15', 30, 0, 0, '2017-12-14 19:50:01', '0', '202.134.13.130', 0, 0, 0, 0, 0, 0),
(588, 'Raisul Islam', 'raisulislam.50@gmail.com', '01981546640', '1992-01-27', 20, 0, 0, '2017-12-14 20:47:27', '0', '103.55.146.165', 0, 0, 0, 0, 0, 0),
(589, 'Soumen Biswas', 'soumen.ece12@gmail.com', '8801758525474', '1995-08-08', 6, 1, 0, '2017-12-14 23:08:06', '0', '103.205.134.235', 0, 0, 0, 0, 0, 0),
(590, 'shahriyar', 'shahriyaruddin93@gmail.com', '01675679395', '1995-09-25', 6, 1, 1, '2017-12-15 04:26:22', 'admin/uploads/1acd63a0cb.jpg', '45.64.136.158', 0, 0, 0, 0, 0, 0),
(591, 'Md. Abu Sayeem Siddique', 'sayeemsiddique@yahoo.com', '01682868789', '1992-10-28', 6, 1, 0, '2017-12-15 05:31:47', '0', '160.202.144.30', 0, 0, 0, 0, 0, 0),
(592, 'Tahsina Tamanna', 'thyca018@gmail.com', '+8801918616805', '1995-12-03', 6, 0, 0, '2017-12-15 08:42:40', '0', '180.211.153.42', 0, 0, 0, 0, 0, 0),
(593, 'Tareq Mahmud ', 'tareqmahmudraju@gmail.com', '01722374711', '1993-12-30', 6, 1, 0, '2017-12-15 11:59:17', '0', '103.83.233.7', 0, 0, 0, 0, 0, 0),
(594, 'Md.Sajid Hasan Khan', 'sameerx911@gmail.com', '01711709371', '1996-12-31', 6, 1, 1, '2017-12-15 13:20:23', '0', '103.83.235.169', 0, 0, 0, 0, 0, 0),
(595, 'Iftekhar Hossain', 'Ifti.hossain19@gmail.com', '+8801846561475', '1994-07-28', 6, 0, 0, '2017-12-15 18:06:23', '0', '180.234.33.45', 0, 0, 0, 0, 0, 0),
(596, 'Pronab Das', 'engr.pronabdas@gmail.com', '01750186690', '1994-08-05', 6, 0, 0, '2017-12-16 05:53:51', '0', '103.60.175.101', 0, 0, 0, 0, 0, 0),
(597, 'Armaan', 'saibarmaan@gmail.com', '01682172389', '1996-09-11', 6, 0, 0, '2017-12-16 12:11:38', '0', '43.250.81.54', 0, 0, 0, 0, 0, 0),
(598, 'Gulnahar Mahbub Monika', 'oshinmonika00@gmail.com', '01681947040', '1995-09-06', 12, 1, 0, '2017-12-16 15:06:31', '0', '103.60.175.66', 0, 0, 0, 0, 0, 0),
(599, 'Md. Rajib Mahmud', 'rajib.ruet12@gmail.com', '+8801757147052', '0000-00-00', 20, 0, 0, '2017-12-16 16:09:49', '0', '202.134.13.139', 0, 0, 0, 0, 0, 0),
(600, 'MD. RASHEDUL KARIM', 'karim.rashed@gmail.com', '01716506305', '1987-10-31', 20, 1, 0, '2017-12-17 07:16:31', '0', '106.0.52.5', 0, 0, 0, 0, 0, 0),
(601, 'Md Ragib Shaharear', 'shuvo2012338016@gmail.com', '01750520895', '1994-02-15', 6, 0, 0, '2017-12-17 14:55:18', '0', '27.147.226.11', 0, 0, 0, 0, 0, 0),
(602, 'Junayed', 'junayed12cuet@gmail.com', '01780652522', '1994-02-10', 20, 0, 0, '2017-12-17 17:43:23', '0', '119.30.35.221', 0, 0, 0, 0, 0, 0),
(603, 'Ashraful Abedin Shourab', 'ab.shourab@gmail.com', '01753021788', '1995-12-06', 20, 1, 1, '2017-12-17 20:19:03', 'admin/uploads/1e5e1a6dfa.jpg', '123.108.244.156', 0, 0, 0, 0, 0, 0),
(604, 'MD.SALMAN HOSSAIN', 'mustafizsalman1@gmail.com', '01954951941', '1994-02-10', 6, 1, 0, '2017-12-17 20:54:54', '0', '103.217.111.194', 0, 0, 0, 0, 0, 0),
(605, 'Md. Sultanul Arefin', 'mhmdarefin@gmail.com', '+8801911272057', '1992-12-31', 20, 0, 0, '2017-12-18 13:08:55', '0', '103.76.196.230', 0, 0, 0, 0, 0, 0),
(606, 'Md.Ali Raju', 'raju_20dh@yahoo.com', '01747359506', '1991-03-25', 20, 1, 0, '2017-12-19 12:45:48', '0', '45.64.139.126', 0, 0, 0, 0, 0, 0),
(607, 'Md Foysal Masud', 'fm.nehan@gmail.com', '+8801771101871', '1994-06-01', 6, 0, 0, '2017-12-19 17:40:43', '0', '103.102.27.122', 0, 0, 0, 0, 0, 0),
(608, 'Md Nuhu Alam', 'nuhu_cse@yahoo.com', '01719688123', '0000-00-00', 47, 1, 0, '2017-12-19 18:11:09', '0', '123.108.246.243', 0, 0, 0, 0, 0, 0),
(609, 'Liton Kumar Mondal', 'litoneee005@gmail.com', '01916252695', '1993-12-01', 6, 0, 0, '2017-12-20 05:48:35', '0', '103.4.146.59', 0, 0, 0, 0, 0, 0),
(610, 'Tanvir Islam', 'tanvirislameee@gmail.com', '01821031910', '1994-03-19', 47, 0, 0, '2017-12-20 10:09:39', '0', '182.48.95.110', 0, 0, 0, 0, 0, 0),
(611, 'Ranin Das', 'raninchandra3@gmail.com', '01871096830', '0000-00-00', 6, 0, 0, '2017-12-20 14:00:35', '0', '203.83.162.18', 0, 0, 0, 0, 0, 0),
(612, 'Mohammad Ali', 'aliuiu@yahoo.com', '01911238322', '1978-12-12', 20, 1, 0, '2017-12-20 17:12:36', '0', '203.76.222.2', 0, 0, 0, 0, 0, 0),
(613, 'Nuzat Tabassum', 'nuzattabassum74@gmail.com', '01916013798', '1993-12-25', 20, 0, 0, '2017-12-20 20:03:31', '0', '202.86.220.1', 0, 0, 0, 0, 0, 0),
(614, 'Humaira Anzum', 'wwwsurovy@gmail.com', '01673869285', '1994-07-14', 6, 1, 0, '2017-12-21 14:12:28', '0', '103.76.45.58', 0, 0, 0, 0, 0, 0),
(615, 'Md. Aktarul Islam', 'aktarul.rahul@gmail.com', '01558960152', '1993-11-17', 20, 0, 0, '2017-12-21 17:28:09', '0', '45.125.222.42', 0, 0, 0, 0, 0, 0),
(616, 'Sourav Kumar Mondal', 'sourav.kumar.mondal.cse12.buet@gmail.com', '01763853605', '1995-01-26', 20, 0, 0, '2017-12-21 18:21:48', '0', '103.94.135.201', 0, 0, 0, 0, 0, 0),
(617, 'Polock Roy', 'polockroy@hotmail.com', '01723258089', '1992-12-27', 6, 1, 0, '2017-12-22 16:30:59', 'admin/uploads/a616d17517.jpeg', '103.84.255.192', 0, 0, 0, 0, 0, 0),
(618, 'Md. Dedarul Islam', 'dedarul.eee.bubt@gmail.com', '01788779777', '1994-01-01', 6, 1, 0, '2017-12-23 05:42:19', 'admin/uploads/5884de8c6c.jpeg', '202.125.75.154', 0, 0, 0, 0, 0, 0),
(619, 'Shajir haider', 'shajirhaider04@gmail.com', '01681470970', '1995-10-04', 20, 1, 1, '2017-12-23 20:11:13', 'admin/uploads/2cec13dd35.jpg', '103.95.210.13', 0, 0, 0, 0, 0, 0),
(620, 'Maruf Hassan', 'marufhassan.shourav@gmail.com', '01732537592', '1991-12-09', 6, 0, 0, '2017-12-23 23:19:07', '0', '103.200.36.198', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vocational`
--

CREATE TABLE `tbl_vocational` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cgpa` float(10,2) NOT NULL,
  `pyearid` int(11) NOT NULL,
  `divId` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_vocational`
--

INSERT INTO `tbl_vocational` (`id`, `userId`, `name`, `cgpa`, `pyearid`, `divId`, `status`) VALUES
(1, 6, 'afgdg', 4.00, 12, 9, 0),
(2, 6, 'dgjhfg', 4.00, 18, 14, 0),
(3, 505, 'Pirojpur Technical School and Collage', 3.73, 12, 15, 0),
(5, 559, 'Gaibandha Technical School &amp; College', 3.86, 14, 0, 0),
(9, 557, 'Daffodil', 3.66, 18, 7, 1),
(10, 556, 'Milestone School and College', 3.88, 19, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_workingexperience`
--

CREATE TABLE `tbl_workingexperience` (
  `expId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `companyName` varchar(255) NOT NULL,
  `workingPeriod` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `sMonth` varchar(255) NOT NULL,
  `eMonth` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_workingexperience`
--

INSERT INTO `tbl_workingexperience` (`expId`, `userId`, `companyName`, `workingPeriod`, `designation`, `sMonth`, `eMonth`, `status`) VALUES
(1, 501, 'Kyoto Engineering Ltd', '4', 'Intern Officer', '', '', 0),
(3, 505, 'Shakti Solar Company', '4', 'Sub Assistant Engineer', '', '', 0),
(4, 499, 'Kyoto', '3 month', 'intern', '', '', 0),
(5, 499, 'Kyoto', '3 month', 'intern', '', '', 0),
(8, 549, 'Abdul Karim LTD of Karim Group', '1.8', 'Asst. Engineer Electrical', '', '', 0),
(9, 550, 'Kyoto Engineering &amp; Automation Ltd', '3 months', 'Internship', '', '', 0),
(20, 538, '', '', '', '', '', 1),
(21, 538, 'a', 'a', 'a', 'a', 'a', 1),
(22, 571, 'Kyoto Engineering &amp; Automation Ltd', '3 months', 'Intern Officer', 'Aug-2017', 'oct-2017', 1),
(23, 571, 'Elegant Corporation Limited', '12', 'Web Developer', 'Oct-2016', 'Sep-2017', 1),
(24, 571, 'Nirapod Binimoy', '12', 'CEO', 'Dec-2016', 'Nov-2017', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `create_schedule`
--
ALTER TABLE `create_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `step_07`
--
ALTER TABLE `step_07`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_absent`
--
ALTER TABLE `tbl_absent`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `tbl_achivement`
--
ALTER TABLE `tbl_achivement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_address`
--
ALTER TABLE `tbl_address`
  ADD PRIMARY KEY (`aId`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`aId`);

--
-- Indexes for table `tbl_alevel`
--
ALTER TABLE `tbl_alevel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_alevel_grade`
--
ALTER TABLE `tbl_alevel_grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_apply`
--
ALTER TABLE `tbl_apply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_apply_record`
--
ALTER TABLE `tbl_apply_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_approveip`
--
ALTER TABLE `tbl_approveip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_assesment`
--
ALTER TABLE `tbl_assesment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_attendence`
--
ALTER TABLE `tbl_attendence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_boardname`
--
ALTER TABLE `tbl_boardname`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cgpa`
--
ALTER TABLE `tbl_cgpa`
  ADD PRIMARY KEY (`cgpaid`);

--
-- Indexes for table `tbl_clg_name`
--
ALTER TABLE `tbl_clg_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_college`
--
ALTER TABLE `tbl_college`
  ADD PRIMARY KEY (`colid`);

--
-- Indexes for table `tbl_controlling`
--
ALTER TABLE `tbl_controlling`
  ADD PRIMARY KEY (`conId`);

--
-- Indexes for table `tbl_criteria`
--
ALTER TABLE `tbl_criteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cv`
--
ALTER TABLE `tbl_cv`
  ADD PRIMARY KEY (`cvId`);

--
-- Indexes for table `tbl_date`
--
ALTER TABLE `tbl_date`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_degree`
--
ALTER TABLE `tbl_degree`
  ADD PRIMARY KEY (`degId`);

--
-- Indexes for table `tbl_degree_grad`
--
ALTER TABLE `tbl_degree_grad`
  ADD PRIMARY KEY (`deid`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`dId`);

--
-- Indexes for table `tbl_diploma`
--
ALTER TABLE `tbl_diploma`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_diploma_disipline`
--
ALTER TABLE `tbl_diploma_disipline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_disappertime`
--
ALTER TABLE `tbl_disappertime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`distId`);

--
-- Indexes for table `tbl_division`
--
ALTER TABLE `tbl_division`
  ADD PRIMARY KEY (`divId`);

--
-- Indexes for table `tbl_education`
--
ALTER TABLE `tbl_education`
  ADD PRIMARY KEY (`eId`);

--
-- Indexes for table `tbl_egrade`
--
ALTER TABLE `tbl_egrade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employee1`
--
ALTER TABLE `tbl_employee1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employeeone`
--
ALTER TABLE `tbl_employeeone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_emrecord`
--
ALTER TABLE `tbl_emrecord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_errand`
--
ALTER TABLE `tbl_errand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_estatus`
--
ALTER TABLE `tbl_estatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_extra`
--
ALTER TABLE `tbl_extra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gap_analysis`
--
ALTER TABLE `tbl_gap_analysis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gpa`
--
ALTER TABLE `tbl_gpa`
  ADD PRIMARY KEY (`gpaId`);

--
-- Indexes for table `tbl_grad`
--
ALTER TABLE `tbl_grad`
  ADD PRIMARY KEY (`verId`);

--
-- Indexes for table `tbl_group`
--
ALTER TABLE `tbl_group`
  ADD PRIMARY KEY (`gId`);

--
-- Indexes for table `tbl_hedu`
--
ALTER TABLE `tbl_hedu`
  ADD PRIMARY KEY (`HID`);

--
-- Indexes for table `tbl_hsc`
--
ALTER TABLE `tbl_hsc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_iboard`
--
ALTER TABLE `tbl_iboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_interview`
--
ALTER TABLE `tbl_interview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_jobtitle`
--
ALTER TABLE `tbl_jobtitle`
  ADD PRIMARY KEY (`jId`);

--
-- Indexes for table `tbl_job_level`
--
ALTER TABLE `tbl_job_level`
  ADD PRIMARY KEY (`levelId`);

--
-- Indexes for table `tbl_joining_info`
--
ALTER TABLE `tbl_joining_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_lang`
--
ALTER TABLE `tbl_lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_lateapproval`
--
ALTER TABLE `tbl_lateapproval`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_latecoming`
--
ALTER TABLE `tbl_latecoming`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_latereason`
--
ALTER TABLE `tbl_latereason`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_level_subject`
--
ALTER TABLE `tbl_level_subject`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_olevel`
--
ALTER TABLE `tbl_olevel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_olevel_grads`
--
ALTER TABLE `tbl_olevel_grads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_others`
--
ALTER TABLE `tbl_others`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_overall`
--
ALTER TABLE `tbl_overall`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_paddress`
--
ALTER TABLE `tbl_paddress`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `tbl_passingyear`
--
ALTER TABLE `tbl_passingyear`
  ADD PRIMARY KEY (`pyearid`);

--
-- Indexes for table `tbl_personalinfo`
--
ALTER TABLE `tbl_personalinfo`
  ADD PRIMARY KEY (`perId`);

--
-- Indexes for table `tbl_perticipant`
--
ALTER TABLE `tbl_perticipant`
  ADD PRIMARY KEY (`perticipantsl`);

--
-- Indexes for table `tbl_ph`
--
ALTER TABLE `tbl_ph`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_philosophy`
--
ALTER TABLE `tbl_philosophy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_portfolio`
--
ALTER TABLE `tbl_portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`postId`);

--
-- Indexes for table `tbl_postgraduate`
--
ALTER TABLE `tbl_postgraduate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_processnote`
--
ALTER TABLE `tbl_processnote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_p_other`
--
ALTER TABLE `tbl_p_other`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reference`
--
ALTER TABLE `tbl_reference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_relationship`
--
ALTER TABLE `tbl_relationship`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_same`
--
ALTER TABLE `tbl_same`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_school`
--
ALTER TABLE `tbl_school`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_school_name`
--
ALTER TABLE `tbl_school_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_score`
--
ALTER TABLE `tbl_score`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_skill`
--
ALTER TABLE `tbl_skill`
  ADD PRIMARY KEY (`skillId`);

--
-- Indexes for table `tbl_skills`
--
ALTER TABLE `tbl_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_specialization`
--
ALTER TABLE `tbl_specialization`
  ADD PRIMARY KEY (`spId`);

--
-- Indexes for table `tbl_ssc`
--
ALTER TABLE `tbl_ssc`
  ADD PRIMARY KEY (`sscId`);

--
-- Indexes for table `tbl_store_job`
--
ALTER TABLE `tbl_store_job`
  ADD PRIMARY KEY (`jsId`);

--
-- Indexes for table `tbl_studydept`
--
ALTER TABLE `tbl_studydept`
  ADD PRIMARY KEY (`studydeptId`);

--
-- Indexes for table `tbl_thana`
--
ALTER TABLE `tbl_thana`
  ADD PRIMARY KEY (`thId`);

--
-- Indexes for table `tbl_time`
--
ALTER TABLE `tbl_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_timerecord`
--
ALTER TABLE `tbl_timerecord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_training`
--
ALTER TABLE `tbl_training`
  ADD PRIMARY KEY (`trainingId`);

--
-- Indexes for table `tbl_university`
--
ALTER TABLE `tbl_university`
  ADD PRIMARY KEY (`uId`);

--
-- Indexes for table `tbl_upload`
--
ALTER TABLE `tbl_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_urecord`
--
ALTER TABLE `tbl_urecord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_job`
--
ALTER TABLE `tbl_user_job`
  ADD PRIMARY KEY (`jsId`);

--
-- Indexes for table `tbl_user_reg`
--
ALTER TABLE `tbl_user_reg`
  ADD PRIMARY KEY (`regId`);

--
-- Indexes for table `tbl_vocational`
--
ALTER TABLE `tbl_vocational`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_workingexperience`
--
ALTER TABLE `tbl_workingexperience`
  ADD PRIMARY KEY (`expId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `create_schedule`
--
ALTER TABLE `create_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `step_07`
--
ALTER TABLE `step_07`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `tbl_absent`
--
ALTER TABLE `tbl_absent`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_achivement`
--
ALTER TABLE `tbl_achivement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_address`
--
ALTER TABLE `tbl_address`
  MODIFY `aId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `aId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_alevel`
--
ALTER TABLE `tbl_alevel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_alevel_grade`
--
ALTER TABLE `tbl_alevel_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_apply`
--
ALTER TABLE `tbl_apply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `tbl_apply_record`
--
ALTER TABLE `tbl_apply_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tbl_approveip`
--
ALTER TABLE `tbl_approveip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_assesment`
--
ALTER TABLE `tbl_assesment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_attendence`
--
ALTER TABLE `tbl_attendence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `tbl_boardname`
--
ALTER TABLE `tbl_boardname`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_cgpa`
--
ALTER TABLE `tbl_cgpa`
  MODIFY `cgpaid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_clg_name`
--
ALTER TABLE `tbl_clg_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1716;
--
-- AUTO_INCREMENT for table `tbl_college`
--
ALTER TABLE `tbl_college`
  MODIFY `colid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_controlling`
--
ALTER TABLE `tbl_controlling`
  MODIFY `conId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_criteria`
--
ALTER TABLE `tbl_criteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbl_cv`
--
ALTER TABLE `tbl_cv`
  MODIFY `cvId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_date`
--
ALTER TABLE `tbl_date`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbl_degree`
--
ALTER TABLE `tbl_degree`
  MODIFY `degId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tbl_degree_grad`
--
ALTER TABLE `tbl_degree_grad`
  MODIFY `deid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `dId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_diploma`
--
ALTER TABLE `tbl_diploma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_diploma_disipline`
--
ALTER TABLE `tbl_diploma_disipline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_disappertime`
--
ALTER TABLE `tbl_disappertime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `distId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `tbl_division`
--
ALTER TABLE `tbl_division`
  MODIFY `divId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_education`
--
ALTER TABLE `tbl_education`
  MODIFY `eId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_egrade`
--
ALTER TABLE `tbl_egrade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_employee1`
--
ALTER TABLE `tbl_employee1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_employeeone`
--
ALTER TABLE `tbl_employeeone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_emrecord`
--
ALTER TABLE `tbl_emrecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_errand`
--
ALTER TABLE `tbl_errand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_estatus`
--
ALTER TABLE `tbl_estatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_extra`
--
ALTER TABLE `tbl_extra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_gap_analysis`
--
ALTER TABLE `tbl_gap_analysis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_gpa`
--
ALTER TABLE `tbl_gpa`
  MODIFY `gpaId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_grad`
--
ALTER TABLE `tbl_grad`
  MODIFY `verId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `tbl_group`
--
ALTER TABLE `tbl_group`
  MODIFY `gId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_hedu`
--
ALTER TABLE `tbl_hedu`
  MODIFY `HID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_hsc`
--
ALTER TABLE `tbl_hsc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `tbl_iboard`
--
ALTER TABLE `tbl_iboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tbl_interview`
--
ALTER TABLE `tbl_interview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `tbl_jobtitle`
--
ALTER TABLE `tbl_jobtitle`
  MODIFY `jId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tbl_job_level`
--
ALTER TABLE `tbl_job_level`
  MODIFY `levelId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_joining_info`
--
ALTER TABLE `tbl_joining_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_lang`
--
ALTER TABLE `tbl_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_lateapproval`
--
ALTER TABLE `tbl_lateapproval`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_latecoming`
--
ALTER TABLE `tbl_latecoming`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_latereason`
--
ALTER TABLE `tbl_latereason`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_level_subject`
--
ALTER TABLE `tbl_level_subject`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tbl_olevel`
--
ALTER TABLE `tbl_olevel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_olevel_grads`
--
ALTER TABLE `tbl_olevel_grads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_others`
--
ALTER TABLE `tbl_others`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_overall`
--
ALTER TABLE `tbl_overall`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT for table `tbl_paddress`
--
ALTER TABLE `tbl_paddress`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `tbl_passingyear`
--
ALTER TABLE `tbl_passingyear`
  MODIFY `pyearid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `tbl_personalinfo`
--
ALTER TABLE `tbl_personalinfo`
  MODIFY `perId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `tbl_perticipant`
--
ALTER TABLE `tbl_perticipant`
  MODIFY `perticipantsl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_ph`
--
ALTER TABLE `tbl_ph`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_philosophy`
--
ALTER TABLE `tbl_philosophy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_portfolio`
--
ALTER TABLE `tbl_portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `postId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;
--
-- AUTO_INCREMENT for table `tbl_postgraduate`
--
ALTER TABLE `tbl_postgraduate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tbl_processnote`
--
ALTER TABLE `tbl_processnote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `tbl_p_other`
--
ALTER TABLE `tbl_p_other`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_reference`
--
ALTER TABLE `tbl_reference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tbl_relationship`
--
ALTER TABLE `tbl_relationship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_same`
--
ALTER TABLE `tbl_same`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_school`
--
ALTER TABLE `tbl_school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `tbl_school_name`
--
ALTER TABLE `tbl_school_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=370;
--
-- AUTO_INCREMENT for table `tbl_score`
--
ALTER TABLE `tbl_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_skill`
--
ALTER TABLE `tbl_skill`
  MODIFY `skillId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_skills`
--
ALTER TABLE `tbl_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_specialization`
--
ALTER TABLE `tbl_specialization`
  MODIFY `spId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `tbl_ssc`
--
ALTER TABLE `tbl_ssc`
  MODIFY `sscId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_store_job`
--
ALTER TABLE `tbl_store_job`
  MODIFY `jsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_studydept`
--
ALTER TABLE `tbl_studydept`
  MODIFY `studydeptId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
--
-- AUTO_INCREMENT for table `tbl_thana`
--
ALTER TABLE `tbl_thana`
  MODIFY `thId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=544;
--
-- AUTO_INCREMENT for table `tbl_time`
--
ALTER TABLE `tbl_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_timerecord`
--
ALTER TABLE `tbl_timerecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_training`
--
ALTER TABLE `tbl_training`
  MODIFY `trainingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `tbl_university`
--
ALTER TABLE `tbl_university`
  MODIFY `uId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `tbl_upload`
--
ALTER TABLE `tbl_upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `tbl_urecord`
--
ALTER TABLE `tbl_urecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2581;
--
-- AUTO_INCREMENT for table `tbl_user_job`
--
ALTER TABLE `tbl_user_job`
  MODIFY `jsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tbl_user_reg`
--
ALTER TABLE `tbl_user_reg`
  MODIFY `regId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=621;
--
-- AUTO_INCREMENT for table `tbl_vocational`
--
ALTER TABLE `tbl_vocational`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_workingexperience`
--
ALTER TABLE `tbl_workingexperience`
  MODIFY `expId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
