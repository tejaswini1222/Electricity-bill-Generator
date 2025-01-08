-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.88-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema bill_genarate
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ bill_genarate;
USE bill_genarate;

--
-- Table structure for table `bill_genarate`.`admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
CREATE TABLE `admin_login` (
  `admin_name` varchar(45) NOT NULL default '',
  `password` varchar(45) default NULL,
  `image` text,
  PRIMARY KEY  (`admin_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_genarate`.`admin_login`
--

/*!40000 ALTER TABLE `admin_login` DISABLE KEYS */;
INSERT INTO `admin_login` (`admin_name`,`password`,`image`) VALUES 
 ('dipa','1234','images/slider/dscaner.png');
/*!40000 ALTER TABLE `admin_login` ENABLE KEYS */;


--
-- Table structure for table `bill_genarate`.`bill_generate`
--

DROP TABLE IF EXISTS `bill_generate`;
CREATE TABLE `bill_generate` (
  `Meter_number` bigint(20) unsigned default NULL,
  `meter_type` varchar(45) default NULL,
  `customer_name` varchar(45) default NULL,
  `Grahak_number` int(10) unsigned default NULL,
  `Address` varchar(45) default NULL,
  `Mobile_no` bigint(20) unsigned default NULL,
  `Month` varchar(45) default NULL,
  `pr_date` text,
  `crn_date` text,
  `bb_date` text,
  `bn_date` text,
  `due_date` text,
  `tot_unit` text,
  `power_size` text,
  `vahak_kar` text,
  `Indhan_kar` text,
  `vij_kar` text,
  `static_rate` int(11) default NULL,
  `Amount` int(10) unsigned default NULL,
  `fine_amount` int(10) unsigned default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_genarate`.`bill_generate`
--

/*!40000 ALTER TABLE `bill_generate` DISABLE KEYS */;
INSERT INTO `bill_generate` (`Meter_number`,`meter_type`,`customer_name`,`Grahak_number`,`Address`,`Mobile_no`,`Month`,`pr_date`,`crn_date`,`bb_date`,`bn_date`,`due_date`,`tot_unit`,`power_size`,`vahak_kar`,`Indhan_kar`,`vij_kar`,`static_rate`,`Amount`,`fine_amount`) VALUES 
 (12345,'Agricultural','dipali',1,'shindewadi',8767459801,'April','Thu Feb 29 09:41:01 IST 2024','Fri Mar 29 09:41:01 IST 2024','Fri Mar 29 09:41:01 IST 2024','Sat Apr 13 09:41:01 IST 2024','Tue Apr 23 09:41:01 IST 2024','50','152.5','1.28','0.19','0.0',90,244,254),
 (4668,'Residential','asmita',2,'mangrul',8767459801,'May','Thu Feb 29 09:51:14 IST 2024','Fri Mar 29 09:51:14 IST 2024','Fri Mar 29 09:51:14 IST 2024','Sat Apr 13 09:51:14 IST 2024','Tue Apr 23 09:51:14 IST 2024','70','308.69998','1.17','0.25','0.0',116,426,436),
 (4668,'Residential','asmita',2,'mangrul',8767459801,'January','Sat Mar 02 09:20:32 IST 2024','Tue Apr 02 09:20:32 IST 2024','Tue Apr 02 09:20:32 IST 2024','Wed Apr 17 09:20:32 IST 2024','Sat Apr 27 09:20:32 IST 2024','96','423.36','1.17','0.25','0.0',116,541,551);
/*!40000 ALTER TABLE `bill_generate` ENABLE KEYS */;


--
-- Table structure for table `bill_genarate`.`bill_info1`
--

