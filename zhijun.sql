/*
Navicat MySQL Data Transfer

Source Server         : 本地数据库
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : zhijun

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2018-09-27 15:24:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `about`
-- ----------------------------
DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `about_id` int(11) NOT NULL AUTO_INCREMENT,
  `about_profile` text NOT NULL COMMENT '公司介绍',
  `about_scope` varchar(255) NOT NULL COMMENT '经营范围',
  `about_products` varchar(255) NOT NULL COMMENT '主要产品',
  `about_culture` text NOT NULL COMMENT '公司文化',
  `about_prospects` text NOT NULL COMMENT '发展前景',
  `about_time` datetime NOT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of about
-- ----------------------------
INSERT INTO `about` VALUES ('1', '主要从事工业物联网、大数据平台开发和运营，致力于提高行业自动化、信息化水平，推动行业智能化发展，为用户搭建大数据平台及数据分析服务 ，实现万物互联、智慧决策。以自动化、信息化、智能化技术引领者，采用互联网技术和商业模式，以信息化管理软件为抓手，建立石油行业智慧安全管理服务云平台。\r\n目前产品：电梯监控管理系统、工业级作业人员智能定位管理系统', '经营智能化软件', '智能头盔，智能电梯', '<p>公司文化&nbsp;&nbsp;<br></p>', '智钧时代的前身公司，在十年前就已经承接了国家级大型海上油田项目，从而展示了我们雄厚的技术优势。我们汇集了一批专业信息系统集成技术精英，秉承真诚、严谨、以客户为中心的服务宗旨，以良好的客户服务意识为客户提供优质的专业服务。\r\n我们与上海交通大学、深圳大学电子科技与技术学院建立了紧密的战略合作关系，以强大的技术优势、人才优势为智钧时代提供坚实的技术支持平台。\r\n对外，公司不断研发新技术，将拥有更多的自主知识产权，确保我们提供给客户的方案最具市场竞争力并符合客户发展规划。\r\n对内，公司推行先进的企业管理理念，合理完善员工的激励晋升制度，建构了信息化的办公管理系统提高工作效率，确保为客户创造更高的价值。', '2018-09-03 09:48:50');

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `userpassword` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '-a68pgp3m0o833s26od70095sljka87f6', '-d6761m9kl6lh2cpj4omphbn9pd8qt40r');

-- ----------------------------
-- Table structure for `cases`
-- ----------------------------
DROP TABLE IF EXISTS `cases`;
CREATE TABLE `cases` (
  `case_id` int(11) NOT NULL AUTO_INCREMENT,
  `case_name` varchar(255) NOT NULL COMMENT '案例名称',
  `case_constant` text NOT NULL COMMENT '案例介绍',
  `case_photo` varchar(255) NOT NULL COMMENT '案例照片',
  `case_time` datetime NOT NULL COMMENT '时间',
  `case_type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`case_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cases
-- ----------------------------
INSERT INTO `cases` VALUES ('1', '深水荔湾3-1项目', ' <p><font face=\"宋体\">主要从事工业</font><spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"><font face=\"宋体\">物联网</font><spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"><font face=\"宋体\">、大数据平台开发和运营，致力于提高行业自动化、信息化水平，推动行业智能化发展，为用户搭建大数据平台及数据分析服务</font>&nbsp;<font face=\"宋体\">，实现万物互联、智慧决策。</font><spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"><font face=\"宋体\">以</font><spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"><font face=\"宋体\">自动化、信息化、智能化技术引领者，采用互联网技术和商业模式，以信息化管理软件为抓手，建立</font><spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"><font face=\"宋体\">石油行业</font><spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"><font face=\"宋体\">智慧</font><spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"><font face=\"宋体\">安全管理</font><spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"><font face=\"宋体\">服务云平台</font><spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"><font face=\"宋体\">。</font></spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"></spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"></spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"></spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"></spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"></spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"></spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"></spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"></spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\">&nbsp;&nbsp;&nbsp;&nbsp;<br></p>', '1535940845847.png', '2018-09-03 10:14:06', '2');
INSERT INTO `cases` VALUES ('2', '珠海LNG工程建设项目', ' <p><font face=\"宋体\">主要从事工业</font><spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"><font face=\"宋体\">物联网</font><spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"><font face=\"宋体\">、大数据平台开发和运营，致力于提高行业自动化、信息化水平，推动行业智能化发展，为用户搭建大数据平台及数据分析服务</font>&nbsp;<font face=\"宋体\">，实现万物互联、智慧决策。</font><spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"><font face=\"宋体\">以</font><spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"><font face=\"宋体\">自动化、信息化、智能化技术引领者，采用互联网技术和商业模式，以信息化管理软件为抓手，建立</font><spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"><font face=\"宋体\">石油行业</font><spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"><font face=\"宋体\">智慧</font><spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"><font face=\"宋体\">安全管理</font><spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"><font face=\"宋体\">服务云平台</font><spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"><font face=\"宋体\">。</font></spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"></spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"></spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"></spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"></spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"></spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"></spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"></spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"></spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\">&nbsp;&nbsp;&nbsp;&nbsp;<br></p>', '1535940907469.png', '2018-09-03 10:15:07', '1');
INSERT INTO `cases` VALUES ('3', '深圳LNG工程建设项目', ' <p><font face=\"宋体\">主要从事工业</font><spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"><font face=\"宋体\">物联网</font><spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"><font face=\"宋体\">、大数据平台开发和运营，致力于提高行业自动化、信息化水平，推动行业智能化发展，为用户搭建大数据平台及数据分析服务</font>&nbsp;<font face=\"宋体\">，实现万物互联、智慧决策。</font><spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"><font face=\"宋体\">以</font><spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"><font face=\"宋体\">自动化、信息化、智能化技术引领者，采用互联网技术和商业模式，以信息化管理软件为抓手，建立</font><spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"><font face=\"宋体\">石油行业</font><spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"><font face=\"宋体\">智慧</font><spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"><font face=\"宋体\">安全管理</font><spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"><font face=\"宋体\">服务云平台</font><spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"><font face=\"宋体\">。</font></spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"></spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"></spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"></spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"></spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"></spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"></spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"></spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\"></spanyes\';font-family:宋体;line-height:150%;color:rgb(0,0,0);letter-spacing:0.0000pt;font-weight:normal;text-transform:none;font-style:normal;font-size:10.5000pt;mso-font-kerning:1.0000pt;background:rgb(255,255,255);mso-shading:rgb(255,255,255);\">&nbsp;&nbsp;&nbsp;&nbsp;<br></p>', '1535940934487.png', '2018-09-03 10:15:34', '1');

-- ----------------------------
-- Table structure for `casetype`
-- ----------------------------
DROP TABLE IF EXISTS `casetype`;
CREATE TABLE `casetype` (
  `casetype_id` int(11) NOT NULL AUTO_INCREMENT,
  `casetype_name` varchar(255) NOT NULL,
  `casetype_constant` text NOT NULL,
  PRIMARY KEY (`casetype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of casetype
-- ----------------------------
INSERT INTO `casetype` VALUES ('1', '海上作业', '海上作业');
INSERT INTO `casetype` VALUES ('2', '石油', '石油');

-- ----------------------------
-- Table structure for `information`
-- ----------------------------
DROP TABLE IF EXISTS `information`;
CREATE TABLE `information` (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_name` varchar(255) NOT NULL COMMENT '公司名称',
  `com_logo` varchar(255) DEFAULT NULL COMMENT '公司logo',
  `com_contact` varchar(255) NOT NULL COMMENT '公司联系人',
  `com_number` varchar(255) NOT NULL COMMENT '公司电话',
  `com_address` varchar(255) NOT NULL COMMENT '公司地址',
  `com_code` varchar(255) NOT NULL COMMENT '邮编',
  `com_fax` varchar(255) NOT NULL COMMENT '传真',
  `com_email` varchar(255) NOT NULL COMMENT '电子邮件',
  `com_copyright` varchar(255) NOT NULL COMMENT '版权所有',
  `com_profile` text NOT NULL COMMENT '公司介绍',
  `com_backdrop` text NOT NULL,
  `com_time` date NOT NULL COMMENT '成立时间',
  PRIMARY KEY (`com_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of information
-- ----------------------------
INSERT INTO `information` VALUES ('1', '智钧时代（深圳）科技有限公司', '1535939217800.png', '穆生', '(86-755)26416922', '深圳市南山区南海大道海王大厦A座7F', '100191', '(86-10)82030622', 'sales@sunway-sz.com', '粤ICP备18107290号-2 Copyright © 2018  www.wiseratech.com All Right Reserved.', '主要从事工业物联网、大数据平台开发和运营，致力于提高行业自动化、信息化水平，推动行业智能化发展，为用户搭建大数据平台及数据分析服务 ，实现万物互联、智慧决策。以自动化、信息化、智能化技术引领者，采用互联网技术和商业模式，以信息化管理软件为抓手，建立石油行业智慧安全管理服务云平台。\r\n目前产品：电梯监控管理系统、工业级作业人员智能定位管理系统', '智钧时代的前身公司，在十年前就已经承接了国家级大型海上油田项目，从而展示了我们雄厚的技术优势。我们汇集了一批专业信息系统集成技术精英，秉承真诚、严谨、以客户为中心的服务宗旨，以良好的客户服务意识为客户提供优质的专业服务。\r\n我们与上海交通大学、深圳大学电子科技与技术学院建立了紧密的战略合作关系，以强大的技术优势、人才优势为智钧时代提供坚实的技术支持平台。\r\n对外，公司不断研发新技术，将拥有更多的自主知识产权，确保我们提供给客户的方案最具市场竞争力并符合客户发展规划。\r\n对内，公司推行先进的企业管理理念，合理完善员工的激励晋升制度，建构了信息化的办公管理系统提高工作效率，确保为客户创造更高的价值。', '2018-08-15');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) NOT NULL COMMENT '新闻标题',
  `news_constant` text NOT NULL COMMENT '新闻内容',
  `news_time` datetime NOT NULL COMMENT '时间',
  `news_type` int(11) NOT NULL COMMENT '新闻类型 0：公司 1：行业',
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '2013新产品介绍会顺利举办', ' <div>5月27日，公司2013年新产品介绍会在深圳金銮酒店隆重举行，来自中海油各分属单位的主管领导和技术人员参加了本次介绍会。</div><div>会上，我司市场部经理对公司研发中心自主研发的安全监察头盔系统、电力监察系统及健康数字采集系统做了详尽介绍，并热情邀请与会人员亲身体验各款产品。</div><div>通过现场体验，客户充分肯定了此次推介的三款产品的性能并对新产品产生了浓厚的兴趣，现场气氛十分热烈，此次介绍会取得了圆满成功。</div><p style=\"text-align: center;\"><img src=\"http://localhost:8080/upload/20180903100901342.jpg\" style=\"max-width: 100%;\">&nbsp;&nbsp;</p>', '2018-09-03 10:09:10', '2');
INSERT INTO `news` VALUES ('2', '荣获国家多项专利', ' <p><font face=\"Calibri\">2018年6月，我公司</font><font face=\"宋体\">两</font><font face=\"Calibri\">项</font><font face=\"宋体\">发明专利、四项实用新型专利、一项外观专利的</font><font face=\"Calibri\">研发成果通过中华人民共和国知识产权局专利局审核，并取得专利证书。<o:p></o:p></font></p><p><font face=\"Calibri\">近年来，随着知识产权保护意识的增强，公司将技术研发和知识产权的申报列为工作重点，投入大量技术人员、研发资金加强技术研发工作。目前公司的技术研发进展顺利，自有知识产权保护工作不断加强。</font></p>', '2018-09-03 10:07:45', '1');
INSERT INTO `news` VALUES ('3', '我司荣获中海油信科技术有限公司“优秀供应商”殊荣', ' <p><font face=\"宋体\">热烈庆祝我公司荣获中海油信息科技有限公司</font>“<font face=\"宋体\">最佳合作伙伴</font>”殊荣。<o:p></o:p></p><p><font face=\"宋体\">我公司自成立以来，一直秉承</font>“正直、诚信、务实、创新”的服务宗旨，以此信条面对市场、面向客户，求实创新、诚信合作，力争为企业和客户提供最优质的产品和服务。<o:p></o:p></p><p>2016<font face=\"宋体\">年，在全体员工的共同协作及努力下，公司赢得了客户一致好评。在已结束的中海油</font><font face=\"宋体\">信科技术有限公司</font><font face=\"宋体\">对供应商的评审中，我公司凭借一贯良好的供货质量、热诚的服务态度、及时的供货实效等，被评为</font>“<font face=\"宋体\">最佳合作伙伴</font>”。<o:p></o:p></p><p>2016<font face=\"宋体\">年我公司重点完成了中海油重点国家级项目：</font><font face=\"宋体\">广西</font>LNG<font face=\"宋体\">工程建设项目</font><font face=\"宋体\">、</font><font face=\"宋体\">惠炼</font><font face=\"宋体\">二期项目、中国海油大楼智能化楼宇项目等。</font><o:p></o:p></p><p><font face=\"宋体\">在公司的未来发展中，我公司将继续秉承我们的服务宗旨，以最精湛的专业技术服务客户，积极进取、共创双赢！</font></p><p><img src=\"http://www.sunway-sz.com/_upload/pro/2018-06-22/d0ceb787-3c97-4925-924c-32d9448cd7e0.jpg\" alt=\"å¾®ä¿¡å¾ç_20180621153826\">&nbsp;&nbsp;</p>', '2018-09-03 10:08:04', '1');
INSERT INTO `news` VALUES ('4', '我司与深圳大学电子科学与技术学院院长签署战略合作协议书', ' <p>2015<font face=\"黑体\">年</font>11<font face=\"黑体\">月</font>5<font face=\"黑体\">日，我司与</font><font face=\"黑体\">深圳大学</font><font face=\"黑体\">电子科学与技术学院院长</font><font face=\"黑体\">签署战略合作协议书，正式建立全面战略合作伙伴关系。</font>&nbsp;</p><p style=\"text-align: center;\"><b><font face=\"黑体\">我司获得国家高新技术企业认证（</font></b><b>2016年</b><b><font face=\"黑体\">）</font></b></p><p style=\"text-align: center;\"><img src=\"http://localhost:8080/upload/20180903100956329.jpg\" style=\"max-width:100%;\"><b><font face=\"黑体\"><br></font></b></p>', '2018-09-03 10:10:03', '1');
INSERT INTO `news` VALUES ('5', '携手双赢，共创未来——POLYCOM视频会议系统技术交流', ' <p><font face=\"宋体\"><st1:chsdate w:st=\"on\" isrocdate=\"False\" islunardate=\"False\" day=\"6\" month=\"12\" year=\"2012\"><span lang=\"EN-US\">2012</span>年<span lang=\"EN-US\">12</span>月<span lang=\"EN-US\">6</span>日</st1:chsdate>，我司技术人员与<span lang=\"EN-US\">POLYCOM</span>技术人员针对视频会议系统进行了一次深入的技术交流研讨，旨在搭建一个技术交流的平台，提升双方业务知识和技术水平，提高服务意识，达到合作双赢、共同发展的目的。<span lang=\"EN-US\"><o:p></o:p></span></font></p><p><font face=\"宋体\">交流会上，双方针对<span lang=\"EN-US\">POLYCOM</span>解决方案、远真系统解决方案、全面<span lang=\"EN-US\">UC</span>解决方案等内容进行了深入探讨，且对远真系统解决方案进行了模拟操作。通过此次交流，双方确立了“携手共赢，共创未来”的战略合作方针，为双方今后的深入合作奠定了良好的基础。</font></p>', '2018-09-03 10:10:28', '2');

-- ----------------------------
-- Table structure for `newtype`
-- ----------------------------
DROP TABLE IF EXISTS `newtype`;
CREATE TABLE `newtype` (
  `newtype_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类型id',
  `newtype_name` varchar(255) NOT NULL COMMENT '新闻类型名称',
  `newtype_constant` text NOT NULL COMMENT '新闻类型介绍',
  PRIMARY KEY (`newtype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newtype
-- ----------------------------
INSERT INTO `newtype` VALUES ('1', '公司新闻', '关于公司的日常新闻');
INSERT INTO `newtype` VALUES ('2', '行业新闻', '关于行业的新闻');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(255) NOT NULL COMMENT '产品名称',
  `pro_constant` text NOT NULL COMMENT '产品介绍',
  `pro_photo` varchar(255) NOT NULL COMMENT '产品照片',
  `pro_time` datetime NOT NULL COMMENT '时间',
  `pro_type` int(11) NOT NULL COMMENT '产品类型',
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '智能电梯', ' <p>为了提供物业管理水平，防止无关人员随便进出、使用电梯，同时达到节能环保的效果，具备应用IC/ID卡来管制人员出入特定楼层的电梯。&nbsp;&nbsp;<br></p>', '1535940675792.png', '2018-09-03 10:11:16', '2');
INSERT INTO `product` VALUES ('2', '智能平台', ' <p><font face=\"楷体_GB2312\">头盔搭载的管理平台介绍：平台模块介绍、作业流程、平台功能、</font>PC<font face=\"楷体_GB2312\">端、移动</font><font face=\"Calibri\">APP</font><font face=\"楷体_GB2312\">、联动视频监控、广播告警系统及未来拓展功能</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br></p>', '1535940708588.png', '2018-09-03 10:11:49', '1');
INSERT INTO `product` VALUES ('3', 'PAGA广播告警系统', ' <p>Federal Signal 的PAGA是一款全新的数字广播告警系统，采用D类功放，效率达到84%以上，发热量小，可维护性高。&nbsp;&nbsp;<br></p>', '1535940735770.png', '2018-09-03 10:12:16', '3');
INSERT INTO `product` VALUES ('4', '智能头盔', ' <p>智能头盔是一个让现场作业更智能的综合管控平台。采用了物联网、移动互联网、人和云计算等技术，让前端现场作业更加智能，让后端管理更加高效。&nbsp;&nbsp;<br></p>', '1535940789805.jpg', '2018-09-03 10:13:10', '1');

-- ----------------------------
-- Table structure for `protype`
-- ----------------------------
DROP TABLE IF EXISTS `protype`;
CREATE TABLE `protype` (
  `protype_id` int(11) NOT NULL AUTO_INCREMENT,
  `protype_name` varchar(255) NOT NULL,
  `protype_constant` text NOT NULL,
  `protype_photo` varchar(255) NOT NULL,
  PRIMARY KEY (`protype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of protype
-- ----------------------------
INSERT INTO `protype` VALUES ('1', '智能头盔', '智能头盔是一个让现场作业更智能的综合管控平台。采用了物联网、移动互联网、人和云计算等技术，让前端现场作业更加智能，让后端管理更加高效。', '1535939856973.jpg');
INSERT INTO `protype` VALUES ('2', '智能电梯', '为了提供物业管理水平，防止无关人员随便进出、使用电梯，同时达到节能环保的效果，具备应用IC/ID卡来管制人员出入特定楼层的电梯。', '1535939955251.jpg');
INSERT INTO `protype` VALUES ('3', '广播告警系统', 'Federal Signal 的PAGA是一款全新的数字广播告警系统，采用D类功放，效率达到84%以上，发热量小，可维护性高。', '1535940056507.jpg');

-- ----------------------------
-- Table structure for `qualification`
-- ----------------------------
DROP TABLE IF EXISTS `qualification`;
CREATE TABLE `qualification` (
  `qua_id` int(11) NOT NULL AUTO_INCREMENT,
  `qua_name` varchar(255) NOT NULL COMMENT '资质名称',
  `qua_photo` varchar(255) NOT NULL COMMENT '资质照片',
  `qua_constant` text NOT NULL COMMENT '资质内容',
  `qua_time` datetime NOT NULL,
  `qua_type` int(11) NOT NULL DEFAULT '0' COMMENT '0:资质信息1：发展过程',
  `qua_date` int(11) NOT NULL,
  PRIMARY KEY (`qua_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qualification
-- ----------------------------
INSERT INTO `qualification` VALUES ('1', '公司成立', '1535941134738.png', ' <p>公司成立&nbsp;&nbsp;<br></p>', '2018-09-03 10:18:55', '0', '2018');
INSERT INTO `qualification` VALUES ('2', '认定为国家级高新技术企业', '1535941072875.png', ' <p>认定为国家级高新技术企业&nbsp;&nbsp;<br></p>', '2018-09-03 10:17:53', '1', '2018');
INSERT INTO `qualification` VALUES ('3', '公司重大改革', '1535941144063.png', ' <p>公司重大改革</p>', '2018-09-03 10:19:04', '1', '2018');

-- ----------------------------
-- Table structure for `recruitment`
-- ----------------------------
DROP TABLE IF EXISTS `recruitment`;
CREATE TABLE `recruitment` (
  `rec_id` int(11) NOT NULL AUTO_INCREMENT,
  `rec_name` varchar(255) NOT NULL COMMENT '职位名称',
  `rec_num` varchar(255) NOT NULL DEFAULT '0' COMMENT '招聘人数',
  `rec_address` varchar(255) NOT NULL COMMENT '工作地点',
  `rec_claim` text NOT NULL COMMENT '招聘要求',
  `rec_salary` varchar(255) NOT NULL COMMENT '招聘薪资',
  `rec_time` datetime NOT NULL COMMENT '招聘时间',
  `rec_type` int(11) NOT NULL DEFAULT '0' COMMENT '0:校园招聘，1：社会招聘',
  PRIMARY KEY (`rec_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recruitment
-- ----------------------------
INSERT INTO `recruitment` VALUES ('1', '工程师', '1', '深圳市南山区南海大道海王大厦A座7F', '掌握相关的技术支持。', '面议', '2018-09-03 10:04:59', '1');
INSERT INTO `recruitment` VALUES ('2', '项目组长', '1', '深圳市南山区南海大道海王大厦A座7F', '管理所有项目的详细', '面议', '2018-09-03 10:05:36', '1');
INSERT INTO `recruitment` VALUES ('3', '实习工程师', '2', '深圳市南山区南海大道海王大厦A座7F', '吃苦耐劳', '面议', '2018-09-03 10:06:15', '0');
INSERT INTO `recruitment` VALUES ('4', '实习助理', '1', '深圳市南山区南海大道海王大厦A座7F', '辅助组长管理相关事务', '面议', '2018-09-03 10:06:39', '0');
