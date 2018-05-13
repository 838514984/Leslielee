/*
Navicat MySQL Data Transfer

Source Server         : secretbase
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : ndh

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-05-13 21:07:37
*/

SET FOREIGN_KEY_CHECKS=0;

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
