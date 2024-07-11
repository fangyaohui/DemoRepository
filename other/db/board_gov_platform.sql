/*
 Navicat Premium Data Transfer

 Source Server         : spack
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : board_gov_platform

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 11/07/2024 16:01:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for biz_alarm_event
-- ----------------------------
DROP TABLE IF EXISTS `biz_alarm_event`;
CREATE TABLE `biz_alarm_event`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '报警记录ID',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `alarm_event_type` int NULL DEFAULT NULL COMMENT '报警事件类型',
  `alarm_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '报警标题',
  `alarm_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '报警内容(模板)',
  `alarm_position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '报警位置',
  `alarm_event_time` datetime NULL DEFAULT NULL COMMENT '报警时间',
  `alarm_event_snapshot` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '报警截图快照',
  `process_status` int NULL DEFAULT NULL COMMENT '处理状态(1-待处理,2-处理中,3-已处理,4-不作处理)',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of biz_alarm_event
-- ----------------------------

-- ----------------------------
-- Table structure for biz_board_region_event
-- ----------------------------
DROP TABLE IF EXISTS `biz_board_region_event`;
CREATE TABLE `biz_board_region_event`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '边检场地区域事件记录ID',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `board_site_id` bigint NULL DEFAULT NULL COMMENT '边检场地ID',
  `site_region_id` bigint NULL DEFAULT NULL COMMENT '场地区域ID',
  `event_type` int NULL DEFAULT NULL COMMENT '事件类型(1-进入区域,2-离开区域)',
  `event_time` datetime NULL DEFAULT NULL COMMENT '事件发生时间',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of biz_board_region_event
-- ----------------------------

-- ----------------------------
-- Table structure for biz_board_region_summary
-- ----------------------------
DROP TABLE IF EXISTS `biz_board_region_summary`;
CREATE TABLE `biz_board_region_summary`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '边检区域ID',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `board_site_id` bigint NULL DEFAULT NULL COMMENT '边检场地ID',
  `site_region_id` bigint NULL DEFAULT NULL COMMENT '场地区域ID',
  `region_visitor_num` bigint NULL DEFAULT NULL COMMENT '场地区域内旅客数量',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of biz_board_region_summary
-- ----------------------------

-- ----------------------------
-- Table structure for biz_dashboard_artifact_details
-- ----------------------------
DROP TABLE IF EXISTS `biz_dashboard_artifact_details`;
CREATE TABLE `biz_dashboard_artifact_details`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `content` json NULL COMMENT '大屏详情',
  `ds_artifact_id` bigint NOT NULL COMMENT '大屏ID',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '修改人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '大屏信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of biz_dashboard_artifact_details
-- ----------------------------
INSERT INTO `biz_dashboard_artifact_details` VALUES (20, '{\"componentList\": [{\"id\": \"mn4rjyuras000\", \"key\": \"InputsSelect\", \"attr\": {\"h\": 70, \"w\": 515, \"x\": 292, \"y\": 189, \"zIndex\": -1, \"offsetX\": 0, \"offsetY\": 0}, \"events\": {\"baseEvent\": {\"click\": \"// 打印所有组件的 ID 和它们的属性\\r\\n    console.log(\\\"components:\\\", components);\\r\\n\\r\\n    // 假设我们需要操作组件ID为\'1lkwaksw43fk00\'的组件\\r\\n    const targetComponentId = \'2sjurdp2xs2000\';\\r\\n\\r\\n    // 检查目标组件是否存在\\r\\n    if (components[targetComponentId]) {\\r\\n        // 获取目标组件\\r\\n        const targetComponent = components[targetComponentId];\\r\\n        \\r\\n        // 检查目标组件是否具有需要的属性或方法\\r\\n        if (targetComponent.props && targetComponent.props.chartConfig) {\\r\\n            // 打印当前的 chartConfig 属性\\r\\n            console.log(\\\"Current chartConfig:\\\", targetComponent.props.chartConfig);\\r\\n            // 打印当前的 chartConfig.request 属性\\r\\n            console.log(\\\"Url:\\\", targetComponent.props.chartConfig.request.requestUrl\\r\\n);\\r\\n            // targetComponent.props.chartConfig.request.requestUrl = \\\"/artifact/getEchartsPieZeroByDTO\\\"\\r\\n            // 假设我们要更新 chartConfig 的某个属性\\r\\n            const newChartConfig = {\\r\\n                ...targetComponent.props.chartConfig,\\r\\n                // 更新这里的配置\\r\\n                someNewProperty: \'newValue\'\\r\\n            };\\r\\n\\r\\n            // 动态更新目标组件的属性\\r\\n            targetComponent.props.chartConfig = newChartConfig;\\r\\n\\r\\n            // 如果需要调用组件的方法，比如重新渲染\\r\\n            if (targetComponent.update) {\\r\\n                targetComponent.update();\\r\\n            }\\r\\n        } else {\\r\\n            console.error(`Component ${targetComponentId} does not have the expected properties.`);\\r\\n        }\\r\\n    } else {\\r\\n        console.error(`Component ${targetComponentId} not found.`);\\r\\n    }\\r\\n    \", \"dblclick\": null, \"mouseenter\": null, \"mouseleave\": null}, \"advancedEvents\": {\"vnodeMounted\": \"console.log(e)\\r\\nconsole.log(\\\"----\\\")\\r\\nconsole.log(node_modules)\", \"vnodeBeforeMount\": null}, \"interactEvents\": [{\"interactFn\": {\"type\": \"data\", \"data1\": \"data\"}, \"interactOn\": \"change\", \"interactComponentId\": \"d7q8vtu0dls00\"}]}, \"filter\": null, \"option\": {\"dataset\": [{\"label\": \"清0\", \"value\": \"1\"}, {\"label\": \"获取数据\", \"value\": \"2\"}], \"selectValue\": \"1\", \"componentInteractEventKey\": \"data\"}, \"status\": {\"hide\": false, \"lock\": false}, \"styles\": {\"skewX\": 0, \"skewY\": 0, \"opacity\": 1, \"rotateX\": 0, \"rotateY\": 0, \"rotateZ\": 0, \"contrast\": 1, \"saturate\": 1, \"blendMode\": \"normal\", \"hueRotate\": 0, \"animations\": [], \"brightness\": 1, \"filterShow\": false}, \"isGroup\": false, \"preview\": {\"overFlowHidden\": false}, \"request\": {\"requestUrl\": \"\", \"requestParams\": {\"Body\": {\"xml\": \"\", \"json\": \"\", \"form-data\": {}, \"x-www-form-urlencoded\": {}}, \"Header\": {}, \"Params\": {}}, \"requestDataType\": 0, \"requestHttpType\": \"get\", \"requestInterval\": null, \"requestSQLContent\": {\"sql\": \"select * from  where\"}, \"requestContentType\": 0, \"requestIntervalUnit\": \"second\", \"requestParamsBodyType\": \"none\"}, \"chartConfig\": {\"key\": \"InputsSelect\", \"image\": \"inputs_select.png\", \"title\": \"下拉选择器\", \"conKey\": \"VCInputsSelect\", \"package\": \"Informations\", \"category\": \"Inputs\", \"chartKey\": \"VInputsSelect\", \"chartFrame\": \"static\", \"categoryName\": \"控件\"}, \"interactActions\": [{\"interactName\": \"选择完成\", \"interactType\": \"change\", \"componentEmitEvents\": {\"data\": [{\"label\": \"选择项\", \"value\": \"data\"}]}}]}, {\"id\": \"d7q8vtu0dls00\", \"key\": \"BarCrossrange\", \"attr\": {\"h\": 552, \"w\": 965, \"x\": 183, \"y\": 353, \"zIndex\": -1, \"offsetX\": 0, \"offsetY\": 0}, \"events\": {\"baseEvent\": {\"click\": null, \"dblclick\": null, \"mouseenter\": null, \"mouseleave\": null}, \"advancedEvents\": {\"vnodeMounted\": null, \"vnodeBeforeMount\": null}, \"interactEvents\": []}, \"filter\": null, \"option\": {\"grid\": {\"top\": \"60\", \"left\": \"10%\", \"show\": false, \"right\": \"10%\", \"bottom\": \"60\"}, \"xAxis\": {\"name\": \"\", \"show\": true, \"type\": \"value\", \"inverse\": false, \"nameGap\": 15, \"axisLine\": {\"show\": true, \"onZero\": true, \"lineStyle\": {\"color\": \"#B9B8CE\", \"width\": 1}}, \"axisTick\": {\"show\": true, \"length\": 5}, \"position\": \"bottom\", \"axisLabel\": {\"show\": true, \"color\": \"#B9B8CE\", \"rotate\": 0, \"fontSize\": 12}, \"splitLine\": {\"show\": false, \"lineStyle\": {\"type\": \"solid\", \"color\": \"#484753\", \"width\": 1}}, \"nameTextStyle\": {\"color\": \"#B9B8CE\", \"fontSize\": 12}}, \"yAxis\": {\"name\": \"\", \"show\": true, \"type\": \"category\", \"inverse\": false, \"nameGap\": 15, \"axisLine\": {\"show\": true, \"onZero\": true, \"lineStyle\": {\"color\": \"#B9B8CE\", \"width\": 1}}, \"axisTick\": {\"show\": true, \"length\": 5}, \"position\": \"left\", \"axisLabel\": {\"show\": true, \"color\": \"#B9B8CE\", \"rotate\": 0, \"fontSize\": 12}, \"splitLine\": {\"show\": true, \"lineStyle\": {\"type\": \"solid\", \"color\": \"#484753\", \"width\": 1}}, \"nameTextStyle\": {\"color\": \"#B9B8CE\", \"fontSize\": 12}}, \"legend\": {\"x\": \"center\", \"y\": \"top\", \"icon\": \"circle\", \"show\": true, \"type\": \"scroll\", \"orient\": \"horizontal\", \"itemWidth\": 15, \"textStyle\": {\"color\": \"#B9B8CE\", \"fontSize\": 18}, \"itemHeight\": 15, \"pageTextStyle\": {\"color\": \"#B9B8CE\"}}, \"series\": [{\"type\": \"bar\", \"label\": {\"show\": true, \"color\": \"#fff\", \"fontSize\": 12, \"position\": \"right\"}, \"barWidth\": null, \"itemStyle\": {\"color\": null, \"borderRadius\": 0}}, {\"type\": \"bar\", \"label\": {\"show\": true, \"color\": \"#fff\", \"fontSize\": 12, \"position\": \"right\"}, \"barWidth\": null, \"itemStyle\": {\"color\": null, \"borderRadius\": 0}}], \"dataset\": {\"source\": [{\"data1\": 139, \"data2\": 458, \"product\": \"Mon\"}, {\"data1\": 200, \"data2\": 69, \"product\": \"Tue\"}, {\"data1\": 53, \"data2\": 73, \"product\": \"Wed\"}, {\"data1\": 193, \"data2\": 40, \"product\": \"Thu\"}, {\"data1\": 247, \"data2\": 455, \"product\": \"Fri\"}, {\"data1\": 282, \"data2\": 296, \"product\": \"Sat\"}, {\"data1\": 377, \"data2\": 288, \"product\": \"Sun\"}], \"dimensions\": [\"product\", \"data1\", \"data2\"]}, \"tooltip\": {\"show\": true, \"trigger\": \"axis\", \"axisPointer\": {\"show\": true, \"type\": \"shadow\"}}, \"backgroundColor\": \"rgba(0,0,0,0)\"}, \"status\": {\"hide\": false, \"lock\": false}, \"styles\": {\"skewX\": 0, \"skewY\": 0, \"opacity\": 1, \"rotateX\": 0, \"rotateY\": 0, \"rotateZ\": 0, \"contrast\": 1, \"saturate\": 1, \"blendMode\": \"normal\", \"hueRotate\": 0, \"animations\": [], \"brightness\": 1, \"filterShow\": false}, \"isGroup\": false, \"preview\": {\"overFlowHidden\": false}, \"request\": {\"requestUrl\": \"/artifact/getEchartsByDTO\", \"requestParams\": {\"Body\": {\"xml\": \"\", \"json\": \"\", \"form-data\": {}, \"x-www-form-urlencoded\": {}}, \"Header\": {}, \"Params\": {\"type\": \"2\"}}, \"requestDataType\": 1, \"requestHttpType\": \"get\", \"requestInterval\": 3, \"requestSQLContent\": {\"sql\": \"select * from  where\"}, \"requestContentType\": 0, \"requestIntervalUnit\": \"second\", \"requestParamsBodyType\": \"none\"}, \"chartConfig\": {\"key\": \"BarCrossrange\", \"image\": \"bar_y.png\", \"title\": \"横向柱状图\", \"conKey\": \"VCBarCrossrange\", \"package\": \"Charts\", \"category\": \"Bars\", \"chartKey\": \"VBarCrossrange\", \"chartFrame\": \"echarts\", \"categoryName\": \"柱状图\"}}, {\"id\": \"4hmaxudlp1u000\", \"key\": \"TextCommon\", \"attr\": {\"h\": 188, \"w\": 317, \"x\": 1580, \"y\": 1, \"zIndex\": -1, \"offsetX\": 0, \"offsetY\": 0}, \"events\": {\"baseEvent\": {\"click\": null, \"dblclick\": null, \"mouseenter\": null, \"mouseleave\": null}, \"advancedEvents\": {\"vnodeMounted\": null, \"vnodeBeforeMount\": null}, \"interactEvents\": []}, \"filter\": null, \"option\": {\"link\": \"localhost:8082/mainboard\", \"dataset\": \"进入主控\", \"fontSize\": 20, \"linkHead\": \"http://\", \"paddingX\": 10, \"paddingY\": 10, \"fontColor\": \"#FEFCFCFF\", \"textAlign\": \"center\", \"fontWeight\": \"normal\", \"borderColor\": \"#D31616FF\", \"borderWidth\": 3, \"writingMode\": \"horizontal-tb\", \"borderRadius\": 5, \"letterSpacing\": 5, \"backgroundColor\": \"#07A0FF85\"}, \"status\": {\"hide\": false, \"lock\": false}, \"styles\": {\"skewX\": 0, \"skewY\": 0, \"opacity\": 1, \"rotateX\": 0, \"rotateY\": 0, \"rotateZ\": 0, \"contrast\": 1, \"saturate\": 1, \"blendMode\": \"normal\", \"hueRotate\": 0, \"animations\": [], \"brightness\": 1, \"filterShow\": false}, \"isGroup\": false, \"preview\": {\"overFlowHidden\": false}, \"request\": {\"requestUrl\": \"\", \"requestParams\": {\"Body\": {\"xml\": \"\", \"json\": \"\", \"form-data\": {}, \"x-www-form-urlencoded\": {}}, \"Header\": {}, \"Params\": {}}, \"requestDataType\": 0, \"requestHttpType\": \"get\", \"requestInterval\": null, \"requestSQLContent\": {\"sql\": \"select * from  where\"}, \"requestContentType\": 0, \"requestIntervalUnit\": \"second\", \"requestParamsBodyType\": \"none\"}, \"chartConfig\": {\"key\": \"TextCommon\", \"image\": \"text_static.png\", \"title\": \"文字\", \"conKey\": \"VCTextCommon\", \"package\": \"Informations\", \"category\": \"Texts\", \"chartKey\": \"VTextCommon\", \"chartFrame\": \"common\", \"categoryName\": \"文本\"}}, {\"id\": \"2yx1wny0lm6000\", \"key\": \"PieCommon\", \"attr\": {\"h\": 300, \"w\": 500, \"x\": 1211, \"y\": 432, \"zIndex\": -1, \"offsetX\": 0, \"offsetY\": 0}, \"events\": {\"baseEvent\": {\"click\": null, \"dblclick\": null, \"mouseenter\": null, \"mouseleave\": null}, \"advancedEvents\": {\"vnodeMounted\": null, \"vnodeBeforeMount\": null}, \"interactEvents\": []}, \"filter\": null, \"option\": {\"type\": \"ring\", \"legend\": {\"x\": \"center\", \"y\": \"top\", \"icon\": \"circle\", \"show\": true, \"type\": \"scroll\", \"orient\": \"horizontal\", \"itemWidth\": 15, \"textStyle\": {\"color\": \"#B9B8CE\", \"fontSize\": 18}, \"itemHeight\": 15, \"pageTextStyle\": {\"color\": \"#B9B8CE\"}}, \"series\": [{\"type\": \"pie\", \"label\": {\"show\": false, \"fontSize\": 12, \"position\": \"center\", \"formatter\": \"{b}\"}, \"center\": [\"50%\", \"60%\"], \"radius\": [\"40%\", \"65%\"], \"emphasis\": {\"label\": {\"show\": true, \"fontSize\": \"40\", \"fontWeight\": \"bold\"}}, \"roseType\": false, \"itemStyle\": {\"show\": true, \"borderColor\": \"#fff\", \"borderWidth\": 2, \"borderRadius\": 10}, \"labelLine\": {\"show\": false}, \"avoidLabelOverlap\": false}], \"dataset\": {\"source\": [{\"data1\": 120, \"product\": \"Mon\"}, {\"data1\": 200, \"product\": \"Tue\"}, {\"data1\": 150, \"product\": \"Wed\"}, {\"data1\": 80, \"product\": \"Thu\"}, {\"data1\": 70, \"product\": \"Fri\"}, {\"data1\": 110, \"product\": \"Sat\"}, {\"data1\": 130, \"product\": \"Sun\"}], \"dimensions\": [\"product\", \"data1\"]}, \"tooltip\": {\"show\": true, \"trigger\": \"item\"}, \"isCarousel\": false, \"backgroundColor\": \"rgba(0,0,0,0)\"}, \"status\": {\"hide\": false, \"lock\": false}, \"styles\": {\"skewX\": 0, \"skewY\": 0, \"opacity\": 1, \"rotateX\": 0, \"rotateY\": 0, \"rotateZ\": 0, \"contrast\": 1, \"saturate\": 1, \"blendMode\": \"normal\", \"hueRotate\": 0, \"animations\": [], \"brightness\": 1, \"filterShow\": false}, \"isGroup\": false, \"preview\": {\"overFlowHidden\": false}, \"request\": {\"requestUrl\": \"/artifact/getEchartsByDTO\", \"requestParams\": {\"Body\": {\"xml\": \"\", \"json\": \"\", \"form-data\": {}, \"x-www-form-urlencoded\": {}}, \"Header\": {}, \"Params\": {\"type\": \"4\"}}, \"requestDataType\": 1, \"requestHttpType\": \"get\", \"requestInterval\": 3, \"requestSQLContent\": {\"sql\": \"select * from  where\"}, \"requestContentType\": 0, \"requestIntervalUnit\": \"second\", \"requestParamsBodyType\": \"none\"}, \"chartConfig\": {\"key\": \"PieCommon\", \"image\": \"pie.png\", \"title\": \"饼图\", \"conKey\": \"VCPieCommon\", \"package\": \"Charts\", \"category\": \"Pies\", \"chartKey\": \"VPieCommon\", \"chartFrame\": \"echarts\", \"categoryName\": \"饼图\"}}, {\"id\": \"56v4x4wvhf4000\", \"key\": \"TextCommon\", \"attr\": {\"h\": 300, \"w\": 500, \"x\": 944, \"y\": 74, \"zIndex\": -1, \"offsetX\": 0, \"offsetY\": 0}, \"events\": {\"baseEvent\": {\"click\": null, \"dblclick\": null, \"mouseenter\": null, \"mouseleave\": null}, \"advancedEvents\": {\"vnodeMounted\": null, \"vnodeBeforeMount\": null}, \"interactEvents\": []}, \"filter\": null, \"option\": {\"link\": \"\", \"dataset\": \"afjfowfjef\", \"fontSize\": 20, \"linkHead\": \"http://\", \"paddingX\": 10, \"paddingY\": 10, \"fontColor\": \"#ffffff\", \"textAlign\": \"center\", \"fontWeight\": \"normal\", \"borderColor\": \"#ffffff\", \"borderWidth\": 0, \"writingMode\": \"horizontal-tb\", \"borderRadius\": 5, \"letterSpacing\": 5, \"backgroundColor\": \"#00000000\"}, \"status\": {\"hide\": false, \"lock\": false}, \"styles\": {\"skewX\": 0, \"skewY\": 0, \"opacity\": 1, \"rotateX\": 0, \"rotateY\": 0, \"rotateZ\": 0, \"contrast\": 1, \"saturate\": 1, \"blendMode\": \"normal\", \"hueRotate\": 0, \"animations\": [], \"brightness\": 1, \"filterShow\": false}, \"isGroup\": false, \"preview\": {\"overFlowHidden\": false}, \"request\": {\"requestUrl\": \"\", \"requestParams\": {\"Body\": {\"xml\": \"\", \"json\": \"\", \"form-data\": {}, \"x-www-form-urlencoded\": {}}, \"Header\": {}, \"Params\": {}}, \"requestDataType\": 0, \"requestHttpType\": \"get\", \"requestInterval\": null, \"requestSQLContent\": {\"sql\": \"select * from  where\"}, \"requestContentType\": 0, \"requestIntervalUnit\": \"second\", \"requestParamsBodyType\": \"none\"}, \"chartConfig\": {\"key\": \"TextCommon\", \"image\": \"text_static.png\", \"title\": \"文字\", \"conKey\": \"VCTextCommon\", \"package\": \"Informations\", \"category\": \"Texts\", \"chartKey\": \"VTextCommon\", \"chartFrame\": \"common\", \"categoryName\": \"文本\"}}, {\"id\": \"1mt48rhw9l0g00\", \"key\": \"TableScrollBoard\", \"attr\": {\"h\": 300, \"w\": 500, \"x\": 1350, \"y\": 800, \"zIndex\": -1, \"offsetX\": 0, \"offsetY\": 0}, \"events\": {\"baseEvent\": {\"click\": null, \"dblclick\": null, \"mouseenter\": null, \"mouseleave\": null}, \"advancedEvents\": {\"vnodeMounted\": null, \"vnodeBeforeMount\": null}, \"interactEvents\": []}, \"filter\": null, \"option\": {\"align\": [\"center\", \"right\", \"right\", \"right\"], \"index\": true, \"header\": [\"列1\", \"列2\", \"列3\"], \"rowNum\": 5, \"dataset\": [[\"行1列1\", \"行1列2\", \"行1列3\"], [\"行2列1\", \"行2列2\", \"行2列3\"], [\"行3列1\", \"行3列2\", \"行3列3\"], [\"行4列1\", \"行4列2\", \"行4列3\"], [\"行5列1\", \"行5列2\", \"行5列3\"], [\"行6列1\", \"行6列2\", \"行6列3\"], [\"行7列1\", \"行7列2\", \"行7列3\"], [\"行8列1\", \"行8列2\", \"行8列3\"], [\"行9列1\", \"行9列2\", \"行9列3\"], [\"行10列1\", \"行10列2\", \"行10列3\"]], \"carousel\": \"single\", \"waitTime\": 2, \"headerBGC\": \"#00BAFF\", \"oddRowBGC\": \"#003B51\", \"evenRowBGC\": \"#0A2732\", \"columnWidth\": [30, 100, 100], \"headerHeight\": 35}, \"status\": {\"hide\": false, \"lock\": false}, \"styles\": {\"skewX\": 0, \"skewY\": 0, \"opacity\": 1, \"rotateX\": 0, \"rotateY\": 0, \"rotateZ\": 0, \"contrast\": 1, \"saturate\": 1, \"blendMode\": \"normal\", \"hueRotate\": 0, \"animations\": [], \"brightness\": 1, \"filterShow\": false}, \"isGroup\": false, \"preview\": {\"overFlowHidden\": false}, \"request\": {\"requestUrl\": \"\", \"requestParams\": {\"Body\": {\"xml\": \"\", \"json\": \"\", \"form-data\": {}, \"x-www-form-urlencoded\": {}}, \"Header\": {}, \"Params\": {}}, \"requestDataType\": 0, \"requestHttpType\": \"get\", \"requestInterval\": null, \"requestSQLContent\": {\"sql\": \"select * from  where\"}, \"requestContentType\": 0, \"requestIntervalUnit\": \"second\", \"requestParamsBodyType\": \"none\"}, \"chartConfig\": {\"key\": \"TableScrollBoard\", \"image\": \"table_scrollboard.png\", \"title\": \"轮播列表\", \"conKey\": \"VCTableScrollBoard\", \"package\": \"Tables\", \"category\": \"Tables\", \"chartKey\": \"VTableScrollBoard\", \"chartFrame\": \"common\", \"categoryName\": \"表格\"}}], \"editCanvasConfig\": {\"skewX\": 0, \"skewY\": 0, \"width\": 1920, \"height\": 1080, \"opacity\": 1, \"rotateX\": 0, \"rotateY\": 0, \"rotateZ\": 0, \"contrast\": 1, \"saturate\": 1, \"blendMode\": \"normal\", \"hueRotate\": 0, \"background\": null, \"brightness\": 1, \"filterShow\": false, \"projectName\": \"2e39e51rkf9c00\", \"selectColor\": false, \"backgroundImage\": \"http://localhost:9000/board-gov-dashboard-buck/dashboard-charts-snapshot/27_index_background.png?time=1716461589619\", \"chartThemeColor\": \"dark\", \"previewScaleType\": \"fit\", \"chartThemeSetting\": {\"grid\": {\"top\": \"60\", \"left\": \"10%\", \"show\": false, \"right\": \"10%\", \"bottom\": \"60\"}, \"title\": {\"show\": true, \"textStyle\": {\"color\": \"#BFBFBF\", \"fontSize\": 18}, \"subtextStyle\": {\"color\": \"#A2A2A2\", \"fontSize\": 14}}, \"xAxis\": {\"name\": \"\", \"show\": true, \"inverse\": false, \"nameGap\": 15, \"axisLine\": {\"show\": true, \"onZero\": true, \"lineStyle\": {\"color\": \"#B9B8CE\", \"width\": 1}}, \"axisTick\": {\"show\": true, \"length\": 5}, \"position\": \"bottom\", \"axisLabel\": {\"show\": true, \"color\": \"#B9B8CE\", \"rotate\": 0, \"fontSize\": 12}, \"splitLine\": {\"show\": false, \"lineStyle\": {\"type\": \"solid\", \"color\": \"#484753\", \"width\": 1}}, \"nameTextStyle\": {\"color\": \"#B9B8CE\", \"fontSize\": 12}}, \"yAxis\": {\"name\": \"\", \"show\": true, \"inverse\": false, \"nameGap\": 15, \"axisLine\": {\"show\": true, \"onZero\": true, \"lineStyle\": {\"color\": \"#B9B8CE\", \"width\": 1}}, \"axisTick\": {\"show\": true, \"length\": 5}, \"position\": \"left\", \"axisLabel\": {\"show\": true, \"color\": \"#B9B8CE\", \"rotate\": 0, \"fontSize\": 12}, \"splitLine\": {\"show\": true, \"lineStyle\": {\"type\": \"solid\", \"color\": \"#484753\", \"width\": 1}}, \"nameTextStyle\": {\"color\": \"#B9B8CE\", \"fontSize\": 12}}, \"legend\": {\"x\": \"center\", \"y\": \"top\", \"icon\": \"circle\", \"show\": true, \"type\": \"scroll\", \"orient\": \"horizontal\", \"itemWidth\": 15, \"textStyle\": {\"color\": \"#B9B8CE\", \"fontSize\": 18}, \"itemHeight\": 15, \"pageTextStyle\": {\"color\": \"#B9B8CE\"}}, \"dataset\": null, \"renderer\": \"svg\"}, \"chartCustomThemeColorInfo\": null}, \"requestGlobalConfig\": {\"requestParams\": {\"Body\": {\"xml\": \"\", \"json\": \"\", \"form-data\": {}, \"x-www-form-urlencoded\": {}}, \"Header\": {}, \"Params\": {}}, \"requestDataPond\": [{\"dataPondId\": \"53x9flw08yw000\", \"dataPondName\": \"53x9flw08yw000\", \"dataPondRequestConfig\": {\"requestUrl\": \"/test\", \"requestParams\": {\"Body\": {\"xml\": \"\", \"json\": \"\", \"form-data\": {}, \"x-www-form-urlencoded\": {}}, \"Header\": {}, \"Params\": {\"data1\": \"222\"}}, \"requestDataType\": 2, \"requestHttpType\": \"get\", \"requestInterval\": null, \"requestSQLContent\": {\"sql\": \"select * from  where\"}, \"requestContentType\": 0, \"requestIntervalUnit\": \"second\", \"requestParamsBodyType\": \"none\"}}, {\"dataPondId\": \"4269vezypgy000\", \"dataPondName\": \"4269vezypgy000\", \"dataPondRequestConfig\": {\"requestUrl\": \"artifact/getEcharts\", \"requestParams\": {\"Body\": {\"xml\": \"\", \"json\": \"\", \"form-data\": {}, \"x-www-form-urlencoded\": {}}, \"Header\": {}, \"Params\": {}}, \"requestDataType\": 2, \"requestHttpType\": \"get\", \"requestInterval\": 8, \"requestSQLContent\": {\"sql\": \"select * from  where\"}, \"requestContentType\": 0, \"requestIntervalUnit\": \"second\", \"requestParamsBodyType\": \"none\"}}], \"requestInterval\": 30, \"requestOriginUrl\": \"http://localhost:3000/dashboard\", \"requestIntervalUnit\": \"second\"}}', 27, NULL, '0', NULL, NULL, '2024-05-23 18:53:12', '2024-07-02 10:39:09', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `biz_obj_statistics_data` VALUES (31, 1, 'year_visitors_number_2024', 16.00, NULL, 'SPACE_SYS_ADMIN', '2024-07-09 11:04:23', 'SPACE_SYS_ADMIN', '2024-07-09 13:47:57');
INSERT INTO `biz_obj_statistics_data` VALUES (32, 8, '当前Api查询结果数据数量', 47.00, NULL, 'SPACE_SYS_ADMIN', '2024-07-11 10:50:44', NULL, '2024-07-11 10:50:44');

-- ----------------------------
-- Table structure for biz_project_file
-- ----------------------------
DROP TABLE IF EXISTS `biz_project_file`;
CREATE TABLE `biz_project_file`  (
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '主键id',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `project_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件项目编码',
  `parent_file_uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '父文件夹ID',
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件名称',
  `file_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件url',
  `file_type` int NULL DEFAULT NULL COMMENT '文件类型 1：文件夹 2：PDF文件 ',
  `file_size` decimal(10, 2) NULL DEFAULT NULL COMMENT '文件大小',
  `share_state` int NULL DEFAULT NULL COMMENT '共享状态',
  `uploader` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '上传人员',
  `extend` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '扩展信息',
  `create_by` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `fk_domain` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '所属域',
  `flag` int NULL DEFAULT 0 COMMENT '状态标记',
  `fk_group` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '所属部门',
  `del_flag` int NULL DEFAULT 0 COMMENT '逻辑删除标记',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '资源文件描述',
  PRIMARY KEY (`uri`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '客户管理-文件管理' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of biz_project_file
-- ----------------------------

-- ----------------------------
-- Table structure for biz_store_obj_details
-- ----------------------------
DROP TABLE IF EXISTS `biz_store_obj_details`;
CREATE TABLE `biz_store_obj_details`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '所属租户',
  `store_obj_type` int NULL DEFAULT NULL COMMENT '业务存储对象类型(1-GoView,2-流程引擎,3-VForm)',
  `store_obj_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务存储对象名称',
  `obj_unique_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务存储对象唯一ID',
  `obj_raw_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务存储对象原始编码',
  `obj_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '业务存储对象内容',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标识',
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of biz_store_obj_details
-- ----------------------------

-- ----------------------------
-- Table structure for cfg_biz_obj_statistics
-- ----------------------------
DROP TABLE IF EXISTS `cfg_biz_obj_statistics`;
CREATE TABLE `cfg_biz_obj_statistics`  (
  `id` bigint NOT NULL COMMENT '业务统计配置ID',
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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `cfg_biz_obj_statistics` VALUES (18, 1, 5, 'border_port_exit_entry_visitors_number', '当日每小时出入境人员', 1, NULL, '0', 'sys', '2024-05-21 17:09:37', 'sys', '2024-05-21 17:09:39');
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

-- ----------------------------
-- Table structure for cfg_board_audio
-- ----------------------------
DROP TABLE IF EXISTS `cfg_board_audio`;
CREATE TABLE `cfg_board_audio`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '音响ID',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `audio_no` int NULL DEFAULT NULL COMMENT '音响编号',
  `audio_ip` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '音响IP地址',
  `audio_volume` int NULL DEFAULT NULL COMMENT '音响音量',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cfg_board_audio
-- ----------------------------
INSERT INTO `cfg_board_audio` VALUES (2, NULL, 1, 3, NULL, 50, NULL);
INSERT INTO `cfg_board_audio` VALUES (3, NULL, 1, 1, NULL, 100, NULL);
INSERT INTO `cfg_board_audio` VALUES (4, NULL, 1, 2, NULL, 20, NULL);

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
-- Table structure for meta_dashboard_artifact
-- ----------------------------
DROP TABLE IF EXISTS `meta_dashboard_artifact`;
CREATE TABLE `meta_dashboard_artifact`  (
  `id` bigint NOT NULL COMMENT '大屏ID',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `artifact_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '大屏名称',
  `state` int NULL DEFAULT NULL,
  `index_img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `position` int NULL DEFAULT NULL,
  `priority` int NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '修改人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '大屏信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meta_dashboard_artifact
-- ----------------------------
INSERT INTO `meta_dashboard_artifact` VALUES (27, NULL, 1, '2e39e51rkf9c00', 1, '/dashboard-charts-snapshot/27_index_preview.png', NULL, NULL, NULL, '0', NULL, NULL, '2024-05-23 18:53:01', '2024-05-29 11:44:16');

-- ----------------------------
-- Table structure for rpt_board_site_statistics
-- ----------------------------
DROP TABLE IF EXISTS `rpt_board_site_statistics`;
CREATE TABLE `rpt_board_site_statistics`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '场地旅客统计记录ID',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '站点ID',
  `board_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '站点名称',
  `statistic_start_time` datetime NULL DEFAULT NULL COMMENT '统计开始时间',
  `statistic_end_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '统计结束时间',
  `site_inner_visitor_num` int NULL DEFAULT NULL COMMENT '场地内旅客数量',
  `site_outer_visitor_num` int NULL DEFAULT NULL COMMENT '场地外旅客数量',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '场地旅客统计数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rpt_board_site_statistics
-- ----------------------------

-- ----------------------------
-- Table structure for sys_application
-- ----------------------------
DROP TABLE IF EXISTS `sys_application`;
CREATE TABLE `sys_application`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '应用ID',
  `version` bigint NULL DEFAULT NULL COMMENT '乐观锁标识',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `app_type` int NULL DEFAULT NULL COMMENT '应用类型(1-内部应用,2-外部应用,3-第三方应用)',
  `app_name` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用名称',
  `app_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '应用编码',
  `app_key` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用Key',
  `app_encrypt_password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '应用加密密码(32位)',
  `app_secret` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用密钥',
  `callback_url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回调URL',
  `index_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '主页URL',
  `ip_white_list` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'IP白名单',
  `logo_url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'logo url',
  `token_expire_duration` int NULL DEFAULT 1 COMMENT 'Token过期时长(天)',
  `status` int NULL DEFAULT NULL COMMENT '应用状态(1-启用,2-禁用)',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_application
-- ----------------------------
INSERT INTO `sys_application` VALUES (1, NULL, 1, 1, '后台管理系统', '1', 'space001', NULL, 'space001', NULL, NULL, NULL, NULL, 1, 1, '0', NULL, ' sys', '2024-05-10 10:26:54', '  sys', '2024-05-10 10:27:13');
INSERT INTO `sys_application` VALUES (2, NULL, 1, 1, '客户端demo2', '1', 'clientdemo2', 'MEqLCnG2Q0If12345671lP46uP4BHsiv', 'clientdemo2', 'http://192.168.1.116:8992/demo2/callback', 'http://192.168.1.116:8992/demo2/index', NULL, NULL, 1, 1, '0', NULL, ' sys', '2024-05-10 10:27:26', ' sys', '2024-05-10 10:27:28');
INSERT INTO `sys_application` VALUES (3, NULL, 1, 1, '客户端demo4', '1', 'clientdemo4', 'MEqLCnG2Q0If12345671lP46uP4BHsiv', 'clientdemo4', 'http://192.168.1.116:8994/demo4/callback', 'http://192.168.1.116:8994/demo4/index', NULL, NULL, 1, 1, '0', NULL, ' sys', '2024-05-10 10:33:59', ' sys', '2024-05-10 10:34:03');
INSERT INTO `sys_application` VALUES (4, NULL, 1, 1, 'test', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '1', NULL, ' ', NULL, ' ', NULL);
INSERT INTO `sys_application` VALUES (5, NULL, 1, 2, '口岸态势总览平台', '1', '口岸态势总览平台1716278611969', 'a3c97427bbb0eba53067e939eafbc95c', 'IZ7xxPZtMfEwCJ51cnEqCV+DOR/4B4FcVGOTNR0CAW3JQb0AsH6OrlE2YSpiQwOI', 'http://localhost:8082/boardpass', 'http://localhost:8082/boardpass', NULL, NULL, 0, 1, '0', '口岸态势总览平台', 'admin', '2024-05-21 16:03:32', ' ', '2024-05-21 16:03:32');
INSERT INTO `sys_application` VALUES (6, NULL, 1, 2, '口岸一体化智慧通关治理平台', '1', '口岸一体化智慧通关治理平台1716278624154', 'a3c97427bbb0eba53067e939eafbc95c', 'NbRShnkCzy/VgLb8JNbPxz4G9wH3m1P+0J13Xi/WFia2CGrDmOYAdg5HHgRuru1OEPpGu1LO1mBMY9XhLKgCwg==', NULL, NULL, NULL, NULL, 0, 0, '0', '口岸一体化智慧通关治理平台', 'admin', '2024-05-21 16:03:44', ' ', '2024-05-21 16:03:44');
INSERT INTO `sys_application` VALUES (7, NULL, 1, 2, '出入境案事件治理平台', '1', '出入境案事件治理平台1716278637201', 'a3c97427bbb0eba53067e939eafbc95c', 'F5WxIztPVGtPriQuhc/A2M0UQ1l3biUkX4G8xzvh3JyTxpxqv8Gt6e0fG+z1UuLg', NULL, NULL, NULL, NULL, 0, 0, '0', '出入境案事件治理平台', 'admin', '2024-05-21 16:03:57', ' ', '2024-05-21 16:03:57');
INSERT INTO `sys_application` VALUES (8, NULL, 1, 2, '执勤装备治理平台', '1', '执勤装备治理平台1716278647529', 'a3c97427bbb0eba53067e939eafbc95c', 'IwH552MRaNn1Hk5bEgqmD/YIcatPcztOOWGKW5xRvLXfSrZhrNcmdW8/kOMlWZ05', NULL, NULL, NULL, NULL, 0, 0, '0', '执勤装备治理平台', 'admin', '2024-05-21 16:04:08', ' ', '2024-05-21 16:04:08');
INSERT INTO `sys_application` VALUES (9, NULL, 1, 2, '视频点调应用系统', '1', '视频点调应用系统1716278657587', 'a3c97427bbb0eba53067e939eafbc95c', 't+VG5Z06jNCGlBHaos0R8ZFQyuKG5GFFGvqhZRw6Fe0wi3O1zUmyvyfKJwZdR105', NULL, NULL, NULL, NULL, 0, 0, '0', '视频点调应用系统', 'admin', '2024-05-21 16:04:18', ' ', '2024-05-21 16:04:18');
INSERT INTO `sys_application` VALUES (10, NULL, 1, 2, '航司治理平台', '1', '航司治理平台1716278666748', 'a3c97427bbb0eba53067e939eafbc95c', '0Y0VdZnG6A12L6i90iej1Bv9oC+x4RkEXSGx6XtmMAU=', NULL, NULL, NULL, NULL, 0, 0, '0', '航司治理平台', 'admin', '2024-05-21 16:04:27', ' ', '2024-05-21 16:04:27');
INSERT INTO `sys_application` VALUES (11, NULL, 1, 2, '执勤质量治理平台', '1', '执勤质量治理平台1716278675040', 'a3c97427bbb0eba53067e939eafbc95c', 'xrCwAOIL9GTO+d6tEP17yvYIcatPcztOOWGKW5xRvLV6L5XuIS46KSC3ECN7Vjhp', NULL, NULL, NULL, NULL, 0, 0, '0', '执勤质量治理平台', 'admin', '2024-05-21 16:04:35', ' ', '2024-05-21 16:04:35');
INSERT INTO `sys_application` VALUES (12, NULL, 1, 2, '队伍能力管理平台', '1', '队伍能力管理平台1716278683435', 'a3c97427bbb0eba53067e939eafbc95c', '46kyar3o2v8x8vEANqMrrfYIcatPcztOOWGKW5xRvLUwoOGIMYY0QYi/YWMGZxtO', NULL, NULL, NULL, NULL, 0, 0, '0', '队伍能力管理平台', 'admin', '2024-05-21 16:04:43', ' ', '2024-05-21 16:04:43');
INSERT INTO `sys_application` VALUES (13, NULL, 1, 2, '综合实战实训平台', '1', '综合实战实训平台1716278723647', 'a3c97427bbb0eba53067e939eafbc95c', '+nOHbQlRTXXsBATzrb0Xnp326MDwqwUvxotPfEbs3HQbZVZQPP2R/SKJxJhKPH0i', NULL, NULL, NULL, NULL, 0, 0, '0', '综合实战实训平台', 'admin', '2024-05-21 16:05:24', ' ', '2024-05-21 16:05:24');
INSERT INTO `sys_application` VALUES (14, NULL, 1, 2, '大数据中心', 'DSJ01', '大数据中心1718350092754', 'a3c97427bbb0eba53067e939eafbc95c', '7MorW5Hp6dbKhc1wL0EZgMhetr7tU9mN7obh5u1nwjQ=', NULL, NULL, NULL, NULL, 0, 0, '0', '提供梅沙数据', 'admin', '2024-06-14 15:28:13', ' ', '2024-06-14 15:28:13');
INSERT INTO `sys_application` VALUES (15, NULL, 1, 2, '测试', 'TEST01', '测试1718959439644', 'a3c97427bbb0eba53067e939eafbc95c', 'B94B9PKCc7FGphpql+uZRn481B+nB2P5xRdqmuqHgMo=', 'http://localhost:8082/boardpass', 'http://localhost:8082/boardpass', 'test', 'test', 0, 0, '0', '测试', 'admin', '2024-06-21 16:44:00', ' ', '2024-06-21 16:44:00');
INSERT INTO `sys_application` VALUES (16, NULL, 1, 1, 'Test应用名称', 'Test应用编码', 'c0ec68af9658f3f2e0774c409d4a7fcf', 'a3c97427bbb0eba53067e939eafbc95c', '0cwpVPEmxRBDVBKreMdKk04IzibVI/onX18w0LwHIaav9XnjC7STBSu4SIh4WuHv', NULL, 'Test回调URL', 'TestIP白名单', 'Test logo URL', 0, 1, '0', 'Test应用描述', 'admin', '2024-06-21 17:21:08', 'admin', '2024-06-21 17:23:03');

-- ----------------------------
-- Table structure for sys_audit_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_audit_log`;
CREATE TABLE `sys_audit_log`  (
  `id` bigint NOT NULL COMMENT '主键',
  `audit_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '审计名称',
  `audit_field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字段名称',
  `before_val` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '变更前值',
  `after_val` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '变更后值',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `create_time` datetime NOT NULL COMMENT '操作时间',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '删除标记',
  `tenant_id` bigint NOT NULL COMMENT '租户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '审计记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_audit_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `sort_order` int NOT NULL DEFAULT 0 COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `parent_id` bigint NULL DEFAULT NULL COMMENT '父级部门ID',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '部门描述',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '启停用状态 0停用 1启用',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门管理' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (1, '总部', 1, 'admin', 'admin', '2023-04-03 13:04:47', '2023-04-03 13:07:49', '0', 0, 1, NULL, '1');
INSERT INTO `sys_dept` VALUES (2, '分部', 2, 'admin', 'admin', '2023-04-03 13:04:47', '2023-04-03 13:04:47', '0', 1, 1, NULL, '1');

-- ----------------------------
-- Table structure for sys_dept_manager
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept_manager`;
CREATE TABLE `sys_dept_manager`  (
  `dept_id` bigint NOT NULL COMMENT '部门id',
  `manager_id` bigint NOT NULL COMMENT '管理员id'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept_manager
-- ----------------------------
INSERT INTO `sys_dept_manager` VALUES (0, 1);
INSERT INTO `sys_dept_manager` VALUES (1, 1);
INSERT INTO `sys_dept_manager` VALUES (2, 1);

-- ----------------------------
-- Table structure for sys_dept_relation
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept_relation`;
CREATE TABLE `sys_dept_relation`  (
  `ancestor` bigint NOT NULL COMMENT '祖先节点',
  `descendant` bigint NOT NULL COMMENT '后代节点',
  PRIMARY KEY (`ancestor`, `descendant`) USING BTREE,
  INDEX `idx1`(`ancestor`) USING BTREE,
  INDEX `idx2`(`descendant`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept_relation
-- ----------------------------
INSERT INTO `sys_dept_relation` VALUES (0, 0);
INSERT INTO `sys_dept_relation` VALUES (0, 1);
INSERT INTO `sys_dept_relation` VALUES (0, 2);
INSERT INTO `sys_dept_relation` VALUES (1, 1);
INSERT INTO `sys_dept_relation` VALUES (1, 2);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` bigint NOT NULL COMMENT '编号',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典类型',
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `system_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '系统标志',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '所属租户',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_dict_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES (1, 'log_type', '日志类型', ' ', ' ', '2019-03-19 11:06:44', '2019-03-19 11:06:44', '异常、正常', '1', '0', 1);
INSERT INTO `sys_dict` VALUES (2, 'job_type', '定时任务类型', ' ', ' ', '2019-03-19 11:22:21', '2019-03-19 11:22:21', 'quartz', '1', '0', 1);
INSERT INTO `sys_dict` VALUES (3, 'job_status', '定时任务状态', ' ', ' ', '2019-03-19 11:24:57', '2019-03-19 11:24:57', '发布状态、运行状态', '1', '0', 1);
INSERT INTO `sys_dict` VALUES (4, 'job_execute_status', '定时任务执行状态', ' ', ' ', '2019-03-19 11:26:15', '2019-03-19 11:26:15', '正常、异常', '1', '0', 1);
INSERT INTO `sys_dict` VALUES (5, 'misfire_policy', '定时任务错失执行策略', ' ', ' ', '2019-03-19 11:27:19', '2019-03-19 11:27:19', '周期', '1', '0', 1);

-- ----------------------------
-- Table structure for sys_dict_item
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_item`;
CREATE TABLE `sys_dict_item`  (
  `id` bigint NOT NULL COMMENT '编号',
  `dict_id` bigint NOT NULL COMMENT '字典ID',
  `item_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典项值',
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典项名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典类型',
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典项描述',
  `sort_order` int NOT NULL DEFAULT 0 COMMENT '排序（升序）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '所属租户',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_dict_value`(`item_value`) USING BTREE,
  INDEX `sys_dict_label`(`label`) USING BTREE,
  INDEX `sys_dict_item_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典项' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_item
-- ----------------------------
INSERT INTO `sys_dict_item` VALUES (1, 1, '9', '异常', 'log_type', '日志异常', 1, ' ', ' ', '2019-03-19 11:08:59', '2019-03-25 12:49:13', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (2, 1, '0', '正常', 'log_type', '日志正常', 0, ' ', ' ', '2019-03-19 11:09:17', '2019-03-25 12:49:18', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (3, 2, '1', 'java类', 'job_type', 'java类', 1, ' ', ' ', '2019-03-19 11:22:37', '2019-03-25 12:49:36', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (4, 2, '2', 'spring bean', 'job_type', 'spring bean容器实例', 2, ' ', ' ', '2019-03-19 11:23:05', '2019-03-25 12:49:36', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (5, 2, '9', '其他', 'job_type', '其他类型', 9, ' ', ' ', '2019-03-19 11:23:31', '2019-03-25 12:49:36', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (6, 2, '3', 'Rest 调用', 'job_type', 'Rest 调用', 3, ' ', ' ', '2019-03-19 11:23:57', '2019-03-25 12:49:36', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (7, 2, '4', 'jar', 'job_type', 'jar类型', 4, ' ', ' ', '2019-03-19 11:24:20', '2019-03-25 12:49:36', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (8, 3, '1', '未发布', 'job_status', '未发布', 1, ' ', ' ', '2019-03-19 11:25:18', '2019-03-25 12:49:36', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (9, 3, '2', '运行中', 'job_status', '运行中', 2, ' ', ' ', '2019-03-19 11:25:31', '2019-03-25 12:49:36', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (10, 3, '3', '暂停', 'job_status', '暂停', 3, ' ', ' ', '2019-03-19 11:25:42', '2019-03-25 12:49:36', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (11, 4, '0', '正常', 'job_execute_status', '正常', 0, ' ', ' ', '2019-03-19 11:26:27', '2019-03-25 12:49:36', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (12, 4, '1', '异常', 'job_execute_status', '异常', 1, ' ', ' ', '2019-03-19 11:26:41', '2019-03-25 12:49:36', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (13, 5, '1', '错失周期立即执行', 'misfire_policy', '错失周期立即执行', 1, ' ', ' ', '2019-03-19 11:27:45', '2019-03-25 12:49:36', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (14, 5, '2', '错失周期执行一次', 'misfire_policy', '错失周期执行一次', 2, ' ', ' ', '2019-03-19 11:27:57', '2019-03-25 12:49:36', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (15, 5, '3', '下周期执行', 'misfire_policy', '下周期执行', 3, ' ', ' ', '2019-03-19 11:28:08', '2019-03-25 12:49:36', '', '0', 1);

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file`  (
  `id` bigint NOT NULL COMMENT '编号',
  `group_id` bigint NULL DEFAULT NULL COMMENT '文件组',
  `file_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件名',
  `bucket_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件存储桶名称',
  `original` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '原始文件名',
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件类型',
  `file_size` bigint NULL DEFAULT NULL COMMENT '文件大小',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '上传时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '所属租户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文件管理表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_file
-- ----------------------------

-- ----------------------------
-- Table structure for sys_file_group
-- ----------------------------
DROP TABLE IF EXISTS `sys_file_group`;
CREATE TABLE `sys_file_group`  (
  `id` bigint UNSIGNED NOT NULL COMMENT '主键ID',
  `type` tinyint UNSIGNED NULL DEFAULT 10 COMMENT '类型: [10=图片, 20=视频]',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '分类名称',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标记',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户',
  `pid` bigint NULL DEFAULT NULL COMMENT '父ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文件分类表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_file_group
-- ----------------------------

-- ----------------------------
-- Table structure for sys_i18n
-- ----------------------------
DROP TABLE IF EXISTS `sys_i18n`;
CREATE TABLE `sys_i18n`  (
  `id` bigint NOT NULL COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'name',
  `zh_cn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '中文',
  `en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '英文',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统表-国际化' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_i18n
-- ----------------------------
INSERT INTO `sys_i18n` VALUES (1, 'router.permissionManagement', '权限管理', 'Permission Management', '', '2023-02-14 02:03:59', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (2, 'router.userManagement', '用户管理', 'User Management', 'admin', '2023-02-14 10:39:08', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (3, 'router.menuManagement', '菜单管理', 'Menu Management', 'admin', '2023-02-15 23:14:39', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (4, 'router.roleManagement', '角色管理', 'Role Management', 'admin', '2023-02-15 23:15:51', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (5, 'router.departmentManagement', '部门管理', 'Department Management', 'admin', '2023-02-15 23:16:52', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (6, 'router.tenantManagement', '租户管理', 'Tenant Management', 'admin', '2023-02-24 10:08:29', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (7, 'router.postManagement', '岗位管理', 'Post Management', 'admin', '2023-02-24 10:12:58', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (8, 'router.systemManagement', '系统管理', 'System Management', 'admin', '2023-02-24 10:13:34', 'admin', '2023-02-24 10:58:30', '0');
INSERT INTO `sys_i18n` VALUES (9, 'router.operationLog', '操作日志', 'Operation Log', 'admin', '2023-02-24 10:14:47', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (10, 'router.dictManagement', '字典管理', 'Dictionary Management', 'admin', '2023-02-24 10:16:21', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (11, 'router.parameterManagement', '参数管理', 'Parameter Management', 'admin', '2023-02-24 10:17:04', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (12, 'router.codeGeneration', '代码生成', 'Code Generation', 'admin', '2023-02-24 10:19:16', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (13, 'router.terminalManagement', '终端管理', 'Terminal Management', 'admin', '2023-02-24 10:21:45', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (14, 'router.keyManagement', '密钥管理', 'Key Management', 'admin', '2023-02-24 10:22:52', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (15, 'router.tokenManagement', '令牌管理', 'Token Management', 'admin', '2023-02-24 10:23:22', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (16, 'router.quartzManagement', 'Quartz管理', 'Quartz Management', 'admin', '2023-02-24 10:24:32', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (17, 'router.metadataManagement', '元数据管理', 'Metadata Management', 'admin', '2023-02-24 10:25:11', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (18, 'router.documentExtension', '文档扩展', 'Document Extension', 'admin', '2023-02-24 10:27:23', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (19, 'router.fileManagement', '文件管理', 'File Management', 'admin', '2023-02-24 10:28:44', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (20, 'router.platformDevelopment', '开发平台', 'Platform Development', 'admin', '2023-02-24 10:29:28', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (21, 'router.dataSourceManagement', '数据源管理', 'Data Source Management', 'admin', '2023-02-24 10:30:33', 'admin', '2023-03-06 14:33:20', '0');
INSERT INTO `sys_i18n` VALUES (22, 'router.formDesign', '表单设计', 'Form Design', 'admin', '2023-02-24 10:31:33', 'admin', '2023-03-06 14:33:28', '0');
INSERT INTO `sys_i18n` VALUES (23, 'router.appManagement', 'APP管理', 'App Management', 'admin', '2023-02-24 10:33:22', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (24, 'router.customerManagement', '客户管理', 'Customer Management', 'admin', '2023-02-24 10:35:30', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (25, 'router.appRole', 'APP角色', 'App Role', 'admin', '2023-02-24 10:36:17', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (26, 'router.appPermission', 'APP权限', 'App Permission', 'admin', '2023-02-24 10:36:59', 'admin', '2023-02-24 10:37:47', '0');
INSERT INTO `sys_i18n` VALUES (27, 'router.appKey', 'APP秘钥', 'App Key', 'admin', '2023-02-24 10:36:59', 'admin', '2023-02-24 10:40:27', '0');
INSERT INTO `sys_i18n` VALUES (28, 'router.internationalizationManagement', '国际化管理', 'Internationalization Management', 'admin', '2023-02-24 10:36:59', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (29, 'router.auditLog', '审计日志', 'Audit Log', 'admin', '2023-02-24 10:36:59', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (30, 'router.systemMonitoring', '系统监控', 'System Monitoring', 'admin', '2023-02-24 10:36:59', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (31, 'router.generatePages', '生成页面', 'Generate Pages', 'admin', '2023-02-24 10:44:04', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (32, 'router.templateManagement', '模板管理', 'Template Management', 'admin', '2023-02-24 10:44:31', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (33, 'router.templateGroup', '模板分组', 'Template Group', 'admin', '2023-02-24 10:45:10', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (34, 'router.fieldManagement', '字段管理', 'Field Management', 'admin', '2023-02-24 10:46:04', 'admin', '2023-03-07 14:27:48', '0');
INSERT INTO `sys_i18n` VALUES (35, 'router.wechatPlatform', '公众号平台', 'WeChat Platform', 'admin', '2023-02-24 10:48:51', 'admin', '2023-02-24 11:03:41', '0');
INSERT INTO `sys_i18n` VALUES (36, 'router.accountManagement', '账号管理', 'Account Management', 'admin', '2023-02-24 10:13:34', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (37, 'router.menuSettings', '菜单设置', 'Menu Settings', 'admin', '2023-02-24 14:02:22', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (38, 'router.fanManagement', '粉丝管理', 'Fan Management', 'admin', '2023-02-24 14:03:44', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (39, 'router.messageManagement', '消息管理', 'Message Management', 'admin', '2023-02-24 14:03:45', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (40, 'router.paymentSystem', '支付系统', 'Payment System', 'admin', '2023-02-24 14:03:46', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (41, 'router.checkoutCounter', '收银台', 'Checkout Counter', 'admin', '2023-02-24 14:03:47', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (42, 'router.mediaManagement', '素材管理', 'Media Management', 'admin', '2023-02-24 14:03:48', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (43, 'router.paymentChannel', '支付渠道', 'Payment Channel', 'admin', '2023-02-24 14:03:49', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (44, 'router.productOrder', '商品订单', 'Product Order', 'admin', '2023-02-24 14:03:50', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (45, 'router.notificationRecord', '通知记录', 'Notification Record', 'admin', '2023-02-24 14:03:51', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (46, 'router.refundOrder', '退款订单', 'Refund Order', 'admin', '2023-02-24 14:03:52', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (47, 'router.paymentOrder', '支付订单', 'Payment Order', 'admin', '2023-02-24 14:03:53', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (48, 'router.autoReply', '自动回复', 'Auto Reply', 'admin', '2023-02-24 14:03:54', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (49, 'router.operationalData', '运营数据', 'Operational Data', 'admin', '2023-02-24 14:03:55', '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (50, 'router.logManagement', '日志管理', 'Log Management', 'admin', NULL, '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (51, 'router.collaborativeOffice', '协同办公', 'Collaborative Office', 'admin', NULL, '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (52, 'router.modelManagement', '模型管理', 'Model Management', 'admin', NULL, '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (53, 'router.modelDiagramView', '模型图查看', 'Model Diagram View', 'admin', NULL, '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (54, 'router.processManagement', '流程管理', 'Process Management', 'admin', NULL, '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (55, 'router.leaveWorkOrder', '请假工单', 'Leave Work Order', 'admin', NULL, '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (56, 'router.todoTask', '代办任务', 'Todo Task', 'admin', NULL, '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (57, 'router.tagManagement', '标签管理', 'Tag Management', 'admin', NULL, '', NULL, '0');
INSERT INTO `sys_i18n` VALUES (58, 'router.articleInformation\n', '文章资讯', 'Article Information', ' ', '2023-08-10 13:40:09', ' ', NULL, '0');
INSERT INTO `sys_i18n` VALUES (59, 'router.articleCategory', '文章分类', 'Article Category', ' ', '2023-08-10 13:40:48', ' ', NULL, '0');
INSERT INTO `sys_i18n` VALUES (60, 'router.interfaceSettings', '界面设置', 'Interface Settings', ' ', '2023-08-10 13:41:21', ' ', NULL, '0');
INSERT INTO `sys_i18n` VALUES (61, 'router.bottomNavigation\n', '底部导航', 'Bottom Navigation', ' ', '2023-08-10 13:41:54', ' ', NULL, '0');
INSERT INTO `sys_i18n` VALUES (62, 'router.cacheMonitoring\n', '缓存监控', 'Cache Monitoring', ' ', '2023-08-10 13:42:35', ' ', NULL, '0');
INSERT INTO `sys_i18n` VALUES (63, 'rotuer. initiateProcess', '发起流程', 'Initiate Process\n', ' ', '2023-08-10 13:44:23', ' ', NULL, '0');
INSERT INTO `sys_i18n` VALUES (64, 'router.taskManagement\n', '任务管理', 'Task Management', ' ', '2023-08-10 13:44:53', ' ', NULL, '0');
INSERT INTO `sys_i18n` VALUES (65, 'router.myInitiations', '我的发起', 'My Initiations', ' ', '2023-08-10 13:45:17', ' ', NULL, '0');
INSERT INTO `sys_i18n` VALUES (66, 'router.copiedtoMe\n', '抄送给我', 'Copied to Me', ' ', '2023-08-10 13:45:46', ' ', NULL, '0');
INSERT INTO `sys_i18n` VALUES (67, 'router.completedTasks\n', '我的已办', 'Completed Tasks', ' ', '2023-08-10 13:46:37', ' ', '2023-08-10 13:47:09', '0');
INSERT INTO `sys_i18n` VALUES (68, 'router.createFlow', '创建流程', 'Create Flow', ' ', '2023-08-10 13:46:37', ' ', '2023-08-10 13:47:09', '0');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` bigint NOT NULL COMMENT '编号',
  `log_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '日志类型',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日志标题',
  `service_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '服务ID',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remote_addr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '远程地址',
  `user_agent` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求URI',
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求方法',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '请求参数',
  `time` bigint NULL DEFAULT NULL COMMENT '执行时间',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志',
  `exception` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '异常信息',
  `tenant_id` bigint NULL DEFAULT 0 COMMENT '所属租户',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_log_request_uri`(`request_uri`) USING BTREE,
  INDEX `sys_log_type`(`log_type`) USING BTREE,
  INDEX `sys_log_create_date`(`create_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (1790553526336073729, '0', '登录成功', 'space001', 'admin', ' ', '2024-05-15 09:23:22', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/oauth2/token', 'POST', 'randomStr=%5BblockPuzzle%5D&code=%5BeJn43z0lyhTnWDnc+u7EN17zl1y3unPxb/vEf5gkNaZsTgN3Z18VnAsvPSEgXmUXljAWdaJD/As3Yybd1k7/VVk8dlj2wBlGORGx96A21qY=%5D&grant_type=%5Bpassword%5D&scope=%5Bserver%5D&username=%5Badmin%5D', 804, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1790555183417503745, '0', '登录成功', 'space001', 'admin', ' ', '2024-05-15 09:29:57', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/oauth2/token', 'POST', 'randomStr=%5BblockPuzzle%5D&code=%5BLxHegPGkqUsY6mAA0yzQX714aF5fLHIbgBmtZq52Tcux+/1yECuGt5Uf1GszTBf9DOXZ9yra3qKspWb+8TUu+ovf0bx1nMu8Beui6XD60EU=%5D&grant_type=%5Bpassword%5D&scope=%5Bserver%5D&username=%5Badmin%5D', 111, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1790555411361148929, '0', '登录成功', 'space001', 'admin', ' ', '2024-05-15 09:30:52', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/oauth2/token', 'POST', 'randomStr=%5BblockPuzzle%5D&code=%5Ba8vWKYzXkP0QWfckGSnn39FD3jJXWd5I5PS3Iy3zNJZJOov2bpn9M5UF4eCnt8/ZOQ+PdekbJ+l+H1NELSXP0xm7mX39HnACNuZf2iPQXl4=%5D&grant_type=%5Bpassword%5D&scope=%5Bserver%5D&username=%5Badmin%5D', 94, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1790556718176251906, '0', '登录成功', 'space001', 'admin', ' ', '2024-05-15 09:36:03', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/oauth2/token', 'POST', 'randomStr=%5BblockPuzzle%5D&code=%5Bid4kMCS7rCfNVGDR5DdpYB7Ooommh/f4J8ZOgKypqYHdwEqRU5dce8nD/KEFIWi4d5/+UAPrY72bnnC6GZ8lS0hjeCaLNQceHS4cc1E01Q0=%5D&grant_type=%5Bpassword%5D&scope=%5Bserver%5D&username=%5Badmin%5D', 89, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1790556776384802817, '0', '登录成功', 'space001', 'admin', ' ', '2024-05-15 09:36:17', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/oauth2/token', 'POST', 'randomStr=%5BblockPuzzle%5D&code=%5B4kRNkwGUGdE6S8GU6yhT8Fk6Br9VZKOzUMruKgioeTIp/t2/Id03g+QxouWo+HJ+C6pOIk2+tznvt6G1SQ0qisFcYKMYoiNWkep0fWbGHB4=%5D&grant_type=%5Bpassword%5D&scope=%5Bserver%5D&username=%5Badmin%5D', 92, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1790556896887156737, '0', '登录成功', 'space001', 'admin', ' ', '2024-05-15 09:36:46', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/oauth2/token', 'POST', 'randomStr=%5BblockPuzzle%5D&code=%5B9kN9ABm/Ozjwybl3x9fKuCtKXbqHA/p6DDe/DJmelVqHqnwG7bxNhdhz0Xr+IYtKwQp916hUUhHDF8IrjcrwQ/7mvY3Bc0yrcB+75kJSpFs=%5D&grant_type=%5Bpassword%5D&scope=%5Bserver%5D&username=%5Badmin%5D', 88, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1790558282668421121, '0', '登录成功', 'space001', 'admin', ' ', '2024-05-15 09:42:16', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/oauth2/token', 'POST', 'randomStr=%5BblockPuzzle%5D&code=%5BBQEGm+CuhWii93mR0Vdr9zsWKznhUKw/g0X2XLofaUK2EkhaNwgXpglrpTZz3in7SkpCFUGWyjHqyiaWxnm3StbMElmHb8deJVULmUDgJao=%5D&grant_type=%5Bpassword%5D&scope=%5Bserver%5D&username=%5Badmin%5D', 83, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1790566279570264065, '0', '登录成功', 'space001', 'admin', ' ', '2024-05-15 10:14:03', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/oauth2/token', 'POST', 'randomStr=%5BblockPuzzle%5D&code=%5B4beSN+dZ6dD5LCYQJ0fD67YgcV394vL/YZZ7xIkIvJCl1l0qAKW3SB3eH1Ppu7Ud5zT5A6ETSARqIqVV+5zuXg/m+zlIF8/CF6pxq89VEkg=%5D&grant_type=%5Bpassword%5D&scope=%5Bserver%5D&username=%5Badmin%5D', 127, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1790637264503836673, '0', '新增菜单', 'space001', 'admin', ' ', '2024-05-15 14:56:07', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/menu', 'POST', '[{\"menuId\":1790637263195213826,\"appId\":1,\"name\":\"test\",\"permission\":\"w\",\"parentId\":9000,\"icon\":\"\",\"path\":\"/test\",\"visible\":\"1\",\"sortOrder\":0,\"menuType\":\"0\",\"menuFormId\":null,\"menuCompUri\":\"wu\",\"keepAlive\":\"0\",\"embedded\":\"0\",\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":\"2024-05-15 14:56:06\",\"updateTime\":\"2024-05-15 14:56:06\",\"delFlag\":\"0\"}]', 19, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1790637421253365761, '0', '删除菜单', 'space001', 'admin', ' ', '2024-05-15 14:56:44', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/menu/1790637263195213826', 'DELETE', '[1790637263195213826]', 51, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1790663472587255809, '0', '新增菜单', 'space001', 'admin', ' ', '2024-05-15 16:40:15', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/menu', 'POST', '[{\"menuId\":1790663471656120322,\"appId\":2,\"name\":\"test\",\"permission\":\"test\",\"parentId\":1000,\"icon\":\"\",\"path\":\"/test\",\"visible\":\"1\",\"sortOrder\":2,\"menuType\":\"0\",\"menuFormId\":null,\"menuCompUri\":\"/test\",\"keepAlive\":\"0\",\"embedded\":\"0\",\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":\"2024-05-15 16:40:15\",\"updateTime\":\"2024-05-15 16:40:15\",\"delFlag\":\"0\"}]', 29, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1790668267435896833, '0', '更新角色菜单', 'space001', 'admin', ' ', '2024-05-15 16:59:19', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/role/menu', 'PUT', '[{\"roleId\":2,\"menuIds\":\"9000,9001,9002,9003,9004,9005,9006,9007,9008,9009,1100,1101,1102,1103,1104,1105,1200,1201,1202,1203,1300,1306,1307,1301,1302,1303,1304,1305,1400,1402,1401,1403,2001,1000\"}]', 47, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1790668348566319106, '0', '更新角色菜单', 'space001', 'admin', ' ', '2024-05-15 16:59:38', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/role/menu', 'PUT', '[{\"roleId\":2,\"menuIds\":\"9000,9001,9002,9003,9004,9005,9006,9007,9008,9009,1100,1101,1102,1103,1104,1105,1200,1201,1202,1203,1300,1306,1307,1301,1302,1303,1304,1305,1400,1402,1401,1403,2001,1000\"}]', 22, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1790668859298328577, '0', '更新角色菜单', 'space001', 'admin', ' ', '2024-05-15 17:01:40', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/role/menu', 'PUT', '[{\"roleId\":2,\"menuIds\":\"9000,9001,9002,9003,9004,9005,9006,9007,9008,9009,1100,1101,1102,1103,1104,1105,1200,1201,1202,1203,1790663471656120322,1300,1306,1307,1301,1302,1303,1304,1305,1400,1402,1401,1403,2001,1000\"}]', 36505, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1790668916475080706, '0', '更新角色菜单', 'space001', 'admin', ' ', '2024-05-15 17:01:53', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/role/menu', 'PUT', '[{\"roleId\":2,\"menuIds\":\"9000,9001,9002,9003,9004,9005,9006,9007,9008,9009,1100,1101,1102,1103,1104,1105,1200,1201,1202,1203,1790663471656120322,1300,1306,1307,1301,1302,1303,1304,1305,1400,1402,1401,1403,2001,1000\"}]', 17, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1790669149938429953, '0', '更新角色菜单', 'space001', 'admin', ' ', '2024-05-15 17:02:49', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/role/menu', 'PUT', '[{\"roleId\":2,\"menuIds\":\"9000,9001,9002,9003,9004,9005,9006,9007,9008,9009,1100,1101,1102,1103,1104,1105,9012,9013,1202,1203,1790663471656120322,1300,1306,1307,1301,1302,1303,1304,1305,1400,1402,1401,1403,2001,1000,9010,1200\"}]', 20, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1790684181363470338, '0', '添加应用', 'space001', 'admin', ' ', '2024-05-15 18:02:33', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/application/saveApp', 'POST', '[{\"appId\":null,\"version\":null,\"tenantId\":null,\"appName\":\"asd\",\"appKey\":null,\"appSecret\":null,\"appEncryptPassword\":null,\"callbackUrl\":null,\"indexUrl\":null,\"ipWhiteList\":null,\"logoUrl\":null,\"tokenExpireDuration\":0,\"status\":0,\"delFlag\":null,\"description\":\"asdf\",\"createBy\":null,\"updateBy\":null,\"createTime\":null,\"updateTime\":null}]', 287, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1790684760466829314, '0', '修改应用', 'space001', 'admin', ' ', '2024-05-15 18:04:51', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/application', 'PUT', '[{\"appId\":1790684181237641218,\"version\":null,\"tenantId\":null,\"appName\":\"asd\",\"appKey\":null,\"appSecret\":null,\"appEncryptPassword\":null,\"callbackUrl\":null,\"indexUrl\":null,\"ipWhiteList\":null,\"logoUrl\":null,\"tokenExpireDuration\":0,\"status\":0,\"delFlag\":null,\"description\":\"asdfasdfas\",\"createBy\":null,\"updateBy\":null,\"createTime\":null,\"updateTime\":null}]', 25, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1790684783795548162, '0', '修改应用', 'space001', 'admin', ' ', '2024-05-15 18:04:56', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/application', 'PUT', '[{\"appId\":1790684181237641218,\"version\":null,\"tenantId\":null,\"appName\":\"asds\",\"appKey\":null,\"appSecret\":null,\"appEncryptPassword\":null,\"callbackUrl\":null,\"indexUrl\":null,\"ipWhiteList\":null,\"logoUrl\":null,\"tokenExpireDuration\":0,\"status\":0,\"delFlag\":null,\"description\":null,\"createBy\":null,\"updateBy\":null,\"createTime\":null,\"updateTime\":null}]', 24, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1790690654898450434, '0', '添加角色', 'space001', 'admin', ' ', '2024-05-15 18:28:16', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/role', 'POST', '[{\"roleId\":null,\"roleName\":\"a\",\"roleDesc\":\"asdf\",\"status\":true}]', 48, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1790694825664016386, '0', '添加应用', 'space001', 'admin', ' ', '2024-05-15 18:44:51', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/application/saveApp', 'POST', '[{\"appId\":null,\"version\":null,\"tenantId\":null,\"appName\":\"sdfas\",\"appKey\":null,\"appSecret\":null,\"appEncryptPassword\":null,\"callbackUrl\":null,\"indexUrl\":null,\"ipWhiteList\":null,\"logoUrl\":null,\"tokenExpireDuration\":0,\"status\":0,\"delFlag\":null,\"description\":\"asdfasdf\",\"createBy\":null,\"updateBy\":null,\"createTime\":null,\"updateTime\":null}]', 191, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1790920470809620482, '0', '登录成功', 'space001', 'admin', ' ', '2024-05-16 09:41:29', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/oauth2/token', 'POST', 'randomStr=%5BblockPuzzle%5D&code=%5BnmI5g8Us4x3M7sV0W2E5OcPsHxzYmSdZsb2yTa/EVfVKNWBet5QHJD1QRupuxYE89cGgyJtK9DlOexutz9X53Ohc0gLFtxUFz0rpbycUb/s=%5D&grant_type=%5Bpassword%5D&scope=%5Bserver%5D&username=%5Badmin%5D', 780, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1790926310165786625, '0', '登录成功', 'space001', 'admin', ' ', '2024-05-16 10:04:41', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/oauth2/token', 'POST', 'randomStr=%5BblockPuzzle%5D&code=%5BJRTVatNOG5G63+1lR+GNVJCjJ8xtDX833sHB73F4f2hicgvM80VpHrFmaet0tcLyUuu0IG6TRqV5Y3rNG6r/CiC5RP+U38U6isy1J4m99TY=%5D&grant_type=%5Bpassword%5D&scope=%5Bserver%5D&username=%5Badmin%5D', 93, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1790947434912116737, '0', '新增菜单', 'space001', 'admin', ' ', '2024-05-16 11:28:37', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/menu', 'POST', '[{\"menuId\":1790947433351835649,\"appId\":3,\"name\":\"test01\",\"permission\":\"test\",\"parentId\":-1,\"icon\":\"\",\"path\":\"/test\",\"visible\":\"1\",\"sortOrder\":1,\"menuType\":\"0\",\"menuFormId\":null,\"menuCompUri\":\"/test\",\"keepAlive\":\"0\",\"embedded\":\"0\",\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":\"2024-05-16 11:28:36\",\"updateTime\":\"2024-05-16 11:28:36\",\"delFlag\":\"0\"}]', 33, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1790947694350790657, '0', '删除菜单', 'space001', 'admin', ' ', '2024-05-16 11:29:39', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/menu/1790947433351835649', 'DELETE', '[1790947433351835649]', 91, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1790947796956049409, '0', '新增菜单', 'space001', 'admin', ' ', '2024-05-16 11:30:04', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/menu', 'POST', '[{\"menuId\":1790947796893134849,\"appId\":1790684181237641218,\"name\":\"test\",\"permission\":\"test\",\"parentId\":-1,\"icon\":\"\",\"path\":\"test\",\"visible\":\"1\",\"sortOrder\":3,\"menuType\":\"0\",\"menuFormId\":null,\"menuCompUri\":\"test\",\"keepAlive\":\"0\",\"embedded\":\"0\",\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":\"2024-05-16 11:30:03\",\"updateTime\":\"2024-05-16 11:30:03\",\"delFlag\":\"0\"}]', 10, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1790947916191723522, '0', '更新菜单', 'space001', 'admin', ' ', '2024-05-16 11:30:32', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/menu', 'PUT', '[{\"menuId\":1790947796893134849,\"appId\":1790684181237641218,\"name\":\"test\",\"permission\":\"test\",\"parentId\":-1,\"icon\":null,\"path\":\"test\",\"visible\":\"1\",\"sortOrder\":2,\"menuType\":\"0\",\"menuFormId\":null,\"menuCompUri\":\"test\",\"keepAlive\":\"0\",\"embedded\":\"0\",\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":\"2024-05-16 11:30:04\",\"updateTime\":\"2024-05-16 11:30:32\",\"delFlag\":\"0\"}]', 21, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1791003331348742145, '0', '添加应用', 'space001', 'admin', ' ', '2024-05-16 15:10:44', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/application/saveApp', 'POST', '[{\"appId\":null,\"version\":null,\"tenantId\":null,\"appName\":\"test11\",\"appKey\":null,\"appSecret\":null,\"appEncryptPassword\":null,\"callbackUrl\":null,\"indexUrl\":null,\"ipWhiteList\":null,\"logoUrl\":null,\"tokenExpireDuration\":0,\"status\":0,\"delFlag\":null,\"description\":\"test\",\"createBy\":null,\"updateBy\":null,\"createTime\":null,\"updateTime\":null}]', 234, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1791005205208580097, '0', '添加应用', 'space001', 'admin', ' ', '2024-05-16 15:18:11', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/application/saveApp', 'POST', '[{\"appId\":null,\"version\":null,\"tenantId\":null,\"appName\":\"test1\",\"appKey\":null,\"appSecret\":null,\"appEncryptPassword\":null,\"callbackUrl\":null,\"indexUrl\":null,\"ipWhiteList\":null,\"logoUrl\":null,\"tokenExpireDuration\":0,\"status\":0,\"delFlag\":null,\"description\":\"test\",\"createBy\":null,\"updateBy\":null,\"createTime\":null,\"updateTime\":null}]', 412797, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1791008132476256257, '0', '添加角色', 'space001', 'admin', ' ', '2024-05-16 15:29:49', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/role', 'POST', '[{\"roleId\":null,\"roleName\":\"b\",\"roleDesc\":\"asdf\",\"status\":true}]', 27, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1791008161647640577, '0', '删除单个角色', 'space001', 'admin', ' ', '2024-05-16 15:29:56', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/role/1790690653786959874', 'DELETE', '[1790690653786959874]', 58, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1791008172678660097, '0', '删除单个角色', 'space001', 'admin', ' ', '2024-05-16 15:29:58', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/role/1791008132413341697', 'DELETE', '[1791008132413341697]', 26, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1791008681296740354, '0', '添加角色', 'space001', 'admin', ' ', '2024-05-16 15:32:00', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/role', 'POST', '[{\"roleId\":null,\"roleName\":\"a\",\"roleDesc\":\"asdf\",\"status\":true}]', 12, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1791008700183691266, '0', '添加角色', 'space001', 'admin', ' ', '2024-05-16 15:32:04', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/role', 'POST', '[{\"roleId\":null,\"roleName\":\"b\",\"roleDesc\":\"asdfasd\",\"status\":true}]', 18, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1791008980841349121, '0', '删除单个应用', 'space001', 'admin', ' ', '2024-05-16 15:33:11', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/application/1791005205128888321', 'DELETE', '[1791005205128888321]', 26, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1791049732287963137, '0', '登录成功', 'space001', 'admin', ' ', '2024-05-16 18:15:07', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/oauth2/token', 'POST', 'randomStr=%5BblockPuzzle%5D&code=%5BuwdEbQA+MfIrsoAwjv0rGp0iuL5jIEVYtbV/5xB/2JZOmdmAzCsOqhQnIoCa+z/0Cug0YL80Yon8zx7DSU2D3IYIuv5jj+ti3xE1dOBm47g=%5D&grant_type=%5Bpassword%5D&scope=%5Bserver%5D&username=%5Badmin%5D', 822, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1791050400604168193, '0', '登录成功', 'space001', 'admin', ' ', '2024-05-16 18:17:46', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/oauth2/token', 'POST', 'randomStr=%5BblockPuzzle%5D&code=%5BGO3Sz95KITQaGaKF9KqJLAiRLfl6E/KQhycVhKnC258LC/bgAKhrykIo7Hkvb1GNjwCLdoROtFI4zEGVJcXJak2XTDxyipV0hqYiQdUsDE4=%5D&grant_type=%5Bpassword%5D&scope=%5Bserver%5D&username=%5Badmin%5D', 91, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1791053232875028482, '0', '登录成功', 'space001', 'admin', ' ', '2024-05-16 18:29:02', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/oauth2/token', 'POST', 'randomStr=%5BblockPuzzle%5D&code=%5BT1psAUCKu5nqbKwe+0xy7qfBp0RJXDRaRdwc1C9xxYJZZVYA4oeOeyncDbWeMg56BanJ3pCHo8rgtoeGifTjx+m7pMy5BL0zazfUvRmb+OE=%5D&grant_type=%5Bpassword%5D&scope=%5Bserver%5D&username=%5Badmin%5D', 249, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1791054680761421826, '0', '登录成功', 'space001', 'admin', ' ', '2024-05-16 18:34:47', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/oauth2/token', 'POST', 'randomStr=%5BblockPuzzle%5D&code=%5BH9xeVPHOz0+q9aHnGhSBWpjtOECT87YiEaSJuYjSziwxQ69pcGA8XaEEPaWrMBtuU2EwRI03cK16z36tU2YILTSJJnkmHjYWlcQfqrN//C4=%5D&grant_type=%5Bpassword%5D&scope=%5Bserver%5D&username=%5Badmin%5D', 133, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1791055396796223489, '0', '登录成功', 'space001', 'admin', ' ', '2024-05-16 18:37:37', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/oauth2/token', 'POST', 'randomStr=%5BblockPuzzle%5D&code=%5BT4eeuYHkFXgZ+10wXqGkNaPHIvXbXYjgPI20m8loOpf/WI7k3+qoo+a65UvpDt1g1dmOQy4g3Ur+3zz96JDYBSxKzvRF4bSdCO7fLSA/3no=%5D&grant_type=%5Bpassword%5D&scope=%5Bserver%5D&username=%5Badmin%5D', 194, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1791056986127020033, '0', '删除单个角色', 'space001', 'admin', ' ', '2024-05-16 18:43:56', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/role/1791008700053667841', 'DELETE', '[1791008700053667841]', 77, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1791060183696609282, '0', '添加应用', 'space001', 'admin', ' ', '2024-05-16 18:56:39', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/application/saveApp', 'POST', '[{\"appId\":null,\"version\":null,\"tenantId\":null,\"appName\":\"fang\",\"appKey\":null,\"appSecret\":null,\"appEncryptPassword\":null,\"callbackUrl\":null,\"indexUrl\":null,\"ipWhiteList\":null,\"logoUrl\":null,\"tokenExpireDuration\":0,\"status\":0,\"delFlag\":null,\"description\":\"123\",\"createBy\":null,\"updateBy\":null,\"createTime\":null,\"updateTime\":null}]', 244, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1791060494813302786, '0', '删除单个角色', 'space001', 'admin', ' ', '2024-05-16 18:57:53', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/role/1791008681233825793', 'DELETE', '[1791008681233825793]', 35, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1791063409758113793, '0', '更新角色菜单', 'space001', 'admin', ' ', '2024-05-16 19:09:28', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/role/menu', 'PUT', '[{\"roleId\":1,\"menuIds\":\"9000,9001,9002,9003,9004,9005,9006,9007,9008,9009,9010,9011,9012,9013,1100,1101,1102,1103,1104,1105,1200,1201,1202,1203,1300,1301,1302,1303,1304,1307,1306,1305,1400,1401,1402,1403,1000\"}]', 59, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1791068343891193857, '0', '添加角色', 'space001', 'admin', ' ', '2024-05-16 19:29:04', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/role', 'POST', '[{\"roleId\":null,\"roleName\":\"test\",\"roleDesc\":\"test\",\"status\":true}]', 28, '0', NULL, 1);
INSERT INTO `sys_log` VALUES (1795281272651993090, '0', '登录成功', 'space001', 'admin', ' ', '2024-05-28 10:29:45', NULL, '192.168.0.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/oauth2/token', 'POST', 'randomStr=%5BblockPuzzle%5D&code=%5B99EAExUDFExel6BfNhCragS6Wfeu0SvmT8cfI3EJ/OEfo8KPRFPkccvyp2A7WpfVfRDUQ5Jtdb9djUDv7aVVO5d+IaMH0zWIs9+syMxXD+U=%5D&grant_type=%5Bpassword%5D&scope=%5Bserver%5D&username=%5Badmin%5D', 574, '0', NULL, 1);

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log`  (
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键id',
  `account` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登录账号',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '浏览器/总段设备',
  `mac_add` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'MAC地址',
  `entry_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '登录IP',
  `area` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '所属地区',
  `extend` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '扩展信息',
  `create_id` bigint NULL DEFAULT NULL COMMENT '创建者id',
  `create_by` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_id` bigint NULL DEFAULT NULL COMMENT '更新者id',
  `update_by` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '登录时间',
  `update_date` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `fk_domain` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '所属域',
  `fk_group` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '所属部门',
  `flag` tinyint NULL DEFAULT 0 COMMENT '状态标记',
  `del_flag` tinyint NULL DEFAULT 0 COMMENT '逻辑删除标记',
  PRIMARY KEY (`uri`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '登录日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------
INSERT INTO `sys_login_log` VALUES ('00000000-0027-b787-0000-000003721000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-15 09:23:22', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0027-b793-0000-0000162c1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-15 09:29:57', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0027-b794-0000-0000beb81000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-15 09:30:52', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0027-b79d-0000-0000fd6e1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-15 09:36:03', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0027-b79e-0000-0000ad5c1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-15 09:36:17', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0027-b79f-0000-00008de21000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-15 09:36:46', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0027-b7a9-0000-0000a3161000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-15 09:42:16', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0027-b7e3-0000-0000cfd01000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-15 10:14:03', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0027-c1f4-0000-0000e2ba1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-16 09:41:29', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0027-c21f-0000-000061801000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-16 10:04:41', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0027-c5a1-0000-000064521000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-16 18:15:07', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0027-c5a6-0000-000044341000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-16 18:17:46', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0027-c5ba-0000-0000dd501000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-16 18:29:02', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0027-c5c5-0000-0000679c1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-16 18:34:47', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0027-c5ca-0000-00009e661000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-16 18:37:38', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0027-cc3a-0000-0000dbf41000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-17 09:37:48', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0027-cc92-0000-00004a421000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-17 10:25:32', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0027-cca0-0000-000002b81000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-17 10:33:02', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0027-f812-0000-0000575a1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-21 15:47:19', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0027-f834-0000-000036321000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-21 16:05:48', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-03d3-0000-0000c3d61000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-22 19:10:51', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-0404-0000-000082fc1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-22 19:37:28', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-148d-0000-000081081000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-24 10:09:15', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-1519-0000-0000c66a1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-24 11:25:51', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-151b-0000-000020681000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-24 11:26:36', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-151c-0000-0000e47c1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-24 11:27:34', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-151f-0000-000093e61000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-24 11:29:01', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-1520-0000-000003e41000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-24 11:29:16', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-1524-0000-0000046e1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-24 11:31:27', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-1527-0000-000062f81000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-24 11:33:17', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-1527-0000-0000f04a1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-24 11:33:35', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-1528-0000-0000a61a1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-24 11:33:59', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-1531-0000-0000a1e01000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-24 11:38:53', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-1534-0000-00003d861000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-24 11:40:19', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-1534-0000-0000d9dc1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-24 11:40:39', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-153a-0000-0000a4741000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-24 11:43:48', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-1750-0000-0000da381000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-24 16:35:34', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-1837-0000-000099d01000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-24 18:41:35', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-1839-0000-000090261000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-24 18:42:39', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-183c-0000-000036521000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-24 18:44:06', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-1855-0000-000052361000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-24 18:57:48', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-1880-0000-00005eb01000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-24 19:21:19', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-1888-0000-0000e87a1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-24 19:25:59', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-1897-0000-00003ade1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-24 19:33:48', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-3de5-0000-0000e7181000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-28 10:29:45', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-408d-0000-00006ad41000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-28 16:40:51', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-49e4-0000-00000a6a1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-29 14:26:27', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-4a77-0000-0000deec1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-29 15:47:11', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-4afd-0000-000064841000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-29 17:00:06', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-4afd-0000-0000d4061000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-29 17:00:20', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-4b00-0000-00001b6c1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-29 17:01:35', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-4b02-0000-00009fc01000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-29 17:02:58', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-4b05-0000-000010441000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-29 17:04:18', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-4b2e-0000-000005181000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-29 17:26:40', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-4b31-0000-000072241000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-29 17:28:32', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-4b41-0000-000019e81000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-29 17:37:05', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-4b56-0000-000081401000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-29 17:48:46', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-4b80-0000-0000b3821000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-29 18:11:49', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-522f-0000-000038341000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 09:45:59', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5410-0000-0000fb501000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 14:09:06', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5413-0000-0000ee9a1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 14:10:42', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5414-0000-000054d61000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 14:10:55', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5416-0000-000063f81000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 14:12:03', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5417-0000-000011121000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 14:12:25', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5429-0000-000000241000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 14:22:13', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5464-0000-0000d2621000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 14:54:53', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5467-0000-00001ece1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 14:56:08', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5467-0000-00009bc01000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 14:56:24', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-559e-0000-0000dd0e1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 17:46:23', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-55b5-0000-000018c21000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 17:58:32', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-55bd-0000-000006921000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 18:02:52', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5628-0000-000038181000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 19:01:24', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5650-0000-0000c5e01000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 19:23:33', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-566e-0000-0000ca8c1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 19:39:57', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5670-0000-0000f4521000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 19:41:08', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5678-0000-0000b8fc1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 19:45:22', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-567c-0000-00000c461000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 19:47:11', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5682-0000-000029221000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 19:50:31', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5682-0000-0000da2e1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 19:50:54', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5689-0000-00005f981000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 19:54:28', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-568c-0000-000023801000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 19:55:58', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-568c-0000-000084901000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 19:56:11', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-568f-0000-0000556a1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 19:57:43', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5690-0000-000069401000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 19:58:18', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5691-0000-0000973e1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 19:58:57', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5693-0000-000054f61000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 19:59:54', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5694-0000-000047261000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 20:00:25', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5695-0000-000086681000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-30 20:01:06', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5ca9-0000-0000dfd01000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 10:11:05', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5ddc-0000-000041781000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 12:58:24', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5f03-0000-0000d1f01000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 15:39:49', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5fcd-0000-000002a41000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 17:29:42', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5fcd-0000-0000b9601000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 17:30:05', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5fd4-0000-0000d8181000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 17:33:58', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5fd9-0000-0000809c1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 17:36:31', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5fe8-0000-00003ac41000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 17:44:33', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5fe8-0000-000084a01000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 17:44:43', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5fe9-0000-0000f5b01000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 17:45:30', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5fed-0000-0000f6c01000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 17:47:41', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5ff4-0000-000012241000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 17:51:01', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-5ff6-0000-0000bcb61000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 17:52:29', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-6001-0000-000052ee1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 17:58:16', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-600a-0000-0000b2361000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 18:03:23', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-600c-0000-0000cf781000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 18:04:32', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-601c-0000-000082681000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 18:13:07', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-6020-0000-00006e801000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 18:15:15', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-6022-0000-0000d59e1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 18:16:34', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-6028-0000-0000363e1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 18:19:30', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-602c-0000-00005a4a1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 18:21:46', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-602f-0000-0000f37e1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 18:23:44', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-6055-0000-00003c001000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 18:44:05', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-6056-0000-0000e1dc1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 18:44:59', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-605b-0000-0000cdfe1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 18:47:41', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-6063-0000-0000b3301000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 18:51:59', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-608d-0000-0000fdc41000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 19:15:05', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-60ae-0000-000089021000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-05-31 19:32:52', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-7d5b-0000-0000d2fe1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-03 14:22:11', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-85b0-0000-0000c8401000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-04 09:47:04', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-8730-0000-0000fd281000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-04 13:16:53', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-87b0-0000-0000fc901000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-04 14:26:48', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-8805-0000-000029dc1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-04 15:12:46', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-884f-0000-000031a21000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-04 15:53:12', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-8fff-0000-000046761000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-05 09:48:02', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-9a2a-0000-000074ac1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-06 09:29:43', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-9cf8-0000-0000a6d61000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-06 16:01:57', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-9d9b-0000-0000073a1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-06 17:30:38', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-9dbd-0000-00004b241000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-06 17:49:20', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-9dbf-0000-0000a9341000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 2, '超级管理员', NULL, NULL, '2024-06-06 17:50:38', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-9dc0-0000-0000199c1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 2, '超级管理员', NULL, NULL, '2024-06-06 17:50:52', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-9dc1-0000-000007801000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-06 17:51:23', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-a526-0000-000074441000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-07 11:05:27', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-a68a-0000-000018fa1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-07 14:19:40', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-a6a6-0000-00001f2e1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-07 14:34:58', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-a7d4-0000-000026721000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-07 17:19:55', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-e23b-0000-000090bc1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-13 09:25:24', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-e25f-0000-00009e2a1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-13 09:45:05', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-e25f-0000-0000eb201000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-13 09:45:14', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-e263-0000-00009fe41000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-13 09:47:16', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-e5f4-0000-0000eaaa1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-13 18:06:03', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-ec93-0000-000096e21000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-14 09:31:34', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-ef1f-0000-000028721000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-14 15:27:25', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0028-efc7-0000-0000d95a1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-14 16:59:32', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0029-15b1-0000-0000704a1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-18 09:20:05', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0029-16ab-0000-000015b01000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-18 11:36:25', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0029-1810-0000-0000e88c1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-18 14:51:51', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0029-2071-0000-0000d0041000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-19 10:23:16', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0029-2a61-0000-000048e41000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-20 09:32:19', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0029-34c9-0000-00001b801000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-21 09:47:07', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0029-37bd-0000-00000f161000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-21 16:39:58', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0029-5dee-0000-000015fc1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-25 09:39:32', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0029-6875-0000-000010601000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-26 10:11:21', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0029-6a9d-0000-0000519e1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-26 15:12:58', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0029-7683-0000-00009f6e1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-06-27 18:56:39', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0029-9bb4-0000-0000389c1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-07-01 09:36:10', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0029-9d94-0000-00007cb61000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-07-01 13:58:27', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0029-9ef0-0000-000047ee1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-07-01 17:08:23', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0029-a647-0000-000017761000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-07-02 10:14:29', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0029-a689-0000-00007e4a1000', 'admin', 'Chrome 12', NULL, '192.168.1.113', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-07-02 10:50:44', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0029-a84d-0000-0000c3e21000', 'admin', 'Chrome 12', NULL, '192.168.1.113', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-07-02 14:57:45', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0029-b061-0000-0000d35c1000', 'admin', 'Chrome 12', NULL, '192.168.1.113', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-07-03 09:47:11', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0029-b0b8-0000-0000cc9a1000', 'admin', 'Chrome 12', NULL, '192.168.1.113', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-07-03 10:34:40', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0029-b240-0000-0000cb9e1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-07-03 14:08:45', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0029-b2a1-0000-0000ff3e1000', 'admin', 'Chrome 12', NULL, '192.168.1.113', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-07-03 15:01:50', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0029-bab4-0000-000002ae1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-07-04 09:50:10', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0029-c511-0000-0000c92e1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-07-05 09:59:28', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0029-c79c-0000-0000cbd41000', 'admin', 'Chrome 12', NULL, '192.168.1.116', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-07-05 15:55:01', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0029-e71a-0000-00007bfe1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-07-08 17:17:46', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0029-efcc-0000-000077421000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-07-09 13:33:27', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-0029-f8ab-0000-000004fa1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-07-10 10:13:29', NULL, NULL, NULL, 1, 0);
INSERT INTO `sys_login_log` VALUES ('00000000-002a-02cc-0000-0000857a1000', 'admin', 'Chrome 12', NULL, '192.168.0.29', '内网IP PLYZ.NET', NULL, 1, '超级管理员', NULL, NULL, '2024-07-11 09:49:53', NULL, NULL, NULL, 1, 0);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `app_id` bigint NULL DEFAULT NULL COMMENT '应用ID',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `permission` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `path` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路由路径',
  `parent_id` bigint NULL DEFAULT NULL COMMENT '父菜单ID',
  `icon` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '是否可见，0隐藏，1显示',
  `sort_order` int NULL DEFAULT 1 COMMENT '排序值，越小越靠前',
  `keep_alive` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否缓存，0否，1是',
  `embedded` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否内嵌，0否，1是',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单类型，0目录，1菜单，2按钮',
  `menu_form_id` bigint NULL DEFAULT NULL COMMENT '自定义Form唯一ID',
  `menu_comp_uri` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件URI路由',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志，0未删除，1已删除',
  `tenant_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '租户ID',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9047 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, NULL, NULL, NULL, NULL, NULL, '1', 1, '0', '0', '0', NULL, NULL, 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-16 11:23:00', '0', 1);
INSERT INTO `sys_menu` VALUES (1000, 1, '系统管理', 'system_config_manage', '/admin', -1, 'iconfont icon-admin', '1', 2, '0', '0', '0', NULL, NULL, 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-06-18 14:32:54', '0', 1);
INSERT INTO `sys_menu` VALUES (1100, 1, '用户管理', 'sys_user', 'user', 1000, 'ele-User', '1', 1, '0', '0', '1', NULL, '/Admin/User/Index', 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '0', 1);
INSERT INTO `sys_menu` VALUES (1101, 1, '新增用户', 'sys_user_add', NULL, 1100, NULL, '1', 1, '0', '0', '2', NULL, '/Admin/User/Detail', 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '0', 1);
INSERT INTO `sys_menu` VALUES (1102, 1, '编辑用户', 'sys_user_edit', NULL, 1100, NULL, '1', 1, '0', '0', '2', NULL, '/Admin/User/Detail', 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '0', 1);
INSERT INTO `sys_menu` VALUES (1103, 1, '删除用户', 'sys_user_del', NULL, 1100, NULL, '1', 1, '0', '0', '2', NULL, NULL, 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '0', 1);
INSERT INTO `sys_menu` VALUES (1104, 1, '导入用户', 'sys_user_import', NULL, 1100, NULL, '1', 1, '0', '0', '2', NULL, '/Admin/User/components/ImportDialog', 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '0', 1);
INSERT INTO `sys_menu` VALUES (1105, 1, '用户详情', 'sys_user_detail', '', 1100, NULL, '1', 1, '0', '0', '2', NULL, '/Admin/User/components/UserDetail', 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '0', 1);
INSERT INTO `sys_menu` VALUES (1200, 1, '菜单管理', 'sys_menu', 'menu', 1000, 'iconfont icon-menu', '1', 2, '0', '0', '1', NULL, '/Admin/Menu/Index', 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '0', 1);
INSERT INTO `sys_menu` VALUES (1201, 1, '菜单新增', 'sys_menu_add', NULL, 1200, NULL, '1', 1, '0', '0', '2', NULL, '/Admin/Menu/components/EditMenuDialog', 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '0', 1);
INSERT INTO `sys_menu` VALUES (1202, 1, '菜单修改', 'sys_menu_edit', NULL, 1200, NULL, '1', 1, '0', '0', '2', NULL, '/Admin/Menu/components/EditMenuDialog', 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '0', 1);
INSERT INTO `sys_menu` VALUES (1203, 1, '菜单删除', 'sys_menu_del', NULL, 1200, NULL, '1', 1, '0', '0', '2', NULL, NULL, 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '0', 1);
INSERT INTO `sys_menu` VALUES (1300, 1, '角色管理', 'sys_role', 'role', 1000, 'iconfont icon-role', '1', 3, '0', '0', '1', NULL, '/Admin/Role/Index', 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '0', 1);
INSERT INTO `sys_menu` VALUES (1301, 1, '角色新增', 'sys_role_add', NULL, 1300, NULL, '1', 1, '0', '0', '2', NULL, '/Admin/Role/components/AddRole', 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '0', 1);
INSERT INTO `sys_menu` VALUES (1302, 1, '角色修改', 'sys_role_edit', NULL, 1300, NULL, '1', 1, '0', '0', '2', NULL, '/Admin/Role/components/Detail', 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '0', 1);
INSERT INTO `sys_menu` VALUES (1303, 1, '角色删除', 'sys_role_del', NULL, 1300, NULL, '1', 1, '0', '0', '2', NULL, NULL, 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '0', 1);
INSERT INTO `sys_menu` VALUES (1304, 1, '分配权限', 'sys_role_perm', NULL, 1300, NULL, '1', 1, '0', '0', '2', NULL, '/Admin/Role/components/SetRolePermission', 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '0', 1);
INSERT INTO `sys_menu` VALUES (1305, 1, '角色导入导出', 'sys_role_export', NULL, 1300, NULL, '1', 4, '0', '0', '2', NULL, NULL, 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '0', 1);
INSERT INTO `sys_menu` VALUES (1306, 1, '编辑成员', 'sys_role_member', NULL, 1300, NULL, '1', 1, '0', '0', '2', NULL, '/Admin/Role/components/AddUser', 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '0', 1);
INSERT INTO `sys_menu` VALUES (1307, 1, '角色详情', 'sys_role_detail', '', 1300, NULL, '1', 1, '0', '0', '2', NULL, '/Admin/Role/Detail', 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '0', 1);
INSERT INTO `sys_menu` VALUES (1400, 1, '部门管理', 'sys_dept', 'dept', 1000, 'iconfont icon-dept', '1', 4, '0', '0', '1', NULL, '/Admin/Dept/Index', 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '0', 1);
INSERT INTO `sys_menu` VALUES (1401, 1, '部门新增', 'sys_dept_add', NULL, 1400, NULL, '1', 1, '0', '0', '2', NULL, '/Admin/Dept/components/EditDeptDialog', 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '0', 1);
INSERT INTO `sys_menu` VALUES (1402, 1, '部门修改', 'sys_dept_edit', NULL, 1400, NULL, '1', 1, '0', '0', '2', NULL, '/Admin/Dept/components/EditDeptDialog', 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '0', 1);
INSERT INTO `sys_menu` VALUES (1403, 1, '部门删除', 'sys_dept_del', NULL, 1400, NULL, '1', 1, '0', '0', '2', NULL, NULL, 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '0', 1);
INSERT INTO `sys_menu` VALUES (1404, 1, '开放互联', 'sys_connect_sync', NULL, 1400, NULL, '1', 1, '0', '0', '2', NULL, NULL, 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '1', 1);
INSERT INTO `sys_menu` VALUES (1500, 1, '租户管理', 'sys_tenant', 'tenant', 1000, 'iconfont icon-tenant', '1', 5, '0', '0', '1', NULL, NULL, 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '1', 1);
INSERT INTO `sys_menu` VALUES (1501, 1, '租户新增', 'sys_systenant_add', NULL, 1500, '1', '1', 0, '0', '0', '2', NULL, NULL, 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '1', 1);
INSERT INTO `sys_menu` VALUES (1502, 1, '租户修改', 'sys_systenant_edit', NULL, 1500, '1', '1', 1, '0', '0', '2', NULL, NULL, 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '1', 1);
INSERT INTO `sys_menu` VALUES (1503, 1, '租户删除', 'sys_systenant_del', NULL, 1500, '1', '1', 2, '0', '0', '2', NULL, NULL, 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '1', 1);
INSERT INTO `sys_menu` VALUES (1504, 1, '租户套餐列表', 'sys_systenant_tenantmenu', NULL, 1500, '1', '1', 1, '0', '0', '2', NULL, NULL, 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '1', 1);
INSERT INTO `sys_menu` VALUES (1505, 1, '租户套餐删除', 'sys_systenantmenu_del', NULL, 1500, '1', '1', 1, '0', '0', '2', NULL, NULL, 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '1', 1);
INSERT INTO `sys_menu` VALUES (1506, 1, '租户套餐编辑', 'sys_systenantmenu_edit', NULL, 1500, '1', '1', 1, '0', '0', '2', NULL, NULL, 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '1', 1);
INSERT INTO `sys_menu` VALUES (1507, 1, '租户套餐新增', 'sys_systenantmenu_add', NULL, 1500, '1', '1', 1, '0', '0', '2', NULL, NULL, 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '1', 1);
INSERT INTO `sys_menu` VALUES (1508, 1, '租户套餐导出', 'sys_systenant_export', NULL, 1500, NULL, '1', 0, '0', '0', '2', NULL, NULL, 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '1', 1);
INSERT INTO `sys_menu` VALUES (2000, 1, '系统管理', 'system_manage', '/system', -1, 'iconfont icon-system-manage', '1', 0, '0', '0', '0', NULL, NULL, 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '1', 1);
INSERT INTO `sys_menu` VALUES (2001, 1, '日志管理', 'sys_log', 'log', 1000, 'ele-Cloudy', '1', 6, '0', '0', '1', NULL, '/System/Log/Index', 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '0', 1);
INSERT INTO `sys_menu` VALUES (2100, 1, '操作日志', 'operation_log_manage', '', 2001, '', '1', 0, '0', '0', '2', NULL, '', 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '1', 1);
INSERT INTO `sys_menu` VALUES (2101, 1, '日志删除', 'sys_log_del', NULL, 2100, NULL, '1', 0, '0', '0', '2', NULL, NULL, 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '1', 1);
INSERT INTO `sys_menu` VALUES (2102, 1, '导出日志数据', 'sys_log_export', NULL, 2100, NULL, '1', 0, '0', '0', '2', NULL, NULL, 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '1', 1);
INSERT INTO `sys_menu` VALUES (2200, 1, '字典管理', 'sys_dict', 'dict', 2000, 'iconfont icon-dict', '1', 2, '0', '0', '1', NULL, NULL, 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '1', 1);
INSERT INTO `sys_menu` VALUES (2201, 1, '字典新增', 'sys_dict_add', NULL, 2200, NULL, '1', 1, '0', '0', '2', NULL, NULL, 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '1', 1);
INSERT INTO `sys_menu` VALUES (2202, 1, '字典修改', 'sys_dict_edit', NULL, 2200, NULL, '1', 1, '0', '0', '2', NULL, NULL, 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '1', 1);
INSERT INTO `sys_menu` VALUES (2203, 1, '字典删除', 'sys_dict_del', NULL, 2200, NULL, '1', 1, '0', '0', '2', NULL, NULL, 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-14 18:59:14', '1', 1);
INSERT INTO `sys_menu` VALUES (9010, 1, '应用管理', 'sys_application', 'app', 1000, 'iconfont icon-role', '1', 1, '0', '0', '1', NULL, '/Admin/App/Index', 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-15 10:09:23', '0', 1);
INSERT INTO `sys_menu` VALUES (9011, 1, '应用新增', 'sys_app_add', NULL, 9010, NULL, '1', 1, '0', '0', '2', NULL, '/Admin/App/components/AddRole', 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-15 10:09:23', '0', 1);
INSERT INTO `sys_menu` VALUES (9012, 1, '应用修改', 'sys_app_edit', NULL, 9010, NULL, '1', 2, '0', '0', '2', NULL, '/Admin/Role/components/Detail', 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-15 10:09:23', '0', 1);
INSERT INTO `sys_menu` VALUES (9013, 1, '应用删除', 'sys_app_del', NULL, 9010, NULL, '1', 3, '0', '0', '2', NULL, NULL, 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-15 10:09:23', '0', 1);
INSERT INTO `sys_menu` VALUES (9014, 5, '口岸', 'system_config_manage', '/admin', -1, 'iconfont icon-admin', '1', 3, '0', '0', '0', NULL, NULL, 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-24 12:37:44', '0', 1);
INSERT INTO `sys_menu` VALUES (9015, 5, '口岸验放1', 'sys_application', 'app1', 9014, 'iconfont icon-role', '1', 1, '0', '0', '1', NULL, '/Admin/App/Index', 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-24 12:37:46', '0', 1);
INSERT INTO `sys_menu` VALUES (9016, 5, '口岸验放2', 'sys_app_add', 'app2', 9014, 'iconfont icon-role', '1', 1, '0', '0', '1', NULL, '/Admin/App/components/AddRole', 'SPACE_SYS_ADMIN', '2024-04-09 16:17:16', 'SPACE_SYS_ADMIN', '2024-05-24 12:37:48', '0', 1);
INSERT INTO `sys_menu` VALUES (9018, 1, '配置中心', 'sys', '/adapter', -1, 'iconfont icon-role', '1', 0, '0', '0', '0', NULL, '/Adapter', 'admin', '2024-06-03 14:25:10', ' ', '2024-06-18 14:32:36', '0', 1);
INSERT INTO `sys_menu` VALUES (9019, 1, '数据源管理', 'sys', 'datasource', 9018, NULL, '1', 2, '0', '0', '1', NULL, '/Adapter/Datasource/Index', 'admin', '2024-06-03 14:33:08', 'admin', '2024-06-18 14:30:54', '0', 1);
INSERT INTO `sys_menu` VALUES (9020, 1, '数据映射管理', 'sys', 'metaMapping', 9018, NULL, '1', 6, '0', '0', '1', NULL, '/Adapter/MetaMapping/Index', 'admin', '2024-06-03 14:38:27', 'admin', '2024-06-18 14:31:57', '0', 1);
INSERT INTO `sys_menu` VALUES (9021, 1, '数据操作动作管理', 'dataAction', 'dataAction', 9018, NULL, '1', 4, '0', '0', '1', NULL, '/Adapter/DataAction/Index', 'admin', '2024-06-04 16:00:57', 'admin', '2024-06-18 14:31:46', '0', 1);
INSERT INTO `sys_menu` VALUES (9022, 1, '数据存储目标配置管理', 'cfg_data_storage', 'dataStorage', 9018, NULL, '1', 3, '0', '0', '1', NULL, '/Adapter/DataStorage/Index', 'admin', '2024-06-05 14:44:29', 'admin', '2024-06-18 14:31:37', '0', 1);
INSERT INTO `sys_menu` VALUES (9023, 1, '动作数据源配置', 'cfg_data_rw_datasource', 'dataRwDatasource', 9018, NULL, '1', 5, '0', '0', '1', NULL, '/Adapter/DataRwDatasource/Index', 'admin', '2024-06-05 17:41:24', 'admin', '2024-06-18 14:31:52', '0', 1);
INSERT INTO `sys_menu` VALUES (9024, 1, '主数据类型管理', 'cfg_metadata_type', 'metadataType', 9018, NULL, '1', 0, '0', '0', '1', NULL, '/Adapter/MetadataType/Index', 'admin', '2024-06-06 10:28:09', ' ', '2024-06-06 10:31:01', '0', 1);
INSERT INTO `sys_menu` VALUES (9025, 1, '主数据属性管理', 'cfg_metadata_property', 'metadataProperty', 9018, NULL, '1', 1, '0', '0', '1', NULL, '/Adapter/MetadataProperty/Index', 'admin', '2024-06-06 15:54:55', 'admin', '2024-06-18 14:30:35', '0', 1);
INSERT INTO `sys_menu` VALUES (9026, 1, '主数据管理', 'metaData', '/MetaData', -1, NULL, '1', 0, '0', '0', '0', NULL, '/MetaData', 'admin', '2024-06-13 09:41:13', ' ', '2024-06-19 10:57:22', '0', 1);
INSERT INTO `sys_menu` VALUES (9027, 1, '场地管理', 'site', 'site', 9026, NULL, '1', 1, '0', '0', '1', NULL, '/MetaData/Site/Index', 'admin', '2024-06-13 09:43:41', 'admin', '2024-06-19 16:34:07', '0', 1);
INSERT INTO `sys_menu` VALUES (9029, 1, '电子地图管理', 'map', 'map', 9026, NULL, '1', 7, '0', '0', '1', NULL, '/MetaData/Map/Index', 'admin', '2024-06-13 09:48:23', 'admin', '2024-06-21 14:16:54', '0', 1);
INSERT INTO `sys_menu` VALUES (9030, 1, '监控点管理', 'monitorPoint', 'monitorPoint', 9026, NULL, '1', 4, '0', '0', '1', NULL, '/MetaData/MonitorPoint/Index', 'admin', '2024-06-13 09:51:46', 'admin', '2024-06-21 09:36:25', '0', 1);
INSERT INTO `sys_menu` VALUES (9031, 1, '数据读写映射关联管理', 'metaDsProp', 'metaDsProp', 9018, NULL, '1', 7, '0', '0', '1', NULL, '/Adapter/MetaDsProp/Index', 'admin', '2024-06-14 11:44:58', 'admin', '2024-06-18 14:32:01', '0', 1);
INSERT INTO `sys_menu` VALUES (9032, 1, '重点人员管理', 'visitor', 'visitor', 9026, NULL, '1', 5, '0', '0', '1', NULL, '/MetaData/Visitor/Index', 'admin', '2024-06-18 14:35:12', 'admin', '2024-06-21 09:36:31', '0', 1);
INSERT INTO `sys_menu` VALUES (9033, 1, '监控设备管理', 'monitorDevice', 'monitorDevice', 9026, NULL, '1', 3, '0', '0', '1', NULL, '/MetaData/MonitorDevice/Index', 'admin', '2024-06-19 10:54:54', 'admin', '2024-06-19 16:34:34', '0', 1);
INSERT INTO `sys_menu` VALUES (9034, 1, '区域管理', 'region', 'region', 9026, NULL, '1', 2, '0', '0', '1', NULL, '/MetaData/Region/Index', 'admin', '2024-06-19 14:27:41', 'admin', '2024-06-19 16:34:17', '0', 1);
INSERT INTO `sys_menu` VALUES (9035, 1, '航站楼管理', 'terminal', 'terminal', 9026, NULL, '1', 0, '0', '0', '1', NULL, '/MetaData/Terminal/Index', 'admin', '2024-06-19 14:39:37', ' ', '2024-06-19 15:40:50', '0', 1);
INSERT INTO `sys_menu` VALUES (9044, 1, '工作人员管理', 'staff', 'staff', 9026, NULL, '1', 6, '0', '0', '1', NULL, '/MetaData/Staff/Index', 'admin', '2024-06-20 11:25:22', ' ', '2024-06-20 11:28:27', '0', 1);
INSERT INTO `sys_menu` VALUES (9045, 1, '业务统计配置管理', 'cfgBizObjStatistics', 'cfgBizObjStatistics', 9018, NULL, '1', 8, '0', '0', '1', NULL, '/Adapter/CfgBizObjStatistics/Index', 'admin', '2024-07-03 14:55:35', 'admin', '2024-07-03 15:03:56', '0', 1);
INSERT INTO `sys_menu` VALUES (9046, 1, '业务统计记录管理', 'bizObjStatisticsData', 'bizObjStatisticsData', 9018, NULL, '1', 9, '0', '0', '1', NULL, '/Adapter/BizObjStatisticsData/Index', 'admin', '2024-07-03 14:56:07', 'admin', '2024-07-03 15:04:02', '0', 1);

-- ----------------------------
-- Table structure for sys_oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `sys_oauth_client_details`;
CREATE TABLE `sys_oauth_client_details`  (
  `id` bigint NOT NULL COMMENT 'ID',
  `client_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '客户端ID',
  `resource_ids` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源ID集合',
  `client_secret` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户端秘钥',
  `scope` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '授权范围',
  `authorized_grant_types` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '授权类型',
  `web_server_redirect_uri` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '回调地址',
  `authorities` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限集合',
  `access_token_validity` int NULL DEFAULT NULL COMMENT '访问令牌有效期（秒）',
  `refresh_token_validity` int NULL DEFAULT NULL COMMENT '刷新令牌有效期（秒）',
  `additional_information` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '附加信息',
  `autoapprove` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自动授权',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标记，0未删除，1已删除',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '所属租户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '终端信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oauth_client_details
-- ----------------------------
INSERT INTO `sys_oauth_client_details` VALUES (1, 'space001', NULL, 'space001', 'server', 'password,refresh_token,authorization_code,client_credentials,mobile', 'http://localhost:4040/sso1/login,http://localhost:4041/sso1/login,http://localhost:8080/renren-admin/sys/oauth2-sso,http://localhost:8090/sys/oauth2-sso', NULL, 43200, 2592001, '{\"enc_flag\":\"1\",\"captcha_flag\":\"0\"}', 'false', '0', '', 'admin', NULL, '2023-03-08 11:32:41', 1);
INSERT INTO `sys_oauth_client_details` VALUES (2, 'test', NULL, 'test', 'server', 'password,refresh_token', NULL, NULL, 43200, 2592001, '{ \"enc_flag\":\"0\",\"captcha_flag\":\"0\"}', 'true', '0', ' ', ' ', NULL, NULL, 1);

-- ----------------------------
-- Table structure for sys_operator_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_operator_log`;
CREATE TABLE `sys_operator_log`  (
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '主键id',
  `app_id` bigint NULL DEFAULT NULL COMMENT '应用ID',
  `module` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属模块',
  `sub_module` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属子模块',
  `operand` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作对象',
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作类型',
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作详情',
  `extend` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '扩展信息',
  `create_id` bigint NULL DEFAULT NULL COMMENT '创建者id',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_id` bigint NULL DEFAULT NULL COMMENT '更新者id',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_date` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_date` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `fk_domain` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '所属域',
  `fk_group` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '所属部门',
  `flag` tinyint NULL DEFAULT 0 COMMENT '状态标记',
  `del_flag` tinyint NULL DEFAULT 0 COMMENT '逻辑删除标记',
  PRIMARY KEY (`uri`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '操作日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_operator_log
-- ----------------------------
INSERT INTO `sys_operator_log` VALUES ('4663c8a57e0704bf3c6434305dd8c01b', NULL, '系统配置', '角色管理', 'b', '新建', '新建b', NULL, 1, '超级管理员', 1, '超级管理员', '2024-05-16 15:29:49', '2024-05-16 15:29:49', NULL, NULL, 0, 0);
INSERT INTO `sys_operator_log` VALUES ('5510fb358144e7c22e48e461b534542f', NULL, '系统配置', '角色管理', 'b', '删除', '删除b', NULL, 1, '超级管理员', 1, '超级管理员', '2024-05-16 15:29:58', '2024-05-16 15:29:58', NULL, NULL, 0, 0);
INSERT INTO `sys_operator_log` VALUES ('6de3ec342bbb130f277265886c2a9cd4', NULL, '系统配置', '角色管理', 'a', '删除', '删除a', NULL, 1, '超级管理员', 1, '超级管理员', '2024-05-16 15:29:56', '2024-05-16 15:29:56', NULL, NULL, 0, 0);
INSERT INTO `sys_operator_log` VALUES ('6f6c01d5c99f043636b16594c4261c50', NULL, '系统配置', '角色管理', 'b', '删除', '删除b', NULL, 1, '超级管理员', 1, '超级管理员', '2024-05-16 18:43:56', '2024-05-16 18:43:56', NULL, NULL, 0, 0);
INSERT INTO `sys_operator_log` VALUES ('89b72560130289fb7cc230f5232bfdd8', NULL, '系统配置', '角色管理', 'a', '新建', '新建a', NULL, 1, '超级管理员', 1, '超级管理员', '2024-05-16 15:32:00', '2024-05-16 15:32:00', NULL, NULL, 0, 0);
INSERT INTO `sys_operator_log` VALUES ('8dbfdb9cc0cc63db3526fc426ffb1e91', NULL, '系统配置', '角色管理', 'b', '新建', '新建b', NULL, 1, '超级管理员', 1, '超级管理员', '2024-05-16 15:32:04', '2024-05-16 15:32:04', NULL, NULL, 0, 0);
INSERT INTO `sys_operator_log` VALUES ('987eaf1a82f2300561fa27e4c6ee6078', NULL, '系统配置', '角色管理', 'test', '新建', '新建test', NULL, 1, '超级管理员', 1, '超级管理员', '2024-05-16 19:29:04', '2024-05-16 19:29:04', NULL, NULL, 0, 0);
INSERT INTO `sys_operator_log` VALUES ('e6e65d35b10e6d816857902d4e41e02c', NULL, '系统配置', '角色管理', 'a', '新建', '新建a', NULL, 1, '超级管理员', 1, '超级管理员', '2024-05-15 18:28:16', '2024-05-15 18:28:16', NULL, NULL, 0, 0);
INSERT INTO `sys_operator_log` VALUES ('fc217165c958de51b3f640d23ce5f933', NULL, '系统配置', '角色管理', 'a', '删除', '删除a', NULL, 1, '超级管理员', 1, '超级管理员', '2024-05-16 18:57:53', '2024-05-16 18:57:53', NULL, NULL, 0, 0);

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission`  (
  `id` bigint NOT NULL COMMENT '权限记录ID',
  `permission_type` int NULL DEFAULT NULL COMMENT '权限类型(1-按钮,2-表单,3-数据,4-其它)',
  `permission_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限编码',
  `permission_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限名称',
  `action_id` bigint NULL DEFAULT NULL COMMENT '动作ID(按钮ID)',
  `permission_scope` int NULL DEFAULT NULL COMMENT '权限范围(1-Tenant,2-Role,3-Org,4-User,5-EnergyType,6-Product,7-Device,8-Point)',
  `permission_category` int NULL DEFAULT NULL COMMENT '权限类别(1-Read,2-Write,3-Read/Write,4-Other)',
  `menu_form_id` bigint NULL DEFAULT NULL COMMENT '自定义Form唯一ID',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志，0未删除，1已删除',
  `tenant_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '租户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '岗位排序',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '岗位描述',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '更新人',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'TEAM_LEADER', '部门负责人', 0, 'LEADER', '0', '2022-03-26 13:48:17', '', '2023-03-08 16:03:35', 'admin', 1);

-- ----------------------------
-- Table structure for sys_public_param
-- ----------------------------
DROP TABLE IF EXISTS `sys_public_param`;
CREATE TABLE `sys_public_param`  (
  `public_id` bigint NOT NULL COMMENT '编号',
  `public_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `public_key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '键',
  `public_value` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '值',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态，0禁用，1启用',
  `validate_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '校验码',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改人',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `public_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '类型，0未知，1系统，2业务',
  `system_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '系统标识，0非系统，1系统',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标记，0未删除，1已删除',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  PRIMARY KEY (`public_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '公共参数配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_public_param
-- ----------------------------
INSERT INTO `sys_public_param` VALUES (1, '租户默认来源', 'TENANT_DEFAULT_ID', '1', '0', '', ' ', ' ', '2020-05-12 04:03:46', '2020-06-20 08:56:30', '2', '0', '1', 1);
INSERT INTO `sys_public_param` VALUES (2, '租户默认部门名称', 'TENANT_DEFAULT_DEPTNAME', '租户默认部门', '0', '', ' ', ' ', '2020-05-12 03:36:32', NULL, '2', '1', '0', 1);
INSERT INTO `sys_public_param` VALUES (3, '租户默认账户', 'TENANT_DEFAULT_USERNAME', 'admin', '0', '', ' ', ' ', '2020-05-12 04:05:04', NULL, '2', '1', '0', 1);
INSERT INTO `sys_public_param` VALUES (4, '租户默认密码', 'TENANT_DEFAULT_PASSWORD', '123456', '0', '', ' ', ' ', '2020-05-12 04:05:24', NULL, '2', '1', '0', 1);
INSERT INTO `sys_public_param` VALUES (5, '租户默认角色编码', 'TENANT_DEFAULT_ROLECODE', 'ROLE_ADMIN', '0', '', ' ', ' ', '2020-05-12 04:05:57', NULL, '2', '1', '0', 1);
INSERT INTO `sys_public_param` VALUES (6, '租户默认角色名称', 'TENANT_DEFAULT_ROLENAME', '租户默认角色', '0', '', ' ', ' ', '2020-05-12 04:06:19', NULL, '2', '1', '0', 1);
INSERT INTO `sys_public_param` VALUES (7, '表前缀', 'GEN_TABLE_PREFIX', 'tb_', '0', '', ' ', ' ', '2020-05-12 04:23:04', NULL, '9', '1', '0', 1);
INSERT INTO `sys_public_param` VALUES (8, '接口文档不显示的字段', 'GEN_HIDDEN_COLUMNS', 'tenant_id', '0', '', ' ', ' ', '2020-05-12 04:25:19', NULL, '9', '1', '0', 1);
INSERT INTO `sys_public_param` VALUES (9, '注册用户默认角色', 'USER_DEFAULT_ROLE', 'GENERAL_USER', '0', NULL, ' ', ' ', '2022-03-31 16:52:24', NULL, '2', '1', '0', 1);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `role_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `role_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色编码',
  `role_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `ds_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '2' COMMENT '数据权限类型，0全部，1自定义，2本部门及以下，3本部门，4仅本人',
  `ds_scope` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据权限范围',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改人',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标记，0未删除，1已删除',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户ID',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '0停用 1启用',
  PRIMARY KEY (`role_id`) USING BTREE,
  INDEX `role_idx1_role_code`(`role_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '管理员', 'ROLE_ADMIN', '管理员', '0', '', '', 'edg134', '2017-10-29 15:45:51', '2023-04-06 14:03:28', '0', 1, '1');
INSERT INTO `sys_role` VALUES (2, '普通用户', 'GENERAL_USER', '普通用户', '0', '', '', '管理员', '2022-03-31 17:03:15', '2024-01-04 19:08:23', '0', 1, '1');
INSERT INTO `sys_role` VALUES (1790690653786959874, 'a', 'a', 'asdf', '2', NULL, 'admin', 'admin', '2024-05-15 18:28:16', '2024-05-16 15:29:56', '1', 1, '1');
INSERT INTO `sys_role` VALUES (1791008132413341697, 'b', 'b', 'asdf', '2', NULL, 'admin', 'admin', '2024-05-16 15:29:49', '2024-05-16 15:29:58', '1', 1, '1');
INSERT INTO `sys_role` VALUES (1791008681233825793, 'a', 'a', 'asdf', '2', NULL, 'admin', 'admin', '2024-05-16 15:32:00', '2024-05-16 18:57:53', '1', 1, '1');
INSERT INTO `sys_role` VALUES (1791008700053667841, 'b', 'b', 'asdfasd', '2', NULL, 'admin', 'admin', '2024-05-16 15:32:04', '2024-05-16 18:43:56', '1', 1, '1');
INSERT INTO `sys_role` VALUES (1791068343073304578, 'test', 'test', 'test', '2', NULL, 'admin', ' ', '2024-05-16 19:29:04', '2024-05-16 19:29:04', '0', 1, '1');

-- ----------------------------
-- Table structure for sys_role_app
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_app`;
CREATE TABLE `sys_role_app`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `app_id` bigint NOT NULL COMMENT '应用ID'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_app
-- ----------------------------
INSERT INTO `sys_role_app` VALUES (2, 2);
INSERT INTO `sys_role_app` VALUES (1, 1);
INSERT INTO `sys_role_app` VALUES (2, 1);
INSERT INTO `sys_role_app` VALUES (1, 3);
INSERT INTO `sys_role_app` VALUES (2, 3);
INSERT INTO `sys_role_app` VALUES (1, 5);
INSERT INTO `sys_role_app` VALUES (1, 4);
INSERT INTO `sys_role_app` VALUES (1, 14);
INSERT INTO `sys_role_app` VALUES (1, 14);
INSERT INTO `sys_role_app` VALUES (1, 15);
INSERT INTO `sys_role_app` VALUES (1, 16);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 1);
INSERT INTO `sys_role_menu` VALUES (1, 1000);
INSERT INTO `sys_role_menu` VALUES (1, 1100);
INSERT INTO `sys_role_menu` VALUES (1, 1101);
INSERT INTO `sys_role_menu` VALUES (1, 1102);
INSERT INTO `sys_role_menu` VALUES (1, 1103);
INSERT INTO `sys_role_menu` VALUES (1, 1104);
INSERT INTO `sys_role_menu` VALUES (1, 1105);
INSERT INTO `sys_role_menu` VALUES (1, 1200);
INSERT INTO `sys_role_menu` VALUES (1, 1201);
INSERT INTO `sys_role_menu` VALUES (1, 1202);
INSERT INTO `sys_role_menu` VALUES (1, 1203);
INSERT INTO `sys_role_menu` VALUES (1, 1300);
INSERT INTO `sys_role_menu` VALUES (1, 1301);
INSERT INTO `sys_role_menu` VALUES (1, 1302);
INSERT INTO `sys_role_menu` VALUES (1, 1303);
INSERT INTO `sys_role_menu` VALUES (1, 1304);
INSERT INTO `sys_role_menu` VALUES (1, 1305);
INSERT INTO `sys_role_menu` VALUES (1, 1306);
INSERT INTO `sys_role_menu` VALUES (1, 1307);
INSERT INTO `sys_role_menu` VALUES (1, 1400);
INSERT INTO `sys_role_menu` VALUES (1, 1401);
INSERT INTO `sys_role_menu` VALUES (1, 1402);
INSERT INTO `sys_role_menu` VALUES (1, 1403);
INSERT INTO `sys_role_menu` VALUES (1, 9000);
INSERT INTO `sys_role_menu` VALUES (1, 9001);
INSERT INTO `sys_role_menu` VALUES (1, 9002);
INSERT INTO `sys_role_menu` VALUES (1, 9003);
INSERT INTO `sys_role_menu` VALUES (1, 9004);
INSERT INTO `sys_role_menu` VALUES (1, 9005);
INSERT INTO `sys_role_menu` VALUES (1, 9006);
INSERT INTO `sys_role_menu` VALUES (1, 9007);
INSERT INTO `sys_role_menu` VALUES (1, 9008);
INSERT INTO `sys_role_menu` VALUES (1, 9009);
INSERT INTO `sys_role_menu` VALUES (1, 9010);
INSERT INTO `sys_role_menu` VALUES (1, 9011);
INSERT INTO `sys_role_menu` VALUES (1, 9012);
INSERT INTO `sys_role_menu` VALUES (1, 9013);
INSERT INTO `sys_role_menu` VALUES (1, 9014);
INSERT INTO `sys_role_menu` VALUES (1, 9015);
INSERT INTO `sys_role_menu` VALUES (1, 9016);
INSERT INTO `sys_role_menu` VALUES (1, 9018);
INSERT INTO `sys_role_menu` VALUES (1, 9019);
INSERT INTO `sys_role_menu` VALUES (1, 9020);
INSERT INTO `sys_role_menu` VALUES (1, 9021);
INSERT INTO `sys_role_menu` VALUES (1, 9022);
INSERT INTO `sys_role_menu` VALUES (1, 9023);
INSERT INTO `sys_role_menu` VALUES (1, 9024);
INSERT INTO `sys_role_menu` VALUES (1, 9025);
INSERT INTO `sys_role_menu` VALUES (1, 9026);
INSERT INTO `sys_role_menu` VALUES (1, 9027);
INSERT INTO `sys_role_menu` VALUES (1, 9029);
INSERT INTO `sys_role_menu` VALUES (1, 9030);
INSERT INTO `sys_role_menu` VALUES (1, 9031);
INSERT INTO `sys_role_menu` VALUES (1, 9032);
INSERT INTO `sys_role_menu` VALUES (1, 9033);
INSERT INTO `sys_role_menu` VALUES (1, 9034);
INSERT INTO `sys_role_menu` VALUES (1, 9035);
INSERT INTO `sys_role_menu` VALUES (1, 9044);
INSERT INTO `sys_role_menu` VALUES (1, 9045);
INSERT INTO `sys_role_menu` VALUES (1, 9046);
INSERT INTO `sys_role_menu` VALUES (2, 1100);
INSERT INTO `sys_role_menu` VALUES (2, 1101);
INSERT INTO `sys_role_menu` VALUES (2, 1102);
INSERT INTO `sys_role_menu` VALUES (2, 1103);
INSERT INTO `sys_role_menu` VALUES (2, 1104);
INSERT INTO `sys_role_menu` VALUES (2, 1105);
INSERT INTO `sys_role_menu` VALUES (2, 1200);
INSERT INTO `sys_role_menu` VALUES (2, 1202);
INSERT INTO `sys_role_menu` VALUES (2, 1203);
INSERT INTO `sys_role_menu` VALUES (2, 1300);
INSERT INTO `sys_role_menu` VALUES (2, 1301);
INSERT INTO `sys_role_menu` VALUES (2, 1302);
INSERT INTO `sys_role_menu` VALUES (2, 1303);
INSERT INTO `sys_role_menu` VALUES (2, 1304);
INSERT INTO `sys_role_menu` VALUES (2, 1305);
INSERT INTO `sys_role_menu` VALUES (2, 1306);
INSERT INTO `sys_role_menu` VALUES (2, 1307);
INSERT INTO `sys_role_menu` VALUES (2, 1400);
INSERT INTO `sys_role_menu` VALUES (2, 1401);
INSERT INTO `sys_role_menu` VALUES (2, 1402);
INSERT INTO `sys_role_menu` VALUES (2, 1403);
INSERT INTO `sys_role_menu` VALUES (2, 2001);
INSERT INTO `sys_role_menu` VALUES (2, 9000);
INSERT INTO `sys_role_menu` VALUES (2, 9001);
INSERT INTO `sys_role_menu` VALUES (2, 9002);
INSERT INTO `sys_role_menu` VALUES (2, 9003);
INSERT INTO `sys_role_menu` VALUES (2, 9004);
INSERT INTO `sys_role_menu` VALUES (2, 9005);
INSERT INTO `sys_role_menu` VALUES (2, 9006);
INSERT INTO `sys_role_menu` VALUES (2, 9007);
INSERT INTO `sys_role_menu` VALUES (2, 9008);
INSERT INTO `sys_role_menu` VALUES (2, 9009);
INSERT INTO `sys_role_menu` VALUES (2, 9010);
INSERT INTO `sys_role_menu` VALUES (2, 9012);
INSERT INTO `sys_role_menu` VALUES (2, 9013);
INSERT INTO `sys_role_menu` VALUES (2, 1790663471656120322);

-- ----------------------------
-- Table structure for sys_route_conf
-- ----------------------------
DROP TABLE IF EXISTS `sys_route_conf`;
CREATE TABLE `sys_route_conf`  (
  `id` bigint NOT NULL COMMENT '主键',
  `route_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `route_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `predicates` json NULL COMMENT '断言',
  `filters` json NULL COMMENT '过滤器',
  `uri` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort_order` int NULL DEFAULT 0 COMMENT '排序',
  `metadata` json NULL COMMENT '路由元信息',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改人',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '路由配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_route_conf
-- ----------------------------
INSERT INTO `sys_route_conf` VALUES (1, '工作流管理模块', 'space-ext-oa-platform', '[{\"args\": {\"_genkey_0\": \"/act/**\"}, \"name\": \"Path\"}]', '[]', 'lb://space-ext-oa-platform', 0, NULL, ' ', ' ', '2019-10-16 16:44:41', '2019-11-05 22:36:56', '0');
INSERT INTO `sys_route_conf` VALUES (2, '认证中心', 'board-gov-platform-auth', '[{\"args\": {\"_genkey_0\": \"/auth/**\"}, \"name\": \"Path\"}]', '[{\"args\": {}, \"name\": \"ValidateCodeGatewayFilter\"}, {\"args\": {}, \"name\": \"PasswordDecoderFilter\"}]', 'lb://board-gov-platform-auth', 0, NULL, ' ', ' ', '2019-10-16 16:44:41', '2024-05-14 19:13:28', '0');
INSERT INTO `sys_route_conf` VALUES (3, '代码生成模块', 'board-gov-platform-codegen', '[{\"args\": {\"_genkey_0\": \"/gen/**\"}, \"name\": \"Path\"}]', '[]', 'lb://board-gov-platform-codegen', 0, NULL, ' ', ' ', '2019-10-16 16:44:41', '2024-05-14 19:13:26', '0');
INSERT INTO `sys_route_conf` VALUES (4, 'elastic-job定时任务模块', 'space-ext-daemon-elastic-job', '[{\"args\": {\"_genkey_0\": \"/daemon/**\"}, \"name\": \"Path\"}]', '[]', 'lb://space-ext-daemon-elastic-job', 0, NULL, ' ', ' ', '2019-10-16 16:44:41', '2019-11-05 22:36:59', '0');
INSERT INTO `sys_route_conf` VALUES (5, 'quartz定时任务模块', 'space-ext-daemon-quartz', '[{\"args\": {\"_genkey_0\": \"/job/**\"}, \"name\": \"Path\"}]', '[]', 'lb://space-ext-daemon-quartz', 0, NULL, ' ', ' ', '2019-10-16 16:44:41', '2019-11-05 22:37:02', '0');
INSERT INTO `sys_route_conf` VALUES (6, '分布式事务模块', 'space-ext-tx-manager', '[{\"args\": {\"_genkey_0\": \"/tx/**\"}, \"name\": \"Path\"}]', '[]', 'lb://space-ext-tx-manager', 0, NULL, ' ', ' ', '2019-10-16 16:44:41', '2019-11-05 22:37:04', '0');
INSERT INTO `sys_route_conf` VALUES (7, '通用权限模块', 'board-gov-platform-upms-biz', '[{\"args\": {\"_genkey_0\": \"/admin/**\"}, \"name\": \"Path\"}]', '[{\"args\": {\"key-resolver\": \"#{@remoteAddrKeyResolver}\", \"redis-rate-limiter.burstCapacity\": \"1000\", \"redis-rate-limiter.replenishRate\": \"1000\"}, \"name\": \"RequestRateLimiter\"}]', 'lb://board-gov-platform-upms', 0, '{\"response-timeout\": \"30000\"}', ' ', ' ', '2019-10-16 16:44:41', '2024-05-14 19:13:34', '0');
INSERT INTO `sys_route_conf` VALUES (8, '工作流长链接支持', 'space-ext-oa-platform-ws', '[{\"args\": {\"_genkey_0\": \"/act/ws/**\"}, \"name\": \"Path\"}]', '[]', 'lb:ws://space-ext-oa-platform', 100, NULL, ' ', ' ', '2019-10-16 16:44:41', '2019-11-05 22:37:09', '0');
INSERT INTO `sys_route_conf` VALUES (9, '微信公众号管理', 'space-ext-mp-platform', '[{\"args\": {\"_genkey_0\": \"/mp/**\"}, \"name\": \"Path\"}]', '[]', 'lb://space-ext-mp-platform', 0, NULL, ' ', ' ', '2019-10-16 16:44:41', '2019-11-05 22:37:12', '0');
INSERT INTO `sys_route_conf` VALUES (10, '支付管理', 'space-ext-pay-platform', '[{\"args\": {\"_genkey_0\": \"/pay/**\"}, \"name\": \"Path\"}]', '[]', 'lb://space-ext-pay-platform', 0, NULL, ' ', ' ', '2019-10-16 16:44:41', '2019-11-05 22:37:13', '0');
INSERT INTO `sys_route_conf` VALUES (11, '监控管理', 'space-ext-monitor', '[{\"args\": {\"_genkey_0\": \"/monitor/**\"}, \"name\": \"Path\"}]', '[]', 'lb://space-ext-monitor', 0, NULL, ' ', ' ', '2019-10-16 16:44:41', '2019-11-05 22:37:17', '0');
INSERT INTO `sys_route_conf` VALUES (12, '积木报表', 'space-ext-jimu-platform\n', '[{\"args\": {\"_genkey_0\": \"/jimu/**\"}, \"name\": \"Path\"}]', '[]', 'lb://space-ext-jimu-platform', 0, NULL, ' ', ' ', '2019-10-16 16:44:41', '2019-11-05 22:37:17', '0');
INSERT INTO `sys_route_conf` VALUES (13, '大屏设计', 'space-ext-report-platform', '[{\"args\": {\"_genkey_0\": \"/gv/**\"}, \"name\": \"Path\"}]', '[]', 'lb://space-ext-report-platform', 0, '{}', ' ', ' ', '2022-08-27 02:38:43', '2023-04-05 07:52:27', '0');
INSERT INTO `sys_route_conf` VALUES (14, 'APP服务', 'space-ext-app-server-biz', '[{\"args\": {\"_genkey_0\": \"/app/**\"}, \"name\": \"Path\"}]', '[]', 'lb://board-gov-platform-app-server-biz', 0, '{}', 'admin', ' ', '2022-12-07 10:53:44', '2024-05-14 19:13:06', '0');
INSERT INTO `sys_route_conf` VALUES (15, '工作流引擎', 'board-gov-platform-flow-task', '[{\"args\": {\"_genkey_0\": \"/task/**\"}, \"name\": \"Path\"}]', '[]', 'lb://board-gov-platform-flow-task-biz', 0, '{}', ' ', ' ', '2023-07-28 16:50:26', '2024-05-14 19:12:58', '0');
INSERT INTO `sys_route_conf` VALUES (16, '智慧机场BFF服务', 'board-gov-platform-bff', '[{\"args\": {\"_genkey_0\": \"/bff/**\"}, \"name\": \"Path\"}]', '[]', 'lb://board-gov-platform-bff', 0, '{}', ' ', ' ', '2023-12-07 16:07:30', '2024-05-14 19:12:46', '0');
INSERT INTO `sys_route_conf` VALUES (17, '智慧机场单点登录', 'board-gov-sso-service', '[{\"args\": {\"_genkey_0\": \"/sso/**\"}, \"name\": \"Path\"}]', '[]', 'lb://board-gov-sso-service', 0, '{}', ' ', ' ', '2024-05-13 17:02:34', '2024-05-14 19:30:12', '0');
INSERT INTO `sys_route_conf` VALUES (18, '智慧机场大屏可视化服务', 'board-gov-dashboard-biz', '[{\"args\": {\"_genkey_0\": \"/dashboard/**\"}, \"name\": \"Path\"}]', '[]', 'lb://board-gov-dashboard-biz', 0, '{}', ' ', ' ', '2024-05-14 19:20:45', '2024-05-14 19:30:13', '0');
INSERT INTO `sys_route_conf` VALUES (19, '口岸验放总览子系统', 'board-gov-biz-ports-overview', '[{\"args\": {\"_genkey_0\": \"/biz-ports-overview/**\"}, \"name\": \"Path\"}]', '[]', 'lb://board-gov-biz-ports-overview', 0, '{}', ' ', ' ', '2024-05-31 16:02:42', '2024-06-05 10:17:32', '0');
INSERT INTO `sys_route_conf` VALUES (20, '主数据系统', 'board-gov-platform-basic', '[{\"args\": {\"_genkey_0\": \"/board-bff-basic/**\"}, \"name\": \"Path\"}]', '[]', 'lb://board-gov-platform-basic', 0, '{}', ' ', ' ', '2024-06-05 09:50:32', '2024-06-05 09:53:03', '0');

-- ----------------------------
-- Table structure for sys_schedule
-- ----------------------------
DROP TABLE IF EXISTS `sys_schedule`;
CREATE TABLE `sys_schedule`  (
  `id` bigint NOT NULL COMMENT 'id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日程类型',
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '状态',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内容',
  `time` time NULL DEFAULT NULL COMMENT '时间',
  `date` date NULL DEFAULT NULL COMMENT '日期',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标记',
  `tenant_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '租户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_schedule
-- ----------------------------

-- ----------------------------
-- Table structure for sys_tenant
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant`;
CREATE TABLE `sys_tenant`  (
  `id` bigint NOT NULL COMMENT '租户ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '租户名称',
  `code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '租户编码',
  `tenant_domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '租户域名',
  `website_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '网站名称',
  `mini_qr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '移动端二维码',
  `background` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录页背景图',
  `footer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '页脚信息',
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'logo',
  `start_time` datetime NULL DEFAULT NULL COMMENT '租户开始时间',
  `end_time` datetime NULL DEFAULT NULL COMMENT '租户结束时间',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '租户状态，0正常，1停用',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标记，0未删除，1已删除',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT ' ' COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT ' ' COMMENT '修改人',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `menu_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '租户菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '租户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_tenant
-- ----------------------------
INSERT INTO `sys_tenant` VALUES (1, '总部', '1', '', NULL, NULL, NULL, NULL, NULL, '2024-05-08 20:28:56', '2024-05-08 20:28:56', '0', '0', '', 'admin', '2024-05-08 20:28:56', '2024-05-08 20:28:56', '1642752536722997250');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '盐值',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话号码',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `nickname` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `email` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱地址',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '所属部门ID',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改人',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `lock_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '锁定标记，0未锁定，9已锁定',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标记，0未删除，1已删除',
  `wx_openid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信登录openId',
  `mini_openid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '小程序openId',
  `qq_openid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'QQ openId',
  `gitee_login` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '码云标识',
  `osc_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '开源中国标识',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '所属租户ID',
  `gender` int NULL DEFAULT NULL COMMENT '性别 1：男 2：女',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '0停用 1启用',
  `last_login` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `user_wx_openid`(`wx_openid`) USING BTREE,
  INDEX `user_qq_openid`(`qq_openid`) USING BTREE,
  INDEX `user_idx1_username`(`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '$2a$10$c/Ae0pRjJtMZg3BnvVpO.eIK6WYWVbKTzqgdy3afR7w.vd.xi3Mgy', '', '17012342999', '/Space-UserCenter/lADPD3Ir0Yrwrg7NAeDNAeA_480_480.jpg', '超级管理员', '超级管理员', 'sa@space.com', 4, ' ', 'admin', '2024-05-08 20:28:56', '2024-07-11 09:49:52', '0', '0', NULL, 'oBxPy5E-v82xWGsfzZVzkD3wEX64', NULL, 'log4j', NULL, 1, 1, '1', '2024-07-11 09:49:52');
INSERT INTO `sys_user` VALUES (1777642868970704897, 'space', '$2a$10$zV5EllvryfC/BXWmrWh.L.gURf5nY6f70N/6/TBfwtZM2YjolC77m', NULL, '13922841801', NULL, NULL, 'ZhuiShi', NULL, NULL, 'admin', ' ', '2024-05-08 20:28:56', '2024-05-08 20:28:56', '0', '0', NULL, NULL, NULL, NULL, NULL, 1, 1, '1', '2024-05-08 20:28:56');

-- ----------------------------
-- Table structure for sys_user_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_dept`;
CREATE TABLE `sys_user_dept`  (
  `user_id` bigint NOT NULL,
  `dept_id` bigint NOT NULL,
  UNIQUE INDEX `uniq_all`(`user_id`, `dept_id`) USING BTREE COMMENT '双字段唯一索引'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_dept
-- ----------------------------
INSERT INTO `sys_user_dept` VALUES (1, 1);
INSERT INTO `sys_user_dept` VALUES (1, 2);
INSERT INTO `sys_user_dept` VALUES (1, 3);
INSERT INTO `sys_user_dept` VALUES (1, 4);
INSERT INTO `sys_user_dept` VALUES (1, 5);
INSERT INTO `sys_user_dept` VALUES (1, 6);
INSERT INTO `sys_user_dept` VALUES (1777642868970704897, 1);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1, NULL);
INSERT INTO `sys_user_role` VALUES (1777642868970704897, 2, '2024-05-08 20:28:56');

SET FOREIGN_KEY_CHECKS = 1;
