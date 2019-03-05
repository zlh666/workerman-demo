/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : local_provincial_station

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 01/03/2019 14:55:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for v9_order
-- ----------------------------
DROP TABLE IF EXISTS `v9_order`;
CREATE TABLE `v9_order`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `orderId` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `payPattern` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[{\"PayType\":\"1\",\"PayTime\":1513130513,\"PayAmount\":\"532335\",\"UpdateTime\":1513130513}] 支付方式payType：1 微信 2支付宝 3 易宝 4 财付通 5充值卡',
  `payStatus` tinyint(2) NULL DEFAULT NULL COMMENT '必,0 未支付/待支付 1已支付 2待发货 3已发货 4已收货 5已取消  6已过期  7 已失效 8 已删除   9申请退单 10退单申请批准 11已退  12已锁定 13部分支付',
  `orderTime` int(11) NULL DEFAULT NULL COMMENT '下单时间',
  `operateTime` int(11) NULL DEFAULT NULL COMMENT '操作时间，视支付状态而定 , 0 则为支付时间，2 退款申请触发时间 3.退款成功时间 4.订单失效时间',
  `amount` float(25, 2) NOT NULL DEFAULT 0.00 COMMENT '订单金额',
  `supplierId` int(11) NULL DEFAULT NULL COMMENT '经销商id',
  `orderDes` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单备注',
  `studentId` int(11) NULL DEFAULT NULL COMMENT '购买者',
  `orderUnionId` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '总订单编号',
  `checkTime` int(11) NULL DEFAULT NULL COMMENT '查看时间',
  `status` tinyint(2) NULL DEFAULT 1 COMMENT '用户是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of v9_order
-- ----------------------------
INSERT INTO `v9_order` VALUES (7, '6666666666', '[{\"PayType\":\"1\",\"PayTime\":1526028184,\"PayAmount\":\"66666\",\"UpdateTime\":1526028184}]', 0, 1526265890, 1526265890, 23.00, 2, '', 976611, '354adfa', 1513046087, 1);
INSERT INTO `v9_order` VALUES (2, '246532', '[{\"PayType\":\"1\",\"PayTime\":1513220984,\"PayAmount\":\"898989\",\"UpdateTime\":1513220984}]', 0, 1512723840, 1512724048, 23.00, 1, '', 389618, '354adfa', 1512998992, 1);
INSERT INTO `v9_order` VALUES (3, '2465', '[{\"PayType\":\"1\",\"PayTime\":1513220984,\"PayAmount\":\"898989\",\"UpdateTime\":1513220984}]', 0, 1512998967, 1514358927, 23.00, 1, '', 389618, '354adfa', 1513233858, 1);
INSERT INTO `v9_order` VALUES (4, '23wqef', '[{\"PayType\":\"1\",\"PayTime\":1513220984,\"PayAmount\":\"898989\",\"UpdateTime\":1513220984}]', 0, 1512998966, 1512998994, 23.00, 1, '', 389618, '354adfa', 1513233844, 1);
INSERT INTO `v9_order` VALUES (5, '23wq54r4wf', '[{\"PayType\":\"1\",\"PayTime\":1513220984,\"PayAmount\":\"898989\",\"UpdateTime\":1513220984}]', 0, 1512998966, 1512998993, 23.00, 1, '', 389618, '354adfa', 1513233844, 1);
INSERT INTO `v9_order` VALUES (6, '34234rew1224', '[{\"PayType\":\"1\",\"PayTime\":1513220984,\"PayAmount\":\"898989\",\"UpdateTime\":1513220984}]', 0, 1513133057, 1513220984, 23.00, 2313243, '', 389618, '354adfa', 1513046087, 1);
INSERT INTO `v9_order` VALUES (8, '777777', '[{\"PayType\":\"1\",\"PayTime\":1513220984,\"PayAmount\":\"898989\",\"UpdateTime\":1513220984}]', 0, 1512998966, 1512959927, 23.00, 1, '', 389618, '354adfa', 1513233844, 1);
INSERT INTO `v9_order` VALUES (9, '7777777', '[{\"PayType\":\"2\",\"PayTime\":1513220984,\"PayAmount\":\"898989\",\"UpdateTime\":1513220984}]', 0, 1512998966, 1512960079, 23.00, 1, '', 389618, '354adfa', 1513233844, 1);
INSERT INTO `v9_order` VALUES (10, '888888', '[{\"PayType\":\"1\",\"PayTime\":1513220984,\"PayAmount\":\"898989\",\"UpdateTime\":1513220984}]', 0, 1512998966, 1512960216, 23.00, 1, '', 389618, '354adfa', 1513233844, 1);
INSERT INTO `v9_order` VALUES (11, '99999999', '[{\"PayType\":\"1\",\"PayTime\":1513220984,\"PayAmount\":\"898989\",\"UpdateTime\":1513220984}]', 0, 1512998966, 1512960277, 23.00, 1, '', 389618, '354adfa', 1513233844, 1);
INSERT INTO `v9_order` VALUES (12, '10000000000', '[{\"PayType\":\"1\",\"PayTime\":1513220984,\"PayAmount\":\"898989\",\"UpdateTime\":1513220984}]', 0, 1512998966, 1514899679, 23.00, 1, '', 336168, '354adfa', 1513233844, 1);
INSERT INTO `v9_order` VALUES (13, 'fdghfhfy45222d', '[{\"PayType\":\"1\",\"PayTime\":1513220984,\"PayAmount\":\"898989\",\"UpdateTime\":1513220984}]', 0, 1512998966, 1514899776, 23.00, 1, '', 336168, '354adfa', 1513233844, 1);
INSERT INTO `v9_order` VALUES (14, '22', '[{\"PayType\":\"1\",\"PayTime\":1513220984,\"PayAmount\":\"898989\",\"UpdateTime\":1513220984}]', 0, 1512998966, 1514899864, 23.00, 1, '', 336168, '354adfa', 1513233844, 1);
INSERT INTO `v9_order` VALUES (15, 'nnnnnnnnn', '[{\"PayType\":\"1\",\"PayTime\":1513220984,\"PayAmount\":\"898989\",\"UpdateTime\":1513220984}]', 0, 1512998966, 1514899853, 25.00, 1, '', 336168, '354adfa', 1513233844, 1);
INSERT INTO `v9_order` VALUES (16, '3nnnnnnn', '1', 1, 1525923908, 1525923908, 29.00, 0, '', 8, '354adfa', 1513233844, 1);
INSERT INTO `v9_order` VALUES (38, 'ceshi510888', '1 ', 0, 1526026162, 1526026162, 25.00, 2, '', 8, '354adfa', NULL, 1);
INSERT INTO `v9_order` VALUES (17, '666nnnnnnnnn', '[{\"PayType\":\"1\",\"PayTime\":1513220984,\"PayAmount\":\"898989\",\"UpdateTime\":1513220984}]', 0, 1512998966, 1514899789, 25.00, 1, '', 336168, '354adfa', 1513233844, 1);
INSERT INTO `v9_order` VALUES (18, '888888555555', '[{\"PayType\":\"1\",\"PayTime\":1513220984,\"PayAmount\":\"898989\",\"UpdateTime\":1513220984}]', 0, 1513233943, 1514899671, 25.00, 2313243, '', 336168, '354adfa', NULL, 1);
INSERT INTO `v9_order` VALUES (20, 'daeaeww3', '[{\"PayType\":\"1\",\"PayTime\":1515036712,\"PayAmount\":\"898989\",\"UpdateTime\":1515036712}]', 1, 1513927929, 1515036712, 25.00, 2313243, '', 336168, '354adfa', NULL, 1);
INSERT INTO `v9_order` VALUES (31, 'aqefaewew', '[{\"PayType\":\"1\",\"PayTime\":1515044462,\"PayAmount\":\"898989\",\"UpdateTime\":1515044462}]', 8, 1514531866, 1521103193, 25.00, 35434546, '', 336168, '354adfa', NULL, 1);
INSERT INTO `v9_order` VALUES (19, '8884345888555555', '1', 0, 1513927215, 1514899665, 25.00, 2313243, '', 336168, '354adfa', NULL, 1);
INSERT INTO `v9_order` VALUES (21, 'jjjjda', '1', 0, 1513927929, 1514899658, 29.00, 2313243, '', 336168, '354adfa', NULL, 1);
INSERT INTO `v9_order` VALUES (22, 'daeww3', '1', 0, 1513929543, 1514899607, 25.00, 2313243, '', 336168, '354adfa', NULL, 1);
INSERT INTO `v9_order` VALUES (23, 'jjda', '1', 0, 1513929543, 1514899619, 29.00, 2313243, '', 336168, '354adfa', NULL, 1);
INSERT INTO `v9_order` VALUES (24, 'daewwfdsd3', '1', 0, 1513929669, 1514899612, 25.00, 2313243, '', 336168, '354adfa', NULL, 1);
INSERT INTO `v9_order` VALUES (25, 'jeeeeeeeeeejda', '1', 0, 1513929669, 1514899645, 29.00, 2313243, '', 336168, '354adfa', NULL, 1);
INSERT INTO `v9_order` VALUES (26, 'shichanggui', '1', 0, 1513930173, 1514899593, 25.00, 2313243, '', 336168, '354adfa', NULL, 1);
INSERT INTO `v9_order` VALUES (27, 'qianzhuo', '1', 0, 1513930173, 1514899599, 29.00, 2313243, '', 336168, '354adfa', NULL, 1);
INSERT INTO `v9_order` VALUES (28, 'ew', '1', 0, 1514531150, 1514899556, 25.00, 2313243, '', 336168, '354adfa', NULL, 1);
INSERT INTO `v9_order` VALUES (29, 'r', '1', 0, 1514531150, 1514899274, 29.00, 2313243, '', 336168, '354adfa', NULL, 1);
INSERT INTO `v9_order` VALUES (37, 'ceshi510666', '1', 1, 1525924368, 1525924368, 29.00, 1, '', 8, '354adfa', NULL, 1);
INSERT INTO `v9_order` VALUES (32, 'weeyrtwad', '1', 5, 1514531866, 1515120565, 29.00, 33246, '', 336168, '354adfa', NULL, 1);
INSERT INTO `v9_order` VALUES (33, 'qreqwradfssz', '1', 8, 1514531894, 1515072694, 25.00, 35434546, '', 336168, '354adfa', NULL, 1);
INSERT INTO `v9_order` VALUES (34, 'wrsayfsytdte', '1', 8, 1514531894, 1515129231, 29.00, 33246, '', 336168, '354adfa', NULL, 1);
INSERT INTO `v9_order` VALUES (36, 'ceshi510', '1', 1, 1525924368, 1525924368, 25.00, 1, '', 8, '354adfa', NULL, 1);
INSERT INTO `v9_order` VALUES (39, 'ceshi510999', '1', 0, 1526026162, 1526026162, 29.00, 2, '', 8, '354adfa', NULL, 1);
INSERT INTO `v9_order` VALUES (40, 'ceshi512', '1', 0, 1526265894, 1526265894, 400.00, 1, '', 954639, '354adfa', NULL, 1);
INSERT INTO `v9_order` VALUES (41, 'ceshi512奥', '1', 0, 1526265894, 1526265894, 29.00, 1, '', 954639, '354adfa', NULL, 1);
INSERT INTO `v9_order` VALUES (42, 'WD2018051400036082', '1', 6, 1526292952, 1526551578, 0.00, 1, '', 391014, 'OU2018051400036147', NULL, 0);
INSERT INTO `v9_order` VALUES (43, 'WD2018051400036086', '1', 6, 1526294127, 1526553335, 0.00, 1, '', 391014, 'OU2018051400036151', NULL, 0);
INSERT INTO `v9_order` VALUES (44, 'WD2018051400036087', '[{\"FCID\":\"FC2018051600000001\",\"FeeOuterOrderID\":\"u6a21u62dfu5916u90e8u652fu4ed8u8ba2u5355u53f7\",\"FeeID\":\"FeeID20180509001\",\"FeeName\":\"u7701u7ad9u5faeu4fe1PCu7aefu6d4bu8bd5\",\"PayType\":\"1\",\"PayTime\":\"2018-05-16 14:30:25.357\",\"PayAmount\":\"1.00\",\"Currency\":\"C', 1, 1526294286, 1526452242, 0.00, 1, '', 391014, 'OU2018051400036152', NULL, 1);
INSERT INTO `v9_order` VALUES (45, 'WD2018051600000013', '[{\"FCID\":\"FC2018051600000002\",\"FeeOuterOrderID\":\"u6a21u62dfu5916u90e8u652fu4ed8u8ba2u5355u53f7\",\"FeeID\":\"FeeID20180509001\",\"FeeName\":\"u7701u7ad9u5faeu4fe1PCu7aefu6d4bu8bd5\",\"PayType\":\"1\",\"PayTime\":\"2018-05-16 14:37:08.133\",\"PayAmount\":\"1.00\",\"Currency\":\"C', 1, 1526452604, 1526452645, 0.00, 1, '', 391014, 'OU2018051600000013', NULL, 1);
INSERT INTO `v9_order` VALUES (46, 'WD2018051600000014', '1', 6, 1526453104, 1526712348, 0.00, 1, '', 391014, 'OU2018051600000014', NULL, 1);
INSERT INTO `v9_order` VALUES (47, 'WD2018051600000015', '[{\"FCID\":\"FC2018052300000043\",\"FeeOuterOrderID\":\"4200000120201805236767276509\",\"FeeID\":\"FeeID20180523502\",\"FeeName\":\"u7701u7ad9u603bu90e8u5faeu4fe1PCu7aef\",\"PayType\":\"1\",\"PayTime\":\"2018-05-23 18:41:26.000\",\"PayAmount\":\"0.10\",\"Currency\":\"CNY\",\"PayStatus\":\"\"}]', 1, 1526454804, 1526454831, 0.00, 1, '', 391014, 'OU2018051600000015', NULL, 1);
INSERT INTO `v9_order` VALUES (48, 'WD2018051600000021', '1', 5, 1526465468, 1526632581, 0.00, 1, '', 391014, 'OU2018051600000021', NULL, 1);
INSERT INTO `v9_order` VALUES (49, 'WD2018051700000006', '[{\"FCID\":\"FC2018051700000004\",\"FeeOuterOrderID\":\"u6a21u62dfu5916u90e8u652fu4ed8u8ba2u5355u53f7\",\"FeeID\":\"FeeID20180509001\",\"FeeName\":\"u7701u7ad9u5faeu4fe1PCu7aefu6d4bu8bd5\",\"PayType\":\"1\",\"PayTime\":\"2018-05-17 13:38:42.303\",\"PayAmount\":\"5.00\",\"Currency\":\"C', 1, 1526528595, 1526535522, 0.00, 1, '', 391014, 'OU2018051700000006', NULL, 1);
INSERT INTO `v9_order` VALUES (50, 'WD2018051700000007', '1', 5, 1526536456, 1526632142, 13800.00, 1, '', 391014, 'OU2018051700000007', NULL, 1);
INSERT INTO `v9_order` VALUES (51, 'WD2018051800000055', '1', 6, 1526629623, 1526888832, 13800.00, 1, '', 391014, 'OU2018051800000055', NULL, 1);
INSERT INTO `v9_order` VALUES (52, 'WD2018051800000056', '1', 8, 1526629781, 1526632187, 13800.00, 1, '', 391014, 'OU2018051800000056', NULL, 1);
INSERT INTO `v9_order` VALUES (53, 'WD2018052100000058', '1', 6, 1526896089, 1527155168, 15200.00, 1, '', 391014, 'OU2018052100000058', NULL, 1);
INSERT INTO `v9_order` VALUES (54, 'WD2018052200000002', '1', 0, 1526978754, 1526978754, 1.00, 0, '', 391014, 'OU2018052200000002', NULL, 1);

SET FOREIGN_KEY_CHECKS = 1;
