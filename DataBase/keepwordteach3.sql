-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.1.29-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for keepworkteach3
CREATE DATABASE IF NOT EXISTS `keepworkteach3` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `keepworkteach3`;

-- Dumping structure for table keepworkteach3.auto_id_test
CREATE TABLE IF NOT EXISTS `auto_id_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2019 DEFAULT CHARSET=utf8;

-- Dumping data for table keepworkteach3.auto_id_test: ~0 rows (approximately)
/*!40000 ALTER TABLE `auto_id_test` DISABLE KEYS */;
INSERT INTO `auto_id_test` (`id`) VALUES
	(2018);
/*!40000 ALTER TABLE `auto_id_test` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.car
CREATE TABLE IF NOT EXISTS `car` (
  `id` bigint(20) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `fuel` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table keepworkteach3.car: 486 rows
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` (`id`, `brand`, `color`, `fuel`, `model`, `year`) VALUES
	(1, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(2, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(3, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(4, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(5, 'Audi', 'Black', 'A95', 'A3', 2014),
	(6, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(7, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(8, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(9, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(10, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(11, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(12, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(13, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(14, 'Audi', 'Black', 'A95', 'A3', 2014),
	(15, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(16, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(17, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(18, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(19, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(20, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(21, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(22, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(23, 'Audi', 'Black', 'A95', 'A3', 2014),
	(24, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(25, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(26, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(27, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(28, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(29, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(30, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(31, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(32, 'Audi', 'Black', 'A95', 'A3', 2014),
	(33, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(34, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(35, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(36, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(37, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(38, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(39, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(40, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(41, 'Audi', 'Black', 'A95', 'A3', 2014),
	(42, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(43, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(44, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(45, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(46, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(47, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(48, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(49, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(50, 'Audi', 'Black', 'A95', 'A3', 2014),
	(51, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(52, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(53, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(54, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(55, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(56, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(57, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(58, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(59, 'Audi', 'Black', 'A95', 'A3', 2014),
	(60, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(61, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(62, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(63, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(64, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(65, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(66, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(67, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(68, 'Audi', 'Black', 'A95', 'A3', 2014),
	(69, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(70, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(71, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(72, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(73, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(74, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(75, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(76, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(77, 'Audi', 'Black', 'A95', 'A3', 2014),
	(78, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(79, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(80, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(81, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(82, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(83, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(84, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(85, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(86, 'Audi', 'Black', 'A95', 'A3', 2014),
	(87, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(88, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(89, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(90, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(91, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(92, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(93, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(94, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(95, 'Audi', 'Black', 'A95', 'A3', 2014),
	(96, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(97, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(98, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(99, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(100, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(101, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(102, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(103, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(104, 'Audi', 'Black', 'A95', 'A3', 2014),
	(105, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(106, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(107, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(108, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(109, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(110, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(111, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(112, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(113, 'Audi', 'Black', 'A95', 'A3', 2014),
	(114, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(115, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(116, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(117, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(118, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(119, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(120, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(121, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(122, 'Audi', 'Black', 'A95', 'A3', 2014),
	(123, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(124, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(125, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(126, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(127, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(128, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(129, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(130, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(131, 'Audi', 'Black', 'A95', 'A3', 2014),
	(132, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(133, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(134, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(135, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(136, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(137, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(138, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(139, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(140, 'Audi', 'Black', 'A95', 'A3', 2014),
	(141, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(142, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(143, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(144, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(145, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(146, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(147, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(148, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(149, 'Audi', 'Black', 'A95', 'A3', 2014),
	(150, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(151, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(152, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(153, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(154, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(155, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(156, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(157, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(158, 'Audi', 'Black', 'A95', 'A3', 2014),
	(159, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(160, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(161, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(162, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(163, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(164, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(165, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(166, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(167, 'Audi', 'Black', 'A95', 'A3', 2014),
	(168, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(169, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(170, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(171, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(172, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(173, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(174, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(175, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(176, 'Audi', 'Black', 'A95', 'A3', 2014),
	(177, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(178, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(179, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(180, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(181, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(182, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(183, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(184, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(185, 'Audi', 'Black', 'A95', 'A3', 2014),
	(186, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(187, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(188, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(189, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(190, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(191, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(192, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(193, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(194, 'Audi', 'Black', 'A95', 'A3', 2014),
	(195, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(196, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(197, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(198, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(199, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(200, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(201, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(202, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(203, 'Audi', 'Black', 'A95', 'A3', 2014),
	(204, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(205, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(206, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(207, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(208, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(209, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(210, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(211, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(212, 'Audi', 'Black', 'A95', 'A3', 2014),
	(213, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(214, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(215, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(216, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(217, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(218, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(219, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(220, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(221, 'Audi', 'Black', 'A95', 'A3', 2014),
	(222, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(223, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(224, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(225, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(226, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(227, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(228, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(229, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(230, 'Audi', 'Black', 'A95', 'A3', 2014),
	(231, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(232, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(233, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(234, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(235, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(236, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(237, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(238, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(239, 'Audi', 'Black', 'A95', 'A3', 2014),
	(240, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(241, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(242, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(243, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(244, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(245, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(246, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(247, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(248, 'Audi', 'Black', 'A95', 'A3', 2014),
	(249, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(250, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(251, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(252, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(253, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(254, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(255, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(256, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(257, 'Audi', 'Black', 'A95', 'A3', 2014),
	(258, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(259, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(260, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(261, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(262, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(263, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(264, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(265, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(266, 'Audi', 'Black', 'A95', 'A3', 2014),
	(267, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(268, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(269, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(270, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(271, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(272, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(273, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(274, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(275, 'Audi', 'Black', 'A95', 'A3', 2014),
	(276, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(277, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(278, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(279, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(280, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(281, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(282, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(283, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(284, 'Audi', 'Black', 'A95', 'A3', 2014),
	(285, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(286, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(287, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(288, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(289, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(290, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(291, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(292, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(293, 'Audi', 'Black', 'A95', 'A3', 2014),
	(294, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(295, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(296, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(297, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(298, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(299, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(300, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(301, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(302, 'Audi', 'Black', 'A95', 'A3', 2014),
	(303, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(304, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(305, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(306, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(307, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(308, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(309, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(310, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(311, 'Audi', 'Black', 'A95', 'A3', 2014),
	(312, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(313, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(314, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(315, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(316, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(317, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(318, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(319, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(320, 'Audi', 'Black', 'A95', 'A3', 2014),
	(321, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(322, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(323, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(324, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(325, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(326, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(327, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(328, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(329, 'Audi', 'Black', 'A95', 'A3', 2014),
	(330, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(331, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(332, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(333, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(334, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(335, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(336, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(337, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(338, 'Audi', 'Black', 'A95', 'A3', 2014),
	(339, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(340, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(341, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(342, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(343, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(344, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(345, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(346, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(347, 'Audi', 'Black', 'A95', 'A3', 2014),
	(348, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(349, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(350, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(351, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(352, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(353, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(354, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(355, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(356, 'Audi', 'Black', 'A95', 'A3', 2014),
	(357, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(358, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(359, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(360, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(361, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(362, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(363, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(364, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(365, 'Audi', 'Black', 'A95', 'A3', 2014),
	(366, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(367, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(368, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(369, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(370, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(371, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(372, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(373, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(374, 'Audi', 'Black', 'A95', 'A3', 2014),
	(375, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(376, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(377, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(378, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(379, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(380, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(381, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(382, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(383, 'Audi', 'Black', 'A95', 'A3', 2014),
	(384, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(385, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(386, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(387, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(388, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(389, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(390, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(391, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(392, 'Audi', 'Black', 'A95', 'A3', 2014),
	(393, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(394, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(395, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(396, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(397, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(398, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(399, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(400, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(401, 'Audi', 'Black', 'A95', 'A3', 2014),
	(402, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(403, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(404, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(405, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(406, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(407, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(408, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(409, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(410, 'Audi', 'Black', 'A95', 'A3', 2014),
	(411, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(412, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(413, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(414, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(415, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(416, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(417, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(418, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(419, 'Audi', 'Black', 'A95', 'A3', 2014),
	(420, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(421, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(422, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(423, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(424, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(425, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(426, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(427, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(428, 'Audi', 'Black', 'A95', 'A3', 2014),
	(429, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(430, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(431, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(432, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(433, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(434, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(435, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(436, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(437, 'Audi', 'Black', 'A95', 'A3', 2014),
	(438, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(439, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(440, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(441, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(442, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(443, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(444, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(445, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(446, 'Audi', 'Black', 'A95', 'A3', 2014),
	(447, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(448, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(449, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(450, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(451, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(452, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(453, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(454, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(455, 'Audi', 'Black', 'A95', 'A3', 2014),
	(456, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(457, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(458, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(459, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(460, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(461, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(462, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(463, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(464, 'Audi', 'Black', 'A95', 'A3', 2014),
	(465, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(466, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(467, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(468, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(469, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(470, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(471, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(472, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(473, 'Audi', 'Black', 'A95', 'A3', 2014),
	(474, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(475, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(476, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(477, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016),
	(478, 'Ford', 'Red', 'Diesel', 'Modeo', 2013),
	(479, 'Alfa Romeo', 'Black', 'B98', 'Spider', 2016),
	(480, 'Mersedes-Benz', 'Silver', 'Diesel', '180', 2011),
	(481, 'Mersedes-Benz', 'Red', 'A95', 'A', 2017),
	(482, 'Audi', 'Black', 'A95', 'A3', 2014),
	(483, 'Toyota', 'Black', 'A95', 'Auris', 2013),
	(484, 'Toyota', 'White', 'Diesel', 'Avensis', 2015),
	(485, 'Nissan', 'Silver', 'A95', 'Micra', 2015),
	(486, 'Nissan', 'Blue', 'Diesel', 'X-Trail', 2016);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.cars
CREATE TABLE IF NOT EXISTS `cars` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table keepworkteach3.cars: ~0 rows (approximately)
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.employee
CREATE TABLE IF NOT EXISTS `employee` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `HOURLY_WAGE` float NOT NULL,
  `TAX_RATE` float NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table keepworkteach3.employee: ~0 rows (approximately)
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.hibernate_sequence
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table keepworkteach3.hibernate_sequence: 4 rows
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` (`next_val`) VALUES
	(1),
	(487),
	(487),
	(487);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.tb_admin
CREATE TABLE IF NOT EXISTS `tb_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `AdminID` varchar(50) DEFAULT NULL,
  `AdminName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table keepworkteach3.tb_admin: ~0 rows (approximately)
/*!40000 ALTER TABLE `tb_admin` DISABLE KEYS */;
INSERT INTO `tb_admin` (`id`, `AdminID`, `AdminName`) VALUES
	(1, '11', 'ad');
/*!40000 ALTER TABLE `tb_admin` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.tb_calendar
CREATE TABLE IF NOT EXISTS `tb_calendar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tarm_calen` varchar(50) NOT NULL COMMENT 'เทอม',
  `year_calen` varchar(50) NOT NULL COMMENT 'ปีการศึกษา',
  `month_calen` varchar(50) NOT NULL,
  `day_calen` int(11) NOT NULL,
  `status_day` varchar(50) NOT NULL COMMENT 'วันหยุด',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table keepworkteach3.tb_calendar: ~6 rows (approximately)
/*!40000 ALTER TABLE `tb_calendar` DISABLE KEYS */;
INSERT INTO `tb_calendar` (`id`, `tarm_calen`, `year_calen`, `month_calen`, `day_calen`, `status_day`) VALUES
	(1, '1', '2561', '1', 1, '1'),
	(2, '1', '2651', '1', 2, '1'),
	(3, '1', '2561', '1', 3, '1'),
	(4, '1', '2561', '1', 4, '2'),
	(5, '1', '2561', '1', 5, '1'),
	(6, '1', '2561', '1', 6, '1');
/*!40000 ALTER TABLE `tb_calendar` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.tb_dateofteach
CREATE TABLE IF NOT EXISTS `tb_dateofteach` (
  `dtime_id` int(11) NOT NULL AUTO_INCREMENT,
  `dateofteach_id` varchar(50) DEFAULT NULL,
  `weekofyear_dft` int(11) DEFAULT NULL COMMENT 'สัปดาห์สอน',
  `dayofyear_dft` varchar(50) DEFAULT NULL COMMENT 'วันที่สอน',
  `monthofyear_dft` varchar(50) DEFAULT NULL COMMENT 'เดือนที่สอน',
  `yearofteach_dft` varchar(50) DEFAULT NULL COMMENT 'ปีที่สอน',
  `tudsadee_dft` int(11) DEFAULT NULL COMMENT 'ทฤษฎี',
  `prtibad_dft` int(11) DEFAULT NULL COMMENT 'ปฏิบัติ',
  `summyhour_dft` int(11) DEFAULT NULL COMMENT 'รวมชั่วโมง',
  `money_dft` int(11) DEFAULT NULL,
  `holiday_dft` varchar(50) DEFAULT NULL,
  `statusbase` int(11) DEFAULT NULL COMMENT 'วิชาที่ใช้เบิก',
  `status_dateofteach` int(11) DEFAULT NULL,
  `subject_dft` varchar(50) DEFAULT NULL COMMENT 'วิชา',
  `user_dft` varchar(50) DEFAULT NULL COMMENT 'ผู้ใช้',
  PRIMARY KEY (`dtime_id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8 COMMENT='ข้อมูลรายละเอียดใบการเบิกค่าสอนพิเศษ';

-- Dumping data for table keepworkteach3.tb_dateofteach: ~12 rows (approximately)
/*!40000 ALTER TABLE `tb_dateofteach` DISABLE KEYS */;
INSERT INTO `tb_dateofteach` (`dtime_id`, `dateofteach_id`, `weekofyear_dft`, `dayofyear_dft`, `monthofyear_dft`, `yearofteach_dft`, `tudsadee_dft`, `prtibad_dft`, `summyhour_dft`, `money_dft`, `holiday_dft`, `statusbase`, `status_dateofteach`, `subject_dft`, `user_dft`) VALUES
	(143, '2561114124903', 1, '1', '3', '2562', 1, 1, 2, 180, 'holiday', 2, 2, '4124903', '570112230061'),
	(144, '2561114124903', 2, '8', '3', '2562', 1, 1, 2, 180, 'work', 2, 2, '4124903', '570112230061'),
	(145, '2561114124903', 3, '15', '3', '2562', 1, 1, 2, 180, 'work', 2, 2, '4124903', '570112230061'),
	(146, '2561114124903', 4, '22', '3', '2562', 1, 1, 2, 180, 'work', 2, 2, '4124903', '570112230061'),
	(147, '2561114121301', 1, '1', '3', '2562', 2, 2, 4, 180, 'holiday', 1, NULL, '4121301', '570112230061'),
	(148, '2561114121301', 2, '8', '3', '2562', 2, 2, 4, 180, 'work', 1, NULL, '4121301', '570112230061'),
	(149, '2561114121301', 3, '15', '3', '2562', 2, 2, 4, 180, 'work', 1, NULL, '4121301', '570112230061'),
	(150, '2561114121301', 4, '22', '3', '2562', 2, 2, 4, 180, 'work', 1, NULL, '4121301', '570112230061'),
	(151, '2561124121301', 1, '1', '3', '2562', 2, 2, 4, 120, 'holiday', 1, NULL, '4121301', '570112230061'),
	(152, '2561124121301', 2, '8', '3', '2562', 2, 2, 4, 120, 'work', 1, NULL, '4121301', '570112230061'),
	(153, '2561124121301', 3, '15', '3', '2562', 2, 2, 4, 120, 'work', 1, NULL, '4121301', '570112230061'),
	(154, '2561124121301', 4, '22', '3', '2562', 2, 2, 4, 120, 'work', 1, NULL, '4121301', '570112230061');
/*!40000 ALTER TABLE `tb_dateofteach` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.tb_degree
CREATE TABLE IF NOT EXISTS `tb_degree` (
  `id_degree` int(11) DEFAULT NULL,
  `name_degree` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ข้อมูลระดับการสอน';

-- Dumping data for table keepworkteach3.tb_degree: ~3 rows (approximately)
/*!40000 ALTER TABLE `tb_degree` DISABLE KEYS */;
INSERT INTO `tb_degree` (`id_degree`, `name_degree`) VALUES
	(1, 'ระดับปริญญาตรี'),
	(2, 'ระดับปริญญาโท'),
	(3, 'ระดับปริญญาเอก');
/*!40000 ALTER TABLE `tb_degree` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.tb_faculty
CREATE TABLE IF NOT EXISTS `tb_faculty` (
  `faculty_id` varchar(50) DEFAULT NULL,
  `faculty_name` varchar(50) DEFAULT NULL,
  `person_faculty` varchar(50) DEFAULT NULL,
  `majorsid_row` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='คณะ';

-- Dumping data for table keepworkteach3.tb_faculty: ~8 rows (approximately)
/*!40000 ALTER TABLE `tb_faculty` DISABLE KEYS */;
INSERT INTO `tb_faculty` (`faculty_id`, `faculty_name`, `person_faculty`, `majorsid_row`) VALUES
	('5', 'คณะวิทยาศาสตร์', 'ผู้ช่วยศาสตราจารย์ ดร.สุภาพร ชืนชูจิตร', 5),
	('1', 'คณะครุศาสตร์', 'กกกก', 1),
	('4', 'คณะเทคโนโลยีอุตสาหกรรม', NULL, 4),
	('2', 'คณะเทคโนโลยีการเกษตร', NULL, 2),
	('3', 'คณะมนุษยศาสตร์และสังคมศาสตร์', NULL, 3),
	('6', 'คณะวิทยาการจัดการ', NULL, 6),
	('7', 'คณะพยาบาลศาสตร์', NULL, 7),
	('8', 'บัณฑิตวิทยาลัย', NULL, 8);
/*!40000 ALTER TABLE `tb_faculty` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.tb_holiday_bru
CREATE TABLE IF NOT EXISTS `tb_holiday_bru` (
  `holiday_bru_id` int(11) DEFAULT NULL,
  `holiday_bru_day` varchar(50) DEFAULT NULL,
  `holiday_bru_month` varchar(50) DEFAULT NULL,
  `holiday_bru_year` varchar(50) DEFAULT NULL,
  `holiday_bru_dayofyear` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table keepworkteach3.tb_holiday_bru: ~0 rows (approximately)
/*!40000 ALTER TABLE `tb_holiday_bru` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_holiday_bru` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.tb_holiday_th
CREATE TABLE IF NOT EXISTS `tb_holiday_th` (
  `holiday_id` char(50) DEFAULT NULL,
  `holiday_day` varchar(50) DEFAULT NULL,
  `holiday_month` varchar(50) DEFAULT NULL,
  `holiday_year` varchar(50) DEFAULT NULL,
  `holiday_dayofyear` varchar(50) DEFAULT NULL,
  `holiday_row` varchar(50) DEFAULT NULL,
  `location_holi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ตารางวันหยุด';

-- Dumping data for table keepworkteach3.tb_holiday_th: ~30 rows (approximately)
/*!40000 ALTER TABLE `tb_holiday_th` DISABLE KEYS */;
INSERT INTO `tb_holiday_th` (`holiday_id`, `holiday_day`, `holiday_month`, `holiday_year`, `holiday_dayofyear`, `holiday_row`, `location_holi`) VALUES
	('1', '1', '1', '2561', 'วันขึ้นปีใหม่', 'holiday', 'th'),
	('2', '2', '1', '1', '1', 'holiday', '1'),
	('3', '1', '3', '2561', 'วันมาฆบูชา', 'holiday', 'th'),
	('4', '6', '4', '2561', 'วันจักรี', 'holiday', 'th'),
	('5', '13', '4', '2561', 'วันสงกรานต์', 'holiday', 'th'),
	('6', '14', '4', '2561', 'วันสงกรานต์', 'holiday', 'th'),
	('7', '15', '4', '2561', 'วันสงกรานต์', 'holiday', 'th'),
	('8', '16', '4', '2561', 'วันหยุดชดเชยวันสงกรานต์', 'holiday', 'th'),
	('9', '1', '5', '2561', 'วันแรงงาน', 'holiday', 'th'),
	('10', '14', '5', '2561', 'วันพืชมงคล', 'holiday', 'th'),
	('11', '29', '5', '2561', 'วันวิสาขบูชา', 'holiday', 'th'),
	('12', '15', '6', '2561', 'จุดจบของเราะมะฎอน', 'holiday', 'th'),
	('13', '27', '7', '2561', '	วันอาสาฬหบูชา ', 'holiday', 'th'),
	('24', '28', '7', '2561', '	วันเข้าพรรษา', 'holiday', 'th'),
	('25', '28', '7', '2561', 'วันเกิดของพระบาทสมเด็จพระเจ้าอยู่หัว', 'holiday', 'th'),
	('26', '30', '7', '2561', 'วันหยุดชดเชยวันเกิดของพระบาทสมเด็จพระเจ้าอยู่หัว', 'holiday', 'th'),
	('27', '12', '8', '2561', 'วันแม่แห่งชาติ', 'holiday', 'th'),
	('29', '13', '10', '2561', 'วันคล้ายวันสวรรคต พระบาทสมเด็จพระปรมินทรมหาภูมิพลอ', 'holiday', 'th'),
	('30', '15', '10', '2561', '	วันหยุดชดเชยวันคล้ายวันสวรรคต พระบาทสมเด็จพระปรมิ', 'holiday', 'th'),
	('31', '23', '10', '2561', 'วันปิยมหาราช', 'holiday', 'th'),
	('32', '5', '12', '2561', 'วันคล้ายวันพระราชสมภพ รัชกาลที่ 9', 'holiday', 'th'),
	('33', '10', '12', '2561', 'วันรัฐธรรมนูญ', 'holiday', 'th'),
	('34', '25', '12', '2561', 'คริสต์มาส', 'holiday', 'th'),
	('35', '31', '12', '2561', 'วันส่งท้ายปีเก่า', '', 'th'),
	('36', '2', '1', '1', '1', NULL, '1'),
	('3', '3', '3', '3', '3', NULL, '3'),
	('32', '3', '3', '3', '3', 'holiday', '3'),
	('32', '3', '3', '3', '3', 'holiday', '3'),
	('123', '4', '4', '4', '4', 'holiday', '4'),
	('2039', '19', '1', '2019', 'hhh', 'holiday', 'th');
/*!40000 ALTER TABLE `tb_holiday_th` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.tb_login
CREATE TABLE IF NOT EXISTS `tb_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `LogUsername` varchar(50) DEFAULT NULL,
  `LogPassword` varchar(50) DEFAULT NULL,
  `LogRole` varchar(50) DEFAULT NULL,
  `LogStatus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table keepworkteach3.tb_login: ~2 rows (approximately)
/*!40000 ALTER TABLE `tb_login` DISABLE KEYS */;
INSERT INTO `tb_login` (`id`, `LogUsername`, `LogPassword`, `LogRole`, `LogStatus`) VALUES
	(1, 'u', '12', '2', 'U'),
	(2, 'a', '12', '1', 'A');
/*!40000 ALTER TABLE `tb_login` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.tb_majors
CREATE TABLE IF NOT EXISTS `tb_majors` (
  `id_majors` varchar(4) DEFAULT NULL,
  `majors_id` varchar(50) DEFAULT NULL,
  `majors_name` varchar(50) DEFAULT NULL,
  `person_majors` varchar(50) DEFAULT NULL,
  `row_facltykf` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='สาขาวิชา';

-- Dumping data for table keepworkteach3.tb_majors: ~59 rows (approximately)
/*!40000 ALTER TABLE `tb_majors` DISABLE KEYS */;
INSERT INTO `tb_majors` (`id_majors`, `majors_id`, `majors_name`, `person_majors`, `row_facltykf`) VALUES
	('001', '1', 'นาฏศิลป์', NULL, 1),
	('002', '2', 'คณิตศาสตร์', NULL, 1),
	('003', '3', 'การศึกษาปฐมวัย', NULL, 1),
	('004', '4', 'เทคโนโลยีและคอมพิวเตอร์เพื่อการศึกษา', NULL, 1),
	('005', '5', 'สังคมศึกษา', NULL, 1),
	('006', '6', 'ภาษาอังกฤษ', NULL, 1),
	('007', '7', 'วิทยาศาสตร์ทั่วไป', NULL, 1),
	('008', '8', 'ภาษาไทย', NULL, 1),
	('009', '9', '	ศิลปศึกษา', NULL, 1),
	('010', '10', '	ดนตรีศึกษา', NULL, 1),
	('011', '11', '	พลศึกษา', NULL, 1),
	('012', '12', 'ฟิสิกส์', NULL, 1),
	('013', '14', 'หลักสูตรและการจัดการเรียนรู้', NULL, 1),
	('014', '15', 'การบริหารการศึกษา', NULL, 1),
	('015', '16', 'วิจัยและประเมินผล', NULL, 1),
	('016', '17', 'ดนตรีศึกษา', NULL, 1),
	('017', '18', 'การบริหารการศึกษา', NULL, 1),
	('018', '1', 'เทคโนโลยีสถาปัตยกรรม', NULL, 2),
	('019', '2', 'เทคโนโลยีการจัดการอุตสาหกรรม', NULL, 2),
	('020', '3', 'เทคโนโลยีวิศวกรรมโยธา', NULL, 2),
	('021', '4', 'เทคโนโลยีวิศวกรรมไฟฟ้า', NULL, 2),
	('022', '5', 'เทคโนโลยีเซรามิกส์และการออกแบบ', NULL, 2),
	('023', '6', 'เทคโนโลยีวิศวกรรมอิเล็กทรอนิกส์', NULL, 2),
	('024', '7', 'ออกแบบผลิตภัณฑ์อุตสาหกรรม', NULL, 2),
	('025', '1', 'เกษตรศาสตร์', NULL, 3),
	('026', '2', 'ประมง', NULL, 3),
	('027', '3', 'สัตวศาสตร์', NULL, 3),
	('028', '1', 'การพัฒนาสังคม', NULL, 4),
	('029', '2', 'ภาษาไทย', NULL, 4),
	('030', '3', 'บรรณารักษ์ศาสตร์และสารสนเทศศาสตร์', NULL, 4),
	('040', '4', 'ภาษาอังกฤษ', NULL, 4),
	('041', '5', 'ภาษาอังกฤษธุรกิจ', NULL, 4),
	('042', '6', 'ดนตรีสากล', NULL, 4),
	('043', '7', 'คอมพิวเตอร์ศิลปะและการออกแบบ', NULL, 4),
	('045', '8', 'รัฐประศาสนศาสตร์', NULL, 4),
	('046', '9', 'นิติศาสตร์', NULL, 4),
	('047', '10', 'ภาษาอังกฤษ', NULL, 4),
	('048', '11', 'รัฐประศาสนศาสตร์', NULL, 4),
	('049', '1', 'ภูมิสารสนเทศ', NULL, 5),
	('050', '2', 'เคมี', NULL, 5),
	('051', '3', 'วิทยาศาสตร์สิ่งแวดล้อม', NULL, 5),
	('052', '4', 'สาธารณสุขชุมชน', NULL, 5),
	('053', '5', 'สถิติประยุกต์', NULL, 5),
	('054', '6', 'ชีววิทยา', NULL, 5),
	('055', '7', 'เทคโนโลยีสารสนเทศ', NULL, 5),
	('056', '8', 'วิทยาการคอมพิวเตอร์', 'นายณัฐพล แสนคำ', 5),
	('057', '9', 'คณิตศาสตร์', NULL, 5),
	('058', '10', '	วิทยาศาสตร์การกีฬา', NULL, 5),
	('059', '11', 'วิทยาศาสตร์สิ่งทอ', NULL, 5),
	('060', '12', 'วิทยาศาสตร์การอาหาร', NULL, 5),
	('061', '1', 'การบัญชี', NULL, 6),
	('062', '2', 'การสื่อสารมวลชน', NULL, 6),
	('063', '3', 'การท่องเที่ยวและการโรงแรม', NULL, 6),
	('064', '4', 'เศรษฐศาสตร์', NULL, 6),
	('065', '5', 'การเงินและการธนาคาร', NULL, 6),
	('066', '6', 'การจัดการ', NULL, 6),
	('067', '7', 'การตลาด', NULL, 6),
	('068', '8', 'การบริหารทรัพยากรมนุษย์', NULL, 6),
	('069', '9', 'คอมพิวเตอร์ธุรกิจ', NULL, 6);
/*!40000 ALTER TABLE `tb_majors` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.tb_month
CREATE TABLE IF NOT EXISTS `tb_month` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month_id` varchar(50) DEFAULT NULL,
  `month_name` varchar(50) DEFAULT NULL,
  `month_lastname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='เดือน';

-- Dumping data for table keepworkteach3.tb_month: ~12 rows (approximately)
/*!40000 ALTER TABLE `tb_month` DISABLE KEYS */;
INSERT INTO `tb_month` (`id`, `month_id`, `month_name`, `month_lastname`) VALUES
	(1, '1', 'มกราคม', 'ม.ค.'),
	(2, '2', 'กุมพาพันธ์', 'ก.พ.'),
	(3, '3', 'มีนาคม', 'มี.ค.'),
	(4, '4', 'เมษายน', 'เม.ย.'),
	(5, '5', 'พฤษภาคม', 'พ.ค'),
	(6, '6', 'มิถุนายน', 'มิ.ย'),
	(7, '7', 'กรกฎาคม', 'ก.ค.'),
	(8, '8', 'สิงหาคม', 'ส.ค.'),
	(9, '9', 'กันยายน', 'ก.ย.'),
	(10, '10', 'ตุลาคม', 'ต.ค.'),
	(11, '11', 'พฤศจิกายน', 'พ.ย.'),
	(12, '12', 'ธันวาคม', 'ธ.ค.');
/*!40000 ALTER TABLE `tb_month` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.tb_salary
CREATE TABLE IF NOT EXISTS `tb_salary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salary_id` varchar(50) DEFAULT NULL,
  `salary_sum_tudsadee` int(11) DEFAULT NULL COMMENT 'รวม ท',
  `salary_sum_prtibad` int(11) DEFAULT NULL COMMENT 'รวม ป',
  `sum_tudsadee_prtibad_hour` int(11) DEFAULT NULL COMMENT 'รวม ท ป',
  `salary_status` int(11) DEFAULT NULL COMMENT 'เงินรวม',
  `salary_baseteach` int(11) DEFAULT NULL COMMENT 'อัตราการ เบิก',
  `salary_subject_fk` varchar(50) DEFAULT NULL COMMENT 'วิชา',
  `salary_userfk` varchar(50) DEFAULT NULL COMMENT 'ผู้ใช้',
  `salary_dateofteach` varchar(50) DEFAULT NULL COMMENT 'ตารางสอน',
  `salary_summoney` int(11) DEFAULT NULL COMMENT 'รวมเงิน',
  `salery_thaibaht` varchar(50) DEFAULT NULL COMMENT 'อักษรเงิน',
  `salary_setatatus_id` int(11) DEFAULT NULL COMMENT 'ตารางทฤษฎีปฏิบัติ',
  `salary_tableteahing` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='ตารางทฤษฎีและปฏิบัติ';

-- Dumping data for table keepworkteach3.tb_salary: ~2 rows (approximately)
/*!40000 ALTER TABLE `tb_salary` DISABLE KEYS */;
INSERT INTO `tb_salary` (`id`, `salary_id`, `salary_sum_tudsadee`, `salary_sum_prtibad`, `sum_tudsadee_prtibad_hour`, `salary_status`, `salary_baseteach`, `salary_subject_fk`, `salary_userfk`, `salary_dateofteach`, `salary_summoney`, `salery_thaibaht`, `salary_setatatus_id`, `salary_tableteahing`) VALUES
	(4, '2561114124903', NULL, NULL, 3, 0, NULL, NULL, '570112230061', NULL, 540, 'หนึ่งพันแปดสิบบาทถ้วน', 1, '2561114124903'),
	(5, '2561114124903', NULL, NULL, 3, 0, NULL, NULL, '570112230061', NULL, 540, 'หนึ่งพันแปดสิบบาทถ้วน', 2, '2561114124903');
/*!40000 ALTER TABLE `tb_salary` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.tb_setstatus_subject
CREATE TABLE IF NOT EXISTS `tb_setstatus_subject` (
  `setstatus_subject_id` varchar(50) DEFAULT NULL,
  `setstatus_subject_hour` int(11) DEFAULT NULL,
  `setstatus_subject_base` int(11) DEFAULT NULL,
  `setstatus_subject_money` int(11) DEFAULT NULL,
  `status_subject` int(11) DEFAULT NULL,
  `setject_userid` varchar(50) DEFAULT NULL,
  `teching_setject_id` varchar(50) DEFAULT NULL,
  `setstatus_subid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ข้อมูลรายละเอียดวิชาที่ใช้เบิก ทฤษฎีต่อ วิชา';

-- Dumping data for table keepworkteach3.tb_setstatus_subject: ~2 rows (approximately)
/*!40000 ALTER TABLE `tb_setstatus_subject` DISABLE KEYS */;
INSERT INTO `tb_setstatus_subject` (`setstatus_subject_id`, `setstatus_subject_hour`, `setstatus_subject_base`, `setstatus_subject_money`, `status_subject`, `setject_userid`, `teching_setject_id`, `setstatus_subid`) VALUES
	('2561114124903', 3, 180, 540, 2, '570112230061', '2561114124903', '4124903'),
	('2561114124903', 3, 180, 540, 1, '570112230061', '2561114124903', '4124903');
/*!40000 ALTER TABLE `tb_setstatus_subject` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.tb_status_subject
CREATE TABLE IF NOT EXISTS `tb_status_subject` (
  `status_subject_id` int(1) DEFAULT NULL,
  `status_subject_name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='สถานะ ปฎิบัติ-ทฤษฎี';

-- Dumping data for table keepworkteach3.tb_status_subject: ~2 rows (approximately)
/*!40000 ALTER TABLE `tb_status_subject` DISABLE KEYS */;
INSERT INTO `tb_status_subject` (`status_subject_id`, `status_subject_name`) VALUES
	(1, 'ปฎิบัติ'),
	(2, 'ทฤษฎี');
/*!40000 ALTER TABLE `tb_status_subject` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.tb_subject
CREATE TABLE IF NOT EXISTS `tb_subject` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` varchar(10) DEFAULT NULL,
  `subject_name` varchar(50) DEFAULT NULL,
  `credit` int(3) DEFAULT NULL,
  `credit_hour` varchar(5) DEFAULT NULL,
  `tudsadee` int(2) DEFAULT NULL COMMENT 'ทฤษฎิ',
  `prtibad` int(2) DEFAULT NULL COMMENT 'ปฏิบัติ',
  `status_subject` int(2) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='วิชาที่สอน';

-- Dumping data for table keepworkteach3.tb_subject: ~5 rows (approximately)
/*!40000 ALTER TABLE `tb_subject` DISABLE KEYS */;
INSERT INTO `tb_subject` (`Id`, `subject_id`, `subject_name`, `credit`, `credit_hour`, `tudsadee`, `prtibad`, `status_subject`) VALUES
	(2, '51001', 'คณิต', 3, '2-2-5', 2, 2, 2),
	(3, '41001', 'คอม', 2, '2-2-5', 2, 2, 2),
	(10, '4124903', 'อังกฤษ', 3, '3-2-5', 2, 2, 1),
	(11, '4121301', 'วิททยาศาสตร์', 3, '2-2-5', 2, 2, 2),
	(12, '4124901', 'คณิต', 3, '2-2-5', 2, 2, 1);
/*!40000 ALTER TABLE `tb_subject` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.tb_subjectsum_hour
CREATE TABLE IF NOT EXISTS `tb_subjectsum_hour` (
  `subjectsum_hour_id` varchar(50) NOT NULL DEFAULT '0',
  `subjectsum_tudsadee` int(11) NOT NULL DEFAULT '0',
  `subjectsum_prtibad` int(11) NOT NULL DEFAULT '0',
  `subjectsum_money` int(11) NOT NULL DEFAULT '0',
  `subjectsum_subject_id` varchar(50) NOT NULL DEFAULT '0',
  `subjectsum_status` int(11) NOT NULL DEFAULT '0',
  `subjectsum_user_id` varchar(50) NOT NULL DEFAULT '0',
  `subjectsum_teach_id` varchar(50) NOT NULL DEFAULT '0',
  `subjectsum_pepostset` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ข้อมูลรายละเอียกรวมเงิน ต่อ วิชา';

-- Dumping data for table keepworkteach3.tb_subjectsum_hour: ~1 rows (approximately)
/*!40000 ALTER TABLE `tb_subjectsum_hour` DISABLE KEYS */;
INSERT INTO `tb_subjectsum_hour` (`subjectsum_hour_id`, `subjectsum_tudsadee`, `subjectsum_prtibad`, `subjectsum_money`, `subjectsum_subject_id`, `subjectsum_status`, `subjectsum_user_id`, `subjectsum_teach_id`, `subjectsum_pepostset`) VALUES
	('2561114124903', 3, 3, 1080, '4124903', 2, '570112230061', '2561114124903', 2);
/*!40000 ALTER TABLE `tb_subjectsum_hour` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.tb_table_teaching
CREATE TABLE IF NOT EXISTS `tb_table_teaching` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teble_teach_id` varchar(50) DEFAULT NULL,
  `degree_studen` varchar(50) DEFAULT NULL,
  `teach_term` varchar(50) DEFAULT NULL COMMENT 'ภาคเรียน',
  `term_year` varchar(50) DEFAULT NULL COMMENT 'ปีการศึกษา',
  `teach_week` varchar(50) DEFAULT NULL,
  `section` int(11) DEFAULT NULL,
  `studen_number` int(11) DEFAULT NULL,
  `start_month` varchar(50) DEFAULT NULL,
  `start_month_string` varchar(50) DEFAULT NULL,
  `stop_month` varchar(50) DEFAULT NULL,
  `stop_month_string` varchar(50) DEFAULT NULL,
  `teach_year` varchar(50) DEFAULT NULL,
  `start_time` varchar(50) DEFAULT NULL,
  `stop_time` varchar(50) DEFAULT NULL,
  `sum_hour` varchar(50) DEFAULT NULL COMMENT 'รวมชั่วโมงสอน',
  `standard_teach` int(11) DEFAULT NULL COMMENT 'อัตราการเบิก',
  `room` varchar(50) DEFAULT NULL,
  `user_roleid` varchar(50) DEFAULT NULL,
  `subject_roleid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='ตารางเรียน///ตารางรายละเอียดการสอน';

-- Dumping data for table keepworkteach3.tb_table_teaching: ~3 rows (approximately)
/*!40000 ALTER TABLE `tb_table_teaching` DISABLE KEYS */;
INSERT INTO `tb_table_teaching` (`id`, `teble_teach_id`, `degree_studen`, `teach_term`, `term_year`, `teach_week`, `section`, `studen_number`, `start_month`, `start_month_string`, `stop_month`, `stop_month_string`, `teach_year`, `start_time`, `stop_time`, `sum_hour`, `standard_teach`, `room`, `user_roleid`, `subject_roleid`) VALUES
	(27, '2561114124903', '1', '1', '2561', '1', 1, 38, '01/03/2019', 'มีนาคม', '22/03/2019', 'มีนาคม', '2561', '07:00', '12:00', '5:0', 180, '255', '570112230061', '4124903'),
	(28, '2561114121301', '1', '1', '2561', '4', 1, 40, '01/03/2019', 'มีนาคม', '22/03/2019', 'มีนาคม', '2561', '07:00', '12:00', '5:0', 180, '253', '570112230061', '4121301'),
	(29, '2561124121301', '1', '1', '2561', '', 2, 23, '01/03/2019', 'มีนาคม', '22/03/2019', 'มีนาคม', '2561', '07:00', '12:00', '5:0', 120, '253', '570112230061', '4121301');
/*!40000 ALTER TABLE `tb_table_teaching` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.tb_teaching
CREATE TABLE IF NOT EXISTS `tb_teaching` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teach_id` varchar(20) DEFAULT NULL,
  `sum_hour_term` int(11) DEFAULT NULL COMMENT 'รวมชั่วโมง/เทอม',
  `hoursum_tudsadee` int(11) DEFAULT NULL COMMENT 'รวมทฤษฎี/เทอม',
  `hoursum_prtibad` int(11) DEFAULT NULL COMMENT 'รวมปฏิบัติ/เทอม',
  `money_tudsadee` int(11) DEFAULT NULL,
  `money_prtibad` int(11) DEFAULT NULL,
  `salary_sum` int(11) DEFAULT NULL COMMENT 'รวมเงินเดือน',
  `teach_basehour` int(11) DEFAULT NULL COMMENT 'ฐาน/ชม',
  `teach_basecram` int(11) DEFAULT NULL COMMENT 'ฐาน/คาบ',
  `dateofteach_fk` varchar(50) DEFAULT NULL,
  `subject_fk` varchar(50) DEFAULT NULL COMMENT 'role วิชา',
  `tableteach_fk` varchar(50) DEFAULT NULL COMMENT 'role ตารางเรียน',
  `user_fk` varchar(50) DEFAULT NULL COMMENT 'role ผู้สอน',
  `status_teach` int(2) DEFAULT '0' COMMENT 'สถานะสอน',
  `status_teaching` int(1) DEFAULT '0' COMMENT 'สถานะใช่เบิก',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='ตารางเบิกการสอนเกินภาระงาน\r\nตารางเบิกการสอนเกินภาระงาน\r\nตารางขอเบิกการสอนเกินภาระงาน';

-- Dumping data for table keepworkteach3.tb_teaching: ~3 rows (approximately)
/*!40000 ALTER TABLE `tb_teaching` DISABLE KEYS */;
INSERT INTO `tb_teaching` (`id`, `teach_id`, `sum_hour_term`, `hoursum_tudsadee`, `hoursum_prtibad`, `money_tudsadee`, `money_prtibad`, `salary_sum`, `teach_basehour`, `teach_basecram`, `dateofteach_fk`, `subject_fk`, `tableteach_fk`, `user_fk`, `status_teach`, `status_teaching`) VALUES
	(14, '2561114124903', 0, 8, 8, 0, 0, 552, 2, 1, NULL, '4124903', '2561114124903', '570112230061', 2, 2),
	(15, '2561114121301', 0, 8, 8, 0, 0, 552, 0, 4, NULL, '4121301', '2561114121301', '570112230061', 1, 2),
	(16, '2561124121301', 0, 8, 8, 0, 0, 372, 0, 4, NULL, '4121301', '2561124121301', '570112230061', 1, 2);
/*!40000 ALTER TABLE `tb_teaching` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.tb_teach_report
CREATE TABLE IF NOT EXISTS `tb_teach_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teach_report_id` varchar(50) DEFAULT NULL,
  `resum_pst` int(11) DEFAULT NULL COMMENT 'ทฤษฏีรวม',
  `resum_tsd` int(11) DEFAULT NULL COMMENT 'ปัฎิบัติรวม',
  `repost_sum` int(11) DEFAULT NULL COMMENT 'รวม ท-ป',
  `repost_money` int(11) DEFAULT NULL,
  `report_thaibaht` varchar(50) DEFAULT NULL COMMENT 'บาท',
  `user_report_fk` varchar(50) DEFAULT NULL,
  `dateteach_fk` varchar(50) DEFAULT NULL,
  `teaching_fk` varchar(50) DEFAULT NULL,
  `status_repost` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='ออกรายงาน';

-- Dumping data for table keepworkteach3.tb_teach_report: ~1 rows (approximately)
/*!40000 ALTER TABLE `tb_teach_report` DISABLE KEYS */;
INSERT INTO `tb_teach_report` (`id`, `teach_report_id`, `resum_pst`, `resum_tsd`, `repost_sum`, `repost_money`, `report_thaibaht`, `user_report_fk`, `dateteach_fk`, `teaching_fk`, `status_repost`) VALUES
	(2, '18/3/2562/570112230061', 0, 0, 6, 1080, 'หนึ่งพันแปดสิบบาทถ้วน', '570112230061', NULL, '2561114124903', 2);
/*!40000 ALTER TABLE `tb_teach_report` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.tb_term
CREATE TABLE IF NOT EXISTS `tb_term` (
  `term_id` int(11) NOT NULL AUTO_INCREMENT,
  `term_start` varchar(50) DEFAULT NULL,
  `term_stop` varchar(50) DEFAULT NULL,
  `term_year` varchar(50) DEFAULT NULL,
  `term_teachyear` varchar(50) DEFAULT NULL,
  `term_teachterm` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ปีการศึกษา ภาคเรียน';

-- Dumping data for table keepworkteach3.tb_term: ~0 rows (approximately)
/*!40000 ALTER TABLE `tb_term` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_term` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.tb_user
CREATE TABLE IF NOT EXISTS `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) DEFAULT NULL,
  `user_pass` varchar(50) DEFAULT NULL,
  `prefix_name` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL COMMENT 'ชื่อ',
  `user_lastname` varchar(50) DEFAULT NULL COMMENT 'นามสกุล',
  `position_teach` varchar(50) DEFAULT NULL COMMENT 'ตำแหน่งการเบิก',
  `position_user` varchar(50) DEFAULT NULL COMMENT 'ตำแหน่งผู้สอน',
  `faculty` varchar(50) DEFAULT NULL COMMENT 'คณะ',
  `mojor` varchar(50) DEFAULT NULL COMMENT 'สาขา',
  `user_img` varchar(50) DEFAULT NULL,
  `baseHour` int(2) DEFAULT NULL COMMENT 'ฐานหน่วยคาบ',
  `baseKrm` int(2) DEFAULT NULL COMMENT 'ฐานหน่วยชั่วโมง',
  `status_login` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='ข้อมูลผู้ใช้';

-- Dumping data for table keepworkteach3.tb_user: ~12 rows (approximately)
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` (`id`, `user_id`, `user_pass`, `prefix_name`, `user_name`, `user_lastname`, `position_teach`, `position_user`, `faculty`, `mojor`, `user_img`, `baseHour`, `baseKrm`, `status_login`) VALUES
	(2, 'u', 'u', '???', 'kitti', 'Aum', 'U', NULL, 'วิทยาการคอม', 'วิทยาศาสตร์', NULL, 9, 6, 'U'),
	(3, 'a', 'a', NULL, 'hh', 'jo', 'Admin', NULL, 'jo', 'jo', NULL, 8, 6, 'A'),
	(5, 't', 't', NULL, 'gg', 'gg', 'T', NULL, 'gg', 'gg', NULL, 8, 8, NULL),
	(7, '123', '123', 'นาย', 'kkk', 'kkkk', 'U', NULL, 'อังกฤษ', 'ครุ', NULL, 9, 5, 'U'),
	(10, '570112230061', '1234', 'นาย', 'กิตติพงษ์', 'อุ่มพิมาย', 'อาจารย์ประจำ', 'หัวหน้าสาขา', '5', '056', NULL, 9, 6, 'U'),
	(11, '', '', NULL, '', '', 'อาจารย์พิเศษ', NULL, '', '', NULL, 0, 0, 'U'),
	(12, '1', NULL, NULL, '1', '1', 'อาจารย์พิเศษ', NULL, '1', '1', NULL, 1, 1, 'U'),
	(13, '1', NULL, NULL, '1', '1', 'อาจารย์พิเศษ', NULL, '1', '1', NULL, 1, 1, 'U'),
	(14, '2', NULL, NULL, '2', '2', 'อาจารย์ประจำ', NULL, '2', '2', NULL, 2, 2, 'U'),
	(15, '2', NULL, NULL, '2', '2', 'อาจารย์ประจำ', NULL, '2', '2', NULL, 2, 2, 'U'),
	(16, '00447218', '1234', 'นาย', 'งบน้อย', 'เบิกพัน', 'อาจารย์ประจำ', 'อาจารย์', '5', '056', NULL, 9, 6, 'U'),
	(17, '00442233', '1234', 'นางสาว', 'นายน้อย', 'มาก', 'อาจารย์ประจำ', 'อาจารย์', '5', '056', NULL, 9, 6, 'U');
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
