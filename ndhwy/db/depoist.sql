/*
Navicat MySQL Data Transfer

Source Server         : secretbase
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : ndh

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-05-13 21:07:44
*/

SET FOREIGN_KEY_CHECKS=0;

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
