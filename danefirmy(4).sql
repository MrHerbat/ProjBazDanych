-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2025 at 11:21 AM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `danefirmy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `IdKlienta` int(20) NOT NULL,
  `ImieKlienta` varchar(100) DEFAULT NULL,
  `NazwiskoKlienta` varchar(100) DEFAULT NULL,
  `OsobaKontaktowa` varchar(100) DEFAULT NULL,
  `Adres` varchar(100) DEFAULT NULL,
  `Miasto` varchar(100) DEFAULT NULL,
  `KodPocztowy` varchar(100) DEFAULT NULL,
  `panstwo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `klienci`
--

INSERT INTO `klienci` (`IdKlienta`, `ImieKlienta`, `NazwiskoKlienta`, `OsobaKontaktowa`, `Adres`, `Miasto`, `KodPocztowy`, `panstwo`) VALUES
(1, 'Alfred', 'Smokobojca', 'zabojcasmokownawynajecie@gmail.com 123456789', 'al. Jana Pawła II 18', 'Warszawa', '00-116', 'Polska'),
(2, 'Jakub', 'Misiewicz', 'kubamisiewicz808@gmail.com 504725906', 'Adama Mickiewicza 2', 'Szczecin', '70-384', 'Polska'),
(3, 'Dawid', 'Malik', 'dawidmalik777@gmail.com 530259857', 'Bohaterów Monte Cassino 29', 'Sopot', ' 81-767', 'Polska'),
(4, 'Tom', 'Muller', 'muller_tom@gmail.com 537964214', 'Möllendorffstraße 115', 'Berlin', ' 10367', 'Niemcy'),
(5, 'Helga', 'Schmidt', 'helga-schmidt@gmail.com 379042686', 'Eidelstedter Weg', 'Hamburg', ' 20255', 'Niemcy'),
(6, 'Hans', 'Meyer', 'meyerhans@gmail.com 974582568', 'Keuslinstraße 16', 'Monachium', '80798', 'Niemcy'),
(7, 'Emanuel', 'Macrone', 'emanuelmacrone123@gmail.com 247586458', '6 Rue de Fornier', 'Marsylia', '13010', 'Francja'),
(8, 'Marin', 'Lepeen', 'marinlepeen@gmail.com 247586739', 'Bd Gabriel Koenigs', 'Tuluza', '31300', 'Francja'),
(9, 'Michele', 'Macre', 'macremichele2137@gmail.com 213769420', '36 Rue Michel-Ange', 'Nicea', '06100', 'Francja'),
(10, 'John', 'Johnson', 'johnjohnson@gmail.com 475853468', '1600 Pennsylvania Avenue NW', 'Washington', '20500', 'USA'),
(11, 'Karen', 'Asaos', 'verymadkaren@gmail.com 435686364', '4041 N 15th Ave', 'Phoenix', '85015', 'USA'),
(12, 'John', 'Paul', 'pauloss_officialchannel@gmail.com 354697465', 'Clinton & Grenshaw, 1132 S Clinton St', 'Chicago', '60607', 'USA');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `IdKlienta` int(11) DEFAULT NULL,
  `IdZamowienia` int(11) DEFAULT NULL,
  `DataZamowienia` date DEFAULT NULL,
  `WartoscZamowienia` double DEFAULT NULL,
  `Miasto` text DEFAULT NULL,
  `Kraj` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zamowienia`
--

INSERT INTO `zamowienia` (`IdKlienta`, `IdZamowienia`, `DataZamowienia`, `WartoscZamowienia`, `Miasto`, `Kraj`) VALUES
(1, 1, '2009-01-24', 24.5, 'Kraków', 'Polska'),
(2, 2, '2017-06-29', 29.99, 'Gniezno', 'Polska'),
(3, 3, '2013-02-16', 9.5, 'Zakopane', 'Polska'),
(4, 4, '2018-07-11', 50.7, 'Nuremberg', 'Niemcy'),
(5, 5, '2022-10-05', 99.65, 'Furth', 'Niemcy'),
(6, 6, '2006-02-09', 18.86, 'Stuttgart', 'Niemcy'),
(7, 7, '2017-02-02', 86, 'Lyon', 'Francja'),
(8, 8, '2023-05-18', 43.82, 'Awinion', 'Francja'),
(9, 9, '2010-02-12', 24.52, 'Grenoble', 'Francja'),
(10, 10, '2021-07-01', 25.51, 'Nowy York', 'USA'),
(11, 11, '2024-12-08', 85.62, 'San Francisco', 'USA'),
(12, 12, '2024-08-20', 75.25, 'Austin', 'USA');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`IdKlienta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
