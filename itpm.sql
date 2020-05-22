-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2020 at 05:49 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itpm`
--

-- --------------------------------------------------------

--
-- Table structure for table `controlstructure`
--

CREATE TABLE `controlstructure` (
  `id` varchar(10) NOT NULL,
  `ProgramComponent` varchar(255) NOT NULL,
  `weight` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `controlstructure`
--

INSERT INTO `controlstructure` (`id`, `ProgramComponent`, `weight`) VALUES
('CS1', 'A conditional control structure such as an ‘if’ or ‘else-if’ condition', 2),
('CS2', 'An iterative control structure such as a ‘for’, ‘while’, or ‘do-while’ loop', 1),
('CS3', 'The ‘switch’ statement in a ‘switch-case’ control structure', 1),
('CS4', 'Each ‘case’ statement in a ‘switch-case’ control structure', 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupling`
--

CREATE TABLE `coupling` (
  `id` varchar(10) NOT NULL,
  `ProgramComponent` varchar(255) NOT NULL,
  `weight` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coupling`
--

INSERT INTO `coupling` (`id`, `ProgramComponent`, `weight`) VALUES
('CP1', 'A recursive call', 50),
('CP2', 'A regular method calling another regular method in the same file', 1),
('CP3', 'A regular method calling another regular method in a different file', 1),
('CP4', 'A regular method calling a recursive method in the same file', 1),
('CP5', 'A regular method calling a recursive method in a different file', 1),
('CP6', 'A recursive method calling another recursive method in the same file', 1),
('CP7', 'A recursive method calling another recursive method in a different file', 1),
('CP8', 'A recursive method calling a regular method in the same file', 1),
('CP9', '(\"A recursive method calling a regular method in a different file', 1),
('CP10', 'A regular method referencing a global variable in the same file', 1),
('CP11', 'A regular method referencing a global variable in a different file', 1),
('CP12', 'A recursive method referencing a global variable in the same file', 1),
('CP13', 'A recursive method referencing a global variable in a different file', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inheritance`
--

CREATE TABLE `inheritance` (
  `ID` varchar(10) NOT NULL,
  `Inherited_Pattern` varchar(255) NOT NULL,
  `Weight` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inheritance`
--

INSERT INTO `inheritance` (`ID`, `Inherited_Pattern`, `Weight`) VALUES
('I1', 'A class with no inheritance (direct or indirect)', 112),
('I2', 'A class inheriting (directly or indirectly) from one user-defined class', 15),
('I3', 'A class inheriting (directly or indirectly) from two user-defined classes', 2),
('I4', 'A class inheriting (directly or indirectly) from three user-defined classes', 3),
('I5', 'A class inheriting (directly or indirectly) from more than three user-defined classes', 4);

-- --------------------------------------------------------

--
-- Table structure for table `method`
--

CREATE TABLE `method` (
  `id` varchar(20) NOT NULL,
  `ProgramComponent` varchar(255) NOT NULL,
  `weight` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `method`
--

INSERT INTO `method` (`id`, `ProgramComponent`, `weight`) VALUES
('M1', 'primitive_return_type', 1),
('M2', 'composite_return_type', 10),
('M3', 'void_return_type', 10),
('M4', 'Primitive_data_type', 10),
('M5', 'Composite_data_type', 10);

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `id` varchar(20) NOT NULL,
  `ProgramComponent` varchar(255) NOT NULL,
  `weight` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id`, `ProgramComponent`, `weight`) VALUES
('S1', 'Keyword', 2),
('S2', 'Identifier', 2),
('S3', 'Operator', 1),
('S4', 'NumericalValue', 1),
('S5', 'StringLiteral', 1);

-- --------------------------------------------------------

--
-- Table structure for table `variable`
--

CREATE TABLE `variable` (
  `id` varchar(20) NOT NULL,
  `ProgramComponent` varchar(255) NOT NULL,
  `weight` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `variable`
--

INSERT INTO `variable` (`id`, `ProgramComponent`, `weight`) VALUES
('V1', 'globalVariable', 2),
('V2', 'localVariable', 1),
('V3', 'primitive', 2),
('V4', 'composite', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inheritance`
--
ALTER TABLE `inheritance`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `method`
--
ALTER TABLE `method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variable`
--
ALTER TABLE `variable`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
