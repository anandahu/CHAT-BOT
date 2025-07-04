/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.7.9 : Database - chatbot
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`chatbot` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `chatbot`;

/*Table structure for table `attendnace` */

DROP TABLE IF EXISTS `attendnace`;

CREATE TABLE `attendnace` (
  `attendance_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `datetime` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`attendance_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `attendnace` */

insert  into `attendnace`(`attendance_id`,`student_id`,`datetime`,`status`) values 
(1,2,'2024-03-17','PRESENT'),
(2,6,'2024-03-17','ABSENT'),
(3,6,'2024-03-18','PRESENT'),
(4,7,'2024-03-21','PRESENT'),
(5,6,'2024-03-22','Absent'),
(6,7,'2024-03-22','Present');

/*Table structure for table `basic` */

DROP TABLE IF EXISTS `basic`;

CREATE TABLE `basic` (
  `basic_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(100) DEFAULT NULL,
  `answer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`basic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `basic` */

insert  into `basic`(`basic_id`,`question`,`answer`) values 
(1,'Exam Details','https://teresas.ac.in/examination/'),
(2,'About College','https://teresas.ac.in/about-us/'),
(3,'More About','http://117.239.78.99/moodle/login/index.php'),
(4,'BCA Cloud Technology information','https://teresas.ac.in/programs/'),
(5,'Hai','Hai'),
(6,'Good Morning','Good Morning'),
(7,'Good Evening','Good Evening'),
(8,'Good Afternoon','Good Afternoon'),
(9,'hh','cc'),
(10,'hh','cc'),
(11,'ydyd','mmmm'),
(12,'dd','aa');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `chat_id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`chat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=241 DEFAULT CHARSET=latin1;

/*Data for the table `chat` */

insert  into `chat`(`chat_id`,`sender_id`,`receiver_id`,`message`,`date`) values 
(100,0,14,'http://117.239.78.99/moodle/login/index.php','2022-03-01'),
(99,14,0,'More About','2022-03-01'),
(98,0,14,'https://teresas.ac.in/programs/','2022-03-01'),
(97,14,0,'BCA Cloud Technology information','2022-03-01'),
(96,0,14,'Hai','2022-03-01'),
(95,14,0,'hai','2022-03-01'),
(94,0,14,'Hai','2022-03-01'),
(93,14,0,'hai','2022-03-01'),
(101,14,0,'hello','2023-03-22'),
(102,0,14,'Hai','2023-03-22'),
(103,34,0,'hai','2023-03-22'),
(104,0,34,'Hai','2023-03-22'),
(105,14,0,'hai','2023-03-23'),
(106,0,14,'Hai','2023-03-23'),
(107,14,0,'hshs','2024-02-01'),
(108,0,14,'','2024-02-01'),
(109,14,0,'hh','2024-02-01'),
(110,0,14,'','2024-02-01'),
(111,14,0,'hhj','2024-02-01'),
(112,0,14,'','2024-02-01'),
(113,14,0,'hhj','2024-02-01'),
(114,0,14,'','2024-02-01'),
(115,14,0,'hello ','2024-02-01'),
(116,0,14,'','2024-02-01'),
(117,14,0,'hai','2024-02-01'),
(118,0,14,'Hai','2024-02-01'),
(119,14,0,'hai','2024-02-01'),
(120,0,14,'Hai','2024-02-01'),
(121,14,0,'how are you ','2024-02-01'),
(122,0,14,'','2024-02-01'),
(123,14,0,'gjxxjfx','2024-02-01'),
(124,0,14,'','2024-02-01'),
(125,14,0,'hello ','2024-02-01'),
(126,0,14,'','2024-02-01'),
(127,14,0,'hai','2024-02-01'),
(128,0,14,'Hai','2024-02-01'),
(129,14,0,'More About ','2024-02-01'),
(130,0,14,'','2024-02-01'),
(131,14,0,'hai','2024-02-01'),
(132,0,14,'Hai','2024-02-01'),
(133,14,0,'Good morning ','2024-02-01'),
(134,0,14,'','2024-02-01'),
(135,14,0,'Good morning ','2024-02-01'),
(136,0,14,'','2024-02-01'),
(137,14,0,'Good morning ','2024-02-01'),
(138,0,14,'','2024-02-01'),
(139,14,0,'Good morning ','2024-02-01'),
(140,0,14,'','2024-02-01'),
(141,14,0,'Good morning ','2024-02-01'),
(142,0,14,'','2024-02-01'),
(143,14,0,'Good morning ','2024-02-01'),
(144,0,14,'','2024-02-01'),
(145,14,0,'Good morning ','2024-02-01'),
(146,0,14,'','2024-02-01'),
(147,14,0,'Good morning ','2024-02-01'),
(148,0,14,'','2024-02-01'),
(149,14,0,'Good morning ','2024-02-01'),
(150,0,14,'','2024-02-01'),
(151,14,0,'Good morning ','2024-02-01'),
(152,0,14,'','2024-02-01'),
(153,14,0,'Good morning ','2024-02-01'),
(154,0,14,'','2024-02-01'),
(155,14,0,'Good morning ','2024-02-01'),
(156,0,14,'','2024-02-01'),
(157,14,0,'Good morning ','2024-02-01'),
(158,0,14,'','2024-02-01'),
(159,14,0,'Good morning ','2024-02-01'),
(160,0,14,'','2024-02-01'),
(161,14,0,'jjj','2024-02-01'),
(162,0,14,'','2024-02-01'),
(163,14,0,'jjj','2024-02-01'),
(164,0,14,'','2024-02-01'),
(165,14,0,'Good morning ','2024-02-01'),
(166,0,14,'','2024-02-01'),
(167,14,0,'hai','2024-02-01'),
(168,0,14,'Hai','2024-02-01'),
(169,14,0,'hhh','2024-02-01'),
(170,0,14,'','2024-02-01'),
(171,14,0,'Good morning ','2024-02-01'),
(172,0,14,'','2024-02-01'),
(173,14,0,'hhj','2024-02-01'),
(174,0,14,'','2024-02-01'),
(175,14,0,'jffjc','2024-02-01'),
(176,0,14,'','2024-02-01'),
(177,14,0,'jffjc','2024-02-01'),
(178,0,14,'','2024-02-01'),
(179,14,0,'jffjc','2024-02-01'),
(180,0,14,'','2024-02-01'),
(181,14,0,'jffjc','2024-02-01'),
(182,0,14,'','2024-02-01'),
(183,14,0,'good morning ','2024-02-01'),
(184,0,14,'','2024-02-01'),
(185,14,0,'good morning','2024-02-01'),
(186,0,14,'Good Morning','2024-02-01'),
(187,34,0,'good morning','2024-02-01'),
(188,0,34,'Good Morning','2024-02-01'),
(189,34,0,'good morning','2024-02-15'),
(190,0,34,'Good Morning','2024-02-15'),
(191,34,0,'hai','2024-02-15'),
(192,0,34,'Hai','2024-02-15'),
(193,34,0,'hai','2024-02-15'),
(194,0,34,'Hai','2024-02-15'),
(195,34,0,'g fvyb','2024-02-15'),
(196,0,34,'','2024-02-15'),
(197,34,0,'vghh','2024-02-15'),
(198,0,34,'','2024-02-15'),
(199,34,0,'ghki','2024-02-16'),
(200,0,34,'','2024-02-16'),
(201,34,0,'ydyd','2024-02-16'),
(202,0,34,'','2024-02-16'),
(203,34,0,'huh','2024-02-16'),
(204,0,34,'','2024-02-16'),
(205,34,0,'hai','2024-02-16'),
(206,0,34,'Hai','2024-02-16'),
(207,34,0,'hh','2024-02-16'),
(208,0,34,'cc','2024-02-16'),
(209,34,0,'hh','2024-02-16'),
(210,0,34,'cc','2024-02-16'),
(211,34,0,'hh','2024-02-16'),
(212,0,34,'cc','2024-02-16'),
(213,34,0,'hh','2024-02-16'),
(214,0,34,'cc','2024-02-16'),
(215,34,0,'dd','2024-02-16'),
(216,0,34,'','2024-02-16'),
(217,34,0,'dd','2024-02-16'),
(218,0,34,'aa','2024-02-16'),
(219,14,0,'fg','2024-03-18'),
(220,0,14,'','2024-03-18'),
(221,14,0,'ff','2024-03-18'),
(222,0,14,'','2024-03-18'),
(223,14,0,'hshs','2024-03-18'),
(224,0,14,'','2024-03-18'),
(225,14,0,'nsns','2024-03-18'),
(226,0,14,'','2024-03-18'),
(227,34,0,'vshsh','2024-03-18'),
(228,0,34,'','2024-03-18'),
(229,34,0,'vshsh','2024-03-18'),
(230,0,34,'','2024-03-18'),
(231,34,0,'fjk','2024-03-18'),
(232,0,34,'','2024-03-18'),
(233,34,0,'fjk','2024-03-18'),
(234,0,34,'','2024-03-18'),
(235,34,0,'fjk','2024-03-18'),
(236,0,34,'','2024-03-18'),
(237,34,0,'fjk','2024-03-18'),
(238,0,34,'','2024-03-18'),
(239,34,0,'hs','2024-03-18'),
(240,0,34,'','2024-03-18');

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `complaint_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `complaint` varchar(100) DEFAULT NULL,
  `reply` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`complaint_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `complaint` */

insert  into `complaint`(`complaint_id`,`parent_id`,`student_id`,`complaint`,`reply`,`date`) values 
(1,NULL,NULL,'Not working','sorry','20-10-2020'),
(3,NULL,NULL,'changes','sure','21-2-2020'),
(6,NULL,NULL,'','what?','2022-01-05'),
(5,NULL,NULL,'bang','OK','7-7-2020'),
(7,NULL,NULL,'networkerrrorrr','oops','2022-01-05'),
(8,NULL,NULL,'err','OK','2022-01-06'),
(9,NULL,NULL,'home run','ok','2022-02-09'),
(10,1,NULL,'dsd','pending','2023-03-23'),
(11,14,NULL,'ghj','pending','2023-03-23'),
(12,14,NULL,'ghj','pending','2023-03-23'),
(13,14,NULL,'asdf','pending','2023-03-23'),
(14,0,7,'jm,','pending','2023-03-23'),
(15,0,7,'slow','pending','2023-03-23'),
(16,0,6,'fyy','dddd','2024-02-15'),
(17,0,6,'hzhs','pending','2024-03-18'),
(18,0,7,'hshsb','pending','2024-03-21'),
(19,0,7,'hshsb','pending','2024-03-21'),
(20,0,7,'hshsb','pending','2024-03-21');

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `course` */

insert  into `course`(`course_id`,`course`) values 
(3,'BCA CT & ISM'),
(11,'BA English'),
(13,'Bsc Maths'),
(17,'Bcom Tax'),
(18,'BBA');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `usertype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`login_id`,`username`,`password`,`usertype`) values 
(1,'admin','admin','admin'),
(30,'soon','soon','student'),
(36,'noel','Noel1235','parent'),
(29,'staff','staff','staff'),
(14,'ss','ss','student'),
(31,'Anju@123','Anju@123','parent'),
(35,'noel','Noel1234','staff'),
(34,'bb','bb','student'),
(37,'samkk123','gd','student');

/*Table structure for table `notification` */

DROP TABLE IF EXISTS `notification`;

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `notification` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `file` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `notification` */

insert  into `notification`(`notification_id`,`notification`,`date`,`file`) values 
(1,'all','2021-12-10 15:02:19',NULL),
(2,'alert','2021-12-10 15:50:00',NULL),
(3,'all','2021-12-11 12:22:28',NULL),
(4,'blah','2021-12-11 12:24:44',NULL),
(5,'all','2021-12-13 14:16:40',NULL),
(6,'helooooo','2021-12-16 14:11:04',NULL),
(7,'Its a holiday','2022-02-09 10:31:37',NULL),
(8,'today is holiday','2023-03-22 20:40:53',NULL),
(9,'lllllllllllkkkkkkkkkkkk','2024-02-01 08:41:36',NULL),
(10,'lllllllllllkkkkkkkkkkkk','2024-03-17 19:45:22','static/img/1d15b96a-c69b-45ca-bfc5-2934773702e7t-removebg-preview.png'),
(11,'lllllllllllkkkkkkkkkkkk','2024-03-17 19:47:08','static/img/8caf7be7-de99-46a6-a14f-59fed2c0d641t-removebg-preview.png'),
(12,NULL,NULL,NULL);

/*Table structure for table `parent` */

DROP TABLE IF EXISTS `parent`;

CREATE TABLE `parent` (
  `parent_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `parent` */

insert  into `parent`(`parent_id`,`login_id`,`student_id`,`fname`,`lname`,`place`,`phone`,`email`) values 
(1,31,2,'fgh',NULL,NULL,NULL,NULL),
(2,36,9,'Noel','Saju','nettor','9876545678','noel@gmail.com');

/*Table structure for table `qusetion_request` */

DROP TABLE IF EXISTS `qusetion_request`;

CREATE TABLE `qusetion_request` (
  `question_request_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `qusetion` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`question_request_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `qusetion_request` */

insert  into `qusetion_request`(`question_request_id`,`student_id`,`qusetion`,`status`) values 
(1,14,'ggg','sended'),
(2,14,'hh','sended'),
(3,14,'yyy','sended'),
(4,14,'df','pending'),
(5,6,'ghki','pending'),
(6,6,'ydyd','sended'),
(7,6,'huh','pending'),
(8,6,'dd','sended'),
(9,7,'fg','pending'),
(10,7,'ff','pending'),
(11,7,'hshs','pending'),
(12,7,'nsns','pending'),
(13,6,'vshsh','pending'),
(14,6,'vshsh','pending'),
(15,6,'fjk','pending'),
(16,6,'fjk','pending'),
(17,6,'fjk','pending'),
(18,6,'fjk','pending'),
(19,6,'hs','pending');

/*Table structure for table `semester` */

DROP TABLE IF EXISTS `semester`;

CREATE TABLE `semester` (
  `semester_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `semester` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`semester_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `semester` */

insert  into `semester`(`semester_id`,`course_id`,`semester`) values 
(1,17,'Semester - 1'),
(2,17,'Semester - 2'),
(3,17,'Semester - 3');

/*Table structure for table `staff` */

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `staff` */

insert  into `staff`(`staff_id`,`login_id`,`first_name`,`last_name`,`place`,`phone`,`email`) values 
(12,14,'hoshi','kwon','busan','9034647234','horang@gmail.com'),
(17,29,'hanvv','hanv','asparagusv','9098765457','hamv@gmail.com'),
(18,31,'Anju','s','Ernakulam','9999999998','anju@gmail.com'),
(21,35,'Noel','Saju','Kaloor','9876545678','noel@gmail.com');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `semester` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`student_id`,`login_id`,`course_id`,`semester`,`first_name`,`last_name`,`place`,`email`) values 
(2,30,16,'3','soonyoung','kwonn','ekmm','grrr@gmail.com'),
(6,34,3,'4','ruby','woozi','sul','svt@gmail.com'),
(7,14,3,'1','carat','jun','bsn','crt@gmail.com'),
(83,37,16,'1','hghgy','mbjhyguy','yg','amal123@gmail.com');

/*Table structure for table `timetable` */

DROP TABLE IF EXISTS `timetable`;

CREATE TABLE `timetable` (
  `timetable_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` varchar(100) DEFAULT NULL,
  `semester` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`timetable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `timetable` */

insert  into `timetable`(`timetable_id`,`course_id`,`semester`,`date`,`time`) values 
(1,'11','2','2021-12-08','14:47'),
(2,'3','3','2021-12-01','13:49'),
(3,'4','2','2021-12-08','15:14'),
(4,'11','3','2022-02-03','10:43'),
(5,'18','4','2023-03-23','00:41'),
(6,'16','6','2023-03-23','02:47'),
(7,'16','4','2023-03-23','14:00'),
(8,'16','6','2023-03-23','17:20:15'),
(9,'16','1','2024-02-01','08:44:05'),
(10,'16','1','2024-02-15','22:32:42'),
(11,'3','hjh','2024-02-15','23:22:12');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
