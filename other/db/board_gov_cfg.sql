/*
 Navicat Premium Data Transfer

 Source Server         : spack
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : board_gov_cfg

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 11/07/2024 16:02:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for rel_airline_fligt
-- ----------------------------
DROP TABLE IF EXISTS `rel_airline_fligt`;
CREATE TABLE `rel_airline_fligt`  (
  `airline_id` bigint NULL DEFAULT NULL COMMENT '航空公司ID',
  `flight_id` bigint NULL DEFAULT NULL COMMENT '航班ID'
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_bin COMMENT = '航司航班关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rel_airline_fligt
-- ----------------------------

-- ----------------------------
-- Table structure for rel_group_staff
-- ----------------------------
DROP TABLE IF EXISTS `rel_group_staff`;
CREATE TABLE `rel_group_staff`  (
  `duty_group_id` bigint NULL DEFAULT NULL COMMENT '执勤小组ID',
  `staff_id` bigint NULL DEFAULT NULL COMMENT '员工ID'
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_bin COMMENT = '执勤小组-员工关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rel_group_staff
-- ----------------------------

-- ----------------------------
-- Table structure for rel_monitor_point_dev
-- ----------------------------
DROP TABLE IF EXISTS `rel_monitor_point_dev`;
CREATE TABLE `rel_monitor_point_dev`  (
  `monitor_device_id` bigint NULL DEFAULT NULL COMMENT '监控设备ID',
  `monitor_point_id` bigint NULL DEFAULT NULL COMMENT '监控点位ID'
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rel_monitor_point_dev
-- ----------------------------

-- ----------------------------
-- Table structure for rel_visitor_airline
-- ----------------------------
DROP TABLE IF EXISTS `rel_visitor_airline`;
CREATE TABLE `rel_visitor_airline`  (
  `visitor_id` bigint NOT NULL COMMENT '旅客ID',
  `airline_id` bigint NULL DEFAULT NULL COMMENT '航班ID'
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rel_visitor_airline
-- ----------------------------

-- ----------------------------
-- Table structure for rel_visitor_courtesy
-- ----------------------------
DROP TABLE IF EXISTS `rel_visitor_courtesy`;
CREATE TABLE `rel_visitor_courtesy`  (
  `visitor_id` bigint NOT NULL COMMENT '旅客ID',
  `courtesy_id` bigint NULL DEFAULT NULL COMMENT '礼遇事件ID',
  PRIMARY KEY (`visitor_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_bin COMMENT = '旅客-礼遇事件关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rel_visitor_courtesy
-- ----------------------------

-- ----------------------------
-- Table structure for rel_visitor_deputation
-- ----------------------------
DROP TABLE IF EXISTS `rel_visitor_deputation`;
CREATE TABLE `rel_visitor_deputation`  (
  `visitor_id` bigint NOT NULL COMMENT '旅客ID',
  `deputation_id` bigint NULL DEFAULT NULL COMMENT '代表团ID'
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rel_visitor_deputation
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
