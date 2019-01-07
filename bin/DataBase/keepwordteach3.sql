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

-- Dumping data for table keepworkteach3.auto_id_test: ~1 rows (approximately)
/*!40000 ALTER TABLE `auto_id_test` DISABLE KEYS */;
INSERT INTO `auto_id_test` (`id`) VALUES
	(2018);
/*!40000 ALTER TABLE `auto_id_test` ENABLE KEYS */;

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

-- Dumping structure for table keepworkteach3.entry
CREATE TABLE IF NOT EXISTS `entry` (
  `ENTRY_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `EMPLOYEE_ID` bigint(20) NOT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `FINISH_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ENTRY_ID`),
  KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`),
  CONSTRAINT `entry_ibfk_1` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employee` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table keepworkteach3.entry: ~0 rows (approximately)
/*!40000 ALTER TABLE `entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `entry` ENABLE KEYS */;

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

-- Dumping structure for table keepworkteach3.tb_calendar
CREATE TABLE IF NOT EXISTS `tb_calendar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tarm_calen` varchar(50) NOT NULL COMMENT 'เทอม',
  `year_calen` varchar(50) NOT NULL COMMENT 'ปีการศึกษา',
  `month_calen` varchar(50) NOT NULL,
  `day_calen` int(11) NOT NULL,
  `status_day` varchar(50) NOT NULL COMMENT 'วันหยุด',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='ปฏิทิน';

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
  `subject_dft` varchar(50) DEFAULT NULL COMMENT 'วิชา',
  `user_dft` varchar(50) DEFAULT NULL COMMENT 'ผู้ใช้',
  PRIMARY KEY (`dtime_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COMMENT='เวลาสอน';

-- Dumping data for table keepworkteach3.tb_dateofteach: ~13 rows (approximately)
/*!40000 ALTER TABLE `tb_dateofteach` DISABLE KEYS */;
INSERT INTO `tb_dateofteach` (`dtime_id`, `dateofteach_id`, `weekofyear_dft`, `dayofyear_dft`, `monthofyear_dft`, `yearofteach_dft`, `tudsadee_dft`, `prtibad_dft`, `summyhour_dft`, `money_dft`, `holiday_dft`, `subject_dft`, `user_dft`) VALUES
	(53, '2561111', 0, NULL, NULL, NULL, 0, 0, 0, 1200, NULL, NULL, NULL),
	(54, '2561111', 0, NULL, NULL, NULL, 0, 0, 0, 1200, NULL, NULL, NULL),
	(55, '2561111', 0, NULL, NULL, NULL, 0, 0, 0, 1200, NULL, NULL, NULL),
	(56, '2561111', 0, NULL, NULL, NULL, 0, 0, 0, 1200, NULL, NULL, NULL),
	(57, '25611141001', 1, '1', '1', '2018', 2, 2, 4, 0, 'holiday', '41001', 'u'),
	(58, '25611141001', 2, '8', '1', '2018', 2, 2, 4, 0, 'work', '41001', 'u'),
	(59, '25611141001', 3, '15', '1', '2018', 2, 2, 4, 0, 'work', '41001', 'u'),
	(60, '25611141001', 4, '22', '1', '2018', 2, 2, 4, 0, 'work', '41001', 'u'),
	(61, '25611141002', 1, '6', '4', '2018', 3, 2, 5, 0, 'holiday', '41002', 'u'),
	(62, '25611141002', 2, '13', '4', '2018', 3, 2, 5, 0, 'holiday', '41002', 'u'),
	(63, '25611141002', 3, '20', '4', '2018', 3, 2, 5, 0, 'work', '41002', 'u'),
	(64, '25611141002', 4, '27', '4', '2018', 3, 2, 5, 0, 'work', '41002', 'u'),
	(65, '25611141002', 0, NULL, NULL, NULL, 0, 0, 0, 1200, NULL, NULL, NULL);
/*!40000 ALTER TABLE `tb_dateofteach` ENABLE KEYS */;

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
  `holiday_id` int(11) DEFAULT NULL,
  `holiday_day` varchar(50) DEFAULT NULL,
  `holiday_month` varchar(50) DEFAULT NULL,
  `holiday_year` varchar(50) DEFAULT NULL,
  `holiday_dayofyear` varchar(50) DEFAULT NULL,
  `holiday_row` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table keepworkteach3.tb_holiday_th: ~8 rows (approximately)
/*!40000 ALTER TABLE `tb_holiday_th` DISABLE KEYS */;
INSERT INTO `tb_holiday_th` (`holiday_id`, `holiday_day`, `holiday_month`, `holiday_year`, `holiday_dayofyear`, `holiday_row`) VALUES
	(1, '1', '1', '2561', 'วันขึ้นปีใหม่', 'holiday'),
	(2, '2', '1', '2561', 'วันหยุดชดเชยวันสิ้นปี', 'holiday'),
	(3, '1', '3', '2561', 'วันมาฆบูชา', 'holiday'),
	(4, '6', '4', '2561', 'วันจักรี', 'holiday'),
	(5, '13', '4', '2561', 'วันสงกรานต์', 'holiday'),
	(6, '14', '4', '2561', 'วันสงกรานต์', 'holiday'),
	(7, '15', '4', '2561', 'วันสงกรานต์', 'holiday'),
	(8, '16', '4', '2561', 'วันหยุดชดเชยวันสงกรานต์', 'holiday');
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

-- Dumping structure for table keepworkteach3.tb_month
CREATE TABLE IF NOT EXISTS `tb_month` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month_id` varchar(50) DEFAULT NULL,
  `month_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='เดือน';

-- Dumping data for table keepworkteach3.tb_month: ~12 rows (approximately)
/*!40000 ALTER TABLE `tb_month` DISABLE KEYS */;
INSERT INTO `tb_month` (`id`, `month_id`, `month_name`) VALUES
	(1, '1', 'มกราคม'),
	(2, '2', 'กุมพาพันธ์'),
	(3, '3', 'มีนาคม'),
	(4, '4', 'เมษายน'),
	(5, '5', 'พฤษภาคม'),
	(6, '6', 'มิถุนายน'),
	(7, '7', 'กรกฎาคม'),
	(8, '8', 'สิงหาคม'),
	(9, '9', 'กันยายน'),
	(10, '10', 'ตุลาคม'),
	(11, '11', 'พฤศจิกายน'),
	(12, '12', 'ธันวาคม');
/*!40000 ALTER TABLE `tb_month` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.tb_stipend
CREATE TABLE IF NOT EXISTS `tb_stipend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stipend_id` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ค่าจ้าง-เงินเดือน';

-- Dumping data for table keepworkteach3.tb_stipend: ~0 rows (approximately)
/*!40000 ALTER TABLE `tb_stipend` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_stipend` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.tb_subject
CREATE TABLE IF NOT EXISTS `tb_subject` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` varchar(10) DEFAULT NULL,
  `subject_name` varchar(50) DEFAULT NULL,
  `credit` int(3) DEFAULT NULL,
  `credit_hour` varchar(5) DEFAULT NULL,
  `tudsadee` int(2) DEFAULT NULL COMMENT 'ทฤษฎิ',
  `prtibad` int(2) DEFAULT NULL COMMENT 'ปฏิบัติ',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='วิชาที่สอน';

-- Dumping data for table keepworkteach3.tb_subject: ~5 rows (approximately)
/*!40000 ALTER TABLE `tb_subject` DISABLE KEYS */;
INSERT INTO `tb_subject` (`Id`, `subject_id`, `subject_name`, `credit`, `credit_hour`, `tudsadee`, `prtibad`) VALUES
	(1, '1', 'วิท', 3, '2-3-5', 2, 3),
	(2, '51001', 'คณิต', 3, '2-2-5', 2, 2),
	(3, '41001', 'คอม', 2, '2-2-5', 2, 2),
	(10, '41002', 'อังกฤษ', 3, '3-2-5', 3, 2),
	(11, '41003', 'วิททยาศาสตร์', 3, '2-2-5', 2, 2);
/*!40000 ALTER TABLE `tb_subject` ENABLE KEYS */;

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
  `stop_month` varchar(50) DEFAULT NULL,
  `teach_year` varchar(50) DEFAULT NULL,
  `start_time` varchar(50) DEFAULT NULL,
  `stop_time` varchar(50) DEFAULT NULL,
  `sum_hour` varchar(50) DEFAULT NULL COMMENT 'รวมชั่วโมงสอน',
  `standard_teach` int(11) DEFAULT NULL COMMENT 'อัตราการเบิก',
  `room` varchar(50) DEFAULT NULL,
  `user_roleid` varchar(50) DEFAULT NULL,
  `subject_roleid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table keepworkteach3.tb_table_teaching: ~3 rows (approximately)
/*!40000 ALTER TABLE `tb_table_teaching` DISABLE KEYS */;
INSERT INTO `tb_table_teaching` (`id`, `teble_teach_id`, `degree_studen`, `teach_term`, `term_year`, `teach_week`, `section`, `studen_number`, `start_month`, `stop_month`, `teach_year`, `start_time`, `stop_time`, `sum_hour`, `standard_teach`, `room`, `user_roleid`, `subject_roleid`) VALUES
	(6, '2561111', '1', '1', '2561', '', 1, 23, '06/04/2018', '27/04/2018', '2561', '07:00', '11:58', '4:0', 120, '', 'u', '1'),
	(7, '25611141001', '1', '1', '2561', '5', 1, 23, '01/01/2018', '22/01/2018', '2561', '07:00', '11:00', '4:0', 120, '', 'u', '41001'),
	(8, '25611141002', '1', '1', '2561', '', 1, 23, '06/04/2018', '27/04/2018', '2561', '', '', 'NaN:NaN', 120, '', 'u', '41002');
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
  `dateofteach_fk` varchar(50) DEFAULT NULL,
  `subject_fk` varchar(50) DEFAULT NULL COMMENT 'role วิชา',
  `tableteach_fk` varchar(50) DEFAULT NULL COMMENT 'role ตารางเรียน',
  `user_fk` varchar(50) DEFAULT NULL COMMENT 'role ผู้สอน',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='ตารางเบิกการสอน';

-- Dumping data for table keepworkteach3.tb_teaching: ~1 rows (approximately)
/*!40000 ALTER TABLE `tb_teaching` DISABLE KEYS */;
INSERT INTO `tb_teaching` (`id`, `teach_id`, `sum_hour_term`, `hoursum_tudsadee`, `hoursum_prtibad`, `money_tudsadee`, `money_prtibad`, `salary_sum`, `dateofteach_fk`, `subject_fk`, `tableteach_fk`, `user_fk`) VALUES
	(1, '1', 1, 1, 1, 1, 1, 1, '1', '1', '1', '1');
/*!40000 ALTER TABLE `tb_teaching` ENABLE KEYS */;

-- Dumping structure for table keepworkteach3.tb_user
CREATE TABLE IF NOT EXISTS `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) DEFAULT NULL,
  `user_pass` varchar(50) DEFAULT NULL,
  `prefix_name` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL COMMENT 'ชื่อ',
  `user_lastname` varchar(50) DEFAULT NULL COMMENT 'นามสกุล',
  `position_teach` varchar(50) DEFAULT NULL COMMENT 'ตำแหน่งผู้สอน',
  `faculty` varchar(50) DEFAULT NULL COMMENT 'คณะ',
  `mojor` varchar(50) DEFAULT NULL COMMENT 'สาขา',
  `baseHour` int(2) DEFAULT NULL COMMENT 'ฐานหน่วยคาบ',
  `baseKrm` int(2) DEFAULT NULL COMMENT 'ฐานหน่วยชั่วโมง',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table keepworkteach3.tb_user: ~4 rows (approximately)
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` (`id`, `user_id`, `user_pass`, `prefix_name`, `user_name`, `user_lastname`, `position_teach`, `faculty`, `mojor`, `baseHour`, `baseKrm`) VALUES
	(2, 'u', 'u', NULL, 'kittiphong', 'tesching', 'U', 'วิทยาการคอม', 'คณิตศาสตร์', 9, 6),
	(3, 'a', 'a', NULL, 'hh', 'jo', 'A', 'jo', 'jo', 8, 6),
	(4, '001', '001', NULL, '2', '4', 'U', '4', '44', 8, 6),
	(5, 't', 't', NULL, 'gg', 'gg', 'T', 'gg', 'gg', 8, 8);
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
