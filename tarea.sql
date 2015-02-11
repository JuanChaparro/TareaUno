-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2015 a las 00:12:18
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tarea`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE IF NOT EXISTS `cursos` (
`idCurso` int(11) NOT NULL,
  `nombre` varchar(10000) COLLATE utf8_bin NOT NULL,
  `codigo` varchar(10000) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`idCurso`, `nombre`, `codigo`) VALUES
(1, 'Redes', '100'),
(2, 'Web', '101'),
(3, 'HCI', '102');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota`
--

CREATE TABLE IF NOT EXISTS `nota` (
`idNotas` int(11) NOT NULL,
  `valor` float NOT NULL,
  `idTipo` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `nota`
--

INSERT INTO `nota` (`idNotas`, `valor`, `idTipo`, `idCurso`, `idUsuario`) VALUES
(1, 3.5, 1, 1, 1),
(2, 4, 2, 1, 1),
(3, 4.1, 3, 1, 1),
(4, 3, 1, 2, 1),
(5, 4, 2, 2, 1),
(6, 2, 3, 2, 1),
(7, 4.2, 1, 3, 1),
(8, 3.8, 2, 3, 1),
(9, 4, 3, 3, 1),
(10, 3.8, 1, 1, 2),
(11, 2.5, 2, 1, 2),
(12, 3, 3, 1, 2),
(13, 2, 1, 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_nota`
--

CREATE TABLE IF NOT EXISTS `tipo_nota` (
`idTipo` int(11) NOT NULL,
  `porcentaje` float NOT NULL,
  `nombre` varchar(10000) COLLATE utf8_bin NOT NULL,
  `idCurso` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `tipo_nota`
--

INSERT INTO `tipo_nota` (`idTipo`, `porcentaje`, `nombre`, `idCurso`) VALUES
(1, 0.3, 'Primera entrega', 1),
(2, 0.3, 'Segunda entrega', 1),
(3, 0.4, 'Entrega final', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`idUsuario` int(11) NOT NULL,
  `codigo` varchar(10000) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(10000) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `codigo`, `nombre`) VALUES
(1, '122120642', 'Veronica Alegria'),
(2, '12212063', 'Daniela Delgado'),
(3, '12212062', 'Nathalie Arana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_curso`
--

CREATE TABLE IF NOT EXISTS `usuarios_curso` (
`id` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios_curso`
--

INSERT INTO `usuarios_curso` (`id`, `idUsuario`, `idCurso`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 3),
(6, 3, 1),
(7, 3, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
 ADD PRIMARY KEY (`idCurso`);

--
-- Indices de la tabla `nota`
--
ALTER TABLE `nota`
 ADD PRIMARY KEY (`idNotas`);

--
-- Indices de la tabla `tipo_nota`
--
ALTER TABLE `tipo_nota`
 ADD PRIMARY KEY (`idTipo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`idUsuario`);

--
-- Indices de la tabla `usuarios_curso`
--
ALTER TABLE `usuarios_curso`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
MODIFY `idCurso` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `nota`
--
ALTER TABLE `nota`
MODIFY `idNotas` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `tipo_nota`
--
ALTER TABLE `tipo_nota`
MODIFY `idTipo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `usuarios_curso`
--
ALTER TABLE `usuarios_curso`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
