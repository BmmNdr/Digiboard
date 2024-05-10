-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: biemmisql-db-1:3307
-- Generation Time: May 10, 2024 at 08:19 AM
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
(219, 'def', 'def', '2024-05-06', 2),
(223, 'Convocazione studenti Fase Provinciale Campionati Studenteschi di Beach Volley', '\nIl 16 Maggio 2024 presso l’Arena Beach Cadorago in Piazza Don Casnati – Cadorago (CO), dalle ore 08:30 alle ore 14:00 circa, si svolgerà la Fase Provinciale dei Campionati Sportivi Studenteschi di Beach Volley – Categoria Allievi Maschile e Femminile e Categoria Juniores Maschile e Femminile.\nCon la presente sono convocati alla manifestazione sportiva i seguenti studenti:\n\n\n\n CATEGORIA ALLIEVI MASCHILE\n\n\nCOGNOME\nNOME\nCLASSE\n\n\nColombo\nLuca\n2A MECCANICO\n\n\nNatella\nMichele\n1A MECCANICO\n\n\nMilone\nAlessandro\n2A LSA\n\n\nCATEGORIA ALLIEVE FEMMINILE\n\n\nCOGNOME\nNOME\nCLASSE\n\n\nAlbertoni\nMichelle\n3B LSA\n\n\nDesiderio\nMiriam\n3B CHIMICO\n\n\nTeruzzi\nGiorgia\n1A LINGUISTICO\n\n\n \nCATEGORIA JUNIORES MASCHILI\n\n\nCOGNOME\nNOME\nCLASSE\n\n\nGaiti\nAlessio\n4E ENERGIA\n\n\nLo Curto\nMatteo\n4E ENERGIA\n\n\nBallabio\nSimone\n5A LSA\n\n\n \nCATEGORIA JUNIORES FEMMINILE\n\n\nCOGNOME\nNOME\nCLASSE\n\n\nIuliano\nAlice\n5B LSA\n\n\nLazzaretto\nEmma\n4B CHIMICO\n\n\nMilone\nAlice\n5B LINGUISTICO\n\n\n\n \nIl trasporto e il rientro degli studenti convocati avverrà con mezzi propri ed in autonomia.\nPer tutta la durata della manifestazione, gli studenti saranno accompagnati dai docenti di Scienze Motorie e Sportive VERGA VALENTINA (Docente Referente) e ALLOCCA ALFONSO (Docente Accompagnatore).\nI suddetti studenti saranno da considerarsi assenti perché non presenti in aula. Tuttavia, tale assenza non prevede giustificazione e non concorre al computo totale delle assenze annuali.\nIl ritrovo con gli studenti interessati è fissato alle ore 08:30 davanti all’Arena Beach Cadorago di Cadorago (CO). Si raccomanda la massima puntualità.\nÈ fatto obbligo ai partecipanti di avere con sé un documento di riconoscimento in corso di validità.\n \nI Docenti referenti organizzatori.\nVerga Valentina e Allocca Alfonso\nDipartimento di Scienze Motorie e Sportive.\n \n', '2024-05-06', 14),
(222, 'Simulazione seconda prova AFM e Turismo, 15 maggio 2024', '\nIl Dipartimento di Economia aziendale ha approvato lo svolgimento di simulazioni di seconda prova per i seguenti indirizzi, articolazioni, classi e discipline:\n\n\nIndirizzo AFM – articolazione AFM – classi 5AAFM, 5BAFM – Economia aziendale;\nIndirizzo AFM – articolazione RIM – 5DRIM, 5ERIM – Economia aziendale e geopolitica;\nIndirizzo Turismo – 5ATUR – Discipline turistiche e aziendali.\n\n\nLa simulazione si svolgerà mercoledì 15 maggio 2024, dalle ore 8:00 alle ore 13:00.\nIl docente in servizio alla prima ora dovrà somministrare la prova; il docente in servizio all’ultima ora dovrà raccogliere gli elaborati degli studenti. La correzione competerà agli insegnanti delle materie aziendalistiche delle classi coinvolte.\n\n\nIl Dirigente scolastico\nProf. Angelo Filippo Di Gregorio\nFirma autografa sostituita a mezzo stampa \nai sensi dell’art. 3, comma 2, del D.Lgs. 39/93\n\n\n', '2024-05-04', 15),
(220, 'GLO finali, convocazione e pubblicazione del calendario', '\nSi pubblica in allegato il calendario ei GLO di fine anno scolastico, in programma per il 20, il 21 e il 22 maggio prossimi. In tale incontro i consigli dovranno valutare l’efficacia dei PEI relativi agli alunni interessati.\nCordiali saluti.\n \nIl Dirigente scolastico\nProf. Angelo Filippo Di Gregorio\nFirma autografa sostituita a mezzo stampa \nai sensi dell’art. 3, comma 2, del D.Lgs. 39/93\n', '2024-05-04', 16);

-- --------------------------------------------------------

--
-- Table structure for table `classe`
--

