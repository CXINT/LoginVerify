/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50540
Source Host           : 127.0.0.1:3306
Source Database       : demo

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2017-10-10 15:21:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog_admin
-- ----------------------------
DROP TABLE IF EXISTS `blog_admin`;
CREATE TABLE `blog_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '用户名',
  `email` varchar(100) NOT NULL,
  `pass` varchar(255) NOT NULL COMMENT 'password_hash加密',
  `userpic` varchar(255) NOT NULL COMMENT '用户头像',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1启用 2禁用',
  `reg_time` int(10) unsigned NOT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_admin
-- ----------------------------
INSERT INTO `blog_admin` VALUES ('1', 'CXINT', '2411233465@qq.com', 'e10adc3949ba59abbe56e057f20f883e', './uploads/admin.jpg', '1', '2130706433');

-- ----------------------------
-- Table structure for blog_admin_info
-- ----------------------------
DROP TABLE IF EXISTS `blog_admin_info`;
CREATE TABLE `blog_admin_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `ipaddr` int(10) unsigned NOT NULL COMMENT '用户登陆IP',
  `logintime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '用户登陆时间',
  `pass_wrong_time_status` tinyint(10) unsigned NOT NULL COMMENT '0 正确 2错误',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_admin_info
-- ----------------------------
INSERT INTO `blog_admin_info` VALUES ('1', '1', '2130706433', '2017-10-10 15:16:10', '2');
INSERT INTO `blog_admin_info` VALUES ('2', '1', '2130706433', '2017-10-10 15:16:23', '2');
INSERT INTO `blog_admin_info` VALUES ('3', '1', '2130706433', '2017-10-10 15:16:31', '2');
INSERT INTO `blog_admin_info` VALUES ('4', '1', '2130706433', '2017-10-10 15:17:47', '2');
