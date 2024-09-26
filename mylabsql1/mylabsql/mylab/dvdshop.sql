-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2024 at 08:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dvdshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `aid` varchar(3) NOT NULL,
  `aname` varchar(20) NOT NULL,
  `alastname` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `telephone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='action information';

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`aid`, `aname`, `alastname`, `address`, `telephone`) VALUES
('901', 'Adamson', 'Gates', 'USA', 987654321),
('902', 'Burrell', 'Hawk', 'Italy', 1122334455),
('903', 'Aimi', 'Yumeko', 'Japan', 1688974562),
('904', ' Supavinee', 'Vijittame', 'Thailand', 875154498),
('905', 'Abraham', 'Fland', 'India', 1324568792);

-- --------------------------------------------------------

--
-- Table structure for table `actorinmovie`
--

CREATE TABLE `actorinmovie` (
  `count` int(10) NOT NULL,
  `movid` varchar(3) NOT NULL,
  `aid` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='actor action in movie';

--
-- Dumping data for table `actorinmovie`
--

INSERT INTO `actorinmovie` (`count`, `movid`, `aid`) VALUES
(1, '101', '901');

-- --------------------------------------------------------

--
-- Table structure for table `buymovie`
--

CREATE TABLE `buymovie` (
  `count` varchar(10) NOT NULL,
  `mid` varchar(3) NOT NULL,
  `movid` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='member buy movie';

--
-- Dumping data for table `buymovie`
--

INSERT INTO `buymovie` (`count`, `mid`, `movid`) VALUES
('2', '001', '101'),
('', '001', '104');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `mid` varchar(3) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `mlastname` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `telephone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='member information';

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`mid`, `mname`, `mlastname`, `address`, `telephone`) VALUES
('001', 'Kira', 'Honey', 'USA', 1225648971),
('002', 'Napatsorn', 'Nanum', 'Thailand', 922730795),
('003', 'Eve', 'Heleen', 'UA', 121564850),
('004', 'Kamura', 'Saki', 'Japan', 804348866),
('005', 'Sakura', 'Chiki', 'Japan', 653153340);

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `movid` varchar(3) NOT NULL,
  `movname` varchar(20) NOT NULL,
  `movinformation` varchar(50) NOT NULL,
  `time` varchar(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='movie information';

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`movid`, `movname`, `movinformation`, `time`, `date`) VALUES
('101', 'Jurassic', ' Dinosaurs in the zoo escape', '90 min', '2024-12-12'),
('102', 'Tee Yod 2', 'Thai ghost movies, black magic', '120 min', '2024-10-10'),
('103', 'Meg 2: The Trench', 'Mutated sharks invade the city.', '130 min', '2023-08-04'),
('104', 'LAHN MAH', ' A family movie about living with grandma.', '110 min', '2024-05-12'),
('105', 'Deadpool & Wolverine', ' Sci-fi and funny battles', '127 min', '2024-07-24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `actorinmovie`
--
ALTER TABLE `actorinmovie`
  ADD KEY `aid` (`aid`);

--
-- Indexes for table `buymovie`
--
ALTER TABLE `buymovie`
  ADD KEY `mid` (`mid`),
  ADD KEY `movid` (`movid`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
