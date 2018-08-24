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

-- Dumping structure for table keepworkteach3.tb_admin
CREATE TABLE IF NOT EXISTS `tb_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `AdminID` varchar(50) DEFAULT NULL,
  `AdminName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table keepworkteach3.tb_admin: ~1 rows (approximately)
/*!40000 ALTER TABLE `tb_admin` DISABLE KEYS */;
INSERT INTO `tb_admin` (`id`, `AdminID`, `AdminName`) VALUES
	(1, '11', 'ad');
/*!40000 ALTER TABLE `tb_admin` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.tb_datetime
CREATE TABLE IF NOT EXISTS `tb_datetime` (
  `dtime_id` int(11) NOT NULL AUTO_INCREMENT,
  `datetime_id` int(11) DEFAULT NULL,
  `weekteach` varchar(50) DEFAULT NULL,
  `dateteach` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dtime_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='เวลาสอน';

-- Dumping data for table keepworkteach3.tb_datetime: ~6 rows (approximately)
/*!40000 ALTER TABLE `tb_datetime` DISABLE KEYS */;
INSERT INTO `tb_datetime` (`dtime_id`, `datetime_id`, `weekteach`, `dateteach`) VALUES
	(1, 2, '1', '2018-08-16'),
	(2, 2, '2', '123231'),
	(3, 1, '3', '12331'),
	(4, 1, '4', '4'),
	(5, 1, '1', '0010'),
	(6, 2, '2', '10/5/2018');
/*!40000 ALTER TABLE `tb_datetime` ENABLE KEYS */;

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

-- Dumping structure for table keepworkteach3.tb_subject
CREATE TABLE IF NOT EXISTS `tb_subject` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `subjactid` varchar(10) DEFAULT NULL,
  `subjactName` varchar(50) DEFAULT NULL,
  `credit` int(3) DEFAULT NULL,
  `creditHour` varchar(5) DEFAULT NULL,
  `Tudsadee` int(2) DEFAULT NULL,
  `Prtibad` int(2) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='วิชาที่สอน';

-- Dumping data for table keepworkteach3.tb_subject: ~5 rows (approximately)
/*!40000 ALTER TABLE `tb_subject` DISABLE KEYS */;
INSERT INTO `tb_subject` (`Id`, `subjactid`, `subjactName`, `credit`, `creditHour`, `Tudsadee`, `Prtibad`) VALUES
	(1, '1', 'วิท', 3, '2-3-5', 2, 3),
	(2, '2', 'คณิต', 1, '2-2-5', 2, 2),
	(3, '3', 'คอม', 2, '2-2-5', 2, 2),
	(4, NULL, NULL, 0, '', 0, 0),
	(5, NULL, NULL, 0, '', 0, 0);
/*!40000 ALTER TABLE `tb_subject` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.tb_teaching
CREATE TABLE IF NOT EXISTS `tb_teaching` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teachID` varchar(20) DEFAULT NULL,
  `startMonth` varchar(20) DEFAULT NULL,
  `stopMonth` varchar(20) DEFAULT NULL,
  `buddhist` varchar(4) DEFAULT NULL COMMENT 'พ.ศ.',
  `teachRowSub` varchar(4) DEFAULT NULL,
  `teachRowDat` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table keepworkteach3.tb_teaching: ~3 rows (approximately)
/*!40000 ALTER TABLE `tb_teaching` DISABLE KEYS */;
INSERT INTO `tb_teaching` (`id`, `teachID`, `startMonth`, `stopMonth`, `buddhist`, `teachRowSub`, `teachRowDat`) VALUES
	(1, '003', 'มกราคม', 'เมษายน', '2561', '3', '3'),
	(2, '001', '1', '1', '2448', '1', '1'),
	(3, '002', '1', '1', '1', '2', '2');
/*!40000 ALTER TABLE `tb_teaching` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.tb_user
CREATE TABLE IF NOT EXISTS `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` varchar(50) NOT NULL DEFAULT '00',
  `userPass` varchar(50) DEFAULT NULL,
  `userFname` varchar(50) DEFAULT NULL COMMENT 'ชื่อ',
  `userLname` varchar(50) DEFAULT NULL COMMENT 'นามสกุล',
  `positionTeach` varchar(50) DEFAULT NULL COMMENT 'ตำแหน่งผู้สอน',
  `faculty` varchar(50) DEFAULT NULL COMMENT 'คณะ',
  `mojor` varchar(50) DEFAULT NULL COMMENT 'สาขา',
  `baseHour` int(2) DEFAULT NULL COMMENT 'ฐานหน่วยคาบ',
  `baseKrm` int(2) DEFAULT NULL COMMENT 'ฐานหน่วยชั่วโมง',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table keepworkteach3.tb_user: ~2 rows (approximately)
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` (`id`, `userID`, `userPass`, `userFname`, `userLname`, `positionTeach`, `faculty`, `mojor`, `baseHour`, `baseKrm`) VALUES
	(2, 'u', 'u', 'jo', 'jk', 'U', 'วิท', 'คอม', 9, 6),
	(3, 'a', 'a', 'joo', 'jook', 'A', 'คณิต', 'คณิต', 8, 6);
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
