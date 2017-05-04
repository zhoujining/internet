/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50051
Source Host           : 127.0.0.1:3306
Source Database       : 66internet

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2017-05-03 20:18:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for test2
-- ----------------------------
DROP TABLE IF EXISTS `test2`;
CREATE TABLE `test2` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test2
-- ----------------------------
INSERT INTO `test2` VALUES ('1', null);

-- ----------------------------
-- Table structure for t_attachment
-- ----------------------------
DROP TABLE IF EXISTS `t_attachment`;
CREATE TABLE `t_attachment` (
  `id` int(11) NOT NULL auto_increment,
  `is_attach` int(11) default NULL,
  `is_img` int(11) default NULL,
  `is_index_pic` int(11) default NULL,
  `new_name` varchar(255) collate utf8_bin default NULL,
  `old_name` varchar(255) collate utf8_bin default NULL,
  `size` bigint(20) NOT NULL,
  `suffix` varchar(255) collate utf8_bin default NULL,
  `type` varchar(255) collate utf8_bin default NULL,
  `tid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK48549DCEEA120E7A` (`tid`),
  CONSTRAINT `FK48549DCEEA120E7A` FOREIGN KEY (`tid`) REFERENCES `t_topic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_attachment
-- ----------------------------
INSERT INTO `t_attachment` VALUES ('77', '0', '1', '0', '1427906496647.png', 'QQ截图20150330203752', '1270', 'png', 'application/octet-stream', null);
INSERT INTO `t_attachment` VALUES ('78', '0', '1', '0', '1427906589464.png', 'QQ截图20150330203752', '1270', 'png', 'application/octet-stream', null);
INSERT INTO `t_attachment` VALUES ('79', '0', '1', '0', '1427907138610.png', 'QQ截图20150330203752', '1270', 'png', 'application/octet-stream', null);
INSERT INTO `t_attachment` VALUES ('80', '0', '1', '0', '1428343099834.jpg', '爱壁纸HD-10043894', '266448', 'jpg', 'application/octet-stream', null);
INSERT INTO `t_attachment` VALUES ('81', '0', '1', '0', '1428343141948.jpg', '爱壁纸HD-10043894', '266448', 'jpg', 'application/octet-stream', '112');
INSERT INTO `t_attachment` VALUES ('82', '0', '1', '0', '1428343142362.jpg', '爱壁纸HD-10051704', '318623', 'jpg', 'application/octet-stream', '112');
INSERT INTO `t_attachment` VALUES ('83', '0', '1', '0', '1428343142591.jpg', '爱壁纸HD-10700937', '186540', 'jpg', 'application/octet-stream', '112');
INSERT INTO `t_attachment` VALUES ('84', '0', '1', '0', '1428343142980.jpg', '爱壁纸HD-10782897', '213114', 'jpg', 'application/octet-stream', '112');

-- ----------------------------
-- Table structure for t_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `t_bookmark`;
CREATE TABLE `t_bookmark` (
  `id` varchar(50) collate utf8_bin NOT NULL default '',
  `name` varchar(50) collate utf8_bin NOT NULL,
  `url` varchar(50) collate utf8_bin NOT NULL,
  `createDate` datetime NOT NULL,
  `lastmodifyDate` datetime NOT NULL,
  `userId` varchar(50) collate utf8_bin NOT NULL,
  `orderId` int(50) NOT NULL,
  `typeId` varchar(50) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_bookmark
-- ----------------------------
INSERT INTO `t_bookmark` VALUES ('02406b2e-7fd4-4c43-a40b-9d7ff1f8341a', 'abcddddd', 'http://w3.internet.comxxxxx', '2015-04-04 03:14:40', '2015-04-04 03:14:40', '6', '2', '388b633d-d19b-4a6f-960d-190b171d33fc');
INSERT INTO `t_bookmark` VALUES ('1a68e12f-e7c9-4cc9-bf14-d574fbac6ea6', 'abcdddeedd', 'http:/dd/w3.internet.comxxxxx', '2015-04-04 03:14:47', '2015-04-04 03:14:47', '6', '4', '388b633d-d19b-4a6f-960d-190b171d33fc');
INSERT INTO `t_bookmark` VALUES ('4ca59cd3-9a76-4169-bc25-7c1598f316dc', 'abcddddddeedde', 'http:/edd/w3.internet.comxxxxx', '2015-04-04 03:15:51', '2015-04-04 03:15:51', '6', '6', '388b633d-d19b-4a6f-960d-190b171d33fc');
INSERT INTO `t_bookmark` VALUES ('4f6cf17a-6282-4986-bf6c-3d8a5293a4c1', 'abcddddd', 'http:/dd/w3.internet.comxxxxx', '2015-04-04 03:14:44', '2015-04-04 03:14:44', '6', '3', '388b633d-d19b-4a6f-960d-190b171d33fc');
INSERT INTO `t_bookmark` VALUES ('62bfd7c4-9569-43e6-b266-f99e915d9a45', 'abcdddeedde', 'http:/edd/w3.internet.comxxxxx', '2015-04-04 03:14:52', '2015-04-04 03:14:52', '6', '5', '388b633d-d19b-4a6f-960d-190b171d33fc');
INSERT INTO `t_bookmark` VALUES ('94a3769e-1474-49f0-ad7a-6b3a269db419', 'abcd', 'http://w3.internet.comxxxxx', '2015-04-04 03:14:29', '2015-04-04 03:14:29', '6', '1', '388b633d-d19b-4a6f-960d-190b171d33fc');

-- ----------------------------
-- Table structure for t_bookmark_type
-- ----------------------------
DROP TABLE IF EXISTS `t_bookmark_type`;
CREATE TABLE `t_bookmark_type` (
  `id` varchar(50) collate utf8_bin NOT NULL default '',
  `name` varchar(50) collate utf8_bin NOT NULL,
  `userId` varchar(50) collate utf8_bin NOT NULL,
  `createDate` varchar(50) collate utf8_bin NOT NULL,
  `lastmodifyDate` varchar(50) collate utf8_bin NOT NULL,
  `orderId` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_bookmark_type
-- ----------------------------
INSERT INTO `t_bookmark_type` VALUES ('388b633d-d19b-4a6f-960d-190b171d33fc', 'a', '6', '2015-04-04 03:06:57', '2015-04-04 03:06:57', '3');
INSERT INTO `t_bookmark_type` VALUES ('aec9e3b0-bf74-4928-81d8-6a194b0b8172', 'b', '6', '2015-04-04 03:06:59', '2015-04-04 03:06:59', '4');
INSERT INTO `t_bookmark_type` VALUES ('e4be37e1-688b-42cc-9641-2a38524ae41c', 'abcd', '6', '2015-04-04 03:06:48', '2015-04-04 03:06:48', '1');
INSERT INTO `t_bookmark_type` VALUES ('e7600222-4f4d-4c3d-94f2-c479165714c8', 'abceeed', '6', '2015-04-04 03:06:54', '2015-04-04 03:06:54', '2');
INSERT INTO `t_bookmark_type` VALUES ('faa17893-fd11-4159-b5ce-beed4d60cd23', 'c', '6', '2015-04-04 03:07:02', '2015-04-04 03:07:02', '5');

-- ----------------------------
-- Table structure for t_channel
-- ----------------------------
DROP TABLE IF EXISTS `t_channel`;
CREATE TABLE `t_channel` (
  `id` int(11) NOT NULL auto_increment,
  `custom_link` int(11) default NULL,
  `custom_link_url` varchar(255) collate utf8_bin default NULL,
  `is_index` int(11) default NULL,
  `is_top_nav` int(11) default NULL,
  `name` varchar(255) collate utf8_bin NOT NULL,
  `nav_order` int(11) default NULL,
  `orders` int(11) NOT NULL,
  `recommend` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `type` int(11) default NULL,
  `pid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKE79D70381729704A` (`pid`),
  CONSTRAINT `FKE79D70381729704A` FOREIGN KEY (`pid`) REFERENCES `t_channel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_channel
-- ----------------------------
INSERT INTO `t_channel` VALUES ('36', '1', 'http://www.internet.com', '1', '1', '首页', '0', '1', '1', '0', '0', null);
INSERT INTO `t_channel` VALUES ('37', '0', '', '1', '1', '咨询', '0', '2', '1', '0', '1', null);
INSERT INTO `t_channel` VALUES ('38', '0', '', '1', '1', '下载', '0', '3', '1', '0', '1', null);
INSERT INTO `t_channel` VALUES ('39', '0', '', '1', '1', '首页-1', '0', '1', '1', '0', '1', '36');
INSERT INTO `t_channel` VALUES ('40', '0', '', '1', '0', '咨询-1', '0', '1', '1', '0', '1', '37');
INSERT INTO `t_channel` VALUES ('68', '0', '', '0', '0', 'xxxxxxxxx', '0', '1', '0', '0', '0', '39');
INSERT INTO `t_channel` VALUES ('71', '0', '额额而', '0', '0', '呃呃呃呃呃呃呃呃呃', '0', '2', '0', '0', '0', '39');
INSERT INTO `t_channel` VALUES ('72', '0', '', '0', '0', 'wwwwwwwwwwwww', '0', '1', '0', '0', '0', '68');
INSERT INTO `t_channel` VALUES ('73', '0', '', '1', '1', 'catalog1', '0', '4', '1', '0', '0', null);
INSERT INTO `t_channel` VALUES ('74', '0', '', '0', '0', 'catalog2', '0', '5', '0', '0', '0', null);
INSERT INTO `t_channel` VALUES ('75', '0', '', '0', '0', 'catalog3', '0', '6', '0', '0', '0', null);
INSERT INTO `t_channel` VALUES ('76', '0', '', '0', '0', 'catalog4', '0', '7', '0', '0', '0', null);
INSERT INTO `t_channel` VALUES ('77', '0', '', '0', '0', 'catalog5', '0', '8', '0', '0', '0', null);
INSERT INTO `t_channel` VALUES ('78', '0', '', '0', '0', 'catalog6', '0', '9', '0', '0', '0', null);
INSERT INTO `t_channel` VALUES ('79', '0', '', '0', '0', 'catalog7', '0', '10', '0', '0', '0', null);
INSERT INTO `t_channel` VALUES ('80', '0', '', '0', '0', 'catalog8', '0', '11', '0', '0', '0', null);
INSERT INTO `t_channel` VALUES ('81', '0', '', '0', '0', 'catalog9', '0', '12', '0', '0', '0', null);
INSERT INTO `t_channel` VALUES ('82', '0', '', '0', '0', 'catalog10', '0', '13', '0', '0', '0', null);
INSERT INTO `t_channel` VALUES ('83', '0', '', '0', '0', 'catalogaaaaa', '0', '14', '0', '0', '0', null);
INSERT INTO `t_channel` VALUES ('84', '0', '', '0', '0', 'catalogbbbbb', '0', '15', '0', '0', '0', null);
INSERT INTO `t_channel` VALUES ('85', '0', '', '0', '0', 'catalogccccccc', '0', '16', '0', '0', '0', null);
INSERT INTO `t_channel` VALUES ('86', '0', '', '0', '0', 'dddddddddddd', '0', '1', '0', '0', '0', '73');
INSERT INTO `t_channel` VALUES ('87', '0', '', '0', '0', 'bbbbbbbbbbbbb', '0', '1', '0', '0', '0', '75');
INSERT INTO `t_channel` VALUES ('88', '0', '', '0', '0', 'eeeeeeeeeeeeeeeeee', '0', '17', '0', '0', '0', null);
INSERT INTO `t_channel` VALUES ('89', '0', '', '0', '0', 'aa', '0', '18', '0', '0', '0', null);
INSERT INTO `t_channel` VALUES ('90', '0', '', '0', '0', 'bb', '0', '19', '0', '0', '0', null);
INSERT INTO `t_channel` VALUES ('91', '0', '', '0', '0', 'cc', '0', '20', '0', '0', '0', null);
INSERT INTO `t_channel` VALUES ('92', '0', '', '0', '0', 'dd', '0', '21', '0', '0', '0', null);
INSERT INTO `t_channel` VALUES ('93', '0', '', '0', '0', 'ee', '0', '22', '0', '0', '0', null);
INSERT INTO `t_channel` VALUES ('94', '0', '', '0', '0', 'aaaaaaaaaaaaa', '0', '1', '0', '0', '0', '83');
INSERT INTO `t_channel` VALUES ('95', '0', '', '0', '0', 'bbbbbbbbbbb', '0', '1', '0', '0', '0', '85');

-- ----------------------------
-- Table structure for t_cms_link
-- ----------------------------
DROP TABLE IF EXISTS `t_cms_link`;
CREATE TABLE `t_cms_link` (
  `id` int(11) NOT NULL auto_increment,
  `new_win` int(11) default NULL,
  `pos` int(11) NOT NULL,
  `title` varchar(255) collate utf8_bin NOT NULL,
  `type` varchar(255) collate utf8_bin default NULL,
  `url` varchar(255) collate utf8_bin default NULL,
  `url_class` varchar(255) collate utf8_bin default NULL,
  `url_id` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_cms_link
-- ----------------------------
INSERT INTO `t_cms_link` VALUES ('10', '1', '0', '军事', '新闻', 'http://', '新闻', '1');
INSERT INTO `t_cms_link` VALUES ('11', '1', '0', '评论', '新闻', 'http://', '2', '');
INSERT INTO `t_cms_link` VALUES ('12', '1', '0', '图片', '新闻', 'http://', '图片', '');
INSERT INTO `t_cms_link` VALUES ('13', '1', '0', 'NBA', '体育', 'http://', '体育', '');
INSERT INTO `t_cms_link` VALUES ('14', '1', '0', '中超', '体育', 'http://', '中超', '');
INSERT INTO `t_cms_link` VALUES ('15', '1', '0', '英超', '体育', 'http://', '体育', '');
INSERT INTO `t_cms_link` VALUES ('16', '1', '0', '电影', '娱乐', 'http://', '娱乐', '');
INSERT INTO `t_cms_link` VALUES ('17', '1', '0', '股票', '财经', 'http://', '财经', '');
INSERT INTO `t_cms_link` VALUES ('18', '1', '0', '咨询', '视频', 'http://', '视频', '');
INSERT INTO `t_cms_link` VALUES ('19', '1', '0', '时尚', '女人', 'http://', '女人', '');
INSERT INTO `t_cms_link` VALUES ('20', '0', '0', '概念股', '科技', 'http://', '科技', '');
INSERT INTO `t_cms_link` VALUES ('21', '0', '0', '移动', '手机', 'http://', '手机', '');
INSERT INTO `t_cms_link` VALUES ('22', '1', '0', '笔记本', '数码', '', '数码', '');
INSERT INTO `t_cms_link` VALUES ('23', '1', '1', '3333333333333', '333333333333', 'http://', '', '');

-- ----------------------------
-- Table structure for t_commonlink
-- ----------------------------
DROP TABLE IF EXISTS `t_commonlink`;
CREATE TABLE `t_commonlink` (
  `id` varchar(50) collate utf8_bin NOT NULL default '',
  `name` varchar(50) collate utf8_bin NOT NULL,
  `url` varchar(500) collate utf8_bin NOT NULL,
  `typeId` varchar(50) collate utf8_bin default NULL,
  `userId` varchar(10) collate utf8_bin NOT NULL,
  `createDate` datetime NOT NULL,
  `lastmodifyDate` datetime NOT NULL,
  `newWin` int(2) NOT NULL default '0',
  `orderId` int(4) NOT NULL default '0',
  `position` int(4) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_commonlink
-- ----------------------------
INSERT INTO `t_commonlink` VALUES ('2e2d5418-1da5-4762-8dc6-e402c5dc78a5', 'w312eeee', 'http://w3.internet.com', '1667671f-c761-4703-81fb-0a9c941352fe', '6', '2015-04-03 00:00:00', '2015-04-03 00:00:00', '1', '4', '1');
INSERT INTO `t_commonlink` VALUES ('634d80d5-56d8-42a5-8047-e1a6a2ac2e56', 'asa', 'http://w3.internet.com', '1667671f-c761-4703-81fb-0a9c941352fe', '6', '2015-04-03 00:00:00', '2015-04-03 00:00:00', '1', '6', '1');
INSERT INTO `t_commonlink` VALUES ('7125e1a5-bfc5-478b-b41e-8ea841e66cc9', '33333', 'http://w3.internet.com', '6be9bc67-a1ce-496a-98a2-731a27dc01fc', '6', '2015-04-03 00:00:00', '2015-04-03 00:00:00', '1', '9', '1');
INSERT INTO `t_commonlink` VALUES ('7ac1c425-bfba-4ad7-9ad2-e86b9abdcd42', '666', 'http://w3.internet.com', '6be9bc67-a1ce-496a-98a2-731a27dc01fc', '6', '2015-04-03 00:00:00', '2015-04-03 00:00:00', '1', '13', '1');
INSERT INTO `t_commonlink` VALUES ('7f01948a-b3c5-4e2b-8d50-b60ac25c5171', 'w3', 'http://w3.internet.com', '1667671f-c761-4703-81fb-0a9c941352fe', '6', '2015-04-03 00:00:00', '2015-04-03 00:00:00', '1', '1', '1');
INSERT INTO `t_commonlink` VALUES ('8aede251-af50-4d43-b509-5858a1982674', '555', 'http://w3.internet.com', '6be9bc67-a1ce-496a-98a2-731a27dc01fc', '6', '2015-04-03 00:00:00', '2015-04-03 00:00:00', '1', '12', '1');
INSERT INTO `t_commonlink` VALUES ('98cf0628-40b5-4bb9-a188-8da5211bbcba', 'abcde', 'http://w3.internet.com', '1667671f-c761-4703-81fb-0a9c941352fe', '6', '2015-04-03 00:00:00', '2015-04-03 00:00:00', '1', '7', '1');
INSERT INTO `t_commonlink` VALUES ('a4ae36c9-f90c-492e-9e6a-d9656bcd31a9', 'abcdeeee', 'http://w3.internet.com', '1667671f-c761-4703-81fb-0a9c941352fe', '6', '2015-04-03 00:00:00', '2015-04-03 00:00:00', '1', '8', '1');
INSERT INTO `t_commonlink` VALUES ('af6a6c84-7163-4c52-b511-42babac9a6d5', 'w312ee', 'http://w3.internet.com', '1667671f-c761-4703-81fb-0a9c941352fe', '6', '2015-04-03 00:00:00', '2015-04-03 00:00:00', '1', '3', '1');
INSERT INTO `t_commonlink` VALUES ('b413b79b-6199-4c63-ae72-b9d84db406d7', '3333wwww3', 'http://iteye.com', '6be9bc67-a1ce-496a-98a2-731a27dc01fc', '6', '2015-04-03 00:00:00', '2015-04-03 00:00:00', '1', '10', '1');
INSERT INTO `t_commonlink` VALUES ('c4828a1d-a8a7-4be4-904f-7a58203ca8a7', 'w312eeeeww', 'http://w3.internet.com', '1667671f-c761-4703-81fb-0a9c941352fe', '6', '2015-04-03 00:00:00', '2015-04-03 00:00:00', '1', '5', '1');
INSERT INTO `t_commonlink` VALUES ('f03bec78-508b-4ed3-b412-16ab58cec97a', 'shaozhenliumin', 'http://w3eeeeeee.internet.com', '6be9bc67-a1ce-496a-98a2-731a27dc01fc', '6', '2015-04-03 00:00:00', '2015-04-03 00:00:00', '2', '11', '2');

-- ----------------------------
-- Table structure for t_commonlink_type
-- ----------------------------
DROP TABLE IF EXISTS `t_commonlink_type`;
CREATE TABLE `t_commonlink_type` (
  `id` varchar(100) collate utf8_bin NOT NULL,
  `name` varchar(100) collate utf8_bin NOT NULL,
  `userId` varchar(500) collate utf8_bin NOT NULL,
  `createDate` datetime NOT NULL,
  `lastmodifyDate` datetime NOT NULL,
  `orderId` int(4) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_commonlink_type
-- ----------------------------
INSERT INTO `t_commonlink_type` VALUES ('1667671f-c761-4703-81fb-0a9c941352fe', 'xxxxxxxxxxxxxxxxx', '6', '2015-04-03 00:04:39', '2015-04-03 00:04:39', '8');
INSERT INTO `t_commonlink_type` VALUES ('62b684db-fc91-4982-9195-d1cbbcc0961a', 'aeeeeeeee', '6', '2015-04-02 23:14:07', '2015-04-02 23:26:30', '1');
INSERT INTO `t_commonlink_type` VALUES ('6be9bc67-a1ce-496a-98a2-731a27dc01fc', 'd', '6', '2015-04-02 23:15:07', '2015-04-02 23:15:07', '4');
INSERT INTO `t_commonlink_type` VALUES ('6de8101f-0bcb-4bd8-b4f9-9a4464063efa', 'c', '6', '2015-04-02 23:15:02', '2015-04-02 23:15:02', '3');
INSERT INTO `t_commonlink_type` VALUES ('9c3eabfc-3915-4e35-b50f-4a3b8a84c12b', 'g', '6', '2015-04-02 23:15:24', '2015-04-02 23:15:24', '7');
INSERT INTO `t_commonlink_type` VALUES ('d76491b0-7896-474f-bdf0-e93826480544', 'xxxxx', '6', '2015-04-07 02:36:07', '2015-04-07 02:36:07', '9');
INSERT INTO `t_commonlink_type` VALUES ('e0b8df66-833d-4ce9-84ca-5b8638aeab5f', 'b', '6', '2015-04-02 23:14:31', '2015-04-02 23:14:31', '2');
INSERT INTO `t_commonlink_type` VALUES ('e7d812f5-b872-4f3b-8c88-82056ad487da', 'f', '6', '2015-04-02 23:15:18', '2015-04-02 23:15:18', '6');

-- ----------------------------
-- Table structure for t_dept
-- ----------------------------
DROP TABLE IF EXISTS `t_dept`;
CREATE TABLE `t_dept` (
  `id` int(100) NOT NULL auto_increment,
  `name_en` varchar(100) NOT NULL,
  `name_cn` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `orders` int(11) NOT NULL,
  `pid` int(100) default NULL,
  `createtime` datetime NOT NULL,
  `lastupdatetime` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `INDEX_PID` USING BTREE (`pid`),
  KEY `INDEX_ORDERID` (`orders`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dept
-- ----------------------------
INSERT INTO `t_dept` VALUES ('7', '3', '3', '0', '7', null, '2015-04-04 20:35:33', '2015-04-04 20:35:34');
INSERT INTO `t_dept` VALUES ('17', '333', '333', '0', '1', '13', '2015-04-06 16:34:23', '2015-04-06 16:34:23');
INSERT INTO `t_dept` VALUES ('13', 'tty', 'yyy', '0', '10', null, '2015-04-04 21:12:16', '2015-04-04 21:12:16');
INSERT INTO `t_dept` VALUES ('14', '555', '666', '0', '11', null, '2015-04-04 21:12:30', '2015-04-04 21:12:30');
INSERT INTO `t_dept` VALUES ('15', 'RRR', 'RRR', '0', '12', null, '2015-04-04 21:28:04', '2015-04-04 21:28:04');

-- ----------------------------
-- Table structure for t_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `t_dictionary`;
CREATE TABLE `t_dictionary` (
  `id` int(100) NOT NULL auto_increment,
  `name_en` varchar(100) NOT NULL,
  `name_cn` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `orders` int(11) NOT NULL,
  `pid` int(100) default NULL,
  `createtime` datetime NOT NULL,
  `lastupdatetime` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `INDEX_PID` USING BTREE (`pid`),
  KEY `INDEX_ORDERID` (`orders`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dictionary
-- ----------------------------
INSERT INTO `t_dictionary` VALUES ('1', 'gggggggggg', 'ggggggggggggg', '0', '1', null, '2015-04-04 19:32:57', '2015-04-04 19:32:57');
INSERT INTO `t_dictionary` VALUES ('2', 'eeeedd', 'eeeeeddd', '0', '2', null, '2015-04-04 19:53:05', '2015-04-04 19:53:05');
INSERT INTO `t_dictionary` VALUES ('3', '2222222222222', '222222222222222', '1', '3', null, '2015-04-04 19:53:17', '2015-04-04 19:53:17');
INSERT INTO `t_dictionary` VALUES ('4', '22222222', '2222222222', '0', '4', null, '2015-04-04 19:53:33', '2015-04-04 19:53:33');
INSERT INTO `t_dictionary` VALUES ('5', 'wwwwwwwwwwww', 'wwww', '0', '5', null, '2015-04-04 20:07:18', '2015-04-04 20:07:19');
INSERT INTO `t_dictionary` VALUES ('6', 'qqqqqqqqqqq', '0000000000000', '0', '6', null, '2015-04-04 20:07:28', '2015-04-04 20:07:28');
INSERT INTO `t_dictionary` VALUES ('7', '3', '3', '0', '7', null, '2015-04-04 20:35:33', '2015-04-04 20:35:34');
INSERT INTO `t_dictionary` VALUES ('11', 'ttt', 'ttt', '0', '8', null, '2015-04-04 21:06:15', '2015-04-04 21:06:15');
INSERT INTO `t_dictionary` VALUES ('12', 'wwwwww', 'ww334', '0', '9', null, '2015-04-04 21:06:30', '2015-04-04 21:06:30');
INSERT INTO `t_dictionary` VALUES ('13', 'tty', 'yyy', '0', '10', null, '2015-04-04 21:12:16', '2015-04-04 21:12:16');
INSERT INTO `t_dictionary` VALUES ('14', '555', '666', '0', '11', null, '2015-04-04 21:12:30', '2015-04-04 21:12:30');
INSERT INTO `t_dictionary` VALUES ('15', 'RRR', 'RRR', '0', '12', null, '2015-04-04 21:28:04', '2015-04-04 21:28:04');
INSERT INTO `t_dictionary` VALUES ('16', '44444444444', '4444444444444', '0', '13', null, '2015-04-06 16:49:17', '2015-04-06 16:49:17');

-- ----------------------------
-- Table structure for t_docrecord
-- ----------------------------
DROP TABLE IF EXISTS `t_docrecord`;
CREATE TABLE `t_docrecord` (
  `id` int(12) NOT NULL auto_increment,
  `filename` varchar(200) default NULL,
  `doctype` varchar(10) default NULL,
  `lastmodify` bigint(13) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_docrecord
-- ----------------------------

-- ----------------------------
-- Table structure for t_group
-- ----------------------------
DROP TABLE IF EXISTS `t_group`;
CREATE TABLE `t_group` (
  `id` int(11) NOT NULL auto_increment,
  `descr` varchar(255) collate utf8_bin default NULL,
  `name` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_group
-- ----------------------------
INSERT INTO `t_group` VALUES ('6', '管理员可以查看', '管理员可以查看');
INSERT INTO `t_group` VALUES ('7', '文章发布人员可以查看', '文章发布人员可以查看');
INSERT INTO `t_group` VALUES ('13', '66 team good good good~~~', '66 Team');
INSERT INTO `t_group` VALUES ('14', 'Bootstrap team good good~~', 'Bootstrap team');
INSERT INTO `t_group` VALUES ('16', '测试组', '测试组的团队都很牛逼');
INSERT INTO `t_group` VALUES ('17', '马云的团队', '马云的团队你信吗');
INSERT INTO `t_group` VALUES ('18', '马化腾的团队', '马化腾的团队你信吗');
INSERT INTO `t_group` VALUES ('19', '任正非的团队', '任正非的团队你信吗');
INSERT INTO `t_group` VALUES ('20', '我的团队', '我信了');
INSERT INTO `t_group` VALUES ('21', 'java未眠夜', '很好很好');
INSERT INTO `t_group` VALUES ('22', 'springmvc + mybatis', '好框架团队组');

-- ----------------------------
-- Table structure for t_group_channel
-- ----------------------------
DROP TABLE IF EXISTS `t_group_channel`;
CREATE TABLE `t_group_channel` (
  `id` int(11) NOT NULL auto_increment,
  `c_id` int(11) default NULL,
  `g_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKB7D322B817563136` (`c_id`),
  KEY `FKB7D322B8E98ABB2E` (`g_id`),
  CONSTRAINT `FKB7D322B817563136` FOREIGN KEY (`c_id`) REFERENCES `t_channel` (`id`),
  CONSTRAINT `FKB7D322B8E98ABB2E` FOREIGN KEY (`g_id`) REFERENCES `t_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_group_channel
-- ----------------------------
INSERT INTO `t_group_channel` VALUES ('40', '36', '6');
INSERT INTO `t_group_channel` VALUES ('41', '39', '6');
INSERT INTO `t_group_channel` VALUES ('42', '37', '6');
INSERT INTO `t_group_channel` VALUES ('43', '40', '6');
INSERT INTO `t_group_channel` VALUES ('45', '38', '6');
INSERT INTO `t_group_channel` VALUES ('138', '36', '7');
INSERT INTO `t_group_channel` VALUES ('139', '39', '7');
INSERT INTO `t_group_channel` VALUES ('140', '68', '7');
INSERT INTO `t_group_channel` VALUES ('141', '40', '7');
INSERT INTO `t_group_channel` VALUES ('142', '37', '7');
INSERT INTO `t_group_channel` VALUES ('157', '36', '13');
INSERT INTO `t_group_channel` VALUES ('158', '39', '13');
INSERT INTO `t_group_channel` VALUES ('159', '68', '13');
INSERT INTO `t_group_channel` VALUES ('170', '73', '7');
INSERT INTO `t_group_channel` VALUES ('171', '74', '7');
INSERT INTO `t_group_channel` VALUES ('172', '75', '7');
INSERT INTO `t_group_channel` VALUES ('173', '77', '7');
INSERT INTO `t_group_channel` VALUES ('174', '76', '7');
INSERT INTO `t_group_channel` VALUES ('175', '78', '7');
INSERT INTO `t_group_channel` VALUES ('176', '79', '7');
INSERT INTO `t_group_channel` VALUES ('177', '80', '7');
INSERT INTO `t_group_channel` VALUES ('178', '81', '7');
INSERT INTO `t_group_channel` VALUES ('179', '82', '7');
INSERT INTO `t_group_channel` VALUES ('180', '83', '7');
INSERT INTO `t_group_channel` VALUES ('181', '94', '7');
INSERT INTO `t_group_channel` VALUES ('182', '84', '7');
INSERT INTO `t_group_channel` VALUES ('183', '85', '7');
INSERT INTO `t_group_channel` VALUES ('184', '88', '7');

-- ----------------------------
-- Table structure for t_index_pic
-- ----------------------------
DROP TABLE IF EXISTS `t_index_pic`;
CREATE TABLE `t_index_pic` (
  `id` int(11) NOT NULL auto_increment,
  `create_date` datetime default NULL,
  `link_type` int(11) default NULL,
  `link_url` varchar(255) collate utf8_bin default NULL,
  `new_name` varchar(255) collate utf8_bin default NULL,
  `old_name` varchar(255) collate utf8_bin default NULL,
  `pos` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `sub_title` varchar(255) collate utf8_bin default NULL,
  `title` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_index_pic
-- ----------------------------
INSERT INTO `t_index_pic` VALUES ('26', '2014-05-01 15:16:01', '0', '', '1398928541386.jpg', '程序员之歌_背景图片_压缩.jpg', '0', '1', 'mhdsjd', 'sjhdjs');

-- ----------------------------
-- Table structure for t_job
-- ----------------------------
DROP TABLE IF EXISTS `t_job`;
CREATE TABLE `t_job` (
  `id` int(11) NOT NULL auto_increment,
  `task_code` varchar(255) default NULL COMMENT '任务执行代码',
  `task_type` tinyint(1) NOT NULL default '0' COMMENT '任务类型(1首页静态化、2栏目页静态化、3内容页静态化、4采集、5分发)',
  `task_name` varchar(255) NOT NULL COMMENT '任务名称',
  `job_class` varchar(255) NOT NULL COMMENT '任务类',
  `execycle` tinyint(1) NOT NULL default '1' COMMENT '执行周期分类(1非表达式 2 cron表达式)',
  `day_of_month` int(11) default NULL COMMENT '每月的哪天',
  `day_of_week` tinyint(1) default NULL COMMENT '周几',
  `hour` int(11) default NULL COMMENT '小时',
  `minute` int(11) default NULL COMMENT '分钟',
  `interval_hour` int(11) default NULL COMMENT '间隔小时',
  `interval_minute` int(11) default NULL COMMENT '间隔分钟',
  `task_interval_unit` tinyint(1) default NULL COMMENT '1分钟、2小时、3日、4周、5月',
  `cron_expression` varchar(255) default NULL COMMENT '规则表达式',
  `is_enable` tinyint(1) NOT NULL default '1' COMMENT '是否启用',
  `task_remark` varchar(255) default NULL COMMENT '任务说明',
  `site_id` int(11) default NULL COMMENT '站点',
  `user_id` int(11) default NULL COMMENT '创建者',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `lastupdatetime` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_t_job_site` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='任务表';

-- ----------------------------
-- Records of t_job
-- ----------------------------
INSERT INTO `t_job` VALUES ('23', 'd02af959-aa30-46fb-a3e0-8c35157d0628', '1', '首页静态化3', 'com.internet.cms.service.job.task.Index', '1', null, null, null, null, null, '1', '1', '', '1', '首页静态化3', null, null, '2015-04-07 00:07:59', '2015-04-07 00:07:59');
INSERT INTO `t_job` VALUES ('24', 'edb32480-2d24-4d92-8a50-6950f1fc9f10', '1', '首页静态化', 'com.internet.cms.service.job.task.Index', '1', null, null, null, null, null, '1', '1', '', '1', '首页静态化', null, null, '2015-04-07 00:17:08', '2015-04-07 00:17:25');
INSERT INTO `t_job` VALUES ('25', '7e2277ed-5483-4107-b38b-bcc1925d8050', '1', '首页静态化3', 'com.internet.cms.service.job.task.Index', '1', '1', null, '1', '1', null, null, '5', '', '1', '首页静态化3', null, null, '2015-04-07 00:48:07', '2015-04-07 00:48:07');
INSERT INTO `t_job` VALUES ('26', 'b3950ea0-e735-4d1e-b45c-8010efad8e86', '1', '首页静态化4', 'com.internet.cms.service.job.task.Index', '1', null, '1', '11', '1', null, null, '4', '', '1', '首页静态化4', null, null, '2015-04-07 00:48:24', '2015-04-07 00:48:24');
INSERT INTO `t_job` VALUES ('27', '29c32b0a-e07f-4b86-82e4-53296d875df4', '1', '首页静态化6', 'com.internet.cms.service.job.task.Index', '1', null, null, '6', '6', null, null, '3', '', '2', '666', null, null, '2015-04-07 00:48:35', '2015-04-07 00:48:35');
INSERT INTO `t_job` VALUES ('28', '47975b2f-423e-4134-8718-e1322fe33554', '1', '首页静态化6', 'com.internet.cms.service.job.task.Index', '1', '6', null, '6', '6', null, null, '5', '', '1', '首页静态化6', null, null, '2015-04-07 00:48:54', '2015-04-07 00:48:54');
INSERT INTO `t_job` VALUES ('29', '82b9b459-2af1-456e-ac73-c18948cadae9', '1', '首页静态化78', 'com.internet.cms.service.job.task.Index', '1', null, null, null, null, null, null, '1', '', '1', '首页静态化78', null, null, '2015-04-07 00:49:10', '2015-04-07 00:49:10');
INSERT INTO `t_job` VALUES ('30', '3a4bce0f-521a-4caa-bbb0-fd0048b40064', '1', '首页静态化99', 'com.internet.cms.service.job.task.Index', '1', null, null, '1', '1', null, null, '3', '', '1', '首页静态化99', null, null, '2015-04-07 00:49:22', '2015-04-07 00:49:22');

-- ----------------------------
-- Table structure for t_keyword
-- ----------------------------
DROP TABLE IF EXISTS `t_keyword`;
CREATE TABLE `t_keyword` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_bin default NULL,
  `name_full_py` varchar(255) collate utf8_bin default NULL,
  `name_short_py` varchar(255) collate utf8_bin default NULL,
  `times` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_keyword
-- ----------------------------
INSERT INTO `t_keyword` VALUES ('80', '啊啊啊啊', 'aaaa', 'aaaa', '1');
INSERT INTO `t_keyword` VALUES ('81', 'a', 'a', '', '1');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_bin default NULL,
  `role_type` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '管理员', 'ROLE_ADMIN');
INSERT INTO `t_role` VALUES ('2', '文章发布人员', 'ROLE_PUBLISH');
INSERT INTO `t_role` VALUES ('3', '文章审核人员', 'ROLE_AUDIT');
INSERT INTO `t_role` VALUES ('5', 'admin', 'ROLE_ADMIN');
INSERT INTO `t_role` VALUES ('6', 'admin1', 'ROLE_ADMIN');
INSERT INTO `t_role` VALUES ('7', 'admin2', 'ROLE_ADMIN');
INSERT INTO `t_role` VALUES ('8', 'admin3', 'ROLE_ADMIN');
INSERT INTO `t_role` VALUES ('9', 'admin4', 'ROLE_ADMIN');
INSERT INTO `t_role` VALUES ('10', 'admin5', 'ROLE_ADMIN');
INSERT INTO `t_role` VALUES ('11', 'admin6', 'ROLE_ADMIN');

-- ----------------------------
-- Table structure for t_task
-- ----------------------------
DROP TABLE IF EXISTS `t_task`;
CREATE TABLE `t_task` (
  `taskuuid` varchar(100) NOT NULL,
  `applicant` varchar(100) NOT NULL,
  `appname` varchar(100) NOT NULL,
  `appurl` varchar(100) NOT NULL,
  `handler` varchar(100) NOT NULL,
  `taskdesc` varchar(100) NOT NULL,
  `taskurl` varchar(100) NOT NULL,
  `time` datetime NOT NULL,
  `type` varchar(50) NOT NULL,
  `createtime` datetime NOT NULL,
  `deleteflag` int(11) NOT NULL,
  `accessmobile` int(11) NOT NULL,
  `reserve1` varchar(100) default NULL,
  `reserve2` varchar(100) default NULL,
  `reserve3` varchar(100) default NULL,
  `reserve4` varchar(100) default NULL,
  `reserve5` varchar(100) default NULL,
  `reserve6` varchar(100) default NULL,
  `reserve7` varchar(100) default NULL,
  `reserve8` varchar(100) default NULL,
  `reserve9` varchar(100) default NULL,
  `reserve10` varchar(100) default NULL,
  PRIMARY KEY  (`taskuuid`,`handler`),
  KEY `index_appname_reserve2` (`appname`,`reserve2`),
  KEY `index_appname_reserve1` (`appname`,`reserve1`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_task
-- ----------------------------
INSERT INTO `t_task` VALUES ('ccecb75e-2e15-41c7-ad04-3211ae0ab9e1', 'admin', 'a', 'http://www.internet.com', 'shaozhen', 'aaaaaaaaaaa', 'http://www.supprot.com', '2015-04-04 12:12:12', 'j2ee', '2015-04-04 13:46:29', '1', '1', '6', '6', '', '', '', '', '', '', '', '');
INSERT INTO `t_task` VALUES ('4dd4c9b8-de13-488a-ac81-6e1dd57fefcd', 'admin', 'a', 'http://www.internet.com', 'shaozhen', 'aaaaaaaaaaa', 'http://www.supprot.com', '2015-04-04 12:12:12', 'j2ee', '2015-04-04 13:46:30', '1', '1', '6', '6', '', '', '', '', '', '', '', '');
INSERT INTO `t_task` VALUES ('f1f06fc2-9aac-4306-bc21-eb398045d1f2', 'admin', 'a', 'http://www.internet.com', 'shaozhen', 'aaaaaaaaaaa', 'http://www.supprot.com', '2015-04-04 12:12:12', 'j2ee', '2015-04-04 13:46:31', '1', '1', '6', '6', '', '', '', '', '', '', '', '');
INSERT INTO `t_task` VALUES ('3b5b89db-2f51-4275-8512-2e8e20dcd9d4', 'admin', 'a', 'http://www.internet.com', 'shaozhen', 'aaaaaaaaaaa', 'http://www.supprot.com', '2015-04-04 12:12:12', 'j2ee', '2015-04-04 13:46:32', '1', '1', '6', '6', '', '', '', '', '', '', '', '');
INSERT INTO `t_task` VALUES ('92d98abd-9a41-4880-8810-8edad59f8939', 'admin', 'a', 'http://www.internet.com', 'shaozhen', 'aaaaaaaaaaa', 'http://www.supprot.com', '2015-04-04 12:12:12', 'j2ee', '2015-04-04 13:46:33', '1', '1', '6', '6', '', '', '', '', '', '', '', '');
INSERT INTO `t_task` VALUES ('711171cb-d1d4-478d-8f88-4f6958ad6790', 'admin', 'a', 'http://www.internet.com', 'shaozhen', 'aaaaaaaaaaa', 'http://www.supprot.com', '2015-04-04 12:12:12', 'j2ee', '2015-04-04 13:46:34', '1', '1', '6', '6', '', '', '', '', '', '', '', '');
INSERT INTO `t_task` VALUES ('5a69e7b6-45ba-4653-b661-63ed3dc34cd4', 'admin', 'a', 'http://www.internet.com', 'shaozhen', 'aaaaaaaaaaa', 'http://www.supprot.com', '2015-04-04 12:12:12', 'j2ee', '2015-04-04 13:46:50', '1', '1', '6', '6', '', '', '', '', '', '', '', '');
INSERT INTO `t_task` VALUES ('819376ba-05ec-4d21-945a-1eaec05c72b9', 'admin', 'a', 'http://www.internet.com', 'shaozhen', 'aaaaaaaaaaa', 'http://www.supprot.com', '2015-04-04 12:12:12', 'j2ee', '2015-04-04 13:46:52', '1', '1', '6', '6', '', '', '', '', '', '', '', '');
INSERT INTO `t_task` VALUES ('fe3dd1e2-dcd5-427b-9bc2-94f185540416', 'admin', 'a', 'http://www.internet.com', 'shaozhen', 'aaaaaaaaaaa', 'http://www.supprot.com', '2015-04-04 12:12:12', 'j2ee', '2015-04-04 13:46:54', '1', '1', '6', '6', '', '', '', '', '', '', '', '');
INSERT INTO `t_task` VALUES ('0fdaf833-3d72-4cea-b5b0-8aceb89576bd', 'admin', 'a', 'http://www.internet.com', 'shaozhen', 'aaaaaaaaaaa', 'http://www.supprot.com', '2015-04-04 12:12:12', 'j2ee', '2015-04-04 13:46:57', '1', '1', '6', '6', '', '', '', '', '', '', '', '');
INSERT INTO `t_task` VALUES ('b387c669-0eac-4332-bde4-83500d12a313', 'admin', 'b', 'http://www.internet.com', 'shaozhen', 'aaaaaaaaaaa', 'http://www.supprot.com', '2015-04-04 12:12:12', 'j2ee', '2015-04-04 13:47:12', '1', '1', '6', '6', '', '', '', '', '', '', '', '');
INSERT INTO `t_task` VALUES ('6acd427d-eed0-4697-874b-a4521bf5a81a', 'admin', 'b', 'http://www.internet.com', 'shaozhen', 'aaaaaaaaaaa', 'http://www.supprot.com', '2015-04-04 12:12:12', 'j2ee', '2015-04-04 13:47:14', '1', '1', '6', '6', '', '', '', '', '', '', '', '');
INSERT INTO `t_task` VALUES ('1919959f-84d6-43eb-984b-ba63726ec81e', 'admin', 'c', 'http://www.internet.com', 'shaozhen', 'aaaaaaaaaaa', 'http://www.supprot.com', '2015-04-04 12:12:12', 'j2ee', '2015-04-04 13:47:17', '1', '1', '6', '6', '', '', '', '', '', '', '', '');
INSERT INTO `t_task` VALUES ('e5764be5-a2f7-4758-9fc6-0a06943cc2c4', 'admin', 'c', 'http://www.internet.com', 'shaozhen', 'aaaaaaaaaaa', 'http://www.supprot.com', '2015-04-04 12:12:12', 'j2ee', '2015-04-04 13:47:18', '1', '1', '6', '6', '', '', '', '', '', '', '', '');
INSERT INTO `t_task` VALUES ('9f01b8d3-a977-457a-90e1-5c01e3bc3dd0', 'admin', 'c', 'http://www.internet.com', 'shaozhen', 'aaaaaaaaaaa', 'http://www.supprot.com', '2015-04-04 12:12:12', 'j2ee', '2015-04-04 13:47:19', '1', '1', '6', '6', '', '', '', '', '', '', '', '');
INSERT INTO `t_task` VALUES ('f04be660-cbbc-4813-a3cf-02a4e4bd6b28', 'admin', 'd', 'http://www.internet.com', 'shaozhen', 'aaaaaaaaaaa', 'http://www.supprot.com', '2015-04-04 12:12:12', 'j2ee', '2015-04-04 13:47:22', '1', '1', '6', '6', '', '', '', '', '', '', '', '');
INSERT INTO `t_task` VALUES ('bad9baf9-ee42-4bc1-ba23-f1988da2fcd4', 'admin', 'd', 'http://www.internet.com', 'shaozhen', 'aaaaaaaaaaa', 'http://www.supprot.com', '2015-04-04 12:12:12', 'j2ee', '2015-04-04 13:47:23', '1', '1', '6', '6', '', '', '', '', '', '', '', '');
INSERT INTO `t_task` VALUES ('22a5b14f-394b-4b69-bf99-4860de4676c6', 'admin', 'd', 'http://www.internet.com', 'shaozhen', 'aaaaaaaaaaa', 'http://www.supprot.com', '2015-04-04 12:12:12', 'j2ee', '2015-04-04 13:47:24', '1', '1', '6', '6', '', '', '', '', '', '', '', '');
INSERT INTO `t_task` VALUES ('5f77f515-80fc-4d1f-9d36-5c2b4ccd489d', 'admin', 'd', 'http://www.internet.com', 'shaozhen', 'aaaaaaaaaaa', 'http://www.supprot.com', '2015-04-04 12:12:12', 'j2ee', '2015-04-04 13:47:25', '1', '1', '6', '6', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for t_todo
-- ----------------------------
DROP TABLE IF EXISTS `t_todo`;
CREATE TABLE `t_todo` (
  `id` varchar(50) collate utf8_bin NOT NULL default '',
  `name` varchar(500) collate utf8_bin default NULL,
  `desc` varchar(1400) collate utf8_bin default NULL,
  `creator` varchar(20) collate utf8_bin default NULL,
  `handler` varchar(20) collate utf8_bin default NULL,
  `assignType` int(10) default NULL,
  `acceptType` int(10) default NULL,
  `status` int(10) default NULL,
  `createDate` varchar(20) collate utf8_bin default NULL,
  `lastmodifyDate` varchar(20) collate utf8_bin default NULL,
  `deadline` varchar(20) collate utf8_bin default NULL,
  `deleteFlag` int(10) default '0' COMMENT '任务删除状态 0：未删除 1：责任人删除 2：创建者删除',
  `finishDate` varchar(20) collate utf8_bin default NULL,
  `reserve1` varchar(20) collate utf8_bin default NULL,
  `reserve2` varchar(20) collate utf8_bin default NULL,
  `reserve3` varchar(20) collate utf8_bin default NULL,
  `reserve4` varchar(20) collate utf8_bin default NULL,
  `reserve5` varchar(20) collate utf8_bin default NULL,
  `reserve6` varchar(20) collate utf8_bin default NULL,
  `reserve7` varchar(20) collate utf8_bin default NULL,
  `reserve8` varchar(20) collate utf8_bin default NULL,
  `reserve9` varchar(20) collate utf8_bin default NULL,
  `reserve10` varchar(20) collate utf8_bin default NULL,
  `weight` int(10) default NULL,
  `comment` varchar(1000) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_todo
-- ----------------------------

-- ----------------------------
-- Table structure for t_todo_attachment
-- ----------------------------
DROP TABLE IF EXISTS `t_todo_attachment`;
CREATE TABLE `t_todo_attachment` (
  `id` varchar(50) collate utf8_bin NOT NULL default '',
  `newName` varchar(200) collate utf8_bin default NULL,
  `oldName` varchar(200) collate utf8_bin default NULL,
  `contentType` varchar(50) collate utf8_bin default NULL,
  `suffix` varchar(50) collate utf8_bin default NULL,
  `size` int(11) default NULL,
  `deleteFlag` int(11) default NULL,
  `type` int(11) default NULL,
  `userId` varchar(50) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_todo_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for t_todo_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_todo_tag`;
CREATE TABLE `t_todo_tag` (
  `id` varchar(50) collate utf8_bin NOT NULL default '',
  `name` varchar(20) collate utf8_bin default NULL,
  `userId` varchar(50) collate utf8_bin default NULL,
  `createDate` varchar(50) collate utf8_bin default NULL,
  `lastmodifyDate` varchar(50) collate utf8_bin default NULL,
  `type` varchar(5) collate utf8_bin default NULL,
  `orderId` varchar(5) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_todo_tag
-- ----------------------------
INSERT INTO `t_todo_tag` VALUES ('20f138b6-649e-4ed8-b270-d66e30bb0e07', '责任人分类7', '6', '2014-09-24 12:38:52', '2014-09-24 12:38:52', '1', '6');
INSERT INTO `t_todo_tag` VALUES ('23ecd7d7-ae10-40b9-a990-fa4944bf2083', '责任人分类2', '6', '2014-09-24 12:38:36', '2014-09-24 12:38:36', '1', '1');
INSERT INTO `t_todo_tag` VALUES ('28a610a1-0956-4376-986a-b0750738d0ca', '创建者分类2', '6', '2014-09-24 12:37:28', '2014-09-24 12:37:28', '0', '1');
INSERT INTO `t_todo_tag` VALUES ('3520aab8-e6ab-4b29-9666-393bc3ac39ff', '创建者分类6', '6', '2014-09-24 12:37:39', '2014-09-24 12:37:39', '0', '5');
INSERT INTO `t_todo_tag` VALUES ('47679170-a51f-4866-a6af-c3df9307535a', '责任人分类4', '6', '2014-09-24 12:38:42', '2014-09-24 12:38:42', '1', '3');
INSERT INTO `t_todo_tag` VALUES ('593d6d40-d8fb-467c-ab40-991fa7d19e6f', '创建者分类7', '6', '2014-09-24 12:37:43', '2014-09-24 12:37:43', '0', '6');
INSERT INTO `t_todo_tag` VALUES ('5c155f9d-63b6-42fc-ad77-89aaa7a19794', '创建者分类4', '6', '2014-09-24 12:37:34', '2014-09-24 12:37:34', '0', '3');
INSERT INTO `t_todo_tag` VALUES ('747fb8e2-44a4-4f1b-b563-a017aec1dc52', '创建者分类10', '6', '2014-09-24 12:37:52', '2014-09-24 12:37:52', '0', '9');
INSERT INTO `t_todo_tag` VALUES ('82b3629e-86f3-43d9-bfc0-85b95044b019', '创建者分类8', '6', '2014-09-24 12:37:46', '2014-09-24 12:37:46', '0', '7');
INSERT INTO `t_todo_tag` VALUES ('a1e81b48-2534-43bb-a44a-e1891c4ac276', '创建者分类9', '6', '2014-09-24 12:37:48', '2014-09-24 12:37:48', '0', '8');
INSERT INTO `t_todo_tag` VALUES ('a579281e-8f55-46c1-aba8-c23281c447c0', '责任人分类8', '6', '2014-09-24 12:38:55', '2014-09-24 12:38:55', '1', '7');
INSERT INTO `t_todo_tag` VALUES ('ae27b68e-ba47-4658-ab00-374b34888731', '责任人分类1', '6', '2014-09-24 12:38:31', '2014-09-24 12:38:31', '1', '0');
INSERT INTO `t_todo_tag` VALUES ('af67a5c5-06df-4764-8ab3-023738a95136', '责任人分类10', '6', '2014-09-24 12:39:04', '2014-09-24 12:39:04', '1', '9');
INSERT INTO `t_todo_tag` VALUES ('cf87ce7d-bc10-4e9b-8a70-a4ef8221c2c8', '创建者分类5', '6', '2014-09-24 12:37:37', '2014-09-24 12:37:37', '0', '4');
INSERT INTO `t_todo_tag` VALUES ('dce0aab2-d898-45dc-bb46-b3452a0dc6be', '责任人分类5', '6', '2014-09-24 12:38:45', '2014-09-24 12:38:45', '1', '4');
INSERT INTO `t_todo_tag` VALUES ('f3ef08f0-6d6f-41e6-acff-38e5cfe35e57', '创建者分类1', '6', '2014-09-24 12:37:22', '2014-09-24 12:37:22', '0', '0');
INSERT INTO `t_todo_tag` VALUES ('f6a1d018-42bd-4a02-9d49-0f9a6b22f6b1', '责任人分类3', '6', '2014-09-24 12:38:39', '2014-09-24 12:38:39', '1', '2');
INSERT INTO `t_todo_tag` VALUES ('f6caac12-d25c-4b22-8d43-5df4127c354f', '责任人分类6', '6', '2014-09-24 12:38:47', '2014-09-24 12:38:47', '1', '5');
INSERT INTO `t_todo_tag` VALUES ('f7f21093-91d2-4743-9334-322bd3b70837', '责任人分类9', '6', '2014-09-24 12:38:58', '2014-09-24 12:38:58', '1', '8');

-- ----------------------------
-- Table structure for t_topic
-- ----------------------------
DROP TABLE IF EXISTS `t_topic`;
CREATE TABLE `t_topic` (
  `id` int(11) NOT NULL auto_increment,
  `author` varchar(255) collate utf8_bin default NULL,
  `channel_pic_id` int(11) default NULL,
  `cname` varchar(255) collate utf8_bin default NULL,
  `content` text collate utf8_bin,
  `create_date` datetime default NULL,
  `keyword` varchar(255) collate utf8_bin default NULL,
  `publish_date` datetime default NULL,
  `recommend` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `summary` varchar(255) collate utf8_bin default NULL,
  `title` varchar(255) collate utf8_bin default NULL,
  `cid` int(11) default NULL,
  `uid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKA10609A417293F7D` (`cid`),
  KEY `FKA10609A4836E27DF` (`uid`),
  CONSTRAINT `FKA10609A417293F7D` FOREIGN KEY (`cid`) REFERENCES `t_channel` (`id`),
  CONSTRAINT `FKA10609A4836E27DF` FOREIGN KEY (`uid`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_topic
-- ----------------------------
INSERT INTO `t_topic` VALUES ('98', 'admin', '0', '下载', 0xE5BE97E5BE97E5BE97, '2015-04-02 00:52:18', '啊啊啊啊|', '2015-04-02 00:52:18', '1', '1', '得得得', '1111', '38', '6');
INSERT INTO `t_topic` VALUES ('99', 'admin', '0', '呃呃呃呃呃呃呃呃呃', '', '2015-04-07 01:40:33', 'a|', '2015-04-07 01:40:33', '0', '0', '', '33333', '71', '6');
INSERT INTO `t_topic` VALUES ('100', 'admin', '0', 'catalog2', '', '2015-04-07 01:40:47', '', '2015-04-07 01:40:47', '0', '1', '', 'bbbbb', '74', '6');
INSERT INTO `t_topic` VALUES ('102', 'admin', '0', 'bbbbbbbbbbbbb', '', '2015-04-07 01:41:26', '', '2015-04-02 01:41:26', '0', '1', '', '习近平访美', '87', '6');
INSERT INTO `t_topic` VALUES ('103', 'admin', '0', 'catalog4', 0xE6BEB3E58D9AE998BFE4BA86E79A84E694BEE5A4A7E6B395E58D95E58F8DE79A84, '2015-04-07 01:41:46', '', '2015-04-07 01:41:46', '0', '1', '澳博阿了的放大法单反的', '澳博阿了的放大法单反的', '76', '6');
INSERT INTO `t_topic` VALUES ('104', 'admin', '0', 'dddddddddddd', 0x3C656D3E3C2F656D3E, '2015-04-07 01:42:01', '', '2015-04-07 01:42:01', '0', '1', '', '吾问无为谓吾问无为谓', '86', '6');
INSERT INTO `t_topic` VALUES ('105', 'admin', '0', 'wwwwwwwwwwwww', '', '2015-04-07 01:42:17', '', '2015-04-07 01:42:17', '0', '0', '', '日日日日日日日日日', '72', '6');
INSERT INTO `t_topic` VALUES ('106', 'admin', '0', 'catalog2', '', '2015-04-07 01:42:27', '', '2015-04-07 01:42:27', '0', '1', '', '仍然日日日日日日日日日', '74', '6');
INSERT INTO `t_topic` VALUES ('107', 'admin', '0', 'catalog2', '', '2015-04-07 01:42:45', '', '2015-04-07 01:42:45', '0', '1', '', '呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃', '74', '6');
INSERT INTO `t_topic` VALUES ('108', 'admin', '0', '呃呃呃呃呃呃呃呃呃', '', '2015-04-07 01:43:05', '', '2015-04-07 01:43:05', '0', '1', '', '习近平的手机', '71', '6');
INSERT INTO `t_topic` VALUES ('109', 'admin', '0', 'catalog2', '', '2015-04-07 01:43:15', '', '2015-04-07 01:43:15', '0', '1', '', '习近平的手机2', '74', '6');
INSERT INTO `t_topic` VALUES ('110', 'admin', '0', '咨询-1', '', '2015-04-07 01:55:06', '', '2015-04-03 01:55:06', '0', '0', '', '习大大和彭麻麻访问美国', '40', '6');
INSERT INTO `t_topic` VALUES ('111', 'admin', '0', '咨询-1', '', '2015-04-07 01:58:18', '', '2015-04-07 01:58:18', '0', '0', '', '习大大和彭麻麻访美', '40', '6');
INSERT INTO `t_topic` VALUES ('112', 'admin', '0', 'dddddddddddd', 0x3C703E3C7374726F6E673EE4B88DE99499E593A6EFBC8CE5A5BDE7BE8EE79A84E59BBEE789873C696D6720616C743D22E5A4A7E7AC9122207372633D222F696E7465726E65742D61646D696E2F7265736F75726365732F7868656469746F722F7868656469746F725F656D6F742F64656661756C742F6C617567682E67696622202F3E3C2F7374726F6E673E3C696D6720616C743D22E7BEA1E6859522207372633D222F696E7465726E65742D61646D696E2F7265736F75726365732F7868656469746F722F7868656469746F725F656D6F742F64656661756C742F656E76792E67696622202F3E3C696D6720616C743D22E58F91E781AB22207372633D222F696E7465726E65742D61646D696E2F7265736F75726365732F7868656469746F722F7868656469746F725F656D6F742F64656661756C742F616E6772792E67696622202F3E3C696D6720616C743D22E9AA82E4BABA22207372633D222F696E7465726E65742D61646D696E2F7265736F75726365732F7868656469746F722F7868656469746F725F656D6F742F64656661756C742F63757273652E67696622202F3E3C7370616E207374796C653D22636F6C6F723A236363303030303B223EE58F8DE58F8DE5A48DE5A48DE58F8DE58F8DE5A48DE5A48DE587A4E9A39E3C2F7370616E3E3C7370616E207374796C653D22636F6C6F723A233030393930303B6261636B67726F756E642D636F6C6F723A20726762283235352C203235352C2030293B223EE9A39EE8A2ABE585ABE4BDB0E4BCB4E585ABE4BDB0E4BCB4E585ABE4BDB0E4BCB4E585ABE4BDB0E4BCB4E585ABE4BDB0E4BCB4E5928C3C6120687265663D22687474703A2F2F7777772E696E7465726E65742E6E6574223EE59388E591B5E591B5E591B5E591B5E591B5E591B5E591B5E591B5E591B5E591B5E591B5E591B53C2F613E3C7370616E207374796C653D22666F6E742D73697A653A323470783B223E646464646464646464646464203C2F7370616E3E3C2F7370616E3E3C2F703E3C703E3C696D67206865696768743D22343030222069643D226174746163685F383122207372633D222F696E7465726E65742D61646D696E2F7265736F75726365732F75706C6F61642F313432383334333134313934382E6A70672220616C743D2222202F3E3C696D67206865696768743D22343030222069643D226174746163685F383322207372633D222F696E7465726E65742D61646D696E2F7265736F75726365732F75706C6F61642F313432383334333134323539312E6A70672220616C743D2222202F3E3C696D67206865696768743D22343030222069643D226174746163685F383422207372633D222F696E7465726E65742D61646D696E2F7265736F75726365732F75706C6F61642F313432383334333134323938302E6A70672220616C743D2222202F3E3C2F703E, '2015-04-07 02:09:01', '', '2015-04-07 02:09:01', '0', '0', '', '啊啊啊啊啊啊啊啊啊啊啊啊啊', '86', '6');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL auto_increment,
  `create_date` datetime default NULL,
  `email` varchar(255) collate utf8_bin default NULL,
  `nickname` varchar(255) collate utf8_bin default NULL,
  `password` varchar(255) collate utf8_bin NOT NULL,
  `phone` varchar(255) collate utf8_bin default NULL,
  `status` int(11) NOT NULL,
  `username` varchar(255) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('6', '2014-01-12 13:36:19', 'admin@163.com', 'admin', 'f6fdffe48c908deb0f4c3bd36c032e72', '1234567890', '1', 'admin');
INSERT INTO `t_user` VALUES ('45', '2015-04-01 23:55:52', 'zhenjavax@1.com', 'internet4', '6512bd43d9caa6e02c990b0a82652dca', '134567890', '1', '1');
INSERT INTO `t_user` VALUES ('46', '2015-04-02 17:10:18', 'zhenja222222vax@1.com', 'internet3', 'b59c67bf196a4758191e42f76670ceba', '1234567890', '1', '111');
INSERT INTO `t_user` VALUES ('47', '2015-04-05 00:43:11', 'lm@163.com', 'lm', '94a4ebeb834f927228209c2dd71c10e5', '1234567890', '1', 'lm');
INSERT INTO `t_user` VALUES ('48', '2015-04-05 03:39:19', 'admin@163.com', 'internet1', 'c6c73fee8fd9af7d3f1abd1611a40b32', '123456790-', '1', 'internet1');
INSERT INTO `t_user` VALUES ('49', '2015-04-05 03:39:53', 'admin@163.com', 'internet2', '79e5b03556b7e87b508b5977d5f3f7e0', 'internet2', '1', 'internet2');
INSERT INTO `t_user` VALUES ('50', '2015-04-05 03:41:50', 'lm@163.com', 'internet5', '9ac010daa64dc3065b7b6eb584d231ae', '123456780', '1', 'internet5');
INSERT INTO `t_user` VALUES ('51', '2015-04-05 03:42:24', 'admin@163.com', 'internet6', '1614782b1a29db28ce58ce1173d97ee0', '123456780', '1', 'internet6');
INSERT INTO `t_user` VALUES ('52', '2015-04-05 03:42:55', 'lm@163.com', 'internet7', '6f3edab07447258b53b2f821187f6f1f', '123456780', '1', 'internet7');
INSERT INTO `t_user` VALUES ('53', '2015-04-05 03:43:21', 'admin@163.com', 'internet8', 'c7ef3b5c4827d840d0c264a1c06f1717', '123456780', '1', 'internet8');
INSERT INTO `t_user` VALUES ('54', '2015-04-05 03:43:53', 'admin@163.com', 'internet9', '33c7785a99eeda46b8feb7a18b8dc45', '123456780', '1', 'internet9');

-- ----------------------------
-- Table structure for t_user_group
-- ----------------------------
DROP TABLE IF EXISTS `t_user_group`;
CREATE TABLE `t_user_group` (
  `id` int(11) NOT NULL auto_increment,
  `g_id` int(11) default NULL,
  `u_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK300645B6E98ABB2E` (`g_id`),
  KEY `FK300645B683A304B4` (`u_id`),
  CONSTRAINT `FK300645B683A304B4` FOREIGN KEY (`u_id`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FK300645B6E98ABB2E` FOREIGN KEY (`g_id`) REFERENCES `t_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_user_group
-- ----------------------------
INSERT INTO `t_user_group` VALUES ('44', '6', '6');
INSERT INTO `t_user_group` VALUES ('45', '7', '6');
INSERT INTO `t_user_group` VALUES ('102', '13', '45');
INSERT INTO `t_user_group` VALUES ('103', '6', '46');
INSERT INTO `t_user_group` VALUES ('104', '13', '46');
INSERT INTO `t_user_group` VALUES ('105', '14', '46');
INSERT INTO `t_user_group` VALUES ('106', '6', '47');
INSERT INTO `t_user_group` VALUES ('107', '7', '47');
INSERT INTO `t_user_group` VALUES ('108', '13', '47');
INSERT INTO `t_user_group` VALUES ('109', '14', '47');
INSERT INTO `t_user_group` VALUES ('111', '6', '48');
INSERT INTO `t_user_group` VALUES ('112', '7', '48');
INSERT INTO `t_user_group` VALUES ('113', '13', '48');
INSERT INTO `t_user_group` VALUES ('114', '14', '48');
INSERT INTO `t_user_group` VALUES ('115', '16', '48');
INSERT INTO `t_user_group` VALUES ('116', '6', '49');
INSERT INTO `t_user_group` VALUES ('117', '7', '49');
INSERT INTO `t_user_group` VALUES ('118', '13', '49');
INSERT INTO `t_user_group` VALUES ('119', '14', '49');
INSERT INTO `t_user_group` VALUES ('120', '19', '49');
INSERT INTO `t_user_group` VALUES ('121', '20', '49');
INSERT INTO `t_user_group` VALUES ('122', '21', '49');
INSERT INTO `t_user_group` VALUES ('123', '7', '45');
INSERT INTO `t_user_group` VALUES ('124', '14', '45');
INSERT INTO `t_user_group` VALUES ('125', '21', '45');
INSERT INTO `t_user_group` VALUES ('126', '6', '50');
INSERT INTO `t_user_group` VALUES ('127', '7', '50');
INSERT INTO `t_user_group` VALUES ('128', '13', '50');
INSERT INTO `t_user_group` VALUES ('129', '22', '50');
INSERT INTO `t_user_group` VALUES ('130', '6', '51');
INSERT INTO `t_user_group` VALUES ('131', '13', '51');
INSERT INTO `t_user_group` VALUES ('132', '6', '52');
INSERT INTO `t_user_group` VALUES ('133', '7', '52');
INSERT INTO `t_user_group` VALUES ('134', '13', '52');
INSERT INTO `t_user_group` VALUES ('135', '6', '53');
INSERT INTO `t_user_group` VALUES ('136', '7', '53');
INSERT INTO `t_user_group` VALUES ('137', '13', '53');
INSERT INTO `t_user_group` VALUES ('138', '6', '54');
INSERT INTO `t_user_group` VALUES ('139', '7', '54');
INSERT INTO `t_user_group` VALUES ('140', '13', '54');
INSERT INTO `t_user_group` VALUES ('141', '19', '54');
INSERT INTO `t_user_group` VALUES ('142', '20', '54');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `id` int(11) NOT NULL auto_increment,
  `r_id` int(11) default NULL,
  `u_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK331DEE5F83A03C42` (`r_id`),
  KEY `FK331DEE5F83A304B4` (`u_id`),
  CONSTRAINT `FK331DEE5F83A03C42` FOREIGN KEY (`r_id`) REFERENCES `t_role` (`id`),
  CONSTRAINT `FK331DEE5F83A304B4` FOREIGN KEY (`u_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('49', '1', '6');
INSERT INTO `t_user_role` VALUES ('50', '2', '6');
INSERT INTO `t_user_role` VALUES ('51', '3', '6');
INSERT INTO `t_user_role` VALUES ('112', '1', '45');
INSERT INTO `t_user_role` VALUES ('113', '2', '45');
INSERT INTO `t_user_role` VALUES ('114', '3', '45');
INSERT INTO `t_user_role` VALUES ('115', '1', '46');
INSERT INTO `t_user_role` VALUES ('116', '2', '46');
INSERT INTO `t_user_role` VALUES ('117', '1', '47');
INSERT INTO `t_user_role` VALUES ('118', '2', '47');
INSERT INTO `t_user_role` VALUES ('119', '3', '47');
INSERT INTO `t_user_role` VALUES ('120', '5', '47');
INSERT INTO `t_user_role` VALUES ('121', '1', '48');
INSERT INTO `t_user_role` VALUES ('122', '2', '48');
INSERT INTO `t_user_role` VALUES ('123', '3', '48');
INSERT INTO `t_user_role` VALUES ('124', '5', '48');
INSERT INTO `t_user_role` VALUES ('125', '1', '49');
INSERT INTO `t_user_role` VALUES ('126', '2', '49');
INSERT INTO `t_user_role` VALUES ('127', '3', '49');
INSERT INTO `t_user_role` VALUES ('128', '5', '49');
INSERT INTO `t_user_role` VALUES ('129', '1', '50');
INSERT INTO `t_user_role` VALUES ('130', '2', '50');
INSERT INTO `t_user_role` VALUES ('131', '3', '50');
INSERT INTO `t_user_role` VALUES ('132', '5', '50');
INSERT INTO `t_user_role` VALUES ('133', '1', '51');
INSERT INTO `t_user_role` VALUES ('134', '2', '51');
INSERT INTO `t_user_role` VALUES ('135', '3', '51');
INSERT INTO `t_user_role` VALUES ('136', '9', '51');
INSERT INTO `t_user_role` VALUES ('137', '1', '52');
INSERT INTO `t_user_role` VALUES ('138', '3', '52');
INSERT INTO `t_user_role` VALUES ('139', '5', '52');
INSERT INTO `t_user_role` VALUES ('140', '1', '53');
INSERT INTO `t_user_role` VALUES ('141', '2', '53');
INSERT INTO `t_user_role` VALUES ('142', '3', '53');
INSERT INTO `t_user_role` VALUES ('143', '1', '54');
INSERT INTO `t_user_role` VALUES ('144', '2', '54');
INSERT INTO `t_user_role` VALUES ('145', '3', '54');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(20) default NULL,
  `age` int(11) default NULL,
  `birthday` date default NULL,
  `password` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `ID` varchar(50) NOT NULL,
  `USERNAME` varchar(300) NOT NULL,
  `PASSWORD` varchar(1000) default NULL,
  `ADDTIME` timestamp NULL default NULL,
  `USERLEVEL` int(11) default NULL,
  `DEL` int(11) default NULL,
  `REALNAME` varchar(50) default NULL,
  `EMAIL` varchar(50) default NULL,
  `SEX` varchar(5) NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------

-- ----------------------------
-- Table structure for userinfo_state
-- ----------------------------
DROP TABLE IF EXISTS `userinfo_state`;
CREATE TABLE `userinfo_state` (
  `ID` varchar(50) NOT NULL,
  `REFID` varchar(50) NOT NULL,
  `USERINFO_STATE` varchar(150) NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo_state
-- ----------------------------
