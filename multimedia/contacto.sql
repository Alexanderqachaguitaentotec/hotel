-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-05-2024 a las 15:56:19
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `contacto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `edad` int(11) NOT NULL,
  `genero` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `nombre`, `apellido`, `email`, `telefono`, `edad`, `genero`) VALUES
(1, 'Alexander', 'Quiñones Angulo', 'alexanderqa@hotmail.es', '3212783143', 30, 'Masculino'),
(2, 'juan palermo', 'Quiñones Angulo', 'juanpalermo@gmail.com', '3212783143', 30, 'Masculino'),
(3, 'Alexander', 'Quiñones Angulo', 'ALEXQA126@GMAILC.OM', '3212783143', 30, 'Masculino'),
(4, 'Alexander', 'Quiñones Angulo', 'alexqa126@gmail.com', '3212783143', 30, 'Masculino'),
(5, 'Alexander', 'Quiñones Angulo', 'alexanderqa@hotmail.es', '3212783143', 30, 'Masculino'),
(6, 'Alexander', 'Quiñones Angulo', 'alexanderqa@hotmail.es', '3212783143', 30, 'Masculino'),
(7, 'Alexander', 'Quiñones Angulo', 'alexanderqa@hotmail.es', '3212783143', 30, 'Masculino'),
(8, 'Alexander', 'Quiñones Angulo', 'alexanderqa@hotmail.es', '3212783143', 30, 'Masculino'),
(9, 'Alexander', 'Quiñones Angulo', 'alexanderqa@hotmail.es', '3212783143', 30, 'Masculino'),
(10, 'Alexander', 'Quiñones Angulo', 'alexanderqa@hotmail.es', '3212783143', 30, 'Masculino'),
(11, 'Alexander', 'Quiñones Angulo', 'alexqa125@gmail.com', '3212783143', 30, 'Masculino'),
(12, 'Alexander', 'Quiñones Angulo', 'alexqa125@gmail.com', '3212783143', 30, 'Masculino'),
(13, '', '', '', '', 0, ''),
(14, 'Alexander', 'Quiñones Angulo', 'alexqa126@gmail.com', '3212783143', 30, 'Masculino'),
(15, 'Alexander', 'Quiñones Angulo', 'ALEXQA126@GMAILC.OM', '3212783143', 30, 'Femenino');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
