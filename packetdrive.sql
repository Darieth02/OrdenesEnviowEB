-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-07-2023 a las 19:11:55
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `packetdrive`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envios`
--

CREATE TABLE `envios` (
  `id_envio` int(11) NOT NULL,
  `remitente` varchar(200) NOT NULL,
  `receptor` varchar(200) NOT NULL,
  `descripcion_envio` varchar(500) NOT NULL,
  `peso` varchar(10) NOT NULL,
  `precio` varchar(100) NOT NULL,
  `calle` varchar(50) NOT NULL,
  `numero` int(11) NOT NULL,
  `colonia` varchar(50) NOT NULL,
  `municipio` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `cp` varchar(50) NOT NULL,
  `seguimiento` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `envios`
--

INSERT INTO `envios` (`id_envio`, `remitente`, `receptor`, `descripcion_envio`, `peso`, `precio`, `calle`, `numero`, `colonia`, `municipio`, `estado`, `pais`, `cp`, `seguimiento`) VALUES
(5, 'Darieth', 'yo', 'Pelota', '1KG', '1000', 'Agua Marina', 44, 'Villas de la Cantera', 'Tepic', 'Nayarit', 'México', '63173', 'L9345345DI'),
(6, 'Darieth', 'yo', 'Pelota', '1KG', '1000', 'Agua Marina', 44, 'Villas de la Cantera', 'Tepic', 'Nayarit', 'México', '63173', 'R1527011GH'),
(7, 'Darieth', 'yo', 'Pelota', '1KG', '1000', 'Agua Marina', 44, 'Villas de la Cantera', 'Tepic', 'Nayarit', 'México', '63173', 'U2463034OL'),
(8, 'Darieth', 'Rafael', 'Pelota', '1KG', '100', 'Agua Marina', 44, 'Villas de la Cantera', 'Tepic', 'Nayarit', 'México', '63173', 'D2644649CC'),
(9, 'Darieth', 'Yo', 'Pelota', '10KG', '100', 'Agua Marina', 44, 'Villas de la Cantera', 'Tepic', 'Nayarit', 'México', '63173', 'R3820875TK');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(500) DEFAULT NULL,
  `apellidos` varchar(500) DEFAULT NULL,
  `edad` int(100) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `contraseña` varchar(255) DEFAULT NULL,
  `tipo_usuario` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id_usuario`, `nombre`, `apellidos`, `edad`, `correo`, `contraseña`, `tipo_usuario`) VALUES
(3, 'Administrador', 'Admin', 21, 'admin123@gmail.com', 'Admindetodo1', 'admin'),
(4, 'Juan', 'Gonzalez', 25, 'juanito1@gmail.com', 'Juanito123@', 'usuario');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `envios`
--
ALTER TABLE `envios`
  ADD PRIMARY KEY (`id_envio`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `envios`
--
ALTER TABLE `envios`
  MODIFY `id_envio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
