-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.15


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema hrmgr_db
--

CREATE DATABASE IF NOT EXISTS hrmgr_db;
USE hrmgr_db;

--
-- Definition of table `applied_jobtab`
--

DROP TABLE IF EXISTS `applied_jobtab`;
CREATE TABLE `applied_jobtab` (
  `username` varchar(45) NOT NULL,
  `jobcode` varchar(45) NOT NULL,
  `applied_date` varchar(45) NOT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applied_jobtab`
--

/*!40000 ALTER TABLE `applied_jobtab` DISABLE KEYS */;
INSERT INTO `applied_jobtab` (`username`,`jobcode`,`applied_date`,`status`) VALUES 
 ('chetansuri91@gmail.com','1003','22/3/2013',0),
 ('chetansuri91@gmail.com','1001','23/4/2013',0),
 ('rahil@gmail.com','1001','23/4/2013',0),
 ('amit@yahoo.com','1004','27/4/2013',0),
 ('rohan@hotmail.com','1002','27/4/2013',0),
 ('sanjay@gmail.com','1001','27/4/2013',0),
 ('rahul@gmail.com','1001','28/4/2013',0),
 ('yaman@gmail.com','1002','28/4/2013',0),
 ('sonam@gmail.com','1001','28/4/2013',0),
 ('mories@gmail.com','1004','28/4/2013',0),
 ('indra@gmail.com','1003','29/4/2013',0);
/*!40000 ALTER TABLE `applied_jobtab` ENABLE KEYS */;


--
-- Definition of table `domainskill`
--

DROP TABLE IF EXISTS `domainskill`;
CREATE TABLE `domainskill` (
  `domain` varchar(45) NOT NULL,
  `skill` varchar(45) NOT NULL,
  PRIMARY KEY (`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `domainskill`
--

/*!40000 ALTER TABLE `domainskill` DISABLE KEYS */;
INSERT INTO `domainskill` (`domain`,`skill`) VALUES 
 ('Programmer','.Net Programmer'),
 ('web designer','.Net web designer'),
 ('web developer','.Net web developer'),
 ('finance','Bussiness finance'),
 ('Programmer','C Programmer'),
 ('Programmer','C++ Programmer'),
 ('Programmer','Java Programmer'),
 ('web designer','Java web designer'),
 ('web developer','Java web developer'),
 ('finance','Marketing finance'),
 ('web designer','php web designer '),
 ('web developer','php web developer');
/*!40000 ALTER TABLE `domainskill` ENABLE KEYS */;


--
-- Definition of table `interview_result`
--

DROP TABLE IF EXISTS `interview_result`;
CREATE TABLE `interview_result` (
  `name` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `jobcode` varchar(45) NOT NULL,
  `writentest_marks` varchar(45) NOT NULL,
  `interview_marks` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interview_result`
--

/*!40000 ALTER TABLE `interview_result` DISABLE KEYS */;
INSERT INTO `interview_result` (`name`,`username`,`jobcode`,`writentest_marks`,`interview_marks`,`status`) VALUES 
 ('Ajay','ajay@gmail.com','1000','37','40','selected'),
 ('Varun','varunsharma@gmail.com','1000','40','42','selected');
/*!40000 ALTER TABLE `interview_result` ENABLE KEYS */;


--
-- Definition of table `interview_schedule`
--

DROP TABLE IF EXISTS `interview_schedule`;
CREATE TABLE `interview_schedule` (
  `Jobcode` varchar(45) NOT NULL,
  `Date` varchar(45) NOT NULL,
  `Interviewer` varchar(45) NOT NULL,
  `Venue` varchar(45) NOT NULL,
  `Timing` varchar(45) NOT NULL,
  `Writen` tinyint(1) NOT NULL,
  `Technical` tinyint(1) NOT NULL,
  `Hr` tinyint(1) NOT NULL,
  PRIMARY KEY (`Jobcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interview_schedule`
--

/*!40000 ALTER TABLE `interview_schedule` DISABLE KEYS */;
INSERT INTO `interview_schedule` (`Jobcode`,`Date`,`Interviewer`,`Venue`,`Timing`,`Writen`,`Technical`,`Hr`) VALUES 
 ('1001','15/05/2013','Manpreet Kesar','Encapsulate Logic, Jalandhar','9:00 AM',1,1,1);
/*!40000 ALTER TABLE `interview_schedule` ENABLE KEYS */;


--
-- Definition of table `jobs_tab`
--

DROP TABLE IF EXISTS `jobs_tab`;
CREATE TABLE `jobs_tab` (
  `jobcode` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jobtitle` varchar(45) NOT NULL,
  `qualification` varchar(45) NOT NULL,
  `experience` int(10) unsigned NOT NULL,
  `location` varchar(45) NOT NULL,
  `package` varchar(45) NOT NULL,
  PRIMARY KEY (`jobcode`)
) ENGINE=InnoDB AUTO_INCREMENT=1007 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs_tab`
--

/*!40000 ALTER TABLE `jobs_tab` DISABLE KEYS */;
INSERT INTO `jobs_tab` (`jobcode`,`jobtitle`,`qualification`,`experience`,`location`,`package`) VALUES 
 (1001,'Web Developer','Btech (CSE, IT, ECE), MCA',2,'Banglore','3.5'),
 (1002,'Network Engineer','Btech (CSE, ECE)',3,'New Delhi','4.2'),
 (1003,'HR Manager','MBA',2,'New delhi','2.5'),
 (1004,'Marketing Executive','MBA',4,'Chennai','3.2'),
 (1005,'Web Designer','Btech',0,'Noida','2.0'),
 (1006,'Software Developer','Btech',0,'Gurgawon','3.2');
/*!40000 ALTER TABLE `jobs_tab` ENABLE KEYS */;


--
-- Definition of table `personaltab`
--

DROP TABLE IF EXISTS `personaltab`;
CREATE TABLE `personaltab` (
  `name` varchar(20) NOT NULL,
  `DOB` varchar(20) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `state` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `contactno` bigint(20) unsigned NOT NULL DEFAULT '0',
  `email_d` varchar(45) NOT NULL,
  `mailaddress` varchar(45) NOT NULL,
  PRIMARY KEY (`email_d`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personaltab`
--

/*!40000 ALTER TABLE `personaltab` DISABLE KEYS */;
INSERT INTO `personaltab` (`name`,`DOB`,`address`,`state`,`city`,`contactno`,`email_d`,`mailaddress`) VALUES 
 ('Amit Kumar','10-APR-1992','acd','punjab','Jalandhar',9955663221,'amit@yahoo.com','acd'),
 ('Chetan Suri','08/06/1991','er 193 pucca bagh jalandhar','punjab','Jalandhar',9988574649,'chetansuri91@gmail.com','er 193 pucca bagh jalandhar'),
 ('Indra Gandhi','05-APR-1994','xyz','haryana','Yamunanagar',9646066846,'indra@gmail.com','xyz'),
 ('Mories Mano','14-APR-1992','PO 123','punjab','Gurdaspur',9988574547,'mories@gmail.com','PO 123'),
 ('Rahil Kumar','01/01/1992','abc ','punjab','Jalandhar',9646455789,'rahil@gmail.com','abc'),
 ('Rahul verma','04-APR-1990','ab 290','punjab','Jalandhar',9954321789,'rahul@gmail.com','ab 290'),
 ('Rohan Kumar','01-APR-2013','model town','punjab','Amritsar',99999,'rohan@hotmail.com','model town'),
 ('Sanjay Dutt','01-APR-2013','Jail','punjab','Jalandhar',999,'sanjay@gmail.com','Jail'),
 ('Sonam Sharma','04-FEB-1991','address','punjab','Jalandhar',77665544332,'sonam@gmail.com','address'),
 ('Yaman','08/06/1991','xyz','punjab','Gurdaspur',8054321987,'yaman@gmail.com','xyz');
/*!40000 ALTER TABLE `personaltab` ENABLE KEYS */;


--
-- Definition of table `professionaltab`
--

DROP TABLE IF EXISTS `professionaltab`;
CREATE TABLE `professionaltab` (
  `graduation` varchar(20) NOT NULL,
  `g_marks` int(10) unsigned NOT NULL,
  `g_university` varchar(45) NOT NULL,
  `g_yof` int(10) unsigned NOT NULL,
  `postgraduation` varchar(45) DEFAULT NULL,
  `pg_marks` int(10) unsigned DEFAULT NULL,
  `pg_university` varchar(45) DEFAULT NULL,
  `pg_yof` int(10) unsigned DEFAULT NULL,
  `domain` varchar(45) NOT NULL,
  `skill` varchar(45) NOT NULL,
  `email_id` varchar(45) NOT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `professionaltab`
--

/*!40000 ALTER TABLE `professionaltab` DISABLE KEYS */;
INSERT INTO `professionaltab` (`graduation`,`g_marks`,`g_university`,`g_yof`,`postgraduation`,`pg_marks`,`pg_university`,`pg_yof`,`domain`,`skill`,`email_id`) VALUES 
 ('b.tech',65,'PTU',2013,'M.tech',55,'PTU',2015,'Programmer','.Net Programmer','amit@yahoo.com'),
 ('b.tech',75,'PTU',2013,'M.tech',85,'PTU',2015,'Programmer','Java Programmer','chetansuri91@gmail.com'),
 ('bsc',67,'ptu',2007,'msc',77,'ptu',2013,'Programmer','C Programmer','indra@gmail.com'),
 ('ba',70,'PTU',2011,'mba',90,'Open University',2013,'finance','Bussiness finance','mories@gmail.com'),
 ('b.tech',71,'PTU',2013,'M.tech',80,'PTU',2015,'Programmer','Java Programmer','rahil@gmail.com'),
 ('bca',90,'PTU',2009,'mca',77,'PTU',2012,'web designer','php web designer','rahul@gmail.com'),
 ('b.tech',77,'PTu',2013,'M.tech',78,'PTU',2015,'Programmer','C Programmer','rohan@hotmail.com'),
 ('b.tech',70,'ptu',2010,'M.tech',2014,'gndu',70,'Programmer','C Programmer','sanjay@gmail.com'),
 ('b.tech',80,'PTU',2012,'M.tech',77,'PTU',2014,'web developer','Java web developer','sonam@gmail.com'),
 ('b.com',65,'gndu',2007,'m.com',76,'gndu',2009,'web developer','.Net web developer','yaman@gmail.com');
/*!40000 ALTER TABLE `professionaltab` ENABLE KEYS */;


--
-- Definition of table `registertab`
--

DROP TABLE IF EXISTS `registertab`;
CREATE TABLE `registertab` (
  `fullname` varchar(25) NOT NULL,
  `email_id` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registertab`
--

/*!40000 ALTER TABLE `registertab` DISABLE KEYS */;
INSERT INTO `registertab` (`fullname`,`email_id`,`password`) VALUES 
 ('Amit Kumar','amit@yahoo.com','amit'),
 ('Chetan Suri','chetansuri91@gmail.com','chetan'),
 ('Hr manager','hr@gmail.com','chetan'),
 ('Indra Gandhi','indra@gmail.com','indra'),
 ('Interviewer','interviewer@gmail.com','chetan'),
 ('Kirat','kirat@hotmail.com','abc'),
 ('Manager','manager@gmail.com','chetan'),
 ('Mories Mano','mories@gmail.com','mories'),
 ('Rahil Kumar','rahil@gmail.com','rahil'),
 ('Rahul verma','rahul@gmail.com','rahul'),
 ('Rohan Kumar','rohan@hotmail.com','rohan'),
 ('Sanjay Dutt','sanjay@gmail.com','sanjay'),
 ('Sonam Sharma','sonam@gmail.com','sonam'),
 ('Yaman','yaman@gmail.com','yaman');
/*!40000 ALTER TABLE `registertab` ENABLE KEYS */;


--
-- Definition of table `shortlisttab`
--

DROP TABLE IF EXISTS `shortlisttab`;
CREATE TABLE `shortlisttab` (
  `name` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `contactno` bigint(20) unsigned NOT NULL,
  `graduation` varchar(45) NOT NULL,
  `domain` varchar(45) NOT NULL,
  `jobcode` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shortlisttab`
--

/*!40000 ALTER TABLE `shortlisttab` DISABLE KEYS */;
INSERT INTO `shortlisttab` (`name`,`username`,`contactno`,`graduation`,`domain`,`jobcode`) VALUES 
 ('Amit Kumar','amit@yahoo.com',9955663221,'b.tech','Programmer','1004'),
 ('Chetan Suri','chetansuri91@gmail.com',9988574649,'b.tech','Programmer','1003'),
 ('Indra Gandhi','indra@gmail.com',9646066846,'bsc','Programmer','1003'),
 ('Mories Mano','mories@gmail.com',9988574547,'ba','finance','1004'),
 ('Rahil Kumar','rahil@gmail.com',9646455789,'b.tech','Programmer','1001'),
 ('Rahul verma','rahul@gmail.com',9954321789,'bca','web designer','1001'),
 ('Rohan Kumar','rohan@hotmail.com',99999,'b.tech','Programmer','1002'),
 ('Sanjay Dutt','sanjay@gmail.com',999,'b.tech','Programmer','1001'),
 ('Sonam Sharma','sonam@gmail.com',77665544332,'b.tech','web developer','1001'),
 ('Yaman','yaman@gmail.com',8054321987,'b.com','web developer','1002');
/*!40000 ALTER TABLE `shortlisttab` ENABLE KEYS */;


--
-- Definition of table `statecity`
--

DROP TABLE IF EXISTS `statecity`;
CREATE TABLE `statecity` (
  `State` varchar(50) NOT NULL,
  `City` varchar(45) NOT NULL,
  PRIMARY KEY (`City`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statecity`
--

/*!40000 ALTER TABLE `statecity` DISABLE KEYS */;
INSERT INTO `statecity` (`State`,`City`) VALUES 
 ('Haryana','Ambala'),
 ('Punjab','Amritsar'),
 ('Punjab','Bathinda'),
 ('Rajasthan','Bikaner'),
 ('Delhi','Delhi'),
 ('Haryana','Faridabad'),
 ('Punjab','Gurdaspur'),
 ('Haryana','Gurgawon'),
 ('Rajasthan','Jaipur'),
 ('Punjab','Jalandhar'),
 ('Rajasthan','Jodhpur'),
 ('Punjab','Ludhiana'),
 ('Punjab','Patiala'),
 ('Haryana','Yamunanagar');
/*!40000 ALTER TABLE `statecity` ENABLE KEYS */;


--
-- Definition of table `usertab`
--

DROP TABLE IF EXISTS `usertab`;
CREATE TABLE `usertab` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `usertype` varchar(45) NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertab`
--

/*!40000 ALTER TABLE `usertab` DISABLE KEYS */;
INSERT INTO `usertab` (`username`,`password`,`usertype`) VALUES 
 ('amit@yahoo.com','amit','applicant'),
 ('chetansuri91@gmail.com','chetan','applicant'),
 ('hr@gmail.com','chetan','hr'),
 ('indra@gmail.com','indra','applicant'),
 ('interviewer@gmail.com','chetan','interviewer'),
 ('kirat@hotmail.com','abc','applicant'),
 ('manager@gmail.com','chetan','manager'),
 ('mories@gmail.com','mories','applicant'),
 ('rahil@gmail.com','rahil','applicant'),
 ('rahul@gmail.com','rahul','applicant'),
 ('rohan@hotmail.com','rohan','applicant'),
 ('sanjay@gmail.com','sanjay','applicant'),
 ('sonam@gmail.com','sonam','applicant'),
 ('yaman@gmail.com','yaman','applicant');
/*!40000 ALTER TABLE `usertab` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
