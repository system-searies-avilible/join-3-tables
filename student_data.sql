-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2022 at 04:36 AM
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
-- Database: `student_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data1`
--

CREATE TABLE `tbl_data1` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_data1`
--

INSERT INTO `tbl_data1` (`id`, `name`, `fname`) VALUES
(1, 'moheez', 'Abdul-razzaq'),
(2, 'muzamil', 'ahmed'),
(3, 'Rehman', 'Tariq'),
(4, 'kalid', 'razza');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data2`
--

CREATE TABLE `tbl_data2` (
  `id` int(11) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `s_course` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_data2`
--

INSERT INTO `tbl_data2` (`id`, `student_name`, `s_course`) VALUES
(1, '1', 'Ms-office'),
(2, '1', 'Web-development'),
(3, '2', 'Graphic-desiging'),
(4, '3', 'Ms-office'),
(5, '4', 'Graphic-desiging');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fees`
--

CREATE TABLE `tbl_fees` (
  `id` int(11) NOT NULL,
  `s_name` varchar(50) NOT NULL,
  `s_fees` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_fees`
--

INSERT INTO `tbl_fees` (`id`, `s_name`, `s_fees`) VALUES
(1, '4', '2000'),
(2, '1', '3000'),
(3, '2', '3000'),
(4, '3', '1000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_data1`
--
ALTER TABLE `tbl_data1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_data2`
--
ALTER TABLE `tbl_data2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fees`
--
ALTER TABLE `tbl_fees`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_data1`
--
ALTER TABLE `tbl_data1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_data2`
--
ALTER TABLE `tbl_data2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_fees`
--
ALTER TABLE `tbl_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
