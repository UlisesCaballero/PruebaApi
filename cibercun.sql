-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-09-2021 a las 00:25:18
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cibercun`
--
CREATE DATABASE IF NOT EXISTS `cibercun` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cibercun`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `idCliente` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `correo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idCliente`, `nombre`, `apellido`, `telefono`, `correo`) VALUES
(1, 'Braulio', 'Marquez', '9512444264', 'n/a'),
(2, 'Marcos', 'Arias', '9981222078', 'n/a'),
(3, 'Guadalupe', 'Niento Omedo', '9981838055', 'n/a'),
(4, 'Guadalupe', 'Molasco', '9211792254', 'n/a'),
(5, 'Hector', 'Ballejo', '9982237120', 'n/a'),
(6, 'Claudio', 'Rangel', '9981534429', 'n/a'),
(7, 'Patricia', 'Gutierrez', '9982127922', 'n/a'),
(8, 'Manuel', 'Gonzalez', '9981094016', 'n/a'),
(9, 'Israel', 'Gailardo', '9981259613', 'n/a'),
(10, 'Mario', 'Cordoba', '9984408183', 'n/a'),
(11, 'Fatima', 'Pool', '9983115600', 'n/a'),
(12, 'as', 'as', '1', 'as');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradaproducto`
--

DROP TABLE IF EXISTS `entradaproducto`;
CREATE TABLE `entradaproducto` (
  `idProducto` int(11) NOT NULL,
  `idClienteP` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `marca` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `noSerie` varchar(255) NOT NULL,
  `fallo` varchar(255) NOT NULL,
  `diagnostico` varchar(255) NOT NULL,
  `anticipo` varchar(100) NOT NULL,
  `fechaEntrada` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `entradaproducto`
--

INSERT INTO `entradaproducto` (`idProducto`, `idClienteP`, `nombre`, `marca`, `modelo`, `noSerie`, `fallo`, `diagnostico`, `anticipo`, `fechaEntrada`) VALUES
(1, 2, 'Laptop', 'Apple Mac', 'Macbook', '232', 'Cambio de teclado', 'Remplazo de teclado', '$0.00', '2021-06-23'),
(2, 1, 'Laptop', 'Apple Mac', 'MacBook', '232', 'Cambio de teclado y cable flex', 'El teclado no funciona', '$1,750.00', '2021-09-12'),
(3, 4, 'Celular', 'Samsung', 'Grand Prime', '231', 'Cambio de lógica', 'La lógica esta dañada', '$0.00', '2021-09-02'),
(4, 5, 'Computadora', 'Gygabyte', 'GB23', 'SN 200 663 084', 'Sin S.O', 'No tiene S.O', '$0.00', '2021-02-12'),
(5, 6, 'Laptop', 'Acer', 'Nx M96 AL00 B22', '2323', 'Revisión ', 'Revisión ', '$0.00', '2021-02-21'),
(6, 7, 'Celular', 'Huawei', 'ACS2 - L03', '3231', 'Revisión ', 'Revisión', '$0.00', '2021-03-21'),
(7, 8, 'Disco duro', 'Toshiba', '123', '1313', 'Respaldo de información', 'El disco duro esta muy dañado', '$0.00', '2021-03-12'),
(8, 9, 'Celular', 'Apple', 'Ipod', '332', 'No enciende', 'Batería dañada', '$0.00', '2021-07-21'),
(9, 10, 'Laptop', 'Hp', 'Hp', '00194 403 701 791', 'Revisión', 'Tarjeta madre dañada', '$0.00', '2021-07-05'),
(10, 11, 'Laptop', 'Sony', 'Vaio', '2752 7841 800 4288', 'Actualización y teclado dañado', 'Tiene manchas de cafe', '$0.00', '2021-09-02'),
(11, 9, 'sxsa', 'sada', 'sds', 'ds', 'sd', 'ad', 'wds', '2021-09-06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salidaproducto`
--

DROP TABLE IF EXISTS `salidaproducto`;
CREATE TABLE `salidaproducto` (
  `idSalida` int(11) NOT NULL,
  `idClienteS` int(11) NOT NULL,
  `idProductoS` int(11) NOT NULL,
  `fechaSalida` date NOT NULL,
  `diagnosticoFinal` varchar(255) NOT NULL,
  `observaciones` varchar(255) NOT NULL,
  `precio` varchar(100) NOT NULL,
  `garantia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `salidaproducto`
--

INSERT INTO `salidaproducto` (`idSalida`, `idClienteS`, `idProductoS`, `fechaSalida`, `diagnosticoFinal`, `observaciones`, `precio`, `garantia`) VALUES
(2, 11, 10, '2021-09-03', 'Mantenimiento preventivo e instalación de S.O', 'Tenía manchas de café y estaba sucia', '$950.00', 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY `nombre` (`nombre`),
  ADD KEY `nombre_2` (`nombre`),
  ADD KEY `idCliente` (`idCliente`),
  ADD KEY `apellido` (`apellido`);

--
-- Indices de la tabla `entradaproducto`
--
ALTER TABLE `entradaproducto`
  ADD PRIMARY KEY (`idProducto`),
  ADD KEY `idCliente` (`idClienteP`),
  ADD KEY `nombreCliente` (`idClienteP`),
  ADD KEY `datosCliente` (`idClienteP`),
  ADD KEY `idCliente_2` (`idClienteP`);

--
-- Indices de la tabla `salidaproducto`
--
ALTER TABLE `salidaproducto`
  ADD PRIMARY KEY (`idSalida`),
  ADD KEY `idSalida` (`idSalida`),
  ADD KEY `idSalida_2` (`idSalida`),
  ADD KEY `idProducto` (`idProductoS`),
  ADD KEY `idCliente` (`idClienteS`),
  ADD KEY `nombreCliente` (`idClienteS`),
  ADD KEY `idCliente_2` (`idClienteS`),
  ADD KEY `idEntrada` (`idClienteS`),
  ADD KEY `idCliente_3` (`idClienteS`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `entradaproducto`
--
ALTER TABLE `entradaproducto`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `salidaproducto`
--
ALTER TABLE `salidaproducto`
  MODIFY `idSalida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `entradaproducto`
--
ALTER TABLE `entradaproducto`
  ADD CONSTRAINT `entradaproducto_ibfk_1` FOREIGN KEY (`idClienteP`) REFERENCES `clientes` (`idCliente`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `salidaproducto`
--
ALTER TABLE `salidaproducto`
  ADD CONSTRAINT `salidaproducto_ibfk_1` FOREIGN KEY (`idClienteS`) REFERENCES `clientes` (`idCliente`) ON UPDATE CASCADE,
  ADD CONSTRAINT `salidaproducto_ibfk_2` FOREIGN KEY (`idProductoS`) REFERENCES `entradaproducto` (`idProducto`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
