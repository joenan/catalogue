/*
SQLyog Community v12.5.0 (64 bit)
MySQL - 5.6.10 : Database - cataloguing
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cataloguing` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cataloguing`;

/*Table structure for table `answers` */

DROP TABLE IF EXISTS `answers`;

CREATE TABLE `answers` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `behaviouralSkills` double DEFAULT NULL,
  `classficationSkills` double DEFAULT NULL,
  `communicationSkills` double DEFAULT NULL,
  `consistencyAndAdaptibilitySkills` double DEFAULT NULL,
  `functionalSkills` double DEFAULT NULL,
  `indexingSkills` double DEFAULT NULL,
  `judgementSkills` double DEFAULT NULL,
  `knowledgeSkills` double DEFAULT NULL,
  `problemSolvingSkills` double DEFAULT NULL,
  `professionalSkills` double DEFAULT NULL,
  `technologicalSkills` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`answer_id`),
  KEY `FK_2nuepan7w6vgupoegetvyg2fq` (`user_id`),
  CONSTRAINT `FK_2nuepan7w6vgupoegetvyg2fq` FOREIGN KEY (`user_id`) REFERENCES `userprofile` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `answers` */

/*Table structure for table `cataloguingskills` */

DROP TABLE IF EXISTS `cataloguingskills`;

CREATE TABLE `cataloguingskills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noofquestions` int(11) DEFAULT NULL,
  `percentagescore` int(11) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_userid_cat` (`userid`),
  CONSTRAINT `fk_userid_cat` FOREIGN KEY (`userid`) REFERENCES `userprofile` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `cataloguingskills` */

insert  into `cataloguingskills`(`id`,`noofquestions`,`percentagescore`,`score`,`status`,`userid`) values 
(1,36,89,32,'written',1),
(2,36,64,23,'written',2),
(3,36,43,23,'written',3),
(4,36,29,23,'written',4),
(5,36,12,23,'written',5),
(6,36,0,23,'written',6),
(7,36,56,23,'written',7),
(8,36,80,23,'written',8),
(9,36,33,23,'written',9),
(10,36,12,23,'written',10),
(11,36,11,23,'written',11),
(12,36,23,NULL,'written',12);

/*Table structure for table `classificationskills` */

DROP TABLE IF EXISTS `classificationskills`;

CREATE TABLE `classificationskills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noofquestions` int(11) DEFAULT NULL,
  `percentagescore` int(11) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_cl` (`userid`),
  CONSTRAINT `fk_user_cl` FOREIGN KEY (`userid`) REFERENCES `userprofile` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `classificationskills` */

insert  into `classificationskills`(`id`,`noofquestions`,`percentagescore`,`score`,`status`,`userid`) values 
(1,11,91,10,'written',1),
(2,11,73,8,'written',2),
(3,11,51,9,'written',3),
(4,11,23,8,'written',4),
(5,11,34,7,'written',5),
(6,11,56,6,'written',6),
(7,11,60,6,'written',7),
(8,11,12,6,'written',8),
(9,11,45,6,'written',9),
(10,11,12,6,'written',10),
(11,11,19,6,'written',11),
(12,11,20,6,'written',12);

/*Table structure for table `communicationskills` */

DROP TABLE IF EXISTS `communicationskills`;

CREATE TABLE `communicationskills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noofquestions` int(11) DEFAULT NULL,
  `percentagescore` int(11) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_userid_com` (`userid`),
  CONSTRAINT `fk_userid_com` FOREIGN KEY (`userid`) REFERENCES `userprofile` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `communicationskills` */

insert  into `communicationskills`(`id`,`noofquestions`,`percentagescore`,`score`,`status`,`userid`) values 
(1,9,100,9,'written',1),
(2,9,56,5,'written',2),
(3,9,80,5,'written',3),
(4,9,25,5,'written',4),
(5,9,90,5,'written',5),
(6,9,66,5,'written',6),
(7,9,70,5,'written',7),
(8,9,20,5,'written',8),
(9,9,45,5,'written',9),
(10,9,64,5,'written',10),
(11,9,50,5,'written',11),
(12,9,30,5,'written',12);

/*Table structure for table `consistencyandadaptabilityskills` */

DROP TABLE IF EXISTS `consistencyandadaptabilityskills`;

CREATE TABLE `consistencyandadaptabilityskills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noofquestions` int(11) DEFAULT NULL,
  `percentagescore` int(11) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_userid_cons` (`userid`),
  CONSTRAINT `fk_userid_cons` FOREIGN KEY (`userid`) REFERENCES `userprofile` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `consistencyandadaptabilityskills` */

insert  into `consistencyandadaptabilityskills`(`id`,`noofquestions`,`percentagescore`,`score`,`status`,`userid`) values 
(1,5,80,4,'written',1),
(2,5,60,4,'written',2),
(3,5,50,4,'written',3),
(4,5,40,4,'written',4),
(5,5,10,4,'written',5),
(6,5,30,4,'written',6),
(7,5,45,4,'written',7),
(8,5,70,4,'written',8),
(9,5,65,4,'written',9),
(10,5,20,4,'written',10),
(11,5,20,4,'written',11),
(12,5,10,4,'written',12);

