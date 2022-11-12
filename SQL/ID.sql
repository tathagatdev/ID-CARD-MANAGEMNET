-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2017 at 06:15 PM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Amrisha Nigam', 'b200046@nitsikkim.ac.in', 'Amrisha', 'Amrisha26', '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
CREATE TABLE IF NOT EXISTS `studentLogin` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` int(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(1, 'B200010CS', 'Anuj kumar', 'anuj.lpu1@gmail.com', '9865472555', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-11 15:37:05', '2017-07-15 18:26:21'),
(4, 'B200011CS', 'sdfsd', 'csfsd@dfsfks.com', '8569710025', '92228410fc8b872914e023160cf4ae8f', 0, '2017-07-11 15:41:27', '2017-07-15 17:43:03'),
(8, 'B200012CS', 'test', 'test@gmail.com', '2359874527', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-11 15:58:28', '2017-07-15 13:42:44'),
(9, 'B200013CS', 'Amit', 'amit@gmail.com', '8585856224', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-15 13:40:30', NULL),
(10, 'B200014CS', 'Sarita Pandey', 'sarita@gmail.com', '4672423754', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-15 18:00:59', NULL);
CREATE TABLE IF NOT EXISTS `tblissuediddetails` (
  `id` int(11) NOT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuediddetails` (`id`, `Roll`, `IssuesDate`) VALUES
(1, 'B200010CS', '2017-07-15 06:09:47'),
(2, 'B200011CS', '2017-07-15 06:12:27'),
(3, 'B200012CS', '2017-07-15 06:13:40'),
(4, 'B200013CS', '2017-07-15 06:23:23'),
(5, 'B200014CS', '2017-07-15 10:59:26'),
(6, 'B200015CS', '2017-07-15 18:02:55');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE IF NOT EXISTS `tblstudents` (
  `id` int(11) NOT NULL,
   `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Roll` varchar(100)  NOT NULL,
  `Address` varchar(150) DEFAULT NULL,
  `Mobile` int(11) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` int(20) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` ( `id`,`Name`, `Email`, `Roll`, `Address`, `Mobile`, `Gender`, `DOB`) VALUES
(1,'Anuj kumar', 'anuj.lpu1@nitsikkim.ac.in','B200010CS' , 'Dholakpur','1234567890','Male','02-02-2002'),
(2,'Anup kumar', 'anup.lpu1@nitsikkim.ac.in','B200011CS' , 'Dholakpur Sector12','1234527890','Male','02-01-2002'),
(3,'Aman kumar', 'amanlpu1@nitsikkim.ac.in','B200012CS' , 'Rampur','9895567890','Male','12-02-2003'),
( 4,'Akbar kumar', 'akbar@nitsikkim.ac.in','B200013CS' , 'Rajgarh','9895567810','Male','10-02-2003'),
( 5,'Anjali kumari', 'amar12@nitsikkim.ac.in','B200012CS' , 'Rampura sector5','9895567891','Female','12-02-2002'),

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--


ALTER TABLE `studentLogin`
  
  ADD PRIMARY KEY `StudentId` (`StudentId`);

ALTER TABLE `tblissuediddetails`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`);
  ADD UNIQUE KEY `Roll` (`Roll`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblauthors`
--

ALTER TABLE `tblissuediddetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `studentLogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
