/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmlq9t2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmlq9t2` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmlq9t2`;

/*Table structure for table `baoxiaoshenqing` */

DROP TABLE IF EXISTS `baoxiaoshenqing`;

CREATE TABLE `baoxiaoshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  `baoxiaoneirong` longtext COMMENT '报销内容',
  `baoxiaojine` int(11) DEFAULT NULL COMMENT '报销金额',
  `fapiaoxiangqing` varchar(200) DEFAULT NULL COMMENT '发票详情',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616068153537 DEFAULT CHARSET=utf8 COMMENT='报销申请';

/*Data for the table `baoxiaoshenqing` */

insert  into `baoxiaoshenqing`(`id`,`addtime`,`xingming`,`bumen`,`zhiwei`,`riqi`,`baoxiaoneirong`,`baoxiaojine`,`fapiaoxiangqing`,`sfsh`,`shhf`,`userid`) values (41,'2021-03-18 19:39:27','姓名1','部门1','职位1','2021-03-18 19:39:27','报销内容1',1,'http://localhost:8080/ssmlq9t2/upload/baoxiaoshenqing_fapiaoxiangqing1.jpg','是','',1),(42,'2021-03-18 19:39:27','姓名2','部门2','职位2','2021-03-18 19:39:27','报销内容2',2,'http://localhost:8080/ssmlq9t2/upload/baoxiaoshenqing_fapiaoxiangqing2.jpg','是','',2),(43,'2021-03-18 19:39:27','姓名3','部门3','职位3','2021-03-18 19:39:27','报销内容3',3,'http://localhost:8080/ssmlq9t2/upload/baoxiaoshenqing_fapiaoxiangqing3.jpg','是','',3),(44,'2021-03-18 19:39:27','姓名4','部门4','职位4','2021-03-18 19:39:27','报销内容4',4,'http://localhost:8080/ssmlq9t2/upload/baoxiaoshenqing_fapiaoxiangqing4.jpg','是','',4),(45,'2021-03-18 19:39:27','姓名5','部门5','职位5','2021-03-18 19:39:27','报销内容5',5,'http://localhost:8080/ssmlq9t2/upload/baoxiaoshenqing_fapiaoxiangqing5.jpg','是','',5),(46,'2021-03-18 19:39:27','姓名6','部门6','职位6','2021-03-18 19:39:27','报销内容6',6,'http://localhost:8080/ssmlq9t2/upload/baoxiaoshenqing_fapiaoxiangqing6.jpg','是','',6),(1616067798712,'2021-03-18 19:43:18','111','部门名2','职位名2','2021-03-18 19:42:54','<p>可以插入图片</p>',111,'http://localhost:8080/ssmlq9t2/upload/1616067790729.jpg','否','可编辑内容',1616067706228),(1616068153536,'2021-03-18 19:49:12','李四','部门名2','职位名1','2021-03-18 19:49:01','<p>可编辑内容和插入图片</p>',123,'http://localhost:8080/ssmlq9t2/upload/1616068149296.jpg','是','可编辑内容',1616068073117);

/*Table structure for table `bumenxinxi` */

DROP TABLE IF EXISTS `bumenxinxi`;

CREATE TABLE `bumenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumenming` varchar(200) DEFAULT NULL COMMENT '部门名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616068210561 DEFAULT CHARSET=utf8 COMMENT='部门信息';

/*Data for the table `bumenxinxi` */

insert  into `bumenxinxi`(`id`,`addtime`,`bumenming`) values (51,'2021-03-18 19:39:27','部门名1'),(52,'2021-03-18 19:39:27','部门名2'),(53,'2021-03-18 19:39:27','部门名3'),(54,'2021-03-18 19:39:27','部门名4'),(55,'2021-03-18 19:39:27','部门名5'),(56,'2021-03-18 19:39:27','部门名6'),(1616067855133,'2021-03-18 19:44:14','技术部'),(1616068210560,'2021-03-18 19:50:10','技术部');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmlq9t2/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmlq9t2/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmlq9t2/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `gongzuojindu` */

DROP TABLE IF EXISTS `gongzuojindu`;

CREATE TABLE `gongzuojindu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `gongzuo` varchar(200) DEFAULT NULL COMMENT '工作',
  `qishishijian` datetime DEFAULT NULL COMMENT '起始时间',
  `jieshushijian` datetime DEFAULT NULL COMMENT '结束时间',
  `dangqianjindu` varchar(200) DEFAULT NULL COMMENT '当前进度',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='工作进度';

