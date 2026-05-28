-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Máj 28. 06:25
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `sneakerheaven`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `shoes`
--

CREATE TABLE `shoes` (
  `ID` int(11) NOT NULL,
  `Brand` varchar(100) NOT NULL,
  `Model` varchar(100) NOT NULL,
  `Color` varchar(100) NOT NULL,
  `NewPrice` decimal(10,2) NOT NULL,
  `UsedPrice` decimal(10,2) NOT NULL,
  `Image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `shoes`
--

INSERT INTO `shoes` (`ID`, `Brand`, `Model`, `Color`, `NewPrice`, `UsedPrice`, `Image`) VALUES
(1, 'Jordan', '4', 'Bred Remaigned', 320.00, 80.00, 'jordan4bred.jpg'),
(2, 'Jordan', '4', 'Military Black', 210.00, 72.00, 'militaryblack.jpg'),
(3, 'Jordan', '4', 'White Oreo', 210.00, 73.00, 'whiteoreo.jpg'),
(4, 'Jordan', '1', 'Chicago Lost and Found', 170.00, 77.00, 'chicago.jpg'),
(5, 'Nike', 'Air Force 1 Low 07', 'Triple White', 100.00, 60.00, 'af1white.jpg'),
(6, 'Nike', 'Air Force 1 Low 07', 'Triple Black', 100.00, 60.00, 'af1black.jpg'),
(7, 'Adidas', 'Yeezy Foam Runner', 'Onix', 120.00, 86.00, 'onix.jpg'),
(8, 'Adidas', 'Yeezy Boost 350 V2', 'Zebra', 220.00, 168.00, 'zebra.jpg'),
(9, 'Dior', 'B22', 'Black Silver', 1900.00, 1780.00, 'b22.jpg'),
(10, 'Balenciaga', 'Triple S', 'Black Patent', 875.00, 700.00, 'triples.jpg'),
(11, 'Louis Vuitton', 'LV Trainer', 'Blue Black', 1345.00, 1345.00, 'lvtrainer.jpg'),
(12, 'Lanvin', 'Leather Curb', 'Black', 700.00, 700.00, 'lanvin.jpg'),
(13, 'Christian Louboutin', 'Louis Junior Spikes Flat', 'Black', 800.00, 800.00, 'louboutin.jpg');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `shoes`
--
ALTER TABLE `shoes`
  ADD PRIMARY KEY (`ID`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `shoes`
--
ALTER TABLE `shoes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
