/*
Navicat MySQL Data Transfer

Source Server         : secretbase
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : ndh

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-05-13 21:08:06
*/

SET FOREIGN_KEY_CHECKS=0;

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
