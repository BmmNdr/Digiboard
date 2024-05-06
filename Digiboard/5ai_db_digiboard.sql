-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: biemmisql-db-1:3307
-- Generation Time: May 06, 2024 at 02:54 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digiboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `aula`
--

CREATE TABLE `aula` (
  `COD` char(5) NOT NULL,
  `idLuogo` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `circolare`
--

CREATE TABLE `circolare` (
  `num` int NOT NULL,
  `titolo` varchar(128) NOT NULL,
  `testo` text NOT NULL,
  `dataPubblicazione` date NOT NULL,
  `ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `circolare`
--

INSERT INTO `circolare` (`num`, `titolo`, `testo`, `dataPubblicazione`, `ID`) VALUES
(5, 'abc', 'abc', '2023-05-10', 1),
(219, 'def', 'def', '2024-05-06', 2);

-- --------------------------------------------------------

--
-- Table structure for table `classe`
--

CREATE TABLE `classe` (
  `ID` char(6) NOT NULL,
  `codAula` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classe`
--

INSERT INTO `classe` (`ID`, `codAula`) VALUES
('1AAFM', NULL),
('1ACHI', NULL),
('1AINF', NULL),
('1ALL', NULL),
('1ALSA', NULL),
('1AMEC', NULL),
('1ATUR', NULL),
('1BAFM', NULL),
('1BCHI', NULL),
('1BINF', NULL),
('1BLSA', NULL),
('1BMEC', NULL),
('1CAFM', NULL),
('1CINF', NULL),
('1CMEC', NULL),
('1DAFM', NULL),
('2AAFM', NULL),
('2ACHI', NULL),
('2AINF', NULL),
('2ALL', NULL),
('2ALSA', NULL),
('2AMEC', NULL),
('2ATUR', NULL),
('2BAFM', NULL),
('2BCHI', NULL),
('2BINF', NULL),
('2BLSA', NULL),
('2BMEC', NULL),
('2CAFM', NULL),
('2CINF', NULL),
('2DAFM', NULL),
('3AAFM', NULL),
('3ACHI', NULL),
('3AINF', NULL),
('3ALL', NULL),
('3ALSA', NULL),
('3AMEC', NULL),
('3ATUR', NULL),
('3BAFM', NULL),
('3BCHI', NULL),
('3BINF', NULL),
('3BLL', NULL),
('3BLSA', NULL),
('3DRIM', NULL),
('3ERIM', NULL),
('4AAFM', NULL),
('4ACHI', NULL),
('4AINF', NULL),
('4ALL', NULL),
('4ALSA', NULL),
('4ATUR', NULL),
('4BAFM', NULL),
('4BCHI', NULL),
('4BINF', NULL),
('4BLL', NULL),
('4BLSA', NULL),
('4CINF', NULL),
('4DRIM', NULL),
('4ERIM', NULL),
('5AAFM', NULL),
('5ACHI', NULL),
('5AINF', NULL),
('5ALL', NULL),
('5ALSA', NULL),
('5ATUR', NULL),
('5BAFM', NULL),
('5BCHI', NULL),
('5BINF', NULL),
('5BLL', NULL),
('5BLSA', NULL),
('5DRIM', NULL),
('5ERIM', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `indirizzamento`
--

CREATE TABLE `indirizzamento` (
  `ID` int NOT NULL,
  `idCircolare` int NOT NULL,
  `idClasse` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `luogo`
--

CREATE TABLE `luogo` (
  `ID` int NOT NULL,
  `piano` int NOT NULL,
  `lotto` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schermo`
--

CREATE TABLE `schermo` (
  `COD` int NOT NULL,
  `idLuogo` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aula`
--
ALTER TABLE `aula`
  ADD PRIMARY KEY (`COD`),
  ADD KEY `idLuogo` (`idLuogo`);

--
-- Indexes for table `circolare`
--
ALTER TABLE `circolare`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk1` (`codAula`);

--
-- Indexes for table `indirizzamento`
--
ALTER TABLE `indirizzamento`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idClasse` (`idClasse`),
  ADD KEY `idCircolare` (`idCircolare`);

--
-- Indexes for table `luogo`
--
ALTER TABLE `luogo`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `schermo`
--
ALTER TABLE `schermo`
  ADD PRIMARY KEY (`COD`),
  ADD KEY `idLuogo` (`idLuogo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `circolare`
--
ALTER TABLE `circolare`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `indirizzamento`
--
ALTER TABLE `indirizzamento`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `luogo`
--
ALTER TABLE `luogo`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schermo`
--
ALTER TABLE `schermo`
  MODIFY `COD` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aula`
--
ALTER TABLE `aula`
  ADD CONSTRAINT `aula_ibfk_1` FOREIGN KEY (`idLuogo`) REFERENCES `luogo` (`ID`);

--
-- Constraints for table `indirizzamento`
--
ALTER TABLE `indirizzamento`
  ADD CONSTRAINT `FK1` FOREIGN KEY (`idCircolare`) REFERENCES `circolare` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK2` FOREIGN KEY (`idClasse`) REFERENCES `classe` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `schermo`
--
ALTER TABLE `schermo`
  ADD CONSTRAINT `schermo_ibfk_1` FOREIGN KEY (`idLuogo`) REFERENCES `luogo` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