/*Table structure for table `indexingskills` */

DROP TABLE IF EXISTS `indexingskills`;

CREATE TABLE `indexingskills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noofquestions` int(11) DEFAULT NULL,
  `percentagescore` int(11) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_userid_ind` (`userid`),
  CONSTRAINT `fk_userid_ind` FOREIGN KEY (`userid`) REFERENCES `userprofile` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `indexingskills` */

insert  into `indexingskills`(`id`,`noofquestions`,`percentagescore`,`score`,`status`,`userid`) values 
(1,10,70,7,'written',1),
(2,10,60,6,'written',2),
(3,10,90,6,'written',3),
(4,10,45,6,'written',4),
(5,10,40,6,'written',5),
(6,10,60,6,'written',6),
(7,10,25,6,'written',7),
(8,10,60,6,'written',8),
(9,10,70,6,'written',9),
(10,10,20,6,'written',10),
(11,10,30,6,'written',11),
(12,10,40,6,'written',12);

/*Table structure for table `judgementskills` */

DROP TABLE IF EXISTS `judgementskills`;

CREATE TABLE `judgementskills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noofquestions` int(11) DEFAULT NULL,
  `percentagescore` int(11) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_judge` (`userid`),
  CONSTRAINT `fk_user_judge` FOREIGN KEY (`userid`) REFERENCES `userprofile` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `judgementskills` */

insert  into `judgementskills`(`id`,`noofquestions`,`percentagescore`,`score`,`status`,`userid`) values 
(1,9,67,6,'written',1),
(2,9,45,6,'written',2),
(3,9,67,6,'written',3),
(4,9,70,6,'written',4),
(5,9,12,6,'written',5),
(6,9,10,6,'written',6),
(7,9,15,6,'written',7),
(8,9,70,6,'written',8),
(9,9,40,6,'written',9),
(10,9,50,6,'written',10),
(11,9,70,6,'written',11),
(12,9,90,6,'written',12);

/*Table structure for table `knowledgeskills` */

DROP TABLE IF EXISTS `knowledgeskills`;

CREATE TABLE `knowledgeskills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noofquestions` int(11) DEFAULT NULL,
  `percentagescore` int(11) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_userid_kn` (`userid`),
  CONSTRAINT `fk_userid_kn` FOREIGN KEY (`userid`) REFERENCES `userprofile` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `knowledgeskills` */

insert  into `knowledgeskills`(`id`,`noofquestions`,`percentagescore`,`score`,`status`,`userid`) values 
(3,21,67,14,'written',1),
(4,21,70,17,'written',2),
(5,21,45,17,'written',3),
(6,21,66,17,'written',4),
(7,21,91,17,'written',5),
(8,21,22,17,'written',6),
(9,21,56,17,'written',7),
(10,21,70,17,'written',9),
(11,21,90,17,'written',10),
(12,21,30,17,'written',11),
(13,21,20,17,'written',12);

/*Table structure for table `leadershipskills` */

DROP TABLE IF EXISTS `leadershipskills`;

CREATE TABLE `leadershipskills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noofquestions` int(11) DEFAULT NULL,
  `percentagescore` int(11) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_lead` (`userid`),
  CONSTRAINT `fk_user_lead` FOREIGN KEY (`userid`) REFERENCES `userprofile` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `leadershipskills` */

insert  into `leadershipskills`(`id`,`noofquestions`,`percentagescore`,`score`,`status`,`userid`) values 
(2,3,67,2,'written',1),
(3,3,0,3,'written',2),
(4,3,44,3,'written',3),
(5,3,11,3,'written',4),
(6,3,67,3,'written',5),
(7,3,10,3,'written',6),
(8,3,5,3,'written',7),
(9,3,16,3,'written',8),
(10,3,90,3,'written',9),
(11,3,43,3,'written',10),
(12,3,55,3,'written',11),
(13,3,20,3,'written',12);

/*Table structure for table `problemsolvingskills` */

DROP TABLE IF EXISTS `problemsolvingskills`;

CREATE TABLE `problemsolvingskills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noofquestions` int(11) DEFAULT NULL,
  `percentagescore` int(11) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_prob` (`userid`),
  CONSTRAINT `fk_user_prob` FOREIGN KEY (`userid`) REFERENCES `userprofile` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `problemsolvingskills` */

insert  into `problemsolvingskills`(`id`,`noofquestions`,`percentagescore`,`score`,`status`,`userid`) values 
(2,3,67,2,'written',1),
(3,3,45,3,'written',2),
(4,4,50,3,'written',3),
(5,4,90,3,'written',4),
(6,4,90,3,'written',5),
(7,4,45,3,'written',6),
(8,4,58,3,'written',7),
(9,4,70,3,'written',8),
(10,4,80,3,'written',9),
(11,4,90,3,'written',10),
(12,4,30,3,'written',11),
(13,4,100,3,'written',12);

/*Table structure for table `professionalskills` */

DROP TABLE IF EXISTS `professionalskills`;

CREATE TABLE `professionalskills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noofquestions` int(11) DEFAULT NULL,
  `percentagescore` int(11) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_prof` (`userid`),
  CONSTRAINT `fk_user_prof` FOREIGN KEY (`userid`) REFERENCES `userprofile` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `professionalskills` */

