/*
SQLyog Trial v10.2 
MySQL - 5.5.23 : Database - znblog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`znblog` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `znblog`;

/*Table structure for table `t_blog` */

DROP TABLE IF EXISTS `t_blog`;

CREATE TABLE `t_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `summary` varchar(400) DEFAULT NULL,
  `releaseDate` datetime DEFAULT NULL,
  `clickHit` int(11) DEFAULT NULL,
  `replyHit` int(11) DEFAULT NULL,
  `content` text,
  `typeId` int(11) DEFAULT NULL,
  `keyWord` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `typeId` (`typeId`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

/*Data for the table `t_blog` */

insert  into `t_blog`(`id`,`title`,`summary`,`releaseDate`,`clickHit`,`replyHit`,`content`,`typeId`,`keyWord`) values (77,'测试测试测试测试','测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试','2016-06-02 17:40:49',8,0,'<p>测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试</p><p style=\"text-align:center\"><img src=\"http://localhost:8080/Blog/static/userImages/20160602/1464861840397063590.jpg\" title=\"1464861840397063590.jpg\" alt=\"u=1700340952,1856309358&amp;fm=21&amp;gp=0.jpg\"/></p><p>测试测试测试测试测试测试<br/></p>',13,NULL),(78,'ces','','2016-06-03 16:12:12',2,0,'<p><img alt=\"47F58PICCRb_1024.jpg\" src=\"http://localhost:8080/Blog/static/userImages/20160603/1464941493969076501.jpg\" title=\"1464941493969076501.jpg\"/></p>',13,NULL);

/*Table structure for table `t_blogger` */

DROP TABLE IF EXISTS `t_blogger`;

CREATE TABLE `t_blogger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `profile` text,
  `nickName` varchar(50) DEFAULT NULL,
  `sign` varchar(100) DEFAULT NULL,
  `imageName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_blogger` */

insert  into `t_blogger`(`id`,`userName`,`password`,`profile`,`nickName`,`sign`,`imageName`) values (1,'znxsx','70f57208b804bd90d51fdac84afe6472','<p>&nbsp; &nbsp; <span style=\"font-size: 18px;\"><strong>博主简介</strong></span></p><p>&nbsp;&nbsp;&nbsp;&nbsp;姓名：熊诗锌<br/></p><p>&nbsp;&nbsp;&nbsp;&nbsp;英文名：agog<br/></p><p>&nbsp;&nbsp;&nbsp;&nbsp;性别：男<br/></p><p>&nbsp; &nbsp; 年龄：21<br/></p><p>&nbsp; &nbsp; QQ：22400561<br/></p><p>&nbsp; &nbsp; 邮箱：22400561@qq.com<br/></p><p>&nbsp;&nbsp;&nbsp;&nbsp;GitHub：<a textvalue=\"https://github.com/znxsx\" target=\"_self\" href=\"https://github.com/znxsx\">https://github.com/znxsx</a> </p><p><br/></p><p>&nbsp; <span style=\"font-size: 18px;\"><strong><br/></strong></span></p><p><span style=\"font-size: 18px;\"><strong><br/></strong></span></p><p><br/></p><p><br/></p>','agog','青春一去不复返，事业一纵永无成','20160603014603.jpg');

/*Table structure for table `t_blogtype` */

DROP TABLE IF EXISTS `t_blogtype`;

CREATE TABLE `t_blogtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(30) DEFAULT NULL,
  `orderNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `t_blogtype` */

insert  into `t_blogtype`(`id`,`typeName`,`orderNo`) values (13,'杂文',1),(14,'java基础',2);

/*Table structure for table `t_comment` */

DROP TABLE IF EXISTS `t_comment`;

CREATE TABLE `t_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userIp` varchar(50) DEFAULT NULL,
  `blogId` int(11) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `commentDate` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=338 DEFAULT CHARSET=utf8;

/*Data for the table `t_comment` */

/*Table structure for table `t_link` */

DROP TABLE IF EXISTS `t_link`;

CREATE TABLE `t_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linkName` varchar(100) DEFAULT NULL,
  `linkUrl` varchar(200) DEFAULT NULL,
  `orderNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `t_link` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
