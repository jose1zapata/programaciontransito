-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 25-02-2014 a las 12:28:44
-- Versión del servidor: 5.6.13
-- Versión de PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `apasoftware`
--
CREATE DATABASE IF NOT EXISTS `apasoftware` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `apasoftware`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accidente`
--

CREATE TABLE IF NOT EXISTS `accidente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `direccion` text NOT NULL,
  `fecha` date NOT NULL,
  `hora` varchar(45) NOT NULL,
  `monto` float NOT NULL,
  `conductore_id` int(11) NOT NULL,
  `vehiculo_id` int(11) NOT NULL,
  `perito_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_accidente_conductores1` (`conductore_id`),
  KEY `fk_accidente_vehiculo1` (`vehiculo_id`),
  KEY `fk_accidente_perito1` (`perito_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accidentesautoparte`
--

CREATE TABLE IF NOT EXISTS `accidentesautoparte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autoparte_id` int(11) NOT NULL,
  `accidente_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_accidentesautopartes_autopartes1` (`autoparte_id`),
  KEY `fk_accidentesautopartes_accidente1` (`accidente_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autopartes`
--

CREATE TABLE IF NOT EXISTS `autopartes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `tipoautoparte_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_autopartes_tipoautoparte1` (`tipoautoparte_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=532 ;

--
-- Volcado de datos para la tabla `autopartes`
--

INSERT INTO `autopartes` (`id`, `nombre`, `tipoautoparte_id`) VALUES
(1, 'Filtro/Secador-A/A', 1),
(2, 'Antena/Radio-AM/FM', 1),
(3, 'Colector/Aire', 1),
(4, 'Aro/Faro-Der', 1),
(5, 'Aro/Faro-Izq', 1),
(6, 'Aros/faros-Der/Izq', 1),
(7, 'Compresor-A/A', 1),
(8, 'Condensador-A/A', 1),
(9, 'Guardapolvo/Rueda-Del/Der', 1),
(10, 'Guardapolvo/Rueda-Del/Izq', 1),
(11, 'Guardapolvos/Ruedas-Delanteras-Der/Izq', 1),
(12, 'Electrov-A/A', 1),
(13, 'Electrov-Enf/Motor', 1),
(14, 'Aspa/Ventilador-Enf/Motor', 1),
(15, 'Fanclouch', 1),
(16, 'Filler', 1),
(17, 'Filler/Der', 1),
(18, 'Filler/Izq', 1),
(19, 'Bater', 1),
(20, 'Base/Bater', 1),
(21, 'Manguera/Radiador-Superior', 1),
(22, 'Manguera/Radiador-Inferior', 1),
(23, 'Mangueras/Radiador-Inferior/Superior', 1),
(24, 'Bomba/Agua', 1),
(25, 'Bomba/Direccion-Hidr', 1),
(26, 'Motor/Arranque', 1),
(27, 'Alternador', 1),
(28, 'Dinamo', 1),
(29, 'Turbo/Compresor', 1),
(30, 'Turbina/Enf-Motor', 1),
(31, 'Evaporador-A/A', 1),
(32, 'Carburador', 1),
(33, 'Cuerpo/Inyecci', 1),
(34, 'Bobina/Encendido', 1),
(35, 'Tapa/Distribuci', 1),
(36, 'Distribuidor/Encendido', 1),
(37, 'Caucho/Radial', 1),
(38, 'Caucho/Convencional', 1),
(39, 'Caucho/Tacos', 1),
(40, 'Cruce/Der', 1),
(41, 'Cruce/izq', 1),
(42, 'Cruces-Der/Izq', 1),
(43, 'Faros/Der', 1),
(44, 'Faro/Izq', 1),
(45, 'Faros-Der/Izq', 1),
(46, 'Deposito/Agua-Lpb', 1),
(47, 'Deposito/Agua-Radiador', 1),
(48, 'Deposito/Fluido-Frenos', 1),
(49, 'Purificador/Aire', 1),
(50, 'Ducto/Purificador-Aire', 1),
(51, 'Rin/Basico', 1),
(52, 'Rin/Lujo', 1),
(53, 'Volante/Direccion', 1),
(54, 'Columna/Direccion', 1),
(55, 'Fusiblera/Externa', 1),
(56, 'Fusiblera/Interna', 1),
(57, 'Parabrisa/Delantero', 1),
(58, 'Parabrisa/Trasero', 1),
(59, 'Vidrio/Compuerta-Trasera', 1),
(60, 'Vidrio/Techo', 1),
(61, 'Tapizado/Techo', 1),
(62, 'Tapizado/Interno-Compuerta/Trasera', 1),
(63, 'Alfombra/Piso', 1),
(64, 'Alfombra/Maletero', 1),
(65, 'Taza/Rueda', 1),
(66, 'Tuber', 1),
(67, 'Tuber', 1),
(68, 'Repisa/Trasera', 1),
(69, 'Vidrio/Puerta-Der', 1),
(70, 'Vidrio/Puerta-Izq', 1),
(71, 'Vidrios/Puertas-Der/Izq', 1),
(72, 'Vidrio/Puerta-Del/Der', 1),
(73, 'Vidrio/Puerta-Del/Izq', 1),
(74, 'Vidrios/Puertas-Delanteras-Der/Izq', 1),
(75, 'Vidrio/Puerta-Tras/Der', 1),
(76, 'Vidrio/Puerta-Tras/Izq', 1),
(77, 'Vidrios/Puertas-Traseras-Der/Izq', 1),
(78, 'Vidrio/Guard-Tras/Der', 1),
(79, 'Vidrio/Guard-Tras/Izq', 1),
(80, 'Vidrios/Guard-Traseros-Der/Izq', 1),
(81, 'Air/Bag-Volante/Conductor', 1),
(82, 'Air/Bag-Tablero/Moldura', 1),
(83, 'Sensores/Delanteros-Air/Bag', 1),
(84, 'Modulo/Air-Bag', 1),
(85, 'Modulo/ABS', 1),
(86, 'Cinta/Damero-Taxi', 1),
(87, 'Rotulado/Placas', 1),
(88, 'Rotulado/Publicit', 1),
(89, 'Cinta/Decorativa-Tipo/Madera', 1),
(90, 'Calcomania/Decorativa', 1),
(91, 'Corneta/Pito', 1),
(92, 'Corneta/Aire', 1),
(93, 'Emblema/Logo-Frontal', 1),
(94, 'Emblemas', 1),
(95, 'Rejilla/Frontal', 1),
(96, 'Marco/Rejilla-Frontal', 1),
(97, 'Marco/Interno-Fibra/Frontal', 1),
(98, 'Parrilla/Deportiva-Techo', 1),
(99, 'Defensa/Deportiva-Frontal', 1),
(100, 'Defensa/Deportiva-Trasera', 1),
(101, 'Retrovisor/Der', 1),
(102, 'Retrovisor/Izq', 1),
(103, 'Retrovisor-Der/Izq', 1),
(104, 'Retrov/Electrico-Der', 1),
(105, 'Retrov/Electrico-Izq', 1),
(106, 'Retrov/Electrico-Der/Izq', 1),
(107, 'Guantera/Tablero', 1),
(108, 'Consola/Central', 1),
(109, 'Consola/Techo', 1),
(110, 'Stop/Trasero-Der', 1),
(111, 'Stop/Trasero-Izq', 1),
(112, 'Stop/Trasero-Der/Izq', 1),
(113, 'Stop/Lateral-Der/Maletero', 1),
(114, 'Stop/Lateral-Izq/Maletero', 1),
(115, 'Stop/Lateral-Maletero-Der/Izq', 1),
(116, 'Tacometro/Veloc', 1),
(117, 'Guardafango/Delantero', 1),
(118, 'Barras/Direccion', 1),
(119, 'Man', 1),
(120, 'Faro/Frontal', 1),
(121, 'Careta/Superior', 1),
(122, 'Careta/Inferior', 1),
(123, 'Careta-Inferior/Superior', 1),
(124, 'T/Inferior', 1),
(125, 'T/Superior', 1),
(126, 'T-Inferior/Superior', 1),
(127, 'Manilla/Embrague', 1),
(128, 'Manilla/Freno-Delantero', 1),
(129, 'Tanque/Combustible', 1),
(130, 'Marco/Chasis', 1),
(131, 'Posapie/Delantero', 1),
(132, 'Posapie/Tras', 1),
(133, 'Guardafango/Trasero', 1),
(134, 'Aro/Rin-Delantero', 1),
(135, 'Aro/Rin-Trasero', 1),
(136, 'Encadenado/Deportivo', 1),
(137, 'Tapa/Protectora-Lateral/Der', 1),
(138, 'Tapa/Protectora-Lateral/Izq', 1),
(139, 'Pu', 1),
(140, 'Pu', 1),
(141, 'Pesa/Pu', 1),
(142, 'Pesa/Pu', 1),
(143, 'Puesto/Asiento', 1),
(144, 'Caucho/Delantero', 1),
(145, 'Caucho/Trasero', 1),
(146, 'Tapa/Lateral-Der/Motor', 1),
(147, 'Tapa/Lateral-Izq/Motor', 1),
(148, 'Tapa/Cubre-Piernas', 1),
(149, 'Tapa/Guardapolvo-Piso', 1),
(150, 'Tapa/Cubierta-Principal', 1),
(151, 'Tapa/Lateral-Inferior/Der', 1),
(152, 'Tapa/Lateral-Inferior/Izq', 1),
(153, 'Porta/Placa-Tras', 1),
(154, 'Stop/Trasero', 1),
(155, 'Swichera/Encendido', 1),
(156, 'Sistema/Alarma-Anti/Robo', 1),
(157, 'Cadena/Propulsora', 1),
(158, 'Brazo/Lpb-Delantero/Der', 1),
(159, 'Brazo/Lpb-Delantero/Izq', 1),
(160, 'Brazos/Lpb-Delanteros-Der/Izq', 1),
(161, 'Brazo/Lpb-Trasero', 1),
(162, 'Cepillo/Lpb-Delantero/Der', 1),
(163, 'Capillo/Lpb-Delantero/Izq', 1),
(164, 'Cepillos/Lpb-Delanteros-Der/Izq', 1),
(165, 'Cepillo/Lpb-Tras', 1),
(166, 'Motor/Lpb-Delantero', 1),
(167, 'Motor/Lpb-Trasero', 1),
(168, 'Correa/Multi-Funci', 1),
(169, 'Correa/Alternador', 1),
(170, 'Correa/Compresor-A/A', 1),
(171, 'Correa/Bomba-Direccion/Hidr', 1),
(172, 'Catalizador', 1),
(173, 'Canister/Gases-Admision', 1),
(174, 'Manilla/Externa-Puerta/Izq', 1),
(175, 'Manilla/Externa-Puerta/Der', 1),
(176, 'Manilla/Externa-Puerta/Del-Der', 1),
(177, 'Manilla/Externa-Puerta/Del-Izq', 1),
(178, 'Manilla/Externa-Puerta/Tras-Der', 1),
(179, 'Manilla/Externa-Puerta/Tras-Izq', 1),
(180, 'Manilla/Externa-Compuerta/Trasera', 1),
(181, 'Compuerta/Trasera-Superior', 1),
(182, 'Compuerta/Trasera-Inferior', 1),
(183, 'Compuerta/Lateral-Der', 1),
(184, 'Compuerta/Lateral-Izq', 1),
(185, 'Compuerta/Trasera-Caj', 1),
(186, 'Guard/Der-Caj', 1),
(187, 'Guard/Izq-Caj', 1),
(188, 'Piso/Caj', 1),
(189, 'Panel/Frontal-Caj', 1),
(190, 'Carter/Der-Caj', 1),
(191, 'Carter/Izq-Caj', 1),
(192, 'Piso/Delantero', 1),
(193, 'Carter/Maletero', 1),
(194, 'Piso/Maleta', 1),
(195, 'Palanca/Selectora-Lpb', 1),
(196, 'Palanca/Selectora-Luces', 1),
(197, 'Disco/Freno-Del/Der', 1),
(198, 'Disco/Freno-Del/Izq', 1),
(199, 'Discos/Frenos-Delanteros-Der/Izq', 1),
(200, 'Disco/Freno-Tras/Der', 1),
(201, 'Disco/Freno-Tras/Izq', 1),
(202, 'Discos/Frenos-Traseros-Der/Izq', 1),
(203, 'Carter/Aceite-Motor', 1),
(204, 'Carter/Aceite-Transmisi', 1),
(205, 'Cerradura/Capo', 1),
(206, 'Cerradura/Maleta', 1),
(207, 'Cajetin/Direccion', 1),
(208, 'Bomba/Frenos', 1),
(209, 'Boster/Frenos', 1),
(210, 'Bombona/Aire-Frenos/Neumaticos', 1),
(211, 'V', 1),
(212, 'Pulmon/Sistema-Freno/Neumatico', 1),
(213, 'Manguera/Frenos-Del/Der', 1),
(214, 'Manguera/Frenos-Del/Izq', 1),
(215, 'Tambor/Frenos-Tras/Der', 1),
(216, 'Tambor/Frenos-Tras/Izq', 1),
(217, 'Suspensi', 1),
(218, 'Suspensi', 1),
(219, 'Puente/Suspensi', 1),
(220, 'Puente/Suspensi', 1),
(221, 'Brazo/Axial-Der', 1),
(222, 'Brazo/Axial-Izq', 1),
(223, 'Brazo/Axial-Der/Izq', 1),
(224, 'Mesta/Der', 1),
(225, 'Meseta/Izq', 1),
(226, 'Mesetas-Der/Izq', 1),
(227, 'Meseta/Delantera-Der/Superior', 1),
(228, 'Meseta/Delantera-Izq/Superior', 1),
(229, 'Meseta/Delantera-Der/Inferior', 1),
(230, 'Meseta/Delantera-Izq/Inferior', 1),
(231, 'Carcaza/Transmisi', 1),
(232, 'Transmisi', 1),
(233, 'Transmisi', 1),
(234, 'Tunel/Eje-Diferencial/Del', 1),
(235, 'Tunel/Eje-Diferencial/Tras', 1),
(236, 'Conjunto/Eje-Diferencial/Del', 1),
(237, 'Conjunto/Eje-Diferencial/Tras', 1),
(238, 'Punta/Eje-Delantera/Der', 1),
(239, 'Punta/Eje-Delantera/Izq', 1),
(240, 'Punta/Eje-Trasero/Der', 1),
(241, 'Punta/Eje-Trasero/Izq', 1),
(242, 'Cardan/Eje-Propulsor', 1),
(243, 'Cardan/Eje-Propulsor/Del', 1),
(244, 'Cardan/Eje-Propulsor/Tras', 1),
(245, 'Tubo/Escape', 1),
(246, 'Silenciador/Escape', 1),
(247, 'Mufle/Resonador', 1),
(248, 'Tapizado/Puerta-Der', 1),
(249, 'Tapizado/Puerta-Izq', 1),
(250, 'Tapizado/Puerta-Del/Der', 1),
(251, 'Tapizado/Puerta-Del/Izq', 1),
(252, 'Tapizado/Puerta-Tras/Der', 1),
(253, 'Tapizado/Puerta-Tras/Izq', 1),
(254, 'Tripoide/Der', 1),
(255, 'Tripoide/Izq', 1),
(256, 'Tripoides-Der/Izq', 1),
(257, 'Amort/Del-Der', 1),
(258, 'Amort/Del-Izq', 1),
(259, 'Amort/Del-Der/Izq', 1),
(260, 'Amort/Tras-Der', 1),
(261, 'Amort/Tras-Izq', 1),
(262, 'Amort/Tras-Der/Izq', 1),
(263, 'Suspensi', 1),
(264, 'Suspensi', 1),
(265, 'Suspensi', 1),
(266, 'Sensor/MAF', 1),
(267, 'Sensor/Oxigeno', 1),
(268, 'Luz/Exploradora-Der', 1),
(269, 'Luz/Exploradora-Izq', 1),
(270, 'Luz/Exploradora-Der/Izq', 1),
(271, 'Extension/Der-Parach/Del', 1),
(272, 'Extensi', 1),
(273, 'Extensiones/Laterales-Parach/Del', 1),
(274, 'Extension/Der-Parach/Tras', 1),
(275, 'Extension/Izq-Parach/Trasero', 1),
(276, 'Extensiones/Laterales-Parach/Tras', 1),
(277, 'Barra/Estabilizadora-Del', 1),
(278, 'Barra/Estabilizadora-Tras', 1),
(279, 'Brazo/Pitman-Direccion', 1),
(280, 'Barra/tensora-Susp/Del-Der', 1),
(281, 'Barra/tensora-Susp/Del-Izq', 1),
(282, 'Barra/tensora-Susp/Tras-Der', 1),
(283, 'Barra/tensora-Susp/Tras-Izq', 1),
(284, 'Terminal/Direccion-Der', 1),
(285, 'Terminal/Direccion-Izq', 1),
(286, 'Terminal/Direccion-Der/Izq', 1),
(287, 'Luz/Placa-Del', 1),
(288, 'Luz/Placa-Tras', 1),
(289, 'Platina/Puerta-Del/Der', 1),
(290, 'Platina/Puerta-Del/Izq', 1),
(291, 'Platinas/Puertas-Der-Del/tras', 1),
(292, 'Platina/Puerta-Tras/Der', 1),
(293, 'Platina/Puerta-Tras/Izq', 1),
(294, 'Platinas/Puertas-Izq-Del/Tras', 1),
(295, 'Platina/Guard-Del/Der', 1),
(296, 'Platina/Guard-Del/Izq', 1),
(297, 'Platina/Guard-Tras/Der', 1),
(298, 'Platina/Guard-Tras/Izq', 1),
(299, 'Moldura/Interna-Tras/Der', 1),
(300, 'Moldura/Interna-Tras/Izq', 1),
(301, 'Molduras/Internas-Traseras-Der/Izq', 1),
(302, 'Moldura/Externa-Tras/Der', 1),
(303, 'Moldura/Externa-Tras/Izq', 1),
(304, 'Chapaleta/Rueda-Del/Der', 1),
(305, 'Chapaleta/Rueda-Del/Izq', 1),
(306, 'Chapaleta/Rueda-Tras/Der', 1),
(307, 'Chapaleta/Rueda-Tras/Izq', 1),
(308, 'Guardafango/Del-Der', 1),
(309, 'Guardafango/Del-Izq', 1),
(310, 'Guardafango/Del-Der/Izq', 1),
(311, 'Guardafango/Tras-Der', 1),
(312, 'Guardafango/Tras-Izq', 1),
(313, 'Guardafangos/Der-Del/Tras', 1),
(314, 'Guardafangos/Izq-Del/Tras', 1),
(315, 'Carter/Guardafango-Del/Der', 1),
(316, 'Carter/Guardafango-Del/Izq', 1),
(317, 'Carter/Guardafango-Tras/Der', 1),
(318, 'Carter/Guardafango-Tras/Izq', 1),
(319, 'Puerta/Der', 1),
(320, 'Puerta/Izq', 1),
(321, 'Puerta/Del-Der', 1),
(322, 'Puerta/Del-Izq', 1),
(323, 'Puerta/Tras-Der', 1),
(324, 'Puerta/Tras-Izq', 1),
(325, 'Puertas/Der-Del/Tras', 1),
(326, 'Puertas/Izq-Del/Tras', 1),
(327, 'Babero/Del-Inferior', 1),
(328, 'Babero/Tras-Inferior', 1),
(329, 'Capo', 1),
(330, 'Marco/Frontal', 1),
(331, 'Marco/Frontal-Superior', 1),
(332, 'Cabina', 1),
(333, 'Careta/Capo', 1),
(334, 'Extension/Frontal', 1),
(335, 'Marco/Cabina-Tras', 1),
(336, 'Panel/Frontal', 1),
(337, 'Panel/Posterior', 1),
(338, 'Extension/Der-Panel/Frontal', 1),
(339, 'Extension/Izq-Panel/Frontal', 1),
(340, 'Borde/Guard-Del/Der', 1),
(341, 'Borde/Guard-Del/Izq', 1),
(342, 'Borde/Guard-Tras/Der', 1),
(343, 'Borde/Guard-Tras/Izq', 1),
(344, 'Borde/Puerta-Tras/Der', 1),
(345, 'Borde/Puerta-Tras/Izq', 1),
(346, 'Panel/Lateral-Der', 1),
(347, 'Panel/Lateral-Izq', 1),
(348, 'Panel/Lateral-Der/Izq', 1),
(349, 'Panel/Lateral-Delantero/Der', 1),
(350, 'Panel/Lateral-Delantero/Izq', 1),
(351, 'Panel/Lateral-Central/Der', 1),
(352, 'Panel/Lateral-Central/Izq', 1),
(353, 'Panel/Lateral-Posterior/Der', 1),
(354, 'Panel/Lateral-Posterior/Izq', 1),
(355, 'Estructura/Interna-Lateral/Der', 1),
(356, 'Estructura/Interna-Lateral/izq', 1),
(357, 'Estructura/Interna-Der/Izq', 1),
(358, 'Parach/Delantero', 1),
(359, 'Parach/Trasero', 1),
(360, 'Parach-Del/Tras', 1),
(361, 'Bases/Parach-Delantero', 1),
(362, 'Bases/Parach-Trasero', 1),
(363, 'Radiador', 1),
(364, 'Radiador/Enf-Sistema/Direccion', 1),
(365, 'Radiador/Enf-Transmision/Autom', 1),
(366, 'Compuerta/Trasera-Der', 1),
(367, 'Compuerta/Trasera-Izq', 1),
(368, 'Compuertas/Traseras-Der/Izq', 1),
(369, 'Socalo/Lateral-Inferior/Der', 1),
(370, 'Socalo/Lateral-Inferior/Izq', 1),
(371, 'Rejilla/Torpedo', 1),
(372, 'Rejilla/Torpedo-Lateral/Der', 1),
(373, 'Rejilla/Torpedo-Lateral/Izq', 1),
(374, 'Furg', 1),
(375, 'Cava/Termica-Purioretano/Inyectado', 1),
(376, 'Defensa/Trasera', 1),
(377, 'Plataforma/Carga', 1),
(378, 'Panel/Frontal-Plataforma/Carga', 1),
(379, 'Porta/Cauchos-Lateral/Repuesto', 1),
(380, 'Astercooler', 1),
(381, 'Estribo/Der', 1),
(382, 'Estribo/Izq', 1),
(383, 'Estribos-Der/Izq', 1),
(384, 'Pescante/Externo-Lateral/Der', 1),
(385, 'Pescante/Externo-Lateral/Izq', 1),
(386, 'Pescantes/Externos-Laterales-Der/Izq', 1),
(387, 'Tapa/Maleta', 1),
(388, 'Marco/Trasero', 1),
(389, 'Paral/Delantero-Der', 1),
(390, 'Paral/Delantero-Izq', 1),
(391, 'Paral/Central-Der', 1),
(392, 'Paral/Central-Izq', 1),
(393, 'Paral/Trasero-Der', 1),
(394, 'Paral/Trasero-Izq', 1),
(395, 'Capo', 2),
(396, 'Marco/Frontal', 2),
(397, 'Marco/Frontal-Superior', 2),
(398, 'Cabina', 2),
(399, 'Careta/Capo', 2),
(400, 'Extension/Frontal', 2),
(401, 'Marco/Cabina-Tras', 2),
(402, 'Panel/Frontal', 2),
(403, 'Panel/Posterior', 2),
(404, 'Extension/Der-Panel/Frontal', 2),
(405, 'Extension/Izq-Panel/Frontal', 2),
(406, 'Borde/Guard-Del/Der', 2),
(407, 'Borde/Guard-Del/Izq', 2),
(408, 'Borde/Guard-Tras/Der', 2),
(409, 'Borde/Guard-Tras/Izq', 2),
(410, 'Borde/Puerta-Tras/Der', 2),
(411, 'Borde/Puerta-Tras/Izq', 2),
(412, 'Panel/Lateral-Der', 2),
(413, 'Panel/Lateral-Izq', 2),
(414, 'Panel/Lateral-Der/Izq', 2),
(415, 'Panel/Lateral-Delantero/Der', 2),
(416, 'Panel/Lateral-Delantero/Izq', 2),
(417, 'Panel/Lateral-Central/Der', 2),
(418, 'Panel/Lateral-Central/Izq', 2),
(419, 'Panel/Lateral-Posterior/Der', 2),
(420, 'Panel/Lateral-Posterior/Izq', 2),
(421, 'Estructura/Interna-Lateral/Der', 2),
(422, 'Estructura/Interna-Lateral/izq', 2),
(423, 'Estructura/Interna-Der/Izq', 2),
(424, 'Parach/Delantero', 2),
(425, 'Parach/Trasero', 2),
(426, 'Parach-Del/Tras', 2),
(427, 'Bases/Parach-Delantero', 2),
(428, 'Bases/Parach-Trasero', 2),
(429, 'Radiador', 2),
(430, 'Radiador/Enf-Sistema/Direccion', 2),
(431, 'Radiador/Enf-Transmision/Autom', 2),
(432, 'Compuerta/Trasera-Der', 2),
(433, 'Compuerta/Trasera-Izq', 2),
(434, 'Compuertas/Traseras-Der/Izq', 2),
(435, 'Socalo/Lateral-Inferior/Der', 2),
(436, 'Socalo/Lateral-Inferior/Izq', 2),
(437, 'Rejilla/Torpedo', 2),
(438, 'Porta/Cauchos-Lateral/Repuesto', 2),
(439, 'Astercooler', 2),
(440, 'Panel/Frontal-Plataforma/Carga', 2),
(441, 'Estribo/Der', 2),
(442, 'Estribo/Izq', 2),
(443, 'Estribos-Der/Izq', 2),
(444, 'Pescante/Externo-Lateral/Der', 2),
(445, 'Pescante/Externo-Lateral/Izq', 2),
(446, 'Pescantes/Externos-Laterales-Der/Izq', 2),
(447, 'Tapa/Maleta', 2),
(448, 'Marco/Trasero', 2),
(449, 'Paral/Delantero-Der', 2),
(450, 'Paral/Delantero-Izq', 2),
(451, 'Paral/Central-Der', 2),
(452, 'Paral/Central-Izq', 2),
(453, 'Paral/Trasero-Der', 2),
(454, 'Paral/Trasero-Izq', 2),
(455, 'Guardafango/Del-Der', 2),
(456, 'Guardafango/Del-Izq', 2),
(457, 'Guardafango/Del-Der/Izq', 2),
(458, 'Guardafango/Tras-Der', 2),
(459, 'Guardafango/Tras-Izq', 2),
(460, 'Guardafangos/Der-Del/Tras', 2),
(461, 'Guardafangos/Izq-Del/Tras', 2),
(462, 'Carter/Guardafango-Del/Der', 2),
(463, 'Carter/Guardafango-Del/Izq', 2),
(464, 'Carter/Guardafango-Tras/Der', 2),
(465, 'Carter/Guardafango-Tras/Izq', 2),
(466, 'Puerta/Der', 2),
(467, 'Puerta/Izq', 2),
(468, 'Puerta/Del-Der', 2),
(469, 'Puerta/Del-Izq', 2),
(470, 'Puerta/Tras-Der', 2),
(471, 'Puerta/Tras-Izq', 2),
(472, 'Puertas/Der-Del/Tras', 2),
(473, 'Puertas/Izq-Del/Tras', 2),
(474, 'Babero/Del-Inferior', 2),
(475, 'Babero/Tras-Inferior', 2),
(476, 'Platina/Puerta-Del/Der', 2),
(477, 'Platina/Puerta-Del/Izq', 2),
(478, 'Platinas/Puertas-Der-Del/tras', 2),
(479, 'Platina/Puerta-Tras/Der', 2),
(480, 'Platina/Puerta-Tras/Izq', 2),
(481, 'Platinas/Puertas-Izq-Del/Tras', 2),
(482, 'Platina/Guard-Del/Der', 2),
(483, 'Platina/Guard-Del/Izq', 2),
(484, 'Platina/Guard-Tras/Der', 2),
(485, 'Platina/Guard-Tras/Izq', 2),
(486, 'Extension/Der-Parach/Del', 2),
(487, 'Extensi', 2),
(488, 'Extensiones/Laterales-Parach/Del', 2),
(489, 'Extension/Der-Parach/Tras', 2),
(490, 'Tubo/Escape', 2),
(491, 'Extension/Izq-Parach/Trasero', 2),
(492, 'Extensiones/Laterales-Parach/Tras', 2),
(493, 'Transmisi', 2),
(494, 'Transmisi', 2),
(495, 'Compuerta/Trasera-Superior', 2),
(496, 'Compuerta/Trasera-Inferior', 2),
(497, 'Compuerta/Lateral-Der', 2),
(498, 'Compuerta/Lateral-Izq', 2),
(499, 'Compuerta/Trasera-Caj', 2),
(500, 'Guard/Der-Caj', 2),
(501, 'Guard/Izq-Caj', 2),
(502, 'Piso/Caj', 2),
(503, 'Panel/Frontal-Caj', 2),
(504, 'Carter/Der-Caj', 2),
(505, 'Carter/Izq-Caj', 2),
(506, 'Piso/Delantero', 2),
(507, 'Carter/Maletero', 2),
(508, 'Piso/Maleta', 2),
(509, 'Manilla/Externa-Puerta/Izq', 2),
(510, 'Manilla/Externa-Puerta/Der', 2),
(511, 'Manilla/Externa-Puerta/Del-Der', 2),
(512, 'Manilla/Externa-Puerta/Del-Izq', 2),
(513, 'Manilla/Externa-Puerta/Tras-Der', 2),
(514, 'Manilla/Externa-Puerta/Tras-Izq', 2),
(515, 'Manilla/Externa-Compuerta/Trasera', 2),
(516, 'Tapa/Cubierta-Principal', 2),
(517, 'Encadenado/Deportivo', 2),
(518, 'Tapa/Protectora-Lateral/Der', 2),
(519, 'Tapa/Protectora-Lateral/Izq', 2),
(520, 'Tanque/Combustible', 2),
(521, 'Marco/Chasis', 2),
(522, 'Marco/Interno-Fibra/Frontal', 2),
(523, 'Filler', 2),
(524, 'Condensador-A/A', 2),
(525, 'Techo', 2),
(526, 'Enderezar/Compacto', 2),
(527, 'Enderezar/Bastidor', 2),
(528, 'Cuadrar/Frente-Vehiculo', 2),
(529, 'Cuadrar/Parte-Posterior/Vehiculo', 2),
(530, 'Carga/Ref-A/A', 2),
(531, 'Sustituir/Piezas-Mecanica', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avaluo`
--

CREATE TABLE IF NOT EXISTS `avaluo` (
  `id` varchar(45) NOT NULL,
  `lugarinspeccion` text NOT NULL,
  `fecha` date NOT NULL,
  `accidente_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_avaluo_accidente1` (`accidente_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `color`
--

CREATE TABLE IF NOT EXISTS `color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductores`
--

CREATE TABLE IF NOT EXISTS `conductores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombreconductor` varchar(150) NOT NULL,
  `cedulaconductor` varchar(45) NOT NULL,
  `nombrepropietario` varchar(150) NOT NULL,
  `cedulapropietario` varchar(45) NOT NULL,
  `direccionpropietario` text NOT NULL,
  `telefono` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE IF NOT EXISTS `marca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo`
--

CREATE TABLE IF NOT EXISTS `modelo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `marca_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_modelo_marca` (`marca_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perito`
--

CREATE TABLE IF NOT EXISTS `perito` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `profesion` varchar(45) DEFAULT NULL,
  `cedula` varchar(45) NOT NULL,
  `unidad` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguro`
--

CREATE TABLE IF NOT EXISTS `seguro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE IF NOT EXISTS `tipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `modelo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tipo_modelo1` (`modelo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoautoparte`
--

CREATE TABLE IF NOT EXISTS `tipoautoparte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tipoautoparte`
--

INSERT INTO `tipoautoparte` (`id`, `nombre`) VALUES
(1, 'Cambiar'),
(2, 'Reparar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE IF NOT EXISTS `vehiculo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serialcarroceria` varchar(80) NOT NULL,
  `serialmotor` varchar(80) NOT NULL,
  `numeropoliza` varchar(80) NOT NULL,
  `placa` varchar(45) NOT NULL,
  `anho` year(4) NOT NULL,
  `marca_id` int(11) NOT NULL,
  `modelo_id` int(11) NOT NULL,
  `tipo_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `seguro_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_vehiculo_marca1` (`marca_id`),
  KEY `fk_vehiculo_modelo1` (`modelo_id`),
  KEY `fk_vehiculo_tipo1` (`tipo_id`),
  KEY `fk_vehiculo_color1` (`color_id`),
  KEY `fk_vehiculo_seguro1` (`seguro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `accidente`
--
ALTER TABLE `accidente`
  ADD CONSTRAINT `fk_accidente_conductores1` FOREIGN KEY (`conductore_id`) REFERENCES `conductores` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_accidente_vehiculo1` FOREIGN KEY (`vehiculo_id`) REFERENCES `vehiculo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_accidente_perito1` FOREIGN KEY (`perito_id`) REFERENCES `perito` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `accidentesautoparte`
--
ALTER TABLE `accidentesautoparte`
  ADD CONSTRAINT `fk_accidentesautopartes_autopartes1` FOREIGN KEY (`autoparte_id`) REFERENCES `autopartes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_accidentesautopartes_accidente1` FOREIGN KEY (`accidente_id`) REFERENCES `accidente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `autopartes`
--
ALTER TABLE `autopartes`
  ADD CONSTRAINT `fk_autopartes_tipoautoparte1` FOREIGN KEY (`tipoautoparte_id`) REFERENCES `tipoautoparte` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `avaluo`
--
ALTER TABLE `avaluo`
  ADD CONSTRAINT `fk_avaluo_accidente1` FOREIGN KEY (`accidente_id`) REFERENCES `accidente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `modelo`
--
ALTER TABLE `modelo`
  ADD CONSTRAINT `fk_modelo_marca` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD CONSTRAINT `fk_tipo_modelo1` FOREIGN KEY (`modelo_id`) REFERENCES `modelo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `fk_vehiculo_marca1` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vehiculo_modelo1` FOREIGN KEY (`modelo_id`) REFERENCES `modelo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vehiculo_tipo1` FOREIGN KEY (`tipo_id`) REFERENCES `tipo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vehiculo_color1` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vehiculo_seguro1` FOREIGN KEY (`seguro_id`) REFERENCES `seguro` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
