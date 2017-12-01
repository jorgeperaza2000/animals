-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 24, 2017 at 06:13 PM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.1.11-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

DELIMITER $$
--
-- Functions
--
CREATE FUNCTION `getNumeroTicket` (`p_agencia` VARCHAR(200) CHARSET utf8) RETURNS INT(11) BEGIN
DECLARE next_numero_ticket INT(11);
SELECT IF(COUNT(*)>0,COUNT(*)+1,1) INTO next_numero_ticket FROM tickets WHERE DATE_FORMAT(fecha, "%Y-%m-%d") = CURDATE() AND agencia = p_agencia;
RETURN next_numero_ticket;
END$$

CREATE FUNCTION `getSerialTicket` (`p_semilla` INT(1)) RETURNS INT(11) NO SQL
BEGIN
DECLARE current_serial_ticket INT(11);
SELECT IF(COUNT(*)>0,MAX(serial) + p_semilla,30001) INTO current_serial_ticket FROM tickets WHERE DATE_FORMAT(fecha, "%Y-%m-%d") = CURDATE();
RETURN current_serial_ticket;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `limites`
--

CREATE TABLE `limites` (
  `id` int(11) NOT NULL,
  `numero_apuesta` varchar(2) NOT NULL,
  `id_sorteo` int(11) NOT NULL,
  `monto_limite` decimal(13,0) NOT NULL,
  `monto_acumulado` decimal(13,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contiene datos de los limites de las apuestas por sorteo';

--
-- Dumping data for table `limites`
--

INSERT INTO `limites` (`id`, `numero_apuesta`, `id_sorteo`, `monto_limite`, `monto_acumulado`) VALUES
(1, '0', 1, '25000', '0'),
(2, '00', 1, '25000', '0'),
(3, '01', 1, '25000', '0'),
(4, '02', 1, '25000', '0'),
(5, '03', 1, '25000', '0'),
(6, '04', 1, '25000', '0'),
(7, '05', 1, '25000', '0'),
(8, '06', 1, '25000', '0'),
(9, '07', 1, '25000', '0'),
(10, '08', 1, '25000', '0'),
(11, '09', 1, '25000', '0'),
(12, '10', 1, '25000', '0'),
(13, '11', 1, '25000', '0'),
(14, '12', 1, '25000', '0'),
(15, '13', 1, '25000', '0'),
(16, '14', 1, '25000', '0'),
(17, '15', 1, '25000', '0'),
(18, '16', 1, '25000', '0'),
(19, '17', 1, '25000', '0'),
(20, '18', 1, '25000', '0'),
(21, '19', 1, '25000', '0'),
(22, '20', 1, '25000', '0'),
(23, '21', 1, '25000', '0'),
(24, '22', 1, '25000', '0'),
(25, '23', 1, '25000', '0'),
(26, '24', 1, '25000', '0'),
(27, '25', 1, '25000', '0'),
(28, '26', 1, '25000', '0'),
(29, '27', 1, '25000', '0'),
(30, '28', 1, '25000', '0'),
(31, '29', 1, '25000', '0'),
(32, '30', 1, '25000', '0'),
(33, '31', 1, '25000', '0'),
(34, '32', 1, '25000', '0'),
(35, '33', 1, '25000', '0'),
(36, '34', 1, '25000', '0'),
(37, '35', 1, '25000', '0'),
(38, '36', 1, '25000', '0'),
(39, '0', 2, '25000', '0'),
(40, '00', 2, '25000', '0'),
(41, '01', 2, '25000', '0'),
(42, '02', 2, '25000', '0'),
(43, '03', 2, '25000', '0'),
(44, '04', 2, '25000', '0'),
(45, '05', 2, '25000', '0'),
(46, '06', 2, '25000', '0'),
(47, '07', 2, '25000', '0'),
(48, '08', 2, '25000', '0'),
(49, '09', 2, '25000', '0'),
(50, '10', 2, '25000', '0'),
(51, '11', 2, '25000', '0'),
(52, '12', 2, '25000', '0'),
(53, '13', 2, '25000', '0'),
(54, '14', 2, '25000', '0'),
(55, '15', 2, '25000', '0'),
(56, '16', 2, '25000', '0'),
(57, '17', 2, '25000', '0'),
(58, '18', 2, '25000', '0'),
(59, '19', 2, '25000', '0'),
(60, '20', 2, '25000', '0'),
(61, '21', 2, '25000', '0'),
(62, '22', 2, '25000', '0'),
(63, '23', 2, '25000', '0'),
(64, '24', 2, '25000', '0'),
(65, '25', 2, '25000', '0'),
(66, '26', 2, '25000', '0'),
(67, '27', 2, '25000', '0'),
(68, '28', 2, '25000', '0'),
(69, '29', 2, '25000', '0'),
(70, '30', 2, '25000', '0'),
(71, '31', 2, '25000', '0'),
(72, '32', 2, '25000', '0'),
(73, '33', 2, '25000', '0'),
(74, '34', 2, '25000', '0'),
(75, '35', 2, '25000', '0'),
(76, '36', 2, '25000', '0'),
(77, '0', 3, '25000', '0'),
(78, '00', 3, '25000', '0'),
(79, '01', 3, '25000', '0'),
(80, '02', 3, '25000', '0'),
(81, '03', 3, '25000', '0'),
(82, '04', 3, '25000', '0'),
(83, '05', 3, '25000', '0'),
(84, '06', 3, '25000', '0'),
(85, '07', 3, '25000', '0'),
(86, '08', 3, '25000', '0'),
(87, '09', 3, '25000', '0'),
(88, '10', 3, '25000', '0'),
(89, '11', 3, '25000', '0'),
(90, '12', 3, '25000', '0'),
(91, '13', 3, '25000', '0'),
(92, '14', 3, '25000', '0'),
(93, '15', 3, '25000', '0'),
(94, '16', 3, '25000', '0'),
(95, '17', 3, '25000', '0'),
(96, '18', 3, '25000', '0'),
(97, '19', 3, '25000', '0'),
(98, '20', 3, '25000', '0'),
(99, '21', 3, '25000', '0'),
(100, '22', 3, '25000', '0'),
(101, '23', 3, '25000', '0'),
(102, '24', 3, '25000', '0'),
(103, '25', 3, '25000', '0'),
(104, '26', 3, '25000', '0'),
(105, '27', 3, '25000', '0'),
(106, '28', 3, '25000', '0'),
(107, '29', 3, '25000', '0'),
(108, '30', 3, '25000', '0'),
(109, '31', 3, '25000', '0'),
(110, '32', 3, '25000', '0'),
(111, '33', 3, '25000', '0'),
(112, '34', 3, '25000', '0'),
(113, '35', 3, '25000', '0'),
(114, '36', 3, '25000', '0'),
(115, '0', 4, '25000', '0'),
(116, '00', 4, '25000', '0'),
(117, '01', 4, '25000', '0'),
(118, '02', 4, '25000', '0'),
(119, '03', 4, '25000', '0'),
(120, '04', 4, '25000', '0'),
(121, '05', 4, '25000', '0'),
(122, '06', 4, '25000', '0'),
(123, '07', 4, '25000', '0'),
(124, '08', 4, '25000', '0'),
(125, '09', 4, '25000', '0'),
(126, '10', 4, '25000', '0'),
(127, '11', 4, '25000', '0'),
(128, '12', 4, '25000', '0'),
(129, '13', 4, '25000', '0'),
(130, '14', 4, '25000', '0'),
(131, '15', 4, '25000', '0'),
(132, '16', 4, '25000', '0'),
(133, '17', 4, '25000', '0'),
(134, '18', 4, '25000', '0'),
(135, '19', 4, '25000', '0'),
(136, '20', 4, '25000', '0'),
(137, '21', 4, '25000', '0'),
(138, '22', 4, '25000', '0'),
(139, '23', 4, '25000', '0'),
(140, '24', 4, '25000', '0'),
(141, '25', 4, '25000', '0'),
(142, '26', 4, '25000', '0'),
(143, '27', 4, '25000', '0'),
(144, '28', 4, '25000', '0'),
(145, '29', 4, '25000', '0'),
(146, '30', 4, '25000', '0'),
(147, '31', 4, '25000', '0'),
(148, '32', 4, '25000', '0'),
(149, '33', 4, '25000', '0'),
(150, '34', 4, '25000', '0'),
(151, '35', 4, '25000', '0'),
(152, '36', 4, '25000', '0'),
(153, '0', 5, '25000', '0'),
(154, '00', 5, '25000', '0'),
(155, '01', 5, '25000', '0'),
(156, '02', 5, '25000', '0'),
(157, '03', 5, '25000', '0'),
(158, '04', 5, '25000', '0'),
(159, '05', 5, '25000', '0'),
(160, '06', 5, '25000', '0'),
(161, '07', 5, '25000', '0'),
(162, '08', 5, '25000', '0'),
(163, '09', 5, '25000', '0'),
(164, '10', 5, '25000', '0'),
(165, '11', 5, '25000', '0'),
(166, '12', 5, '25000', '0'),
(167, '13', 5, '25000', '0'),
(168, '14', 5, '25000', '0'),
(169, '15', 5, '25000', '0'),
(170, '16', 5, '25000', '0'),
(171, '17', 5, '25000', '0'),
(172, '18', 5, '25000', '0'),
(173, '19', 5, '25000', '0'),
(174, '20', 5, '25000', '0'),
(175, '21', 5, '25000', '0'),
(176, '22', 5, '25000', '0'),
(177, '23', 5, '25000', '0'),
(178, '24', 5, '25000', '0'),
(179, '25', 5, '25000', '0'),
(180, '26', 5, '25000', '0'),
(181, '27', 5, '25000', '0'),
(182, '28', 5, '25000', '0'),
(183, '29', 5, '25000', '0'),
(184, '30', 5, '25000', '0'),
(185, '31', 5, '25000', '0'),
(186, '32', 5, '25000', '0'),
(187, '33', 5, '25000', '0'),
(188, '34', 5, '25000', '0'),
(189, '35', 5, '25000', '0'),
(190, '36', 5, '25000', '0'),
(191, '0', 6, '25000', '0'),
(192, '00', 6, '25000', '0'),
(193, '01', 6, '25000', '0'),
(194, '02', 6, '25000', '0'),
(195, '03', 6, '25000', '0'),
(196, '04', 6, '25000', '0'),
(197, '05', 6, '25000', '0'),
(198, '06', 6, '25000', '0'),
(199, '07', 6, '25000', '0'),
(200, '08', 6, '25000', '0'),
(201, '09', 6, '25000', '0'),
(202, '10', 6, '25000', '0'),
(203, '11', 6, '25000', '0'),
(204, '12', 6, '25000', '0'),
(205, '13', 6, '25000', '0'),
(206, '14', 6, '25000', '0'),
(207, '15', 6, '25000', '0'),
(208, '16', 6, '25000', '0'),
(209, '17', 6, '25000', '0'),
(210, '18', 6, '25000', '0'),
(211, '19', 6, '25000', '0'),
(212, '20', 6, '25000', '0'),
(213, '21', 6, '25000', '0'),
(214, '22', 6, '25000', '0'),
(215, '23', 6, '25000', '0'),
(216, '24', 6, '25000', '0'),
(217, '25', 6, '25000', '0'),
(218, '26', 6, '25000', '0'),
(219, '27', 6, '25000', '0'),
(220, '28', 6, '25000', '0'),
(221, '29', 6, '25000', '0'),
(222, '30', 6, '25000', '0'),
(223, '31', 6, '25000', '0'),
(224, '32', 6, '25000', '0'),
(225, '33', 6, '25000', '0'),
(226, '34', 6, '25000', '0'),
(227, '35', 6, '25000', '0'),
(228, '36', 6, '25000', '0'),
(229, '0', 7, '25000', '0'),
(230, '00', 7, '25000', '0'),
(231, '01', 7, '25000', '0'),
(232, '02', 7, '25000', '0'),
(233, '03', 7, '25000', '0'),
(234, '04', 7, '25000', '0'),
(235, '05', 7, '25000', '0'),
(236, '06', 7, '25000', '0'),
(237, '07', 7, '25000', '0'),
(238, '08', 7, '25000', '0'),
(239, '09', 7, '25000', '0'),
(240, '10', 7, '25000', '0'),
(241, '11', 7, '25000', '0'),
(242, '12', 7, '25000', '0'),
(243, '13', 7, '25000', '0'),
(244, '14', 7, '25000', '0'),
(245, '15', 7, '25000', '0'),
(246, '16', 7, '25000', '0'),
(247, '17', 7, '25000', '0'),
(248, '18', 7, '25000', '0'),
(249, '19', 7, '25000', '0'),
(250, '20', 7, '25000', '0'),
(251, '21', 7, '25000', '0'),
(252, '22', 7, '25000', '0'),
(253, '23', 7, '25000', '0'),
(254, '24', 7, '25000', '0'),
(255, '25', 7, '25000', '0'),
(256, '26', 7, '25000', '0'),
(257, '27', 7, '25000', '0'),
(258, '28', 7, '25000', '0'),
(259, '29', 7, '25000', '0'),
(260, '30', 7, '25000', '0'),
(261, '31', 7, '25000', '0'),
(262, '32', 7, '25000', '0'),
(263, '33', 7, '25000', '0'),
(264, '34', 7, '25000', '0'),
(265, '35', 7, '25000', '0'),
(266, '36', 7, '25000', '0'),
(267, '0', 8, '25000', '0'),
(268, '00', 8, '25000', '0'),
(269, '01', 8, '25000', '0'),
(270, '02', 8, '25000', '0'),
(271, '03', 8, '25000', '0'),
(272, '04', 8, '25000', '0'),
(273, '05', 8, '25000', '0'),
(274, '06', 8, '25000', '0'),
(275, '07', 8, '25000', '0'),
(276, '08', 8, '25000', '0'),
(277, '09', 8, '25000', '0'),
(278, '10', 8, '25000', '0'),
(279, '11', 8, '25000', '0'),
(280, '12', 8, '25000', '0'),
(281, '13', 8, '25000', '0'),
(282, '14', 8, '25000', '0'),
(283, '15', 8, '25000', '0'),
(284, '16', 8, '25000', '0'),
(285, '17', 8, '25000', '0'),
(286, '18', 8, '25000', '0'),
(287, '19', 8, '25000', '0'),
(288, '20', 8, '25000', '0'),
(289, '21', 8, '25000', '0'),
(290, '22', 8, '25000', '0'),
(291, '23', 8, '25000', '0'),
(292, '24', 8, '25000', '0'),
(293, '25', 8, '25000', '0'),
(294, '26', 8, '25000', '0'),
(295, '27', 8, '25000', '0'),
(296, '28', 8, '25000', '0'),
(297, '29', 8, '25000', '0'),
(298, '30', 8, '25000', '0'),
(299, '31', 8, '25000', '0'),
(300, '32', 8, '25000', '0'),
(301, '33', 8, '25000', '0'),
(302, '34', 8, '25000', '0'),
(303, '35', 8, '25000', '0'),
(304, '36', 8, '25000', '0');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resultados`
--

CREATE TABLE `resultados` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `id_sorteo` int(11) NOT NULL,
  `numero_apuesta` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resultados`
--

INSERT INTO `resultados` (`id`, `fecha`, `id_sorteo`, `numero_apuesta`) VALUES
(1, '2017-11-15', 1, 16),
(2, '2017-11-15', 1, 33),
(3, '2017-11-15', 2, 29),
(4, '2017-11-15', 3, 12),
(5, '2017-11-15', 4, 25),
(6, '2017-11-15', 5, 28),
(7, '2017-11-15', 6, 29),
(8, '2017-11-15', 7, 2),
(9, '2017-11-15', 8, 22),
(25, '2017-11-16', 8, 28),
(24, '2017-11-16', 7, 10),
(23, '2017-11-16', 6, 29),
(22, '2017-11-16', 5, 8),
(21, '2017-11-16', 4, 4),
(20, '2017-11-16', 3, 14),
(19, '2017-11-16', 2, 16),
(18, '2017-11-16', 1, 3),
(26, '2017-11-17', 1, 26),
(27, '2017-11-17', 2, 33),
(28, '2017-11-17', 3, 5),
(29, '2017-11-17', 4, 23),
(30, '2017-11-17', 5, 4),
(31, '2017-11-17', 6, 34),
(32, '2017-11-17', 7, 25),
(33, '2017-11-18', 1, 19),
(34, '2017-11-18', 2, 9),
(35, '2017-11-18', 3, 13),
(36, '2017-11-18', 4, 28),
(37, '2017-11-18', 5, 3),
(38, '2017-11-18', 6, 16),
(39, '2017-11-18', 7, 15),
(40, '2017-11-18', 8, 4),
(41, '2017-11-19', 1, 26),
(42, '2017-11-19', 2, 20),
(43, '2017-11-19', 3, 35),
(44, '2017-11-19', 4, 33),
(45, '2017-11-19', 5, 36),
(46, '2017-11-19', 6, 23),
(47, '2017-11-19', 7, 9),
(48, '2017-11-19', 8, 28),
(49, '2017-11-21', 1, 21),
(50, '2017-11-21', 2, 35),
(51, '2017-11-21', 3, 21),
(52, '2017-11-21', 4, 28),
(53, '2017-11-21', 5, 36),
(54, '2017-11-21', 6, 29),
(55, '2017-11-22', 1, 14),
(56, '2017-11-22', 2, 19),
(57, '2017-11-22', 3, 31),
(58, '2017-11-22', 4, 23),
(59, '2017-11-22', 5, 1),
(60, '2017-11-22', 6, 34),
(61, '2017-11-22', 7, 26),
(62, '2017-11-22', 8, 22),
(63, '2017-11-23', 1, 36),
(64, '2017-11-23', 2, 18),
(65, '2017-11-23', 3, 8),
(66, '2017-11-23', 4, 21),
(67, '2017-11-23', 5, 4),
(68, '2017-11-23', 6, 25),
(69, '2017-11-23', 7, 22),
(70, '2017-11-23', 8, 6),
(71, '2017-11-24', 1, 8),
(72, '2017-11-24', 2, 19),
(73, '2017-11-24', 3, 15),
(74, '2017-11-24', 4, 18),
(75, '2017-11-24', 5, 1),
(76, '2017-11-24', 6, 35),
(77, '2017-11-24', 7, 13);

--
-- Triggers `resultados`
--
DELIMITER $$
CREATE TRIGGER `generarTicketsPremiados` AFTER INSERT ON `resultados` FOR EACH ROW UPDATE ticket_det SET estatus = 1, monto_premiado = monto * (1*30), pagado = 0 WHERE id_sorteo = NEW.id_sorteo AND numero_apuesta = NEW.numero_apuesta AND fecha = NEW.fecha AND estatus != 3
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `quitarPremiadosAnterioresNoPagados` AFTER INSERT ON `resultados` FOR EACH ROW UPDATE ticket_det SET monto_premiado = 0, estatus = 0 WHERE id_sorteo = NEW.id_sorteo AND numero_apuesta != NEW.numero_apuesta AND fecha = NEW.fecha AND pagado = 0 AND estatus != 3
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sorteos`
--

CREATE TABLE `sorteos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(20) DEFAULT NULL,
  `sorteo` varchar(100) NOT NULL,
  `hora_limite` time NOT NULL,
  `estatus` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contiene datos sobre los sorteos';

--
-- Dumping data for table `sorteos`
--

INSERT INTO `sorteos` (`id`, `codigo`, `sorteo`, `hora_limite`, `estatus`) VALUES
(1, '@LA 10', '@LottoActivo 10', '09:55:00', 1),
(2, '@LA 11', '@LottoActivo 11', '10:55:00', 1),
(3, '@LA 12', '@LottoActivo 12', '11:55:00', 1),
(4, '@LA 1', '@LottoActivo 1', '12:55:00', 1),
(5, '@LA 4', '@LottoActivo 4', '15:55:00', 1),
(6, '@LA 5', '@LottoActivo 5', '16:55:00', 1),
(7, '@LA 6', '@LottoActivo 6', '17:55:00', 1),
(8, '@LA 7', '@LottoActivo 7', '18:55:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `numero_ticket` int(11) NOT NULL,
  `serial` int(11) NOT NULL,
  `total_apuestas` int(11) NOT NULL,
  `total_monto` int(11) NOT NULL,
  `estatus` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Activo, 1: Anulado',
  `id_usuario` int(11) NOT NULL,
  `agencia` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contiene datos del encabezado de los tickets vendidos';

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `fecha`, `hora`, `numero_ticket`, `serial`, `total_apuestas`, `total_monto`, `estatus`, `id_usuario`, `agencia`) VALUES
(1, '2017-11-15', '00:41:29', 1, 30001, 1, 100, 0, 2, 'CruzVerde'),
(2, '2017-11-15', '00:41:40', 2, 30005, 1, 200, 0, 2, 'CruzVerde'),
(3, '2017-11-15', '00:41:50', 3, 30010, 1, 300, 0, 2, 'CruzVerde'),
(4, '2017-11-15', '00:42:01', 4, 30011, 2, 10000, 0, 2, 'CruzVerde'),
(5, '2017-11-16', '08:23:38', 5, 30012, 1, 200, 0, 2, 'CruzVerde'),
(6, '2017-11-16', '08:23:46', 6, 30014, 4, 1200, 0, 2, 'CruzVerde'),
(7, '2017-11-16', '08:24:06', 7, 30016, 6, 1800, 0, 2, 'CruzVerde'),
(8, '2017-11-16', '08:24:44', 8, 30017, 10, 5000, 0, 2, 'CruzVerde'),
(9, '2017-11-16', '08:24:57', 9, 30019, 10, 2000, 0, 2, 'CruzVerde'),
(10, '2017-11-16', '08:48:49', 10, 30022, 1, 200, 0, 2, 'CruzVerde'),
(11, '2017-11-16', '08:53:05', 11, 30027, 1, 200, 0, 2, 'CruzVerde'),
(12, '2017-11-16', '12:07:57', 8, 30032, 18, 18000, 0, 2, 'CruzVerde'),
(13, '2017-11-18', '18:18:25', 1, 30001, 4, 8000, 0, 1, 'CruzVerde'),
(14, '2017-11-18', '18:29:49', 2, 30002, 6, 3000, 0, 1, 'CruzVerde'),
(15, '2017-11-18', '18:30:43', 3, 30007, 18, 18000, 0, 1, 'CruzVerde'),
(16, '2017-11-19', '11:09:21', 1, 30001, 1, 200, 0, 1, 'CruzVerde'),
(17, '2017-11-19', '11:38:08', 2, 30004, 6, 12000, 0, 1, 'CruzVerde'),
(18, '2017-11-19', '12:08:28', 3, 30009, 6, 12000, 0, 1, 'CruzVerde'),
(19, '2017-11-19', '18:30:07', 4, 30012, 10, 20000, 0, 1, 'CruzVerde');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_det`
--

CREATE TABLE `ticket_det` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `id_ticket` int(11) NOT NULL,
  `numero_apuesta` varchar(2) NOT NULL,
  `nombre_apuesta` varchar(100) NOT NULL,
  `id_sorteo` int(11) NOT NULL,
  `monto` decimal(13,0) NOT NULL DEFAULT '0',
  `estatus` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Pendiente, 1: Premiado, 2: Perdedor, 3: Anulado',
  `monto_premiado` decimal(13,0) NOT NULL DEFAULT '0',
  `pagado` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: No, 1: Si',
  `fecha_pagado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contiene datos del detalle del ticket vendido';

--
-- Dumping data for table `ticket_det`
--

INSERT INTO `ticket_det` (`id`, `fecha`, `id_ticket`, `numero_apuesta`, `nombre_apuesta`, `id_sorteo`, `monto`, `estatus`, `monto_premiado`, `pagado`, `fecha_pagado`) VALUES
(1, '2017-11-15', 1, '16', 'Oso', 1, '100', 1, '3000', 1, '2017-11-16 00:42:50'),
(2, '2017-11-15', 2, '33', 'Pescado', 1, '200', 1, '6000', 0, NULL),
(3, '2017-11-15', 3, '16', 'Oso', 1, '300', 0, '0', 0, NULL),
(4, '2017-11-15', 4, '16', 'Oso', 1, '5000', 0, '0', 0, NULL),
(5, '2017-11-15', 4, '33', 'Pescado', 1, '5000', 1, '150000', 0, NULL),
(6, '2017-11-16', 5, '33', 'Pescado', 5, '200', 0, '0', 0, NULL),
(7, '2017-11-16', 6, '15', 'Zorro', 4, '300', 0, '0', 0, NULL),
(8, '2017-11-16', 6, '15', 'Zorro', 5, '300', 0, '0', 0, NULL),
(9, '2017-11-16', 6, '25', 'Gallina', 4, '300', 0, '0', 0, NULL),
(10, '2017-11-16', 6, '25', 'Gallina', 5, '300', 0, '0', 0, NULL),
(11, '2017-11-16', 7, '15', 'Zorro', 4, '300', 0, '0', 0, NULL),
(12, '2017-11-16', 7, '15', 'Zorro', 5, '300', 0, '0', 0, NULL),
(13, '2017-11-16', 7, '25', 'Gallina', 4, '300', 0, '0', 0, NULL),
(14, '2017-11-16', 7, '25', 'Gallina', 5, '300', 0, '0', 0, NULL),
(15, '2017-11-16', 7, '36', 'Culebra', 4, '300', 0, '0', 0, NULL),
(16, '2017-11-16', 7, '36', 'Culebra', 5, '300', 0, '0', 0, NULL),
(17, '2017-11-16', 8, '08', 'Raton', 4, '500', 0, '0', 0, NULL),
(18, '2017-11-16', 8, '08', 'Raton', 5, '500', 1, '15000', 0, NULL),
(19, '2017-11-16', 8, '11', 'Gato', 4, '500', 0, '0', 0, NULL),
(20, '2017-11-16', 8, '11', 'Gato', 5, '500', 0, '0', 0, NULL),
(21, '2017-11-16', 8, '17', 'Pavo', 4, '500', 0, '0', 0, NULL),
(22, '2017-11-16', 8, '17', 'Pavo', 5, '500', 0, '0', 0, NULL),
(23, '2017-11-16', 8, '20', 'Cochino', 4, '500', 0, '0', 0, NULL),
(24, '2017-11-16', 8, '20', 'Cochino', 5, '500', 0, '0', 0, NULL),
(25, '2017-11-16', 8, '23', 'Zebra', 4, '500', 0, '0', 0, NULL),
(26, '2017-11-16', 8, '23', 'Zebra', 5, '500', 0, '0', 0, NULL),
(27, '2017-11-16', 9, '11', 'Gato', 4, '200', 0, '0', 0, NULL),
(28, '2017-11-16', 9, '11', 'Gato', 5, '200', 0, '0', 0, NULL),
(29, '2017-11-16', 9, '13', 'Mono', 4, '200', 0, '0', 0, NULL),
(30, '2017-11-16', 9, '13', 'Mono', 5, '200', 0, '0', 0, NULL),
(31, '2017-11-16', 9, '16', 'Oso', 4, '200', 0, '0', 0, NULL),
(32, '2017-11-16', 9, '16', 'Oso', 5, '200', 0, '0', 0, NULL),
(33, '2017-11-16', 9, '19', 'Chivo', 4, '200', 0, '0', 0, NULL),
(34, '2017-11-16', 9, '19', 'Chivo', 5, '200', 0, '0', 0, NULL),
(35, '2017-11-16', 9, '23', 'Zebra', 4, '200', 0, '0', 0, NULL),
(36, '2017-11-16', 9, '23', 'Zebra', 5, '200', 0, '0', 0, NULL),
(37, '2017-11-16', 10, '11', 'Gato', 4, '200', 0, '0', 0, NULL),
(38, '2017-11-16', 11, '10', 'Tigre', 4, '200', 0, '0', 0, NULL),
(39, '2017-11-16', 12, '19', 'Chivo', 4, '1000', 0, '0', 0, NULL),
(40, '2017-11-16', 12, '20', 'Cochino', 4, '1000', 0, '0', 0, NULL),
(41, '2017-11-16', 12, '21', 'Gallo', 4, '1000', 0, '0', 0, NULL),
(42, '2017-11-16', 12, '22', 'Camello', 4, '1000', 0, '0', 0, NULL),
(43, '2017-11-16', 12, '23', 'Zebra', 4, '1000', 0, '0', 0, NULL),
(44, '2017-11-16', 12, '24', 'Iguana', 4, '1000', 0, '0', 0, NULL),
(45, '2017-11-16', 12, '25', 'Gallina', 4, '1000', 0, '0', 0, NULL),
(46, '2017-11-16', 12, '26', 'Vaca', 4, '1000', 0, '0', 0, NULL),
(47, '2017-11-16', 12, '27', 'Perro', 4, '1000', 0, '0', 0, NULL),
(48, '2017-11-16', 12, '28', 'Zamuro', 4, '1000', 0, '0', 0, NULL),
(49, '2017-11-16', 12, '29', 'Elefante', 4, '1000', 0, '0', 0, NULL),
(50, '2017-11-16', 12, '30', 'Caiman', 4, '1000', 0, '0', 0, NULL),
(51, '2017-11-16', 12, '31', 'Lapa', 4, '1000', 0, '0', 0, NULL),
(52, '2017-11-16', 12, '32', 'Ardilla', 4, '1000', 0, '0', 0, NULL),
(53, '2017-11-16', 12, '33', 'Pescado', 4, '1000', 0, '0', 0, NULL),
(54, '2017-11-16', 12, '34', 'Venado', 4, '1000', 0, '0', 0, NULL),
(55, '2017-11-16', 12, '35', 'Jirafa', 4, '1000', 0, '0', 0, NULL),
(56, '2017-11-16', 12, '36', 'Culebra', 4, '1000', 0, '0', 0, NULL),
(57, '2017-11-18', 13, '09', 'Aguila', 8, '2000', 0, '0', 0, NULL),
(58, '2017-11-18', 13, '01', 'Carnero', 8, '2000', 0, '0', 0, NULL),
(59, '2017-11-18', 13, '31', 'Lapa', 8, '2000', 0, '0', 0, NULL),
(60, '2017-11-18', 13, '32', 'Ardilla', 8, '2000', 0, '0', 0, NULL),
(61, '2017-11-18', 14, '04', 'Alacran', 8, '500', 1, '15000', 1, '2017-11-18 22:58:47'),
(62, '2017-11-18', 14, '02', 'Toro', 8, '500', 0, '0', 0, NULL),
(63, '2017-11-18', 14, '11', 'Gato', 8, '500', 0, '0', 0, NULL),
(64, '2017-11-18', 14, '20', 'Cochino', 8, '500', 0, '0', 0, NULL),
(65, '2017-11-18', 14, '18', 'Burro', 8, '500', 0, '0', 0, NULL),
(66, '2017-11-18', 14, '34', 'Venado', 8, '500', 0, '0', 0, NULL),
(67, '2017-11-18', 15, '19', 'Chivo', 8, '1000', 0, '0', 0, NULL),
(68, '2017-11-18', 15, '20', 'Cochino', 8, '1000', 0, '0', 0, NULL),
(69, '2017-11-18', 15, '21', 'Gallo', 8, '1000', 0, '0', 0, NULL),
(70, '2017-11-18', 15, '22', 'Camello', 8, '1000', 0, '0', 0, NULL),
(71, '2017-11-18', 15, '23', 'Zebra', 8, '1000', 0, '0', 0, NULL),
(72, '2017-11-18', 15, '24', 'Iguana', 8, '1000', 0, '0', 0, NULL),
(73, '2017-11-18', 15, '25', 'Gallina', 8, '1000', 0, '0', 0, NULL),
(74, '2017-11-18', 15, '26', 'Vaca', 8, '1000', 0, '0', 0, NULL),
(75, '2017-11-18', 15, '27', 'Perro', 8, '1000', 0, '0', 0, NULL),
(76, '2017-11-18', 15, '28', 'Zamuro', 8, '1000', 0, '0', 0, NULL),
(77, '2017-11-18', 15, '29', 'Elefante', 8, '1000', 0, '0', 0, NULL),
(78, '2017-11-18', 15, '30', 'Caiman', 8, '1000', 0, '0', 0, NULL),
(79, '2017-11-18', 15, '31', 'Lapa', 8, '1000', 0, '0', 0, NULL),
(80, '2017-11-18', 15, '32', 'Ardilla', 8, '1000', 0, '0', 0, NULL),
(81, '2017-11-18', 15, '33', 'Pescado', 8, '1000', 0, '0', 0, NULL),
(82, '2017-11-18', 15, '34', 'Venado', 8, '1000', 0, '0', 0, NULL),
(83, '2017-11-18', 15, '35', 'Jirafa', 8, '1000', 0, '0', 0, NULL),
(84, '2017-11-18', 15, '36', 'Culebra', 8, '1000', 0, '0', 0, NULL),
(85, '2017-11-19', 16, '10', 'Tigre', 3, '200', 0, '0', 0, NULL),
(86, '2017-11-19', 17, '06', 'Rana', 3, '2000', 0, '0', 0, NULL),
(87, '2017-11-19', 17, '23', 'Zebra', 3, '2000', 0, '0', 0, NULL),
(88, '2017-11-19', 17, '12', 'Caballo', 3, '2000', 0, '0', 0, NULL),
(89, '2017-11-19', 17, '02', 'Toro', 3, '2000', 0, '0', 0, NULL),
(90, '2017-11-19', 17, '15', 'Zorro', 3, '2000', 0, '0', 0, NULL),
(91, '2017-11-19', 17, '16', 'Oso', 3, '2000', 0, '0', 0, NULL),
(92, '2017-11-19', 18, '15', 'Zorro', 4, '2000', 0, '0', 0, NULL),
(93, '2017-11-19', 18, '06', 'Rana', 4, '2000', 0, '0', 0, NULL),
(94, '2017-11-19', 18, '16', 'Oso', 4, '2000', 0, '0', 0, NULL),
(95, '2017-11-19', 18, '32', 'Ardilla', 4, '2000', 0, '0', 0, NULL),
(96, '2017-11-19', 18, '31', 'Lapa', 4, '2000', 0, '0', 0, NULL),
(97, '2017-11-19', 18, '09', 'Aguila', 4, '2000', 0, '0', 0, NULL),
(98, '2017-11-19', 19, '06', 'Rana', 8, '2000', 0, '0', 0, NULL),
(99, '2017-11-19', 19, '01', 'Carnero', 8, '2000', 0, '0', 0, NULL),
(100, '2017-11-19', 19, '02', 'Toro', 8, '2000', 0, '0', 0, NULL),
(101, '2017-11-19', 19, '03', 'Ciempies', 8, '2000', 0, '0', 0, NULL),
(102, '2017-11-19', 19, '04', 'Alacran', 8, '2000', 0, '0', 0, NULL),
(103, '2017-11-19', 19, '05', 'Leon', 8, '2000', 0, '0', 0, NULL),
(104, '2017-11-19', 19, '07', 'Perico', 8, '2000', 0, '0', 0, NULL),
(105, '2017-11-19', 19, '08', 'Raton', 8, '2000', 0, '0', 0, NULL),
(106, '2017-11-19', 19, '0', 'Delfin', 8, '2000', 0, '0', 0, NULL),
(107, '2017-11-19', 19, '00', 'Ballena', 8, '2000', 0, '0', 0, NULL);

--
-- Triggers `ticket_det`
--
DELIMITER $$
CREATE TRIGGER `actualiza_monto_acumulado` AFTER INSERT ON `ticket_det` FOR EACH ROW UPDATE limites SET monto_acumulado = monto_acumulado + NEW.monto 
WHERE numero_apuesta = NEW.numero_apuesta AND id_sorteo = NEW.id_sorteo
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clave` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agencia` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `porc_comision` int(11) DEFAULT NULL,
  `tipo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `clave`, `agencia`, `porc_comision`, `tipo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'jorge', 'jorgeperaza2000@gmail.com', '$2y$10$xcsPlyWC69TAgjcH6B.NfOQUWxhR4qQJ5bBGkAqpT9UUTneqTXo0O', '123456', 'CruzVerde', 12, 'Admin', 'Y8UggzqgmoGNotIS6AcAsgvzLIy2IR1qO4JhV1lDwge91f82kkPxifTFuEG8', '2017-11-17 07:22:10', '2017-11-17 07:22:10'),
(2, 'marquiel', 'marquielromero@gmail.com', '$2y$10$0G0a6t0/zJQp1HlXhDHucOcKoatVzesq2vYtbSifWx3dKBse6Sjji', '123456', 'CruzVerde', 12, 'Vendedor', 'STY35nEzP9f4OviGMvwNIneHWlT1juWgJKZ88jQPa0XjYVTphTE75pPThj9w', '2017-11-17 07:28:43', '2017-11-17 07:28:43');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(250) NOT NULL,
  `clave` varchar(250) NOT NULL,
  `agencia` varchar(200) NOT NULL,
  `porc_comision` int(11) NOT NULL,
  `tipo` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `clave`, `agencia`, `porc_comision`, `tipo`) VALUES