insert  into `professionalskills`(`id`,`noofquestions`,`percentagescore`,`score`,`status`,`userid`) values 
(1,35,69,24,'written',1),
(2,35,90,33,'written',2),
(3,NULL,94,33,'written',3),
(4,NULL,5,33,'written',4),
(5,NULL,9,33,'written',5),
(6,NULL,15,33,'written',6),
(7,NULL,10,33,'written',7),
(8,NULL,22,33,'written',8),
(9,NULL,23,33,'written',9),
(10,NULL,50,33,'written',10),
(11,NULL,40,33,'written',11),
(12,NULL,30,33,'written',12);

/*Table structure for table `teamwork` */

DROP TABLE IF EXISTS `teamwork`;

CREATE TABLE `teamwork` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noofquestions` int(11) DEFAULT NULL,
  `percentagescore` int(11) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_userid_team` (`userid`),
  CONSTRAINT `fk_userid_team` FOREIGN KEY (`userid`) REFERENCES `userprofile` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `teamwork` */

insert  into `teamwork`(`id`,`noofquestions`,`percentagescore`,`score`,`status`,`userid`) values 
(1,1,100,1,'written',1),
(2,1,0,1,'written',2),
(3,1,50,1,'written',3),
(4,1,0,1,'written',4),
(5,1,100,1,'written',5),
(6,1,50,1,'written',6),
(7,1,0,1,'written',7),
(8,1,20,1,'written',8),
(9,1,20,1,'written',9),
(10,1,100,1,'written',10),
(11,1,40,1,'written',11),
(12,1,10,1,'written',12);

/*Table structure for table `technologicalskills` */

DROP TABLE IF EXISTS `technologicalskills`;

