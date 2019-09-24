-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Set 24, 2019 alle 15:07
-- Versione del server: 10.4.6-MariaDB
-- Versione PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `distibutore`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `drink`
--

CREATE TABLE `drink` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `brand` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `price` float(4,2) NOT NULL,
  `expiry` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `drink`
--

INSERT INTO `drink` (`id`, `name`, `brand`, `price`, `expiry`) VALUES
(1, 'Te al limone', 'fuze tea', 1.40, '2020-10-25'),
(2, 'Te alla pesca', 'fuze tea', 2.10, '2020-10-11'),
(3, 'sprite lemon', 'coca-cola', 1.10, '2021-01-05'),
(4, 'fanta', 'coca-cola', 1.10, '2020-04-15'),
(5, 'red bull', 'red bull', 2.50, '2021-11-20');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `drink`
--
ALTER TABLE `drink`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `drink`
--
ALTER TABLE `drink`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