DROP TABLE IF EXISTS `bill_info1`;
CREATE TABLE `bill_info1` (
  `meter_type` varchar(20) default NULL,
  `customer_name` varchar(45) default NULL,
  `grahak_number` int(10) unsigned default NULL,
  `email` varchar(45) default NULL,
  `meter_number` int(11) default NULL,
  `address` varchar(45) default NULL,
  `mobile_number` bigint(20) unsigned default NULL,
  `month` varchar(45) default NULL,
  `current_riding` bigint(20) unsigned default NULL,
  `last_month_riding` bigint(20) unsigned default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_genarate`.`bill_info1`
--

/*!40000 ALTER TABLE `bill_info1` DISABLE KEYS */;
INSERT INTO `bill_info1` (`meter_type`,`customer_name`,`grahak_number`,`email`,`meter_number`,`address`,`mobile_number`,`month`,`current_riding`,`last_month_riding`) VALUES 
 ('Commercial','Gayatri',1,'chavangaytri945@gmail.com',5445,'Kurle',9874532875,'March',25,0),
 ('Agricultural','dipali',1,'dipalishinde1138@gmail.com',12345,'shindewadi',8767459801,'March',30,0),
 ('Residential','asmita',2,'amitagaikwad2003@gmail.com',4668,'mangrul',8767459801,'September',50,0),
 ('Commercial','sakshi gorad',3,'sakshigorad3@gmail.com',12098,'upale',9552815430,'November',100,0),
 ('Agricultural','dipali',1,'dipalishinde1138@gmail.com',12345,'shindewadi',8767459801,'April',50,0),
 ('Residential','asmita',2,'amitagaikwad2003@gmail.com',4668,'mangrul',8767459801,'May',70,0),
 ('Residential','asmita',2,'amitagaikwad2003@gmail.com',4668,'mangrul',8767459801,'January',96,0);
/*!40000 ALTER TABLE `bill_info1` ENABLE KEYS */;


--
-- Table structure for table `bill_genarate`.`bill_info2`
--

DROP TABLE IF EXISTS `bill_info2`;
CREATE TABLE `bill_info2` (
  `meter_type` varchar(45) default NULL,
  `customer_name` varchar(45) default NULL,
  `grahak_number` int(10) unsigned default NULL,
  `email` varchar(45) default NULL,
  `meter_number` bigint(20) unsigned default NULL,
  `address` varchar(45) default NULL,
  `mobile_number` bigint(20) unsigned default NULL,
  `month` varchar(45) default NULL,
  `billing_unit` bigint(20) unsigned default NULL,
  `current_riding` bigint(20) unsigned default NULL,
  `last_month_riding` bigint(20) unsigned default NULL,
  `per_unit_rate` bigint(20) unsigned default NULL,
  `power_size` bigint(20) unsigned default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_genarate`.`bill_info2`
--

/*!40000 ALTER TABLE `bill_info2` DISABLE KEYS */;
INSERT INTO `bill_info2` (`meter_type`,`customer_name`,`grahak_number`,`email`,`meter_number`,`address`,`mobile_number`,`month`,`billing_unit`,`current_riding`,`last_month_riding`,`per_unit_rate`,`power_size`) VALUES 
 ('Residential','asmita',2,'amitagaikwad2003@gmail.com',4668,'mangrul',8767459801,'May',70,70,0,4,309),
 ('Residential','asmita',2,'amitagaikwad2003@gmail.com',4668,'mangrul',8767459801,'January',96,96,0,4,423);
/*!40000 ALTER TABLE `bill_info2` ENABLE KEYS */;


--
-- Table structure for table `bill_genarate`.`check_biil`
--

DROP TABLE IF EXISTS `check_biil`;
CREATE TABLE `check_biil` (
  `month` varchar(45) NOT NULL default '',
  `consumer_no` int(10) unsigned default NULL,
  `meter_no` int(10) unsigned default NULL,
  `meter_type` varchar(45) default NULL,
  `privious_riding` int(10) unsigned default NULL,
  `current_riding` int(10) unsigned default NULL,
  `static_rate` int(10) unsigned default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_genarate`.`check_biil`
--

/*!40000 ALTER TABLE `check_biil` DISABLE KEYS */;
/*!40000 ALTER TABLE `check_biil` ENABLE KEYS */;


--
-- Table structure for table `bill_genarate`.`customer_login`
--

DROP TABLE IF EXISTS `customer_login`;
CREATE TABLE `customer_login` (
  `user_name` varchar(45) default NULL,
  `password` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_genarate`.`customer_login`
--

/*!40000 ALTER TABLE `customer_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_login` ENABLE KEYS */;


--
-- Table structure for table `bill_genarate`.`feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `name` varchar(45) default NULL,
  `mobile_no` bigint(20) unsigned default NULL,
  `feedback` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_genarate`.`feedback`
--

/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`name`,`mobile_no`,`feedback`) VALUES 
 ('asmita',8767459801,'abchjf                             ');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Table structure for table `bill_genarate`.`meter_info`
--

DROP TABLE IF EXISTS `meter_info`;
CREATE TABLE `meter_info` (
  `no` int(10) unsigned NOT NULL default '0',
  `meter_number` bigint(20) unsigned default NULL,
  `customer_name` varchar(45) default NULL,
  `address` varchar(45) default NULL,
  `email` varchar(45) default NULL,
  `mobile_number` bigint(30) unsigned default NULL,
  `meter_type` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_genarate`.`meter_info`
--

/*!40000 ALTER TABLE `meter_info` DISABLE KEYS */;
INSERT INTO `meter_info` (`no`,`meter_number`,`customer_name`,`address`,`email`,`mobile_number`,`meter_type`) VALUES 
 (1,12345,'dipali','shindewadi','dipalishinde1138@gmail.com',8767459801,'Agricultural'),
 (2,4668,'asmita','mangrul','amitagaikwad2003@gmail.com',8767459801,'Residential'),
 (3,12098,'sakshi gorad','upale','sakshigorad3@gmail.com',9552815430,'Commercial'),
 (4,3454,'asmita','mangrul','amitagaikwad2003@gmail.com',8767459801,'Agricultural'),
 (5,5678,'sakshi gorad','upale','sakshigorad3@gmail.com',9552815430,'Residential'),
 (5,5678,'sakshi gorad','upale','sakshigorad3@gmail.com',9552815430,'Residential'),
 (7,2003,'','null','null',NULL,'Agricultural');
/*!40000 ALTER TABLE `meter_info` ENABLE KEYS */;


--
-- Table structure for table `bill_genarate`.`payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `grahak_no` int(10) unsigned NOT NULL default '0',
  `month` varchar(45) default NULL,
  `amount` int(10) unsigned default NULL,
  `fine_amount` int(10) unsigned default NULL,
  `name` varchar(45) default NULL,
  `bill_unit` int(10) unsigned default NULL,
  `date` varchar(45) default NULL,
  PRIMARY KEY  (`grahak_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 4096 kB';

--
-- Dumping data for table `bill_genarate`.`payment`
--

/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` (`grahak_no`,`month`,`amount`,`fine_amount`,`name`,`bill_unit`,`date`) VALUES 
 (1,'April',244,254,'dipali',50,'2024-03-02'),
 (2,'May',426,436,'asmita',70,'2024-03-02');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;


--
-- Table structure for table `bill_genarate`.`rate_info`
--

DROP TABLE IF EXISTS `rate_info`;
CREATE TABLE `rate_info` (
  `meter_type` varchar(45) default NULL,
  `minunit` int(10) unsigned default NULL,
  `maxunit` int(10) unsigned default NULL,
  `unit_rate` double default NULL,
  `vahak_kar` double default NULL,
  `indhan_kar` double default NULL,
  `Vij_shulk` double default NULL,
  `static_rate` double default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_genarate`.`rate_info`
--

/*!40000 ALTER TABLE `rate_info` DISABLE KEYS */;
INSERT INTO `rate_info` (`meter_type`,`minunit`,`maxunit`,`unit_rate`,`vahak_kar`,`indhan_kar`,`Vij_shulk`,`static_rate`) VALUES 
 ('Agricultural',0,100,3.05,1.28,0.19,0,90),
 ('Agricultural',101,300,6.35,1.28,0.29,0,90),
 ('Agricultural',301,500,9.9,1.28,0.41,0,90),
 ('Agricultural',501,1000,11.5,1.28,0.45,0,90),
 ('Residential',0,100,4.41,1.17,0.25,0,116),
 ('Residential',101,300,9.64,1.17,0.45,0,116),
 ('Residential',301,500,13.61,1.17,0.6,0,116),
 ('Residential',501,1000,15.57,1.17,0.65,0,116),
 ('Commercial',0,100,8.27,1.17,0.25,0,410),
 ('Commercial',101,300,8.27,1.17,0.25,0,410),
 ('Commercial',301,500,8.27,1.17,0.25,0,410),
 ('Commercial',501,1000,8.27,1.17,0.25,0,410);
/*!40000 ALTER TABLE `rate_info` ENABLE KEYS */;


--
-- Table structure for table `bill_genarate`.`registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE `registration` (
  `customer_id` int(10) unsigned NOT NULL default '0',
  `name` varchar(45) default NULL,
  `address` varchar(45) default NULL,
  `city` varchar(45) default NULL,
  `email` varchar(45) default NULL,
  `mobile_no` bigint(20) unsigned default NULL,
  `username` varchar(45) default NULL,
  `password` varchar(45) default NULL,
  PRIMARY KEY  (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_genarate`.`registration`
--

/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` (`customer_id`,`name`,`address`,`city`,`email`,`mobile_no`,`username`,`password`) VALUES 
 (1,'dipali','shindewadi','mangrul','dipalishinde1138@gmail.com',8767459801,'dipali','1234'),
 (2,'asmita','mangrul','shirala','amitagaikwad2003@gmail.com',8767459801,'asmita','8767'),
 (3,'sakshi gorad','upale','karad','sakshigorad3@gmail.com',9552815430,'sakshi','qwe'),
 (4,'sfsdf','tregrt','rthtrh','shubhangi@gmail.com',1234567890,'aaa','1234');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