CREATE TABLE `technologicalskills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noofquestions` int(11) DEFAULT NULL,
  `percentagescore` int(11) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_userid_tech` (`userid`),
  CONSTRAINT `fk_userid_tech` FOREIGN KEY (`userid`) REFERENCES `userprofile` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `technologicalskills` */

insert  into `technologicalskills`(`id`,`noofquestions`,`percentagescore`,`score`,`status`,`userid`) values 
(1,32,69,22,'written',1),
(2,32,50,27,'written',2),
(3,NULL,84,27,'written',3),
(4,NULL,44,27,'written',4),
(5,NULL,49,27,'written',5),
(6,NULL,60,27,'written',6),
(7,NULL,50,27,'written',7),
(8,NULL,20,27,'written',8),
(9,NULL,40,27,'written',9),
(10,NULL,20,27,'written',10),
(11,NULL,15,27,'written',11),
(12,NULL,20,27,'written',12);

/*Table structure for table `userprofile` */

DROP TABLE IF EXISTS `userprofile`;

CREATE TABLE `userprofile` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `usertype` varchar(255) DEFAULT NULL,
  `yearsofexperience` varchar(255) DEFAULT NULL,
  `rolesandresponsibilities` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `userprofile` */

insert  into `userprofile`(`userid`,`username`,`dob`,`email`,`institution`,`name`,`password`,`phone`,`usertype`,`yearsofexperience`,`rolesandresponsibilities`) values 
(1,'obama','2018-06-04','conelobama@gmail.com','FUT MINNA','Conel Obama','obama','08069687951','Potential Recruit',NULL,NULL),
(2,'prince','2018-06-05','prince@yahoo.com','UJ','Prince Charles','prince','08052896551','Existing Cataloguer',NULL,NULL),
(3,'favour','2018-06-01','favour@yahoo.com','UNN','Favour Abigail','favour','08022338192','Existing Cataloguer',NULL,NULL),
(4,'Kabul','2018-06-11','Kabul@gmail.com','AFG','Kabul Karl','Kabul','08033847572','Potential Recruit',NULL,NULL),
(5,'Qandahar','2018-06-11','Qandahar@yahoo.com','AFG','Qandahar Haruna','Kabol','08044938712','Existing Cataloguer',NULL,NULL),
(6,'Herat','2018-06-11','Herat@yahoo.com','NLD','Herat Princess','Herat','08055218934','Existing Cataloguer',NULL,NULL),
(7,'Mohammed','2018-06-11','Mohammed@gmail.com','AFG','Mohammed Lawal','mohammed','07054322421','Potential Recruit',NULL,NULL),
(8,'Abubakar','2018-06-11','abubakar@yahoo.com','FUT MINNA','Abubakar Yahaya','abubakar','08060891234','Existing Cataloguer',NULL,NULL),
(9,'Trump','2018-06-11','trump@yahoo.com','NLD','Donald Trump','trump','09022182834','Existing Cataloguer',NULL,NULL),
(10,'Obama','2018-06-11','obama@gmail.com','AFG','Obama Hussein','obama','08077998321','Potential Recruit',NULL,NULL),
(11,'Sadiq','2018-06-11','sadiq@yahoo.com','UJ','Sadiq Habila','sadiq','09034557689','Existing Cataloguer',NULL,NULL),
(12,'Amina','2018-06-11','Amina@yahoo.com','NLD','Queen Amina','queen','09188394853','Existing Cataloguer',NULL,NULL),
(13,NULL,'1989-04-04','saleh@yahoo.com','DRX','Saleh Hassan','saleh','08044857980','Existing Cataloguer','2','DBA'),
(14,NULL,'1989-09-01','prince@yahoo.com','PLA','Annas Sunday','annas','08044857989','Potential Recruit','3','Admin');

/*Table structure for table `assessmentresult` */

DROP TABLE IF EXISTS `assessmentresult`;

/*!50001 DROP VIEW IF EXISTS `assessmentresult` */;
/*!50001 DROP TABLE IF EXISTS `assessmentresult` */;

/*!50001 CREATE TABLE  `assessmentresult`(
 `id` int(11) ,
 `username` varchar(255) ,
 `NAME` varchar(255) ,
 `usertype` varchar(255) ,
 `email` varchar(255) ,
 `institution` varchar(255) ,
 `phone` varchar(255) ,
 `cataloguingscore` int(11) ,
 `classificationscore` int(11) ,
 `consistencyscore` int(11) ,
 `indexingscore` int(11) ,
 `judgementscore` int(11) ,
 `knowledgeskillscore` int(11) ,
 `leadershipskills` int(11) ,
 `problemsolvingscore` int(11) ,
 `professionalscore` int(11) ,
 `teamworkscore` int(11) ,
 `technologicalskillscore` int(11) 
)*/;

/*Table structure for table `vwbehaviouralcategory` */

DROP TABLE IF EXISTS `vwbehaviouralcategory`;

/*!50001 DROP VIEW IF EXISTS `vwbehaviouralcategory` */;
/*!50001 DROP TABLE IF EXISTS `vwbehaviouralcategory` */;

/*!50001 CREATE TABLE  `vwbehaviouralcategory`(
 `id` int(11) ,
 `NAME` varchar(255) ,
 `institution` varchar(255) ,
 `usertype` varchar(255) ,
 `leadershipskillscore` int(11) ,
 `communicationskillscore` int(11) ,
 `teamworkscore` int(11) 
)*/;

/*Table structure for table `vwfunctionalcategory` */

DROP TABLE IF EXISTS `vwfunctionalcategory`;

/*!50001 DROP VIEW IF EXISTS `vwfunctionalcategory` */;
/*!50001 DROP TABLE IF EXISTS `vwfunctionalcategory` */;

/*!50001 CREATE TABLE  `vwfunctionalcategory`(
 `id` int(11) ,
 `NAME` varchar(255) ,
 `institution` varchar(255) ,
 `usertype` varchar(255) ,
 `problemsolvingskillscore` int(11) ,
 `consistencyskillscore` int(11) ,
 `judgementskillscore` int(11) 
)*/;

/*Table structure for table `vwknowledgecategory` */

DROP TABLE IF EXISTS `vwknowledgecategory`;

/*!50001 DROP VIEW IF EXISTS `vwknowledgecategory` */;
/*!50001 DROP TABLE IF EXISTS `vwknowledgecategory` */;

/*!50001 CREATE TABLE  `vwknowledgecategory`(
 `id` int(11) ,
 `NAME` varchar(255) ,
 `institution` varchar(255) ,
 `usertype` varchar(255) ,
 `knowledgeskillscore` int(11) ,
 `indexingskillscore` int(11) ,
 `classificationskillscore` int(11) ,
 `cataloguingskillscore` int(11) 
)*/;

/*Table structure for table `vwoveralltotal` */

DROP TABLE IF EXISTS `vwoveralltotal`;

/*!50001 DROP VIEW IF EXISTS `vwoveralltotal` */;
/*!50001 DROP TABLE IF EXISTS `vwoveralltotal` */;

/*!50001 CREATE TABLE  `vwoveralltotal`(
 `id` int(11) ,
 `name` varchar(255) ,
 `username` varchar(255) ,
 `institution` varchar(255) ,
 `usertype` varchar(255) ,
 `email` varchar(255) ,
 `phone` varchar(255) ,
 `behaviouralcategoryscore` decimal(19,4) ,
 `functionalcategoryscore` decimal(19,4) ,
 `knowledgecategoryscore` decimal(20,4) ,
 `professionalcategoryscore` int(11) ,
 `technologicalcategoryscore` int(11) 
)*/;

/*Table structure for table `vwprofessionalcategory` */

DROP TABLE IF EXISTS `vwprofessionalcategory`;

/*!50001 DROP VIEW IF EXISTS `vwprofessionalcategory` */;
/*!50001 DROP TABLE IF EXISTS `vwprofessionalcategory` */;

/*!50001 CREATE TABLE  `vwprofessionalcategory`(
 `id` int(11) ,
 `NAME` varchar(255) ,
 `institution` varchar(255) ,
 `usertype` varchar(255) ,
 `professionalskillscore` int(11) 
)*/;

/*Table structure for table `vwrecommendation` */

DROP TABLE IF EXISTS `vwrecommendation`;

/*!50001 DROP VIEW IF EXISTS `vwrecommendation` */;
/*!50001 DROP TABLE IF EXISTS `vwrecommendation` */;

/*!50001 CREATE TABLE  `vwrecommendation`(
 `id` int(11) ,
 `NAME` varchar(255) ,
 `username` varchar(255) ,
 `institution` varchar(255) ,
 `usertype` varchar(255) ,
 `email` varchar(255) ,
 `phone` varchar(255) ,
 `behaviouralcategoryscore` decimal(19,4) ,
 `functionalcategoryscore` decimal(19,4) ,
 `knowledgecategoryscore` decimal(20,4) ,
 `professionalcategoryscore` int(11) ,
 `technologicalcategoryscore` int(11) ,
 `behaviouralrecommendation` varchar(12) ,
 `functionalrecommendation` varchar(12) ,
 `knowledgerecommendation` varchar(12) ,
 `professionalrecommendation` varchar(12) ,
 `technologicalrecommendation` varchar(12) 
)*/;

/*Table structure for table `vwrecruitment` */

DROP TABLE IF EXISTS `vwrecruitment`;

/*!50001 DROP VIEW IF EXISTS `vwrecruitment` */;
/*!50001 DROP TABLE IF EXISTS `vwrecruitment` */;

/*!50001 CREATE TABLE  `vwrecruitment`(
 `id` int(11) ,
 `NAME` varchar(255) ,
 `email` varchar(255) ,
 `username` varchar(255) ,
 `institution` varchar(255) ,
 `phone` varchar(255) ,
 `usertype` varchar(255) ,
 `average` decimal(27,8) 
)*/;

/*Table structure for table `vwtechnologicalcategory` */

DROP TABLE IF EXISTS `vwtechnologicalcategory`;

/*!50001 DROP VIEW IF EXISTS `vwtechnologicalcategory` */;
/*!50001 DROP TABLE IF EXISTS `vwtechnologicalcategory` */;

/*!50001 CREATE TABLE  `vwtechnologicalcategory`(
 `id` int(11) ,
 `NAME` varchar(255) ,
 `institution` varchar(255) ,
 `usertype` varchar(255) ,
 `technologicalskillscore` int(11) 
)*/;

/*Table structure for table `vwtotalbehaviouralcategory` */

DROP TABLE IF EXISTS `vwtotalbehaviouralcategory`;

/*!50001 DROP VIEW IF EXISTS `vwtotalbehaviouralcategory` */;
/*!50001 DROP TABLE IF EXISTS `vwtotalbehaviouralcategory` */;

/*!50001 CREATE TABLE  `vwtotalbehaviouralcategory`(
 `id` int(11) ,
 `name` varchar(255) ,
 `phone` varchar(255) ,
 `email` varchar(255) ,
 `institution` varchar(255) ,
 `usertype` varchar(255) ,
 `totalscore` decimal(19,4) 
)*/;

/*Table structure for table `vwtotalfunctionalcategory` */

DROP TABLE IF EXISTS `vwtotalfunctionalcategory`;

/*!50001 DROP VIEW IF EXISTS `vwtotalfunctionalcategory` */;
/*!50001 DROP TABLE IF EXISTS `vwtotalfunctionalcategory` */;

/*!50001 CREATE TABLE  `vwtotalfunctionalcategory`(
 `id` int(11) ,
 `NAME` varchar(255) ,
 `institution` varchar(255) ,
 `usertype` varchar(255) ,
 `totalscore` decimal(19,4) 
)*/;

/*Table structure for table `vwtotalknowledgecategory` */

DROP TABLE IF EXISTS `vwtotalknowledgecategory`;

/*!50001 DROP VIEW IF EXISTS `vwtotalknowledgecategory` */;
/*!50001 DROP TABLE IF EXISTS `vwtotalknowledgecategory` */;

/*!50001 CREATE TABLE  `vwtotalknowledgecategory`(
 `id` int(11) ,
 `NAME` varchar(255) ,
 `phone` varchar(255) ,
 `email` varchar(255) ,
 `institution` varchar(255) ,
 `usertype` varchar(255) ,
 `totalscore` decimal(20,4) 
)*/;

/*Table structure for table `vwtotalprofessionalcategory` */

DROP TABLE IF EXISTS `vwtotalprofessionalcategory`;

/*!50001 DROP VIEW IF EXISTS `vwtotalprofessionalcategory` */;
/*!50001 DROP TABLE IF EXISTS `vwtotalprofessionalcategory` */;

/*!50001 CREATE TABLE  `vwtotalprofessionalcategory`(
 `id` int(11) ,
 `NAME` varchar(255) ,
 `institution` varchar(255) ,
 `usertype` varchar(255) ,
 `totalscore` int(11) 
)*/;

/*Table structure for table `vwtotaltechnologicalcategory` */

DROP TABLE IF EXISTS `vwtotaltechnologicalcategory`;

/*!50001 DROP VIEW IF EXISTS `vwtotaltechnologicalcategory` */;
/*!50001 DROP TABLE IF EXISTS `vwtotaltechnologicalcategory` */;

/*!50001 CREATE TABLE  `vwtotaltechnologicalcategory`(
 `id` int(11) ,
 `NAME` varchar(255) ,
 `institution` varchar(255) ,
 `usertype` varchar(255) ,
 `totalscore` int(11) 
)*/;

/*View structure for view assessmentresult */

/*!50001 DROP TABLE IF EXISTS `assessmentresult` */;
/*!50001 DROP VIEW IF EXISTS `assessmentresult` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `assessmentresult` AS (select `u`.`userid` AS `id`,`u`.`username` AS `username`,`u`.`name` AS `NAME`,`u`.`usertype` AS `usertype`,`u`.`email` AS `email`,`u`.`institution` AS `institution`,`u`.`phone` AS `phone`,`cat`.`percentagescore` AS `cataloguingscore`,`cla`.`percentagescore` AS `classificationscore`,`con`.`percentagescore` AS `consistencyscore`,`ind`.`percentagescore` AS `indexingscore`,`jud`.`percentagescore` AS `judgementscore`,`kno`.`percentagescore` AS `knowledgeskillscore`,`lead`.`percentagescore` AS `leadershipskills`,`prob`.`percentagescore` AS `problemsolvingscore`,`prof`.`percentagescore` AS `professionalscore`,`team`.`percentagescore` AS `teamworkscore`,`tech`.`percentagescore` AS `technologicalskillscore` from ((((((((((((`userprofile` `u` join `cataloguingskills` `cat` on((`cat`.`userid` = `cat`.`userid`))) join `classificationskills` `cla` on((`cla`.`userid` = `cat`.`userid`))) join `communicationskills` `com` on((`com`.`userid` = `cla`.`userid`))) join `consistencyandadaptabilityskills` `con` on((`con`.`userid` = `com`.`userid`))) join `indexingskills` `ind` on((`ind`.`userid` = `con`.`userid`))) join `judgementskills` `jud` on((`jud`.`userid` = `ind`.`userid`))) join `knowledgeskills` `kno` on((`kno`.`userid` = `jud`.`userid`))) join `leadershipskills` `lead` on((`lead`.`userid` = `kno`.`userid`))) join `problemsolvingskills` `prob` on((`prob`.`userid` = `lead`.`userid`))) join `professionalskills` `prof` on((`prof`.`userid` = `prob`.`userid`))) join `teamwork` `team` on((`team`.`userid` = `prof`.`userid`))) join `technologicalskills` `tech` on((`tech`.`userid` = `team`.`userid`))) group by `u`.`userid`) */;

/*View structure for view vwbehaviouralcategory */

/*!50001 DROP TABLE IF EXISTS `vwbehaviouralcategory` */;
/*!50001 DROP VIEW IF EXISTS `vwbehaviouralcategory` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwbehaviouralcategory` AS (select `u`.`userid` AS `id`,`u`.`name` AS `NAME`,`u`.`institution` AS `institution`,`u`.`usertype` AS `usertype`,`led`.`percentagescore` AS `leadershipskillscore`,`com`.`percentagescore` AS `communicationskillscore`,`team`.`percentagescore` AS `teamworkscore` from (((`userprofile` `u` join `leadershipskills` `led` on((`led`.`userid` = `u`.`userid`))) join `communicationskills` `com` on((`com`.`userid` = `led`.`userid`))) join `teamwork` `team` on((`team`.`userid` = `com`.`userid`))) group by `u`.`userid`) */;

