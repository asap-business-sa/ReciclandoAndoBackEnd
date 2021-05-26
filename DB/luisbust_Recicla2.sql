-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 18-04-2021 a las 02:48:42
-- Versión del servidor: 5.7.33
-- Versión de PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `luisbust_Recicla2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localizacion`
--

CREATE TABLE `localizacion` (
  `id` int(11) NOT NULL,
  `usernameID` varchar(100) NOT NULL,
  `latitud` varchar(100) NOT NULL,
  `longitud` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacionDonador`
--

CREATE TABLE `ubicacionDonador` (
  `id` int(11) NOT NULL,
  `usernameID` varchar(100) NOT NULL,
  `latitud` varchar(100) NOT NULL,
  `longitud` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ubicacionDonador`
--

INSERT INTO `ubicacionDonador` (`id`, `usernameID`, `latitud`, `longitud`) VALUES
(73, 'Majosandoval2413', '-2.0242135', '-79.9402173'),
(72, 'Majosandoval2413', '-2.0242135', '-79.9402173'),
(71, 'luis95', '-2.1721166', '-79.8808618'),
(183, 'Majosandoval2413', '-2.0242135', '-79.9402173'),
(182, 'Majosandoval2413', '-2.0242135', '-79.9402173'),
(195, 'Majosandoval2413', '-2.0242135', '-79.9402173');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(300) NOT NULL,
  `typeuser` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`, `email`, `typeuser`) VALUES
(1, 'Bob Marley', 'user1', '$2y$10$ShXutEuHXaIoDcSpRtguGOV2P7aaYbr/7QQLCbOfvtZzZjRULu5im', 'bob@gmail.com', 'Reciclador'),
(2, 'Meri cleud', 'meri', '$2y$10$iwllGYGmBYnyUL38iJIMZuCugspL4w9o7JpqVvAqw7AANCbEmqxzy', 'Meri.cleud@gmail.com', 'Donador'),
(3, 'Luis Bustamante', 'user3', '$2y$10$TTLdwJsmSDct.qdNVuwF0eGtvlBTpfQuKzSzgAbUWI6PFmw.xZ3VS', 'luis@gmail.com', 'Donador'),
(4, 'haru', 'user2', '$2y$10$TKBPFZzsopwOAe/d1bhSRu3yiMcVSTChe7gYLr7VQtLno8lQjalPi', 'haru@gmail.com', 'Reciclador'),
(5, 'juanito alimaÃ±a', 'juanito', '$2y$10$wSqrw2x6fsL5kcJ5vsX9senYjXEMAAAHVa18ZrLMTwrtEQDzUoolW', 'juanito.alimaÃ±a@hotmail.com', 'Donador'),
(6, 'asdasd adada', 'usuario', '$2y$10$Z/1BfC/0CEaGmlmUYRK4K.GYSybpsblxbXyBIlTFePidimlNEFfea', 'usuario@gmail.com', 'Reciclador'),
(7, 'adad', 'lalala', '$2y$10$/4EG.G7VtEybWx7BzQ/5ru/V1rLJL9nKskqkORRq05gpHAamTgS4.', 'lalala@gmail.com', 'Reciclador'),
(8, 'amaru', 'amaru', '$2y$10$F84Pjmf1GBZ59wcrcu/yMOG3/qJrAo4CdE0sFVwr8btaRp1fV2yHW', 'amaru@hotmail.com', 'Donador'),
(9, 'prueba uno', 'prueba1', '$2y$10$jGRt9RtNFlWhfuqO08GB4.P9x9OQi2.CzSFjUzM8ISmuCkukq5yhS', 'prueba1@hotmail.com', 'Donador'),
(10, 'lololo', 'lololo', '$2y$10$IX5LjOtcHIMhpSlfMkbsBOcCBgGV0H2GZo9ptYmBoChB/Xey1YfXa', 'lolo@gmail.com', 'Donador'),
(11, 'Adsfsdf', 'qqq', '$2y$10$Blhh9TL2tQcgTe43EtIG/.tmQ5JvnV4NOI78YGcVp1lj3z5s.5IeK', 'dasdasdsd', 'Reciclador'),
(12, 'Michael Jackson ', 'michael', '$2y$10$kzUUjJx6ACuW2PdhpPpL9uAh3nmo7lXZq/xTMZOY17AJv2M2wNMFO', 'michael.j@gmail.com', 'Donador'),
(13, 'Carl jhonson', 'carl', '$2y$10$7Ymd/1Gr3X.JjwfSavrdIOI2zscu82JBsfbRV.ZkSzs0SMRReSxwG', 'carl@hotmail.com', 'Donador'),
(14, 'Andrea Selena', 'Aslsgato ', '$2y$10$FHZJR07l8Xg2FIp0iVxaxeME/ezncoK.TV04E2Ezgh8e4yl7Lbf16', 'andreasls9611@gmail.com', 'Donador'),
(15, 'Leonel Velez', 'leonel', '$2y$10$a8.A8VPNoB/hgxkBPaUhbun4BIk.gUnQK79exAZGjMwjQ3NPH5SFW', 'leonel@hotmail.com', 'Donador'),
(16, 'kiko', 'kiko', '$2y$10$y0OJ3DchjTqUubDgoY6Zcu.giOs5uZ/gF53RfKJaP3MuLpxdaHc/W', 'kiko@gmail.com', 'Reciclador'),
(17, 'Michael Leon', 'maicol499', '$2y$10$MUGnlAODqVQQBaRLMdzkre19k0qK0Gqa6qWDh2xlmNJrpm8Iqsza6', 'mafranco-12@hotmail.com', 'Donador'),
(18, 'Michael Leon', 'maicol498', '$2y$10$us3LctKJSwVi5P3PYpIxdeG99XhnTXjmJ/DwIlGg3ZUuCOhFQp.sO', 'maicoleon-12@hotmail.com', 'Reciclador'),
(19, 'Luis Bustamante ', 'lucho', '$2y$10$lf4SlNWrrHzNhg4P21AEzu/69dGIhFIhD6HMrot/uD3UahQ4N/fRy', 'lucho95@gmail.com', 'Donador'),
(20, 'MarÃ­a JosÃ© Sandoval ProaÃ±o ', 'majosandoval24', '$2y$10$DwgQuGh/gjpsFP02W1AkHuKjFb.xEoTlhDhTLJUtmgh2XnuQFLSjK', 'majosandoval24@gmail.com ', 'Reciclador'),
(21, 'Luis Bustamante ', 'luis', '$2y$10$0lGgGcGDD7ORor2nDt3f6etsnpbhrF6w.ym1gz6P9RP.5lJ3TkgVa', 'Luis@lalala.com', 'Reciclador'),
(22, 'AndrÃ©s ', 'andres', '$2y$10$.4WmvKNffjvnKtpQlWNqJ.9CEKyDE0yJ2qvxaBmWjxxqVW/y.dcCq', 'AndrÃ©s@gmail.com', 'Donador'),
(23, 'luisandres ', 'luis95', '$2y$10$mQVplNVPm5qcJuLDlPO9tu/re3sd6Z7DzkO7Fw8g0qR1Z6or3kAfe', 'Luis95@gmail.com', 'Donador'),
(24, 'hsjskdhavs', 'lucho95', '$2y$10$IOSXSWP80pUeC48blNmOXOk41DUPSmof8ZKaGMQfOgE3Y2P/L9dcy', 'Sidney@yahoo.com', 'Donador'),
(25, 'MarÃ­a JosÃ© Sandoval ProaÃ±o ', 'Majosandoval2413', '$2y$10$PIeC4.p6WF4QqhSN5lAiu.7FEgMFoIP.qOesM4t0z.FakSSB2iRe6', 'maryjo_sandoval@hotmail.com ', 'Donador'),
(26, 'wjdkwkw ekfjwj', 'prueba 123', '$2y$10$ZVM6.t7qYqnsY0fbTga7tubHZpahEVwDFTn8uKZbfKraywlAEe.He', 'Sadr@gmail.com', 'Donador');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `localizacion`
--
ALTER TABLE `localizacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ubicacionDonador`
--
ALTER TABLE `ubicacionDonador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `localizacion`
--
ALTER TABLE `localizacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `ubicacionDonador`
--
ALTER TABLE `ubicacionDonador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
