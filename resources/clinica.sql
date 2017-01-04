-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-01-2017 a las 08:31:07
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clinica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita`
--

CREATE TABLE `cita` (
  `idCita` int(10) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` int(11) NOT NULL,
  `Medicamento1` varchar(30) DEFAULT NULL,
  `Medicamento2` varchar(30) DEFAULT NULL,
  `Medicamento3` varchar(30) DEFAULT NULL,
  `Medicamento4` varchar(30) DEFAULT NULL,
  `idPaciente` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `idInventario` int(5) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Cantidad` int(8) UNSIGNED ZEROFILL NOT NULL,
  `Precio` float UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medico`
--

CREATE TABLE `medico` (
  `idMedico` int(3) NOT NULL,
  `RFC` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `medico`
--

INSERT INTO `medico` (`idMedico`, `RFC`) VALUES
(5, 'asdfghjklq1234567893'),
(6, 'mczxczx65132');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `idPaciente` int(4) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `APaterno` varchar(20) NOT NULL,
  `AMaterno` varchar(20) NOT NULL,
  `Edad` int(3) NOT NULL,
  `TipoSangre` varchar(2) NOT NULL,
  `Domicilio` varchar(45) NOT NULL,
  `Correo` varchar(35) NOT NULL,
  `Telefono` varchar(14) NOT NULL,
  `Alergias` varchar(45) NOT NULL,
  `Historial` varchar(1000) NOT NULL,
  `idMedico` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`idPaciente`, `Nombre`, `APaterno`, `AMaterno`, `Edad`, `TipoSangre`, `Domicilio`, `Correo`, `Telefono`, `Alergias`, `Historial`, `idMedico`) VALUES
(4, 'FERNANDA', 'DE LA HUERTA', 'JIMENEZ', 54, 'A-', 'PITAGORAS 1000 COL DEL VALLE', 'FERHJ@HOTMAIL.COM', '555642367', 'CLONAZEPAN', 'ESTO ES UN HISTORIAL', 5),
(5, 'JUANITO', 'GUITIERRZ', 'FICGU', 57, 'A-', 'MARUZALEN 121', 'JAHD@LIVE.COM', '555642367', 'NINGUNA', 'ESTO ES UN HISTORIAL', 6),
(6, 'PANCHITO', 'RODRIGUEZ', 'JIMENEZ', 57, 'O+', 'JAM JAM 12', 'TRIPI@LIVE.COM', '6771276', 'PERROS', 'ESTO ES UN HISTORIAL', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `RFC` varchar(20) NOT NULL,
  `Nombre` varchar(15) NOT NULL,
  `APaterno` varchar(20) NOT NULL,
  `AMaterno` varchar(20) NOT NULL,
  `Correo` varchar(35) NOT NULL,
  `Telefono` varchar(14) NOT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Usuario` varchar(20) NOT NULL,
  `Contra` varchar(20) NOT NULL,
  `Admin` varchar(1) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`RFC`, `Nombre`, `APaterno`, `AMaterno`, `Correo`, `Telefono`, `Direccion`, `Usuario`, `Contra`, `Admin`) VALUES
('asdfghjklq1234567893', 'Rodolfo', 'Martinez', 'Soza', 'asdasada@gmail.com', '55103648', 'lsdnfldsfnjsdnfjkds sdfjsdnfjsdnfjkds ', 'ads', '123456', '1'),
('mczxczx65132', 'Luis', 'LAra', 'Mata', 'popqwieqop@hotmail.com', '55321649', 'qwuehqwoeqw wqpoeqpo', 'tpo', '798465', '0'),
('qwoeuq213', 'Angel', 'Rdz', 'Mdz', 'qwieoqwoie@hotmail.com', '65482317', 'qwoewq poqwiepq', 'qwpo', '123asdasd', '0');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cita`
--
ALTER TABLE `cita`
  ADD PRIMARY KEY (`idCita`),
  ADD UNIQUE KEY `idCita_UNIQUE` (`idCita`),
  ADD UNIQUE KEY `Fecha_UNIQUE` (`Fecha`),
  ADD UNIQUE KEY `Hora_UNIQUE` (`Hora`),
  ADD KEY `fk_Cita_Paciente1_idx` (`idPaciente`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`idInventario`),
  ADD UNIQUE KEY `idInventario_UNIQUE` (`idInventario`);

--
-- Indices de la tabla `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`idMedico`),
  ADD KEY `RFC_idx` (`RFC`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`idPaciente`),
  ADD UNIQUE KEY `idPaciente_UNIQUE` (`idPaciente`),
  ADD KEY `idMedico_idx` (`idMedico`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`RFC`),
  ADD UNIQUE KEY `RFC_UNIQUE` (`RFC`),
  ADD UNIQUE KEY `Usuario_UNIQUE` (`Usuario`),
  ADD UNIQUE KEY `Contra_UNIQUE` (`Contra`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cita`
--
ALTER TABLE `cita`
  MODIFY `idCita` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `idInventario` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `medico`
--
ALTER TABLE `medico`
  MODIFY `idMedico` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `paciente`
--
ALTER TABLE `paciente`
  MODIFY `idPaciente` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cita`
--
ALTER TABLE `cita`
  ADD CONSTRAINT `fk_Cita_Paciente1` FOREIGN KEY (`idPaciente`) REFERENCES `paciente` (`idPaciente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `medico`
--
ALTER TABLE `medico`
  ADD CONSTRAINT `RFC` FOREIGN KEY (`RFC`) REFERENCES `personal` (`RFC`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD CONSTRAINT `idMedico` FOREIGN KEY (`idMedico`) REFERENCES `medico` (`idMedico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
