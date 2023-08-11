-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2023 at 01:32 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `richpanel`
--

-- --------------------------------------------------------

--
-- Table structure for table `planename`
--

CREATE TABLE `planename` (
  `PNID` int(11) NOT NULL,
  `Plane_Name` varchar(25) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `planename`
--

INSERT INTO `planename` (`PNID`, `Plane_Name`, `Status`) VALUES
(1, 'Monthly Price', 'Active'),
(2, 'Yearly Price', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `planeparameter`
--

CREATE TABLE `planeparameter` (
  `PPID` int(10) NOT NULL,
  `Name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `planeparameter`
--

INSERT INTO `planeparameter` (`PPID`, `Name`) VALUES
(1, 'Mobile'),
(2, 'Basic'),
(3, 'Standard'),
(4, 'Premium');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `SID` int(10) NOT NULL,
  `Monthly_Price` int(10) NOT NULL,
  `Video_Quality` varchar(25) NOT NULL,
  `Resolution` varchar(25) NOT NULL,
  `Device1` varchar(25) NOT NULL,
  `Device2` varchar(25) NOT NULL,
  `Device3` varchar(25) NOT NULL,
  `Device4` varchar(25) NOT NULL,
  `PPID` int(11) NOT NULL,
  `PNID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`SID`, `Monthly_Price`, `Video_Quality`, `Resolution`, `Device1`, `Device2`, `Device3`, `Device4`, `PPID`, `PNID`) VALUES
(1, 100, 'Good', '480p', 'Phone', 'Tablet', '', '', 1, 1),
(2, 1000, 'Good', '480p', 'Phone', 'Tablet', '', '', 2, 1),
(3, 200, 'Good', '480p', 'Phone', 'Tablet', 'Computer', 'TV', 1, 2),
(4, 2000, 'Good', '480p', 'Phone', 'Tablet', 'Computer', 'TV', 2, 2),
(5, 500, 'Better', '1080p', 'Phone', 'Tablet', 'Computer', 'TV', 1, 3),
(6, 5000, 'Better', '1080p', 'Phone', 'Tablet', 'Computer', 'TV', 2, 3),
(7, 700, 'Best', '4K+HDR', 'Phone', 'Tablet', 'Computer', 'TV', 1, 4),
(8, 7000, 'Best', '4K+HDR', 'Phone', 'Tablet', 'Computer', 'TV', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `ID` int(10) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`ID`, `username`, `email`, `password`) VALUES
(1, '', 'aloksst36@gmail.com', 'password');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `planename`
--
ALTER TABLE `planename`
  ADD PRIMARY KEY (`PNID`);

--
-- Indexes for table `planeparameter`
--
ALTER TABLE `planeparameter`
  ADD PRIMARY KEY (`PPID`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`SID`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `planename`
--
ALTER TABLE `planename`
  MODIFY `PNID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `planeparameter`
--
ALTER TABLE `planeparameter`
  MODIFY `PPID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `SID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `userdetails`
--
ALTER TABLE `userdetails`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
