-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2024 at 02:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `delivery`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `Id` int(11) NOT NULL,
  `Fullname` varchar(200) DEFAULT NULL,
  `Username` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Destination` varchar(200) NOT NULL,
  `Contact` varchar(12) DEFAULT NULL,
  `Quantity` varchar(200) NOT NULL,
  `Password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`Id`, `Fullname`, `Username`, `Email`, `Destination`, `Contact`, `Quantity`, `Password`) VALUES
(8, 'John Doee', 'johndoe', 'johndoe@gmail.com', 'pasig river', '09457384657', '', 'doe12'),
(9, 'Muichiro', 'muichiro', 'muichiro@gmail.com', 'anywhere', '09574836472', '', 'chiro12'),
(11, 'Jeric Raval', 'jeric22', 'jeric@gmail.com', 'mindanao', '09376584931', '', 'jeric12'),
(12, 'Kenny Ackerman', 'Kenny12', 'kenny@gmail.com', 'Wall Maria', '09478346732', '', 'kenny12'),
(13, 'Ienreb Fernando', 'reb12', 'reb@gmail.com', 'San Roque Dau', '09374856473', '', 'reb12'),
(14, 'Isaac Netero', 'Netero10', 'netero15@gmail.com', 'Dark Continent', '09301839173', '', 'netero12');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id` int(11) NOT NULL,
  `Fullname` varchar(200) DEFAULT NULL,
  `Contact` varchar(200) DEFAULT NULL,
  `Destination` varchar(200) DEFAULT NULL,
  `Quantity` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adminpage`
--

CREATE TABLE `adminpage` (
  `Id` int(11) NOT NULL,
  `Fullname` int(200) NOT NULL,
  `Username` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminpage`
--

INSERT INTO `adminpage` (`Id`, `Fullname`, `Username`, `Email`, `Password`) VALUES
(1, 0, 'marimo', 'zoro@gmail.com', 'zoro12'),
(2, 0, 'bubbles23', 'bubbles@gmail.com', 'bubbles12'),
(3, 0, 'jimmy12', 'jimmy12@gmail.com', 'jimmy12'),
(4, 0, 'sanji12', 'sanji12@gmail.com', 'sanji12'),
(5, 0, 'sanji12', 'sanji12@gmail.com', 'sanji12'),
(6, 0, 'sanji12', 'sanji12@gmail.com', 'sanji12'),
(7, 0, 'sanji12', 'sanji12@gmail.com', 'sanji12'),
(8, 0, 'vape', 'vape@gmail.com', 'vape12');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `Id` int(11) NOT NULL,
  `Fullname` varchar(200) DEFAULT NULL,
  `Addresss` varchar(200) DEFAULT NULL,
  `Contact` varchar(200) DEFAULT NULL,
  `Quantity` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`Id`, `Fullname`, `Addresss`, `Contact`, `Quantity`) VALUES
(1, 'Larry', 'Tarlac', '09372819463', '29'),
(2, 'Billy', 'Quezon', '09372845362', '99'),
(3, 'Lamar', 'Los santos', '093728175', '20'),
(7, 'hh', 'jj', '093019', '99'),
(8, 'Wizard', 'COC', '093819312', '90'),
(9, 'Isaac Netero', 'Dark Continent', '09301738192', '90'),
(10, 'Isaac Netero', '', '091839103918', '99'),
(11, 'Isaac Netero', '', '09301938192', '90'),
(12, 'Isaac Netero', 'Dark Continent', '09103819281', '90'),
(13, 'Isaac Netero', 'Dark Continent', '09103918218', '90'),
(14, 'Isaac Netero', 'Dark Continent', '093018391291', '97'),
(15, 'Isaac Netero', 'Dark Continent', '09301939102', '90');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `Fullname` varchar(200) DEFAULT NULL,
  `Addresss` varchar(200) DEFAULT NULL,
  `Contact` varchar(12) DEFAULT NULL,
  `Quantity` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `Fullname`, `Addresss`, `Contact`, `Quantity`) VALUES
(22, 'Shelby', 'Taguig', '09462738193', '19'),
(25, 'Luccy', 'East Blue', '09381736271', '99'),
(30, 'hh', 'jj', '093019', '99'),
(37, 'Isaac Netero', 'Dark Continent', '093018391291', '97'),
(38, 'Isaac Netero', 'Dark Continent', '09301939102', '90');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `Fullname` varchar(200) DEFAULT NULL,
  `Username` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Contact` int(12) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `adminpage`
--
ALTER TABLE `adminpage`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adminpage`
--
ALTER TABLE `adminpage`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
