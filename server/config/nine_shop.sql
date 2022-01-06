/*
Navicat MySQL Data Transfer

Source Server         : MySQL5.7
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : nine_shop

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2021-01-10 15:22:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL,
  `amount` double(255,0) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('13', '15975238476', '1000', '充值', '2020-11-25 20:38:24', '2020-11-25 20:38:24');
INSERT INTO `account` VALUES ('14', '15975238476', '-948', '商城消费', '2020-11-25 21:02:48', '2020-11-25 21:02:48');
INSERT INTO `account` VALUES ('15', '15975238476', '10000', '充值', '2020-11-25 21:03:13', '2020-11-25 21:03:13');
INSERT INTO `account` VALUES ('16', '15975238476', '-8970', '商城消费', '2020-11-25 21:04:08', '2020-11-25 21:04:08');
INSERT INTO `account` VALUES ('17', '15975238476', '-79', '商城消费', '2020-11-30 20:30:09', '2020-11-30 20:30:09');
INSERT INTO `account` VALUES ('18', '15975238476', '-79', '商城消费', '2020-12-02 08:58:15', '2020-12-02 08:58:15');
INSERT INTO `account` VALUES ('19', '15975238476', '1000', '充值', '2020-12-02 08:58:32', '2020-12-02 08:58:32');
INSERT INTO `account` VALUES ('20', '15975238476', '-457', '商城消费', '2020-12-04 15:32:13', '2020-12-04 15:32:13');
INSERT INTO `account` VALUES ('21', '15975238476', '-79', '商城消费', '2020-12-04 15:56:30', '2020-12-04 15:56:30');
INSERT INTO `account` VALUES ('22', '15975238476', '-299', '商城消费', '2020-12-07 15:19:56', '2020-12-07 15:19:56');
INSERT INTO `account` VALUES ('23', '15975238476', '-378', '商城消费', '2020-12-07 15:24:08', '2020-12-07 15:24:08');
INSERT INTO `account` VALUES ('24', '15975238476', '10000', '充值', '2020-12-07 15:24:40', '2020-12-07 15:24:40');
INSERT INTO `account` VALUES ('25', '15975238476', '-79', '商城消费', '2020-12-08 12:37:14', '2020-12-08 12:37:14');
INSERT INTO `account` VALUES ('26', '15975238476', '-79', '商城消费', '2020-12-08 12:37:58', '2020-12-08 12:37:58');
INSERT INTO `account` VALUES ('27', '15975238476', '-79', '商城消费', '2020-12-08 12:39:31', '2020-12-08 12:39:31');
INSERT INTO `account` VALUES ('28', '15975238476', '-79', '商城消费', '2020-12-08 13:34:33', '2020-12-08 13:34:33');
INSERT INTO `account` VALUES ('29', '15975238476', '-79', '商城消费', '2020-12-08 13:46:25', '2020-12-08 13:46:25');
INSERT INTO `account` VALUES ('30', '15975238476', '-897', '商城消费', '2020-12-08 13:47:01', '2020-12-08 13:47:01');
INSERT INTO `account` VALUES ('31', '15975238476', '-299', '商城消费', '2020-12-08 13:47:16', '2020-12-08 13:47:16');
INSERT INTO `account` VALUES ('32', '15975238476', '-790', '商城消费', '2020-12-08 14:47:37', '2020-12-08 14:47:37');
INSERT INTO `account` VALUES ('33', '15975238476', '-378', '商城消费', '2020-12-08 14:56:01', '2020-12-08 14:56:01');
INSERT INTO `account` VALUES ('34', '15975238476', '-378', '商城消费', '2020-12-08 14:56:43', '2020-12-08 14:56:43');
INSERT INTO `account` VALUES ('35', '15975238476', '-668', '商城消费', '2020-12-08 15:20:28', '2020-12-08 15:20:28');
INSERT INTO `account` VALUES ('36', '15975238476', '-59', '商城消费', '2020-12-08 15:20:58', '2020-12-08 15:20:58');
INSERT INTO `account` VALUES ('37', '15975238476', '1000', '充值', '2020-12-08 15:44:54', '2020-12-08 15:44:54');
INSERT INTO `account` VALUES ('38', '15975238476', '1000', '充值', '2020-12-11 18:04:07', '2020-12-11 18:04:07');
INSERT INTO `account` VALUES ('39', '15975238476', '-236', '商城消费', '2020-12-11 20:37:35', '2020-12-11 20:37:35');
INSERT INTO `account` VALUES ('40', '15975238476', '1000', '充值', '2020-12-12 22:55:18', '2020-12-12 22:55:18');
INSERT INTO `account` VALUES ('41', '15975238476', '-51', '商城消费', '2020-12-12 22:58:03', '2020-12-12 22:58:03');
INSERT INTO `account` VALUES ('42', '15975238476', '-299', '商城消费', '2020-12-12 23:09:07', '2020-12-12 23:09:07');
INSERT INTO `account` VALUES ('43', '15975238476', '-17', '商城消费', '2020-12-31 17:09:41', '2020-12-31 17:09:41');
INSERT INTO `account` VALUES ('44', '15975238476', '-17', '商城消费', '2020-12-31 17:09:46', '2020-12-31 17:09:46');
INSERT INTO `account` VALUES ('45', '15975238476', '-17', '商城消费', '2020-12-31 17:09:47', '2020-12-31 17:09:47');
INSERT INTO `account` VALUES ('46', '15975238476', '-17', '商城消费', '2020-12-31 17:09:47', '2020-12-31 17:09:47');
INSERT INTO `account` VALUES ('47', '15975238476', '-17', '商城消费', '2020-12-31 17:10:10', '2020-12-31 17:10:10');
INSERT INTO `account` VALUES ('48', '15975238476', '-17', '商城消费', '2020-12-31 17:10:57', '2020-12-31 17:10:57');
INSERT INTO `account` VALUES ('49', '15975238476', '-17', '商城消费', '2020-12-31 17:11:00', '2020-12-31 17:11:00');
INSERT INTO `account` VALUES ('50', '15975238476', '-17', '商城消费', '2020-12-31 17:11:00', '2020-12-31 17:11:00');
INSERT INTO `account` VALUES ('51', '15975238476', '-17', '商城消费', '2020-12-31 17:11:01', '2020-12-31 17:11:01');
INSERT INTO `account` VALUES ('52', '15975238476', '-17', '商城消费', '2020-12-31 17:11:01', '2020-12-31 17:11:01');
INSERT INTO `account` VALUES ('53', '15975238476', '-17', '商城消费', '2020-12-31 17:11:25', '2020-12-31 17:11:25');
INSERT INTO `account` VALUES ('54', '15975238476', '-17', '商城消费', '2021-01-03 20:30:37', '2021-01-03 20:30:37');
INSERT INTO `account` VALUES ('55', '15975238476', '-17', '商城消费', '2021-01-03 20:31:20', '2021-01-03 20:31:20');
INSERT INTO `account` VALUES ('56', '15975238476', '-17', '商城消费', '2021-01-03 20:31:22', '2021-01-03 20:31:22');
INSERT INTO `account` VALUES ('57', '15975238476', '-17', '商城消费', '2021-01-03 20:31:31', '2021-01-03 20:31:31');
INSERT INTO `account` VALUES ('58', '15975238476', '-17', '商城消费', '2021-01-03 20:32:26', '2021-01-03 20:32:26');
INSERT INTO `account` VALUES ('59', '15975238476', '-17', '商城消费', '2021-01-03 20:43:14', '2021-01-03 20:43:14');
INSERT INTO `account` VALUES ('60', '15975238476', '-17', '商城消费', '2021-01-03 20:44:02', '2021-01-03 20:44:02');
INSERT INTO `account` VALUES ('61', '15975238476', '-17', '商城消费', '2021-01-03 21:08:07', '2021-01-03 21:08:07');
INSERT INTO `account` VALUES ('62', '15975238476', '-17', '商城消费', '2021-01-03 21:15:12', '2021-01-03 21:15:12');
INSERT INTO `account` VALUES ('63', '15975238476', '-17', '商城消费', '2021-01-03 21:16:29', '2021-01-03 21:16:29');
INSERT INTO `account` VALUES ('64', '15975238476', '-17', '商城消费', '2021-01-03 21:16:44', '2021-01-03 21:16:44');
INSERT INTO `account` VALUES ('65', '15975238476', '-17', '商城消费', '2021-01-03 21:27:45', '2021-01-03 21:27:45');
INSERT INTO `account` VALUES ('66', '15975238476', '-398', '商城消费', '2021-01-03 21:33:14', '2021-01-03 21:33:14');
INSERT INTO `account` VALUES ('67', '15975238476', '-398', '商城消费', '2021-01-03 21:34:01', '2021-01-03 21:34:01');
INSERT INTO `account` VALUES ('68', '15975238476', '-398', '商城消费', '2021-01-03 21:35:04', '2021-01-03 21:35:04');
INSERT INTO `account` VALUES ('69', '15975238476', '-398', '商城消费', '2021-01-03 21:35:06', '2021-01-03 21:35:06');
INSERT INTO `account` VALUES ('70', '15975238476', '-398', '商城消费', '2021-01-03 21:35:06', '2021-01-03 21:35:06');
INSERT INTO `account` VALUES ('71', '15975238476', '-398', '商城消费', '2021-01-03 21:35:06', '2021-01-03 21:35:06');
INSERT INTO `account` VALUES ('72', '15975238476', '-398', '商城消费', '2021-01-03 21:35:07', '2021-01-03 21:35:07');
INSERT INTO `account` VALUES ('73', '15975238476', '-398', '商城消费', '2021-01-03 21:35:07', '2021-01-03 21:35:07');
INSERT INTO `account` VALUES ('74', '15975238476', '-398', '商城消费', '2021-01-03 21:35:07', '2021-01-03 21:35:07');
INSERT INTO `account` VALUES ('75', '15975238476', '-398', '商城消费', '2021-01-03 21:35:08', '2021-01-03 21:35:08');
INSERT INTO `account` VALUES ('76', '15975238476', '-398', '商城消费', '2021-01-03 21:35:45', '2021-01-03 21:35:45');
INSERT INTO `account` VALUES ('77', '15975238476', '-168', '商城消费', '2021-01-03 21:36:25', '2021-01-03 21:36:25');
INSERT INTO `account` VALUES ('78', '15975238476', '-17', '商城消费', '2021-01-03 21:36:58', '2021-01-03 21:36:58');
INSERT INTO `account` VALUES ('79', '15975238476', '-17', '商城消费', '2021-01-03 21:41:26', '2021-01-03 21:41:26');
INSERT INTO `account` VALUES ('80', '15975238476', '-17', '商城消费', '2021-01-03 21:44:49', '2021-01-03 21:44:49');
INSERT INTO `account` VALUES ('81', '15975238476', '-17', '商城消费', '2021-01-03 21:57:44', '2021-01-03 21:57:44');
INSERT INTO `account` VALUES ('82', '15975238476', '-17', '商城消费', '2021-01-03 21:58:24', '2021-01-03 21:58:24');
INSERT INTO `account` VALUES ('83', '15975238476', '-398', '商城消费', '2021-01-03 21:59:21', '2021-01-03 21:59:21');
INSERT INTO `account` VALUES ('84', '15975238476', '-398', '商城消费', '2021-01-03 22:02:06', '2021-01-03 22:02:06');
INSERT INTO `account` VALUES ('85', '15975238476', '-398', '商城消费', '2021-01-03 22:02:16', '2021-01-03 22:02:16');
INSERT INTO `account` VALUES ('86', '15975238476', '-17', '商城消费', '2021-01-03 22:02:39', '2021-01-03 22:02:39');
INSERT INTO `account` VALUES ('87', '15975238476', '-398', '商城消费', '2021-01-03 22:13:22', '2021-01-03 22:13:22');
INSERT INTO `account` VALUES ('88', '15975238476', '-398', '商城消费', '2021-01-03 22:13:50', '2021-01-03 22:13:50');
INSERT INTO `account` VALUES ('89', '15975238476', '-398', '商城消费', '2021-01-03 22:14:56', '2021-01-03 22:14:56');
INSERT INTO `account` VALUES ('90', '15975238476', '-398', '商城消费', '2021-01-03 22:15:14', '2021-01-03 22:15:14');
INSERT INTO `account` VALUES ('91', '15975238476', '-17', '商城消费', '2021-01-03 22:15:45', '2021-01-03 22:15:45');
INSERT INTO `account` VALUES ('92', '15975238476', '-17', '商城消费', '2021-01-03 22:16:03', '2021-01-03 22:16:03');
INSERT INTO `account` VALUES ('93', '15975238476', '-17', '商城消费', '2021-01-06 10:12:29', '2021-01-06 10:12:29');
INSERT INTO `account` VALUES ('94', '15975238476', '-17', '商城消费', '2021-01-10 15:15:02', '2021-01-10 15:15:02');

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT 'Banner名称，通常作为标识',
  `description` varchar(255) DEFAULT NULL COMMENT 'Banner描述',
  `delete_time` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='banner管理表';

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('1', '测试广告', '第一次测试广告功能', null, '2020-12-31 09:51:58', null);
INSERT INTO `banner` VALUES ('6', '123', '123', null, '2020-12-28 10:22:14', '2020-12-28 10:22:14');

-- ----------------------------
-- Table structure for banner_item
-- ----------------------------
DROP TABLE IF EXISTS `banner_item`;
CREATE TABLE `banner_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_id` int(11) NOT NULL COMMENT '外键，关联image表',
  `key_word` varchar(100) NOT NULL COMMENT '执行关键字，根据不同的type含义不同',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '跳转类型，可能导向商品，可能导向专题，可能导向其他。0，无导向；1：导向商品;2:导向专题',
  `delete_time` int(11) DEFAULT NULL,
  `banner_id` int(11) NOT NULL COMMENT '外键，关联banner表',
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='banner子项表';

-- ----------------------------
-- Records of banner_item
-- ----------------------------
INSERT INTO `banner_item` VALUES ('1', '1', '128', '1', null, '1', '2020-12-31 15:38:48', null);
INSERT INTO `banner_item` VALUES ('2', '2', '64', '1', null, '1', null, null);
INSERT INTO `banner_item` VALUES ('3', '3', '7', '1', null, '1', null, null);
INSERT INTO `banner_item` VALUES ('4', '4', '68', '1', null, '1', null, null);
INSERT INTO `banner_item` VALUES ('5', '5', '31', '1', null, '1', null, null);
INSERT INTO `banner_item` VALUES ('6', '6', '56', '1', null, '1', null, null);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `topic_img_id` int(11) DEFAULT NULL COMMENT '外键，关联image表',
  `delete_time` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='商品类目';

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '数码电器', '7', null, '数码宝贝', null, null);
INSERT INTO `category` VALUES ('2', '时尚衣裤', '8', null, '时尚衣裤', null, null);
INSERT INTO `category` VALUES ('3', '九商百货', '9', null, '九商百货', null, null);
INSERT INTO `category` VALUES ('4', '魅力女性', '10', null, '魅力女性', null, null);
INSERT INTO `category` VALUES ('5', '新鲜水果', '11', null, '新鲜水果', null, null);

-- ----------------------------
-- Table structure for category_item
-- ----------------------------
DROP TABLE IF EXISTS `category_item`;
CREATE TABLE `category_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `state` int(2) DEFAULT NULL,
  `category_item_img` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category_item
-- ----------------------------
INSERT INTO `category_item` VALUES ('1', '手机', '1', null, '/uploads/1606101580272.png', null, null);
INSERT INTO `category_item` VALUES ('2', '电脑', '1', null, '/uploads/1606101586019.png', null, null);
INSERT INTO `category_item` VALUES ('3', '男士夹克', '2', null, '/uploads/1606102062529.jpg', null, null);
INSERT INTO `category_item` VALUES ('4', '男士T恤', '2', null, '/uploads/1606102068367.jpg', null, null);
INSERT INTO `category_item` VALUES ('5', '男士牛仔裤', '2', null, '/uploads/1606102074011.jpg', null, null);
INSERT INTO `category_item` VALUES ('6', '男士休闲裤', '2', null, '/uploads/1606102076656.jpg', null, null);
INSERT INTO `category_item` VALUES ('7', '女士连衣裙', '2', null, '/uploads/1606102079696.jpg', null, null);
INSERT INTO `category_item` VALUES ('8', '女士卫衣', '2', null, '/uploads/1606102087429.jpg', null, null);
INSERT INTO `category_item` VALUES ('9', '空调', '1', null, '/uploads/1606101590366.jpg', null, null);
INSERT INTO `category_item` VALUES ('10', '电磁炉', '1', null, '/uploads/1606101604149.jpg', null, null);
INSERT INTO `category_item` VALUES ('11', '电水壶', '1', null, '/uploads/1606101610180.jpg', null, null);
INSERT INTO `category_item` VALUES ('12', '游戏机', '1', null, '/uploads/1606101616845.jpg', null, null);
INSERT INTO `category_item` VALUES ('13', '数据线', '1', null, '/uploads/1606101619603.jpg', null, null);
INSERT INTO `category_item` VALUES ('14', '女士婚纱', '2', null, '/uploads/1606102092160.jpg', null, null);
INSERT INTO `category_item` VALUES ('15', '女士牛仔库', '2', null, '/uploads/1606102095460.jpg', null, null);
INSERT INTO `category_item` VALUES ('16', '香水', '4', null, '/uploads/1606102659724.jpg', null, null);
INSERT INTO `category_item` VALUES ('17', '口红', '4', null, '/uploads/1606102662973.jpg', null, null);
INSERT INTO `category_item` VALUES ('18', '唇釉', '4', null, '/uploads/1607428110505.jpg', null, null);
INSERT INTO `category_item` VALUES ('19', '粉饼', '4', null, '/uploads/1607428113737.jpg', null, null);
INSERT INTO `category_item` VALUES ('20', '高光', '4', null, '/uploads/1607428116858.jpg', null, null);
INSERT INTO `category_item` VALUES ('21', '眼线笔', '4', null, '/uploads/1607428127696.jpg', null, null);
INSERT INTO `category_item` VALUES ('22', '遮瑕', '4', null, '/uploads/1607428130302.jpg', null, null);
INSERT INTO `category_item` VALUES ('23', '休闲食品', '3', null, '/uploads/1607428522694.jpg', null, null);
INSERT INTO `category_item` VALUES ('24', '饼干蛋糕', '3', null, '/uploads/1607428526496.jpg', null, null);
INSERT INTO `category_item` VALUES ('25', '大米', '3', null, '/uploads/1607428529883.jpg', null, null);
INSERT INTO `category_item` VALUES ('26', '食用油', '3', null, '/uploads/1607428532597.jpg', null, null);
INSERT INTO `category_item` VALUES ('27', '牛奶制品', '3', null, '/uploads/1607428536389.jpg', null, null);
INSERT INTO `category_item` VALUES ('28', '厨具', '3', null, '/uploads/1607428539166.jpg', null, null);
INSERT INTO `category_item` VALUES ('29', '奇异果', '5', null, '/uploads/1607429066393.jpg', null, null);
INSERT INTO `category_item` VALUES ('30', '柚子', '5', null, '/uploads/1607429069060.png', null, null);
INSERT INTO `category_item` VALUES ('31', '榴莲', '5', null, '/uploads/1607429071806.jpg', null, null);
INSERT INTO `category_item` VALUES ('32', '香蕉', '5', null, '/uploads/1607429074440.jpg', null, null);
INSERT INTO `category_item` VALUES ('33', '苹果', '5', null, '/uploads/1607429077198.jpg', null, null);
INSERT INTO `category_item` VALUES ('34', '橙子', '5', null, '/uploads/1607429080417.jpg', null, null);
INSERT INTO `category_item` VALUES ('35', '樱桃', '5', null, '/uploads/1607429083224.png', null, null);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `content` text,
  `stars` int(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '16', '1', '111111111111', '5', '2020-12-02 17:20:42', '2020-12-02 17:20:42');
INSERT INTO `comment` VALUES ('2', '16', '1', '好看！', '5', '2020-12-03 10:30:27', '2020-12-03 10:30:27');
INSERT INTO `comment` VALUES ('3', '16', '1', '我是测试机器人我是测试机器人我是测试机器人我是测试机器人我是测试机器人我是测试机器人我是测试机器人我是测试机器人我是测试机器人我是测试机器人我是测试机器人我是测试机器人我是测试机器人我是测试机器人我是测试机器人我是测试机器人我是测试机器人', '3', '2020-12-03 11:03:16', '2020-12-03 11:03:16');
INSERT INTO `comment` VALUES ('4', '16', '1', '芜湖！起飞！', '1', '2020-12-03 11:05:38', '2020-12-03 11:05:38');
INSERT INTO `comment` VALUES ('5', '16', '1', '醒醒，起来敲代码了', '4', '2020-12-03 11:08:25', '2020-12-03 11:08:25');
INSERT INTO `comment` VALUES ('6', '16', '1', '我是测试分页数据！', '2', '2020-12-03 16:11:21', '2020-12-03 16:11:21');
INSERT INTO `comment` VALUES ('7', '16', '1', '打工人打工魂打工都是人上人', '5', '2020-12-04 09:41:38', '2020-12-04 09:41:38');

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL COMMENT '图片路径',
  `from` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 来自本地，2 来自公网',
  `delete_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COMMENT='图片总表';

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES ('1', '/uploads/1605950661127.jpg', '1', null, '2020-12-31 15:38:48', null);
INSERT INTO `image` VALUES ('2', '/uploads/1605950664705.jpg', '1', null, null, null);
INSERT INTO `image` VALUES ('3', '/uploads/1605950667568.jpg', '1', null, null, null);
INSERT INTO `image` VALUES ('4', '/uploads/1605950670236.jpg', '1', null, null, null);
INSERT INTO `image` VALUES ('5', '/uploads/1605950673513.jpg', '1', null, null, null);
INSERT INTO `image` VALUES ('6', '/uploads/1605950910259.jpg', '1', null, null, null);
INSERT INTO `image` VALUES ('7', '/uploads/1605956403741.png', '1', null, null, null);
INSERT INTO `image` VALUES ('8', '/uploads/1605956408758.png', '1', null, null, null);
INSERT INTO `image` VALUES ('9', '/uploads/1605956411844.png', '1', null, null, null);
INSERT INTO `image` VALUES ('10', '/uploads/1605956414963.png', '1', null, null, null);
INSERT INTO `image` VALUES ('11', '/uploads/1605956418212.png', '1', null, null, null);
INSERT INTO `image` VALUES ('12', '/uploads/1605956421313.png', '1', null, null, null);
INSERT INTO `image` VALUES ('13', '/uploads/1605959251539.jpg', '1', null, null, null);
INSERT INTO `image` VALUES ('70', '1', '1', null, null, null);
INSERT INTO `image` VALUES ('71', '/uploads/1608969510190.jpg', '1', null, '2020-12-26 15:58:32', '2020-12-26 15:58:32');
INSERT INTO `image` VALUES ('72', '/uploads/1608971123616.png', '1', null, '2020-12-26 16:25:27', '2020-12-26 16:25:27');
INSERT INTO `image` VALUES ('73', '/uploads/2020-12-26/1608971880666.jpg', '1', null, '2020-12-26 16:38:03', '2020-12-26 16:38:03');
INSERT INTO `image` VALUES ('74', '/uploads/2020-12-26/1608971975357.jpg', '1', null, '2020-12-26 16:39:47', '2020-12-26 16:39:47');
INSERT INTO `image` VALUES ('75', '/uploads/2020-12-26/1608972015153.jpg', '1', null, '2020-12-26 16:40:16', '2020-12-26 16:40:16');
INSERT INTO `image` VALUES ('76', '/uploads/2020-12-26/1608972094718.jpg', '1', null, '2020-12-26 16:41:36', '2020-12-26 16:41:36');
INSERT INTO `image` VALUES ('77', '/uploads/2020-12-26/1608972262100.jpg', '1', null, '2020-12-26 16:44:23', '2020-12-26 16:44:23');
INSERT INTO `image` VALUES ('78', '/uploads/2020-12-27/1609030280467.jpg', '1', null, '2020-12-27 08:51:21', '2020-12-26 16:53:25');
INSERT INTO `image` VALUES ('79', '', '1', null, '2020-12-27 09:22:58', '2020-12-27 09:22:58');
INSERT INTO `image` VALUES ('80', '', '1', null, '2020-12-27 09:23:54', '2020-12-27 09:23:54');
INSERT INTO `image` VALUES ('81', '', '1', null, '2020-12-27 09:24:35', '2020-12-27 09:24:35');
INSERT INTO `image` VALUES ('82', '', '1', null, '2020-12-27 09:25:29', '2020-12-27 09:25:29');
INSERT INTO `image` VALUES ('83', '', '1', null, '2020-12-27 09:29:50', '2020-12-27 09:29:50');
INSERT INTO `image` VALUES ('88', '/uploads/2020-12-28/1609118657283.jpg', '1', null, '2020-12-28 09:24:18', '2020-12-28 09:24:18');
INSERT INTO `image` VALUES ('89', '/uploads/2020-12-28/1609118657283.jpg', '1', null, '2020-12-28 09:27:50', '2020-12-28 09:27:50');
INSERT INTO `image` VALUES ('90', '/uploads/2020-12-28/1609118657283.jpg', '1', null, '2020-12-28 09:28:41', '2020-12-28 09:28:41');
INSERT INTO `image` VALUES ('94', '/uploads/2020-12-29/1609209689902.png', '1', null, '2020-12-29 10:41:33', '2020-12-29 10:41:33');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(20) NOT NULL COMMENT '订单号',
  `user_id` int(11) NOT NULL COMMENT '外键，用户id，注意并不是openid',
  `total_price` decimal(6,2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:未支付， 2：已支付，3：已发货 , 4: 已支付，但库存不足',
  `total_count` int(11) NOT NULL DEFAULT '0',
  `address` varchar(255) DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_no` (`order_no`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('49', '1607410603099', '16', '378.00', '1', '2', '广东省河源市源城区河源职业技术学院', null, '2020-12-08 14:56:43', '2020-12-08 14:56:43');
INSERT INTO `order` VALUES ('50', '1607412028662', '16', '668.00', '1', '2', '广东省河源市源城区河源职业技术学院', null, '2020-12-08 15:20:28', '2020-12-08 15:20:28');
INSERT INTO `order` VALUES ('51', '1607412058942', '16', '59.00', '1', '1', '北京市北京市东城区北京大学', null, '2020-12-08 15:20:58', '2020-12-08 15:20:58');
INSERT INTO `order` VALUES ('52', '1607690255553', '16', '236.00', '1', '4', '广东省河源市源城区河源职业技术学院', null, '2020-12-11 20:37:35', '2020-12-11 20:37:35');
INSERT INTO `order` VALUES ('53', '1607785083570', '16', '51.00', '1', '3', '北京市北京市东城区北京大学', null, '2020-12-12 22:58:03', '2020-12-12 22:58:03');
INSERT INTO `order` VALUES ('54', '1607785747955', '16', '299.00', '1', '1', '北京市北京市东城区北京大学', null, '2020-12-12 23:09:07', '2020-12-12 23:09:07');
INSERT INTO `order` VALUES ('56', '1609405781857', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2020-12-31 17:09:41', '2020-12-31 17:09:41');
INSERT INTO `order` VALUES ('57', '1609405786769', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2020-12-31 17:09:46', '2020-12-31 17:09:46');
INSERT INTO `order` VALUES ('58', '1609405787345', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2020-12-31 17:09:47', '2020-12-31 17:09:47');
INSERT INTO `order` VALUES ('59', '1609405787601', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2020-12-31 17:09:47', '2020-12-31 17:09:47');
INSERT INTO `order` VALUES ('60', '1609405810105', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2020-12-31 17:10:10', '2020-12-31 17:10:10');
INSERT INTO `order` VALUES ('61', '1609405857808', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2020-12-31 17:10:57', '2020-12-31 17:10:57');
INSERT INTO `order` VALUES ('62', '1609405860674', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2020-12-31 17:11:00', '2020-12-31 17:11:00');
INSERT INTO `order` VALUES ('63', '1609405860863', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2020-12-31 17:11:00', '2020-12-31 17:11:00');
INSERT INTO `order` VALUES ('64', '1609405861080', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2020-12-31 17:11:01', '2020-12-31 17:11:01');
INSERT INTO `order` VALUES ('65', '1609405861263', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2020-12-31 17:11:01', '2020-12-31 17:11:01');
INSERT INTO `order` VALUES ('66', '1609405885561', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2020-12-31 17:11:25', '2020-12-31 17:11:25');
INSERT INTO `order` VALUES ('67', '1609677037955', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 20:30:38', '2021-01-03 20:30:38');
INSERT INTO `order` VALUES ('68', '1609677080618', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 20:31:20', '2021-01-03 20:31:20');
INSERT INTO `order` VALUES ('69', '1609677082194', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 20:31:22', '2021-01-03 20:31:22');
INSERT INTO `order` VALUES ('70', '1609677091907', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 20:31:31', '2021-01-03 20:31:31');
INSERT INTO `order` VALUES ('71', '1609677146306', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 20:32:26', '2021-01-03 20:32:26');
INSERT INTO `order` VALUES ('74', '1609679287970', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 21:08:07', '2021-01-03 21:08:07');
INSERT INTO `order` VALUES ('75', '1609679712731', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 21:15:12', '2021-01-03 21:15:12');
INSERT INTO `order` VALUES ('76', '1609679789097', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 21:16:29', '2021-01-03 21:16:29');
INSERT INTO `order` VALUES ('77', '1609679804560', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 21:16:44', '2021-01-03 21:16:44');
INSERT INTO `order` VALUES ('78', '1609680465062', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 21:27:45', '2021-01-03 21:27:45');
INSERT INTO `order` VALUES ('79', '1609680794406', '16', '398.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 21:33:14', '2021-01-03 21:33:14');
INSERT INTO `order` VALUES ('80', '1609680841711', '16', '398.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 21:34:01', '2021-01-03 21:34:01');
INSERT INTO `order` VALUES ('81', '1609680904551', '16', '398.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 21:35:04', '2021-01-03 21:35:04');
INSERT INTO `order` VALUES ('82', '1609680906223', '16', '398.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 21:35:06', '2021-01-03 21:35:06');
INSERT INTO `order` VALUES ('83', '1609680906470', '16', '398.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 21:35:06', '2021-01-03 21:35:06');
INSERT INTO `order` VALUES ('84', '1609680906991', '16', '398.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 21:35:06', '2021-01-03 21:35:06');
INSERT INTO `order` VALUES ('85', '1609680907205', '16', '398.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 21:35:07', '2021-01-03 21:35:07');
INSERT INTO `order` VALUES ('86', '1609680907591', '16', '398.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 21:35:07', '2021-01-03 21:35:07');
INSERT INTO `order` VALUES ('87', '1609680907783', '16', '398.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 21:35:07', '2021-01-03 21:35:07');
INSERT INTO `order` VALUES ('88', '1609680908199', '16', '398.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 21:35:08', '2021-01-03 21:35:08');
INSERT INTO `order` VALUES ('89', '1609680945831', '16', '398.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 21:35:45', '2021-01-03 21:35:45');
INSERT INTO `order` VALUES ('90', '1609680985350', '16', '168.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 21:36:25', '2021-01-03 21:36:25');
INSERT INTO `order` VALUES ('91', '1609681018318', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 21:36:58', '2021-01-03 21:36:58');
INSERT INTO `order` VALUES ('92', '1609681286983', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 21:41:26', '2021-01-03 21:41:26');
INSERT INTO `order` VALUES ('93', '1609681489022', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 21:44:49', '2021-01-03 21:44:49');
INSERT INTO `order` VALUES ('94', '1609682264717', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 21:57:44', '2021-01-03 21:57:44');
INSERT INTO `order` VALUES ('95', '1609682304205', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 21:58:24', '2021-01-03 21:58:24');
INSERT INTO `order` VALUES ('96', '1609682361246', '16', '398.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 21:59:21', '2021-01-03 21:59:21');
INSERT INTO `order` VALUES ('97', '1609682526235', '16', '398.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 22:02:06', '2021-01-03 22:02:06');
INSERT INTO `order` VALUES ('98', '1609682536445', '16', '398.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 22:02:16', '2021-01-03 22:02:16');
INSERT INTO `order` VALUES ('99', '1609682559869', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 22:02:39', '2021-01-03 22:02:39');
INSERT INTO `order` VALUES ('100', '1609683202589', '16', '398.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 22:13:22', '2021-01-03 22:13:22');
INSERT INTO `order` VALUES ('101', '1609683230012', '16', '398.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 22:13:50', '2021-01-03 22:13:50');
INSERT INTO `order` VALUES ('102', '1609683296804', '16', '398.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 22:14:56', '2021-01-03 22:14:56');
INSERT INTO `order` VALUES ('103', '1609683314220', '16', '398.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 22:15:14', '2021-01-03 22:15:14');
INSERT INTO `order` VALUES ('104', '1609683345228', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 22:15:45', '2021-01-03 22:15:45');
INSERT INTO `order` VALUES ('105', '1609683363373', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-03 22:16:03', '2021-01-03 22:16:03');
INSERT INTO `order` VALUES ('106', '1609899149301', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-06 10:12:29', '2021-01-06 10:12:29');
INSERT INTO `order` VALUES ('107', '1610262902311', '16', '17.00', '1', '1', '广东省河源市源城区河源职业技术学院', null, '2021-01-10 15:15:02', '2021-01-10 15:15:02');

-- ----------------------------
-- Table structure for order_product
-- ----------------------------
DROP TABLE IF EXISTS `order_product`;
CREATE TABLE `order_product` (
  `order_id` int(11) NOT NULL COMMENT '联合主键，订单id',
  `product_id` int(11) NOT NULL COMMENT '联合主键，商品id',
  `count` int(11) NOT NULL COMMENT '商品数量',
  `delete_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`product_id`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_product
-- ----------------------------
INSERT INTO `order_product` VALUES ('49', '1', '1', null, '2020-12-08 14:56:43', '2020-12-08 14:56:43');
INSERT INTO `order_product` VALUES ('49', '2', '1', null, '2020-12-08 14:56:43', '2020-12-08 14:56:43');
INSERT INTO `order_product` VALUES ('54', '2', '1', null, '2020-12-12 23:09:07', '2020-12-12 23:09:07');
INSERT INTO `order_product` VALUES ('51', '3', '1', null, '2020-12-08 15:20:58', '2020-12-08 15:20:58');
INSERT INTO `order_product` VALUES ('50', '4', '1', null, '2020-12-08 15:20:28', '2020-12-08 15:20:28');
INSERT INTO `order_product` VALUES ('50', '5', '1', null, '2020-12-08 15:20:28', '2020-12-08 15:20:28');
INSERT INTO `order_product` VALUES ('90', '145', '1', null, '2021-01-03 21:36:25', '2021-01-03 21:36:25');
INSERT INTO `order_product` VALUES ('52', '146', '4', null, '2020-12-11 20:37:35', '2020-12-11 20:37:35');
INSERT INTO `order_product` VALUES ('53', '147', '3', null, '2020-12-12 22:58:03', '2020-12-12 22:58:03');
INSERT INTO `order_product` VALUES ('56', '147', '1', null, '2020-12-31 17:09:41', '2020-12-31 17:09:41');
INSERT INTO `order_product` VALUES ('57', '147', '1', null, '2020-12-31 17:09:46', '2020-12-31 17:09:46');
INSERT INTO `order_product` VALUES ('58', '147', '1', null, '2020-12-31 17:09:47', '2020-12-31 17:09:47');
INSERT INTO `order_product` VALUES ('59', '147', '1', null, '2020-12-31 17:09:47', '2020-12-31 17:09:47');
INSERT INTO `order_product` VALUES ('60', '147', '1', null, '2020-12-31 17:10:10', '2020-12-31 17:10:10');
INSERT INTO `order_product` VALUES ('61', '147', '1', null, '2020-12-31 17:10:57', '2020-12-31 17:10:57');
INSERT INTO `order_product` VALUES ('62', '147', '1', null, '2020-12-31 17:11:00', '2020-12-31 17:11:00');
INSERT INTO `order_product` VALUES ('63', '147', '1', null, '2020-12-31 17:11:00', '2020-12-31 17:11:00');
INSERT INTO `order_product` VALUES ('64', '147', '1', null, '2020-12-31 17:11:01', '2020-12-31 17:11:01');
INSERT INTO `order_product` VALUES ('65', '147', '1', null, '2020-12-31 17:11:01', '2020-12-31 17:11:01');
INSERT INTO `order_product` VALUES ('66', '147', '1', null, '2020-12-31 17:11:25', '2020-12-31 17:11:25');
INSERT INTO `order_product` VALUES ('67', '147', '1', null, '2021-01-03 20:30:38', '2021-01-03 20:30:38');
INSERT INTO `order_product` VALUES ('68', '147', '1', null, '2021-01-03 20:31:20', '2021-01-03 20:31:20');
INSERT INTO `order_product` VALUES ('69', '147', '1', null, '2021-01-03 20:31:22', '2021-01-03 20:31:22');
INSERT INTO `order_product` VALUES ('70', '147', '1', null, '2021-01-03 20:31:31', '2021-01-03 20:31:31');
INSERT INTO `order_product` VALUES ('71', '147', '1', null, '2021-01-03 20:32:26', '2021-01-03 20:32:26');
INSERT INTO `order_product` VALUES ('74', '147', '1', null, '2021-01-03 21:08:07', '2021-01-03 21:08:07');
INSERT INTO `order_product` VALUES ('75', '147', '1', null, '2021-01-03 21:15:12', '2021-01-03 21:15:12');
INSERT INTO `order_product` VALUES ('76', '147', '1', null, '2021-01-03 21:16:29', '2021-01-03 21:16:29');
INSERT INTO `order_product` VALUES ('77', '147', '1', null, '2021-01-03 21:16:44', '2021-01-03 21:16:44');
INSERT INTO `order_product` VALUES ('78', '147', '1', null, '2021-01-03 21:27:45', '2021-01-03 21:27:45');
INSERT INTO `order_product` VALUES ('91', '147', '1', null, '2021-01-03 21:36:58', '2021-01-03 21:36:58');
INSERT INTO `order_product` VALUES ('92', '147', '1', null, '2021-01-03 21:41:26', '2021-01-03 21:41:26');
INSERT INTO `order_product` VALUES ('93', '147', '1', null, '2021-01-03 21:44:49', '2021-01-03 21:44:49');
INSERT INTO `order_product` VALUES ('94', '147', '1', null, '2021-01-03 21:57:44', '2021-01-03 21:57:44');
INSERT INTO `order_product` VALUES ('95', '147', '1', null, '2021-01-03 21:58:24', '2021-01-03 21:58:24');
INSERT INTO `order_product` VALUES ('99', '147', '1', null, '2021-01-03 22:02:39', '2021-01-03 22:02:39');
INSERT INTO `order_product` VALUES ('104', '147', '1', null, '2021-01-03 22:15:45', '2021-01-03 22:15:45');
INSERT INTO `order_product` VALUES ('105', '147', '1', null, '2021-01-03 22:16:03', '2021-01-03 22:16:03');
INSERT INTO `order_product` VALUES ('106', '147', '1', null, '2021-01-06 10:12:29', '2021-01-06 10:12:29');
INSERT INTO `order_product` VALUES ('107', '147', '1', null, '2021-01-10 15:15:02', '2021-01-10 15:15:02');
INSERT INTO `order_product` VALUES ('79', '152', '1', null, '2021-01-03 21:33:14', '2021-01-03 21:33:14');
INSERT INTO `order_product` VALUES ('80', '152', '1', null, '2021-01-03 21:34:01', '2021-01-03 21:34:01');
INSERT INTO `order_product` VALUES ('81', '152', '1', null, '2021-01-03 21:35:04', '2021-01-03 21:35:04');
INSERT INTO `order_product` VALUES ('82', '152', '1', null, '2021-01-03 21:35:06', '2021-01-03 21:35:06');
INSERT INTO `order_product` VALUES ('83', '152', '1', null, '2021-01-03 21:35:06', '2021-01-03 21:35:06');
INSERT INTO `order_product` VALUES ('84', '152', '1', null, '2021-01-03 21:35:06', '2021-01-03 21:35:06');
INSERT INTO `order_product` VALUES ('85', '152', '1', null, '2021-01-03 21:35:07', '2021-01-03 21:35:07');
INSERT INTO `order_product` VALUES ('86', '152', '1', null, '2021-01-03 21:35:07', '2021-01-03 21:35:07');
INSERT INTO `order_product` VALUES ('87', '152', '1', null, '2021-01-03 21:35:07', '2021-01-03 21:35:07');
INSERT INTO `order_product` VALUES ('88', '152', '1', null, '2021-01-03 21:35:08', '2021-01-03 21:35:08');
INSERT INTO `order_product` VALUES ('89', '152', '1', null, '2021-01-03 21:35:45', '2021-01-03 21:35:45');
INSERT INTO `order_product` VALUES ('96', '152', '1', null, '2021-01-03 21:59:21', '2021-01-03 21:59:21');
INSERT INTO `order_product` VALUES ('97', '152', '1', null, '2021-01-03 22:02:06', '2021-01-03 22:02:06');
INSERT INTO `order_product` VALUES ('98', '152', '1', null, '2021-01-03 22:02:16', '2021-01-03 22:02:16');
INSERT INTO `order_product` VALUES ('100', '152', '1', null, '2021-01-03 22:13:22', '2021-01-03 22:13:22');
INSERT INTO `order_product` VALUES ('101', '152', '1', null, '2021-01-03 22:13:50', '2021-01-03 22:13:50');
INSERT INTO `order_product` VALUES ('102', '152', '1', null, '2021-01-03 22:14:56', '2021-01-03 22:14:56');
INSERT INTO `order_product` VALUES ('103', '152', '1', null, '2021-01-03 22:15:14', '2021-01-03 22:15:14');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL COMMENT '商品名称',
  `price` decimal(6,2) NOT NULL COMMENT '价格,单位：分',
  `stock` int(11) NOT NULL DEFAULT '0' COMMENT '库存量',
  `delete_time` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `main_img_url` varchar(255) DEFAULT NULL COMMENT '主图ID号，这是一个反范式设计，有一定的冗余',
  `from` tinyint(4) NOT NULL DEFAULT '1' COMMENT '图片来自 1 本地 ，2公网',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL,
  `summary` varchar(50) DEFAULT NULL COMMENT '摘要',
  `img_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '韩国16brand布兰德懒人杂志眼影百变ins抖音同款不飞粉高光珠光闪光大地色自然裸妆桃花妆眼', '79.00', '1000', null, '19', '/uploads/1605959251539.jpg', '1', null, null, '韩国16brand布兰德懒人杂志眼影百变ins抖音同款不飞粉高光珠光闪光大地色自然裸妆桃花妆眼', null);
INSERT INTO `product` VALUES ('2', '纪梵希摇滚玫瑰口红', '299.00', '1000', null, '17', '/uploads/1605960396385.jpg', '1', null, null, '纪梵希摇滚玫瑰口红', null);
INSERT INTO `product` VALUES ('3', '美容院韩国束颜坊化妆品 精润水氧洁面泡沫150ml-新品', '59.00', '1000', null, '22', '/uploads/1605960941342.jpg', '1', null, null, '美容院韩国束颜坊化妆品 精润水氧洁面泡沫150ml-新品', null);
INSERT INTO `product` VALUES ('4', '欧莱雅男士水能护肤品男洗面奶套装面霜补水控油保湿滋润肤乳液擦脸油护脸霜玻尿酸水乳护肤套装男 水能保湿3件套：洁面膏+精华露+强润霜', '270.00', '1000', null, '22', '/uploads/1605960945874.jpg', '1', null, null, '洗面奶', null);
INSERT INTO `product` VALUES ('5', '欧诗漫OSM 水活奇迹恒润补水保湿化妆品套装 洁水乳护肤品礼盒女（洗面奶+爽肤水+精华+乳液）平衡水油', '398.00', '1000', null, '22', '/uploads/1607047467546.webp', '1', null, null, '欧诗漫OSM', null);
INSERT INTO `product` VALUES ('6', 'realme 真我Q2 4800万像素 120Hz畅速屏 双5G天玑800U 冲浪蓝孩 6GB+128GB 30W闪充 手机 OPPO提供售后支持', '1299.00', '1000', null, '1', '/uploads/1607499909771.jpg', '1', null, null, 'realme 真我Q2', null);
INSERT INTO `product` VALUES ('7', 'vivo iQOO Neo3', '2948.00', '100', null, '1', '/uploads/1607499912742.jpg', '1', null, null, 'vivo iQOO Neo3', null);
INSERT INTO `product` VALUES ('8', '柔宇ROYOLE FlexPai 2 新一代5G双模折叠屏手机 骁龙865旗舰四摄 类镜面平整度 柔派2 星空灰8GB+256GB', '9988.00', '1000', null, '1', '/uploads/1607499915853.jpg', '1', null, '2020-12-31 10:12:05', '柔宇ROYOLE FlexPai 2', null);
INSERT INTO `product` VALUES ('9', 'Redmi K30 王一博同款 120Hz流速屏 前置挖孔双摄 索尼6400万后置四摄', '1499.00', '1000', null, '1', '/uploads/1607499919113.jpg', '1', null, null, 'Redmi K30 王一博同款 120Hz流速屏 前置挖孔双摄 索尼6400万后置四摄', null);
INSERT INTO `product` VALUES ('10', '  小米（MI） Redmi 8A  ', '699.00', '1000', null, '1', '/uploads/1607499922163.jpg', '1', null, null, '  小米（MI） Redmi 8A  ', null);
INSERT INTO `product` VALUES ('11', '  荣耀9X PRO 麒麟810液冷散热 4000mAh超强续航 4800万三摄 6.59英寸全网通6GB+64GB 幻影紫HLK-AL10', '1399.00', '0', null, '1', '/uploads/1607499925368.jpg', '1', null, null, '  荣耀9X PRO 麒麟810液冷散热 4000mAh超强续航 4800万三摄 6.59英寸全网通', null);
INSERT INTO `product` VALUES ('12', '  天语（K-Touch） T2  ', '99.00', '0', null, '1', '/uploads/1607499928376.jpg', '1', null, null, '  天语（K-Touch） T2  ', null);
INSERT INTO `product` VALUES ('14', '  OPPO K7x  ', '1499.00', '0', null, '1', '/uploads/1607499934050.jpg', '1', null, null, '  OPPO K7x  ', null);
INSERT INTO `product` VALUES ('15', '  飞利浦 PHILIPS E258S 宝石蓝 直板按键 移动联通2G 老人手机 老年功能手机学生手机备用机  ', '165.00', '0', null, '1', '/uploads/1607499937093.jpg', '1', null, null, '  飞利浦 PHILIPS E258S', null);
INSERT INTO `product` VALUES ('16', '  小米（MI） Redmi 10X 5G  ', '1499.00', '0', null, '1', '/uploads/1607499939763.jpg', '1', null, null, '小米（MI） Redmi 10X 5G  ', null);
INSERT INTO `product` VALUES ('17', '  vivo iQOO Z1  ', '2568.00', '0', null, '1', '/uploads/1607499944346.jpg', '1', null, null, '  vivo iQOO Z1  ', null);
INSERT INTO `product` VALUES ('18', '  荣耀Play4T Pro 麒麟810芯片 OLED屏幕指纹 4800万高感光夜拍三摄 22.5W超级快充 全网通8GB+128GB 幻夜黑  ', '1788.00', '0', null, '1', '/uploads/1607499947719.jpg', '1', null, null, '  荣耀Play4T Pro', null);
INSERT INTO `product` VALUES ('19', '   海信(Hisense) 阅读手机A5Pro经典版 5.84英寸水墨屏 便携 电纸书阅读器 6GB+128GB 全网通4G手机 墨玉黑  ', '1799.00', '0', null, '1', '/uploads/1607499950709.jpg', '1', null, null, '海信(Hisense) 阅读手机A5Pro经典版', null);
INSERT INTO `product` VALUES ('20', '  小米（MI） Redmi 9  ', '999.00', '0', null, '1', '/uploads/1607499953613.jpg', '1', null, null, '小米（MI） Redmi 9  ', null);
INSERT INTO `product` VALUES ('21', '逆世界 四核/GTX1050Ti独显/16G内存LOL游戏办公家用台式吃鸡电脑主机/DIY组装机', '1299.00', '0', null, '2', '/uploads/1607501834537.jpg', '1', null, null, '逆世界 四核/GTX1050Ti独显/16G内存LOL游戏办公家用台式吃鸡电脑主机/DIY组装机', null);
INSERT INTO `product` VALUES ('22', '联想(Lenovo)天逸510S 十代英特尔酷睿i3 台式机电脑整机(i3-10100  8G 1T wifi win10 三年上门)21.5英寸', '2799.00', '0', null, '2', '/uploads/1607501837281.jpg', '1', null, null, '联想(Lenovo)天逸510S', null);
INSERT INTO `product` VALUES ('23', '戴尔(DELL)成就3681英特尔酷睿i3商用办公高性能台式机电脑整机(十代i3-10100 8G 1T 三年上门售后)21.5英寸', '2799.00', '0', null, '2', '/uploads/1607501850696.jpg', '1', null, null, '戴尔(DELL)成就3681英特尔酷睿i3商用办公高性能台式机', null);
INSERT INTO `product` VALUES ('24', '联想(Lenovo)天逸510S 十代英特尔酷睿i5 台式机电脑整机(i5-10400  16G 1T+256G SSD wifi win10 )23英寸', '4199.00', '0', null, '2', '/uploads/1607501853492.jpg', '1', null, null, '联想(Lenovo)天逸510S ', null);
INSERT INTO `product` VALUES ('25', '硕扬 I5 9400F860KGTX1050TI独显512G游戏台式吃鸡电脑主机DIY组装机', '1899.00', '0', null, '2', '/uploads/1607501856206.jpg', '1', null, null, '硕扬 I5 9400F860KGTX1050TI独显512G游戏台式吃鸡电脑主机DIY组装机', null);
INSERT INTO `product` VALUES ('26', '戴尔(DELL)成就3681英特尔酷睿i5商用办公高性能台式机电脑整机(十代i5-10400 8G 256G 1T 三年上门)21.5英寸', '3899.00', '0', null, '2', '/uploads/1607501858787.jpg', '1', null, null, '戴尔(DELL)成就3681英特尔酷睿i5', null);
INSERT INTO `product` VALUES ('27', '奥克斯（AUX）1.5匹 清爽侠 新能效 变频冷暖 静音节能 自清洁 壁挂式空调挂机(KFR-35GW/BpR3BFW1(B3))', '1899.00', '0', null, '9', '/uploads/1607502448780.webp', '1', null, null, '奥克斯（AUX）1.5匹', null);
INSERT INTO `product` VALUES ('28', '美的(Midea)新一级 i青春II 智能控制 变频冷暖 1.5匹壁挂式空调挂机KFR-35GWN8XHB1', '2299.00', '0', null, '9', '/uploads/1607502452130.webp', '1', null, null, '美的(Midea)新一级 i青春II 智能控制', null);
INSERT INTO `product` VALUES ('29', 'TCL 大1匹 京品家电 新三级能效 静音 第六感 壁挂式 空调挂机KFRd-26GWD-XQ11Bp(B3)变频冷暖', '1898.00', '0', null, '9', '/uploads/1607502454919.webp', '1', null, null, 'TCL 大1匹', null);
INSERT INTO `product` VALUES ('30', '美的 (Midea)新能效 智弧 智能变频冷暖 1.5匹壁挂式空调KFR-35GWN8MJA3', '2099.00', '0', null, '9', '/uploads/1607502458109.webp', '1', null, null, '美的 (Midea)新能效 智弧 智能变频冷暖', null);
INSERT INTO `product` VALUES ('31', '康佳（KONKA）小1匹 壁挂式 快速冷暖 定速空调挂机（纯铜管）静音省电 KFR-23GWDYG01-E3', '1299.00', '0', null, '9', '/uploads/1607502463914.jpg', '1', null, null, '康佳（KONKA）小1匹 壁挂式 快速冷暖 定速空调挂机', null);
INSERT INTO `product` VALUES ('32', '康佳 KONKA 三级 冷暖 2匹 定速 商用 家用 客厅 立式圆柱空调柜机KFR-51LWDHCK-E3', '2499.00', '0', null, '9', '/uploads/1607502467164.jpg', '1', null, null, '康佳 KONKA 三级 冷暖 2匹', null);
INSERT INTO `product` VALUES ('33', '华帝（VATTI） 电陶炉不挑锅煮茶炉3000W大功率台式光波炉家用无高频辐射电磁炉 灰色 太空灰', '798.00', '0', null, '10', '/uploads/1607503022892.webp', '1', null, null, '华帝（VATTI） 电陶炉不挑锅煮茶炉3000W大功率台式光波炉家用无高频辐射电磁炉 灰色 太空灰', null);
INSERT INTO `product` VALUES ('34', '美的（Midea）电磁炉 滑控调节 微晶面板   一键爆炒 定时功能 【赠炒锅+汤锅】C21-WK2102（WK2102WH2202）', '189.00', '0', null, '10', '/uploads/1607503025891.webp', '1', null, null, '美的（Midea）电磁炉 滑控调节 微晶面板   一键爆炒 定时功能 【赠炒锅+汤锅】', null);
INSERT INTO `product` VALUES ('35', '苏泊尔（SUPOR）电磁炉 大功率触控按键 耐用面板 八档火力 纤薄设计 定时功能电磁灶火锅炉C21-IJ59E', '139.00', '0', null, '10', '/uploads/1607503028951.webp', '1', null, null, '苏泊尔（SUPOR）电磁炉', null);
INSERT INTO `product` VALUES ('36', '美的（Midea）电磁炉 家用2200W大火力汉森面板 电磁灶4D防水 旋风防堵风机 C22-RT22E01', '129.00', '0', null, '10', '/uploads/1607503031729.webp', '1', null, null, '美的（Midea）电磁炉', null);
INSERT INTO `product` VALUES ('37', '半球peskoe电热水壶双层防烫食品级不锈钢自动断电防干烧2L大容量电水壶开水壶烧水壶 2升双层防烫（时尚款）A18', '39.00', '0', null, '11', '/uploads/1607503682927.webp', '1', null, null, '半球peskoe电热水壶双层防烫', null);
INSERT INTO `product` VALUES ('38', '美的（Midea）电水壶热水壶电热水壶304不锈钢1.7L容量暖水壶烧水壶开水壶WHJ1705b', '89.00', '0', null, '11', '/uploads/1607503686164.webp', '1', null, null, '美的（Midea）电水壶热水壶电热水壶304不锈钢1.7L容量暖水壶烧水壶开水壶WHJ1705b', null);
INSERT INTO `product` VALUES ('39', '九阳（Joyoung）热水壶烧水壶电水壶 双层防烫304不锈钢 家用大容量电热水壶 K15-F626（邓伦推荐）', '66.00', '0', null, '11', '/uploads/1607503689549.webp', '1', null, null, '九阳（Joyoung）热水壶烧水壶电水壶', null);
INSERT INTO `product` VALUES ('40', '米家 小米电热水壶烧水壶1A 304不锈钢 1.5L大容量 MJDSH02YM', '79.00', '0', null, '11', '/uploads/1607503692827.webp', '1', null, null, '米家 小米电热水壶烧水壶1A', null);
INSERT INTO `product` VALUES ('41', '美菱（MeiLing）电热水壶 304不锈钢 不锈钢烧水壶 MH-1801 1.8L电水壶 银色', '39.00', '0', null, '11', '/uploads/1607503696054.jpg', '1', null, null, '美菱（MeiLing）电热水壶', null);
INSERT INTO `product` VALUES ('42', '苏泊尔（SUPOR）电水壶 双层防烫烧水壶热水壶 全钢无缝内胆电热水壶SW-17J419 1.7L大容量', '115.00', '0', null, '11', '/uploads/1607503699150.jpg', '1', null, null, '苏泊尔（SUPOR）电水壶 ', null);
INSERT INTO `product` VALUES ('43', '小霸王游戏机PSP掌机怀旧FC 大屏街机掌上游戏机GBA迷你儿童游戏机 小霸王Q900四核32G内存升级版（红蓝色）', '498.00', '0', null, '12', '/uploads/1607504452199.webp', '1', null, null, '小霸王游戏机PSP掌机怀旧FC 大屏街机掌上游戏机GBA迷你儿童游戏机', null);
INSERT INTO `product` VALUES ('44', '掌上游戏机掌机PSP街机电视怀旧儿童玩具超级玛丽男生日礼物男朋友成人礼物黑科技 双人版（红色）+3米AV线', '59.00', '0', null, '12', '/uploads/1607504455186.webp', '1', null, null, '掌上游戏机掌机PSP街机电视怀旧儿童玩具超级玛丽男生日礼物', null);
INSERT INTO `product` VALUES ('45', '游戏机街机月光9S怀旧潘多拉魔宝盒双人摇杆家用3D游戏格斗机 月光9S 3160款游戏（促销款每人限购1台）', '358.00', '0', null, '12', '/uploads/1607504458162.webp', '1', null, null, '游戏机街机月光9S怀旧潘多拉魔宝盒双人摇杆家用3D游戏格斗机', null);
INSERT INTO `product` VALUES ('46', '任天堂 Nintendo Switch 国行续航增强版 NS家用体感游戏机掌机 便携掌上游戏机 红蓝主机', '2099.00', '0', null, '12', '/uploads/1607504461092.webp', '1', null, null, '任天堂 Nintendo Switch 国行续航增强版', null);
INSERT INTO `product` VALUES ('47', '酷孩高清家用电视游戏机PSP迷你游戏盒子FC家用复古怀旧老式游戏机三国战纪格斗街机游戏机RS-71 HDMI高清32G+双无线手柄+预装3500款游戏', '318.00', '0', null, '12', '/uploads/1607504463793.jpg', '1', null, null, '酷孩高清家用电视游戏机PSP迷你游戏盒子', null);
INSERT INTO `product` VALUES ('48', 'OKSJ Type-c数据线5A华为充电器线快充小米手机支持40w闪充荣耀8910vivooppo一加USBMate20P30P40车载', '12.00', '0', null, '13', '/uploads/1607504865751.jpg', '1', null, null, 'OKSJ Type-c数据线5A', null);
INSERT INTO `product` VALUES ('49', '品胜（PISEN）苹果数据线1.2米快充 适用iPhone12Pro Max11XsXRSE8手机充电线 苹果78P iPad Airmini', '21.00', '0', null, '13', '/uploads/1607504868720.jpg', '1', null, null, 'http://127.0.0.1:3000/uploads/1607504868720.jpg', null);
INSERT INTO `product` VALUES ('50', '5A原配快充type-c数据线丨华为充电线', '20.00', '0', null, '13', '/uploads/1607504871491.jpg', '1', null, null, '5A原配快充type-c数据线丨华为充电线', null);
INSERT INTO `product` VALUES ('51', '罗马仕 数据线三合一苹果Type-c安卓手机充电线3.5A加长快充一拖三适用iPhone1211小米oppo华为vivo 1.5米', '19.00', '0', null, '13', '/uploads/1607504873762.jpg', '1', null, null, '罗马仕 数据线三合一苹果Type-c安卓手机充电线', null);
INSERT INTO `product` VALUES ('52', 'HKQR 夹克男2020秋冬季新款时尚潮流宽松大码休闲棒球服男青少年户外衣服外套男装 灰色 XL（建议130-150斤）', '168.00', '0', null, '3', '/uploads/1607564095217.jpg', '1', null, null, 'HKQR 夹克男2020秋冬季新款时尚', null);
INSERT INTO `product` VALUES ('53', 'JEEP 吉普夹克男2020秋季新款男士外套立领风衣商务休闲防水防风男装夹克衫加绒加厚秋冬款男士上衣 1550灰色 XL码', '268.00', '0', null, '3', '/uploads/1607564098347.webp', '1', null, null, 'JEEP 吉普夹克男2020秋季新款男士外套立领风衣商务休闲防水防风男装夹克衫加绒加厚秋冬款男士上衣', null);
INSERT INTO `product` VALUES ('54', '花花公子（PLAYBOY）夹克男秋冬季商务休闲外套男士立领夹克衫时尚潮牌棒球服修身上衣男装 黑蓝 XL', '269.00', '0', null, '3', '/uploads/1607564102079.webp', '1', null, null, '花花公子（PLAYBOY）夹克男秋冬季商务休闲外套', null);
INSERT INTO `product` VALUES ('55', 'J-VAN秋季工装牛仔春秋外套男夹克秋装连帽卫衣韩版衣服休闲潮流棉衣冬季连帽冬天加绒加厚运动风衣套装 3件】80黑+白T+黑裤 M', '138.00', '0', null, '3', '/uploads/1607564106205.webp', '1', null, null, 'J-VAN秋季工装牛仔春秋外套男夹克秋装连帽卫衣韩版衣服休闲潮流棉衣冬季连帽', null);
INSERT INTO `product` VALUES ('56', '木林森（MULINSEN）夹克男 潮流棒球领上衣男士休闲印花加绒保暖长袖外套男 13F159100114M 黑色-加绒 XL', '138.00', '0', null, '3', '/uploads/1607564109764.jpg', '1', null, null, '木林森（MULINSEN）夹克男 潮流棒球领上衣男士休闲印花加绒保暖长袖', null);
INSERT INTO `product` VALUES ('57', '简柯林秋冬季外套男装衣服男士修身工装学生上衣青年夹克男冬装休闲韩版潮流加绒加厚夹克衫棒球服男 B991白色 选择尺码', '149.00', '0', null, '3', '/uploads/1607564113162.jpg', '1', null, null, '简柯林秋冬季外套男装衣服', null);
INSERT INTO `product` VALUES ('58', '【88元两件】【加绒可选】长袖T恤男2020秋季新款上衣服修身潮牌时尚男装长袖卫衣潮流衣服 N02灰色 XL', '58.00', '0', null, '4', '/uploads/1607564668057.jpg', '1', null, null, '长袖T恤男2020秋季新款上衣服修身潮牌时尚男装长袖卫衣潮流衣服 ', null);
INSERT INTO `product` VALUES ('59', '花花公子（PLAYBOY）长袖T恤男圆领2020秋季韩版纯色男士t恤休闲百搭上衣舒适透气衣服 白色 XL', '159.00', '0', null, '4', '/uploads/1607564671086.webp', '1', null, null, '花花公子（PLAYBOY）长袖T恤男圆领2020秋季韩版纯色男士t恤休闲百搭上衣舒适透气衣服', null);
INSERT INTO `product` VALUES ('60', '南极人（Nanjiren）两件装 男士长袖t恤秋季圆领黑白体恤T 纯色上衣服打底衫男装CST02 白+黑XL', '99.00', '0', null, '4', '/uploads/1607564674242.webp', '1', null, null, '南极人（Nanjiren）两件装 男士长袖t恤秋季圆领黑白体恤T', null);
INSERT INTO `product` VALUES ('61', '安踏卫衣男秋冬季新款运动休闲服饰男装长袖t恤圆领篮球外套打底衫加绒跑步上衣针织男士套头衫宽松百搭情侣 大logo-1基础黑金（店长推荐） L175', '119.00', '0', null, '4', '/uploads/1607564677414.webp', '1', null, null, '安踏卫衣男秋冬季新款运动休闲服饰男装长袖t恤圆领篮球外套打底衫加绒跑步上衣针织男士套头衫宽松百搭情侣', null);
INSERT INTO `product` VALUES ('62', '唐狮裤子男男士牛仔裤男冬季新款港风潮牌宽松休闲修身加绒直筒裤 中牛仔蓝/无绒款 31', '129.00', '0', null, '5', '/uploads/1607565083396.jpg', '1', null, null, '唐狮裤子男男士牛仔裤男冬季新款港风潮牌宽松休闲修身加绒直筒裤 中牛仔蓝/无绒款 31', null);
INSERT INTO `product` VALUES ('63', '【两条装】南极人牛仔裤男潮牌宽松工装裤男秋季新款休闲裤男士修身直筒小脚哈伦裤运动长裤冬季百搭束脚男裤 901灰色+901灰色 L', '149.00', '0', null, '5', '/uploads/1607565086437.jpg', '1', null, null, '【两条装】南极人牛仔裤男潮牌宽松工装裤男秋季新款休闲裤男士修身直筒小脚哈伦裤运动长裤冬季百搭束脚男裤', null);
INSERT INTO `product` VALUES ('64', '南极人休闲裤男秋季裤子男工装裤运动裤男士牛仔秋冬西装裤商务西裤直筒时尚修身潮流加绒加厚男裤男装长裤 【2件装】1068黑色+1068蓝色 33', '149.00', '0', null, '6', '/uploads/1607565331308.jpg', '1', null, null, '南极人休闲裤男秋季裤子男工装裤运动裤男士牛仔秋冬西装裤商务西裤直筒时尚修身潮流加绒加厚男裤男装长裤', null);
INSERT INTO `product` VALUES ('65', 'limeflare 2020秋冬新款小香风连衣裙女粗花呢桔梗连衣裙法式小众 薰衣草紫色 165/84A/L', '1089.00', '0', null, '7', '/uploads/1607565542856.jpg', '1', null, null, 'limeflare 2020秋冬新款小香风连衣裙女粗花呢桔梗连衣裙法式小众', null);
INSERT INTO `product` VALUES ('66', '芙绮姿冬季连衣裙女2020新款小个子针织裙女时尚气质洋气拼接修身显瘦中长款过膝打底裙子潮 图片色 请拍对应尺码', '158.00', '0', null, '7', '/uploads/1607565546734.webp', '1', null, null, '芙绮姿冬季连衣裙女2020新款小个子针织裙', null);
INSERT INTO `product` VALUES ('67', '艾珠儿 连衣裙套装女2020冬季新款女装胖mm毛衣打底衫显瘦慵懒风毛衣半身裙三件套洋气两件套套装裙 三件套 L(建议100-120斤)', '178.00', '0', null, '7', '/uploads/1607565550163.webp', '1', null, null, '艾珠儿 连衣裙套装女2020冬季新款女装胖mm毛衣打底衫显瘦慵懒风毛衣半身裙三件套洋气两件套套装裙', null);
INSERT INTO `product` VALUES ('68', '波菲熊针织连衣裙秋冬季女装2020新款韩版小个子毛衣女宽松遮肚大码女士冬天打底衫裙子女 卡其 均码（95-130斤）', '115.00', '0', null, '7', '/uploads/1607565555065.webp', '1', null, null, '波菲熊针织连衣裙秋冬季女装2020新款韩版小个子毛衣女宽松遮肚大码女士冬天打底衫裙子女', null);
INSERT INTO `product` VALUES ('69', '裳黎针织连衣裙秋冬季女装2020新款气质显瘦加绒加厚中长款配大衣毛衣裙冬款打底裙子女Y8861 图片色 加绒款 L 建议105-115斤', '155.00', '0', null, '7', '/uploads/1607565559234.jpg', '1', null, null, '裳黎针织连衣裙秋冬季女装2020新款气质显瘦加绒加厚中长款配大衣毛衣裙冬款打底裙子', null);
INSERT INTO `product` VALUES ('70', '竽妤连衣裙女2020秋冬新款显瘦毛衣套装大码女装半身裙毛衣二件套胖mm连衣裙 蓝色裙子 请拍对应尺码', '99.00', '0', null, '7', '/uploads/1607565562107.jpg', '1', null, null, '竽妤连衣裙女2020秋冬新款显瘦毛衣套装大码女装半身裙毛衣二件套胖mm连衣裙 蓝色裙子 请拍对应尺码', null);
INSERT INTO `product` VALUES ('71', '明尼凯情侣卫衣男连帽韩版潮流帅气ins港风学生班服宽松大码秋冬加绒加厚休闲上衣服青少年嘻哈外套 白色 L(120-135斤)', '88.00', '0', null, '8', '/uploads/1607565991345.jpg', '1', null, null, '明尼凯情侣卫衣男连帽韩版潮流帅气ins港风学生班服宽松大码秋冬加绒加厚休闲上衣服青少年嘻哈外套', null);
INSERT INTO `product` VALUES ('72', '花花公子（PLAYBOY）卫衣男2020秋冬季韩版圆领衣服连帽宽松套头长袖卫衣男装潮流印字上衣 309白色加绒 XL', '189.00', '0', null, '8', '/uploads/1607565993929.webp', '1', null, null, '花花公子（PLAYBOY）卫衣男2020秋冬季韩版圆领衣服连帽宽松套头长袖卫衣', null);
INSERT INTO `product` VALUES ('73', '红妆饰佳 2020新款主婚纱礼服欧式新娘森系星空重工奢华一字肩婚纱大拖尾 【木耳边领型】齐地 L', '588.00', '0', null, '14', '/uploads/1607566236047.jpg', '1', null, null, '红妆饰佳 2020新款主婚纱礼服欧式新娘森系星空重工奢华一字肩婚纱大拖尾', null);
INSERT INTO `product` VALUES ('74', 'MENANG轻奢品牌轻主婚纱礼服裙2020新款新娘气质拖尾法式超仙梦幻森系显瘦秋冬季 浅香槟齐地款 套装 S', '2199.00', '0', null, '14', '/uploads/1607566238667.jpg', '1', null, null, 'MENANG轻奢品牌轻主婚纱礼服裙2020新款新娘气质拖尾法式超仙梦幻森系显瘦秋冬季', null);
INSERT INTO `product` VALUES ('75', '龙曼尼仕秀禾服新娘婚礼服新款中式婚纱结婚礼服敬酒服喜服 828 M', '368.00', '0', null, '14', '/uploads/1607566241607.jpg', '1', null, null, '龙曼尼仕秀禾服新娘婚礼服新款中式婚纱结婚礼服敬酒服喜服 828 M', null);
INSERT INTO `product` VALUES ('76', '南糖三色法式主婚纱2020新款新娘星空梦幻高端小个子孕妇气质拖尾长袖 齐地款', '999.00', '0', null, '14', '/uploads/1607566244375.jpg', '1', null, null, '南糖三色法式主婚纱2020新款新娘星空梦幻高端小个子孕妇气质拖尾长袖 齐地款', null);
INSERT INTO `product` VALUES ('77', '南糖三色主婚纱礼服2020新款新娘气质法式高端重工大拖尾宫廷齐地星空女 浅香槟齐地婚纱 S', '689.00', '0', null, '14', '/uploads/1607566247107.jpg', '1', null, null, '南糖三色主婚纱礼服2020新款新娘气质法式高端重工大拖尾宫廷齐地星空女 浅香槟齐地婚纱 S', null);
INSERT INTO `product` VALUES ('78', '新品主婚纱礼服2020新款新娘一字肩拖尾公主梦幻冬季长袖简约齐地女轻婚纱 白色蕾丝齐地款 S', '371.00', '0', null, '14', '/uploads/1607566258164.jpg', '1', null, null, '新品主婚纱礼服2020新款新娘一字肩拖尾公主梦幻冬季长袖简约齐地女轻婚纱 白色蕾丝齐地款 S', null);
INSERT INTO `product` VALUES ('79', '泰勒马丁（TAILEMARTIN）秀禾服新娘婚礼服新款情侣装中式婚纱古装嫁衣旗袍 1210流苏凤凰飘 M', '498.00', '0', null, '14', '/uploads/1607566261025.jpg', '1', null, null, '泰勒马丁（TAILEMARTIN）秀禾服新娘婚礼服新款情侣装中式婚纱古装嫁衣旗袍', null);
INSERT INTO `product` VALUES ('80', '红妆饰佳 秋冬主婚纱礼服2020新款新娘法式复古气质拖尾v领星空长袖齐地出门纱 浅香槟齐地 S', '558.00', '0', null, '14', '/uploads/1607566263920.jpg', '1', null, null, '红妆饰佳 秋冬主婚纱礼服2020新款新娘法式复古气质拖尾v领星空长袖齐地出门纱 浅香槟齐地 S', null);
INSERT INTO `product` VALUES ('81', '蓝靖儿 加绒加厚牛仔裤女保暖2020年秋冬季新款女装韩版百搭弹力修身收腹铅笔裤紧身显瘦小脚裤子长裤 蓝灰色加绒9866 261尺9', '158.00', '0', null, '15', '/uploads/1607566873666.webp', '1', null, null, '蓝靖儿 加绒加厚牛仔裤女保暖2020年秋冬季新款女装韩版百搭弹力修身收腹铅笔裤紧身显瘦小脚裤子长裤', null);
INSERT INTO `product` VALUES ('82', '琛倪 牛仔裤女冬加绒带绒牛仔裤女土保暖高腰韩版显瘦百搭休闲小脚长裤铅笔裤 880深蓝色灰绒 27', '49.00', '0', null, '15', '/uploads/1607566876395.jpg', '1', null, null, '琛倪 牛仔裤女冬加绒带绒牛仔裤女土保暖高腰韩版显瘦百搭休闲小脚长裤铅笔裤 880深蓝色灰绒 27', null);
INSERT INTO `product` VALUES ('83', '【高定版幻彩鎏金】吴宣仪【高定版】冰希黎幻彩鎏金高定版女士香水淡香学生少女清新送女友送老婆', '218.00', '0', null, '16', '/uploads/1607567150135.jpg', '1', null, null, '【高定版幻彩鎏金】吴宣仪【高定版】冰希黎幻彩鎏金高定版女士香水淡香学生少女清新送女友送老婆', null);
INSERT INTO `product` VALUES ('84', '【精选品牌女香】法国亚菲儿香水50ml香水女持久淡香清新女士香水学生sg香水小样销量明星款大牌香', '86.00', '0', null, '16', '/uploads/1607567153219.jpg', '1', null, null, '【精选品牌女香】法国亚菲儿香水50ml香水女持久淡香清新女士香水学生sg香水小样销量明星款大牌香', null);
INSERT INTO `product` VALUES ('85', '迪奥（Dior）花漾淡香氛(EDT)30ml（礼物 清新淡花香 初恋的气息 淡香水新老款随机）', '628.00', '0', null, '16', '/uploads/1607567156513.jpg', '1', null, null, '迪奥（Dior）花漾淡香氛(EDT)30ml（礼物 清新淡花香 初恋的气息 淡香水新老款随机）', null);
INSERT INTO `product` VALUES ('86', '香奈儿（Chanel）女士香水5号香水 粉邂逅柔情淡香水EDT 5号淡香水35ml', '308.00', '0', null, '16', '/uploads/1607567159525.jpg', '1', null, null, '香奈儿（Chanel）女士香水5号香水 粉邂逅柔情淡香水EDT 5号淡香水35ml', null);
INSERT INTO `product` VALUES ('87', '范思哲(VERSACE)晶钻女用香水 30ml 节日生日礼物送女友女士香水香氛清新花果香持久自然', '349.00', '0', null, '16', '/uploads/1607567166927.jpg', '1', null, null, '范思哲(VERSACE)晶钻女用香水 30ml 节日生日礼物送女友女士香水香氛清新花果香持久自然', null);
INSERT INTO `product` VALUES ('88', '限量版coco香水法国亚菲儿女士香水50ml香水清新持久女士香水学生女花果香调香水小样 粉红色', '109.00', '0', null, '16', '/uploads/1607567169684.jpg', '1', null, null, '限量版coco香水法国亚菲儿女士香水50ml香水清新持久女士香水学生女花果香调香水小样 粉红色', null);
INSERT INTO `product` VALUES ('89', '【专柜正品】Dior迪奥口红999烈焰蓝金正红滋润哑光唇膏 999#正红(滋润)', '248.00', '0', null, '17', '/uploads/1607567541852.jpg', '1', null, null, '【专柜正品】Dior迪奥口红999烈焰蓝金正红滋润哑光唇膏 999#正红(滋润)', null);
INSERT INTO `product` VALUES ('90', '迪奥（Dior）口红烈艳蓝金唇膏滋润999# 3.5g  (口红礼盒  经典正红色 保湿滋润 圣诞礼物 赠礼袋）', '343.00', '0', null, '17', '/uploads/1607567544312.jpg', '1', null, null, '迪奥（Dior）口红烈艳蓝金唇膏滋润999# 3.5g  (口红礼盒  经典正红色', null);
INSERT INTO `product` VALUES ('91', '迪奥(Dior)口红烈艳蓝金999哑光唇膏3.5g(迪奥口红 正红色 传奇红唇 礼物送女友)', '219.00', '0', null, '17', '/uploads/1607567546713.jpg', '1', null, null, '迪奥(Dior)口红烈艳蓝金999哑光唇膏3.5g(迪奥口红 正红色 传奇红唇 礼物送女友)', null);
INSERT INTO `product` VALUES ('92', ' 圣罗兰（YSL）细管纯口红2.2g 21#复古正红 小金条复古哑光口红', '343.00', '0', null, '17', '/uploads/1607567551283.jpg', '1', null, null, ' 圣罗兰（YSL）细管纯口红2.2g 21#复古正红 小金条复古哑光口红', null);
INSERT INTO `product` VALUES ('93', '纪梵希（Givenchy）高定香榭红丝绒唇膏 N37  3.4g 礼盒装（红丝绒口红  朱砂砖红）圣诞节礼物', '289.00', '0', null, '17', '/uploads/1607567554303.jpg', '1', null, null, '纪梵希（Givenchy）高定香榭红丝绒唇膏 N37  3.4g 礼盒装（红丝绒口红  朱砂砖红', null);
INSERT INTO `product` VALUES ('94', '完美日记（PERFECT DIARY）至臻柔色丝绒唇釉 V10 甜桃舞步（蜜桃乌龙）2.5g', '54.00', '0', null, '18', '/uploads/1607567872176.webp', '1', null, null, '完美日记（PERFECT DIARY）至臻柔色丝绒唇釉 V10 甜桃舞步（蜜桃乌龙）2.5g', null);
INSERT INTO `product` VALUES ('95', 'colorkey 珂拉琪雾面丝绒空气哑光唇釉 B605肉桂蜜桃 1.7g 口红唇彩丝绒系列 高级丝滑雾感不易掉色百搭显白', '68.00', '0', null, '18', '/uploads/1607567875161.webp', '1', null, null, 'colorkey 珂拉琪雾面丝绒空气哑光唇釉 B605肉桂蜜桃 1.7g 口红唇彩丝绒系列', null);
INSERT INTO `product` VALUES ('96', '魅可(MAC)生姜高光 立体绒光修容粉饼盘Double Gleam(定妆 提亮肤色 细闪珠光)', '232.00', '0', null, '19', '/uploads/1607568057768.jpg', '1', null, null, '魅可(MAC)生姜高光 立体绒光修容粉饼盘Double Gleam(定妆 提亮肤色 细闪珠光)', null);
INSERT INTO `product` VALUES ('97', '橘朵（judydoll）立体光影双色修容粉饼9g 02号 暖棕色（鼻影阴影 侧影 自然裸妆 初学者学生）', '38.00', '0', null, '20', '/uploads/1607568249505.jpg', '1', null, null, '橘朵（judydoll）立体光影双色修容粉饼9g', null);
INSERT INTO `product` VALUES ('98', '毛戈平（MAOGEPING）光影塑颜立体鼻影粉高光阴影修容粉饼3g', '390.00', '0', null, '20', '/uploads/1607568252413.jpg', '1', null, null, '毛戈平（MAOGEPING）光影塑颜立体鼻影粉高光阴影修容粉饼3g', null);
INSERT INTO `product` VALUES ('99', '小奥汀眼线液笔，12.12限时三件85折。顺滑速干，浓郁持久', '59.00', '0', null, '21', '/uploads/1607568450319.webp', '1', null, null, '小奥汀眼线液笔，12.12限时三件85折。顺滑速干，浓郁持久', null);
INSERT INTO `product` VALUES ('100', '小奥汀 littleondine 绚彩玩色眼线液笔 01黑色（持久不晕染不脱色防水防汗显色）', '59.00', '0', null, '21', '/uploads/1607568453379.webp', '1', null, null, '小奥汀 littleondine 绚彩玩色眼线液笔 01黑色（持久不晕染不脱色防水防汗显色）', null);
INSERT INTO `product` VALUES ('101', ' 完美日记 PERFECT DIARY 纤细持久眼线液笔 01黑色（极细持久防水防汗不易脱色晕染）', '39.00', '0', null, '21', '/uploads/1607568456877.webp', '1', null, null, ' 完美日记 PERFECT DIARY 纤细持久眼线液笔 01黑色（极细持久防水防汗不易脱色晕染）', null);
INSERT INTO `product` VALUES ('102', '第2件仅24.5元-美康粉黛散粉定妆不脱妆', '49.00', '0', null, '22', '/uploads/1607568675768.jpg', '1', null, null, '第2件仅24.5元-美康粉黛散粉定妆不脱妆', null);
INSERT INTO `product` VALUES ('103', '完美日记 无痕时光遮瑕液遮盖脸部痘印雀斑点黑眼圈保湿遮瑕笔 B10', '29.00', '0', null, '22', '/uploads/1607568678961.jpg', '1', null, null, '完美日记 无痕时光遮瑕液遮盖脸部痘印雀斑点黑眼圈保湿遮瑕笔 B10', null);
INSERT INTO `product` VALUES ('104', '卡姿兰（Carslan）精准遮瑕双头美颜笔（遮瑕液2.6g+遮瑕膏4.5g）（黑眼圈雀斑痘印眼袋 保湿 阴影 打底）', '59.00', '0', null, '22', '/uploads/1607568682293.jpg', '1', null, null, '卡姿兰（Carslan）精准遮瑕双头美颜笔（遮瑕液2.6g+遮瑕膏4.5g）', null);
INSERT INTO `product` VALUES ('105', '九叶草小金管遮瑕膏遮盖黑眼圈纹身痘印痣雀斑防水防汗脸部高光  30g 自然色', '69.00', '0', null, '22', '/uploads/1607568684849.jpg', '1', null, null, '九叶草小金管遮瑕膏遮盖黑眼圈纹身痘印痣雀斑防水防汗脸部高光  30g 自然色', null);
INSERT INTO `product` VALUES ('106', '良品铺子 肉肉大满足纯肉零食大礼包 肉干肉脯牛肉干猪肉脯宵夜休闲零食送女友礼物1589g/1576g  【12款纯荤零食】肉肉大礼包1589g 1箱', '189.00', '0', null, '23', '/uploads/1607587921045.jpg', '1', null, null, '良品铺子 肉肉大满足纯肉零食大礼包', null);
INSERT INTO `product` VALUES ('107', '良品铺子 猪肉脯自然片靖江猪肉干肉铺肉类零食休闲网红小吃100g', '29.00', '0', null, '23', '/uploads/1607587923907.jpg', '1', null, null, '良品铺子 猪肉脯自然片靖江猪肉干肉铺肉类零食休闲网红小吃100g', null);
INSERT INTO `product` VALUES ('108', '三只松鼠黄金肉松饼 蛋糕早餐面包办公室特色小吃休闲零食网红点心456g袋', '39.00', '0', null, '23', '/uploads/1607587926583.jpg', '1', null, null, '三只松鼠黄金肉松饼 蛋糕早餐面包办公室特色小吃休闲零食网红点心456g袋', null);
INSERT INTO `product` VALUES ('109', '三只松鼠乳酸菌小伴侣面包 营养早餐代餐口袋手撕面包网红零食饼干生日蛋糕糕点520g箱', '29.00', '0', null, '23', '/uploads/1607587929464.jpg', '1', null, null, '三只松鼠乳酸菌小伴侣面包 营养早餐代餐口袋手撕面包网红零食饼干生日蛋糕糕点520g箱', null);
INSERT INTO `product` VALUES ('110', '良品铺子 岩焗乳酪吐司  面包饼干蛋糕糕点网红早餐零食整箱装 代餐手撕面包零食 口袋软面包休闲零食 【特调安佳干酪】岩焗乳酪吐司500g 1箱', '39.00', '0', null, '24', '/uploads/1607589445854.jpg', '1', null, null, '良品铺子 岩焗乳酪吐司  面包饼干蛋糕糕点网红早餐零食整箱装 代餐手撕面包零食 口袋软面包休闲零食', null);
INSERT INTO `product` VALUES ('111', '葡记 原味华夫饼1000g 整箱年货礼盒 格子软饼干曲奇 营养早餐西式手撕面包 奶香糕点心 休闲零食', '26.00', '0', null, '24', '/uploads/1607589448866.jpg', '1', null, null, '葡记 原味华夫饼1000g 整箱年货礼盒 格子软饼干曲奇 营养早餐西式手撕面包 奶香糕点心 休闲零食', null);
INSERT INTO `product` VALUES ('112', '三只松鼠手撕面包 饼干蛋糕千糕点零食酵母面包代餐早餐口袋软面包礼盒 1000g盒', '32.00', '0', null, '24', '/uploads/1607589451663.jpg', '1', null, null, '三只松鼠手撕面包 饼干蛋糕千糕点零食酵母面包代餐早餐口袋软面包礼盒 1000g盒', null);
INSERT INTO `product` VALUES ('113', '三只松鼠乳酸菌小伴侣面包 营养早餐代餐口袋手撕面包网红零食饼干生日蛋糕糕点520g箱', '29.00', '0', null, '24', '/uploads/1607589454601.jpg', '1', null, null, '三只松鼠乳酸菌小伴侣面包 营养早餐代餐口袋手撕面包网红零食饼干生日蛋糕糕点520g箱', null);
INSERT INTO `product` VALUES ('114', '舌里 蛋黄酥12枚装雪媚娘饼干蛋糕送礼早餐代餐网红面包休闲零食小吃500g箱', '19.00', '0', null, '24', '/uploads/1607589457423.jpg', '1', null, null, '舌里 蛋黄酥12枚装雪媚娘饼干蛋糕送礼早餐代餐网红面包休闲零食小吃500g箱', null);
INSERT INTO `product` VALUES ('115', '百草味 手撕面包1000g箱 原味整箱早餐休闲食品饼干蛋糕口袋面包糕点点心零食大礼包礼盒', '23.00', '0', null, '24', '/uploads/1607589460821.jpg', '1', null, null, '百草味 手撕面包1000g箱 原味整箱早餐休闲食品饼干蛋糕口袋面包糕点点心零食大礼包礼盒', null);
INSERT INTO `product` VALUES ('116', '李子柒 紫薯于你蒸米糕 夹心甜点口袋零食点心糕点早餐面包吐司 紫米糕 540g/盒', '29.00', '0', null, '24', '/uploads/1607589464287.jpg', '1', null, null, '李子柒 紫薯于你蒸米糕 夹心甜点口袋零食点心糕点早餐面包吐司 紫米糕 540g/盒', null);
INSERT INTO `product` VALUES ('117', '港荣蒸蛋糕 奶香味900g箱 饼干蛋糕 营养早餐食品 手撕面包口袋吐司 休闲零食小吃', '39.00', '0', null, '24', '/uploads/1607589467396.jpg', '1', null, null, '港荣蒸蛋糕 奶香味900g箱 饼干蛋糕 营养早餐食品 手撕面包口袋吐司 休闲零食小吃', null);
INSERT INTO `product` VALUES ('118', '军稻香东北有机大米 黑龙江前进核心产区 全程溯源品质保证 塑料袋装5kg', '89.00', '0', null, '25', '/uploads/1607590258312.jpg', '1', null, null, '军稻香东北有机大米 黑龙江前进核心产区 全程溯源品质保证 塑料袋装5kg', null);
INSERT INTO `product` VALUES ('119', '2020年新米 十月稻田 长粒香大米 东北大米 东北香米 10kg', '74.00', '0', null, '25', '/uploads/1607590261257.jpg', '1', null, null, '2020年新米 十月稻田 长粒香大米 东北大米 东北香米 10kg', null);
INSERT INTO `product` VALUES ('120', '金龙鱼 东北大米 蟹稻共生 盘锦大米5KG', '37.00', '0', null, '25', '/uploads/1607590264083.jpg', '1', null, null, '金龙鱼 东北大米 蟹稻共生 盘锦大米5KG', null);
INSERT INTO `product` VALUES ('121', '十月稻田 长粒香大米 东北大米 东北香米 5kg', '37.00', '0', null, '25', '/uploads/1607590266602.jpg', '1', null, null, '十月稻田 长粒香大米 东北大米 东北香米 5kg', null);
INSERT INTO `product` VALUES ('122', '蓓琳娜（BELLINA）特级初榨橄榄油 3L 原油西班牙进口', '108.00', '0', null, '26', '/uploads/1607590674927.jpg', '1', null, null, '蓓琳娜（BELLINA）特级初榨橄榄油 3L 原油西班牙进口', null);
INSERT INTO `product` VALUES ('123', '贝蒂斯原装进口橄榄油500ml*2瓶装 特级初榨橄榄油+纯正橄榄油 炒菜 凉拌 食用油 送礼团购', '158.00', '0', null, '26', '/uploads/1607590677631.jpg', '1', null, null, '贝蒂斯原装进口橄榄油500ml*2瓶装 特级初榨橄榄油+纯正橄榄油 炒菜 凉拌 食用油 送礼团购', null);
INSERT INTO `product` VALUES ('124', '玛馥嘉（Marfuga）意大利进口DOP特级初榨橄榄油孕妇儿童食用油 250ml派瑞妮单瓶装', '239.00', '0', null, '26', '/uploads/1607590680310.jpg', '1', null, null, '玛馥嘉（Marfuga）意大利进口DOP特级初榨橄榄油孕妇儿童食用油 250ml派瑞妮单瓶装', null);
INSERT INTO `product` VALUES ('125', '蓓琳娜（BELLINA）1000ml PDO特级初榨橄榄油 西班牙原装原瓶进口', '48.00', '0', null, '26', '/uploads/1607590683458.jpg', '1', null, null, '蓓琳娜（BELLINA）1000ml PDO特级初榨橄榄油 西班牙原装原瓶进口', null);
INSERT INTO `product` VALUES ('126', '进口纯牛奶 兰雀唯鲜全脂1L*12盒 120mg高钙  欧洲原装Lacheer 早餐奶', '97.00', '0', null, '27', '/uploads/1607590943192.jpg', '1', null, null, '进口纯牛奶 兰雀唯鲜全脂1L*12盒 120mg高钙  欧洲原装Lacheer 早餐奶', null);
INSERT INTO `product` VALUES ('127', '新西兰原装进口牛奶 安佳Anchor全脂牛奶UHT纯牛奶250ml*24 整箱装', '89.00', '0', null, '27', '/uploads/1607590945770.jpg', '1', null, null, '新西兰原装进口牛奶 安佳Anchor全脂牛奶UHT纯牛奶250ml*24 整箱装', null);
INSERT INTO `product` VALUES ('128', '圣元优博布瑞弗尼3段幼儿配方液态奶/水奶（适合12-36月龄） 200ml*6支法国原装进口大卫贝肯轻享装', '45.00', '0', null, '27', '/uploads/1607590948343.jpg', '1', null, null, '圣元优博布瑞弗尼3段幼儿配方液态奶/水奶', null);
INSERT INTO `product` VALUES ('129', 'Member\'s Mark 德国进口全脂纯牛奶 1L*6支 整箱装 营养早餐奶', '59.00', '0', null, '27', '/uploads/1607590950893.jpg', '1', null, null, 'Member\'s Mark 德国进口全脂纯牛奶 1L*6支 整箱装 营养早餐奶', null);
INSERT INTO `product` VALUES ('130', '张小泉 古韵不锈钢七件刀具套装 菜刀套装 套刀N5490', '169.00', '0', null, '28', '/uploads/1607591223735.jpg', '1', null, null, '张小泉 古韵不锈钢七件刀具套装 菜刀套装 套刀N5490', null);
INSERT INTO `product` VALUES ('131', '爱仕达（ASD）刀具套装 菜刀切菜刀不锈钢厨刀厨师刀切肉刀斩骨刀RDG06K3WG（随意插放刀座）', '129.00', '0', null, '28', '/uploads/1607591226139.jpg', '1', null, null, '爱仕达（ASD）刀具套装 菜刀切菜刀不锈钢厨刀厨师刀切肉刀斩骨刀RDG06K3WG（随意插放刀座）', null);
INSERT INTO `product` VALUES ('132', '【抖音同款】张小泉 淳木系列六件刀具套装 套刀 菜刀套装D31090100', '499.00', '0', null, '28', '/uploads/1607591228658.jpg', '1', null, null, '【抖音同款】张小泉 淳木系列六件刀具套装 套刀 菜刀套装D31090100', null);
INSERT INTO `product` VALUES ('133', '拜格BAYCO 刀具厨具套装套刀不锈钢菜刀勺铲砧板组合15件套CJTZ-938', '129.00', '0', null, '28', '/uploads/1607591231223.jpg', '1', null, null, '拜格BAYCO 刀具厨具套装套刀不锈钢菜刀勺铲砧板组合15件套CJTZ-938', null);
INSERT INTO `product` VALUES ('134', '双立人（ZWILLING）德国双立人刀具套装  厨房切菜刀多用刀不锈钢2件套 38850-000-722 Enjoy', '329.00', '0', null, '28', '/uploads/1607591233872.jpg', '1', null, null, '双立人（ZWILLING）德国双立人刀具套装  厨房切菜刀多用刀不锈钢2件套', null);
INSERT INTO `product` VALUES ('135', '陕西眉县徐香猕猴桃新鲜水果秦岭绿心奇异果绿果弥猴桃30枚/24枚多规格 24枚 单果90-110g', '28.00', '0', null, '29', '/uploads/1607591558772.jpg', '1', null, null, '陕西眉县徐香猕猴桃新鲜水果秦岭绿心奇异果绿果弥猴桃30枚/24枚多规格 24枚 单果90-110g', null);
INSERT INTO `product` VALUES ('136', '四川蒲江 红心猕猴桃22个板盒装 精品奇异果 单果80-100g 生鲜新鲜水果', '64.00', '0', null, '29', '/uploads/1607591561321.jpg', '1', null, null, '四川蒲江 红心猕猴桃22个板盒装 精品奇异果 单果80-100g 生鲜新鲜水果', null);
INSERT INTO `product` VALUES ('137', '顺丰第2件9.9 元】四川蒲江红心猕猴桃15个单果约70-90g奇异果孕妇新鲜水果当季时令应季弥猴桃 15个装（单约70g-90g)', '29.00', '0', null, '29', '/uploads/1607591564050.jpg', '1', null, null, '顺丰第2件9.9 元】四川蒲江红心猕猴桃15个单果约70-90g奇异果孕妇新鲜水果当季时令应季弥猴桃', null);
INSERT INTO `product` VALUES ('138', '【第二件减4元】优仙果 陕西绿心猕猴桃12颗大果（单果80g以上）奇异果新鲜水果', '12.00', '0', null, '29', '/uploads/1607591566703.jpg', '1', null, null, '【第二件减4元】优仙果 陕西绿心猕猴桃12颗大果（单果80g以上）奇异果新鲜水果', null);
INSERT INTO `product` VALUES ('139', 'Zespri佳沛 新西兰阳光金奇异果 特大25-27个原箱装 单果重约124-145g 水果礼盒 生鲜水果', '209.00', '0', null, '29', '/uploads/1607591569741.jpg', '1', null, null, 'Zespri佳沛 新西兰阳光金奇异果', null);
INSERT INTO `product` VALUES ('140', '【农场】鲜菓篮 水果猕猴桃奇异果绿心猕猴桃 3斤装 单果80g起源产地直发', '12.00', '0', null, '29', '/uploads/1607591572397.jpg', '1', null, null, '【农场】鲜菓篮 水果猕猴桃奇异果绿心猕猴桃 3斤装 单果80g起源产地直发', null);
INSERT INTO `product` VALUES ('141', '爽果乐 福建平和琯溪红肉蜜柚 带箱4斤 新鲜柚子', '16.00', '0', null, '30', '/uploads/1607591946057.jpg', '1', null, null, '爽果乐 福建平和琯溪红肉蜜柚 带箱4斤 新鲜柚子', null);
INSERT INTO `product` VALUES ('142', '精选三红蜜柚 红心柚子 2粒装 净重约5-6斤 新生鲜水果', '39.00', '0', null, '30', '/uploads/1607591948899.jpg', '1', null, null, '精选三红蜜柚 红心柚子 2粒装 净重约5-6斤 新生鲜水果', null);
INSERT INTO `product` VALUES ('143', '【现货速运坏果包赔】泰国榴莲金枕进口水果马来西亚猫王山王 A+级鲜榴莲金枕3--4斤（1个装）', '168.00', '0', null, '31', '/uploads/1607592150325.jpg', '1', null, null, '【现货速运坏果包赔】泰国榴莲金枕进口水果马来西亚猫王山王 A+级鲜榴莲金枕3--4斤（1个装）', null);
INSERT INTO `product` VALUES ('144', '【金枕头榴莲旗舰店】金枕头榴莲肉泰国新鲜进口果肉冷冻水果有核（450g盒）', '56.00', '0', null, '31', '/uploads/1607592153009.png', '1', null, null, '【金枕头榴莲旗舰店】金枕头榴莲肉泰国新鲜进口果肉冷冻水果有核（450g盒）', null);
INSERT INTO `product` VALUES ('145', '【满199减100】猫山王榴莲肉马来西亚进口果肉D197 液氮冷冻水果（400g盒）非金枕头榴莲', '168.00', '0', null, '31', '/uploads/1607592155722.jpg', '1', null, null, '【满199减100】猫山王榴莲肉马来西亚进口果肉D197 液氮冷冻水果（400g盒）非金枕头榴莲', null);
INSERT INTO `product` VALUES ('146', '泰国进口冷冻金枕头榴莲肉 1盒装 450g盒', '59.00', '0', null, '31', '/uploads/1607592158190.jpg', '1', null, null, '泰国进口冷冻金枕头榴莲肉 1盒装 450g盒', null);
INSERT INTO `product` VALUES ('147', '广西香蕉新鲜小米蕉水果香焦小香蕉10斤自然熟当季整箱批发 1500g', '17.00', '0', null, '32', '/uploads/1607592396454.jpg', '1', null, null, '广西香蕉新鲜小米蕉水果香焦小香蕉10斤自然熟当季整箱批发 1500g', null);
INSERT INTO `product` VALUES ('152', '欧诗漫OSM 水活奇迹恒润补水保湿化妆品套装 洁水乳护肤品礼盒女（洗面奶+爽肤水+精华+乳液）平衡水油', '398.00', '1000', null, '22', '/uploads/1607047467546.webp', '1', '2020-12-25 16:28:52', '2020-12-25 16:28:52', '欧诗漫OSM', null);

-- ----------------------------
-- Table structure for product_image
-- ----------------------------
DROP TABLE IF EXISTS `product_image`;
CREATE TABLE `product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_id` int(11) NOT NULL COMMENT '外键，关联图片表',
  `delete_time` int(11) DEFAULT NULL COMMENT '状态，主要表示是否删除，也可以扩展其他状态',
  `order` int(11) NOT NULL DEFAULT '0' COMMENT '图片排序序号',
  `product_id` int(11) NOT NULL COMMENT '商品id，外键',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of product_image
-- ----------------------------
INSERT INTO `product_image` VALUES ('1', '13', null, '0', '1', null, null);
INSERT INTO `product_image` VALUES ('2', '13', null, '0', '5', null, null);
INSERT INTO `product_image` VALUES ('3', '13', null, '0', '5', null, null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `headimgurl` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('16', '15975238476', '4297f44b13955235245b2497399d7a93', '青苹竹九', '/uploads/2020-12-31/1609384490959.jpg', '1362044152@qq.com', '15975238476', null, '2020-11-25 19:52:20', '2020-12-31 11:14:52', '1');
INSERT INTO `user` VALUES ('20', '13580230682', '4297f44b13955235245b2497399d7a93', '王五', '/uploads/2021-01-09/1610174444550.jpg', '404@qq.com', '13500000000', null, '2021-01-06 10:39:45', '2021-01-09 14:40:45', '0');

-- ----------------------------
-- Table structure for user_address
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '收获人姓名',
  `mobile` varchar(20) NOT NULL COMMENT '手机号',
  `province` varchar(20) DEFAULT NULL COMMENT '省',
  `city` varchar(20) DEFAULT NULL COMMENT '市',
  `country` varchar(20) DEFAULT NULL COMMENT '区',
  `detail` varchar(100) DEFAULT NULL COMMENT '详细地址',
  `delete_time` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL COMMENT '外键',
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `address_flag` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_address
-- ----------------------------
INSERT INTO `user_address` VALUES ('2', '张小三', '13580200262', '110000', '110100', '110101', '北京大学', null, '16', '2020-12-30 21:01:24', null, '0');
INSERT INTO `user_address` VALUES ('3', '王五', '13580230682', '440000', '441600', '441602', '河源职业技术学院', null, '16', '2021-01-06 10:13:01', '2020-11-25 20:17:40', '1');
INSERT INTO `user_address` VALUES ('5', '张三', '13580230682', '110000', '110100', '110101', '白金大学', null, '16', '2020-12-30 21:01:24', '2020-12-30 20:54:07', '0');
