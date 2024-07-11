/*
 Navicat Premium Data Transfer

 Source Server         : spack
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : board_gov_meta

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 11/07/2024 16:02:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for biz_obj_statistics_data
-- ----------------------------
DROP TABLE IF EXISTS `biz_obj_statistics_data`;
CREATE TABLE `biz_obj_statistics_data`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '业务统计记录ID',
  `biz_statistic_cfg_id` bigint NULL DEFAULT NULL COMMENT '业务统计配置ID',
  `biz_obj_key` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务关联属性Key',
  `biz_obj_calc_value` decimal(12, 2) NULL DEFAULT NULL COMMENT '业务统计数据值',
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手动业务统计描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of biz_obj_statistics_data
-- ----------------------------
INSERT INTO `biz_obj_statistics_data` VALUES (1, 13, 'visitors_number_2024_01', 800000.00, '2024年1月出入境人员数量', ' sys', '2024-05-21 15:35:29', '  sys', '2024-05-21 15:35:31');
INSERT INTO `biz_obj_statistics_data` VALUES (2, 13, 'visitors_number_2024_02', 650000.00, '2024年2月出入境人员数量', ' sys', '2024-05-21 15:35:29', '  sys', '2024-05-21 15:35:31');
INSERT INTO `biz_obj_statistics_data` VALUES (3, 13, 'visitors_number_2024_03', 770000.00, '2024年3月出入境人员数量', ' sys', '2024-05-21 15:35:29', '  sys', '2024-05-21 15:35:31');
INSERT INTO `biz_obj_statistics_data` VALUES (4, 13, 'visitors_number_2024_04', 340000.00, '2024年4月出入境人员数量', ' sys', '2024-05-21 15:35:29', '  sys', '2024-05-21 15:35:31');
INSERT INTO `biz_obj_statistics_data` VALUES (5, 13, 'visitors_number_2024_05', 700000.00, '2024年5月出入境人员数量', ' sys', '2024-05-21 15:35:29', '  sys', '2024-05-21 15:35:31');
INSERT INTO `biz_obj_statistics_data` VALUES (6, 13, 'visitors_number_2024_06', 990000.00, '2024年6月出入境人员数量', ' sys', '2024-05-21 15:35:29', '  sys', '2024-05-21 15:35:31');
INSERT INTO `biz_obj_statistics_data` VALUES (7, 14, 'country_visitors_number_1_2024', 20000.00, '美国', ' sys', '2024-05-21 15:46:13', ' sys', '2024-05-21 15:46:17');
INSERT INTO `biz_obj_statistics_data` VALUES (8, 14, 'country_visitors_number_2_2024', 19000.00, '意大利', ' sys', '2024-05-21 15:46:13', ' sys', '2024-05-21 15:46:17');
INSERT INTO `biz_obj_statistics_data` VALUES (9, 14, 'country_visitors_number_3_2024', 16000.00, '澳大利亚', ' sys', '2024-05-21 15:46:13', ' sys', '2024-05-21 15:46:17');
INSERT INTO `biz_obj_statistics_data` VALUES (10, 14, 'country_visitors_number_4_2024', 14000.00, '日本', ' sys', '2024-05-21 15:46:13', ' sys', '2024-05-21 15:46:17');
INSERT INTO `biz_obj_statistics_data` VALUES (11, 14, 'country_visitors_number_5_2024', 13000.00, '韩国', ' sys', '2024-05-21 15:46:13', ' sys', '2024-05-21 15:46:17');
INSERT INTO `biz_obj_statistics_data` VALUES (12, 14, 'country_visitors_number_6_2024', 12000.00, '法国', ' sys', '2024-05-21 15:46:13', ' sys', '2024-05-21 15:46:17');
INSERT INTO `biz_obj_statistics_data` VALUES (13, 14, 'country_visitors_number_7_2024', 10000.00, '西班牙', ' sys', '2024-05-21 15:46:13', ' sys', '2024-05-21 15:46:17');
INSERT INTO `biz_obj_statistics_data` VALUES (14, 14, 'country_visitors_number_8_2024', 9000.00, '匈牙利', ' sys', '2024-05-21 15:46:13', ' sys', '2024-05-21 15:46:17');
INSERT INTO `biz_obj_statistics_data` VALUES (15, 14, 'country_visitors_number_9_2024', 8000.00, '梵蒂冈', ' sys', '2024-05-21 15:46:13', ' sys', '2024-05-21 15:46:17');
INSERT INTO `biz_obj_statistics_data` VALUES (16, 14, 'country_visitors_number_10_2024', 7000.00, '英国', ' sys', '2024-05-21 15:46:13', ' sys', '2024-05-21 15:46:17');
INSERT INTO `biz_obj_statistics_data` VALUES (17, 15, 'visitors_nationality_1_2024', 20000.00, '美国', ' sys', '2024-05-21 15:53:09', ' sys', '2024-05-21 15:53:12');
INSERT INTO `biz_obj_statistics_data` VALUES (18, 15, 'visitors_nationality_2_2024', 20000.00, '意大利', ' sys', '2024-05-21 15:53:09', ' sys', '2024-05-21 15:53:12');
INSERT INTO `biz_obj_statistics_data` VALUES (19, 15, 'visitors_nationality_3_2024', 19000.00, '澳大利亚', ' sys', '2024-05-21 15:53:09', ' sys', '2024-05-21 15:53:12');
INSERT INTO `biz_obj_statistics_data` VALUES (20, 15, 'visitors_nationality_4_2024', 18000.00, '日本', ' sys', '2024-05-21 15:53:09', ' sys', '2024-05-21 15:53:12');
INSERT INTO `biz_obj_statistics_data` VALUES (21, 15, 'visitors_nationality_5_2024', 17000.00, '韩国', ' sys', '2024-05-21 15:53:09', ' sys', '2024-05-21 15:53:12');
INSERT INTO `biz_obj_statistics_data` VALUES (22, 15, 'visitors_nationality_6_2024', 16000.00, '法国', ' sys', '2024-05-21 15:53:09', ' sys', '2024-05-21 15:53:12');
INSERT INTO `biz_obj_statistics_data` VALUES (23, 15, 'visitors_nationality_7_2024', 15000.00, '西班牙', ' sys', '2024-05-21 15:53:09', ' sys', '2024-05-21 15:53:12');
INSERT INTO `biz_obj_statistics_data` VALUES (24, 15, 'visitors_nationality_8_2024', 14000.00, '匈牙利', ' sys', '2024-05-21 15:53:09', ' sys', '2024-05-21 15:53:12');
INSERT INTO `biz_obj_statistics_data` VALUES (25, 15, 'visitors_nationality_9_2024', 13000.00, '加拿大', ' sys', '2024-05-21 15:53:09', ' sys', '2024-05-21 15:53:12');
INSERT INTO `biz_obj_statistics_data` VALUES (26, 15, 'visitors_nationality_10_2024', 12000.00, '英国', ' sys', '2024-05-21 15:53:09', ' sys', '2024-05-21 15:53:12');
INSERT INTO `biz_obj_statistics_data` VALUES (27, 16, 'visitors_number_2024_05_21', 80000.00, '2024年5月21日预计人数总流量', ' sys', '2024-05-21 17:03:30', 'sys', '2024-05-21 17:03:31');
INSERT INTO `biz_obj_statistics_data` VALUES (28, 17, 'flights_number_2024_05_21', 3000.00, '2024年5月21日预计航班总流量', 'sys', '2024-05-21 17:10:59', 'sys', '2024-05-21 17:11:00');
INSERT INTO `biz_obj_statistics_data` VALUES (29, 1, 'testbizObjCalcValue', 1000.00, NULL, NULL, '2024-06-20 11:14:10', NULL, '2024-06-20 11:14:10');
INSERT INTO `biz_obj_statistics_data` VALUES (30, 1, 'testbizObjCalcValue1', 1000.00, NULL, NULL, '2024-06-20 12:43:50', NULL, '2024-06-20 12:43:50');
INSERT INTO `biz_obj_statistics_data` VALUES (31, 8, '当前Api查询结果数据数量', 47.00, NULL, 'SPACE_SYS_ADMIN', '2024-07-11 10:50:44', NULL, '2024-07-11 10:50:44');

-- ----------------------------
-- Table structure for cfg_airline_flight
-- ----------------------------
DROP TABLE IF EXISTS `cfg_airline_flight`;
CREATE TABLE `cfg_airline_flight`  (
  `airline_id` bigint NULL DEFAULT NULL COMMENT '机场ID',
  `flight_id` bigint NULL DEFAULT NULL COMMENT '航班ID'
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cfg_airline_flight
-- ----------------------------

-- ----------------------------
-- Table structure for cfg_airline_fligt
-- ----------------------------
DROP TABLE IF EXISTS `cfg_airline_fligt`;
CREATE TABLE `cfg_airline_fligt`  (
  `airline_id` bigint NULL DEFAULT NULL COMMENT '航空公司ID',
  `flight_id` bigint NULL DEFAULT NULL COMMENT '航班ID'
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cfg_airline_fligt
-- ----------------------------

-- ----------------------------
-- Table structure for cfg_biz_obj_statistics
-- ----------------------------
DROP TABLE IF EXISTS `cfg_biz_obj_statistics`;
CREATE TABLE `cfg_biz_obj_statistics`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '业务统计配置ID',
  `biz_obj_type` int NULL DEFAULT NULL COMMENT '业务对象类型(1-总数量,2-平均值,3-比例)',
  `biz_obj_calc_type` int NULL DEFAULT NULL COMMENT '业务统计维度(1-按天,2-按月,3-按季,4-按年)',
  `biz_obj_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务对象名称',
  `biz_obj_alias` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务对象别名',
  `dashboard_show_type` int NULL DEFAULT NULL COMMENT '大屏展示图表方式(1-滚动数字,2-纵向柱状图,3-横向柱状图,4-饼图,5-折线图,6-柱状折线图,7-热力图,8-其它)',
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手动业务统计描述',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cfg_biz_obj_statistics
-- ----------------------------
INSERT INTO `cfg_biz_obj_statistics` VALUES (1, 1, 4, 'border_port_exit_entry_visitors_number', '本年度出入境人员数量', 1, NULL, '0', ' sys', '2024-05-21 14:16:49', '  sys', '2024-05-21 14:16:51');
INSERT INTO `cfg_biz_obj_statistics` VALUES (2, 1, 2, 'country_border_port_visitors_number', '本年度全国空港口岸验放人数', 1, NULL, '0', ' sys', '2024-05-21 14:34:24', '  sys', '2024-05-21 14:34:26');
INSERT INTO `cfg_biz_obj_statistics` VALUES (3, 1, 4, 'chinese_visitors_number', '本年度中国公民数量', 1, NULL, '0', ' sys', '2024-05-21 15:35:55', ' sys', '2024-05-21 15:36:24');
INSERT INTO `cfg_biz_obj_statistics` VALUES (4, 1, 4, 'foreigner_visitors_number', '本年度外国人数量', 1, NULL, '0', ' sys', '2024-05-21 15:35:58', ' sys', '2024-05-21 15:36:27');
INSERT INTO `cfg_biz_obj_statistics` VALUES (5, 1, 4, '24_hour_transit_visa_free_passengers_number', '本年度24小时过境免签旅客数量', 1, NULL, '0', ' sys', '2024-05-21 15:36:00', ' sys', '2024-05-21 15:36:29');
INSERT INTO `cfg_biz_obj_statistics` VALUES (6, 1, 4, '144_hour_transit_visa_free_passengers_number', '本年度144小时过境免签旅客数量', 1, NULL, '0', ' sys', '2024-05-21 15:36:03', ' sys', '2024-05-21 15:36:33');
INSERT INTO `cfg_biz_obj_statistics` VALUES (7, 1, 4, 'border_port_direct_transit_personnels_number', '本年度直接过境免办人员数量', 1, NULL, '0', ' sys', '2024-05-21 15:36:06', ' sys', '2024-05-21 15:36:35');
INSERT INTO `cfg_biz_obj_statistics` VALUES (8, 1, 4, 'border_port_exit_entry_flights_number', '本年度出入境航班数量', 1, NULL, '0', ' sys', '2024-05-21 15:36:09', ' sys', '2024-05-21 15:36:37');
INSERT INTO `cfg_biz_obj_statistics` VALUES (9, 1, 4, 'country_border_port_flights_number', '本年度全国空港口岸验放航班数', 1, NULL, '0', ' sys', '2024-05-21 15:36:12', ' sys', '2024-05-21 15:36:39');
INSERT INTO `cfg_biz_obj_statistics` VALUES (10, 1, 4, 'airliner_number', '本年度客机数量', 1, NULL, '0', ' sys', '2024-05-21 15:36:14', ' sys', '2024-05-21 15:36:41');
INSERT INTO `cfg_biz_obj_statistics` VALUES (11, 1, 4, 'freighter_number', '本年度货机数量', 1, NULL, '0', ' sys', '2024-05-21 15:36:17', ' sys', '2024-05-21 15:36:44');
INSERT INTO `cfg_biz_obj_statistics` VALUES (12, 1, 4, 'business_jet_number', '本年度公务机数量', 1, NULL, '0', ' sys', '2024-05-21 15:36:19', ' sys', '2024-05-21 15:36:46');
INSERT INTO `cfg_biz_obj_statistics` VALUES (13, 1, 2, 'border_port_exit_entry_visitors_number', '今年以来每月出入境人员流量', 6, NULL, '0', ' sys', '2024-05-21 15:36:22', ' sys', '2024-05-21 15:36:48');
INSERT INTO `cfg_biz_obj_statistics` VALUES (14, 1, 4, 'top_ten_exit_country', '当年内地居民出境前往国排名前十的国家及人数', 3, NULL, '0', 'sys', '2024-05-21 17:03:54', ' sys', '2024-05-21 17:04:00');
INSERT INTO `cfg_biz_obj_statistics` VALUES (15, 1, 4, 'top_ten_entry_nationality', '当年入境外国人国籍排名前十的国家及人数', 3, NULL, '0', 'sys', '2024-05-21 17:03:57', ' sys', '2024-05-21 17:04:01');
INSERT INTO `cfg_biz_obj_statistics` VALUES (16, 1, 1, 'estimated_visitors_total_flow', '预计验放人数总流量', 4, NULL, '0', 'sys', '2024-05-21 17:03:58', ' sys', '2024-05-21 17:04:04');
INSERT INTO `cfg_biz_obj_statistics` VALUES (17, 1, 1, 'estimated_flights_total_flow', '预计验放航班总流量', 4, NULL, '0', 'sys', '2024-05-21 17:09:37', 'sys', '2024-05-21 17:09:39');
INSERT INTO `cfg_biz_obj_statistics` VALUES (18, 1, 4, 'border_port_exit_entry_visitors_number', '当日每小时出入境人员', 1, NULL, '0', 'sys', '2024-05-21 17:09:37', 'sys', '2024-05-21 17:09:39');
INSERT INTO `cfg_biz_obj_statistics` VALUES (19, 1, 1, 'border_port_exit_entry_visitors_number', '当日出入境人员', 1, NULL, '0', 'sys', '2024-05-21 17:09:37', 'sys', '2024-05-21 17:09:39');
INSERT INTO `cfg_biz_obj_statistics` VALUES (20, 1, 1, 'chinese_visitors_number', '当日中国公民数量', 1, NULL, '0', 'sys', '2024-05-21 17:09:37', 'sys', '2024-05-21 17:09:39');
INSERT INTO `cfg_biz_obj_statistics` VALUES (21, 1, 1, 'foreigner_visitors_number', '当日外国人数量', 1, NULL, '0', 'sys', '2024-05-21 17:09:37', 'sys', '2024-05-21 17:09:39');
INSERT INTO `cfg_biz_obj_statistics` VALUES (22, 1, 1, '24_hour_transit_visa_free_passengers_number', '当日24小时过境免签旅客数量', 1, NULL, '0', 'sys', '2024-05-21 17:09:37', 'sys', '2024-05-21 17:09:39');
INSERT INTO `cfg_biz_obj_statistics` VALUES (23, 1, 1, '144_hour_transit_visa_free_passengers_number', '当日144小时过境免签旅客数量', 1, NULL, '0', 'sys', '2024-05-21 17:09:37', 'sys', '2024-05-21 17:09:39');
INSERT INTO `cfg_biz_obj_statistics` VALUES (24, 1, 1, 'border_port_direct_transit_personnels_number', '当日直接过境免办人员数量', 1, NULL, '0', 'sys', '2024-05-21 17:09:37', 'sys', '2024-05-21 17:09:39');
INSERT INTO `cfg_biz_obj_statistics` VALUES (25, 1, 1, 'quick_clearance_personnels_number', '当日快捷通道通关人数', 1, NULL, '0', 'sys', '2024-05-21 17:09:37', 'sys', '2024-05-21 17:09:39');
INSERT INTO `cfg_biz_obj_statistics` VALUES (26, 1, 1, 'port_restricted_area_employees_number', '当日/实时口岸限定区域员工人数', 1, NULL, '0', 'sys', '2024-05-21 17:09:37', 'sys', '2024-05-21 17:09:39');
INSERT INTO `cfg_biz_obj_statistics` VALUES (27, 1, 1, 'border_port_exit_entry_flights_number', '当日出入境航班数', 1, NULL, '0', 'sys', '2024-05-21 17:09:37', 'sys', '2024-05-21 17:09:39');
INSERT INTO `cfg_biz_obj_statistics` VALUES (28, 1, 1, 'capturing_fugitives_number', '当日查获在控在逃对象', 1, NULL, '0', 'sys', '2024-05-21 17:09:37', 'sys', '2024-05-21 17:09:39');
INSERT INTO `cfg_biz_obj_statistics` VALUES (29, 1, 1, 'capturing_prohibit_outbound_visitors_number', '当日查获法定不准出境人员人数', 1, NULL, '0', 'sys', '2024-05-21 17:09:37', 'sys', '2024-05-21 17:09:39');
INSERT INTO `cfg_biz_obj_statistics` VALUES (30, 1, 1, 'acceptance_review_repatriated_visitors_number', '接收审理遣返遣送人员人数', 1, NULL, '0', 'sys', '2024-05-21 17:09:37', 'sys', '2024-05-21 17:09:39');
INSERT INTO `cfg_biz_obj_statistics` VALUES (31, 3, 1, '业务统计配置测试名称', '业务统计配置测试别名', 8, '业务统计配置测试描述', '1', NULL, '2024-07-04 11:28:14', NULL, '2024-07-04 12:07:46');
INSERT INTO `cfg_biz_obj_statistics` VALUES (61, 1, 2, '业务新增统计测试01', '业务新增统计测试01', 5, '业务新增统计测试01', '0', NULL, '2024-07-04 11:37:57', NULL, '2024-07-04 11:37:57');

-- ----------------------------
-- Table structure for cfg_boardsite_map
-- ----------------------------
DROP TABLE IF EXISTS `cfg_boardsite_map`;
CREATE TABLE `cfg_boardsite_map`  (
  `board_site_id` bigint NULL DEFAULT NULL,
  `ele_map_id` bigint NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cfg_boardsite_map
-- ----------------------------

-- ----------------------------
-- Table structure for cfg_data_action
-- ----------------------------
DROP TABLE IF EXISTS `cfg_data_action`;
CREATE TABLE `cfg_data_action`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '数据存储目标配置ID',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `app_id` bigint NULL DEFAULT NULL COMMENT '应用ID',
  `data_action_type` int NULL DEFAULT NULL COMMENT '数据操作动作类型(1-查询原子数据,2-查询统计后数据,3-查询汇总数量,4-其它)',
  `data_action_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '数据操作动作编码',
  `data_action_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '数据操作动作名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cfg_data_action
-- ----------------------------
INSERT INTO `cfg_data_action` VALUES (1, NULL, 1, 2, 1, 'testActionCode', 'test-action', 'test', NULL, '2024-06-04 16:43:59', 'admin', '2024-06-13 10:07:28');
INSERT INTO `cfg_data_action` VALUES (5, NULL, 1, 1, 1, 'test01', 'test01', 'test02', 'admin', '2024-06-06 18:04:31', 'admin', '2024-06-06 18:04:45');
INSERT INTO `cfg_data_action` VALUES (6, NULL, 1, 14, 3, 'getVisitorCount', '获取出入境人员信息', NULL, 'admin', '2024-06-14 15:28:56', 'admin', '2024-06-14 15:28:56');
INSERT INTO `cfg_data_action` VALUES (8, NULL, 1, 14, 3, 'getAnnualPeopleFlowCount', '获取本年度出入境人员数量', '获取本年度出入境人员数量', 'admin', '2024-06-20 14:30:13', 'admin', '2024-06-20 14:30:13');
INSERT INTO `cfg_data_action` VALUES (9, NULL, 1, 2, 1, 'getDemoClientData', '获取demo客户端数据', '获取demo客户端数据', 'admin', '2024-07-05 11:10:09', 'admin', '2024-07-05 11:10:09');
INSERT INTO `cfg_data_action` VALUES (10, NULL, 1, 14, 1, 'getBizObjStatisticCount', '查询业务统计记录', '查询业务统计记录', 'admin', '2024-07-09 13:39:51', 'admin', '2024-07-09 13:39:51');
INSERT INTO `cfg_data_action` VALUES (11, NULL, 1, 14, 1, 'getAPIData', '查询API数据', '查询API数据', 'admin', '2024-07-09 15:57:28', 'admin', '2024-07-09 15:57:28');

-- ----------------------------
-- Table structure for cfg_data_rw_datasource
-- ----------------------------
DROP TABLE IF EXISTS `cfg_data_rw_datasource`;
CREATE TABLE `cfg_data_rw_datasource`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '数据动作数据源配置ID',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `data_action_id` bigint NULL DEFAULT NULL COMMENT '数据操作动作ID',
  `app_id` bigint NULL DEFAULT NULL COMMENT '配置应用ID',
  `app_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '配置应用编码',
  `data_rw_direction` int NULL DEFAULT NULL COMMENT '数据读写方向(1-从某数据源读取,2-向某数据源写入)',
  `src_datasource_id` bigint NULL DEFAULT NULL COMMENT '数据源配置ID',
  `data_storage_id` bigint NULL DEFAULT NULL COMMENT '数据存储配置ID',
  `data_process_key` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '数据处理业务标识',
  `exec_seq_no` int NULL DEFAULT NULL COMMENT '执行次序',
  `data_process_flag` int NULL DEFAULT NULL COMMENT '数据执行标识(0-不生效,1-生效)',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cfg_data_rw_datasource
-- ----------------------------
INSERT INTO `cfg_data_rw_datasource` VALUES (1, 1, 1, 1, '1', 1, 1, NULL, 'P1', 1, 1, '0', '111', ' ', '2024-06-05 16:28:13', ' ', '2024-06-05 16:28:13');
INSERT INTO `cfg_data_rw_datasource` VALUES (5, 1, 1, 14, '14', 1, 15, NULL, 'P1', 1, 1, '0', '00', 'admin', '2024-06-13 10:11:59', 'admin', '2024-06-20 16:02:40');
INSERT INTO `cfg_data_rw_datasource` VALUES (6, 1, 6, 14, '14', 1, 16, NULL, 'P2', 2, 1, '0', '获取出入境人员信息', 'admin', '2024-06-14 15:31:23', 'admin', '2024-06-20 16:03:07');
INSERT INTO `cfg_data_rw_datasource` VALUES (8, 1, 8, 14, '14', 1, 19, NULL, NULL, 3, 1, '0', '获取本年度出入境人员数量', 'admin', '2024-06-20 14:34:49', 'admin', '2024-06-20 14:58:37');
INSERT INTO `cfg_data_rw_datasource` VALUES (9, 1, 8, 14, '14', 2, NULL, 1, NULL, 4, 1, '0', '保存本年度出入境人员数量', 'admin', '2024-06-20 16:34:26', 'admin', '2024-06-20 16:34:26');
INSERT INTO `cfg_data_rw_datasource` VALUES (10, 1, 9, 2, 'demo2', 1, 2, NULL, 'Api1', 1, 1, '0', '获取demo服务数据', 'admin', '2024-07-05 11:15:54', 'admin', '2024-07-05 11:15:54');
INSERT INTO `cfg_data_rw_datasource` VALUES (11, 1, 10, 14, 'DSJ01', 1, 3, NULL, 'P1', 1, 1, '0', '读取查询业务统计记录总数', 'admin', '2024-07-09 13:41:17', 'admin', '2024-07-09 13:41:17');
INSERT INTO `cfg_data_rw_datasource` VALUES (12, 1, 10, 14, 'DSJ01', 1, 3, NULL, 'P2', 2, 1, '0', '查询业务统计记录P2', 'admin', '2024-07-09 13:42:18', 'admin', '2024-07-09 13:42:18');
INSERT INTO `cfg_data_rw_datasource` VALUES (13, 1, 10, 14, 'DSJ01', 2, NULL, 1, '1', 1, 1, '0', '1', 'admin', '2024-07-09 14:08:34', 'admin', '2024-07-09 14:08:34');
INSERT INTO `cfg_data_rw_datasource` VALUES (14, 1, 11, 14, 'DSJ01', 1, 4, NULL, 'API1', 1, 1, '0', '查询API数据API1', 'admin', '2024-07-09 15:58:11', 'admin', '2024-07-09 16:42:51');
INSERT INTO `cfg_data_rw_datasource` VALUES (15, 1, 11, 14, 'DSJ01', 2, NULL, 8, 'P1', 1, 1, '0', 'FYH-MySQL数据写入P1', 'admin', '2024-07-09 16:02:32', 'admin', '2024-07-09 16:16:41');

-- ----------------------------
-- Table structure for cfg_data_storage
-- ----------------------------
DROP TABLE IF EXISTS `cfg_data_storage`;
CREATE TABLE `cfg_data_storage`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '数据存储目标配置ID',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `data_storage_category` int NULL DEFAULT NULL COMMENT '数据存储目标类别(1-RDBMS,2-NoSQL,3-API,4-Cache,5-File,6-Other)',
  `data_storage_type` int NULL DEFAULT NULL COMMENT '数据存储目标类型(1-MySQL,2-PostgreSQL,3-ElasticSearch,4-MongoDB,5-Redis,6-Local Cache,7-Web API,8-OSS,9-Abandon,10-Other)',
  `data_storage_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '数据存储目标编码',
  `data_storage_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '数据存储目标名称',
  `cfg_datasource_id` bigint NULL DEFAULT NULL COMMENT '目标数据源配置ID',
  `cfg_datasource_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '目标数据源编码',
  `cfg_datasource_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '目标数据源名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cfg_data_storage
-- ----------------------------
INSERT INTO `cfg_data_storage` VALUES (1, NULL, 1, 1, 2, 'VISITOR_RECORD', '旅客记录', 1, 'board_gov_meta', '机场配置表', NULL, ' sys', '2024-05-17 16:09:02', '  sys', '2024-05-17 16:09:05');
INSERT INTO `cfg_data_storage` VALUES (3, NULL, NULL, 2, 2, 'fangyaohui', 'yaohui', 9, 'a', 'fang', 'test_fangyaohui', NULL, '2024-06-05 16:25:21', NULL, '2024-06-05 16:25:21');
INSERT INTO `cfg_data_storage` VALUES (4, NULL, NULL, 1, 3, 'test', 'fang', 9, 'a', 'fang', 'aaaaaaaa', NULL, '2024-06-05 16:28:13', NULL, '2024-06-06 14:25:40');
INSERT INTO `cfg_data_storage` VALUES (6, NULL, NULL, 2, 1, 'test', 'test', 9, 'a', 'fang', 'test', NULL, '2024-06-06 14:26:22', NULL, '2024-06-06 14:26:36');
INSERT INTO `cfg_data_storage` VALUES (7, NULL, NULL, 1, 1, '法', '哈', 1, 'test', 'test', '阿斯顿发斯蒂芬', NULL, '2024-06-06 14:26:56', NULL, '2024-06-06 14:34:02');
INSERT INTO `cfg_data_storage` VALUES (8, NULL, 1, 1, 1, 'Fyh-MySQL', 'FYH-MySQL数据存储', 3, 'FyhMySQL', 'FYH-MySQL数据源', 'FYH-MySQL数据存储', NULL, '2024-07-09 16:01:39', NULL, '2024-07-09 16:01:39');

-- ----------------------------
-- Table structure for cfg_datasource_info
-- ----------------------------
DROP TABLE IF EXISTS `cfg_datasource_info`;
CREATE TABLE `cfg_datasource_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '数据源配置ID',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `ds_category` int NULL DEFAULT NULL COMMENT '数据源类别(1-API,2-DB,3-File Import,4-SDK,5-MQ,6-WebSocket,7-Web Spide)',
  `ds_type` int NULL DEFAULT NULL COMMENT '数据源类型(1-Web API,2-MySQL,3-PostgreSQL,4-ElasticSearch,5-Excel,6-CSV,7-Enum,8-Method Invoke,9-RocketMQ,10-MQTT,11-WebSocket,12-Web Page Spider)',
  `ds_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '数据源编码',
  `ds_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '数据源名称',
  `ds_url` varchar(1200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '数据源URL',
  `ds_cfg_params` json NULL COMMENT '数据源配置项参数',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '数据源信息定义表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cfg_datasource_info
-- ----------------------------
INSERT INTO `cfg_datasource_info` VALUES (1, 1, 1, 2, 2, 'board_gov_platform', '机场配置表', 'jdbc:mysql://localhost:3306/board_gov_platform?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=GMT%2B8&allowMultiQueries=true&allowPublicKeyRetrieval=true', '{\"host\": \"localhost\", \"port\": \"3306\", \"user\": \"root\", \"charset\": \"\", \"timeout\": \"\", \"database\": \"board_gov_platform\", \"password\": \"123456\", \"waitTimeout\": \"\", \"connectTimeout\": \"\", \"maxAllowedPacket\": \"\", \"interactiveTimeout\": \"\"}', '0', NULL, ' sys', '2024-05-17 16:07:47', '  sys', '2024-05-17 16:07:52');
INSERT INTO `cfg_datasource_info` VALUES (2, NULL, 1, 1, 1, 'demoClientApi', 'demo客户端', 'http://localhost:8993/user/getCount?userName=Superman', '{\"apiKey\": \"ddApiKey\", \"baseUrl\": \"http://localhost:8993/user/getCount\", \"apiMethod\": \"GET\", \"apiHeaders\": \"[{\\\"key\\\":\\\"\\\",\\\"value\\\":\\\"\\\"}]\", \"apiReqParams\": \"[{\\\"key\\\":\\\"userName\\\",\\\"value\\\":\\\"human\\\"}]\"}', '0', NULL, 'admin', '2024-07-05 11:09:09', 'admin', '2024-07-05 11:09:09');
INSERT INTO `cfg_datasource_info` VALUES (3, NULL, 1, 2, 2, 'FyhMySQL', 'FYH-MySQL数据源', 'jdbc:mysql://localhost:3306/board_gov_meta?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=GMT%2B8&allowMultiQueries=true&allowPublicKeyRetrieval=true', '{\"host\": \"localhost\", \"port\": \"3306\", \"user\": \"root\", \"charset\": \"\", \"timeout\": \"\", \"database\": \"board_gov_platform\", \"password\": \"123456\", \"waitTimeout\": \"\", \"connectTimeout\": \"\", \"maxAllowedPacket\": \"\", \"interactiveTimeout\": \"\"}', '0', 'FYH-MySQL数据源', 'admin', '2024-07-09 13:37:35', 'admin', '2024-07-09 15:55:32');
INSERT INTO `cfg_datasource_info` VALUES (4, NULL, 1, 1, 1, 'FYH-API', 'FYH-API数据源', 'http://localhost:52807/adapter/dataAction/getDataActionList', '{\"apiKey\": \"\", \"baseUrl\": \"http://localhost:52807/adapter/dataAction/getDataActionList\", \"apiMethod\": \"GET\", \"apiHeaders\": \"[{\\\"key\\\":\\\"\\\",\\\"value\\\":\\\"\\\"}]\", \"apiReqParams\": \"[{\\\"key\\\":\\\"\\\",\\\"value\\\":\\\"\\\"}]\"}', '0', 'FYH-API数据源', 'admin', '2024-07-09 15:51:04', 'admin', '2024-07-09 16:49:14');

-- ----------------------------
-- Table structure for cfg_dept_staff
-- ----------------------------
DROP TABLE IF EXISTS `cfg_dept_staff`;
CREATE TABLE `cfg_dept_staff`  (
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `staff_id` bigint NULL DEFAULT NULL COMMENT '员工ID'
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cfg_dept_staff
-- ----------------------------

-- ----------------------------
-- Table structure for cfg_group_staff
-- ----------------------------
DROP TABLE IF EXISTS `cfg_group_staff`;
CREATE TABLE `cfg_group_staff`  (
  `duty_group_id` bigint NULL DEFAULT NULL,
  `staff_id` bigint NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cfg_group_staff
-- ----------------------------

-- ----------------------------
-- Table structure for cfg_mappoint_monitorpoint
-- ----------------------------
DROP TABLE IF EXISTS `cfg_mappoint_monitorpoint`;
CREATE TABLE `cfg_mappoint_monitorpoint`  (
  `map_point_id` bigint NULL DEFAULT NULL COMMENT '电子地图点位ID',
  `monitor_point_id` bigint NULL DEFAULT NULL COMMENT '监控点位ID'
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cfg_mappoint_monitorpoint
-- ----------------------------

-- ----------------------------
-- Table structure for cfg_meta_ds_prop
-- ----------------------------
DROP TABLE IF EXISTS `cfg_meta_ds_prop`;
CREATE TABLE `cfg_meta_ds_prop`  (
  `data_rw_ds_id` bigint NOT NULL COMMENT '主数据类型属性配置ID',
  `meta_mapping_id` bigint NOT NULL COMMENT '主数据映射配置ID',
  PRIMARY KEY (`data_rw_ds_id`, `meta_mapping_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cfg_meta_ds_prop
-- ----------------------------
INSERT INTO `cfg_meta_ds_prop` VALUES (1, 1);
INSERT INTO `cfg_meta_ds_prop` VALUES (5, 7);
INSERT INTO `cfg_meta_ds_prop` VALUES (6, 5);
INSERT INTO `cfg_meta_ds_prop` VALUES (8, 11);
INSERT INTO `cfg_meta_ds_prop` VALUES (10, 12);
INSERT INTO `cfg_meta_ds_prop` VALUES (10, 13);
INSERT INTO `cfg_meta_ds_prop` VALUES (14, 14);
INSERT INTO `cfg_meta_ds_prop` VALUES (15, 14);

-- ----------------------------
-- Table structure for cfg_meta_mapping
-- ----------------------------
DROP TABLE IF EXISTS `cfg_meta_mapping`;
CREATE TABLE `cfg_meta_mapping`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主数据数据映射配置ID',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `meta_type_prop_id` bigint NOT NULL COMMENT '主数据类型属性配置ID',
  `meta_type_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主数据类型编码',
  `meta_type_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主数据类型名称',
  `meta_prop_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主数据属性编码',
  `meta_prop_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主数据属性名称',
  `mapping_app_id` bigint NULL DEFAULT NULL COMMENT '映射应用ID',
  `mapping_prop_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '映射属性名称',
  `mapping_prop_data_type` int NULL DEFAULT NULL COMMENT '映射属性数据类型',
  `mapping_prop_length` int NULL DEFAULT NULL COMMENT '映射属性数据长度',
  `mapping_prop_decimals` int NULL DEFAULT NULL COMMENT '映射属性数据小数位',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '主数据映射配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cfg_meta_mapping
-- ----------------------------
INSERT INTO `cfg_meta_mapping` VALUES (1, NULL, 1, 1, 'test', 'test', 'test主编码', 'test主名称', 1, 'test映射名称', 1, 2, 2, 'test映射描述', '0', '', '2024-06-07 11:10:56', 'admin', '2024-07-02 14:09:54');
INSERT INTO `cfg_meta_mapping` VALUES (4, NULL, 1, 2, 'test', 'test', 'test01', 'test01', 3, '111', 1, 111, 111, '111', '1', 'admin', '2024-06-07 14:00:00', 'admin', '2024-06-07 14:01:45');
INSERT INTO `cfg_meta_mapping` VALUES (5, NULL, 1, 2, 'test', 'test', 'test01编码', 'test01名称', 1, 'test映射数据名称', 1, 1, 1, '1', '0', NULL, NULL, 'admin', '2024-06-21 09:47:57');
INSERT INTO `cfg_meta_mapping` VALUES (6, NULL, 1, 1, 'test', 'test', 'test', 'test', 1, '2', 2, 2, 2, '2', '0', NULL, NULL, 'admin', '2024-06-14 09:57:11');
INSERT INTO `cfg_meta_mapping` VALUES (7, NULL, 1, 2, 'visitor', '旅客', 'test01编码', 'test01名称', 14, 'a映射属性名', 2, 1, 1, '1描述', '1', NULL, NULL, 'admin', '2024-06-20 14:38:08');
INSERT INTO `cfg_meta_mapping` VALUES (8, NULL, 1, 4, 'visitor', '旅客', 'visitorName', '旅客姓名', 14, '旅客名称', 5, 10, 0, '旅客姓名名称', '1', NULL, NULL, 'admin', '2024-06-20 14:45:11');
INSERT INTO `cfg_meta_mapping` VALUES (9, NULL, 1, 4, 'visitor', '旅客', 'visitorName', '旅客姓名', 14, '旅客名称', 5, 10, 0, '旅客姓名名称', '1', NULL, NULL, 'admin', '2024-06-20 14:38:23');
INSERT INTO `cfg_meta_mapping` VALUES (10, NULL, 1, 4, 'visitor', '旅客', 'visitorName', '旅客姓名', 1, '旅客名称', 5, 10, 0, '旅客姓名', '1', NULL, NULL, 'admin', '2024-06-20 14:39:07');
INSERT INTO `cfg_meta_mapping` VALUES (11, NULL, 1, 4, 'visitor', '旅客', 'visitorName', '旅客姓名', 14, '旅客名称', 5, 10, 0, '旅客姓名', '0', NULL, NULL, NULL, NULL);
INSERT INTO `cfg_meta_mapping` VALUES (12, NULL, 1, 4, 'visitor', '旅客', 'visitorName', '旅客姓名', 2, 'xxname', 5, 10, 0, 'xx姓名', '0', NULL, NULL, NULL, NULL);
INSERT INTO `cfg_meta_mapping` VALUES (13, NULL, 1, 5, 'visitor', '旅客', 'age', '旅客年龄', 2, 'xxAge', 2, 5, 0, 'xx年龄', '0', NULL, NULL, NULL, NULL);
INSERT INTO `cfg_meta_mapping` VALUES (14, NULL, 1, 6, 'Fyh-Code', 'FYH-主数据', 'DataActionName', '动作名称', 14, 'dataActionCode', 5, 20, 0, 'dataActionCode', '0', NULL, NULL, 'admin', '2024-07-10 13:50:11');

-- ----------------------------
-- Table structure for cfg_meta_prop_rel
-- ----------------------------
DROP TABLE IF EXISTS `cfg_meta_prop_rel`;
CREATE TABLE `cfg_meta_prop_rel`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主数据类型属性配置ID',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `meta_type_id` bigint NOT NULL COMMENT '主数据类型ID',
  `meta_prop_id` bigint NULL DEFAULT NULL COMMENT '主数据属性ID',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cfg_meta_prop_rel
-- ----------------------------

-- ----------------------------
-- Table structure for cfg_metadata_property
-- ----------------------------
DROP TABLE IF EXISTS `cfg_metadata_property`;
CREATE TABLE `cfg_metadata_property`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主数据属性ID',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `meta_prop_type` int NULL DEFAULT NULL COMMENT '主数据属性类型(1-基础资料属性,2-枚举属性,3-聚合结果属性,4-统计参数属性,5-父子嵌套属性,6-其它)',
  `meta_prop_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主数据属性编码',
  `meta_prop_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主数据属性名称',
  `meta_prop_alias` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主数据属性别名',
  `meta_prop_data_type` int NULL DEFAULT NULL COMMENT '主数据属性数据类型',
  `meta_prop_length` int NULL DEFAULT NULL COMMENT '主数据属性数据长度',
  `meta_prop_decimals` int NULL DEFAULT NULL COMMENT '主数据属性数据小数位',
  `is_biz_key_prop` bit(1) NULL DEFAULT NULL COMMENT '是否业务关键属性',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '主数据属性定义表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cfg_metadata_property
-- ----------------------------
INSERT INTO `cfg_metadata_property` VALUES (1, NULL, NULL, 1, 'test主编码', 'test主名称', 'test主别名', 1, 1, 1, b'1', 'test描述', '0', '', '2024-06-06 16:15:38', 'admin', '2024-06-18 14:18:07');
INSERT INTO `cfg_metadata_property` VALUES (2, NULL, NULL, 1, 'test01编码', 'test01名称', 'test01别名', 1, 2, 2, b'0', 'test01描述', '0', 'admin', '2024-06-06 16:41:08', 'admin', '2024-06-18 14:18:23');
INSERT INTO `cfg_metadata_property` VALUES (3, NULL, NULL, 2, 'test02', 'test02', 'test01', 2, 2, 2, b'1', 'test01', '1', 'admin', '2024-06-06 16:42:05', 'admin', '2024-06-06 16:48:50');
INSERT INTO `cfg_metadata_property` VALUES (4, NULL, NULL, 1, 'visitorName', 'visitorName', '旅客姓名', 5, 50, 0, b'0', NULL, '0', 'admin', '2024-06-18 11:37:51', 'admin', '2024-06-18 11:37:51');
INSERT INTO `cfg_metadata_property` VALUES (5, NULL, NULL, 1, 'age', 'age', '旅客年龄', 2, 5, 0, b'0', '旅客的年龄数据', '0', 'admin', '2024-07-05 11:03:31', 'admin', '2024-07-05 11:03:31');
INSERT INTO `cfg_metadata_property` VALUES (6, NULL, 1, 1, 'dataActionName01', 'dataActionName01', '动作别名', 4, 20, 0, b'1', '动作名称', '0', 'admin', '2024-07-09 16:09:28', 'admin', '2024-07-10 13:58:34');

-- ----------------------------
-- Table structure for cfg_metadata_type
-- ----------------------------
DROP TABLE IF EXISTS `cfg_metadata_type`;
CREATE TABLE `cfg_metadata_type`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主数据类型ID',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `meta_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主数据大类(1-系统,2-人员,3-设备,4-供应商,5-事件,6-历史记录,7-其它)',
  `meta_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主数据类别(1-动态主数据,2-静态主数据)',
  `meta_type_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主数据类型编码',
  `meta_type_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主数据类型名称',
  `meta_type_alias` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主数据类型别名',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '主数据类型定义表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cfg_metadata_type
-- ----------------------------
INSERT INTO `cfg_metadata_type` VALUES (1, NULL, NULL, '1', '1', 'test', 'test', 'test', 'test', '0', ' ', '2024-06-06 11:50:31', ' ', '2024-06-06 11:50:39');
INSERT INTO `cfg_metadata_type` VALUES (2, NULL, NULL, '1', '1', 'test01', 'test01', 'test01', 'test01', '1', 'admin', '2024-06-06 13:52:50', 'admin', '2024-06-06 14:36:18');
INSERT INTO `cfg_metadata_type` VALUES (3, NULL, NULL, '2', '1', 'visitor', '旅客', '旅客', NULL, '0', 'admin', '2024-06-14 15:32:40', 'admin', '2024-06-14 15:32:40');
INSERT INTO `cfg_metadata_type` VALUES (4, NULL, 1, '1', '2', 'Fyh-Code', 'FYH-主数据', 'Fyh-别名', 'FYH-主数据', '0', 'admin', '2024-07-09 16:04:45', 'admin', '2024-07-09 16:04:45');

-- ----------------------------
-- Table structure for cfg_monitor_point_dev
-- ----------------------------
DROP TABLE IF EXISTS `cfg_monitor_point_dev`;
CREATE TABLE `cfg_monitor_point_dev`  (
  `monitor_dev_id` bigint NULL DEFAULT NULL COMMENT '监控设备ID',
  `monitor_point_id` bigint NULL DEFAULT NULL COMMENT '监控点位ID'
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cfg_monitor_point_dev
-- ----------------------------

-- ----------------------------
-- Table structure for cfg_monitor_point_group
-- ----------------------------
DROP TABLE IF EXISTS `cfg_monitor_point_group`;
CREATE TABLE `cfg_monitor_point_group`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '监控点组ID',
  `monitor_pt_grp_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '监控点组名称',
  `monitor_points` json NULL COMMENT '监控点集合',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cfg_monitor_point_group
-- ----------------------------

-- ----------------------------
-- Table structure for cfg_team_group
-- ----------------------------
DROP TABLE IF EXISTS `cfg_team_group`;
CREATE TABLE `cfg_team_group`  (
  `duty_team_id` bigint NULL DEFAULT NULL COMMENT '执勤队ID',
  `duty_group_id` bigint NULL DEFAULT NULL COMMENT '执勤组ID'
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cfg_team_group
-- ----------------------------

-- ----------------------------
-- Table structure for cfg_trace_flow_info
-- ----------------------------
DROP TABLE IF EXISTS `cfg_trace_flow_info`;
CREATE TABLE `cfg_trace_flow_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '跟踪流程ID',
  `trace_flow_obj_type` int NULL DEFAULT NULL COMMENT '跟踪流程对象类型(1-旅客,2-航班,3-航司,4-工作人员,5-其它)',
  `trace_flow_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '跟踪流程编码',
  `trace_flow_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '跟踪流程名称',
  `trace_flow_category` int NULL DEFAULT NULL COMMENT '跟踪流程类别(1-出境,2-入境,3-中转过境)',
  `status` int NULL DEFAULT NULL COMMENT '跟踪流程状态(1-正常跟踪,2-异常跟踪)',
  `create_by` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cfg_trace_flow_info
-- ----------------------------

-- ----------------------------
-- Table structure for cfg_trace_point_info
-- ----------------------------
DROP TABLE IF EXISTS `cfg_trace_point_info`;
CREATE TABLE `cfg_trace_point_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '跟踪流程节点ID',
  `trace_flow_id` bigint NULL DEFAULT NULL COMMENT '跟踪流程ID',
  `trace_point_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '跟踪流程节点编码',
  `trace_point_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '跟踪流程节点名称',
  `monitor_point_id` bigint NULL DEFAULT NULL COMMENT '监控点ID',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cfg_trace_point_info
-- ----------------------------

-- ----------------------------
-- Table structure for meta_airline_point
-- ----------------------------
DROP TABLE IF EXISTS `meta_airline_point`;
CREATE TABLE `meta_airline_point`  (
  `airline_id` bigint NOT NULL AUTO_INCREMENT COMMENT '机场ID',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `airline_name` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机场名称',
  `airline_country` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机场所属国家',
  `airline_loc` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机场坐标',
  `status` int NULL DEFAULT NULL COMMENT '应用状态(1-启用,2-禁用)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`airline_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_airline_point
-- ----------------------------

-- ----------------------------
-- Table structure for meta_airport_info
-- ----------------------------
DROP TABLE IF EXISTS `meta_airport_info`;
CREATE TABLE `meta_airport_info`  (
  `airport_id` bigint NOT NULL AUTO_INCREMENT COMMENT '机场ID',
  `airport_name` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机场名称',
  `airport_country` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机场所属国家',
  `airport_loc` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机场坐标',
  `status` int NULL DEFAULT NULL COMMENT '应用状态(1-启用,2-禁用)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`airport_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_airport_info
-- ----------------------------

-- ----------------------------
-- Table structure for meta_assessment_records
-- ----------------------------
DROP TABLE IF EXISTS `meta_assessment_records`;
CREATE TABLE `meta_assessment_records`  (
  `score_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `staff_id` bigint NULL DEFAULT NULL COMMENT '考核人员ID',
  `score` decimal(10, 0) NULL DEFAULT NULL COMMENT '考核人员分数',
  `evaluate_result` json NULL COMMENT '考核记录归档（考题归档、考核人员回答归档、语音文件归档）',
  `status` int NULL DEFAULT NULL COMMENT '应用状态(1-启用,2-禁用)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`score_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_assessment_records
-- ----------------------------

-- ----------------------------
-- Table structure for meta_board_region
-- ----------------------------
DROP TABLE IF EXISTS `meta_board_region`;
CREATE TABLE `meta_board_region`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '区域ID site_region_id',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `region_name` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '区域名称',
  `board_site_id` bigint NULL DEFAULT NULL COMMENT '区域所属场地ID',
  `region_loc` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '区域坐标',
  `monitor_start_point` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '区域起始坐标',
  `monitor_end_point` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '区域终止坐标',
  `status` int NULL DEFAULT NULL COMMENT '应用状态(1-启用,2-禁用)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_board_region
-- ----------------------------
INSERT INTO `meta_board_region` VALUES (1, NULL, '区域1', 3, '(1,1,1)', NULL, NULL, 1, NULL, '0', '区域1描述', '', '2024-06-19 15:56:31', 'admin', '2024-06-26 18:28:04');
INSERT INTO `meta_board_region` VALUES (2, NULL, '区域2', 1, NULL, NULL, NULL, NULL, NULL, '0', '区域2描述', 'admin', '2024-06-19 16:32:26', 'admin', '2024-06-26 18:28:08');

-- ----------------------------
-- Table structure for meta_board_site
-- ----------------------------
DROP TABLE IF EXISTS `meta_board_site`;
CREATE TABLE `meta_board_site`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '场地ID site_id',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `board_site_name` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '场地名称',
  `board_site_map_id` bigint NULL DEFAULT NULL COMMENT '场地对应的电子地图ID',
  `status` int NULL DEFAULT NULL COMMENT '应用状态(1-启用,2-禁用)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_board_site
-- ----------------------------
INSERT INTO `meta_board_site` VALUES (1, NULL, '场地1', 1, 1, NULL, '0', '场地描述1', ' ', '2024-06-19 15:55:51', ' ', '2024-06-19 15:55:55');
INSERT INTO `meta_board_site` VALUES (2, NULL, '场地2', NULL, NULL, NULL, '1', '场地2描述', 'admin', '2024-06-19 16:16:43', 'admin', '2024-06-19 16:16:47');
INSERT INTO `meta_board_site` VALUES (3, NULL, '场地2', NULL, NULL, NULL, '0', '场地2描述', 'admin', '2024-06-19 16:32:40', 'admin', '2024-06-19 16:32:40');

-- ----------------------------
-- Table structure for meta_board_terminal
-- ----------------------------
DROP TABLE IF EXISTS `meta_board_terminal`;
CREATE TABLE `meta_board_terminal`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '航站楼ID',
  `terminal_name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '航站楼名称',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = armscii8 COLLATE = armscii8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_board_terminal
-- ----------------------------
INSERT INTO `meta_board_terminal` VALUES (1, '航站楼1', NULL, NULL, '航站楼1描述', '0', '', '2024-06-19 15:51:10', 'admin', '2024-06-19 16:07:15');
INSERT INTO `meta_board_terminal` VALUES (2, '航站楼2', NULL, NULL, '航站楼2描述', '1', 'admin', '2024-06-19 16:07:37', 'admin', '2024-06-19 16:07:43');

-- ----------------------------
-- Table structure for meta_courtesy_info
-- ----------------------------
DROP TABLE IF EXISTS `meta_courtesy_info`;
CREATE TABLE `meta_courtesy_info`  (
  `courtesy_id` bigint NOT NULL AUTO_INCREMENT COMMENT '礼遇事件编码',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `courtesy_type` int NULL DEFAULT NULL COMMENT '重要礼遇事件类型',
  `flight_id` bigint NULL DEFAULT NULL COMMENT '航班编号',
  `deputation` int NULL DEFAULT NULL COMMENT '代表团ID',
  `courtesy_people_num` bigint NULL DEFAULT NULL COMMENT '人数',
  `level_type` int NULL DEFAULT NULL COMMENT '礼遇级别',
  `status` int NULL DEFAULT NULL COMMENT '礼遇办理情况状态(1-未办理,2-已办理)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`courtesy_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_courtesy_info
-- ----------------------------

-- ----------------------------
-- Table structure for meta_dashboard_artifact
-- ----------------------------
DROP TABLE IF EXISTS `meta_dashboard_artifact`;
CREATE TABLE `meta_dashboard_artifact`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '大屏ID',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `artifact_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '大屏名称',
  `state` int NULL DEFAULT NULL,
  `index_img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '大屏信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_dashboard_artifact
-- ----------------------------
INSERT INTO `meta_dashboard_artifact` VALUES (1, NULL, 1, '1', 1, '1', '1', '0', ' sys', '  sys', '2024-05-14 10:49:28', '2024-05-14 10:49:32');

-- ----------------------------
-- Table structure for meta_dept_info
-- ----------------------------
DROP TABLE IF EXISTS `meta_dept_info`;
CREATE TABLE `meta_dept_info`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `dept_name` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '部门名称',
  `parent_id` bigint NULL DEFAULT NULL COMMENT '父级部门ID',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_dept_info
-- ----------------------------

-- ----------------------------
-- Table structure for meta_deputation_info
-- ----------------------------
DROP TABLE IF EXISTS `meta_deputation_info`;
CREATE TABLE `meta_deputation_info`  (
  `deputation_id` bigint NOT NULL COMMENT '代表团ID',
  `deputation_name` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_bin NULL DEFAULT NULL COMMENT '代表团名称',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `del_flg` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否删除',
  `status` int NULL DEFAULT NULL COMMENT '状态',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`deputation_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_deputation_info
-- ----------------------------

-- ----------------------------
-- Table structure for meta_duty_group_info
-- ----------------------------
DROP TABLE IF EXISTS `meta_duty_group_info`;
CREATE TABLE `meta_duty_group_info`  (
  `duty_group_id` bigint NOT NULL AUTO_INCREMENT COMMENT '执勤小组ID',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `duty_group_name` varchar(1024) CHARACTER SET armscii8 COLLATE armscii8_bin NULL DEFAULT NULL COMMENT '执勤小组名称',
  `duty_team_id` bigint NULL DEFAULT NULL COMMENT '执勤小队ID',
  `staff_id` bigint NULL DEFAULT NULL COMMENT '执勤组负责人（组长）',
  `duty_group_num` int NULL DEFAULT NULL COMMENT '执勤组总人数',
  `duty_group_time` json NULL COMMENT '小组执勤时间段（1组工作时段：10时—20时，23时—次日2时）',
  `del_flg` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否删除',
  `status` int NULL DEFAULT NULL COMMENT '状态',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`duty_group_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_duty_group_info
-- ----------------------------

-- ----------------------------
-- Table structure for meta_duty_team_info
-- ----------------------------
DROP TABLE IF EXISTS `meta_duty_team_info`;
CREATE TABLE `meta_duty_team_info`  (
  `duty_team_id` bigint NOT NULL AUTO_INCREMENT COMMENT '执勤队别ID',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `duty_team_name` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '执勤队别名称',
  `staff_id` bigint NULL DEFAULT NULL COMMENT '执勤队别负责人ID',
  `duty_team_num` int NULL DEFAULT NULL COMMENT '执勤队别人数',
  `board_site_id` bigint NULL DEFAULT NULL COMMENT '场地ID',
  `board_region_id` bigint NULL DEFAULT NULL COMMENT '执勤负责区域ID',
  `duty_team_type` int NULL DEFAULT NULL COMMENT '现场勤务类型（1-旅客检查队、2-机组检查队、3-特勤办案队）',
  `duty_start_date` datetime NULL DEFAULT NULL COMMENT '执勤队别负责起始日期',
  `duty_end_date` datetime NULL DEFAULT NULL COMMENT '执勤队别负责结束日期',
  `status` int NULL DEFAULT NULL COMMENT '执勤队别状态(1-启用,2-禁用)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `description` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`duty_team_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_duty_team_info
-- ----------------------------

-- ----------------------------
-- Table structure for meta_elec_map_info
-- ----------------------------
DROP TABLE IF EXISTS `meta_elec_map_info`;
CREATE TABLE `meta_elec_map_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '电子地图ID map_id',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `map_name` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电子地图名称',
  `board_site_id` bigint NULL DEFAULT NULL COMMENT '场地ID',
  `map_file_url` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电子地图文件存储URL',
  `status` int NULL DEFAULT NULL COMMENT '应用状态(1-启用,2-禁用)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_elec_map_info
-- ----------------------------
INSERT INTO `meta_elec_map_info` VALUES (1, NULL, '电子地图名称', 1, '电子地图URL', 1, NULL, '0', '电子地图描述', ' ', '2024-06-21 11:27:43', ' ', '2024-06-21 11:27:45');
INSERT INTO `meta_elec_map_info` VALUES (2, NULL, '02电子地图名称', 1, '02电子地图文件存储URL', 1, NULL, '1', '02电子地图描述', 'admin', '2024-06-21 14:48:01', 'admin', '2024-06-21 14:49:49');

-- ----------------------------
-- Table structure for meta_elec_map_point
-- ----------------------------
DROP TABLE IF EXISTS `meta_elec_map_point`;
CREATE TABLE `meta_elec_map_point`  (
  `map_point_id` bigint NOT NULL AUTO_INCREMENT COMMENT '电子地图点位ID',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `map_point_name` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '点位名称',
  `map_id` bigint NULL DEFAULT NULL COMMENT '点位所属电子地图ID',
  `site_id` bigint NULL DEFAULT NULL COMMENT '点位所属场地ID',
  `region_id` bigint NULL DEFAULT NULL COMMENT '点位所属区域ID',
  `status` int NULL DEFAULT NULL COMMENT '应用状态(1-启用,2-禁用)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`map_point_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_elec_map_point
-- ----------------------------

-- ----------------------------
-- Table structure for meta_emergency_info
-- ----------------------------
DROP TABLE IF EXISTS `meta_emergency_info`;
CREATE TABLE `meta_emergency_info`  (
  `emergency_id` bigint NOT NULL AUTO_INCREMENT COMMENT '突发事件编码',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `emergency_type` int NULL DEFAULT NULL COMMENT '突发事件类型',
  `emergency_level` int NULL DEFAULT NULL COMMENT '突发事件级别',
  `board_site_id` bigint NULL DEFAULT NULL COMMENT '突发事件对应的场地ID',
  `board_region_id` bigint NULL DEFAULT NULL COMMENT '突发事件对应的区域ID',
  `map_point_id` bigint NULL DEFAULT NULL COMMENT '突发事件对应地图点位',
  `monitor_scene_code` int NULL DEFAULT NULL COMMENT '预设场景分组',
  `curr_stage` int NULL DEFAULT NULL COMMENT '突发事件当前处理阶段',
  `emergency_plan_id` bigint NULL DEFAULT NULL COMMENT '突发事件处理预案编号',
  `status` int NULL DEFAULT NULL COMMENT '应用状态(1-启用,2-禁用)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`emergency_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_emergency_info
-- ----------------------------

-- ----------------------------
-- Table structure for meta_emg_info
-- ----------------------------
DROP TABLE IF EXISTS `meta_emg_info`;
CREATE TABLE `meta_emg_info`  (
  `emg_id` bigint NOT NULL AUTO_INCREMENT COMMENT '突发事件编码',
  `emg_type` int NULL DEFAULT NULL COMMENT '突发事件类型',
  `emg_level` int NULL DEFAULT NULL COMMENT '突发事件级别',
  `site_id` bigint NULL DEFAULT NULL COMMENT '突发事件对应的场地ID',
  `region_id` bigint NULL DEFAULT NULL COMMENT '突发事件对应的区域ID',
  `map_point_id` bigint NULL DEFAULT NULL COMMENT '突发事件对应地图点位',
  `flight_region_mon_by_scenes` int NULL DEFAULT NULL COMMENT '预设场景分组',
  `curr_stage` int NULL DEFAULT NULL COMMENT '突发事件当前处理阶段',
  `plan_id` bigint NULL DEFAULT NULL COMMENT '突发事件处理预案编号',
  `status` int NULL DEFAULT NULL COMMENT '应用状态(1-启用,2-禁用)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`emg_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_emg_info
-- ----------------------------

-- ----------------------------
-- Table structure for meta_event_plan_info
-- ----------------------------
DROP TABLE IF EXISTS `meta_event_plan_info`;
CREATE TABLE `meta_event_plan_info`  (
  `event_plan_id` bigint NOT NULL AUTO_INCREMENT COMMENT '预案ID',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `event_plan_name` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预案名称',
  `emergency_type` int NULL DEFAULT NULL COMMENT '突发事件类型',
  `emergency_level` int NULL DEFAULT NULL COMMENT '突发事件级别',
  `event_plan_type` int NULL DEFAULT NULL COMMENT '预案类型',
  `event_plan_icon_url` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预案独立图表地址',
  `event_plan_keyword` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预案关键词',
  `curr_stage` int NULL DEFAULT NULL COMMENT '预案当前处理阶段',
  `status` int NULL DEFAULT NULL COMMENT '是否保密（0-保密，1-不保密）',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`event_plan_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_event_plan_info
-- ----------------------------

-- ----------------------------
-- Table structure for meta_filing_personnel
-- ----------------------------
DROP TABLE IF EXISTS `meta_filing_personnel`;
CREATE TABLE `meta_filing_personnel`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `staff_id` bigint NULL DEFAULT NULL COMMENT '员工ID',
  `site_id` bigint NULL DEFAULT NULL COMMENT '场地ID',
  `region_id` bigint NULL DEFAULT NULL COMMENT '区域ID',
  `filing_record_type` int NULL DEFAULT NULL COMMENT '备案人员类型（1-未备案人员临时通过，2-备案人员）',
  `filing_record_id` bigint NULL DEFAULT NULL COMMENT '未备案人员绑定的备案人员ID',
  `start_time` datetime NULL DEFAULT NULL COMMENT '通行证有效时间',
  `end_time` datetime NULL DEFAULT NULL COMMENT '通行证无效时间',
  `status` int NULL DEFAULT NULL COMMENT '应用状态(1-启用,2-禁用)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_filing_personnel
-- ----------------------------

-- ----------------------------
-- Table structure for meta_flight_airline
-- ----------------------------
DROP TABLE IF EXISTS `meta_flight_airline`;
CREATE TABLE `meta_flight_airline`  (
  `flight_airline_id` int NOT NULL COMMENT '航班公司ID',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `flight_airline_name` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '航班公司名称',
  `flight_country` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_bin NULL DEFAULT NULL COMMENT '航班公司所属国家',
  `describe` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `status` int NULL DEFAULT NULL COMMENT '应用状态(1-启用,2-禁用)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`flight_airline_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_bin COMMENT = '航班放飞基本信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_flight_airline
-- ----------------------------

-- ----------------------------
-- Table structure for meta_flight_fly_info
-- ----------------------------
DROP TABLE IF EXISTS `meta_flight_fly_info`;
CREATE TABLE `meta_flight_fly_info`  (
  `id` bigint NOT NULL COMMENT '航班放飞ID',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `flight_id` bigint NULL DEFAULT NULL COMMENT '航班ID',
  `airline_id` bigint NULL DEFAULT NULL COMMENT '航司ID',
  `status` int NULL DEFAULT NULL COMMENT '状态（0-待放飞、1-正常放飞、2-异常）',
  `flight_fly_time` datetime NULL DEFAULT NULL COMMENT '航班放飞时间',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_flight_fly_info
-- ----------------------------

-- ----------------------------
-- Table structure for meta_flight_info
-- ----------------------------
DROP TABLE IF EXISTS `meta_flight_info`;
CREATE TABLE `meta_flight_info`  (
  `flight_id` bigint NOT NULL COMMENT '航班ID',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `flight_name` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '航班名称',
  `flight_arline_id` bigint NULL DEFAULT NULL COMMENT '所属航班公司ID',
  `describe` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `status` int NULL DEFAULT NULL COMMENT '应用状态(1-启用,2-禁用)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`flight_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_flight_info
-- ----------------------------

-- ----------------------------
-- Table structure for meta_monitor_device
-- ----------------------------
DROP TABLE IF EXISTS `meta_monitor_device`;
CREATE TABLE `meta_monitor_device`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '监控设备ID',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `monitor_dev_name` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '监控设备名称',
  `status` int NULL DEFAULT NULL COMMENT '应用状态(1-启用,2-禁用)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_monitor_device
-- ----------------------------
INSERT INTO `meta_monitor_device` VALUES (1, 1, '监控设备名称', 1, NULL, '0', '监控设备描述', ' ', '2024-06-19 13:34:09', ' ', '2024-06-19 13:34:11');
INSERT INTO `meta_monitor_device` VALUES (2, NULL, 'test监控设备名称', 1, NULL, '0', 'test监控设备描述', 'admin', '2024-06-19 14:19:35', 'admin', '2024-06-19 14:20:15');
INSERT INTO `meta_monitor_device` VALUES (3, NULL, 'test监控设备名称测试删除', 0, NULL, '1', 'test监控设备描述测试删除', 'admin', '2024-06-19 14:25:44', 'admin', '2024-06-19 14:25:48');

-- ----------------------------
-- Table structure for meta_monitor_point
-- ----------------------------
DROP TABLE IF EXISTS `meta_monitor_point`;
CREATE TABLE `meta_monitor_point`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '监控点ID monitor_id',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `monitor_name` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '监控点名称',
  `board_region_id` bigint NULL DEFAULT NULL COMMENT '监控点所属区域ID',
  `monitor_scene_code` int NULL DEFAULT NULL COMMENT '监控预设场景分组类型\r\n',
  `ele_map_point_id` bigint NULL DEFAULT NULL COMMENT '监控点对应电子地图点位ID',
  `monitor_map_loc` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '监控所在电子地图位置坐标点',
  `status` int NULL DEFAULT NULL COMMENT '应用状态(1-启用,2-禁用)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_monitor_point
-- ----------------------------
INSERT INTO `meta_monitor_point` VALUES (1, NULL, '监控点Test名称', 1, 1, 1, NULL, 1, NULL, '0', '监控点Test描述', ' ', '2024-06-21 10:35:38', ' ', '2024-06-21 10:35:42');
INSERT INTO `meta_monitor_point` VALUES (2, NULL, '01监控点名称', 2, 1, 1, '(1,1,1)', NULL, NULL, '0', '01监控点描述', 'admin', '2024-06-21 11:31:39', 'admin', '2024-06-21 11:31:55');

-- ----------------------------
-- Table structure for meta_opinion_info
-- ----------------------------
DROP TABLE IF EXISTS `meta_opinion_info`;
CREATE TABLE `meta_opinion_info`  (
  `opinion_id` bigint NOT NULL AUTO_INCREMENT COMMENT '意见ID',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `opinion_name` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '意见发起者昵称',
  `opinion_info` varchar(2048) CHARACTER SET armscii8 COLLATE armscii8_bin NULL DEFAULT NULL COMMENT '意见信息',
  `status` int NULL DEFAULT NULL COMMENT '应用状态(1-启用,2-禁用)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`opinion_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_opinion_info
-- ----------------------------

-- ----------------------------
-- Table structure for meta_question_info
-- ----------------------------
DROP TABLE IF EXISTS `meta_question_info`;
CREATE TABLE `meta_question_info`  (
  `question_id` bigint NOT NULL AUTO_INCREMENT COMMENT '问题ID',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `question` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '问题信息',
  `status` int NULL DEFAULT NULL COMMENT '应用状态(1-启用,2-禁用)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`question_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_question_info
-- ----------------------------

-- ----------------------------
-- Table structure for meta_record_keeper_info
-- ----------------------------
DROP TABLE IF EXISTS `meta_record_keeper_info`;
CREATE TABLE `meta_record_keeper_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `staff_id` bigint NULL DEFAULT NULL COMMENT '员工ID',
  `region_id` bigint NULL DEFAULT NULL COMMENT '区域ID',
  `record_type` int NULL DEFAULT NULL COMMENT '备案人员类型（0-未备案人员临时通过，1-备案人员）',
  `record_id` bigint NULL DEFAULT NULL COMMENT '未备案人员绑定的备案人员ID',
  `start_time` datetime NULL DEFAULT NULL COMMENT '通行证有效时间',
  `end_time` datetime NULL DEFAULT NULL COMMENT '通行证无效时间',
  `status` int NULL DEFAULT NULL COMMENT '应用状态(1-启用,2-禁用)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_record_keeper_info
-- ----------------------------

-- ----------------------------
-- Table structure for meta_reg_staff_info
-- ----------------------------
DROP TABLE IF EXISTS `meta_reg_staff_info`;
CREATE TABLE `meta_reg_staff_info`  (
  `reg_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `staff_id` bigint NULL DEFAULT NULL COMMENT '员工ID',
  `region_id` bigint NULL DEFAULT NULL COMMENT '区域ID',
  `start_time` datetime NULL DEFAULT NULL COMMENT '通行证有效时间',
  `end_time` datetime NULL DEFAULT NULL COMMENT '通行证无效时间',
  `status` int NULL DEFAULT NULL COMMENT '应用状态(1-启用,2-禁用)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`reg_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_reg_staff_info
-- ----------------------------

-- ----------------------------
-- Table structure for meta_score_info
-- ----------------------------
DROP TABLE IF EXISTS `meta_score_info`;
CREATE TABLE `meta_score_info`  (
  `score_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `staff_id` bigint NULL DEFAULT NULL COMMENT '考核人员ID',
  `score` decimal(10, 0) NULL DEFAULT NULL COMMENT '考核人员分数',
  `record` json NULL COMMENT '考核记录归档（考题归档、考核人员回答归档、语音文件归档）',
  `status` int NULL DEFAULT NULL COMMENT '应用状态(1-启用,2-禁用)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`score_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_score_info
-- ----------------------------

-- ----------------------------
-- Table structure for meta_site_region
-- ----------------------------
DROP TABLE IF EXISTS `meta_site_region`;
CREATE TABLE `meta_site_region`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '场地区域ID',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `site_id` bigint NULL DEFAULT NULL COMMENT '场地ID',
  `site_region_type` int NOT NULL COMMENT '场地区域类型(1-内部,2-外部)',
  `site_region_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '场地区域名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '场地区域基本信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_site_region
-- ----------------------------
INSERT INTO `meta_site_region` VALUES (1, NULL, 1, 1, 1, '场地区域1', NULL, '0', ' ', ' ', NULL, NULL);
INSERT INTO `meta_site_region` VALUES (2, NULL, 1, 1, 1, '场地区域2', NULL, '0', ' ', ' ', NULL, NULL);

-- ----------------------------
-- Table structure for meta_staff_guard_info
-- ----------------------------
DROP TABLE IF EXISTS `meta_staff_guard_info`;
CREATE TABLE `meta_staff_guard_info`  (
  `staff_guard_id` bigint NOT NULL AUTO_INCREMENT COMMENT '值班ID',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `staff_id` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '值班人员ID',
  `staff_guard_type` int NULL DEFAULT NULL COMMENT '值班人员类型(1-带班领导、2-值班领导,3-机关人员,4-指挥中心,5-现场执勤人员,6-值班备勤警力)',
  `guard_start_date` datetime NULL DEFAULT NULL COMMENT '值班起始日期',
  `guard_end_date` datetime NULL DEFAULT NULL COMMENT '值班结束日期',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`staff_guard_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_staff_guard_info
-- ----------------------------

-- ----------------------------
-- Table structure for meta_staff_info
-- ----------------------------
DROP TABLE IF EXISTS `meta_staff_info`;
CREATE TABLE `meta_staff_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '员工ID staff_id',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `staff_name` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `staff_gender` int NULL DEFAULT NULL COMMENT '员工性别(1-男、2-女)',
  `staff_birth_year` datetime NULL DEFAULT NULL COMMENT '员工出生日期',
  `staff_dept_id` bigint NULL DEFAULT NULL COMMENT '员工所属部门ID',
  `staff_role` int NULL DEFAULT NULL COMMENT '员工所属角色ID',
  `status` int NULL DEFAULT NULL COMMENT '应用状态(1-正常,2-异常)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `description` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_staff_info
-- ----------------------------
INSERT INTO `meta_staff_info` VALUES (1, NULL, '01员工', 2, '2024-06-21 13:38:14', 1, 1, 1, NULL, '0', '01员工描述', ' ', '2024-06-21 13:38:28', ' ', '2024-06-21 13:38:32');
INSERT INTO `meta_staff_info` VALUES (2, NULL, '41234', NULL, NULL, NULL, 1, 1, NULL, '1', '12341234', 'admin', '2024-06-21 14:28:42', 'admin', '2024-06-21 14:28:48');

-- ----------------------------
-- Table structure for meta_unreg_staff_info
-- ----------------------------
DROP TABLE IF EXISTS `meta_unreg_staff_info`;
CREATE TABLE `meta_unreg_staff_info`  (
  `unreg_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `reg_id` bigint NULL DEFAULT NULL COMMENT '备案人员信息编号',
  `region_id` bigint NULL DEFAULT NULL COMMENT '区域ID',
  `start_time` datetime NULL DEFAULT NULL COMMENT '通行证有效起始时间',
  `end_time` datetime NULL DEFAULT NULL COMMENT '通行证有效结束时间',
  `status` int NULL DEFAULT NULL COMMENT '申请状态(0-未通过,1-申请通过)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`unreg_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_unreg_staff_info
-- ----------------------------

-- ----------------------------
-- Table structure for meta_vendor_airline
-- ----------------------------
DROP TABLE IF EXISTS `meta_vendor_airline`;
CREATE TABLE `meta_vendor_airline`  (
  `airline_id` bigint NOT NULL AUTO_INCREMENT COMMENT '航空ID',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `airline_name` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '航空公司名称',
  `airline_country` bigint NULL DEFAULT NULL COMMENT '航空公司所属国家ID',
  `status` int NULL DEFAULT NULL COMMENT '应用状态(1-启用,2-禁用)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`airline_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_vendor_airline
-- ----------------------------

-- ----------------------------
-- Table structure for meta_video_info
-- ----------------------------
DROP TABLE IF EXISTS `meta_video_info`;
CREATE TABLE `meta_video_info`  (
  `video_id` bigint NOT NULL AUTO_INCREMENT COMMENT '视频文件ID',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `resource_uri` bigint NULL DEFAULT NULL COMMENT 'uri ID ',
  `monitor_dev_id` bigint NULL DEFAULT NULL COMMENT '监控设备ID',
  `video_fileld_url` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '监控视频文件存储地址',
  `del_flg` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否删除',
  `status` int NULL DEFAULT NULL COMMENT '状态',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`video_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_video_info
-- ----------------------------

-- ----------------------------
-- Table structure for meta_virtual_passenger
-- ----------------------------
DROP TABLE IF EXISTS `meta_virtual_passenger`;
CREATE TABLE `meta_virtual_passenger`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '虚拟旅客名称',
  `country` varchar(200) CHARACTER SET armscii8 COLLATE armscii8_bin NULL DEFAULT NULL COMMENT '虚拟旅客国籍',
  `pic_url` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '虚拟旅客照片地址',
  `birth_year` datetime NULL DEFAULT NULL COMMENT '虚拟旅客出生日期',
  `sex` int NULL DEFAULT NULL COMMENT '虚拟旅客性别(0-无，1-男,2-女）',
  `domicile` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '虚拟旅客户籍地',
  `document_issuing_location` varchar(1024) CHARACTER SET armscii8 COLLATE armscii8_bin NULL DEFAULT NULL COMMENT '虚拟旅客证件签发地',
  `entry_exit_type` int NULL DEFAULT NULL COMMENT '虚拟旅客出入境类型(0-出，1-入）',
  `flight_taken` varchar(200) CHARACTER SET armscii8 COLLATE armscii8_bin NULL DEFAULT NULL COMMENT '虚拟旅客乘坐航班',
  `destination_country` varchar(200) CHARACTER SET armscii8 COLLATE armscii8_bin NULL DEFAULT NULL COMMENT '虚拟旅客前往国',
  `origin_country` varchar(200) CHARACTER SET armscii8 COLLATE armscii8_bin NULL DEFAULT NULL COMMENT '虚拟旅客来自国',
  `visa_in_passport` varchar(200) CHARACTER SET armscii8 COLLATE armscii8_bin NULL DEFAULT NULL COMMENT '护照内签证',
  `document_reissue_status` int NULL DEFAULT NULL COMMENT '证件换发情况',
  `travel_history` varchar(2048) CHARACTER SET armscii8 COLLATE armscii8_bin NULL DEFAULT NULL COMMENT '虚拟旅客出入境轨迹',
  `status` int NULL DEFAULT NULL COMMENT '应用状态(1-启用,2-禁用)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_virtual_passenger
-- ----------------------------

-- ----------------------------
-- Table structure for meta_virtual_visitor
-- ----------------------------
DROP TABLE IF EXISTS `meta_virtual_visitor`;
CREATE TABLE `meta_virtual_visitor`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `virtual_visitor_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '虚拟旅客名称',
  `country` varchar(200) CHARACTER SET armscii8 COLLATE armscii8_bin NULL DEFAULT NULL COMMENT '虚拟旅客国籍',
  `img_url` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '虚拟旅客照片地址',
  `birth_year` datetime NULL DEFAULT NULL COMMENT '虚拟旅客出生日期',
  `gender` int NULL DEFAULT NULL COMMENT '虚拟旅客性别(0-无，1-男,2-女）',
  `domicile` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '虚拟旅客户籍地',
  `doc_issue_location` varchar(1024) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL COMMENT '虚拟旅客证件签发地',
  `entry_exit_type` int NULL DEFAULT NULL COMMENT '虚拟旅客出入境类型(0-出，1-入）',
  `flight_taken` varchar(200) CHARACTER SET armscii8 COLLATE armscii8_bin NULL DEFAULT NULL COMMENT '虚拟旅客乘坐航班',
  `destination_country` varchar(200) CHARACTER SET armscii8 COLLATE armscii8_bin NULL DEFAULT NULL COMMENT '虚拟旅客前往国',
  `origin_country` varchar(200) CHARACTER SET armscii8 COLLATE armscii8_bin NULL DEFAULT NULL COMMENT '虚拟旅客来自国',
  `visa_in_passport` varchar(200) CHARACTER SET armscii8 COLLATE armscii8_bin NULL DEFAULT NULL COMMENT '护照内签证',
  `doc_reissue_status` int NULL DEFAULT NULL COMMENT '证件换发情况',
  `travel_history` varchar(2048) CHARACTER SET armscii8 COLLATE armscii8_bin NULL DEFAULT NULL COMMENT '虚拟旅客出入境轨迹',
  `status` int NULL DEFAULT NULL COMMENT '应用状态(1-启用,2-禁用)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_virtual_visitor
-- ----------------------------

-- ----------------------------
-- Table structure for meta_visitor_info
-- ----------------------------
DROP TABLE IF EXISTS `meta_visitor_info`;
CREATE TABLE `meta_visitor_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '旅客ID visitor_id',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `visitor_name` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '旅客姓名',
  `visitor_id_card` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '旅客身份证号',
  `visitor_gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '旅客性别',
  `visitor_role` bigint NULL DEFAULT NULL COMMENT '旅客角色（1-普通、2-重点、3-其他）',
  `visitor_type` int NULL DEFAULT NULL COMMENT '旅客类型',
  `visitor_spec` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '旅客识别特征',
  `status` int NULL DEFAULT NULL COMMENT '应用状态(1-启用,2-禁用)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_visitor_info
-- ----------------------------
INSERT INTO `meta_visitor_info` VALUES (1, NULL, '旅客姓名01', '旅客01-ID-Card', '男', 1, 1, '旅客识别特征', 1, NULL, '0', '旅客描述', ' ', '2024-06-21 11:37:38', ' ', '2024-06-21 11:37:41');
INSERT INTO `meta_visitor_info` VALUES (2, NULL, '02重点人员名称', '02重点人员身份证号', '女', 2, 1, '02重点人员识别特征', NULL, NULL, '1', '02重点人员描述', 'admin', '2024-06-21 13:33:46', 'admin', '2024-06-21 13:34:02');

-- ----------------------------
-- Table structure for meta_vistor_info
-- ----------------------------
DROP TABLE IF EXISTS `meta_vistor_info`;
CREATE TABLE `meta_vistor_info`  (
  `visitor_id` bigint NOT NULL AUTO_INCREMENT COMMENT '旅客ID',
  `vistor_name` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '旅客姓名',
  `vistor_idcard` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '旅客身份证号',
  `vistor_sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '旅客性别',
  `status` int NULL DEFAULT NULL COMMENT '应用状态(1-启用,2-禁用)',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`visitor_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_vistor_info
-- ----------------------------

-- ----------------------------
-- Table structure for meta_warning_info
-- ----------------------------
DROP TABLE IF EXISTS `meta_warning_info`;
CREATE TABLE `meta_warning_info`  (
  `id` bigint NOT NULL COMMENT '预警事件ID',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `warning_category` int NULL DEFAULT NULL COMMENT '预警类别(1-出境流量、2-入境流量、3-人员流量）',
  `warning_type` int NULL DEFAULT NULL COMMENT '预警类型（1-T1出境两小时预警、2-T1出境候检区预警、3-T1入境两小时预警、4-T1入境30分钟预警、5-T1入境10分钟预警、6-T1入境候检区预警、7-T2出境两小时预警、8-T2出境候检区预警、9-T2入境两小时预警、10-T2入境30分钟预警、11-T2入境10分钟预警、12-T2入境候检区预警）',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_warning_info
-- ----------------------------

-- ----------------------------
-- Table structure for meta_work_info
-- ----------------------------
DROP TABLE IF EXISTS `meta_work_info`;
CREATE TABLE `meta_work_info`  (
  `staff_work_id` bigint NOT NULL AUTO_INCREMENT COMMENT '值班ID',
  `staff_id` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '值班人员ID',
  `staff_work_type` bigint NULL DEFAULT NULL COMMENT '值班人员类型',
  `work_start_date` datetime NULL DEFAULT NULL COMMENT '值班起始日期',
  `work_end_date` datetime NULL DEFAULT NULL COMMENT '值班结束日期',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`staff_work_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_work_info
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `blob_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fired_time` bigint NOT NULL,
  `sched_time` bigint NOT NULL,
  `priority` int NOT NULL,
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_checkin_time` bigint NOT NULL,
  `checkin_interval` bigint NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repeat_count` bigint NOT NULL,
  `repeat_interval` bigint NOT NULL,
  `times_triggered` bigint NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_IBFK_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `int_prop_1` int NULL DEFAULT NULL,
  `int_prop_2` int NULL DEFAULT NULL,
  `long_prop_1` bigint NULL DEFAULT NULL,
  `long_prop_2` bigint NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_IBFK_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `next_fire_time` bigint NULL DEFAULT NULL,
  `prev_fire_time` bigint NULL DEFAULT NULL,
  `priority` int NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time` bigint NOT NULL,
  `end_time` bigint NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `misfire_instr` smallint NULL DEFAULT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for rel_meta_prop
-- ----------------------------
DROP TABLE IF EXISTS `rel_meta_prop`;
CREATE TABLE `rel_meta_prop`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主数据类型属性配置ID',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `meta_type_id` bigint NOT NULL COMMENT '主数据类型ID',
  `meta_prop_id` bigint NULL DEFAULT NULL COMMENT '主数据属性ID',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rel_meta_prop
-- ----------------------------

-- ----------------------------
-- Table structure for rel_monitor_dev_point
-- ----------------------------
DROP TABLE IF EXISTS `rel_monitor_dev_point`;
CREATE TABLE `rel_monitor_dev_point`  (
  `monitor_dev_id` bigint NOT NULL,
  `monitor_point_id` bigint NOT NULL,
  PRIMARY KEY (`monitor_dev_id`, `monitor_point_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rel_monitor_dev_point
-- ----------------------------
INSERT INTO `rel_monitor_dev_point` VALUES (1, 1);
INSERT INTO `rel_monitor_dev_point` VALUES (2, 1);
INSERT INTO `rel_monitor_dev_point` VALUES (3, 1);
INSERT INTO `rel_monitor_dev_point` VALUES (4, 1);

-- ----------------------------
-- Table structure for rel_trace_flow_point
-- ----------------------------
DROP TABLE IF EXISTS `rel_trace_flow_point`;
CREATE TABLE `rel_trace_flow_point`  (
  `trace_flow_id` bigint NULL DEFAULT NULL COMMENT '跟踪流程ID',
  `trace_point_id` bigint NULL DEFAULT NULL COMMENT '跟踪流程节点ID'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rel_trace_flow_point
-- ----------------------------

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL COMMENT '任务id',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `job_order` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '组内执行顺利，值越大执行优先级越高，最大值9，最小值1',
  `job_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '1、java类;2、spring bean名称;3、rest调用;4、jar调用;9其他',
  `execute_path` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'job_type=3时，rest调用地址，仅支持rest get协议,需要增加String返回值，0成功，1失败;job_type=4时，jar路径;其它值为空',
  `class_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'job_type=1时，类完整路径;job_type=2时，spring bean名称;其它值为空',
  `method_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务方法',
  `method_params_value` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '参数值',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '3' COMMENT '错失执行策略（1错失周期立即执行 2错失周期执行一次 3下周期执行）',
  `job_tenant_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '1、多租户任务;2、非多租户任务',
  `job_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（1、未发布;2、运行中;3、暂停;4、删除;）',
  `job_execute_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1异常）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `start_time` timestamp NULL DEFAULT NULL COMMENT '初次执行时间',
  `previous_time` timestamp NULL DEFAULT NULL COMMENT '上次执行时间',
  `next_time` timestamp NULL DEFAULT NULL COMMENT '下次执行时间',
  `tenant_id` bigint NULL DEFAULT 1 COMMENT '租户',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL COMMENT '任务日志ID',
  `job_id` bigint NOT NULL COMMENT '任务id',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务组名',
  `job_order` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组内执行顺利，值越大执行优先级越高，最大值9，最小值1',
  `job_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '1、java类;2、spring bean名称;3、rest调用;4、jar调用;9其他',
  `execute_path` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'job_type=3时，rest调用地址，仅支持post协议;job_type=4时，jar路径;其它值为空',
  `class_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'job_type=1时，类完整路径;job_type=2时，spring bean名称;其它值为空',
  `method_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务方法',
  `method_params_value` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数值',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'cron执行表达式',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `job_log_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `execute_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '执行时间',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tenant_id` bigint NOT NULL DEFAULT 1 COMMENT '租户id',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务执行日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for xxl_job_group
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_group`;
CREATE TABLE `xxl_job_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '执行器AppName',
  `title` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '执行器名称',
  `address_type` tinyint NOT NULL DEFAULT 0 COMMENT '执行器地址类型：0=自动注册、1=手动录入',
  `address_list` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '执行器地址列表，多地址逗号分隔',
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xxl_job_group
-- ----------------------------
INSERT INTO `xxl_job_group` VALUES (2, 'ssoJobHandle', 'sso-Job', 0, NULL, '2024-06-13 17:10:53');

-- ----------------------------
-- Table structure for xxl_job_info
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_info`;
CREATE TABLE `xxl_job_info`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_group` int NOT NULL COMMENT '执行器主键ID',
  `job_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `add_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `author` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '作者',
  `alarm_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '报警邮件',
  `schedule_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'NONE' COMMENT '调度类型',
  `schedule_conf` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '调度配置，值含义取决于调度类型',
  `misfire_strategy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DO_NOTHING' COMMENT '调度过期策略',
  `executor_route_strategy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '执行器路由策略',
  `executor_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '执行器任务handler',
  `executor_param` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '执行器任务参数',
  `executor_block_strategy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '阻塞处理策略',
  `executor_timeout` int NOT NULL DEFAULT 0 COMMENT '任务执行超时时间，单位秒',
  `executor_fail_retry_count` int NOT NULL DEFAULT 0 COMMENT '失败重试次数',
  `glue_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'GLUE类型',
  `glue_source` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT 'GLUE源代码',
  `glue_remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'GLUE备注',
  `glue_updatetime` datetime NULL DEFAULT NULL COMMENT 'GLUE更新时间',
  `child_jobid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子任务ID，多个逗号分隔',
  `trigger_status` tinyint NOT NULL DEFAULT 0 COMMENT '调度状态：0-停止，1-运行',
  `trigger_last_time` bigint NOT NULL DEFAULT 0 COMMENT '上次调度时间',
  `trigger_next_time` bigint NOT NULL DEFAULT 0 COMMENT '下次调度时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xxl_job_info
-- ----------------------------
INSERT INTO `xxl_job_info` VALUES (2, 2, 'demo', '2024-06-13 16:40:06', '2024-06-13 16:50:02', 'xxx', '', 'CRON', '0/5 * * * * ?', 'DO_NOTHING', 'FIRST', 'demoSsoHandler', '', 'SERIAL_EXECUTION', 0, 0, 'BEAN', '', 'GLUE代码初始化', '2024-06-13 16:40:06', '', 0, 0, 0);

-- ----------------------------
-- Table structure for xxl_job_lock
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_lock`;
CREATE TABLE `xxl_job_lock`  (
  `lock_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '锁名称',
  PRIMARY KEY (`lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xxl_job_lock
-- ----------------------------
INSERT INTO `xxl_job_lock` VALUES ('schedule_lock');

-- ----------------------------
-- Table structure for xxl_job_log
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_log`;
CREATE TABLE `xxl_job_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `job_group` int NOT NULL COMMENT '执行器主键ID',
  `job_id` int NOT NULL COMMENT '任务，主键ID',
  `executor_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '执行器地址，本次执行的地址',
  `executor_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '执行器任务handler',
  `executor_param` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '执行器任务参数',
  `executor_sharding_param` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '执行器任务分片参数，格式如 1/2',
  `executor_fail_retry_count` int NOT NULL DEFAULT 0 COMMENT '失败重试次数',
  `trigger_time` datetime NULL DEFAULT NULL COMMENT '调度-时间',
  `trigger_code` int NOT NULL COMMENT '调度-结果',
  `trigger_msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '调度-日志',
  `handle_time` datetime NULL DEFAULT NULL COMMENT '执行-时间',
  `handle_code` int NOT NULL COMMENT '执行-状态',
  `handle_msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '执行-日志',
  `alarm_status` tinyint NOT NULL DEFAULT 0 COMMENT '告警状态：0-默认、1-无需告警、2-告警成功、3-告警失败',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `I_trigger_time`(`trigger_time`) USING BTREE,
  INDEX `I_handle_code`(`handle_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xxl_job_log
-- ----------------------------
INSERT INTO `xxl_job_log` VALUES (15, 2, 2, 'http://192.168.1.116:9998/', 'demoSsoHandler', '', NULL, 0, '2024-06-13 16:47:50', 200, '任务触发类型：手动触发<br>调度机器：192.168.1.116<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.116:9998/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.116:9998/<br>code：200<br>msg：null', '2024-06-13 16:47:50', 200, '', 0);
INSERT INTO `xxl_job_log` VALUES (16, 2, 2, 'http://192.168.1.116:9998/', 'demoSsoHandler', '', NULL, 0, '2024-06-13 16:48:35', 200, '任务触发类型：Cron触发<br>调度机器：192.168.1.116<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.116:9998/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.116:9998/<br>code：200<br>msg：null', '2024-06-13 16:48:35', 200, '', 0);
INSERT INTO `xxl_job_log` VALUES (17, 2, 2, 'http://192.168.1.116:9998/', 'demoSsoHandler', '', NULL, 0, '2024-06-13 16:48:40', 200, '任务触发类型：Cron触发<br>调度机器：192.168.1.116<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.116:9998/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.116:9998/<br>code：200<br>msg：null', '2024-06-13 16:48:40', 200, '', 0);
INSERT INTO `xxl_job_log` VALUES (18, 2, 2, 'http://192.168.1.116:9998/', 'demoSsoHandler', '', NULL, 0, '2024-06-13 16:48:45', 200, '任务触发类型：Cron触发<br>调度机器：192.168.1.116<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.116:9998/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.116:9998/<br>code：200<br>msg：null', '2024-06-13 16:48:45', 200, '', 0);
INSERT INTO `xxl_job_log` VALUES (19, 2, 2, 'http://192.168.1.116:9998/', 'demoSsoHandler', '', NULL, 0, '2024-06-13 16:48:50', 200, '任务触发类型：Cron触发<br>调度机器：192.168.1.116<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.116:9998/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.116:9998/<br>code：200<br>msg：null', '2024-06-13 16:48:50', 200, '', 0);
INSERT INTO `xxl_job_log` VALUES (20, 2, 2, 'http://192.168.1.116:9998/', 'demoSsoHandler', '', NULL, 0, '2024-06-13 16:48:55', 200, '任务触发类型：Cron触发<br>调度机器：192.168.1.116<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.116:9998/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.116:9998/<br>code：200<br>msg：null', '2024-06-13 16:48:55', 200, '', 0);
INSERT INTO `xxl_job_log` VALUES (21, 2, 2, 'http://192.168.1.116:9998/', 'demoSsoHandler', '', NULL, 0, '2024-06-13 16:49:00', 200, '任务触发类型：Cron触发<br>调度机器：192.168.1.116<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.116:9998/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.116:9998/<br>code：200<br>msg：null', '2024-06-13 16:49:00', 200, '', 0);
INSERT INTO `xxl_job_log` VALUES (22, 2, 2, 'http://192.168.1.116:9998/', 'demoSsoHandler', '', NULL, 0, '2024-06-13 16:49:05', 200, '任务触发类型：Cron触发<br>调度机器：192.168.1.116<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.116:9998/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.116:9998/<br>code：200<br>msg：null', '2024-06-13 16:49:05', 200, '', 0);
INSERT INTO `xxl_job_log` VALUES (23, 2, 2, 'http://192.168.1.116:9998/', 'demoSsoHandler', '', NULL, 0, '2024-06-13 16:49:10', 200, '任务触发类型：Cron触发<br>调度机器：192.168.1.116<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.116:9998/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.116:9998/<br>code：200<br>msg：null', '2024-06-13 16:49:10', 200, '', 0);
INSERT INTO `xxl_job_log` VALUES (24, 2, 2, 'http://192.168.1.116:9998/', 'demoSsoHandler', '', NULL, 0, '2024-06-13 16:49:15', 200, '任务触发类型：Cron触发<br>调度机器：192.168.1.116<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.116:9998/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.116:9998/<br>code：200<br>msg：null', '2024-06-13 16:49:15', 200, '', 0);
INSERT INTO `xxl_job_log` VALUES (25, 2, 2, 'http://192.168.1.116:9998/', 'demoSsoHandler', '', NULL, 0, '2024-06-13 16:49:20', 200, '任务触发类型：Cron触发<br>调度机器：192.168.1.116<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.116:9998/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.116:9998/<br>code：200<br>msg：null', '2024-06-13 16:49:20', 200, '', 0);
INSERT INTO `xxl_job_log` VALUES (26, 2, 2, 'http://192.168.1.116:9998/', 'demoSsoHandler', '', NULL, 0, '2024-06-13 16:49:25', 200, '任务触发类型：Cron触发<br>调度机器：192.168.1.116<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.116:9998/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.116:9998/<br>code：200<br>msg：null', '2024-06-13 16:49:25', 200, '', 0);
INSERT INTO `xxl_job_log` VALUES (27, 2, 2, 'http://192.168.1.116:9998/', 'demoSsoHandler', '', NULL, 0, '2024-06-13 16:49:30', 200, '任务触发类型：Cron触发<br>调度机器：192.168.1.116<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.116:9998/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.116:9998/<br>code：200<br>msg：null', '2024-06-13 16:49:30', 200, '', 0);
INSERT INTO `xxl_job_log` VALUES (28, 2, 2, 'http://192.168.1.116:9998/', 'demoSsoHandler', '', NULL, 0, '2024-06-13 16:49:35', 200, '任务触发类型：Cron触发<br>调度机器：192.168.1.116<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.116:9998/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.116:9998/<br>code：200<br>msg：null', '2024-06-13 16:49:35', 200, '', 0);
INSERT INTO `xxl_job_log` VALUES (29, 2, 2, 'http://192.168.1.116:9998/', 'demoSsoHandler', '', NULL, 0, '2024-06-13 16:49:40', 200, '任务触发类型：Cron触发<br>调度机器：192.168.1.116<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.116:9998/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.116:9998/<br>code：200<br>msg：null', '2024-06-13 16:49:40', 200, '', 0);
INSERT INTO `xxl_job_log` VALUES (30, 2, 2, 'http://192.168.1.116:9998/', 'demoSsoHandler', '', NULL, 0, '2024-06-13 16:49:45', 200, '任务触发类型：Cron触发<br>调度机器：192.168.1.116<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.116:9998/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.116:9998/<br>code：200<br>msg：null', '2024-06-13 16:49:45', 200, '', 0);
INSERT INTO `xxl_job_log` VALUES (31, 2, 2, 'http://192.168.1.116:9998/', 'demoSsoHandler', '', NULL, 0, '2024-06-13 16:49:50', 200, '任务触发类型：Cron触发<br>调度机器：192.168.1.116<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.116:9998/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.116:9998/<br>code：200<br>msg：null', '2024-06-13 16:49:50', 200, '', 0);
INSERT INTO `xxl_job_log` VALUES (32, 2, 2, 'http://192.168.1.116:9998/', 'demoSsoHandler', '', NULL, 0, '2024-06-13 16:49:55', 200, '任务触发类型：Cron触发<br>调度机器：192.168.1.116<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.116:9998/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.116:9998/<br>code：200<br>msg：null', '2024-06-13 16:49:55', 200, '', 0);
INSERT INTO `xxl_job_log` VALUES (33, 2, 2, 'http://192.168.1.116:9998/', 'demoSsoHandler', '', NULL, 0, '2024-06-13 16:50:00', 200, '任务触发类型：Cron触发<br>调度机器：192.168.1.116<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.116:9998/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.116:9998/<br>code：200<br>msg：null', '2024-06-13 16:50:00', 200, '', 0);
INSERT INTO `xxl_job_log` VALUES (34, 2, 2, 'http://192.168.1.116:9998/', 'demoSsoHandler', '', NULL, 0, '2024-06-13 16:50:05', 200, '任务触发类型：Cron触发<br>调度机器：192.168.1.116<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.116:9998/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.116:9998/<br>code：200<br>msg：null', '2024-06-13 16:50:05', 200, '', 0);

-- ----------------------------
-- Table structure for xxl_job_log_report
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_log_report`;
CREATE TABLE `xxl_job_log_report`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `trigger_day` datetime NULL DEFAULT NULL COMMENT '调度-时间',
  `running_count` int NOT NULL DEFAULT 0 COMMENT '运行中-日志数量',
  `suc_count` int NOT NULL DEFAULT 0 COMMENT '执行成功-日志数量',
  `fail_count` int NOT NULL DEFAULT 0 COMMENT '执行失败-日志数量',
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `i_trigger_day`(`trigger_day`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xxl_job_log_report
-- ----------------------------
INSERT INTO `xxl_job_log_report` VALUES (1, '2024-06-13 00:00:00', 0, 20, 0, NULL);
INSERT INTO `xxl_job_log_report` VALUES (2, '2024-06-12 00:00:00', 0, 0, 0, NULL);
INSERT INTO `xxl_job_log_report` VALUES (3, '2024-06-11 00:00:00', 0, 0, 0, NULL);

-- ----------------------------
-- Table structure for xxl_job_logglue
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_logglue`;
CREATE TABLE `xxl_job_logglue`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_id` int NOT NULL COMMENT '任务，主键ID',
  `glue_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'GLUE类型',
  `glue_source` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT 'GLUE源代码',
  `glue_remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'GLUE备注',
  `add_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xxl_job_logglue
-- ----------------------------

-- ----------------------------
-- Table structure for xxl_job_registry
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_registry`;
CREATE TABLE `xxl_job_registry`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `registry_group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `registry_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `registry_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `i_g_k_v`(`registry_group`, `registry_key`, `registry_value`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xxl_job_registry
-- ----------------------------

-- ----------------------------
-- Table structure for xxl_job_user
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_user`;
CREATE TABLE `xxl_job_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '账号',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `role` tinyint NOT NULL COMMENT '角色：0-普通用户、1-管理员',
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限：执行器ID列表，多个逗号分割',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `i_username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xxl_job_user
-- ----------------------------
INSERT INTO `xxl_job_user` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL);

SET FOREIGN_KEY_CHECKS = 1;