/*Data for the table `gongzuojindu` */

insert  into `gongzuojindu`(`id`,`addtime`,`bumen`,`zhiwei`,`gongzuo`,`qishishijian`,`jieshushijian`,`dangqianjindu`) values (71,'2021-03-18 19:39:27','部门1','职位1','工作1','2021-03-18 19:39:27','2021-03-18 19:39:27','40%'),(72,'2021-03-18 19:39:27','部门2','职位2','工作2','2021-03-18 19:39:27','2021-03-18 19:39:27','0%'),(73,'2021-03-18 19:39:27','部门3','职位3','工作3','2021-03-18 19:39:27','2021-03-18 19:39:27','0%'),(74,'2021-03-18 19:39:27','部门4','职位4','工作4','2021-03-18 19:39:27','2021-03-18 19:39:27','0%'),(75,'2021-03-18 19:39:27','部门5','职位5','工作5','2021-03-18 19:39:27','2021-03-18 19:39:27','0%'),(76,'2021-03-18 19:39:27','部门6','职位6','工作6','2021-03-18 19:39:27','2021-03-18 19:39:27','0%');

/*Table structure for table `linshiyuangong` */

DROP TABLE IF EXISTS `linshiyuangong`;

CREATE TABLE `linshiyuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `dangqianzhuangtai` varchar(200) DEFAULT NULL COMMENT '当前状态',
  `bumenmingcheng` varchar(200) DEFAULT NULL COMMENT '部门名称',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616068008010 DEFAULT CHARSET=utf8 COMMENT='临时员工';

/*Data for the table `linshiyuangong` */

insert  into `linshiyuangong`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`dangqianzhuangtai`,`bumenmingcheng`,`zhiwei`,`xingbie`,`nianling`,`youxiang`,`shouji`,`tupian`) values (11,'2021-03-18 19:39:27','临时员工1','123456','姓名1','临时员工','部门名称1','职位1','男',1,'773890001@qq.com','13823888881','http://localhost:8080/ssmlq9t2/upload/linshiyuangong_tupian1.jpg'),(12,'2021-03-18 19:39:27','临时员工2','123456','姓名2','临时员工','部门名称2','职位2','男',2,'773890002@qq.com','13823888882','http://localhost:8080/ssmlq9t2/upload/linshiyuangong_tupian2.jpg'),(13,'2021-03-18 19:39:27','临时员工3','123456','姓名3','临时员工','部门名称3','职位3','男',3,'773890003@qq.com','13823888883','http://localhost:8080/ssmlq9t2/upload/linshiyuangong_tupian3.jpg'),(14,'2021-03-18 19:39:27','临时员工4','123456','姓名4','临时员工','部门名称4','职位4','男',4,'773890004@qq.com','13823888884','http://localhost:8080/ssmlq9t2/upload/linshiyuangong_tupian4.jpg'),(15,'2021-03-18 19:39:27','临时员工5','123456','姓名5','临时员工','部门名称5','职位5','男',5,'773890005@qq.com','13823888885','http://localhost:8080/ssmlq9t2/upload/linshiyuangong_tupian5.jpg'),(16,'2021-03-18 19:39:27','临时员工6','123456','姓名6','临时员工','部门名称6','职位6','男',6,'773890006@qq.com','13823888886','http://localhost:8080/ssmlq9t2/upload/linshiyuangong_tupian6.jpg'),(1616067658403,'2021-03-18 19:40:58','11','11','11','临时员工','部门名1','职位名1','女',11,'1@qq.com','12345678901','http://localhost:8080/ssmlq9t2/upload/1616067688878.jpg'),(1616068008009,'2021-03-18 19:46:48','1','1','张三','临时员工','部门名1','职位名1','女',22,'1@qq.com','12345678901','http://localhost:8080/ssmlq9t2/upload/1616068052633.jpg');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616067907094 DEFAULT CHARSET=utf8 COMMENT='通知栏';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-03-18 19:39:27','标题1','简介1','http://localhost:8080/ssmlq9t2/upload/news_picture1.jpg','内容1'),(102,'2021-03-18 19:39:27','标题2','简介2','http://localhost:8080/ssmlq9t2/upload/news_picture2.jpg','内容2'),(103,'2021-03-18 19:39:27','标题3','简介3','http://localhost:8080/ssmlq9t2/upload/news_picture3.jpg','内容3'),(104,'2021-03-18 19:39:27','标题4','简介4','http://localhost:8080/ssmlq9t2/upload/news_picture4.jpg','内容4'),(105,'2021-03-18 19:39:27','标题5','简介5','http://localhost:8080/ssmlq9t2/upload/news_picture5.jpg','内容5'),(106,'2021-03-18 19:39:27','标题6','简介6','http://localhost:8080/ssmlq9t2/upload/news_picture6.jpg','内容6'),(1616067907093,'2021-03-18 19:45:06','艾尔','简介','http://localhost:8080/ssmlq9t2/upload/1616067897325.jpg','<p><img src=\"http://localhost:8080/ssmlq9t2/upload/1616067904963.jpg\"></p>');

/*Table structure for table `shujuku` */

DROP TABLE IF EXISTS `shujuku`;

CREATE TABLE `shujuku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biao` varchar(200) DEFAULT NULL COMMENT '表',
  `quanxian` varchar(200) DEFAULT NULL COMMENT '权限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='数据库';

/*Data for the table `shujuku` */

insert  into `shujuku`(`id`,`addtime`,`biao`,`quanxian`) values (91,'2021-03-18 19:39:27','表1','授权'),(92,'2021-03-18 19:39:27','表2','授权'),(93,'2021-03-18 19:39:27','表3','授权'),(94,'2021-03-18 19:39:27','表4','授权'),(95,'2021-03-18 19:39:27','表5','授权'),(96,'2021-03-18 19:39:27','表6','授权');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,21,'正式员工1','zhengshiyuangong','正式员工','9szlloyavms5vvnxebvco1m0auelnk4i','2021-03-18 19:40:35','2021-03-18 20:40:36'),(2,1616067658403,'11','linshiyuangong','临时员工','1cpoq8mlgt2k4s18dpubyz5lois9m037','2021-03-18 19:41:05','2021-03-18 20:41:05'),(3,1616067706228,'111','zhengshiyuangong','正式员工','7l8wcfn9q8tqkne32gxzq829ps9hqh7o','2021-03-18 19:41:51','2021-03-18 20:41:51'),(4,1,'abo','users','管理员','3f53gn9ozimx0piwh88ae7r82469ze01','2021-03-18 19:43:31','2021-03-18 20:49:28'),(5,1616067923928,'1111','zongguanliyuan','总管理员','nq2xh9hmezp2y7w3pyciy5q2gn4ub3al','2021-03-18 19:45:29','2021-03-18 20:45:29'),(6,1616068008009,'1','linshiyuangong','临时员工','p13rcfamj7ddjjni13m0jk72p7fcp7wn','2021-03-18 19:46:53','2021-03-18 20:52:06'),(7,1616068073117,'11','zhengshiyuangong','正式员工','foqlrtm3x105tds72b5sngcnrsnmunnh','2021-03-18 19:47:58','2021-03-18 20:50:56'),(8,1616068286805,'11111','zongguanliyuan','总管理员','2m0oixf2qjm839g0z6x3pkjouagn9eam','2021-03-18 19:51:32','2021-03-18 20:51:32');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-18 19:39:27');

/*Table structure for table `zhengshiyuangong` */

DROP TABLE IF EXISTS `zhengshiyuangong`;

CREATE TABLE `zhengshiyuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `dangqianzhuangtai` varchar(200) DEFAULT NULL COMMENT '当前状态',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616068073118 DEFAULT CHARSET=utf8 COMMENT='正式员工';

