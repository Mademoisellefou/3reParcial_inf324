-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2021 a las 03:02:18
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `matriculacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobante`
--

CREATE TABLE `comprobante` (
  `notramite` int(11) NOT NULL,
  `ci` int(11) NOT NULL,
  `nrocomprobante` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comprobante`
--

INSERT INTO `comprobante` (`notramite`, `ci`, `nrocomprobante`) VALUES
(1, 1, 123),
(2, 2, 123),
(3, 3, 123),
(4, 4, 123),
(5, 5, 123),
(6, 6, 123),
(7, 7, 123),
(8, 8, 123),
(22, 1, 123),
(23, 4, 123),
(24, 2, 123),
(25, 3, 123),
(26, 5, 123),
(27, 6, 123),
(28, 7, 123),
(29, 8, 123);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cpt`
--

CREATE TABLE `cpt` (
  `idctp` int(11) NOT NULL,
  `ci` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cpt`
--

INSERT INTO `cpt` (`idctp`, `ci`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 4),
(6, 1),
(7, 7),
(8, 1),
(9, 4),
(10, 4),
(11, 2),
(12, 3),
(13, 5),
(14, 6),
(15, 7),
(16, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deposito`
--

CREATE TABLE `deposito` (
  `iddeposito` int(11) NOT NULL,
  `ci` varchar(20) DEFAULT NULL,
  `fecha` varchar(20) DEFAULT NULL,
  `monto` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `deposito`
--

INSERT INTO `deposito` (`iddeposito`, `ci`, `fecha`, `monto`) VALUES
(21, '2', '2021-12-10 22:24', 27),
(22, '1', '2021-12-10 22:24', 27),
(23, '4', '2021-12-10 22:24', 27),
(24, '5', '2021-12-10 22:26', 27),
(25, '6', '2021-12-10 22:24', 27),
(26, '3', NULL, 0),
(27, '3', '2021-12-10 22:24', 27),
(28, '6', '2021-12-10 22:24', 27),
(29, '7', '2021-12-10 22:24', 27);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `errores`
--

CREATE TABLE `errores` (
  `iderror` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `errores`
--

INSERT INTO `errores` (`iderror`, `tipo`, `descripcion`) VALUES
(1, 'a', 'comprobante incorecto'),
(2, 'b', 'deposito no encontrado'),
(3, 'c', 'no tienes ambos requisitos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `i` int(11) NOT NULL,
  `paterno` varchar(30) NOT NULL,
  `materno` varchar(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `ci` varchar(30) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `celular` varchar(40) NOT NULL,
  `direccion` varchar(40) NOT NULL,
  `ru` int(20) NOT NULL,
  `dipbachiller` int(20) NOT NULL,
  `facultad` varchar(40) NOT NULL,
  `carrera` varchar(40) NOT NULL,
  `categoria` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`i`, `paterno`, `materno`, `nombre`, `ci`, `estado`, `email`, `celular`, `direccion`, `ru`, `dipbachiller`, `facultad`, `carrera`, `categoria`) VALUES
(1, 'SILVA', 'PEREZ', 'MOISES', '1', 'inscrito', 'adver456@gmail.com', '67800009', 'Miraflores', 1747019, 87339, 'CS. PURAS Y NATURALES', 'INFORMATICA', 'ANTIGUO-2018 ESTUDIANTE GENERAL'),
(2, 'PEREZ', 'LOPEZ', 'JUAN', '2', 'inscripcion', '', '63145678', 'Obrajes', 1747020, 87340, 'CS. PURAS Y NATURALES', 'INFORMATICA', 'ANTIGUO-2017 ESTUDIANTE GENERAL'),
(3, 'MAMANI', 'FLORES', 'MIGUEL', '3', 'inscrito', 'miguel@gmail.com', '', 'Calacoto', 1747021, 87341, 'CS. PURAS Y NATURALES', 'INFORMATICA', 'ANTIGUO-2018 ESTUDIANTE GENERAL'),
(4, 'FLORES ', 'AVENDAÑO', 'PEDRO', '4', 'inscripcion', 'pedro@gmail.com', '77754321', 'Cota Cota', 1747022, 87342, 'CS. PURAS Y NATURALES', 'INFORMATICA', 'ANTIGUO-2016 ESTUDIANTE GENERAL'),
(5, 'SALAS', 'GUTIERREZ', 'ALDO', '5', 'habilitado', 'aldo@gmail.com', '71212345', '', 1747023, 87343, 'CS. PURAS Y NATURALES', 'INFORMATICA', 'ANTIGUO-2020 ESTUDIANTE GENERAL'),
(6, 'HUANCA', 'RODRIGUEZ', 'MARIA ROSA', '6', 'inscripcion', 'maria@gmail.com', '65198765', 'Los Pinos', 1747024, 87344, 'CS. PURAS Y NATURALES', 'INFORMATICA', 'ANTIGUO-2015 ESTUDIANTE GENERAL'),
(7, 'SALAS', 'GUTIERREZ', 'ALDO', '7', 'inscripcion', 'aldo2@gmail.com', '73012345', 'Auquisamaï¿½a', 1747025, 87345, 'CS. PURAS Y NATURALES', 'INFORMATICA', 'ANTIGUO-2018 ESTUDIANTE GENERAL'),
(8, 'ROJAS', 'LINO', 'LILI', '8', 'habilitado', 'lili@gmail.com', '63198765', 'Ciudad Satelite', 1747026, 87346, 'CS. PURAS Y NATURALES', 'INFORMATICA', 'ANTIGUO-2019 ESTUDIANTE GENERAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flujocondicionante`
--

CREATE TABLE `flujocondicionante` (
  `proceso` varchar(3) DEFAULT NULL,
  `si` varchar(3) DEFAULT NULL,
  `no` varchar(3) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `flujocondicionante`
--

INSERT INTO `flujocondicionante` (`proceso`, `si`, `no`, `id`) VALUES
('P5', 'P7', 'P6', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flujoproceso`
--

CREATE TABLE `flujoproceso` (
  `flujo` varchar(3) DEFAULT NULL,
  `proceso` varchar(3) DEFAULT NULL,
  `tipo` varchar(1) DEFAULT NULL,
  `rol` varchar(15) DEFAULT NULL,
  `procesosiguiente` varchar(3) DEFAULT NULL,
  `formulario` varchar(20) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `flujoproceso`
--

INSERT INTO `flujoproceso` (`flujo`, `proceso`, `tipo`, `rol`, `procesosiguiente`, `formulario`, `id`) VALUES
('F1', 'P1', 'I', 'Estudiante', 'P2', 'publicacion', 2),
('F1', 'P2', 'P', 'Estudiante', 'P3', 'actualiza', 3),
('F1', 'P3', 'P', 'Estudiante', 'P4', 'genera', 4),
('F1', 'P4', 'P', 'Estudiante', 'P5', 'deposito', 5),
('F1', 'P5', 'C', 'Kardex', NULL, 'verifica', 6),
('F1', 'P6', 'P', 'Kardex', 'P1', 'pub_error', 7),
('F1', 'P7', 'P', 'Kardex', 'P8', 'generam', 8),
('F1', 'P8', 'P', 'Kardex', 'P9', 'habilitam', 9),
('F1', 'P9', 'P', 'Estudiante', 'P10', 'inscripcion', 10),
('F1', 'P10', 'F', 'Estudiante', NULL, 'ver', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `idmateria` int(11) NOT NULL,
  `sigla` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `prerequisito` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`idmateria`, `sigla`, `nombre`, `prerequisito`) VALUES
(1, 'INF-111', 'INTRDUCCION A LA INFORMATICA', NULL),
(2, 'LAB-111', 'LABORATORIO DE INF-111', NULL),
(3, 'INF-112', 'ORGANIZACION DE COMPUTADORAS', NULL),
(4, 'INF-113', 'LABORATORIO DE COMPUTACION', NULL),
(5, 'MAT-114', 'MATEMATICA DISCRETA I', NULL),
(6, 'LIN-116', 'GRAMATICA ESPAÑOLA', NULL),
(7, 'INF-121', 'ALGORITMOS Y PROGRAMACION', 'INF-111'),
(8, 'LAB-121', 'LABORATORIO DE INF-121', 'LAB-111'),
(9, 'FIS-122', 'FISICA I', 'INF-112'),
(10, 'LAB-122', 'LABORATORIO DE FISICA I', 'INF-112'),
(11, 'MAT-123', 'MATEMATICA DISCRETA II', 'MAT-114'),
(12, 'MAT-124', 'ALGEBRA LINEAL', 'MAT-114'),
(13, 'MAT-125', 'ANALISIS MATEMATICO II', 'MAT-114'),
(14, 'INF-131', 'ESTRUCTURA DE DATOS Y ALGORITMOS', 'INF-121'),
(15, 'LAB-131', 'LABORATORIO DE INF-131', 'INF-121'),
(16, 'FIS-132', 'FISICA II', 'FIS-122'),
(17, 'LAB-132', 'LABORATORIO DE FISICA II', 'FIS-122'),
(18, 'EST-133', 'ESTADISTICA I', 'MAT-125'),
(19, 'MAT-134', 'ANALISIS MATEMATICA III', 'MAT-125'),
(20, 'LIN-135', 'IDIOMA I', 'LIN-116');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matricula`
--

CREATE TABLE `matricula` (
  `idm` int(20) NOT NULL,
  `ci` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `matricula`
--

INSERT INTO `matricula` (`idm`, `ci`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 4),
(13, 1),
(14, 4),
(15, 8),
(16, 6),
(17, 7),
(18, 5),
(19, 4),
(20, 3),
(21, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `idnotas` int(30) NOT NULL,
  `ci` int(30) NOT NULL,
  `idmateria` varchar(20) NOT NULL,
  `notafin` int(10) DEFAULT NULL,
  `paralelo` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`idnotas`, `ci`, `idmateria`, `notafin`, `paralelo`) VALUES
(1, 1, '1', 67, 'A'),
(2, 1, '2', 37, 'B'),
(3, 1, '3', 58, 'C'),
(19, 1, '4', 0, 'B'),
(20, 1, '5', 0, 'A'),
(21, 1, '6', 0, 'C'),
(22, 2, '1', 67, 'A'),
(23, 2, '2', 37, 'B'),
(24, 2, '3', 58, 'C'),
(25, 2, '4', 0, 'B'),
(26, 2, '5', 0, 'A'),
(27, 2, '6', 0, 'C'),
(28, 3, '6', 30, 'A'),
(29, 3, '7', 50, 'B'),
(30, 3, '8', 80, 'C'),
(31, 3, '9', 45, 'A'),
(32, 3, '10', 90, 'A'),
(33, 3, '11', 50, 'B'),
(34, 4, '12', 30, 'A'),
(35, 4, '13', 80, 'B'),
(36, 4, '14', 75, 'C'),
(37, 4, '15', 61, 'D'),
(38, 4, '16', 51, 'A'),
(39, 4, '17', 40, 'A'),
(40, 5, '1', 90, 'A'),
(41, 5, '2', 85, 'A'),
(42, 5, '3', 75, 'A'),
(43, 5, '4', 60, 'A'),
(44, 5, '5', 51, 'A'),
(45, 6, '7', 55, 'B'),
(46, 6, '8', 45, 'B'),
(47, 6, '9', 60, 'B'),
(48, 6, '10', 70, 'B'),
(49, 6, '11', 80, 'B'),
(50, 7, '12', 90, 'C'),
(51, 7, '13', 75, 'C'),
(52, 7, '14', 80, 'C'),
(53, 7, '15', 60, 'C'),
(54, 7, '16', 50, 'C'),
(55, 7, '17', 45, 'C'),
(56, 8, '18', 51, 'A'),
(57, 8, '19', 61, 'A'),
(58, 8, '20', 71, 'A'),
(59, 8, '15', 80, 'A'),
(60, 8, '10', 70, 'A'),
(61, 1, '2', NULL, 'A'),
(62, 1, '4', NULL, 'A'),
(63, 1, '5', NULL, 'A'),
(64, 1, '6', NULL, 'A'),
(65, 1, '7', NULL, 'A'),
(66, 1, '9', NULL, 'A'),
(67, 1, '10', NULL, 'A'),
(68, 3, '6', NULL, 'A'),
(69, 3, '7', NULL, 'A'),
(70, 3, '9', NULL, 'A'),
(71, 3, '11', NULL, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguimiento`
--

CREATE TABLE `seguimiento` (
  `notramite` int(11) DEFAULT NULL,
  `usuario` varchar(10) DEFAULT NULL,
  `flujo` varchar(3) DEFAULT NULL,
  `proceso` varchar(3) DEFAULT NULL,
  `fechainicio` varchar(30) DEFAULT NULL,
  `fechafin` varchar(30) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `seguimiento`
--

INSERT INTO `seguimiento` (`notramite`, `usuario`, `flujo`, `proceso`, `fechainicio`, `fechafin`, `id`) VALUES
(22, '1', 'F1', 'P1', '2021-12-14 21:23', '2021-12-14 21:23', 74),
(22, '1', 'F1', 'P2', '2021-12-14 21:23', '2021-12-14 21:23', 75),
(22, '1', 'F1', 'P3', '2021-12-14 21:23', '2021-12-14 21:23', 76),
(22, '1', 'F1', 'P4', '2021-12-14 21:23', '2021-12-14 21:23', 77),
(22, 'Kardex', 'F1', 'P5', '2021-12-14 21:23', '2021-12-14 21:26', 78),
(23, '4', 'F1', 'P1', '2021-12-14 21:24', '2021-12-14 21:29', 79),
(23, '4', 'F1', 'P2', '2021-12-14 21:24', '2021-12-14 21:29', 80),
(23, '4', 'F1', 'P3', '2021-12-14 21:24', '2021-12-14 21:29', 81),
(23, '4', 'F1', 'P4', '2021-12-14 21:24', '2021-12-14 21:29', 82),
(23, 'Kardex', 'F1', 'P5', '2021-12-14 21:24', '2021-12-14 21:51', 83),
(22, 'Kardex', 'F1', 'P7', '2021-12-14 21:26', '2021-12-14 21:26', 84),
(22, 'Kardex', 'F1', 'P8', '2021-12-14 21:26', '2021-12-14 21:27', 85),
(22, '1', 'F1', 'P9', '2021-12-14 21:27', '2021-12-14 21:41', 86),
(23, 'Kardex', 'F1', 'P6', '2021-12-14 21:27', '2021-12-14 21:28', 87),
(23, '4', 'F1', 'P1', '2021-12-14 21:28', '2021-12-14 21:29', 88),
(23, '4', 'F1', 'P2', '2021-12-14 21:29', '2021-12-14 21:29', 89),
(23, '4', 'F1', 'P3', '2021-12-14 21:29', '2021-12-14 21:29', 90),
(23, '4', 'F1', 'P4', '2021-12-14 21:29', '2021-12-14 21:29', 91),
(23, 'Kardex', 'F1', 'P5', '2021-12-14 21:29', '2021-12-14 21:51', 92),
(22, '1', 'F1', 'P10', '2021-12-14 21:41', '2021-12-14 21:42', 93),
(24, '2', 'F1', 'P1', '2021-12-14 21:45', '2021-12-14 21:45', 94),
(24, '2', 'F1', 'P2', '2021-12-14 21:45', '2021-12-14 21:45', 95),
(24, '2', 'F1', 'P3', '2021-12-14 21:45', '2021-12-14 21:46', 96),
(24, '2', 'F1', 'P4', '2021-12-14 21:46', '2021-12-14 21:46', 97),
(24, 'Kardex', 'F1', 'P5', '2021-12-14 21:46', '2021-12-14 21:52', 98),
(25, '3', 'F1', 'P1', '2021-12-14 21:46', '2021-12-14 21:46', 99),
(25, '3', 'F1', 'P2', '2021-12-14 21:46', '2021-12-14 21:46', 100),
(25, '3', 'F1', 'P3', '2021-12-14 21:46', '2021-12-14 21:46', 101),
(25, '3', 'F1', 'P4', '2021-12-14 21:46', '2021-12-14 21:46', 102),
(25, 'Kardex', 'F1', 'P5', '2021-12-14 21:46', '2021-12-14 21:52', 103),
(26, '5', 'F1', 'P1', '2021-12-14 21:47', '2021-12-14 21:47', 104),
(26, '5', 'F1', 'P2', '2021-12-14 21:47', '2021-12-14 21:47', 105),
(26, '5', 'F1', 'P3', '2021-12-14 21:47', '2021-12-14 21:47', 106),
(26, '5', 'F1', 'P4', '2021-12-14 21:47', '2021-12-14 21:47', 107),
(26, 'Kardex', 'F1', 'P5', '2021-12-14 21:47', '2021-12-14 21:50', 108),
(27, '6', 'F1', 'P1', '2021-12-14 21:47', '2021-12-14 21:48', 109),
(27, '6', 'F1', 'P2', '2021-12-14 21:48', '2021-12-14 21:48', 110),
(27, '6', 'F1', 'P3', '2021-12-14 21:48', '2021-12-14 21:48', 111),
(27, '6', 'F1', 'P4', '2021-12-14 21:48', '2021-12-14 21:48', 112),
(27, 'Kardex', 'F1', 'P5', '2021-12-14 21:48', '2021-12-14 21:49', 113),
(28, '7', 'F1', 'P1', '2021-12-14 21:48', '2021-12-14 21:48', 114),
(28, '7', 'F1', 'P2', '2021-12-14 21:48', '2021-12-14 21:48', 115),
(28, '7', 'F1', 'P3', '2021-12-14 21:48', '2021-12-14 21:48', 116),
(28, '7', 'F1', 'P4', '2021-12-14 21:48', '2021-12-14 21:48', 117),
(28, 'Kardex', 'F1', 'P5', '2021-12-14 21:48', '2021-12-14 21:50', 118),
(29, '8', 'F1', 'P1', '2021-12-14 21:48', '2021-12-14 21:48', 119),
(29, '8', 'F1', 'P2', '2021-12-14 21:48', '2021-12-14 21:48', 120),
(29, '8', 'F1', 'P3', '2021-12-14 21:48', '2021-12-14 21:49', 121),
(29, '8', 'F1', 'P4', '2021-12-14 21:49', '2021-12-14 21:49', 122),
(29, 'Kardex', 'F1', 'P5', '2021-12-14 21:49', '2021-12-14 21:49', 123),
(29, 'Kardex', 'F1', 'P6', '2021-12-14 21:49', '2021-12-14 21:49', 124),
(29, '8', 'F1', 'P1', '2021-12-14 21:49', NULL, 125),
(27, 'Kardex', 'F1', 'P7', '2021-12-14 21:49', '2021-12-14 21:59', 126),
(28, 'Kardex', 'F1', 'P7', '2021-12-14 21:50', '2021-12-14 21:59', 127),
(26, 'Kardex', 'F1', 'P6', '2021-12-14 21:50', '2021-12-14 21:51', 128),
(26, '5', 'F1', 'P1', '2021-12-14 21:51', NULL, 129),
(23, 'Kardex', 'F1', 'P7', '2021-12-14 21:51', '2021-12-14 21:51', 130),
(23, 'Kardex', 'F1', 'P8', '2021-12-14 21:51', '2021-12-14 21:52', 131),
(23, '4', 'F1', 'P9', '2021-12-14 21:52', NULL, 132),
(25, 'Kardex', 'F1', 'P7', '2021-12-14 21:52', '2021-12-14 21:59', 133),
(24, 'Kardex', 'F1', 'P7', '2021-12-14 21:52', '2021-12-14 21:52', 134),
(24, 'Kardex', 'F1', 'P8', '2021-12-14 21:52', '2021-12-14 21:52', 135),
(24, '2', 'F1', 'P9', '2021-12-14 21:52', NULL, 136),
(27, 'Kardex', 'F1', 'P8', '2021-12-14 21:59', '2021-12-14 21:59', 137),
(27, '6', 'F1', 'P9', '2021-12-14 21:59', NULL, 138),
(28, 'Kardex', 'F1', 'P8', '2021-12-14 21:59', '2021-12-14 21:59', 139),
(28, '7', 'F1', 'P9', '2021-12-14 21:59', NULL, 140),
(25, 'Kardex', 'F1', 'P8', '2021-12-14 21:59', '2021-12-14 21:59', 141),
(25, '3', 'F1', 'P9', '2021-12-14 21:59', '2021-12-14 21:59', 142),
(25, '3', 'F1', 'P10', '2021-12-14 21:59', '2021-12-14 21:59', 143);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramite`
--

CREATE TABLE `tramite` (
  `notramite` int(10) NOT NULL,
  `ci` int(20) NOT NULL,
  `fecha` varchar(30) NOT NULL,
  `error` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tramite`
--

INSERT INTO `tramite` (`notramite`, `ci`, `fecha`, `error`) VALUES
(22, 1, '2021-12-14 21:23', -2),
(23, 4, '2021-12-14 21:24', 1),
(24, 2, '2021-12-14 21:45', -2),
(25, 3, '2021-12-14 21:46', -2),
(26, 5, '2021-12-14 21:47', 1),
(27, 6, '2021-12-14 21:47', -2),
(28, 7, '2021-12-14 21:48', -2),
(29, 8, '2021-12-14 21:48', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ci` int(11) NOT NULL,
  `password` varchar(10) DEFAULT NULL,
  `rol` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ci`, `password`, `rol`) VALUES
(1, '123456', 'Estudiante'),
(2, '123456', 'Estudiante'),
(3, '123456', 'Estudiante'),
(4, '123456', 'Estudiante'),
(5, '123456', 'Estudiante'),
(6, '123456', 'Estudiante'),
(7, '123456', 'Estudiante'),
(8, '123456', 'Estudiante'),
(123, '123456', 'Kardex');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comprobante`
--
ALTER TABLE `comprobante`
  ADD PRIMARY KEY (`notramite`);

--
-- Indices de la tabla `cpt`
--
ALTER TABLE `cpt`
  ADD PRIMARY KEY (`idctp`);

--
-- Indices de la tabla `deposito`
--
ALTER TABLE `deposito`
  ADD PRIMARY KEY (`iddeposito`);

--
-- Indices de la tabla `errores`
--
ALTER TABLE `errores`
  ADD PRIMARY KEY (`iderror`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`i`);

--
-- Indices de la tabla `flujocondicionante`
--
ALTER TABLE `flujocondicionante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `flujoproceso`
--
ALTER TABLE `flujoproceso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`idmateria`);

--
-- Indices de la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`idm`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`idnotas`);

--
-- Indices de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tramite`
--
ALTER TABLE `tramite`
  ADD PRIMARY KEY (`notramite`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ci`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cpt`
--
ALTER TABLE `cpt`
  MODIFY `idctp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `deposito`
--
ALTER TABLE `deposito`
  MODIFY `iddeposito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `errores`
--
ALTER TABLE `errores`
  MODIFY `iderror` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `i` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `flujocondicionante`
--
ALTER TABLE `flujocondicionante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `flujoproceso`
--
ALTER TABLE `flujoproceso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `idmateria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `matricula`
--
ALTER TABLE `matricula`
  MODIFY `idm` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `idnotas` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT de la tabla `tramite`
--
ALTER TABLE `tramite`
  MODIFY `notramite` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