CREATE TABLE `classe` (
  `ID` char(6) NOT NULL,
  `idLuogo` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classe`
--

INSERT INTO `classe` (`ID`, `idLuogo`) VALUES
('2BMEC', 1),
('4AMEC', 1),
('4ATUR', 1),
('4BAFM', 1),
('2CAFM', 2),
('3BAFM', 2),
('4BCHI', 2),
('4BINF', 2),
('4BLL', 2),
('2ATUR', 3),
('3BLSA', 3),
('3DRIM', 3),
('4AAFM', 3),
('4ALSA', 3),
('4BLSA', 3),
('4BMEC', 3),
('5BCHI', 3),
('1AINF', 4),
('1AMEC', 4),
('1BCHI', 4),
('1BINF', 4),
('1BMEC', 4),
('1CINF', 4),
('1CMEC', 5),
('2ALL', 5),
('2BAFM', 5),
('2DAFM', 5),
('3BINF', 5),
('3BLL', 5),
('4ACHI', 5),
('4AINF', 5),
('5ALSA', 5),
('5AMEC', 5),
('2AAFM', 6),
('2ACHI', 6),
('2BCHI', 6),
('3AMEC', 6),
('4CINF', 6),
('4DRIM', 6),
('2AMEC', 7),
('2BLSA', 7),
('3BCHI', 7),
('4ERIM', 7),
('5AAFM', 7),
('5ATUR', 7),
('5BAFM', 7),
('1AAFM', 8),
('1ACHI', 8),
('1ALL', 8),
('1ALSA', 8),
('1ATUR', 8),
('1BAFM', 8),
('1BLSA', 8),
('1CAFM', 8),
('2BINF', 8),
('3AAFM', 8),
('3ATUR', 8),
('3ERIM', 8),
('4ALL', 8),
('5ACHI', 8),
('1DAFM', 9),
('2AINF', 9),
('2ALSA', 9),
('3BMEC', 9),
('2BLL', 10),
('2CINF', 10),
('3ACHI', 10),
('3ALL', 10),
('5BLL', 10),
('5BMEC', 10),
('3AINF', 11),
('3ALSA', 11),
('5AINF', 11),
('5ALL', 11),
('5BINF', 11),
('5BLSA', 11),
('5DRIM', 11),
('5ERIM', 11);

-- --------------------------------------------------------

--
-- Table structure for table `indirizzamento`
--

CREATE TABLE `indirizzamento` (
  `ID` int NOT NULL,
  `idCircolare` int NOT NULL,
  `idClasse` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `indirizzamento`
--

INSERT INTO `indirizzamento` (`ID`, `idCircolare`, `idClasse`) VALUES
(6, 14, '1AMEC'),
(7, 14, '2AMEC'),
(8, 14, '3BLSA'),
(9, 14, '3BCHI'),
(10, 14, '4ERIM'),
(11, 14, '4DRIM'),
(12, 14, '5ALL'),
(13, 14, '5BCHI'),
(14, 14, '5BLSA'),
(15, 15, '5AAFM'),
(16, 15, '5BAFM'),
(17, 15, '5DRIM'),
(18, 15, '5ERIM'),
(19, 15, '5ATUR'),
(20, 16, '1AAFM'),
(21, 16, '1ACHI'),
(22, 16, '1AINF'),
(23, 16, '1ALL'),
(24, 16, '1ALSA'),
(25, 16, '1AMEC'),
(26, 16, '1ATUR'),
(27, 16, '2AAFM'),
(28, 16, '2ACHI'),
(29, 16, '2AINF'),
(30, 16, '2ALL'),
(31, 16, '2ALSA'),
(32, 16, '2AMEC'),
(33, 16, '2ATUR'),
(34, 16, '3AAFM'),
(35, 16, '3ACHI'),
(36, 16, '3AINF'),
(37, 16, '3ALL'),
(38, 16, '3AMEC'),
(39, 16, '3ATUR'),
(40, 16, '3DRIM'),
(41, 16, '3ERIM'),
(42, 16, '4AAFM'),
(43, 16, '4ACHI'),
(44, 16, '4AINF'),
(45, 16, '4ALL'),
(46, 16, '4ALSA'),
(47, 16, '4ATUR'),
(48, 16, '4DRIM'),
(49, 16, '4ERIM'),
(50, 16, '5AAFM'),
(51, 16, '5ACHI'),
(52, 16, '5AINF'),
(53, 16, '5ALL'),
(54, 16, '5ALSA'),
(55, 16, '5ATUR'),
(56, 16, '5DRIM'),
(57, 16, '5ERIM');

-- --------------------------------------------------------

--
-- Table structure for table `luogo`
--

CREATE TABLE `luogo` (
  `ID` int NOT NULL,
  `piano` int NOT NULL,
  `lotto` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `luogo`
--

INSERT INTO `luogo` (`ID`, `piano`, `lotto`) VALUES
(1, 0, 3),
(2, 1, 3),
(3, -1, 2),
(4, 0, 2),
(5, 1, 2),
(6, 2, 2),
(7, -1, 1),
(8, 0, 1),
(9, 1, 1),
(10, 2, 1),
(11, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `schermo`
--

CREATE TABLE `schermo` (
  `COD` int NOT NULL,
  `idLuogo` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schermo`
--

INSERT INTO `schermo` (`COD`, `idLuogo`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11);

--
-- Indexes for dumped tables
--

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
  ADD KEY `fk1` (`idLuogo`);

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
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `indirizzamento`
--
ALTER TABLE `indirizzamento`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `luogo`
--
ALTER TABLE `luogo`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `schermo`
--
ALTER TABLE `schermo`
  MODIFY `COD` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classe`
--
ALTER TABLE `classe`
  ADD CONSTRAINT `classe-luogo` FOREIGN KEY (`idLuogo`) REFERENCES `luogo` (`ID`) ON DELETE SET NULL ON UPDATE CASCADE;

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