/*Data for the table `zhengshiyuangong` */

insert  into `zhengshiyuangong`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`dangqianzhuangtai`,`bumen`,`zhiwei`,`xingbie`,`nianling`,`youxiang`,`shouji`,`tupian`) values (21,'2021-03-18 19:39:27','正式员工1','123456','姓名1','临时员工','部门1','职位1','男',1,'773890001@qq.com','13823888881','http://localhost:8080/ssmlq9t2/upload/zhengshiyuangong_tupian1.jpg'),(22,'2021-03-18 19:39:27','正式员工2','123456','姓名2','临时员工','部门2','职位2','男',2,'773890002@qq.com','13823888882','http://localhost:8080/ssmlq9t2/upload/zhengshiyuangong_tupian2.jpg'),(23,'2021-03-18 19:39:27','正式员工3','123456','姓名3','临时员工','部门3','职位3','男',3,'773890003@qq.com','13823888883','http://localhost:8080/ssmlq9t2/upload/zhengshiyuangong_tupian3.jpg'),(24,'2021-03-18 19:39:27','正式员工4','123456','姓名4','临时员工','部门4','职位4','男',4,'773890004@qq.com','13823888884','http://localhost:8080/ssmlq9t2/upload/zhengshiyuangong_tupian4.jpg'),(25,'2021-03-18 19:39:27','正式员工5','123456','姓名5','临时员工','部门5','职位5','男',5,'773890005@qq.com','13823888885','http://localhost:8080/ssmlq9t2/upload/zhengshiyuangong_tupian5.jpg'),(26,'2021-03-18 19:39:27','正式员工6','123456','姓名6','临时员工','部门6','职位6','男',6,'773890006@qq.com','13823888886','http://localhost:8080/ssmlq9t2/upload/zhengshiyuangong_tupian6.jpg'),(1616067706228,'2021-03-18 19:41:46','111','111','111','正式员工','部门名2','职位名2','男',12,'2@qq.com','12345678902','http://localhost:8080/ssmlq9t2/upload/1616067746342.jpg'),(1616068073117,'2021-03-18 19:47:53','11','11','李四','正式员工','部门名2','职位名1','女',24,'2@qq.com','12345678909','http://localhost:8080/ssmlq9t2/upload/1616068102741.jpg');