/*View structure for view vwfunctionalcategory */

/*!50001 DROP TABLE IF EXISTS `vwfunctionalcategory` */;
/*!50001 DROP VIEW IF EXISTS `vwfunctionalcategory` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwfunctionalcategory` AS (select `u`.`userid` AS `id`,`u`.`name` AS `NAME`,`u`.`institution` AS `institution`,`u`.`usertype` AS `usertype`,`prob`.`percentagescore` AS `problemsolvingskillscore`,`con`.`percentagescore` AS `consistencyskillscore`,`jud`.`percentagescore` AS `judgementskillscore` from (((`userprofile` `u` join `problemsolvingskills` `prob` on((`prob`.`userid` = `u`.`userid`))) join `consistencyandadaptabilityskills` `con` on((`con`.`userid` = `prob`.`userid`))) join `judgementskills` `jud` on((`jud`.`userid` = `con`.`userid`))) group by `u`.`userid`) */;

/*View structure for view vwknowledgecategory */

/*!50001 DROP TABLE IF EXISTS `vwknowledgecategory` */;
/*!50001 DROP VIEW IF EXISTS `vwknowledgecategory` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwknowledgecategory` AS (select `u`.`userid` AS `id`,`u`.`name` AS `NAME`,`u`.`institution` AS `institution`,`u`.`usertype` AS `usertype`,`kno`.`percentagescore` AS `knowledgeskillscore`,`ind`.`percentagescore` AS `indexingskillscore`,`cla`.`percentagescore` AS `classificationskillscore`,`cat`.`percentagescore` AS `cataloguingskillscore` from ((((`userprofile` `u` join `knowledgeskills` `kno` on((`kno`.`userid` = `u`.`userid`))) join `indexingskills` `ind` on((`ind`.`userid` = `kno`.`userid`))) join `classificationskills` `cla` on((`cla`.`userid` = `ind`.`userid`))) join `cataloguingskills` `cat` on((`cat`.`userid` = `cla`.`userid`))) group by `u`.`userid`) */;