(1, 'marquiel', '1234', 'CruzVerde', 12, 'Vendedor'),
(2, 'jorge', '1234', 'CruzVerde', 12, 'Admin'),
(3, 'tamanaco', '1234', 'Tamanaco', 12, 'Admin');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_estatus_ticket_det`
--
CREATE TABLE `vw_estatus_ticket_det` (
`id_ticket` int(11)
,`estatus` varchar(17)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_monto_pagado_ticket_det`
--
CREATE TABLE `vw_monto_pagado_ticket_det` (
`id_ticket` int(11)
,`monto_apuesta` decimal(35,0)
,`monto_premiado` decimal(35,0)
,`monto_pagado` decimal(35,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_reporte_ticket_det`
--
CREATE TABLE `vw_reporte_ticket_det` (
`id` int(11)
,`id_ticket` int(11)
,`numero_apuesta` varchar(2)
,`apuesta` varchar(103)
,`id_sorteo` int(11)
,`sorteo` varchar(100)
,`monto_apuesta` decimal(13,0)
,`monto_premiado` decimal(13,0)
,`pagado` tinyint(1)
,`fecha_pagado` varchar(32)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_reporte_ticket_gral`
--
CREATE TABLE `vw_reporte_ticket_gral` (
`id` int(11)
,`agencia` varchar(200)
,`fecha` varchar(10)
,`hora` time
,`numero_ticket` int(11)
,`total_monto` int(11)
,`estatusTicket` varchar(7)
,`estatus` varchar(17)
,`monto_premiado` decimal(35,0)
,`monto_pagado` decimal(35,0)
,`pagado` varchar(32)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_reporte_ventas_diarias`
--
CREATE TABLE `vw_reporte_ventas_diarias` (
`fecha` date
,`agencia` varchar(200)
,`venta` decimal(35,0)
,`premios` decimal(35,0)
,`total` decimal(36,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_reporte_ventas_generales`
--
CREATE TABLE `vw_reporte_ventas_generales` (
`fecha` date
,`agencia` varchar(200)
,`venta` decimal(35,0)
,`comision` decimal(38,2)
,`premios` decimal(35,0)
,`total` decimal(40,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_resultados`
--
CREATE TABLE `vw_resultados` (
`id` int(11)
,`id_sorteo` int(11)
,`sorteo` varchar(100)
,`numero_apuesta` int(11)
,`fecha` date
);

-- --------------------------------------------------------

--
-- Structure for view `vw_estatus_ticket_det`
--
DROP TABLE IF EXISTS `vw_estatus_ticket_det`;

CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_estatus_ticket_det`  AS  select `vw_monto_pagado_ticket_det`.`id_ticket` AS `id_ticket`,(case when (`vw_monto_pagado_ticket_det`.`monto_premiado` > `vw_monto_pagado_ticket_det`.`monto_pagado`) then 'Pago Parcial' when (`vw_monto_pagado_ticket_det`.`monto_premiado` = `vw_monto_pagado_ticket_det`.`monto_pagado`) then 'Pagado' when ((`vw_monto_pagado_ticket_det`.`monto_premiado` > 0) and isnull(`vw_monto_pagado_ticket_det`.`monto_pagado`)) then 'Ganador Por Pagar' end) AS `estatus` from `vw_monto_pagado_ticket_det` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_monto_pagado_ticket_det`
--
DROP TABLE IF EXISTS `vw_monto_pagado_ticket_det`;

CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_monto_pagado_ticket_det`  AS  select `a`.`id_ticket` AS `id_ticket`,sum(`a`.`monto`) AS `monto_apuesta`,sum(`a`.`monto_premiado`) AS `monto_premiado`,(select sum(`ticket_det`.`monto_premiado`) from `ticket_det` where ((`ticket_det`.`id_ticket` = `a`.`id_ticket`) and (`ticket_det`.`pagado` = 1))) AS `monto_pagado` from `ticket_det` `a` where (`a`.`monto_premiado` > 0) group by `a`.`id_ticket` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_reporte_ticket_det`
--
DROP TABLE IF EXISTS `vw_reporte_ticket_det`;

CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_reporte_ticket_det`  AS  select `a`.`id` AS `id`,`a`.`id_ticket` AS `id_ticket`,`a`.`numero_apuesta` AS `numero_apuesta`,concat(`a`.`numero_apuesta`,'-',`a`.`nombre_apuesta`) AS `apuesta`,`a`.`id_sorteo` AS `id_sorteo`,`b`.`sorteo` AS `sorteo`,`a`.`monto` AS `monto_apuesta`,`a`.`monto_premiado` AS `monto_premiado`,`a`.`pagado` AS `pagado`,if(isnull(date_format(`a`.`fecha_pagado`,'%d-%m-%Y %h:%i:%s')),'NO',concat('Si, el ',date_format(`a`.`fecha_pagado`,'%d-%m-%Y'),' a las ',date_format(`a`.`fecha_pagado`,'%h:%i:%s'))) AS `fecha_pagado` from (`ticket_det` `a` join `sorteos` `b`) where (`a`.`id_sorteo` = `b`.`id`) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_reporte_ticket_gral`
--
DROP TABLE IF EXISTS `vw_reporte_ticket_gral`;

CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_reporte_ticket_gral`  AS  select `a`.`id` AS `id`,`a`.`agencia` AS `agencia`,date_format(`a`.`fecha`,'%d-%m-%Y') AS `fecha`,`a`.`hora` AS `hora`,`a`.`numero_ticket` AS `numero_ticket`,`a`.`total_monto` AS `total_monto`,if((`a`.`estatus` = 0),'Activo','Anulado') AS `estatusTicket`,(select `vw_estatus_ticket_det`.`estatus` from `vw_estatus_ticket_det` where (`vw_estatus_ticket_det`.`id_ticket` = `a`.`id`)) AS `estatus`,sum(`b`.`monto_premiado`) AS `monto_premiado`,(select `vw_monto_pagado_ticket_det`.`monto_pagado` from `vw_monto_pagado_ticket_det` where (`vw_monto_pagado_ticket_det`.`id_ticket` = `a`.`id`)) AS `monto_pagado`,if(isnull(date_format(max(`b`.`fecha_pagado`),'%d-%m-%Y %h:%i:%s')),'NO',concat('Si, el ',date_format(max(`b`.`fecha_pagado`),'%d-%m-%Y'),' a las ',date_format(max(`b`.`fecha_pagado`),'%h:%i:%s'))) AS `pagado` from (`tickets` `a` join `ticket_det` `b`) where (`a`.`id` = `b`.`id_ticket`) group by `a`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_reporte_ventas_diarias`
--
DROP TABLE IF EXISTS `vw_reporte_ventas_diarias`;

CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_reporte_ventas_diarias`  AS  select `ticket_det`.`fecha` AS `fecha`,`tickets`.`agencia` AS `agencia`,sum(`ticket_det`.`monto`) AS `venta`,sum(`ticket_det`.`monto_premiado`) AS `premios`,(sum(`ticket_det`.`monto`) - sum(`ticket_det`.`monto_premiado`)) AS `total` from (`ticket_det` join `tickets`) where ((`tickets`.`id` = `ticket_det`.`id_ticket`) and (`tickets`.`estatus` = 0)) group by `ticket_det`.`fecha`,`tickets`.`agencia` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_reporte_ventas_generales`
--
DROP TABLE IF EXISTS `vw_reporte_ventas_generales`;

CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_reporte_ventas_generales`  AS  select `ticket_det`.`fecha` AS `fecha`,`tickets`.`agencia` AS `agencia`,sum(`ticket_det`.`monto`) AS `venta`,(sum(`ticket_det`.`monto`) * 0.12) AS `comision`,sum(`ticket_det`.`monto_premiado`) AS `premios`,((sum(`ticket_det`.`monto`) - (sum(`ticket_det`.`monto`) * 0.12)) - sum(`ticket_det`.`monto_premiado`)) AS `total` from ((`ticket_det` join `tickets`) join `users`) where ((`ticket_det`.`id_ticket` = `tickets`.`id`) and (`tickets`.`id_usuario` = `users`.`id`) and (`tickets`.`estatus` = 0)) group by `ticket_det`.`fecha`,`tickets`.`agencia` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_resultados`
--
DROP TABLE IF EXISTS `vw_resultados`;

CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_resultados`  AS  select `a`.`id` AS `id`,`a`.`id_sorteo` AS `id_sorteo`,`b`.`sorteo` AS `sorteo`,`a`.`numero_apuesta` AS `numero_apuesta`,`a`.`fecha` AS `fecha` from (`resultados` `a` join `sorteos` `b`) where ((`a`.`id_sorteo` = `b`.`id`) and `a`.`id` in (select max(`resultados`.`id`) from `resultados` group by `resultados`.`id_sorteo`,`resultados`.`fecha`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `limites`
--
ALTER TABLE `limites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `resultados`
--
ALTER TABLE `resultados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fecha` (`fecha`,`id_sorteo`,`numero_apuesta`);

--
-- Indexes for table `sorteos`
--
ALTER TABLE `sorteos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `ticket_det`
--
ALTER TABLE `ticket_det`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ticket` (`id_ticket`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `limites`
--
ALTER TABLE `limites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `resultados`
--
ALTER TABLE `resultados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `sorteos`
--
ALTER TABLE `sorteos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `ticket_det`
--
ALTER TABLE `ticket_det`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
DELIMITER $$
--
-- Events
--
CREATE EVENT `resetear_monto_acumulado` ON SCHEDULE EVERY 1 DAY STARTS '2017-09-16 22:00:00' ON COMPLETION NOT PRESERVE ENABLE DO update limites
set monto_acumulado = 0$$

CREATE EVENT `abrir_sorteos` ON SCHEDULE EVERY 1 DAY STARTS '2017-10-01 20:00:00' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE sorteos SET estatus = 0$$

CREATE EVENT `cerrar_sorteo` ON SCHEDULE EVERY 1 HOUR STARTS '2017-10-03 07:55:00' ON COMPLETION NOT PRESERVE ENABLE DO IF CURRENT_TIME() > "09:00:00" AND CURRENT_TIME() < "20:00:00" THEN 
	UPDATE sorteos SET estatus = 1 WHERE hora_limite <= CURRENT_TIME();
END IF$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
