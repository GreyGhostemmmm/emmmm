/*
Navicat MySQL Data Transfer

Source Server         : http
Source Server Version : 80016
Source Host           : localhost:3306
Source Database       : goodkill

Target Server Type    : MYSQL
Target Server Version : 80016
File Encoding         : 65001

Date: 2020-04-27 10:52:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_goods`
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) DEFAULT NULL COMMENT '名称',
  `title` varchar(64) DEFAULT NULL COMMENT '标题',
  `img` varchar(64) DEFAULT NULL COMMENT '图片',
  `detail` longtext COMMENT '详情',
  `price` decimal(10,0) DEFAULT NULL COMMENT '价格',
  `stock` int(11) DEFAULT NULL COMMENT '库存',
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_goods_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES ('1', 'iphoneX', 'Apple iphone X(A1865)', '/img/iphonex.png', 'Apple iphone X(A1865)', '8765', '1000');
INSERT INTO `t_goods` VALUES ('2', '华为Mate9', '华为 Mate9 4GB+32GB版', '/img/meta10.png', '华为 Mate9 4GB+32GB版', '3212', '500');

-- ----------------------------
-- Table structure for `t_miaosha_goods`
-- ----------------------------
DROP TABLE IF EXISTS `t_miaosha_goods`;
CREATE TABLE `t_miaosha_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `miaosha_price` decimal(10,2) DEFAULT NULL COMMENT '秒杀价格',
  `stock_count` int(11) DEFAULT NULL COMMENT '库存',
  `start_date` datetime DEFAULT NULL COMMENT '秒杀开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '秒杀结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='秒杀商品表';

-- ----------------------------
-- Records of t_miaosha_goods
-- ----------------------------
INSERT INTO `t_miaosha_goods` VALUES ('1', '1', '10.00', '9', '2020-04-17 13:00:00', '2020-04-28 15:00:00');
INSERT INTO `t_miaosha_goods` VALUES ('2', '2', '5.00', '9', '2020-04-17 13:00:00', '2020-04-28 15:00:00');

-- ----------------------------
-- Table structure for `t_miaosha_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_miaosha_order`;
CREATE TABLE `t_miaosha_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单id',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_uid_gid` (`user_id`,`goods_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7486 DEFAULT CHARSET=utf8 COMMENT='秒杀订单表';

-- ----------------------------
-- Records of t_miaosha_order
-- ----------------------------
INSERT INTO `t_miaosha_order` VALUES ('7484', '13125072342', '7484', '1');
INSERT INTO `t_miaosha_order` VALUES ('7485', '13125072342', '7485', '2');

-- ----------------------------
-- Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `delivery_addr_id` bigint(20) DEFAULT NULL COMMENT '收货地址id',
  `goods_name` varchar(16) DEFAULT NULL COMMENT '商品名称',
  `goods_count` int(11) DEFAULT NULL COMMENT '商品数量',
  `goods_price` decimal(10,2) DEFAULT NULL COMMENT '商品单价',
  `order_channel` tinyint(4) DEFAULT NULL COMMENT '1:pc,2:android,3:ios',
  `status` tinyint(4) DEFAULT NULL COMMENT '订单状态：0：新建未支付，1：已支付，2：已发货，3：已收货，4：已退款，5：已完成',
  `create_date` datetime DEFAULT NULL COMMENT '下单时间',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_order_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7486 DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('7484', '13125072342', '1', null, 'iphoneX', '1', '10.00', '1', '0', '2020-04-25 10:52:17', null);
INSERT INTO `t_order` VALUES ('7485', '13125072342', '2', null, '华为Mate9', '1', '5.00', '1', '0', '2020-04-26 03:09:31', null);

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL COMMENT 'id，手机号码',
  `nickname` varchar(255) NOT NULL,
  `password` varchar(32) DEFAULT NULL,
  `salt` varchar(10) DEFAULT NULL,
  `head` varchar(128) DEFAULT NULL,
  `last_login_date` datetime DEFAULT NULL,
  `login_count` bigint(10) DEFAULT '0',
  `register_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_user_id_uindex` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('13125072342', 'ghost', 'b7797cce01b4b131b433b6acf4add449', '1a2b3c4d', '', '2020-04-11 10:19:18', '1', '2020-04-11 10:19:23');
