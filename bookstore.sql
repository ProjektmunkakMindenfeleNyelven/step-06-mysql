-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Jan 07. 05:14
-- Kiszolgáló verziója: 10.4.21-MariaDB
-- PHP verzió: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `bookstore`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `books`
--

CREATE TABLE `books` (
  `bookid` int(11) NOT NULL,
  `cim` varchar(200) COLLATE utf8_hungarian_ci NOT NULL,
  `szerzo` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL,
  `oldalszam` int(11) NOT NULL,
  `kep` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `tipus` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `books`
--

INSERT INTO `books` (`bookid`, `cim`, `szerzo`, `ar`, `oldalszam`, `kep`, `tipus`) VALUES
(1, 'Kísértetjárás északi vizeken', 'C. J. Cooke', 5490, 376, 'kisertet.jpg', 'Regény'),
(2, 'Galaktika 417', 'Több', 1895, 112, 'galaktika-417.jpg', 'Magazin'),
(3, 'Galaktika 416', 'Több', 1895, 112, 'galaktika-416.jpg', 'Magazin'),
(4, 'Zavar', 'Steinar Bragi', 5490, 280, 'zavar.jpg', 'Regény'),
(5, 'A tövisek útja', 'A. G. Slatter', 6165, 364, 'tovisek.jpg', 'Regény'),
(6, 'Galaktika 415', 'Több', 1895, 112, 'galaktika-415.jpg', 'Magazin'),
(7, 'Lucky Luke 48', 'René Goscinny', 2849, 46, 'lucky-48.jpg', 'Képregény'),
(8, 'S.T.A.L.K.E.R. Rendhagyó vakáció', 'Alekszej Graveckij', 5490, 304, 'stalker.jpg', 'Regény'),
(9, 'Lucky Luke 49', 'Lo Hartog Van Banda', 2849, 48, 'lucky-49.jpg', 'Képregény'),
(10, 'Zenit', 'Piia Leino', 5490, 248, 'zenit.jpg', 'Regény'),
(11, 'Galaktika 414', 'Több', 1895, 112, 'galaktika-414.jpg', 'Magazin'),
(12, 'Lucky Luke 50', 'Jul', 2849, 48, 'lucky-50.jpg', 'Képregény');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `nev` varchar(200) COLLATE utf8_hungarian_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `jelszo` varchar(200) COLLATE utf8_hungarian_ci NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`userid`, `nev`, `email`, `jelszo`, `isAdmin`) VALUES
(1, 'asd', 'asd@asd.com', '$2b$10$HTQitAcew7mPlrTeF9IHneNXMbOd2wJsKa/AU.Ci1PuIEotmsFoVq', 0),
(2, 'admin', 'admin@gmail.com', '$2b$10$h9cEW1QBEhJ0Y2v22I313uH46TzaC59Ffny1dTvCwxnfShoF8.aW.', 1);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookid`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `books`
--
ALTER TABLE `books`
  MODIFY `bookid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
