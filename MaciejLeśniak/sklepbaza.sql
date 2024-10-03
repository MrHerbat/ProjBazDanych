-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Paź 03, 2024 at 11:25 AM
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
-- Database: `sklepbaza`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `category` int(1) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `description`, `name`, `image`, `category`, `price`) VALUES
(1, 'G.SKILL AEGIS oferuje natychmiastowy wzrost wydajności i stabilności dla wszystkich systemów gier PC. Pamięci tej serii to jeden z najprostszych i najbardziej efektywnych kosztowo sposobów, aby uaktualnić swoje wrażenia w grach. Niezależnie czy jest to gra typu first-person shooter (FPS), strategia czasu rzeczywistego (RTS) czy nawet MMORPG, pamięci G.SKILL Aegis wyzwolą prawdziwą moc Twojego systemu gier bez względu na to w jakie gry grasz!', 'G.SKILL 16GB (2x8GB) 3200MHz CL16 Aegis', 'https://cdn.x-kom.pl/i/setup/images/prod/big/product-new-big,,2020/1/pr_2020_1_16_15_27_23_437_02.jpg', 0, 125),
(2, 'Obudowa Silver Monkey Crate to efektowna i efektywna konstrukcja, przeznaczona dla fanów kolorowego podświetlenia i najwyższej jakości. Przedni (wymienny) i boczny panel ze szkła hartowanego pozwolą Ci wyeksponować swoją gamingową konfigurację. Trzy wentylatory ARGB PWM zapewnią wydajne chłodzenie wszystkich podzespołów, a przy tym rozświetlą wnętrze obudowy stylowym blaskiem. Kolory i efekty możesz zmieniać według własnego gustu za sprawą kontrolera LED.', 'Silver Monkey X Crate', 'https://cdn.x-kom.pl/i/setup/images/prod/big/product-new-big,,2023/6/pr_2023_6_23_9_35_20_331_00.jpg', 0, 379),
(3, 'Korzystaj bez kompromisów z wydajności procesorów AMD Ryzen 3. generacji, dołączając do elitarnego grona posiadaczy sprzętu sygnowanego marką AORUS. Napędzana chipsetem B450 płyta główna Gigabyte B450 AORUS ELITE V2 umożliwia również wykorzystanie zintegrowanych z CPU układów graficznych AMD Vega. Cztery sloty DIMM obsłużą moduły DDR4 o taktowaniu nawet 3600 MHz (O.C.), a slot M.2 umożliwi podłączenia najszybszych dysków SSD na rynku.', 'Gigabyte B450 AORUS ELITE V2', 'https://cdn.x-kom.pl/i/setup/images/prod/big/product-new-big,,2020/11/pr_2020_11_21_9_40_53_487_04.jpg', 0, 379);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `isAdmin`) VALUES
(1, 'admin', 'admin', 1),
(2, 'user', 'user', 0),
(3, 'user2', 'user2', 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
