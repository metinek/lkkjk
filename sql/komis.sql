-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 28 Maj 2023, 09:38
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `komis`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auta`
--

CREATE TABLE `auta` (
  `id` int(11) NOT NULL,
  `marka` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL,
  `model` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL,
  `cena` int(11) NOT NULL,
  `foto` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL,
  `czyPromowane` tinyint(1) NOT NULL,
  `rocznik` int(11) NOT NULL,
  `przebieg` int(11) NOT NULL,
  `opis` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `auta`
--

INSERT INTO `auta` (`id`, `marka`, `model`, `cena`, `foto`, `czyPromowane`, `rocznik`, `przebieg`, `opis`) VALUES
(1, 'Ford', 'Focus', 12000, 'a1.png', 1, 2010, 250000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su'),
(2, 'Opel', 'Astra', 15000, 'a2.png', 1, 0, 0, ''),
(3, 'Citroen', 'Berlingo', 9000, 'a3.jpg', 0, 0, 0, ''),
(4, 'Opel', 'Zafira', 10000, 'a4.png', 1, 0, 0, ''),
(5, 'Renault', 'Laguna', 8000, 'a5.jpg', 0, 0, 0, ''),
(6, 'ford', 'Mondeo', 8000, 'a6.png', 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `foto`
--

CREATE TABLE `foto` (
  `id` int(11) NOT NULL,
  `auto` int(11) NOT NULL,
  `foto` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `foto`
--

INSERT INTO `foto` (`id`, `auto`, `foto`) VALUES
(1, 1, 'a1.png'),
(2, 1, 'a2.png'),
(3, 1, 'a1.png'),
(4, 1, 'a2.png'),
(5, 1, 'a3.png'),
(6, 1, 'a4.png');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `auta`
--
ALTER TABLE `auta`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `auta`
--
ALTER TABLE `auta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `foto`
--
ALTER TABLE `foto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
