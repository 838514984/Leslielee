/*
Navicat MySQL Data Transfer

Source Server         : test_admin
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : ndh

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-05-17 18:18:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT '',
  `content` varchar(10000) DEFAULT '',
  `img_group` varchar(250) DEFAULT '',
  `pre_article` varchar(250) DEFAULT '',
  `next_article` varchar(250) DEFAULT '',
  `url` varchar(250) DEFAULT '',
  `type` int(11) DEFAULT '0',
  `cover` varchar(250) DEFAULT '',
  `level` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('4', '这是一条清新唯美数据哦', '这是一条测试的数据测试的数据', '1', 'http://www.baidu.com', 'http://www.baidu.com', '#', '1', '1.jpg', '0');
INSERT INTO `article` VALUES ('5', '这是一条清新唯美的数据', '这是一条清新唯美的数据', '1', '', '', '#', '1', '2.jpg', '0');
INSERT INTO `article` VALUES ('6', '这是一条清新唯美数据哦', '这是一条测试的数据测试的数据', '1', 'http://www.baidu.com', 'http://www.baidu.com', '#', '1', '3.jpg', '0');
INSERT INTO `article` VALUES ('7', '这是一条清新唯美数据哦', '这是一条测试的数据测试的数据', '1', 'http://www.baidu.com', 'http://www.baidu.com', '#', '1', '4.jpg', '0');
INSERT INTO `article` VALUES ('8', '这是一条清新唯美数据哦', '这是一条测试的数据测试的数据', '1', 'http://www.baidu.com', 'http://www.baidu.com', '#', '1', '5.jpg', '0');
INSERT INTO `article` VALUES ('9', '这是一条清新唯美数据哦', '这是一条测试的数据测试的数据', '1', 'http://www.baidu.com', 'http://www.baidu.com', '#', '1', '9.jpg', '0');
INSERT INTO `article` VALUES ('10', '这是一条推荐清新唯美数据哦', '这是一条测试的数据测试的数据', '1', 'http://www.baidu.com', 'http://www.baidu.com', '#', '1', '10.jpg', '5');
INSERT INTO `article` VALUES ('11', '这是一条美女模特', '这是一条测试的数据测试的数据', '1', 'http://www.baidu.com', 'http://www.baidu.com', '#', '2', '1.jpg', '0');
INSERT INTO `article` VALUES ('12', '这是一条美女模特', '这是一条测试的数据测试的数据', '1', 'http://www.baidu.com', 'http://www.baidu.com', '#', '2', '2.jpg', '0');
INSERT INTO `article` VALUES ('13', '这是一条美女模特', '这是一条测试的数据测试的数据', '1', 'http://www.baidu.com', 'http://www.baidu.com', '#', '2', '3.jpg', '0');
INSERT INTO `article` VALUES ('14', '这是一条美女模特', '这是一条测试的数据测试的数据', '1', 'http://www.baidu.com', 'http://www.baidu.com', '#', '2', '4.jpg', '0');
INSERT INTO `article` VALUES ('15', '这是一条美女模特', '这是一条测试的数据测试的数据', '1', 'http://www.baidu.com', 'http://www.baidu.com', '#', '2', '5.jpg', '0');
INSERT INTO `article` VALUES ('16', '这是一条美女模特', '这是一条测试的数据测试的数据', '1', 'http://www.baidu.com', 'http://www.baidu.com', '#', '2', '6.jpg', '0');
INSERT INTO `article` VALUES ('17', '这是一条美女模特', '这是一条测试的数据测试的数据', '1', 'http://www.baidu.com', 'http://www.baidu.com', '#', '2', '7.jpg', '0');
INSERT INTO `article` VALUES ('18', '这是一条美女模特', '这是一条测试的数据测试的数据', '1', 'http://www.baidu.com', 'http://www.baidu.com', '#', '2', '8.jpg', '0');
INSERT INTO `article` VALUES ('19', '这是一条推荐美女模特数据哦', '这是一条测试的数据测试的数据', '1', 'http://www.baidu.com', 'http://www.baidu.com', '#', '2', '10.jpg', '5');
INSERT INTO `article` VALUES ('20', '女神', '这是一条测试的数据测试的数据', '1', 'http://www.baidu.com', 'http://www.baidu.com', '#', '3', '9.jpg', '0');
INSERT INTO `article` VALUES ('21', '女神', '这是一条测试的数据测试的数据', '1', 'http://www.baidu.com', 'http://www.baidu.com', '#', '3', '8.jpg', '0');
INSERT INTO `article` VALUES ('22', '女神', '这是一条测试的数据测试的数据', '1', 'http://www.baidu.com', 'http://www.baidu.com', '#', '3', '7.jpg', '0');
INSERT INTO `article` VALUES ('23', '女神', '这是一条测试的数据测试的数据', '1', 'http://www.baidu.com', 'http://www.baidu.com', '#', '3', '6.jpg', '0');
INSERT INTO `article` VALUES ('24', '女神', '这是一条测试的数据测试的数据', '1', 'http://www.baidu.com', 'http://www.baidu.com', '#', '3', '5.jpg', '0');
INSERT INTO `article` VALUES ('25', '女神', '这是一条测试的数据测试的数据', '1', 'http://www.baidu.com', 'http://www.baidu.com', '#', '3', '4.jpg', '0');
INSERT INTO `article` VALUES ('26', '女神', '这是一条测试的数据测试的数据', '1', 'http://www.baidu.com', 'http://www.baidu.com', '#', '3', '3.jpg', '0');
INSERT INTO `article` VALUES ('27', '女神', '这是一条测试的数据测试的数据', '1', 'http://www.baidu.com', 'http://www.baidu.com', '#', '3', '2.jpg', '0');
INSERT INTO `article` VALUES ('28', '女神推荐！', '这是一条测试的数据测试的数据', '1', 'http://www.baidu.com', 'http://www.baidu.com', '#', '3', '1.jpg', '5');

-- ----------------------------
-- Table structure for `buy_record`
-- ----------------------------
DROP TABLE IF EXISTS `buy_record`;
CREATE TABLE `buy_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of buy_record
-- ----------------------------

-- ----------------------------
-- Table structure for `depoist`
-- ----------------------------
DROP TABLE IF EXISTS `depoist`;
CREATE TABLE `depoist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `sum` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of depoist
-- ----------------------------

-- ----------------------------
-- Table structure for `image`
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(250) DEFAULT '',
  `type` int(11) DEFAULT '0',
  `level` int(11) DEFAULT '0',
  `group` varchar(250) DEFAULT '',
  `alt` varchar(250) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of image
-- ----------------------------

-- ----------------------------
-- Table structure for `recommed_record`
-- ----------------------------
DROP TABLE IF EXISTS `recommed_record`;
CREATE TABLE `recommed_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `target_user_phone` varchar(200) NOT NULL,
  `from_user_phone` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of recommed_record
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(200) CHARACTER SET utf8 NOT NULL,
  `riches` int(11) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `registtime` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `logintime` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'leslie', '123465', '15706805374', '25', '0', '2018-05-14 12:08:31', '2018-05-14 12:08:31');
INSERT INTO `user` VALUES ('3', '132456564564561', 'Apple2332', '11321465132', '10', '0', '2018-05-14 15:32:41', '2018-05-14 15:32:41');
INSERT INTO `user` VALUES ('4', '13245', 'Apple2332', '11321465133', '15', '0', '2018-05-14 15:48:15', '2018-05-14 15:48:15');
INSERT INTO `user` VALUES ('5', '132456', 'Apple2332', '11321465134', '0', '0', '2018-05-14 15:48:37', '2018-05-14 15:48:37');
INSERT INTO `user` VALUES ('6', '132459', 'Apple2332', '11321465999', '0', '0', '2018-05-14 15:50:30', '2018-05-14 15:50:30');
INSERT INTO `user` VALUES ('7', '1324', 'Apple2332', '11321464654', '0', '0', '2018-05-14 15:50:46', '2018-05-14 15:50:46');
INSERT INTO `user` VALUES ('8', '13246', 'Apple2332', '11321464659', '0', '0', '2018-05-14 15:52:18', '2018-05-14 15:52:18');
INSERT INTO `user` VALUES ('9', '13249', 'Apple2332', '11321464650', '0', '0', '2018-05-14 15:53:01', '2018-05-14 15:53:01');
INSERT INTO `user` VALUES ('10', '666666666', '333333333', '13246789465', '5', '0', '2018-05-14 16:20:28', '2018-05-14 16:20:28');
INSERT INTO `user` VALUES ('11', '6666666667', '333333333', '13246789469', '0', '0', '2018-05-14 16:21:36', '2018-05-14 16:21:36');
INSERT INTO `user` VALUES ('12', '1321564', 'Apple2332', '45666666666', '0', '0', '2018-05-14 16:25:52', '2018-05-14 16:25:52');
INSERT INTO `user` VALUES ('13', '132159', 'Apple2332', '45666666554', '0', '0', '2018-05-14 16:27:11', '2018-05-14 16:27:11');
INSERT INTO `user` VALUES ('14', '45646523123', 'Apple2332', '99999999999', '0', '0', '2018-05-14 16:27:44', '2018-05-14 16:27:44');

-- ----------------------------
-- Table structure for `video`
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `length` varchar(200) DEFAULT NULL,
  `pre_url` varchar(2000) DEFAULT NULL,
  `total_url` varchar(2000) DEFAULT NULL,
  `buy_count` int(11) DEFAULT '0',
  `detail` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of video
-- ----------------------------
