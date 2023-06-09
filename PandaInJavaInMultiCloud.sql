-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.1.58-community - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for pandainjavainmulticloud
CREATE DATABASE IF NOT EXISTS `pandainjavainmulticloud` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `pandainjavainmulticloud`;


-- Dumping structure for table pandainjavainmulticloud.groupscount
CREATE TABLE IF NOT EXISTS `groupscount` (
  `NoOfGroups` varchar(50) DEFAULT NULL,
  `CloudId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table pandainjavainmulticloud.groupscount: ~0 rows (approximately)
/*!40000 ALTER TABLE `groupscount` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupscount` ENABLE KEYS */;

INSERT INTO userregister (
    EmailId,
    Password,
    Name,
    GroupNo,
    UserType,
    CloudId
  )
VALUES (
    'EmailId:santhoshraj3101@gmail.com',
    'Password:sk324212',
    'Name:sk',
    'GroupNo:1',
    'UserType:Regular',
    'CloudId:1234'
  );
-- Dumping structure for table pandainjavainmulticloud.keydetails
CREATE TABLE IF NOT EXISTS `keydetails` (
  `FileName` varchar(50) DEFAULT NULL,
  `Publickey` varchar(50) DEFAULT NULL,
  `PrivateKey` varchar(50) DEFAULT NULL,
  `OwnerName` varchar(50) DEFAULT NULL,
  `GroupNo` varchar(50) DEFAULT NULL,
  `CloudId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO keydetails VALUES("home/sk/Downloads/Resume.pdf","resume","resumepdf","sk","1","1234");


-- Dumping data for table pandainjavainmulticloud.keydetails: ~0 rows (approximately)
/*!40000 ALTER TABLE `keydetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `keydetails` ENABLE KEYS */;


-- Dumping structure for table pandainjavainmulticloud.revockeduser
CREATE TABLE IF NOT EXISTS `revockeduser` (
  `UserName` varchar(50) DEFAULT NULL,
  `PrivateKeysTried` varchar(50) DEFAULT NULL,
  `BlockedBy` varchar(50) DEFAULT NULL,
  `CloudId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO revockeduser VALUES("sk","resumepdf","sk","1234");


-- Dumping data for table pandainjavainmulticloud.revockeduser: ~0 rows (approximately)
/*!40000 ALTER TABLE `revockeduser` DISABLE KEYS */;
/*!40000 ALTER TABLE `revockeduser` ENABLE KEYS */;


-- Dumping structure for table pandainjavainmulticloud.sharingkeydetails
CREATE TABLE IF NOT EXISTS `sharingkeydetails` (
  `FileName` varchar(50) DEFAULT NULL,
  `Publickey` varchar(50) DEFAULT NULL,
  `PrivateKey` varchar(50) DEFAULT NULL,
  `OwnerName` varchar(50) DEFAULT NULL,
  `GroupNo` varchar(50) DEFAULT NULL,
  `CloudId` varchar(50) DEFAULT NULL,
  `DestinationCloudId` varchar(50) DEFAULT NULL,
  `DestinationGroupNo` varchar(50) DEFAULT NULL,
  `DestimemberName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO sharingkeydetails VALUES ("home/sk/Downloads/Resume.pdf","resume","resumepdf","sk","1","1234","4321","01","ks");

-- Dumping data for table pandainjavainmulticloud.sharingkeydetails: ~0 rows (approximately)
/*!40000 ALTER TABLE `sharingkeydetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `sharingkeydetails` ENABLE KEYS */;


-- Dumping structure for table pandainjavainmulticloud.sharinguploaddetails
CREATE TABLE IF NOT EXISTS `sharinguploaddetails` (
  `OwnerName` varchar(50) DEFAULT NULL,
  `GroupNo` varchar(50) DEFAULT NULL,
  `FileName` varchar(50) DEFAULT NULL,
  `BlockName` varchar(50) DEFAULT NULL,
  `CipherFile` varchar(32000) DEFAULT NULL,
  `Signature` varchar(5000) DEFAULT NULL,
  `CloudId` varchar(50) DEFAULT NULL,
  `DestinationCloudId` varchar(50) DEFAULT NULL,
  `DestinationGroupNo` varchar(50) DEFAULT NULL,
  `DestimemberName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table pandainjavainmulticloud.sharinguploaddetails: ~0 rows (approximately)
/*!40000 ALTER TABLE `sharinguploaddetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `sharinguploaddetails` ENABLE KEYS */;


-- Dumping structure for table pandainjavainmulticloud.uploaddetails
CREATE TABLE IF NOT EXISTS `uploaddetails` (
  `OwnerName` varchar(50) DEFAULT NULL,
  `GroupNo` varchar(50) DEFAULT NULL,
  `FileName` varchar(50) DEFAULT NULL,
  `BlockName` varchar(50) DEFAULT NULL,
  `CipherFile` varchar(32000) DEFAULT NULL,
  `Signature` varchar(5000) DEFAULT NULL,
  `CloudId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table pandainjavainmulticloud.uploaddetails: ~0 rows (approximately)
/*!40000 ALTER TABLE `uploaddetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `uploaddetails` ENABLE KEYS */;


-- Dumping structure for table pandainjavainmulticloud.userregister
CREATE TABLE IF NOT EXISTS `userregister` (
  `EmailId` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `GroupNo` varchar(50) DEFAULT NULL,
  `UserType` varchar(50) DEFAULT NULL,
  `CloudId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table pandainjavainmulticloud.userregister: ~0 rows (approximately)
/*!40000 ALTER TABLE `userregister` DISABLE KEYS */;
/*!40000 ALTER TABLE `userregister` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