/*View structure for view vwoveralltotal */

/*!50001 DROP TABLE IF EXISTS `vwoveralltotal` */;
/*!50001 DROP VIEW IF EXISTS `vwoveralltotal` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwoveralltotal` AS (select `u`.`userid` AS `id`,`u`.`name` AS `name`,`u`.`username` AS `username`,`u`.`institution` AS `institution`,`u`.`usertype` AS `usertype`,`u`.`email` AS `email`,`u`.`phone` AS `phone`,`beh`.`totalscore` AS `behaviouralcategoryscore`,`fun`.`totalscore` AS `functionalcategoryscore`,`kno`.`totalscore` AS `knowledgecategoryscore`,`prof`.`totalscore` AS `professionalcategoryscore`,`tech`.`totalscore` AS `technologicalcategoryscore` from (((((`userprofile` `u` join `vwtotalbehaviouralcategory` `beh` on((`beh`.`id` = `u`.`userid`))) join `vwtotalfunctionalcategory` `fun` on((`fun`.`id` = `beh`.`id`))) join `vwtotalknowledgecategory` `kno` on((`kno`.`id` = `fun`.`id`))) join `vwtotalprofessionalcategory` `prof` on((`prof`.`id` = `kno`.`id`))) join `vwtotaltechnologicalcategory` `tech` on((`tech`.`id` = `prof`.`id`))) group by `u`.`userid`) */;

