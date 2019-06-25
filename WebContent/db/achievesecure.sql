# Host: localhost  (Version: 5.6.21-log)
# Date: 2019-05-28 11:00:16
# Generator: MySQL-Front 5.3  (Build 4.186)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "cloud"
#

DROP TABLE IF EXISTS `cloud`;
CREATE TABLE `cloud` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "cloud"
#

INSERT INTO `cloud` VALUES ('cloud','cloud');

#
# Structure for table "doctor"
#

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(45) DEFAULT NULL,
  `docemail` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `skey` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

#
# Data for table "doctor"
#

INSERT INTO `doctor` VALUES (4,'radha','radha.bansode7411@gmail.com','123','FEMALE','maharsatra','india','8l6km04crp','yes'),(32,'AJAY','ajaypatil5515@gmail.com','123','MALE','karnataka','india','ce3m03vh5v','yes'),(33,'poojab','biyani.s.s81@gmail.com','111','FEMALE','karnataka','india','4km3hk3wgc','yes'),(34,'doc5','shradhab142@gmail.com','123','FEMALE','maharsatra','indian','0010ag7y47','NO'),(39,'shradhabb','shradhuvlb@gmail.com','111','FEMALE','karnataka','india','w88dfo66k1','NO');

#
# Structure for table "download"
#

DROP TABLE IF EXISTS `download`;
CREATE TABLE `download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(45) DEFAULT NULL,
  `pname` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

#
# Data for table "download"
#

INSERT INTO `download` VALUES (12,'Testcolllection1.txt','patient4','2019/05/27 17:09:46'),(13,'Testcolllection1.txt','patient4','2019/05/27 17:10:24'),(14,'cold.txt','shradha','2019/05/28 10:10:01');

#
# Structure for table "patient"
#

DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

#
# Data for table "patient"
#

INSERT INTO `patient` VALUES (14,'radha','radha.bansode7411@gmail.com','123','FEMALE','karnataka','india'),(15,'POOJA','cloudminds19@gmail.com','123','FEMALE','karnataka','indian'),(16,'shradha','shradhb142@gmail.com','123','FEMALE','karnataka','india');

#
# Structure for table "request"
#

DROP TABLE IF EXISTS `request`;
CREATE TABLE `request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `pname` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `attributekey` varchar(45) DEFAULT NULL,
  `filename` varchar(45) DEFAULT NULL,
  `docname` varchar(45) DEFAULT NULL,
  `docemail` varchar(45) DEFAULT NULL,
  `secret_key` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `content` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

#
# Data for table "request"
#

INSERT INTO `request` VALUES (25,27,'radha','2019.05.24 AD at 17:02:13 ','fully high fever','feverreport.txt','shradhabb','shrahab142@gmail.com','bjnsq9w2ew','yes',X'3459683459695246386F7351614B6165354843484F4544465445724A6945506D'),(26,27,'radha','2019.05.24 AD at 17:02:13 ','fully high fever','feverreport.txt','radha','radha.bansode7411@gmail.com','bjnsq9w2ew','yes',X'3459683459695246386F7351614B6165354843484F4544465445724A6945506D'),(27,29,'POOJA','2019.05.27 AD at 10:27:41 ','full high fever','HIGH FEVER','AJAY','ajaypatil5515@gmail.com','ha1b4yk6tx','yes',X'3232497978347941467862513361676C3774393079513D3D'),(29,31,'shradha','2019.05.28 AD at 10:07:08 ','cold','cold.txt','poojab','biyani.s.s81@gmail.com','bs0ki7pgyd','yes',X'344A31442F65786177727956436332367074574438673D3D'),(30,31,'shradha','2019.05.28 AD at 10:07:08 ','cold','cold.txt','poojab','biyani.s.s81@gmail.com','bs0ki7pgyd','No',X'344A31442F65786177727956436332367074574438673D3D');

#
# Structure for table "trusted"
#

DROP TABLE IF EXISTS `trusted`;
CREATE TABLE `trusted` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "trusted"
#

INSERT INTO `trusted` VALUES ('ta','ta');

#
# Structure for table "upload"
#

DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `pname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `attributekey` varchar(45) DEFAULT NULL,
  `filename` varchar(45) DEFAULT NULL,
  `content` blob,
  `time` varchar(45) DEFAULT NULL,
  `secret_key` varchar(45) DEFAULT NULL,
  `trapdoorkey` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `epname` varchar(45) DEFAULT NULL,
  `eemail` varchar(45) DEFAULT NULL,
  `eattributekey` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

#
# Data for table "upload"
#

INSERT INTO `upload` VALUES (27,14,'radha','radha.bansode7411@gmail.com','fully high fever','feverreport.txt',X'3459683459695246386F7351614B6165354843484F4544465445724A6945506D','2019.05.24 AD at 17:02:13 ','bjnsq9w2ew','Swnt8NrIwSq7nRnZWOtkNA==','No','H4COxyNta4g=','sgBXGKQOTLN3koyCJ+mQf2TT0OWTjsqSjWP/098Viaw=','gzcpvHlAToMdXAWzipO4UoklKlCX19Qm'),(28,15,'POOJA','cloudminds19@gmail.com','full high fever','HIGH FEVER',X'3232497978347941467862513361676C3774393079513D3D','2019.05.27 AD at 10:27:37 ','m5n8esshh6','1UFGMIE+qMuDYhzpu01pCQ==','No','MWuIsdLdyuY=','lrYe5HbPTuiXpv57oi3p0lbeSMmd4vu0','oboX7HT1ShBSCc7sBCoJyA=='),(31,16,'shradha','shradhb142@gmail.com','cold','cold.txt',X'344A31442F65786177727956436332367074574438673D3D','2019.05.28 AD at 10:07:08 ','bs0ki7pgyd','g7ua4HZ1hVHqLCppwbN3Ww==','No','iNGkZDDVGGw=','TdxUSrxvGW3NUCYkyzZv+P179jbi4Jn9','9ksdN5UJ9PA=');