/*Table structure for table `zhiweidiaodushenqing` */

DROP TABLE IF EXISTS `zhiweidiaodushenqing`;

CREATE TABLE `zhiweidiaodushenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `zhiweidiaodu` varchar(200) DEFAULT NULL COMMENT '职位调度',
  `xinbumen` varchar(200) DEFAULT NULL COMMENT '新部门',
  `xinzhiwei` varchar(200) DEFAULT NULL COMMENT '新职位',
  `shenqingyuanyin` longtext COMMENT '申请原因',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616068134687 DEFAULT CHARSET=utf8 COMMENT='职位调度申请';

/*Data for the table `zhiweidiaodushenqing` */

insert  into `zhiweidiaodushenqing`(`id`,`addtime`,`gonghao`,`xingming`,`shouji`,`bumen`,`zhiwei`,`zhiweidiaodu`,`xinbumen`,`xinzhiwei`,`shenqingyuanyin`,`sfsh`,`shhf`,`userid`) values (31,'2021-03-18 19:39:27','工号1','姓名1','手机1','部门1','职位1','升职','新部门1','新职位1','申请原因1','是','',1),(32,'2021-03-18 19:39:27','工号2','姓名2','手机2','部门2','职位2','升职','新部门2','新职位2','申请原因2','是','',2),(33,'2021-03-18 19:39:27','工号3','姓名3','手机3','部门3','职位3','升职','新部门3','新职位3','申请原因3','是','',3),(34,'2021-03-18 19:39:27','工号4','姓名4','手机4','部门4','职位4','升职','新部门4','新职位4','申请原因4','是','',4),(35,'2021-03-18 19:39:27','工号5','姓名5','手机5','部门5','职位5','升职','新部门5','新职位5','申请原因5','是','',5),(36,'2021-03-18 19:39:27','工号6','姓名6','手机6','部门6','职位6','升职','新部门6','新职位6','申请原因6','是','',6),(1616067766079,'2021-03-18 19:42:45','111','111','12345678902','部门名2','职位名2','升职','部门名2','职位名3','<p>11</p>','是','',1616067706228),(1616068134686,'2021-03-18 19:48:54','11','李四','12345678909','部门名2','职位名1','升职','部门名2','职位名3','<p>可编辑内容和插入图片</p>','是','',1616068073117);

/*Table structure for table `zhiweixinxi` */

DROP TABLE IF EXISTS `zhiweixinxi`;

CREATE TABLE `zhiweixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiweiming` varchar(200) DEFAULT NULL COMMENT '职位名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616068224748 DEFAULT CHARSET=utf8 COMMENT='职位信息';

/*Data for the table `zhiweixinxi` */

insert  into `zhiweixinxi`(`id`,`addtime`,`zhiweiming`) values (61,'2021-03-18 19:39:27','职位名1'),(62,'2021-03-18 19:39:27','职位名2'),(63,'2021-03-18 19:39:27','职位名3'),(64,'2021-03-18 19:39:27','职位名4'),(65,'2021-03-18 19:39:27','职位名5'),(66,'2021-03-18 19:39:27','职位名6'),(1616067869501,'2021-03-18 19:44:29','经理'),(1616068224747,'2021-03-18 19:50:24','人力经理');

/*Table structure for table `zongguanliyuan` */

DROP TABLE IF EXISTS `zongguanliyuan`;

CREATE TABLE `zongguanliyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616068286806 DEFAULT CHARSET=utf8 COMMENT='总管理员';

