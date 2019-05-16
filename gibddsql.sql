-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               10.1.37-MariaDB - mariadb.org binary distribution
-- Операционная система:         Win32
-- HeidiSQL Версия:              10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных gibdd
CREATE DATABASE IF NOT EXISTS `gibdd` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `gibdd`;

-- Дамп структуры для таблица gibdd.auto
CREATE TABLE IF NOT EXISTS `auto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Number` char(50) NOT NULL,
  `Model` char(50) DEFAULT NULL,
  `Mk` char(50) DEFAULT NULL,
  `VIN` char(50) DEFAULT NULL,
  `Color` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы gibdd.auto: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `auto` DISABLE KEYS */;
INSERT INTO `auto` (`id`, `Number`, `Model`, `Mk`, `VIN`, `Color`) VALUES
	(1, 'Р756ВН', '2114', 'Lada', 'XTA2129389238189', 'Black'),
	(2, 'В707РР', 'Vesta', 'LADA', 'XTA2123873182838', 'White'),
	(3, 'М972РА', 'MK', 'Geely', 'FTA2738213787382', 'Gray'),
	(4, 'У453КУ', '2110', 'LADA', 'XTA2812983912398', 'White');
/*!40000 ALTER TABLE `auto` ENABLE KEYS */;

-- Дамп структуры для таблица gibdd.drivers
CREATE TABLE IF NOT EXISTS `drivers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FIO` char(50) DEFAULT NULL,
  `License` char(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы gibdd.drivers: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
INSERT INTO `drivers` (`ID`, `FIO`, `License`) VALUES
	(1, 'Казанцев Владислав Андреевич', 'М92РВ39392'),
	(2, 'Казанцев Андрей Дмитриевич', 'У74ВН39234'),
	(3, 'Сясегов Роман Николаевич', 'В99УЕ35728'),
	(4, 'Заруцкий Константин', 'У78ЕБ37267');
/*!40000 ALTER TABLE `drivers` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
