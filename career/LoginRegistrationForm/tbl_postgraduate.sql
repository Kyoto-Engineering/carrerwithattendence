-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2017 at 10:12 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kealcom_recruitment`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_postgraduate`
--

CREATE TABLE `tbl_postgraduate` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `uId` int(11) NOT NULL,
  `studydeptId` int(11) NOT NULL,
  `cgpa` float NOT NULL,
  `pyearid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_postgraduate`
--

INSERT INTO `tbl_postgraduate` (`id`, `userId`, `uId`, `studydeptId`, `cgpa`, `pyearid`) VALUES
(1, 499, 37, 1, 3.66, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_postgraduate`
--
ALTER TABLE `tbl_postgraduate`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_postgraduate`
--
ALTER TABLE `tbl_postgraduate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
