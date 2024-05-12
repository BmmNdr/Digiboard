-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 12, 2024 alle 15:50
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

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
-- Struttura della tabella `circolare`
--

CREATE TABLE `circolare` (
  `num` int(11) NOT NULL,
  `titolo` varchar(128) NOT NULL,
  `testo` text NOT NULL,
  `dataPubblicazione` date NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dump dei dati per la tabella `circolare`
--

INSERT INTO `circolare` (`num`, `titolo`, `testo`, `dataPubblicazione`, `ID`) VALUES
(215, 'prove parallele di FRANCESE', 'Si informano i docenti delle classi seconde interessate, che il giorno mercoledì 8 maggio 2024, dalle ore 8.00 alle ore 09.15, in auditorium, si svolgerà la prova parallela di Francese. Gli studenti coinvolti si recheranno direttamente in auditorium e saranno accolti dai docenti della prima ora e dalle docenti di francese presenti.\r\n\r\nVerrà somministrata una prova, consistente in una produzione scritta e in una comprensione scritta, di livello B1 per il Liceo Linguistico e di livello A2+ per gli altri Indirizzi.\r\n\r\nSi invitano i docenti in servizio a vigilare la classe durante lo svolgimento della prova. Le docenti di francese presenti ritireranno le copie.\r\n\r\nGrazie per la collaborazione.\r\n\r\n \r\n\r\n \r\n\r\nIl Dirigente scolastico\r\n\r\nProf. Angelo Filippo Di Gregorio\r\n\r\nFirma autografa sostituita a mezzo stampa\r\n\r\nai sensi dell’art. 3, comma 2, del D.Lgs. 39/93', '2024-05-02', 15),
(219, 'Giornata della creatività, sabato 11 maggio. Programma delle attività e iscrizioni ad esse', 'Si rammenta a docenti, studenti e famiglie dell’Istituto Jean Monnet che sabato 11 maggio si svolgerà la Giornata della creatività.\r\n\r\nA questa circolare è unito il programma delle attività. All’interno del file allegato, gli studenti troveranno anche il QR code con il quale potranno iscriversi a corsi o competizioni sportive in essa contemplate.\r\n\r\nLe lezioni inizieranno regolarmente alle ore 8,00 e in quella prima ora si svolgerà la normale attività didattica. Dalle ore 9,00 alle ore 13,00 si terranno le attività programmate e consultabili di seguito.\r\n\r\nGli studenti hanno predisposto un loro servizio di vigilanza autonomo. I docenti che risultano in servizio, da parte loro, sono tenuti a svolgere attività di vigilanza secondo un prospetto che verrà pubblicato in seguito.\r\n\r\nSi ringrazia per la cortese collaborazione. Colgo l’occasione per inviare i miei cordiali saluti.\r\n\r\n \r\n\r\nIl Dirigente scolastico\r\n\r\nProf. Angelo Filippo Di Gregorio\r\n\r\nFirma autografa sostituita a mezzo stampa\r\n\r\nai sensi dell’art. 3, comma 2, del D.Lgs. 39/93', '2024-05-03', 16),
(220, 'GLO finali, convocazione e pubblicazione del calendario', 'Si pubblica in allegato il calendario ei GLO di fine anno scolastico, in programma per il 20, il 21 e il 22 maggio prossimi. In tale incontro i consigli dovranno valutare l’efficacia dei PEI relativi agli alunni interessati.\r\n\r\nCordiali saluti.\r\n\r\n \r\n\r\nIl Dirigente scolastico\r\n\r\nProf. Angelo Filippo Di Gregorio\r\n\r\nFirma autografa sostituita a mezzo stampa\r\n\r\nai sensi dell’art. 3, comma 2, del D.Lgs. 39/93', '2024-05-04', 17),
(222, 'Simulazione seconda prova AFM e Turismo, 15 maggio 2024', 'Il Dipartimento di Economia aziendale ha approvato lo svolgimento di simulazioni di seconda prova per i seguenti indirizzi, articolazioni, classi e discipline:\r\nIndirizzo AFM – articolazione AFM – classi 5AAFM, 5BAFM – Economia aziendale;\r\nIndirizzo AFM – articolazione RIM – 5DRIM, 5ERIM – Economia aziendale e geopolitica;\r\nIndirizzo Turismo – 5ATUR – Discipline turistiche e aziendali.\r\nLa simulazione si svolgerà mercoledì 15 maggio 2024, dalle ore 8:00 alle ore 13:00.\r\nIl docente in servizio alla prima ora dovrà somministrare la prova; il docente in servizio all’ultima ora dovrà raccogliere gli elaborati degli studenti. La correzione competerà agli insegnanti delle materie aziendalistiche delle classi coinvolte.\r\nIl Dirigente scolastico\r\n\r\nProf. Angelo Filippo Di Gregorio\r\n\r\nFirma autografa sostituita a mezzo stampa\r\n\r\nai sensi dell’art. 3, comma 2, del D.Lgs. 39/93', '2024-05-04', 18),
(223, 'Convocazione studenti Fase Provinciale Campionati Studenteschi di Beach Volley', 'Il 16 Maggio 2024 presso l’Arena Beach Cadorago in Piazza Don Casnati – Cadorago (CO), dalle ore 08:30 alle ore 14:00 circa, si svolgerà la Fase Provinciale dei Campionati Sportivi Studenteschi di Beach Volley – Categoria Allievi Maschile e Femminile e Categoria Juniores Maschile e Femminile.\r\n\r\nCon la presente sono convocati alla manifestazione sportiva i seguenti studenti:\r\n\r\n CATEGORIA ALLIEVI MASCHILE\r\nCOGNOME	NOME	CLASSE\r\nColombo	Luca	2A MECCANICO\r\nNatella	Michele	1A MECCANICO\r\nMilone	Alessandro	2A LSA\r\nCATEGORIA ALLIEVE FEMMINILE\r\nCOGNOME	NOME	CLASSE\r\nAlbertoni	Michelle	3B LSA\r\nDesiderio	Miriam	3B CHIMICO\r\nTeruzzi	Giorgia	1A LINGUISTICO\r\n \r\nCATEGORIA JUNIORES MASCHILI\r\n\r\nCOGNOME	NOME	CLASSE\r\nGaiti	Alessio	4E ENERGIA\r\nLo Curto	Matteo	4E ENERGIA\r\nBallabio	Simone	5A LSA\r\n \r\nCATEGORIA JUNIORES FEMMINILE\r\n\r\nCOGNOME	NOME	CLASSE\r\nIuliano	Alice	5B LSA\r\nLazzaretto	Emma	4B CHIMICO\r\nMilone	Alice	5B LINGUISTICO\r\n \r\n\r\nIl trasporto e il rientro degli studenti convocati avverrà con mezzi propri ed in autonomia.\r\n\r\nPer tutta la durata della manifestazione, gli studenti saranno accompagnati dai docenti di Scienze Motorie e Sportive VERGA VALENTINA (Docente Referente) e ALLOCCA ALFONSO (Docente Accompagnatore).\r\n\r\nI suddetti studenti saranno da considerarsi assenti perché non presenti in aula. Tuttavia, tale assenza non prevede giustificazione e non concorre al computo totale delle assenze annuali.\r\n\r\nIl ritrovo con gli studenti interessati è fissato alle ore 08:30 davanti all’Arena Beach Cadorago di Cadorago (CO). Si raccomanda la massima puntualità.\r\n\r\nÈ fatto obbligo ai partecipanti di avere con sé un documento di riconoscimento in corso di validità.\r\n\r\n \r\n\r\nI Docenti referenti organizzatori.\r\nVerga Valentina e Allocca Alfonso\r\nDipartimento di Scienze Motorie e Sportive.', '2024-05-06', 19),
(230, 'Giornata della creatività, informazioni su logistica e vigilanza', 'Come già segnalato in una precedente circolare, sabato 11 maggio si svolgerà la giornata della creatività indetta e organizzata dagli studenti dell’Istituto. In quella giornata, le lezioni si svolgeranno regolarmente nella prima ora, dalle ore 9,00 alle 13,00 le lezioni saranno sospese e si svolgeranno le attività come più sotto specificato.\r\n\r\nAvvisiamo i genitori che a partire dalle ore 12,00 sarà possibile lasciare l’Istituto, se gli studenti non saranno impegnati in specifiche attività.\r\n\r\nLa situazione dei parcheggi dell’Istituto, se aperti/chiusi sarà la seguente:\r\n\r\nparcheggio non utilizzabile sul retro dell’edificio giallo/arancio\r\nparcheggio non utilizzabile sul retro dell’edificio rosso\r\nparcheggio fronte lotto rosso cancello apre ore 8.00 chiude ore 9.00 riapre ore 13.00.\r\nchi deve entrare/uscire in altri orari usi il campo sportivo.\r\n\r\nPiani, sarà possibile accedere a:\r\n\r\nlotto rosso piano seminterrato e terra\r\nlotto giallo piano terra\r\nlotto arancio piano terra e primo\r\nI collaboratori scolastici non dovranno consentire l’accesso ai piani fino alle 12.50, poi si può salire per recuperare borse e zaini. Ricordare ai ragazzi di non lasciare nulla di valore in classe.\r\n\r\nRammento ai collaboratori scolastici del lotto giallo e arancio che sabato mattina non dovrà essere aperto il cancello sul parcheggio arancio.\r\n\r\nDistribuzione degli eventi seguirà la seguente agenda:\r\n\r\nTornei sportivi:\r\n\r\nPallavolo palestra\r\nBasket palestra\r\nCalcio palestra\r\nPing-pong palestra\r\nScacchi lotto arancione\r\nE-sport lotto arancione\r\nLaboratori:\r\n\r\nGessetti parcheggio: edificio arancione\r\nDisegno artistico: un’aula che verrà indicata dagli studenti organizzatori\r\nIntroduzione “economia online” (prof. Carnabuci): in un’aula che verrà indicata dagli studenti organizzatori\r\nAula di fotografia: piano terra lotto giallo, 4AM\r\nMusica:\r\n\r\nKaraoke                              auditorium\r\n\r\nDj set “10:00, 13:00”       spazio tra parcheggio e palestra\r\n\r\n \r\n\r\nAugurando a tutti di passare una buona giornata della creatività, rammento al personale scolastico che i turni di sorveglianza indicati in allegato dovranno essere puntualmente rispettati, trattandosi di una prestazione in servizio lavorativo.\r\n\r\nCordiali saluti.\r\n\r\n \r\n\r\n \r\n\r\nIl Dirigente scolastico\r\n\r\nProf. Angelo Filippo Di Gregorio\r\n\r\nFirma autografa sostituita a mezzo stampa\r\n\r\nai sensi dell’art. 3, comma 2, del D.Lgs. 39/93', '2024-05-10', 20),
(233, 'incontro con gli studenti tutor, progetto Accoglienza', 'Giovedì 16.5.2024  alle  h. 14:30, per due ore circa (appuntamento atrio Lotto1, Rosso), le docenti referenti del Progetto Accoglienza incontreranno gli studenti Tutor per l’ anno scolastico 2024/25 per un primo momento di  formazione, allo scopo di mettere a punto le attività da svolgere durante le ore dedicate al progetto che si concretizzerà nelle prime giornate di attività didattica a settembre 2024.\r\n\r\nL’ incontro sarà coordinato congiuntamente dalle docenti referenti del progetto: proff. Sprocatti C.  (per il lotto 1) e Orsenigo  B. ( per i lotti 2 e 3).\r\n\r\nUn secondo appuntamento è previsto per martedì 10.9.2024, h 9:30 /11.30 circa.\r\n\r\nSi raccomanda agli studenti tutor di presentarsi all’appuntamento muniti di autorizzazione sul libretto, firmata dai genitori, per trattenersi a scuola.\r\n\r\nLa presenza di ognuno ad entrambi gli appuntamenti è di fondamentale importanza per la buona riuscita del progetto.\r\n\r\nSi ringraziano fin da ora gli studenti tutor che metteranno a disposizione tempo, energie, entusiasmo, intelligenza, desiderio e capacità di collaborazione.\r\n\r\n \r\n\r\nIl Dirigente scolastico\r\n\r\nProf. Angelo Filippo Di Gregorio\r\n\r\nFirma autografa sostituita a mezzo stampa\r\n\r\nai sensi dell’art. 3, comma 2, del D.Lgs. 39/93', '2024-05-11', 23),
(234, '', 'Come programmato, a breve prenderanno avvio le attività previste in azienda per le classi quarte di tutti gli indirizzi. Le classi quinte di alcuni indirizzi completeranno il loro percorso ad avvio dell’anno scolastico successivo, nel mese di settembre 2024.\r\n\r\nSi precisa che le date delle attività in azienda possono subire variazioni a seconda della disponibilità aziendale, sempre in accordo con lo studente.\r\n\r\n Nella tabella qui di seguito riportata sono sinteticamente descritte le attività per PCTO programmate presso le aziende e/o enti:\r\n\r\n \r\n\r\nCalendario PCTO a.s 2023/24 per il triennio\r\n\r\n \r\n \r\n\r\nClasse 4^ 2023/24	Classe 5^ 2024/25\r\nLICEO\r\nLLG\r\n\r\nLSA\r\n\r\n \r\n2 settimane in azienda\r\n\r\ndal 3 giugno al 14 giugno\r\n\r\n \r\n\r\n \r\n \r\n\r\nAttività aula e/o on line, uscite approvate dai CdC\r\n\r\n \r\nAFM, RIM\r\n\r\n \r\n3 SETTIMANE in azienda\r\n\r\ndal 27 maggio al 14 giugno\r\n\r\n \r\n\r\n \r\n2 SETTIMANE azienda\r\n\r\ndal 9 settembre al 20 settembre\r\n\r\n \r\n\r\nAttività aula e/o on line, uscite approvate dai CdC\r\n\r\n \r\nCHIMICO\r\n\r\n \r\n3 SETTIMANE in azienda\r\n\r\ndal 27 maggio al 14 giugno\r\n\r\n \r\n\r\n \r\n2 SETTIMANE azienda\r\n\r\ndal 9 settembre al 20 settembre\r\n\r\n \r\n\r\nAttività aula e/o on line, uscite approvate dai CdC\r\n\r\n \r\nTURISMO\r\n\r\n \r\n4 SETTIMANE in azienda\r\n\r\ndal 27 maggio al 21 giugno\r\n\r\n \r\n\r\n \r\n \r\n\r\nAttività aula e/o on line, uscite approvate dai CdC\r\n\r\n \r\n\r\n \r\nINFORMATICO\r\n\r\n \r\n4 SETTIMANE in azienda\r\n\r\ndal 27 maggio al 21 giugno\r\n\r\n \r\n\r\n \r\n \r\n\r\nAttività aula e/o on line, uscite approvate dai CdC\r\n\r\n \r\nMECCANICO\r\n\r\n \r\n4 SETTIMANE in azienda\r\n\r\ndal 27 maggio al 21 giugno\r\n\r\n \r\n\r\n \r\n \r\n\r\nAttività aula e/o on line, uscite approvate dai CdC\r\n\r\n \r\n\r\n \r\n\r\nIl Dirigente scolastico\r\n\r\nProf. Angelo Filippo Di Gregorio\r\n\r\nFirma autografa sostituita a mezzo stampa\r\n\r\nai sensi dell’art. 3, comma 2, del D.Lgs. 39/93', '2024-05-11', 24),
(236, '7 giugno 2024. Simulazione di emergenza – evento sismico', 'Si rende opportuno effettuare una simulazione di emergenza in cui verificare il comportamento di alunni e personale in caso di evento sismico, la prova è stata programmata per il prossimo 7 giugno 2024 alle ore 10.20, salvo diverse disposizioni dell’ultima ora.\r\n\r\n \r\n\r\nA tale ora suoneranno le campane di tutti i lotti con un suono lungo e continuo, per segnalare l’inizio della simulazione, il comportamento da tenere è il seguente:\r\n\r\n \r\n\r\nQUANDO SOPRAGGIUNGE UNA SCOSSA DI TERREMOTO LA COSA MIGLIORE DA FARE È PROTEGGERSI\r\n\r\n \r\n\r\nPER PROTEGGERSI SI DOVRÀ:\r\n\r\n \r\n\r\nriparare sotto i banchi, le scrivanie, le cattedre tenendo le mani dietro la nuca ed abbassando\r\nla testa tra le ginocchia;\r\n\r\nproteggere la testa con qualunque oggetto utile (anche ad es. una seggiola).\r\nallontanare da finestre o da superfici vetrate;\r\nallontanare da oggetti (ad es. lampadari, proiettori), scaffali o mobili che possono cadere;\r\nsostare in prossimità di strutture (colonne, travi, muri) portanti;\r\nsostare agli angoli delle pareti libere da vetrate o da oggetti appesi;\r\nse possibile si cercherà di aprire la porta del locale al fine di evitare che a seguito della scossa la sua apertura possa diventare difficoltosa.\r\nal termine della scossa si dovrà attendere il consueto suono di evacuazione generale.\r\n \r\n\r\nNON SI DOVRA’ PROCEDERE AUTOMATICAMENTE ALL’EVACUAZIONE DELL’EDIFICIO, MA ATTENDERE DISPOSIZIONI.\r\n\r\nIl personale con incarichi nell’ambito della gestione delle emergenze dovrà radunarsi nell’atrio del piano terra dell’edificio in cui si trova e mettersi a disposizione del DIRIGENTE/COORDINATORE DELL’EMERGENZA.\r\n\r\nIn occasione di questa prova non si procederà all’evacuazione degli edifici, ma si riprenderanno le normali attività didattiche al suono di una seconda e breve campana fuori orario.\r\n\r\nSi chiede cortesemente ai docenti coinvolti nella prova di registrare sul modulo di emergenza presente nel registro tale simulazione, nelle varie aule passeranno gli incaricati del dirigente per ritirare la modulistica compilata.\r\n\r\n \r\n\r\n \r\n\r\nIl Dirigente scolastico\r\n\r\nProf. Angelo Filippo Di Gregorio\r\n\r\nFirma autografa sostituita a mezzo stampa\r\n\r\nai sensi dell’art. 3, comma 2, del D.Lgs. 39/93', '2024-05-11', 25),
(237, 'Incontro con l’Autore, Gabriele Vacis, lunedì 20 maggio, ore 20,45', 'Il Comune di Mariano Comense ha avviato un progetto al quale abbiamo aderito in via preliminare, riguardante la narrativa e il teatro e gli incontri con gli autori.\r\n\r\nIl primo incontro si svolgerà presso la Sala civica di Piazza Roma, in Mariano Comense, lunedì 20 maggio alle ore 20,45.\r\n\r\nL’autore che i nostri docenti e gli studenti potranno incontrare è Gabriele Vacis, scrittore e regista teatrale.\r\n\r\nSi invitano i docenti di Lettere a illustrare ai propri studenti tale iniziativa.\r\n\r\nCordiali saluti.\r\n\r\n \r\n\r\nIl Dirigente scolastico\r\n\r\nProf. Angelo Filippo Di Gregorio\r\n\r\nFirma autografa sostituita a mezzo stampa\r\n\r\nai sensi dell’art. 3, comma 2, del D.Lgs. 39/93', '2024-05-11', 26);

-- --------------------------------------------------------

--
-- Struttura della tabella `classe`
--

CREATE TABLE `classe` (
  `ID` char(6) NOT NULL,
  `idLuogo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dump dei dati per la tabella `classe`
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
-- Struttura della tabella `indirizzamento`
--

CREATE TABLE `indirizzamento` (
  `ID` int(11) NOT NULL,
  `idCircolare` int(11) NOT NULL,
  `idClasse` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dump dei dati per la tabella `indirizzamento`
--

INSERT INTO `indirizzamento` (`ID`, `idCircolare`, `idClasse`) VALUES
(58, 17, '1AAFM'),
(59, 18, '1BCHI'),
(60, 19, '3AINF'),
(61, 20, '4DRIM'),
(62, 23, '5AINF'),
(63, 24, '2AMEC'),
(64, 25, '3BMEC'),
(65, 26, '1AAFM');

-- --------------------------------------------------------

--
-- Struttura della tabella `luogo`
--

CREATE TABLE `luogo` (
  `ID` int(11) NOT NULL,
  `piano` int(11) NOT NULL,
  `lotto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dump dei dati per la tabella `luogo`
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
-- Struttura della tabella `schermo`
--

CREATE TABLE `schermo` (
  `COD` int(11) NOT NULL,
  `idLuogo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dump dei dati per la tabella `schermo`
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
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `circolare`
--
ALTER TABLE `circolare`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk1` (`idLuogo`);

--
-- Indici per le tabelle `indirizzamento`
--
ALTER TABLE `indirizzamento`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idClasse` (`idClasse`),
  ADD KEY `idCircolare` (`idCircolare`);

--
-- Indici per le tabelle `luogo`
--
ALTER TABLE `luogo`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `schermo`
--
ALTER TABLE `schermo`
  ADD PRIMARY KEY (`COD`),
  ADD KEY `idLuogo` (`idLuogo`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `circolare`
--
ALTER TABLE `circolare`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT per la tabella `indirizzamento`
--
ALTER TABLE `indirizzamento`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT per la tabella `luogo`
--
ALTER TABLE `luogo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la tabella `schermo`
--
ALTER TABLE `schermo`
  MODIFY `COD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `classe`
--
ALTER TABLE `classe`
  ADD CONSTRAINT `classe-luogo` FOREIGN KEY (`idLuogo`) REFERENCES `luogo` (`ID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `indirizzamento`
--
ALTER TABLE `indirizzamento`
  ADD CONSTRAINT `FK1` FOREIGN KEY (`idCircolare`) REFERENCES `circolare` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK2` FOREIGN KEY (`idClasse`) REFERENCES `classe` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `schermo`
--
ALTER TABLE `schermo`
  ADD CONSTRAINT `schermo_ibfk_1` FOREIGN KEY (`idLuogo`) REFERENCES `luogo` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