/*Data for the table `zongguanliyuan` */

insert  into `zongguanliyuan`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`bumen`,`zhiwei`,`xingbie`,`nianling`,`shouji`,`youxiang`,`tupian`) values (81,'2021-03-18 19:39:27','总管理员1','123456','姓名1','部门1','职位1','男',1,'13823888881','773890001@qq.com','http://localhost:8080/ssmlq9t2/upload/zongguanliyuan_tupian1.jpg'),(82,'2021-03-18 19:39:27','总管理员2','123456','姓名2','部门2','职位2','男',2,'13823888882','773890002@qq.com','http://localhost:8080/ssmlq9t2/upload/zongguanliyuan_tupian2.jpg'),(83,'2021-03-18 19:39:27','总管理员3','123456','姓名3','部门3','职位3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/ssmlq9t2/upload/zongguanliyuan_tupian3.jpg'),(84,'2021-03-18 19:39:27','总管理员4','123456','姓名4','部门4','职位4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/ssmlq9t2/upload/zongguanliyuan_tupian4.jpg'),(85,'2021-03-18 19:39:27','总管理员5','123456','姓名5','部门5','职位5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/ssmlq9t2/upload/zongguanliyuan_tupian5.jpg'),(86,'2021-03-18 19:39:27','总管理员6','123456','姓名6','部门6','职位6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/ssmlq9t2/upload/zongguanliyuan_tupian6.jpg'),(1616067923928,'2021-03-18 19:45:23','1111','1111','1111',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1616068286805,'2021-03-18 19:51:26','11111','1111','丽丽',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