/*View structure for view vwprofessionalcategory */

/*!50001 DROP TABLE IF EXISTS `vwprofessionalcategory` */;
/*!50001 DROP VIEW IF EXISTS `vwprofessionalcategory` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwprofessionalcategory` AS (select `u`.`userid` AS `id`,`u`.`name` AS `NAME`,`u`.`institution` AS `institution`,`u`.`usertype` AS `usertype`,`prof`.`percentagescore` AS `professionalskillscore` from (`userprofile` `u` join `professionalskills` `prof` on((`prof`.`userid` = `u`.`userid`))) group by `u`.`userid`) */;

/*View structure for view vwrecommendation */

/*!50001 DROP TABLE IF EXISTS `vwrecommendation` */;
/*!50001 DROP VIEW IF EXISTS `vwrecommendation` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwrecommendation` AS (select `vwoveralltotal`.`id` AS `id`,`vwoveralltotal`.`name` AS `NAME`,`vwoveralltotal`.`username` AS `username`,`vwoveralltotal`.`institution` AS `institution`,`vwoveralltotal`.`usertype` AS `usertype`,`vwoveralltotal`.`email` AS `email`,`vwoveralltotal`.`phone` AS `phone`,`vwoveralltotal`.`behaviouralcategoryscore` AS `behaviouralcategoryscore`,`vwoveralltotal`.`functionalcategoryscore` AS `functionalcategoryscore`,`vwoveralltotal`.`knowledgecategoryscore` AS `knowledgecategoryscore`,`vwoveralltotal`.`professionalcategoryscore` AS `professionalcategoryscore`,`vwoveralltotal`.`technologicalcategoryscore` AS `technologicalcategoryscore`,if((`vwoveralltotal`.`behaviouralcategoryscore` > 70),'Redeployment',if((`vwoveralltotal`.`behaviouralcategoryscore` > 50),'Recruitment','Retraining')) AS `behaviouralrecommendation`,if((`vwoveralltotal`.`functionalcategoryscore` > 70),'Redeployment',if((`vwoveralltotal`.`functionalcategoryscore` > 50),'Recruitment','Retraining')) AS `functionalrecommendation`,if((`vwoveralltotal`.`knowledgecategoryscore` > 70),'Redeployment',if((`vwoveralltotal`.`knowledgecategoryscore` > 50),'Recruitment','Retraining')) AS `knowledgerecommendation`,if((`vwoveralltotal`.`professionalcategoryscore` > 70),'Redeployment',if((`vwoveralltotal`.`professionalcategoryscore` > 50),'Recruitment','Retraining')) AS `professionalrecommendation`,if((`vwoveralltotal`.`technologicalcategoryscore` > 70),'Redeployment',if((`vwoveralltotal`.`technologicalcategoryscore` > 50),'Recruitment','Retraining')) AS `technologicalrecommendation` from `vwoveralltotal`) */;

/*View structure for view vwrecruitment */

/*!50001 DROP TABLE IF EXISTS `vwrecruitment` */;
/*!50001 DROP VIEW IF EXISTS `vwrecruitment` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwrecruitment` AS (select `vwoveralltotal`.`id` AS `id`,`vwoveralltotal`.`name` AS `NAME`,`vwoveralltotal`.`email` AS `email`,`vwoveralltotal`.`username` AS `username`,`vwoveralltotal`.`institution` AS `institution`,`vwoveralltotal`.`phone` AS `phone`,`vwoveralltotal`.`usertype` AS `usertype`,(((((`vwoveralltotal`.`behaviouralcategoryscore` + `vwoveralltotal`.`functionalcategoryscore`) + `vwoveralltotal`.`knowledgecategoryscore`) + `vwoveralltotal`.`professionalcategoryscore`) + `vwoveralltotal`.`technologicalcategoryscore`) / 5) AS `average` from `vwoveralltotal`) */;

/*View structure for view vwtechnologicalcategory */

/*!50001 DROP TABLE IF EXISTS `vwtechnologicalcategory` */;
/*!50001 DROP VIEW IF EXISTS `vwtechnologicalcategory` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwtechnologicalcategory` AS (select `u`.`userid` AS `id`,`u`.`name` AS `NAME`,`u`.`institution` AS `institution`,`u`.`usertype` AS `usertype`,`tech`.`percentagescore` AS `technologicalskillscore` from (`userprofile` `u` join `technologicalskills` `tech` on((`tech`.`userid` = `u`.`userid`))) group by `u`.`userid`) */;

/*View structure for view vwtotalbehaviouralcategory */

/*!50001 DROP TABLE IF EXISTS `vwtotalbehaviouralcategory` */;
/*!50001 DROP VIEW IF EXISTS `vwtotalbehaviouralcategory` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwtotalbehaviouralcategory` AS (select `u`.`userid` AS `id`,`u`.`name` AS `name`,`u`.`phone` AS `phone`,`u`.`email` AS `email`,`u`.`institution` AS `institution`,`u`.`usertype` AS `usertype`,((((`led`.`percentagescore` + `com`.`percentagescore`) + `team`.`percentagescore`) / 300) * 100) AS `totalscore` from (((`userprofile` `u` join `leadershipskills` `led` on((`led`.`userid` = `u`.`userid`))) join `communicationskills` `com` on((`com`.`userid` = `led`.`userid`))) join `teamwork` `team` on((`team`.`userid` = `com`.`userid`))) group by `u`.`userid`) */;

/*View structure for view vwtotalfunctionalcategory */

/*!50001 DROP TABLE IF EXISTS `vwtotalfunctionalcategory` */;
/*!50001 DROP VIEW IF EXISTS `vwtotalfunctionalcategory` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwtotalfunctionalcategory` AS (select `u`.`userid` AS `id`,`u`.`name` AS `NAME`,`u`.`institution` AS `institution`,`u`.`usertype` AS `usertype`,((((`prob`.`percentagescore` + `con`.`percentagescore`) + `jud`.`percentagescore`) / 300) * 100) AS `totalscore` from (((`userprofile` `u` join `problemsolvingskills` `prob` on((`prob`.`userid` = `u`.`userid`))) join `consistencyandadaptabilityskills` `con` on((`con`.`userid` = `prob`.`userid`))) join `judgementskills` `jud` on((`jud`.`userid` = `con`.`userid`))) group by `u`.`userid`) */;

/*View structure for view vwtotalknowledgecategory */

/*!50001 DROP TABLE IF EXISTS `vwtotalknowledgecategory` */;
/*!50001 DROP VIEW IF EXISTS `vwtotalknowledgecategory` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwtotalknowledgecategory` AS (select `u`.`userid` AS `id`,`u`.`name` AS `NAME`,`u`.`phone` AS `phone`,`u`.`email` AS `email`,`u`.`institution` AS `institution`,`u`.`usertype` AS `usertype`,(((((`kno`.`percentagescore` + `ind`.`percentagescore`) + `cla`.`percentagescore`) + `cat`.`percentagescore`) / 400) * 100) AS `totalscore` from ((((`userprofile` `u` join `knowledgeskills` `kno` on((`kno`.`userid` = `u`.`userid`))) join `indexingskills` `ind` on((`ind`.`userid` = `kno`.`userid`))) join `classificationskills` `cla` on((`cla`.`userid` = `ind`.`userid`))) join `cataloguingskills` `cat` on((`cat`.`userid` = `cla`.`userid`))) group by `u`.`userid`) */;

/*View structure for view vwtotalprofessionalcategory */

/*!50001 DROP TABLE IF EXISTS `vwtotalprofessionalcategory` */;
/*!50001 DROP VIEW IF EXISTS `vwtotalprofessionalcategory` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwtotalprofessionalcategory` AS (select `u`.`userid` AS `id`,`u`.`name` AS `NAME`,`u`.`institution` AS `institution`,`u`.`usertype` AS `usertype`,`prof`.`percentagescore` AS `totalscore` from (`userprofile` `u` join `professionalskills` `prof` on((`prof`.`userid` = `u`.`userid`))) group by `u`.`userid`) */;

/*View structure for view vwtotaltechnologicalcategory */

/*!50001 DROP TABLE IF EXISTS `vwtotaltechnologicalcategory` */;
/*!50001 DROP VIEW IF EXISTS `vwtotaltechnologicalcategory` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwtotaltechnologicalcategory` AS (select `u`.`userid` AS `id`,`u`.`name` AS `NAME`,`u`.`institution` AS `institution`,`u`.`usertype` AS `usertype`,`tech`.`percentagescore` AS `totalscore` from (`userprofile` `u` join `technologicalskills` `tech` on((`tech`.`userid` = `u`.`userid`))) group by `u`.`userid`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
