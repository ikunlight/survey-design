/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50744 (5.7.44-log)
 Source Host           : localhost:3306
 Source Schema         : surdes

 Target Server Type    : MySQL
 Target Server Version : 50744 (5.7.44-log)
 File Encoding         : 65001

 Date: 14/04/2024 22:46:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'tb_survey', '问卷表', NULL, NULL, 'Survey', 'crud', 'com.shure.surdes.survey', 'survey', 'survey', '问卷', 'Shure', '0', '/', NULL, 'admin', '2024-03-13 21:16:10', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, '1', 'survey_id', '问卷主键', 'bigint(20)', 'Long', 'surveyId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-03-13 21:16:10', '', NULL);
INSERT INTO `gen_table_column` VALUES (2, '1', 'survey_name', '问卷名称', 'varchar(64)', 'String', 'surveyName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-03-13 21:16:10', '', NULL);
INSERT INTO `gen_table_column` VALUES (3, '1', 'survey_desc', '问卷说明描述', 'varchar(500)', 'String', 'surveyDesc', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 3, 'admin', '2024-03-13 21:16:10', '', NULL);
INSERT INTO `gen_table_column` VALUES (4, '1', 'survey_type', '问卷类型', 'varchar(3)', 'String', 'surveyType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2024-03-13 21:16:10', '', NULL);
INSERT INTO `gen_table_column` VALUES (5, '1', 'survey_status', '问卷状态（0：未发布，1：收集中，2：已结束）', 'char(1)', 'String', 'surveyStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 5, 'admin', '2024-03-13 21:16:10', '', NULL);
INSERT INTO `gen_table_column` VALUES (6, '1', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2024-03-13 21:16:10', '', NULL);
INSERT INTO `gen_table_column` VALUES (7, '1', 'user_id', '创建人', 'bigint(20)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2024-03-13 21:16:10', '', NULL);
INSERT INTO `gen_table_column` VALUES (8, '1', 'status', '数据状态（1：有效，0：无效）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 8, 'admin', '2024-03-13 21:16:10', '', NULL);
INSERT INTO `gen_table_column` VALUES (9, '1', 'book_code', '帐套编码', 'char(12)', 'String', 'bookCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2024-03-13 21:16:10', '', NULL);

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.shure.surdes.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720025636F6D2E73687572652E7375726465732E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002E636F6D2E73687572652E7375726465732E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000018E33187A5078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.shure.surdes.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720025636F6D2E73687572652E7375726465732E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002E636F6D2E73687572652E7375726465732E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000018E33187A5078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.shure.surdes.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720025636F6D2E73687572652E7375726465732E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002E636F6D2E73687572652E7375726465732E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000018E33187A5078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'DESKTOP-FIAJIFQ1713101810077', 1713101872892, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1713101810000, -1, 5, 'PAUSED', 'CRON', 1713101810000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1713101820000, -1, 5, 'PAUSED', 'CRON', 1713101810000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1713101820000, -1, 5, 'PAUSED', 'CRON', 1713101810000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-03-12 22:37:06', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-03-12 22:37:06', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-03-12 22:37:06', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaOnOff', 'true', 'Y', 'admin', '2024-03-12 22:37:06', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2024-03-12 22:37:06', '', NULL, '是否开启注册用户功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-03-12 22:37:06', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-03-12 22:37:06', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-03-12 22:37:06', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-03-12 22:37:06', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-03-12 22:37:06', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-03-12 22:37:06', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-03-12 22:37:06', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-03-12 22:37:06', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-03-12 22:37:06', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-03-12 22:37:06', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (29, 1, '未发布', '0', 'survey_status', NULL, 'default', 'n', '0', 'admin', '2021-10-15 22:54:37', '', NULL, '问卷未发布');
INSERT INTO `sys_dict_data` VALUES (30, 2, '收集中', '1', 'survey_status', NULL, 'default', 'n', '0', 'admin', '2021-10-15 22:54:59', '', NULL, '问卷收集中');
INSERT INTO `sys_dict_data` VALUES (31, 3, '已结束', '2', 'survey_status', NULL, 'default', 'n', '0', 'admin', '2021-10-15 22:55:33', '', NULL, '问卷已结束');
INSERT INTO `sys_dict_data` VALUES (32, 1, '调查问卷', '01', 'survey_type', NULL, 'default', 'n', '0', 'admin', '2021-10-15 23:00:18', '', NULL, '调查问卷');
INSERT INTO `sys_dict_data` VALUES (33, 2, '考试试卷', '02', 'survey_type', NULL, 'default', 'n', '0', 'admin', '2021-10-15 23:01:00', '', NULL, '考试试卷');
INSERT INTO `sys_dict_data` VALUES (34, 3, '表单', '03', 'survey_type', NULL, 'default', 'n', '0', 'admin', '2021-10-15 23:01:57', '', NULL, '登记等表单');
INSERT INTO `sys_dict_data` VALUES (35, 3, '满意度调查', '03', 'survey_type', NULL, 'default', 'n', '0', 'admin', '2021-10-15 23:02:46', '', NULL, '满意度调查');
INSERT INTO `sys_dict_data` VALUES (36, 1, '单行填空', 'input', 'question_type', 'input', 'default', 'n', '0', 'admin', '2021-10-25 15:31:56', '', NULL, '填空题');
INSERT INTO `sys_dict_data` VALUES (37, 2, '多行填空', 'textarea', 'question_type', 'textarea', 'default', 'n', '0', 'admin', '2021-10-25 15:32:22', '', NULL, '填空题');
INSERT INTO `sys_dict_data` VALUES (38, 3, '单项选择', 'radio', 'question_type', 'ridio', 'default', 'n', '0', 'admin', '2021-10-25 15:33:34', 'admin', '2021-10-25 16:50:53', '选择题');
INSERT INTO `sys_dict_data` VALUES (39, 4, '多项选择', 'checkbox', 'question_type', 'checkbox', 'default', 'n', '0', 'admin', '2021-10-25 15:33:58', '', NULL, '选择题');
INSERT INTO `sys_dict_data` VALUES (40, 5, '下拉选择', 'select', 'question_type', 'select', 'default', 'n', '0', 'admin', '2021-10-25 15:34:19', '', NULL, '选择题');
INSERT INTO `sys_dict_data` VALUES (41, 6, '表格题', 'table', 'question_type', 'table', 'default', 'n', '0', 'admin', '2021-10-25 15:36:05', '', NULL, '复杂题');
INSERT INTO `sys_dict_data` VALUES (42, 7, '计算题', 'compute', 'question_type', 'jisuan', 'default', 'n', '0', 'admin', '2021-10-25 15:44:24', '', NULL, '复杂题');
INSERT INTO `sys_dict_data` VALUES (43, 8, '附件题', 'file', 'question_type', 'file', 'default', 'n', '0', 'admin', '2021-10-25 15:44:46', '', NULL, '复杂题');
INSERT INTO `sys_dict_data` VALUES (44, 9, '标题', 'title', 'question_type', 'title', 'default', 'n', '0', 'admin', '2021-10-25 19:42:35', 'admin', '2021-10-25 19:43:36', '文本说明');
INSERT INTO `sys_dict_data` VALUES (45, 10, '段落说明', 'text', 'question_type', 'text', 'default', 'n', '0', 'admin', '2021-10-25 19:43:25', '', NULL, '文本说明');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (11, '问卷状态', 'survey_status', '0', 'admin', '2021-10-15 22:53:36', 'admin', '2021-10-15 22:57:50', '问卷状态列表');
INSERT INTO `sys_dict_type` VALUES (12, '问卷类型', 'survey_type', '0', 'admin', '2021-10-15 22:59:20', '', NULL, '问卷类型');
INSERT INTO `sys_dict_type` VALUES (13, '题目类型', 'question_type', '0', 'admin', '2021-10-25 15:24:29', '', NULL, '题目类型');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-03-12 22:37:06', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (1, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-13 20:16:18');
INSERT INTO `sys_logininfor` VALUES (2, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-13 20:22:43');
INSERT INTO `sys_logininfor` VALUES (3, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-03-13 20:47:36');
INSERT INTO `sys_logininfor` VALUES (4, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-13 20:47:44');
INSERT INTO `sys_logininfor` VALUES (5, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-13 20:50:50');
INSERT INTO `sys_logininfor` VALUES (6, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-17 19:06:25');
INSERT INTO `sys_logininfor` VALUES (7, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-17 20:13:37');
INSERT INTO `sys_logininfor` VALUES (8, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-18 21:32:14');
INSERT INTO `sys_logininfor` VALUES (9, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-18 21:52:41');
INSERT INTO `sys_logininfor` VALUES (10, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-14 21:37:40');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1088 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 97, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2024-03-12 22:37:06', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 98, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2024-03-12 22:37:06', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 99, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2024-03-12 22:37:06', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-03-12 22:37:06', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-03-12 22:37:06', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-03-12 22:37:06', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2024-03-12 22:37:06', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2024-03-12 22:37:06', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2024-03-12 22:37:06', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2024-03-12 22:37:06', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2024-03-12 22:37:06', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2024-03-12 22:37:06', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2024-03-12 22:37:06', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2024-03-12 22:37:06', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2024-03-12 22:37:06', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2024-03-12 22:37:06', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2024-03-12 22:37:06', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2024-03-12 22:37:06', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2024-03-12 22:37:06', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2024-03-12 22:37:06', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-03-12 22:37:06', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-03-12 22:37:06', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 7, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 115, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 115, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 115, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 115, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1073, '问卷管理', 0, 1, 'manage', '', NULL, 1, 0, 'M', '0', '0', '', 'questionnire', 'admin', '2021-10-18 17:00:27', 'admin', '2024-03-13 20:56:06', '问卷菜单');
INSERT INTO `sys_menu` VALUES (1074, '问卷查询', 1080, 1, '#', '', NULL, 1, 0, 'f', '0', '0', 'survey:survey:query', '#', 'admin', '2021-10-18 17:00:27', 'admin', '2021-10-18 17:10:43', '');
INSERT INTO `sys_menu` VALUES (1075, '问卷新增', 1080, 2, '#', '', NULL, 1, 0, 'f', '0', '0', 'survey:survey:add', '#', 'admin', '2021-10-18 17:00:27', 'admin', '2021-10-18 17:10:52', '');
INSERT INTO `sys_menu` VALUES (1076, '问卷修改', 1080, 3, '#', '', NULL, 1, 0, 'f', '0', '0', 'survey:survey:edit', '#', 'admin', '2021-10-18 17:00:27', 'admin', '2021-10-18 17:10:59', '');
INSERT INTO `sys_menu` VALUES (1077, '问卷删除', 1080, 4, '#', '', NULL, 1, 0, 'f', '0', '0', 'survey:survey:remove', '#', 'admin', '2021-10-18 17:00:27', 'admin', '2021-10-18 17:11:08', '');
INSERT INTO `sys_menu` VALUES (1078, '问卷导出', 1080, 5, '#', '', NULL, 1, 0, 'f', '0', '0', 'survey:survey:export', '#', 'admin', '2021-10-18 17:00:27', 'admin', '2021-10-18 17:11:14', '');
INSERT INTO `sys_menu` VALUES (1080, '个人问卷', 1073, 1, 'survey', 'surdes/survey/index', NULL, 1, 0, 'M', '0', '0', 'survey:survey:list', 'questionnire', 'admin', '2021-10-18 17:09:41', 'admin', '2024-03-13 20:52:22', '');
INSERT INTO `sys_menu` VALUES (1081, '回收站', 1073, 10, 'recycle', 'surdes/recycle/list', NULL, 1, 0, 'C', '0', '0', 'survey:suevey:query', 'recycle', 'admin', '2021-10-18 17:15:02', 'admin', '2024-03-13 20:47:25', '');
INSERT INTO `sys_menu` VALUES (1082, '发布', 1080, 6, '', NULL, NULL, 1, 0, 'f', '0', '0', 'survey:survey:publish', '#', 'admin', '2021-10-19 09:53:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1083, '设计', 1080, 7, '', NULL, NULL, 1, 0, 'f', '0', '0', 'survey:question:list', '#', 'admin', '2021-10-19 10:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1084, '还原', 1081, 1, '', NULL, NULL, 1, 0, 'f', '0', '0', 'survey:survey:restore', '#', 'admin', '2021-10-19 15:15:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1085, '永久删除', 1081, 2, '', NULL, NULL, 1, 0, 'f', '0', '0', 'survey:survey:delete', '#', 'admin', '2021-10-19 15:16:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1086, '撤销发布', 1080, 8, '', NULL, NULL, 1, 0, 'f', '0', '0', 'survey:survey:revoke', '#', 'admin', '2021-10-19 15:36:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1087, '预览', 1080, 9, '', NULL, NULL, 1, 0, 'f', '0', '0', 'survey:survey:preview', '#', 'admin', '2021-10-19 16:57:57', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2024-03-12 22:37:06', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2024-03-12 22:37:06', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '角色管理', 2, 'com.shure.surdes.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":1,\"admin\":true,\"remark\":\"超级管理员\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":true,\"createTime\":1710254226000,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"menuIds\":[1073,1,2,3],\"status\":\"0\"}', NULL, 1, '不允许操作超级管理员角色', '2024-03-13 20:19:41');
INSERT INTO `sys_oper_log` VALUES (2, '角色管理', 2, 'com.shure.surdes.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":1,\"admin\":true,\"remark\":\"超级管理员\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":true,\"createTime\":1710254226000,\"menuCheckStrictly\":true,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"menuIds\":[1073,1080,1074,1075,1076,1077,1078,1082,1083,1086,1087,1081,1084,1085,1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,3,114,115,1055,1056,1058,1057,1059,1060,116],\"status\":\"0\"}', NULL, 1, '不允许操作超级管理员角色', '2024-03-13 20:20:07');
INSERT INTO `sys_oper_log` VALUES (3, '菜单管理', 2, 'com.shure.surdes.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"questionnire\",\"orderNum\":\"1\",\"menuName\":\"个人问卷\",\"params\":{},\"parentId\":1073,\"isCache\":\"0\",\"path\":\"survey\",\"component\":\"surdes/survey/index\",\"children\":[],\"createTime\":1634548181000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1080,\"menuType\":\"C\",\"perms\":\"survey:survey:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-13 20:47:14');
INSERT INTO `sys_oper_log` VALUES (4, '菜单管理', 2, 'com.shure.surdes.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"recycle\",\"orderNum\":\"10\",\"menuName\":\"回收站\",\"params\":{},\"parentId\":1073,\"isCache\":\"0\",\"path\":\"recycle\",\"component\":\"surdes/recycle/list\",\"children\":[],\"createTime\":1634548502000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1081,\"menuType\":\"C\",\"perms\":\"survey:suevey:query\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-13 20:47:25');
INSERT INTO `sys_oper_log` VALUES (5, '菜单管理', 2, 'com.shure.surdes.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"questionnire\",\"orderNum\":\"1\",\"menuName\":\"问卷管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"survey1\",\"component\":\"\",\"children\":[],\"createTime\":1634547627000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1073,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-13 20:52:14');
INSERT INTO `sys_oper_log` VALUES (6, '菜单管理', 2, 'com.shure.surdes.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"questionnire\",\"orderNum\":\"1\",\"menuName\":\"个人问卷\",\"params\":{},\"parentId\":1073,\"isCache\":\"0\",\"path\":\"survey\",\"component\":\"surdes/survey/index\",\"children\":[],\"createTime\":1634548181000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1080,\"menuType\":\"M\",\"perms\":\"survey:survey:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-13 20:52:22');
INSERT INTO `sys_oper_log` VALUES (7, '问卷新增', 1, 'com.shure.surdes.survey.controller.SurveyController.add()', 'POST', 1, 'admin', NULL, '/survey/survey', '127.0.0.1', '内网IP', '{\"surveyId\":1,\"params\":{},\"userId\":1,\"surveyName\":\"1111\",\"createTime\":1710334399999,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-13 20:53:20');
INSERT INTO `sys_oper_log` VALUES (8, '菜单管理', 2, 'com.shure.surdes.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"questionnire\",\"orderNum\":\"1\",\"menuName\":\"问卷管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"manage\",\"component\":\"\",\"children\":[],\"createTime\":1634547627000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1073,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-13 20:56:06');
INSERT INTO `sys_oper_log` VALUES (9, '代码生成', 6, 'com.shure.surdes.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'tb_survey', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-13 21:16:10');
INSERT INTO `sys_oper_log` VALUES (10, '问卷发布', 3, 'com.shure.surdes.survey.controller.SurveyController.publish()', 'PUT', 1, 'admin', NULL, '/survey/survey/publish/1', '127.0.0.1', '内网IP', '[1]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-13 21:27:16');
INSERT INTO `sys_oper_log` VALUES (11, '问卷撤销发布', 3, 'com.shure.surdes.survey.controller.SurveyController.revoke()', 'PUT', 1, 'admin', NULL, '/survey/survey/revoke/1', '127.0.0.1', '内网IP', '1', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-13 21:27:18');
INSERT INTO `sys_oper_log` VALUES (12, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[]', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\r\n### The error may exist in file [D:\\WorkSpace\\survey-design-master\\surdes-survey\\target\\classes\\mapper\\survey\\QuestionMapper.xml]\r\n### The error may involve com.shure.surdes.survey.mapper.QuestionMapper.updateQuesiotnNo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update tb_question                     WHERE question_id in (                          )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3', '2024-03-13 21:31:41');
INSERT INTO `sys_oper_log` VALUES (13, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[]', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\r\n### The error may exist in file [D:\\WorkSpace\\survey-design-master\\surdes-survey\\target\\classes\\mapper\\survey\\QuestionMapper.xml]\r\n### The error may involve com.shure.surdes.survey.mapper.QuestionMapper.updateQuesiotnNo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update tb_question                     WHERE question_id in (                          )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3', '2024-03-13 21:31:45');
INSERT INTO `sys_oper_log` VALUES (14, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[]', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\r\n### The error may exist in file [D:\\WorkSpace\\survey-design-master\\surdes-survey\\target\\classes\\mapper\\survey\\QuestionMapper.xml]\r\n### The error may involve com.shure.surdes.survey.mapper.QuestionMapper.updateQuesiotnNo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update tb_question                     WHERE question_id in (                          )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3', '2024-03-13 21:31:50');
INSERT INTO `sys_oper_log` VALUES (15, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[]', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\r\n### The error may exist in file [D:\\WorkSpace\\survey-design-master\\surdes-survey\\target\\classes\\mapper\\survey\\QuestionMapper.xml]\r\n### The error may involve com.shure.surdes.survey.mapper.QuestionMapper.updateQuesiotnNo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update tb_question                     WHERE question_id in (                          )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3', '2024-03-13 21:32:19');
INSERT INTO `sys_oper_log` VALUES (16, '问卷题目', 1, 'com.shure.surdes.survey.controller.QuestionController.add()', 'POST', 1, 'admin', NULL, '/survey/question', '127.0.0.1', '内网IP', '{\"surveyId\":1,\"questionId\":1,\"notEdit\":\"0\",\"showOrHide\":\"0\",\"questionName\":\"\",\"params\":{},\"answer\":{\"params\":{}},\"createTime\":1710336767737,\"options\":[],\"questionSort\":1,\"questionType\":\"title\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"answer\":{\"params\":{}},\"createTime\":1710336767737,\"notEdit\":\"0\",\"options\":[],\"params\":{},\"questionId\":1,\"questionName\":\"\",\"questionSort\":1,\"questionType\":\"title\",\"showOrHide\":\"0\",\"surveyId\":1}}', 0, NULL, '2024-03-13 21:32:47');
INSERT INTO `sys_oper_log` VALUES (17, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[]', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\r\n### The error may exist in file [D:\\WorkSpace\\survey-design-master\\surdes-survey\\target\\classes\\mapper\\survey\\QuestionMapper.xml]\r\n### The error may involve com.shure.surdes.survey.mapper.QuestionMapper.updateQuesiotnNo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update tb_question                     WHERE question_id in (                          )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3', '2024-03-13 21:32:50');
INSERT INTO `sys_oper_log` VALUES (18, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[]', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\r\n### The error may exist in file [D:\\WorkSpace\\survey-design-master\\surdes-survey\\target\\classes\\mapper\\survey\\QuestionMapper.xml]\r\n### The error may involve com.shure.surdes.survey.mapper.QuestionMapper.updateQuesiotnNo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update tb_question                     WHERE question_id in (                          )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3', '2024-03-13 21:32:56');
INSERT INTO `sys_oper_log` VALUES (19, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[]', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\r\n### The error may exist in file [D:\\WorkSpace\\survey-design-master\\surdes-survey\\target\\classes\\mapper\\survey\\QuestionMapper.xml]\r\n### The error may involve com.shure.surdes.survey.mapper.QuestionMapper.updateQuesiotnNo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update tb_question                     WHERE question_id in (                          )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3', '2024-03-13 21:32:56');
INSERT INTO `sys_oper_log` VALUES (20, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[{\"questionId\":1,\"questionSort\":1}]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-13 21:33:09');
INSERT INTO `sys_oper_log` VALUES (21, '问卷题目', 3, 'com.shure.surdes.survey.controller.QuestionController.remove()', 'DELETE', 1, 'admin', NULL, '/survey/question/1', '127.0.0.1', '内网IP', '{questionIds=1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-13 21:33:13');
INSERT INTO `sys_oper_log` VALUES (22, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[]', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\r\n### The error may exist in file [D:\\WorkSpace\\survey-design-master\\surdes-survey\\target\\classes\\mapper\\survey\\QuestionMapper.xml]\r\n### The error may involve com.shure.surdes.survey.mapper.QuestionMapper.updateQuesiotnNo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update tb_question                     WHERE question_id in (                          )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3', '2024-03-13 21:33:13');
INSERT INTO `sys_oper_log` VALUES (23, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[]', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\r\n### The error may exist in file [D:\\WorkSpace\\survey-design-master\\surdes-survey\\target\\classes\\mapper\\survey\\QuestionMapper.xml]\r\n### The error may involve com.shure.surdes.survey.mapper.QuestionMapper.updateQuesiotnNo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update tb_question                     WHERE question_id in (                          )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3', '2024-03-13 21:33:18');
INSERT INTO `sys_oper_log` VALUES (24, '问卷修改', 2, 'com.shure.surdes.survey.controller.SurveyController.edit()', 'PUT', 1, 'admin', NULL, '/survey/survey', '127.0.0.1', '内网IP', '{\"surveyType\":\"01\",\"surveyStatus\":\"0\",\"bookCode\":\"\",\"surveyId\":1,\"surveyDesc\":\"111\",\"params\":{},\"userId\":1,\"surveyName\":\"1111\",\"createTime\":1710334400000,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-13 21:36:03');
INSERT INTO `sys_oper_log` VALUES (25, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[]', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\r\n### The error may exist in file [D:\\WorkSpace\\survey-design-master\\surdes-survey\\target\\classes\\mapper\\survey\\QuestionMapper.xml]\r\n### The error may involve com.shure.surdes.survey.mapper.QuestionMapper.updateQuesiotnNo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update tb_question                     WHERE question_id in (                          )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3', '2024-03-13 21:36:35');
INSERT INTO `sys_oper_log` VALUES (26, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[]', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\r\n### The error may exist in file [D:\\WorkSpace\\survey-design-master\\surdes-survey\\target\\classes\\mapper\\survey\\QuestionMapper.xml]\r\n### The error may involve com.shure.surdes.survey.mapper.QuestionMapper.updateQuesiotnNo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update tb_question                     WHERE question_id in (                          )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3', '2024-03-13 21:40:09');
INSERT INTO `sys_oper_log` VALUES (27, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[]', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\r\n### The error may exist in file [D:\\WorkSpace\\survey-design-master\\surdes-survey\\target\\classes\\mapper\\survey\\QuestionMapper.xml]\r\n### The error may involve com.shure.surdes.survey.mapper.QuestionMapper.updateQuesiotnNo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update tb_question                     WHERE question_id in (                          )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3', '2024-03-13 21:45:44');
INSERT INTO `sys_oper_log` VALUES (28, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[]', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\r\n### The error may exist in file [D:\\WorkSpace\\survey-design-master\\surdes-survey\\target\\classes\\mapper\\survey\\QuestionMapper.xml]\r\n### The error may involve com.shure.surdes.survey.mapper.QuestionMapper.updateQuesiotnNo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update tb_question                     WHERE question_id in (                          )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3', '2024-03-17 19:07:44');
INSERT INTO `sys_oper_log` VALUES (29, '问卷题目', 1, 'com.shure.surdes.survey.controller.QuestionController.add()', 'POST', 1, 'admin', NULL, '/survey/question', '127.0.0.1', '内网IP', '{\"surveyId\":1,\"questionId\":1,\"questionNo\":\"1\",\"notEdit\":\"0\",\"showOrHide\":\"0\",\"questionName\":\"你好\",\"params\":{},\"answer\":{\"params\":{}},\"createTime\":1710678741023,\"options\":[],\"questionSort\":1,\"questionType\":\"input\",\"optionDisplay\":\"column\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"answer\":{\"params\":{}},\"createTime\":1710678741023,\"notEdit\":\"0\",\"optionDisplay\":\"column\",\"options\":[],\"params\":{},\"questionId\":1,\"questionName\":\"你好\",\"questionNo\":\"1\",\"questionSort\":1,\"questionType\":\"input\",\"showOrHide\":\"0\",\"surveyId\":1}}', 0, NULL, '2024-03-17 20:32:21');
INSERT INTO `sys_oper_log` VALUES (30, '问卷题目', 1, 'com.shure.surdes.survey.controller.QuestionController.add()', 'POST', 1, 'admin', NULL, '/survey/question', '127.0.0.1', '内网IP', '{\"surveyId\":1,\"questionId\":2,\"questionNo\":\"2\",\"notEdit\":\"0\",\"showOrHide\":\"0\",\"questionName\":\"然后呢\",\"params\":{},\"answer\":{\"params\":{}},\"createTime\":1710678764745,\"options\":[],\"questionSort\":2,\"questionType\":\"input\",\"optionDisplay\":\"column\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"answer\":{\"params\":{}},\"createTime\":1710678764745,\"notEdit\":\"0\",\"optionDisplay\":\"column\",\"options\":[],\"params\":{},\"questionId\":2,\"questionName\":\"然后呢\",\"questionNo\":\"2\",\"questionSort\":2,\"questionType\":\"input\",\"showOrHide\":\"0\",\"surveyId\":1}}', 0, NULL, '2024-03-17 20:32:44');
INSERT INTO `sys_oper_log` VALUES (31, '问卷题目', 1, 'com.shure.surdes.survey.controller.QuestionController.add()', 'POST', 1, 'admin', NULL, '/survey/question', '127.0.0.1', '内网IP', '{\"surveyId\":1,\"questionId\":3,\"questionNo\":\"3\",\"notEdit\":\"0\",\"showOrHide\":\"0\",\"questionName\":\"\",\"params\":{},\"answer\":{\"params\":{}},\"createTime\":1710678814895,\"options\":[{\"surveyId\":1,\"questionId\":3,\"wtqdValue\":\"\",\"logicSymbol\":\"\",\"params\":{},\"hideQuestion\":\"\",\"isWtqd\":\"\",\"wtqdSymbol\":\"\",\"wtqdType\":\"\",\"wtqdDesc\":\"\",\"isExtend\":\"\",\"createTime\":1710678814906,\"optionCode\":\"1\",\"showQuestion\":\"\",\"optionNo\":1,\"optionText\":\"你好\"},{\"surveyId\":1,\"questionId\":3,\"wtqdValue\":\"\",\"logicSymbol\":\"\",\"params\":{},\"hideQuestion\":\"\",\"isWtqd\":\"\",\"wtqdSymbol\":\"\",\"wtqdType\":\"\",\"wtqdDesc\":\"\",\"isExtend\":\"\",\"createTime\":1710678814906,\"optionCode\":\"2\",\"showQuestion\":\"\",\"optionNo\":2,\"optionText\":\"二号\"}],\"questionSort\":3,\"questionType\":\"select\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"answer\":{\"params\":{}},\"createTime\":1710678814895,\"notEdit\":\"0\",\"options\":[{\"createTime\":1710678814906,\"hideQuestion\":\"\",\"isExtend\":\"\",\"isWtqd\":\"\",\"logicSymbol\":\"\",\"optionCode\":\"1\",\"optionNo\":1,\"optionText\":\"你好\",\"params\":{},\"questionId\":3,\"showQuestion\":\"\",\"surveyId\":1,\"wtqdDesc\":\"\",\"wtqdSymbol\":\"\",\"wtqdType\":\"\",\"wtqdValue\":\"\"},{\"createTime\":1710678814906,\"hideQuestion\":\"\",\"isExtend\":\"\",\"isWtqd\":\"\",\"logicSymbol\":\"\",\"optionCode\":\"2\",\"optionNo\":2,\"optionText\":\"二号\",\"params\":{},\"questionId\":3,\"showQuestion\":\"\",\"surveyId\":1,\"wtqdDesc\":\"\",\"wtqdSymbol\":\"\",\"wtqdType\":\"\",\"wtqdValue\":\"\"}],\"params\":{},\"questionId\":3,\"questionName\":\"\",\"questionNo\":\"3\",\"questionSort\":3,\"questionType\":\"select\",\"showOrHide\":\"0\",\"surveyId\":1}}', 0, NULL, '2024-03-17 20:33:34');
INSERT INTO `sys_oper_log` VALUES (32, '问卷题目', 1, 'com.shure.surdes.survey.controller.QuestionController.add()', 'POST', 1, 'admin', NULL, '/survey/question', '127.0.0.1', '内网IP', '{\"surveyId\":1,\"questionId\":3,\"questionNo\":\"3\",\"notEdit\":\"0\",\"showOrHide\":\"0\",\"updateTime\":1710678821975,\"questionName\":\"选择题\",\"params\":{},\"answer\":{\"params\":{}},\"createTime\":1710678814000,\"options\":[{\"surveyId\":1,\"questionId\":3,\"wtqdValue\":\"\",\"logicSymbol\":\"\",\"params\":{},\"hideQuestion\":\"\",\"isWtqd\":\"\",\"wtqdSymbol\":\"\",\"wtqdType\":\"\",\"wtqdDesc\":\"\",\"isExtend\":\"\",\"createTime\":1710678821979,\"optionCode\":\"1\",\"showQuestion\":\"\",\"optionNo\":1,\"optionText\":\"你好\"},{\"surveyId\":1,\"questionId\":3,\"wtqdValue\":\"\",\"logicSymbol\":\"\",\"params\":{},\"hideQuestion\":\"\",\"isWtqd\":\"\",\"wtqdSymbol\":\"\",\"wtqdType\":\"\",\"wtqdDesc\":\"\",\"isExtend\":\"\",\"createTime\":1710678821979,\"optionCode\":\"2\",\"showQuestion\":\"\",\"optionNo\":2,\"optionText\":\"二号\"}],\"questionSort\":3,\"questionType\":\"select\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"answer\":{\"params\":{}},\"createTime\":1710678814000,\"notEdit\":\"0\",\"options\":[{\"createTime\":1710678821979,\"hideQuestion\":\"\",\"isExtend\":\"\",\"isWtqd\":\"\",\"logicSymbol\":\"\",\"optionCode\":\"1\",\"optionNo\":1,\"optionText\":\"你好\",\"params\":{},\"questionId\":3,\"showQuestion\":\"\",\"surveyId\":1,\"wtqdDesc\":\"\",\"wtqdSymbol\":\"\",\"wtqdType\":\"\",\"wtqdValue\":\"\"},{\"createTime\":1710678821979,\"hideQuestion\":\"\",\"isExtend\":\"\",\"isWtqd\":\"\",\"logicSymbol\":\"\",\"optionCode\":\"2\",\"optionNo\":2,\"optionText\":\"二号\",\"params\":{},\"questionId\":3,\"showQuestion\":\"\",\"surveyId\":1,\"wtqdDesc\":\"\",\"wtqdSymbol\":\"\",\"wtqdType\":\"\",\"wtqdValue\":\"\"}],\"params\":{},\"questionId\":3,\"questionName\":\"选择题\",\"questionNo\":\"3\",\"questionSort\":3,\"questionType\":\"select\",\"showOrHide\":\"0\",\"surveyId\":1,\"updateTime\":1710678821975}}', 0, NULL, '2024-03-17 20:33:41');
INSERT INTO `sys_oper_log` VALUES (33, '问卷新增', 1, 'com.shure.surdes.survey.controller.SurveyController.add()', 'POST', 1, 'admin', NULL, '/survey/survey', '127.0.0.1', '内网IP', '{\"surveyId\":2,\"params\":{},\"userId\":1,\"surveyName\":\"2222\",\"createTime\":1710678865468,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-17 20:34:25');
INSERT INTO `sys_oper_log` VALUES (34, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[]', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\r\n### The error may exist in file [D:\\WorkSpace\\survey-design-master\\surdes-survey\\target\\classes\\mapper\\survey\\QuestionMapper.xml]\r\n### The error may involve com.shure.surdes.survey.mapper.QuestionMapper.updateQuesiotnNo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update tb_question                     WHERE question_id in (                          )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3', '2024-03-17 20:40:57');
INSERT INTO `sys_oper_log` VALUES (35, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[]', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\r\n### The error may exist in file [D:\\WorkSpace\\survey-design-master\\surdes-survey\\target\\classes\\mapper\\survey\\QuestionMapper.xml]\r\n### The error may involve com.shure.surdes.survey.mapper.QuestionMapper.updateQuesiotnNo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update tb_question                     WHERE question_id in (                          )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3', '2024-03-17 20:41:44');
INSERT INTO `sys_oper_log` VALUES (36, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[]', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\r\n### The error may exist in file [D:\\WorkSpace\\survey-design-master\\surdes-survey\\target\\classes\\mapper\\survey\\QuestionMapper.xml]\r\n### The error may involve com.shure.surdes.survey.mapper.QuestionMapper.updateQuesiotnNo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update tb_question                     WHERE question_id in (                          )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3', '2024-03-17 20:41:55');
INSERT INTO `sys_oper_log` VALUES (37, '问卷题目', 1, 'com.shure.surdes.survey.controller.QuestionController.add()', 'POST', 1, 'admin', NULL, '/survey/question', '127.0.0.1', '内网IP', '{\"surveyId\":2,\"questionId\":4,\"notEdit\":\"0\",\"showOrHide\":\"0\",\"questionName\":\"111111\",\"params\":{},\"answer\":{\"params\":{}},\"createTime\":1710679531394,\"options\":[],\"questionSort\":1,\"questionType\":\"title\",\"optionDisplay\":\"column\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"answer\":{\"params\":{}},\"createTime\":1710679531394,\"notEdit\":\"0\",\"optionDisplay\":\"column\",\"options\":[],\"params\":{},\"questionId\":4,\"questionName\":\"111111\",\"questionSort\":1,\"questionType\":\"title\",\"showOrHide\":\"0\",\"surveyId\":2}}', 0, NULL, '2024-03-17 20:45:31');
INSERT INTO `sys_oper_log` VALUES (38, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[{\"questionId\":4,\"questionSort\":1}]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-17 20:46:58');
INSERT INTO `sys_oper_log` VALUES (39, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[{\"questionId\":4,\"questionSort\":1}]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-17 20:47:02');
INSERT INTO `sys_oper_log` VALUES (40, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[{\"questionId\":4,\"questionSort\":1}]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-17 20:47:06');
INSERT INTO `sys_oper_log` VALUES (41, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[{\"questionId\":4,\"questionSort\":1}]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-17 20:47:10');
INSERT INTO `sys_oper_log` VALUES (42, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[{\"questionId\":4,\"questionSort\":1}]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-17 20:47:11');
INSERT INTO `sys_oper_log` VALUES (43, '问卷题目', 3, 'com.shure.surdes.survey.controller.QuestionController.remove()', 'DELETE', 1, 'admin', NULL, '/survey/question/4', '127.0.0.1', '内网IP', '{questionIds=4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-17 20:47:13');
INSERT INTO `sys_oper_log` VALUES (44, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[]', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\r\n### The error may exist in file [D:\\WorkSpace\\survey-design-master\\surdes-survey\\target\\classes\\mapper\\survey\\QuestionMapper.xml]\r\n### The error may involve com.shure.surdes.survey.mapper.QuestionMapper.updateQuesiotnNo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update tb_question                     WHERE question_id in (                          )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3', '2024-03-17 20:47:14');
INSERT INTO `sys_oper_log` VALUES (45, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[]', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\r\n### The error may exist in file [D:\\WorkSpace\\survey-design-master\\surdes-survey\\target\\classes\\mapper\\survey\\QuestionMapper.xml]\r\n### The error may involve com.shure.surdes.survey.mapper.QuestionMapper.updateQuesiotnNo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update tb_question                     WHERE question_id in (                          )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3', '2024-03-17 20:47:25');
INSERT INTO `sys_oper_log` VALUES (46, '问卷题目', 1, 'com.shure.surdes.survey.controller.QuestionController.add()', 'POST', 1, 'admin', NULL, '/survey/question', '127.0.0.1', '内网IP', '{\"surveyId\":2,\"questionId\":5,\"questionNo\":\"1\",\"notEdit\":\"0\",\"showOrHide\":\"0\",\"questionName\":\"111111\",\"params\":{},\"answer\":{\"params\":{}},\"createTime\":1710679668297,\"options\":[],\"questionSort\":1,\"questionType\":\"input\",\"optionDisplay\":\"column\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"answer\":{\"params\":{}},\"createTime\":1710679668297,\"notEdit\":\"0\",\"optionDisplay\":\"column\",\"options\":[],\"params\":{},\"questionId\":5,\"questionName\":\"111111\",\"questionNo\":\"1\",\"questionSort\":1,\"questionType\":\"input\",\"showOrHide\":\"0\",\"surveyId\":2}}', 0, NULL, '2024-03-17 20:47:48');
INSERT INTO `sys_oper_log` VALUES (47, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[]', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\r\n### The error may exist in file [D:\\WorkSpace\\survey-design-master\\surdes-survey\\target\\classes\\mapper\\survey\\QuestionMapper.xml]\r\n### The error may involve com.shure.surdes.survey.mapper.QuestionMapper.updateQuesiotnNo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update tb_question                     WHERE question_id in (                          )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3', '2024-03-17 20:48:20');
INSERT INTO `sys_oper_log` VALUES (48, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[]', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\r\n### The error may exist in file [D:\\WorkSpace\\survey-design-master\\surdes-survey\\target\\classes\\mapper\\survey\\QuestionMapper.xml]\r\n### The error may involve com.shure.surdes.survey.mapper.QuestionMapper.updateQuesiotnNo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update tb_question                     WHERE question_id in (                          )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE question_id in (\n            \n            )\' at line 3', '2024-03-17 20:48:29');
INSERT INTO `sys_oper_log` VALUES (49, '问卷题目', 3, 'com.shure.surdes.survey.controller.QuestionController.remove()', 'DELETE', 1, 'admin', NULL, '/survey/question/5', '127.0.0.1', '内网IP', '{questionIds=5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-17 20:50:59');
INSERT INTO `sys_oper_log` VALUES (50, '问卷题目', 1, 'com.shure.surdes.survey.controller.QuestionController.add()', 'POST', 1, 'admin', NULL, '/survey/question', '127.0.0.1', '内网IP', '{\"surveyId\":2,\"questionId\":6,\"questionNo\":\"1\",\"notEdit\":\"0\",\"showOrHide\":\"0\",\"questionName\":\"\",\"params\":{},\"answer\":{\"params\":{}},\"createTime\":1710679871577,\"options\":[],\"questionSort\":2,\"questionType\":\"input\",\"optionDisplay\":\"column\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"answer\":{\"params\":{}},\"createTime\":1710679871577,\"notEdit\":\"0\",\"optionDisplay\":\"column\",\"options\":[],\"params\":{},\"questionId\":6,\"questionName\":\"\",\"questionNo\":\"1\",\"questionSort\":2,\"questionType\":\"input\",\"showOrHide\":\"0\",\"surveyId\":2}}', 0, NULL, '2024-03-17 20:51:11');
INSERT INTO `sys_oper_log` VALUES (51, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[{\"questionId\":6,\"questionNo\":1,\"questionSort\":1}]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-17 20:52:21');
INSERT INTO `sys_oper_log` VALUES (52, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[{\"questionId\":6,\"questionNo\":1,\"questionSort\":1}]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-17 20:52:24');
INSERT INTO `sys_oper_log` VALUES (53, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[{\"questionId\":6,\"questionNo\":1,\"questionSort\":1}]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-17 20:52:27');
INSERT INTO `sys_oper_log` VALUES (54, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[{\"questionId\":6,\"questionNo\":1,\"questionSort\":1}]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-17 20:52:28');
INSERT INTO `sys_oper_log` VALUES (55, '问卷题目', 3, 'com.shure.surdes.survey.controller.QuestionController.remove()', 'DELETE', 1, 'admin', NULL, '/survey/question/6', '127.0.0.1', '内网IP', '{questionIds=6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-17 20:52:30');
INSERT INTO `sys_oper_log` VALUES (56, '问卷题目', 1, 'com.shure.surdes.survey.controller.QuestionController.add()', 'POST', 1, 'admin', NULL, '/survey/question', '127.0.0.1', '内网IP', '{\"surveyId\":2,\"questionId\":7,\"questionNo\":\"1\",\"notEdit\":\"0\",\"showOrHide\":\"0\",\"questionName\":\"11111\",\"params\":{},\"answer\":{\"params\":{}},\"createTime\":1710680006485,\"options\":[],\"questionSort\":1,\"questionType\":\"input\",\"optionDisplay\":\"column\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"answer\":{\"params\":{}},\"createTime\":1710680006485,\"notEdit\":\"0\",\"optionDisplay\":\"column\",\"options\":[],\"params\":{},\"questionId\":7,\"questionName\":\"11111\",\"questionNo\":\"1\",\"questionSort\":1,\"questionType\":\"input\",\"showOrHide\":\"0\",\"surveyId\":2}}', 0, NULL, '2024-03-17 20:53:26');
INSERT INTO `sys_oper_log` VALUES (57, '问卷题目', 3, 'com.shure.surdes.survey.controller.QuestionController.remove()', 'DELETE', 1, 'admin', NULL, '/survey/question/7', '127.0.0.1', '内网IP', '{questionIds=7}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-17 20:53:44');
INSERT INTO `sys_oper_log` VALUES (58, '问卷题目', 1, 'com.shure.surdes.survey.controller.QuestionController.add()', 'POST', 1, 'admin', NULL, '/survey/question', '127.0.0.1', '内网IP', '{\"surveyId\":2,\"questionId\":8,\"notEdit\":\"0\",\"showOrHide\":\"0\",\"questionName\":\"111111\",\"params\":{},\"answer\":{\"params\":{}},\"createTime\":1710680044174,\"options\":[],\"questionSort\":1,\"questionType\":\"title\",\"optionDisplay\":\"column\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"answer\":{\"params\":{}},\"createTime\":1710680044174,\"notEdit\":\"0\",\"optionDisplay\":\"column\",\"options\":[],\"params\":{},\"questionId\":8,\"questionName\":\"111111\",\"questionSort\":1,\"questionType\":\"title\",\"showOrHide\":\"0\",\"surveyId\":2}}', 0, NULL, '2024-03-17 20:54:04');
INSERT INTO `sys_oper_log` VALUES (59, '问卷题目', 1, 'com.shure.surdes.survey.controller.QuestionController.add()', 'POST', 1, 'admin', NULL, '/survey/question', '127.0.0.1', '内网IP', '{\"surveyId\":2,\"questionId\":9,\"questionNo\":\"1\",\"notEdit\":\"0\",\"showOrHide\":\"0\",\"questionName\":\"1321325465\",\"params\":{},\"answer\":{\"params\":{}},\"createTime\":1710680085307,\"options\":[{\"surveyId\":2,\"questionId\":9,\"wtqdValue\":\"\",\"logicSymbol\":\"\",\"params\":{},\"hideQuestion\":\"\",\"isWtqd\":\"\",\"wtqdSymbol\":\"\",\"wtqdType\":\"\",\"wtqdDesc\":\"\",\"isExtend\":\"\",\"createTime\":1710680085319,\"optionCode\":\"1\",\"showQuestion\":\"\",\"optionNo\":1,\"optionText\":\"选项1\"}],\"questionSort\":2,\"questionType\":\"radio\",\"optionDisplay\":\"column\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"answer\":{\"params\":{}},\"createTime\":1710680085307,\"notEdit\":\"0\",\"optionDisplay\":\"column\",\"options\":[{\"createTime\":1710680085319,\"hideQuestion\":\"\",\"isExtend\":\"\",\"isWtqd\":\"\",\"logicSymbol\":\"\",\"optionCode\":\"1\",\"optionNo\":1,\"optionText\":\"选项1\",\"params\":{},\"questionId\":9,\"showQuestion\":\"\",\"surveyId\":2,\"wtqdDesc\":\"\",\"wtqdSymbol\":\"\",\"wtqdType\":\"\",\"wtqdValue\":\"\"}],\"params\":{},\"questionId\":9,\"questionName\":\"1321325465\",\"questionNo\":\"1\",\"questionSort\":2,\"questionType\":\"radio\",\"showOrHide\":\"0\",\"surveyId\":2}}', 0, NULL, '2024-03-17 20:54:45');
INSERT INTO `sys_oper_log` VALUES (60, '问卷题目', 1, 'com.shure.surdes.survey.controller.QuestionController.add()', 'POST', 1, 'admin', NULL, '/survey/question', '127.0.0.1', '内网IP', '{\"surveyId\":2,\"questionId\":9,\"questionNo\":\"1\",\"notEdit\":\"0\",\"showOrHide\":\"0\",\"updateTime\":1710680090845,\"questionName\":\"1321325465\",\"params\":{},\"answer\":{\"params\":{}},\"createTime\":1710680085000,\"options\":[{\"surveyId\":2,\"questionId\":9,\"wtqdValue\":\"\",\"logicSymbol\":\"\",\"params\":{},\"hideQuestion\":\"\",\"isWtqd\":\"\",\"wtqdSymbol\":\"\",\"wtqdType\":\"\",\"wtqdDesc\":\"\",\"isExtend\":\"\",\"createTime\":1710680090856,\"optionCode\":\"1\",\"showQuestion\":\"\",\"optionNo\":1,\"optionText\":\"选项1\"}],\"questionSort\":2,\"questionType\":\"radio\",\"optionDisplay\":\"column\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"answer\":{\"params\":{}},\"createTime\":1710680085000,\"notEdit\":\"0\",\"optionDisplay\":\"column\",\"options\":[{\"createTime\":1710680090856,\"hideQuestion\":\"\",\"isExtend\":\"\",\"isWtqd\":\"\",\"logicSymbol\":\"\",\"optionCode\":\"1\",\"optionNo\":1,\"optionText\":\"选项1\",\"params\":{},\"questionId\":9,\"showQuestion\":\"\",\"surveyId\":2,\"wtqdDesc\":\"\",\"wtqdSymbol\":\"\",\"wtqdType\":\"\",\"wtqdValue\":\"\"}],\"params\":{},\"questionId\":9,\"questionName\":\"1321325465\",\"questionNo\":\"1\",\"questionSort\":2,\"questionType\":\"radio\",\"showOrHide\":\"0\",\"surveyId\":2,\"updateTime\":1710680090845}}', 0, NULL, '2024-03-17 20:54:50');
INSERT INTO `sys_oper_log` VALUES (61, '问卷题目', 3, 'com.shure.surdes.survey.controller.QuestionController.remove()', 'DELETE', 1, 'admin', NULL, '/survey/question/9', '127.0.0.1', '内网IP', '{questionIds=9}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-17 20:55:08');
INSERT INTO `sys_oper_log` VALUES (62, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[{\"questionId\":8,\"questionSort\":1}]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-17 20:55:08');
INSERT INTO `sys_oper_log` VALUES (63, '问卷题目', 3, 'com.shure.surdes.survey.controller.QuestionController.remove()', 'DELETE', 1, 'admin', NULL, '/survey/question/8', '127.0.0.1', '内网IP', '{questionIds=8}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-17 20:55:10');
INSERT INTO `sys_oper_log` VALUES (64, '问卷题目', 1, 'com.shure.surdes.survey.controller.QuestionController.add()', 'POST', 1, 'admin', NULL, '/survey/question', '127.0.0.1', '内网IP', '{\"surveyId\":2,\"questionId\":10,\"notEdit\":\"0\",\"showOrHide\":\"0\",\"questionName\":\"23242314\",\"params\":{},\"answer\":{\"params\":{}},\"createTime\":1710680205319,\"options\":[],\"questionSort\":1,\"questionType\":\"title\",\"optionDisplay\":\"column\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"answer\":{\"params\":{}},\"createTime\":1710680205319,\"notEdit\":\"0\",\"optionDisplay\":\"column\",\"options\":[],\"params\":{},\"questionId\":10,\"questionName\":\"23242314\",\"questionSort\":1,\"questionType\":\"title\",\"showOrHide\":\"0\",\"surveyId\":2}}', 0, NULL, '2024-03-17 20:56:45');
INSERT INTO `sys_oper_log` VALUES (65, '问卷题目', 3, 'com.shure.surdes.survey.controller.QuestionController.remove()', 'DELETE', 1, 'admin', NULL, '/survey/question/10', '127.0.0.1', '内网IP', '{questionIds=10}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-17 20:59:00');
INSERT INTO `sys_oper_log` VALUES (66, '问卷题目', 1, 'com.shure.surdes.survey.controller.QuestionController.add()', 'POST', 1, 'admin', NULL, '/survey/question', '127.0.0.1', '内网IP', '{\"surveyId\":2,\"questionId\":11,\"questionNo\":\"1\",\"notEdit\":\"0\",\"showOrHide\":\"0\",\"questionName\":\"测试\",\"params\":{},\"answer\":{\"params\":{}},\"createTime\":1710680364785,\"options\":[{\"surveyId\":2,\"questionId\":11,\"wtqdValue\":\"\",\"logicSymbol\":\"\",\"params\":{},\"hideQuestion\":\"\",\"isWtqd\":\"\",\"wtqdSymbol\":\"\",\"wtqdType\":\"\",\"wtqdDesc\":\"\",\"isExtend\":\"\",\"createTime\":1710680467817,\"optionCode\":\"1\",\"showQuestion\":\"\",\"optionNo\":1,\"optionText\":\"选项1\"}],\"questionSort\":2,\"questionType\":\"radio\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"answer\":{\"params\":{}},\"createTime\":1710680364785,\"notEdit\":\"0\",\"options\":[{\"createTime\":1710680467817,\"hideQuestion\":\"\",\"isExtend\":\"\",\"isWtqd\":\"\",\"logicSymbol\":\"\",\"optionCode\":\"1\",\"optionNo\":1,\"optionText\":\"选项1\",\"params\":{},\"questionId\":11,\"showQuestion\":\"\",\"surveyId\":2,\"wtqdDesc\":\"\",\"wtqdSymbol\":\"\",\"wtqdType\":\"\",\"wtqdValue\":\"\"}],\"params\":{},\"questionId\":11,\"questionName\":\"测试\",\"questionNo\":\"1\",\"questionSort\":2,\"questionType\":\"radio\",\"showOrHide\":\"0\",\"surveyId\":2}}', 0, NULL, '2024-03-17 21:01:07');
INSERT INTO `sys_oper_log` VALUES (67, '问卷题目', 3, 'com.shure.surdes.survey.controller.QuestionController.remove()', 'DELETE', 1, 'admin', NULL, '/survey/question/11', '127.0.0.1', '内网IP', '{questionIds=11}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-17 21:07:20');
INSERT INTO `sys_oper_log` VALUES (68, '问卷题目', 1, 'com.shure.surdes.survey.controller.QuestionController.add()', 'POST', 1, 'admin', NULL, '/survey/question', '127.0.0.1', '内网IP', '{\"surveyId\":2,\"questionId\":12,\"notEdit\":\"0\",\"showOrHide\":\"0\",\"questionName\":\"11111\",\"params\":{},\"answer\":{\"params\":{}},\"createTime\":1710680858828,\"options\":[],\"questionSort\":1,\"questionType\":\"textarea\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"answer\":{\"params\":{}},\"createTime\":1710680858828,\"notEdit\":\"0\",\"options\":[],\"params\":{},\"questionId\":12,\"questionName\":\"11111\",\"questionSort\":1,\"questionType\":\"textarea\",\"showOrHide\":\"0\",\"surveyId\":2}}', 0, NULL, '2024-03-17 21:07:38');
INSERT INTO `sys_oper_log` VALUES (69, '问卷题目', 1, 'com.shure.surdes.survey.controller.QuestionController.add()', 'POST', 1, 'admin', NULL, '/survey/question', '127.0.0.1', '内网IP', '{\"surveyId\":2,\"questionId\":13,\"questionNo\":\"2\",\"notEdit\":\"0\",\"showOrHide\":\"0\",\"questionName\":\"1222211\",\"params\":{},\"answer\":{\"params\":{}},\"createTime\":1710680865820,\"options\":[{\"surveyId\":2,\"questionId\":13,\"wtqdValue\":\"\",\"logicSymbol\":\"\",\"params\":{},\"hideQuestion\":\"\",\"isWtqd\":\"\",\"wtqdSymbol\":\"\",\"wtqdType\":\"\",\"wtqdDesc\":\"\",\"isExtend\":\"\",\"createTime\":1710680865831,\"optionCode\":\"1\",\"showQuestion\":\"\",\"optionNo\":1,\"optionText\":\"选项1\"}],\"questionSort\":2,\"questionType\":\"radio\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"answer\":{\"params\":{}},\"createTime\":1710680865820,\"notEdit\":\"0\",\"options\":[{\"createTime\":1710680865831,\"hideQuestion\":\"\",\"isExtend\":\"\",\"isWtqd\":\"\",\"logicSymbol\":\"\",\"optionCode\":\"1\",\"optionNo\":1,\"optionText\":\"选项1\",\"params\":{},\"questionId\":13,\"showQuestion\":\"\",\"surveyId\":2,\"wtqdDesc\":\"\",\"wtqdSymbol\":\"\",\"wtqdType\":\"\",\"wtqdValue\":\"\"}],\"params\":{},\"questionId\":13,\"questionName\":\"1222211\",\"questionNo\":\"2\",\"questionSort\":2,\"questionType\":\"radio\",\"showOrHide\":\"0\",\"surveyId\":2}}', 0, NULL, '2024-03-17 21:07:45');
INSERT INTO `sys_oper_log` VALUES (70, '问卷题目', 3, 'com.shure.surdes.survey.controller.QuestionController.remove()', 'DELETE', 1, 'admin', NULL, '/survey/question/12', '127.0.0.1', '内网IP', '{questionIds=12}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-17 21:07:57');
INSERT INTO `sys_oper_log` VALUES (71, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[{\"questionId\":13,\"questionNo\":1,\"questionSort\":1}]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-17 21:07:57');
INSERT INTO `sys_oper_log` VALUES (72, '问卷题目', 3, 'com.shure.surdes.survey.controller.QuestionController.remove()', 'DELETE', 1, 'admin', NULL, '/survey/question/13', '127.0.0.1', '内网IP', '{questionIds=13}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-17 21:07:59');
INSERT INTO `sys_oper_log` VALUES (73, '问卷题目', 1, 'com.shure.surdes.survey.controller.QuestionController.add()', 'POST', 1, 'admin', NULL, '/survey/question', '127.0.0.1', '内网IP', '{\"surveyId\":2,\"questionId\":14,\"notEdit\":\"0\",\"showOrHide\":\"0\",\"questionName\":\"41342\",\"params\":{},\"answer\":{\"params\":{}},\"createTime\":1710682111294,\"options\":[],\"questionSort\":1,\"questionType\":\"title\",\"optionDisplay\":\"column\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"answer\":{\"params\":{}},\"createTime\":1710682111294,\"notEdit\":\"0\",\"optionDisplay\":\"column\",\"options\":[],\"params\":{},\"questionId\":14,\"questionName\":\"41342\",\"questionSort\":1,\"questionType\":\"title\",\"showOrHide\":\"0\",\"surveyId\":2}}', 0, NULL, '2024-03-17 21:28:31');
INSERT INTO `sys_oper_log` VALUES (74, '问卷题目', 3, 'com.shure.surdes.survey.controller.QuestionController.remove()', 'DELETE', 1, 'admin', NULL, '/survey/question/14', '127.0.0.1', '内网IP', '{questionIds=14}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-17 21:28:51');
INSERT INTO `sys_oper_log` VALUES (75, '问卷题目', 1, 'com.shure.surdes.survey.controller.QuestionController.add()', 'POST', 1, 'admin', NULL, '/survey/question', '127.0.0.1', '内网IP', '{\"surveyId\":2,\"questionId\":15,\"notEdit\":\"0\",\"showOrHide\":\"0\",\"questionName\":\"1111\",\"params\":{},\"answer\":{\"params\":{}},\"createTime\":1710769235139,\"options\":[],\"questionType\":\"title\",\"optionDisplay\":\"column\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"answer\":{\"params\":{}},\"createTime\":1710769235139,\"notEdit\":\"0\",\"optionDisplay\":\"column\",\"options\":[],\"params\":{},\"questionId\":15,\"questionName\":\"1111\",\"questionType\":\"title\",\"showOrHide\":\"0\",\"surveyId\":2}}', 0, NULL, '2024-03-18 21:40:35');
INSERT INTO `sys_oper_log` VALUES (76, '问卷题目', 3, 'com.shure.surdes.survey.controller.QuestionController.remove()', 'DELETE', 1, 'admin', NULL, '/survey/question/15', '127.0.0.1', '内网IP', '{questionIds=15}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-18 21:45:35');
INSERT INTO `sys_oper_log` VALUES (77, '问卷题目', 1, 'com.shure.surdes.survey.controller.QuestionController.add()', 'POST', 1, 'admin', NULL, '/survey/question', '127.0.0.1', '内网IP', '{\"surveyId\":2,\"questionId\":16,\"notEdit\":\"0\",\"showOrHide\":\"0\",\"questionName\":\"1111111\",\"params\":{},\"answer\":{\"params\":{}},\"createTime\":1710769543104,\"options\":[],\"questionType\":\"title\",\"optionDisplay\":\"column\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"answer\":{\"params\":{}},\"createTime\":1710769543104,\"notEdit\":\"0\",\"optionDisplay\":\"column\",\"options\":[],\"params\":{},\"questionId\":16,\"questionName\":\"1111111\",\"questionType\":\"title\",\"showOrHide\":\"0\",\"surveyId\":2}}', 0, NULL, '2024-03-18 21:45:43');
INSERT INTO `sys_oper_log` VALUES (78, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[{\"questionId\":16,\"questionSort\":1}]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-18 21:45:49');
INSERT INTO `sys_oper_log` VALUES (79, '问卷题目', 1, 'com.shure.surdes.survey.controller.QuestionController.add()', 'POST', 1, 'admin', NULL, '/survey/question', '127.0.0.1', '内网IP', '{\"surveyId\":2,\"questionId\":17,\"validateRule\":\"notEmpty\",\"notEdit\":\"0\",\"showOrHide\":\"0\",\"questionName\":\"11111\",\"params\":{},\"answer\":{\"params\":{}},\"createTime\":1710769689891,\"options\":[{\"surveyId\":2,\"questionId\":17,\"wtqdValue\":\"\",\"logicSymbol\":\"\",\"params\":{},\"hideQuestion\":\"\",\"isWtqd\":\"\",\"wtqdSymbol\":\"\",\"wtqdType\":\"\",\"wtqdDesc\":\"\",\"isExtend\":\"\",\"createTime\":1710769689905,\"optionCode\":\"1\",\"showQuestion\":\"\",\"optionNo\":1,\"optionText\":\"111\"},{\"surveyId\":2,\"questionId\":17,\"wtqdValue\":\"\",\"logicSymbol\":\"\",\"params\":{},\"hideQuestion\":\"\",\"isWtqd\":\"\",\"wtqdSymbol\":\"\",\"wtqdType\":\"\",\"wtqdDesc\":\"\",\"isExtend\":\"\",\"createTime\":1710769689905,\"optionCode\":\"2\",\"showQuestion\":\"\",\"optionNo\":2,\"optionText\":\"222\"},{\"surveyId\":2,\"questionId\":17,\"wtqdValue\":\"\",\"logicSymbol\":\"\",\"params\":{},\"hideQuestion\":\"\",\"isWtqd\":\"\",\"wtqdSymbol\":\"\",\"wtqdType\":\"\",\"wtqdDesc\":\"\",\"isExtend\":\"\",\"createTime\":1710769689905,\"optionCode\":\"3\",\"showQuestion\":\"\",\"optionNo\":3,\"optionText\":\"3333\"}],\"questionType\":\"radio\",\"optionDisplay\":\"column\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"answer\":{\"params\":{}},\"createTime\":1710769689891,\"notEdit\":\"0\",\"optionDisplay\":\"column\",\"options\":[{\"createTime\":1710769689905,\"hideQuestion\":\"\",\"isExtend\":\"\",\"isWtqd\":\"\",\"logicSymbol\":\"\",\"optionCode\":\"1\",\"optionNo\":1,\"optionText\":\"111\",\"params\":{},\"questionId\":17,\"showQuestion\":\"\",\"surveyId\":2,\"wtqdDesc\":\"\",\"wtqdSymbol\":\"\",\"wtqdType\":\"\",\"wtqdValue\":\"\"},{\"createTime\":1710769689905,\"hideQuestion\":\"\",\"isExtend\":\"\",\"isWtqd\":\"\",\"logicSymbol\":\"\",\"optionCode\":\"2\",\"optionNo\":2,\"optionText\":\"222\",\"params\":{},\"questionId\":17,\"showQuestion\":\"\",\"surveyId\":2,\"wtqdDesc\":\"\",\"wtqdSymbol\":\"\",\"wtqdType\":\"\",\"wtqdValue\":\"\"},{\"createTime\":1710769689905,\"hideQuestion\":\"\",\"isExtend\":\"\",\"isWtqd\":\"\",\"logicSymbol\":\"\",\"optionCode\":\"3\",\"optionNo\":3,\"optionText\":\"3333\",\"params\":{},\"questionId\":17,\"showQuestion\":\"\",\"surveyId\":2,\"wtqdDesc\":\"\",\"wtqdSymbol\":\"\",\"wtqdType\":\"\",\"wtqdValue\":\"\"}],\"params\":{},\"questionId\":17,\"questionName\":\"11111\",\"questionType\":\"radio\",\"showOrHide\":\"0\",\"surveyId\":2,\"validateRule\":\"notEmpty\"}}', 0, NULL, '2024-03-18 21:48:09');
INSERT INTO `sys_oper_log` VALUES (80, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[{\"questionId\":16,\"questionSort\":1},{\"questionId\":17,\"questionNo\":1,\"questionSort\":2}]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-18 21:48:21');
INSERT INTO `sys_oper_log` VALUES (81, '问卷题目', 1, 'com.shure.surdes.survey.controller.QuestionController.add()', 'POST', 1, 'admin', NULL, '/survey/question', '127.0.0.1', '内网IP', '{\"surveyId\":2,\"questionId\":18,\"notEdit\":\"0\",\"showOrHide\":\"0\",\"questionName\":\"1212123213123\",\"params\":{},\"answer\":{\"params\":{}},\"createTime\":1710769812685,\"options\":[],\"questionType\":\"text\",\"optionDisplay\":\"column\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"answer\":{\"params\":{}},\"createTime\":1710769812685,\"notEdit\":\"0\",\"optionDisplay\":\"column\",\"options\":[],\"params\":{},\"questionId\":18,\"questionName\":\"1212123213123\",\"questionType\":\"text\",\"showOrHide\":\"0\",\"surveyId\":2}}', 0, NULL, '2024-03-18 21:50:12');
INSERT INTO `sys_oper_log` VALUES (82, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[{\"questionId\":16,\"questionSort\":1},{\"questionId\":17,\"questionNo\":1,\"questionSort\":2},{\"questionId\":18,\"questionSort\":3}]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-18 21:50:15');
INSERT INTO `sys_oper_log` VALUES (83, '问卷题目', 1, 'com.shure.surdes.survey.controller.QuestionController.add()', 'POST', 1, 'admin', NULL, '/survey/question', '127.0.0.1', '内网IP', '{\"surveyId\":2,\"questionId\":19,\"validateRule\":\"notEmpty\",\"notEdit\":\"0\",\"showOrHide\":\"0\",\"questionName\":\"111123213\",\"params\":{},\"answer\":{\"params\":{}},\"createTime\":1710769830454,\"options\":[],\"questionType\":\"input\",\"optionDisplay\":\"column\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"answer\":{\"params\":{}},\"createTime\":1710769830454,\"notEdit\":\"0\",\"optionDisplay\":\"column\",\"options\":[],\"params\":{},\"questionId\":19,\"questionName\":\"111123213\",\"questionType\":\"input\",\"showOrHide\":\"0\",\"surveyId\":2,\"validateRule\":\"notEmpty\"}}', 0, NULL, '2024-03-18 21:50:30');
INSERT INTO `sys_oper_log` VALUES (84, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[{\"questionId\":16,\"questionSort\":1},{\"questionId\":17,\"questionNo\":1,\"questionSort\":2},{\"questionId\":18,\"questionSort\":3},{\"questionId\":19,\"questionNo\":2,\"questionSort\":4}]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-18 21:50:30');
INSERT INTO `sys_oper_log` VALUES (85, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[{\"questionId\":16,\"questionSort\":1},{\"questionId\":18,\"questionSort\":2},{\"questionId\":17,\"questionNo\":1,\"questionSort\":3},{\"questionId\":19,\"questionNo\":2,\"questionSort\":4}]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-18 21:50:42');
INSERT INTO `sys_oper_log` VALUES (86, '问卷题目', 3, 'com.shure.surdes.survey.controller.QuestionController.remove()', 'DELETE', 1, 'admin', NULL, '/survey/question/19', '127.0.0.1', '内网IP', '{questionIds=19}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-18 21:50:55');
INSERT INTO `sys_oper_log` VALUES (87, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[{\"questionId\":16,\"questionSort\":1},{\"questionId\":18,\"questionSort\":2},{\"questionId\":17,\"questionNo\":1,\"questionSort\":3}]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-18 21:50:55');
INSERT INTO `sys_oper_log` VALUES (88, '问卷题目', 1, 'com.shure.surdes.survey.controller.QuestionController.add()', 'POST', 1, 'admin', NULL, '/survey/question', '127.0.0.1', '内网IP', '{\"surveyId\":2,\"questionId\":20,\"notEdit\":\"0\",\"showOrHide\":\"0\",\"questionName\":\"2334214123\",\"params\":{},\"answer\":{\"params\":{}},\"createTime\":1710769870201,\"options\":[{\"surveyId\":2,\"questionId\":20,\"wtqdValue\":\"\",\"logicSymbol\":\"\",\"params\":{},\"hideQuestion\":\"\",\"isWtqd\":\"\",\"wtqdSymbol\":\"\",\"wtqdType\":\"\",\"wtqdDesc\":\"\",\"isExtend\":\"\",\"createTime\":1710769870217,\"optionCode\":\"1\",\"showQuestion\":\"\",\"optionNo\":1,\"optionText\":\"选项1\"}],\"questionType\":\"radio\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"answer\":{\"params\":{}},\"createTime\":1710769870201,\"notEdit\":\"0\",\"options\":[{\"createTime\":1710769870217,\"hideQuestion\":\"\",\"isExtend\":\"\",\"isWtqd\":\"\",\"logicSymbol\":\"\",\"optionCode\":\"1\",\"optionNo\":1,\"optionText\":\"选项1\",\"params\":{},\"questionId\":20,\"showQuestion\":\"\",\"surveyId\":2,\"wtqdDesc\":\"\",\"wtqdSymbol\":\"\",\"wtqdType\":\"\",\"wtqdValue\":\"\"}],\"params\":{},\"questionId\":20,\"questionName\":\"2334214123\",\"questionType\":\"radio\",\"showOrHide\":\"0\",\"surveyId\":2}}', 0, NULL, '2024-03-18 21:51:10');
INSERT INTO `sys_oper_log` VALUES (89, '更新问题序号和排序', 2, 'com.shure.surdes.survey.controller.QuestionController.updateQueNo()', 'PUT', 1, 'admin', NULL, '/survey/question/updateQueNo', '127.0.0.1', '内网IP', '[{\"questionId\":16,\"questionSort\":1},{\"questionId\":18,\"questionSort\":2},{\"questionId\":17,\"questionNo\":1,\"questionSort\":3},{\"questionId\":20,\"questionNo\":2,\"questionSort\":4}]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-18 21:51:10');
INSERT INTO `sys_oper_log` VALUES (90, '问卷发布', 3, 'com.shure.surdes.survey.controller.SurveyController.publish()', 'PUT', 1, 'admin', NULL, '/survey/survey/publish/2', '127.0.0.1', '内网IP', '[2]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-18 21:54:48');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2024-03-12 22:37:06', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2024-03-12 22:37:06', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2024-03-12 22:37:06', '', NULL, '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-04-14 21:37:40', 'admin', '2024-03-12 22:37:06', '', '2024-04-14 21:37:40', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-03-12 22:37:06', 'admin', '2024-03-12 22:37:06', '', NULL, '测试员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

-- ----------------------------
-- Table structure for tb_answer
-- ----------------------------
DROP TABLE IF EXISTS `tb_answer`;
CREATE TABLE `tb_answer`  (
  `answer_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '答案主键',
  `survey_id` bigint(20) NOT NULL COMMENT '问卷主键',
  `question_id` bigint(20) NOT NULL COMMENT '问题主键',
  `option_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '选项编码',
  `answer_value` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '答案结果',
  `extend_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '扩展填空值',
  `user_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '答题人唯一标识',
  `user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '答题人姓名',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `book_code` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '账套',
  PRIMARY KEY (`answer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '问卷答案结果表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_answer
-- ----------------------------

-- ----------------------------
-- Table structure for tb_answer_json
-- ----------------------------
DROP TABLE IF EXISTS `tb_answer_json`;
CREATE TABLE `tb_answer_json`  (
  `an_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '答案主键',
  `survey_id` bigint(20) NOT NULL COMMENT '问卷主键',
  `answer_json` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '答案结果，json格式存储',
  `user_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '答题人唯一标识',
  `user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '答题人姓名',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `book_code` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '账套',
  PRIMARY KEY (`an_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '问卷答案结果表json' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_answer_json
-- ----------------------------

-- ----------------------------
-- Table structure for tb_options
-- ----------------------------
DROP TABLE IF EXISTS `tb_options`;
CREATE TABLE `tb_options`  (
  `option_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '选项主键',
  `survey_id` bigint(20) NOT NULL COMMENT '问卷主键',
  `question_id` bigint(20) NOT NULL COMMENT '问题主键',
  `option_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '选项值',
  `option_text` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '选项文本',
  `option_no` int(8) NOT NULL COMMENT '选项序号',
  `hide_question` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '逻辑隐藏题',
  `show_question` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '逻辑显示题',
  `is_wtqd` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '是否设置问题（1：是，0：否）',
  `wtqd_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '问题清单分类',
  `wtqd_value` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '比较值',
  `wtqd_symbol` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '比较逻辑（使用字典）',
  `wtqd_desc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '问题清单描述',
  `is_extend` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '是否扩展填空（1：是，0：否）',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `logic_symbol` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示逻辑比较符',
  `book_code` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '帐套编码',
  PRIMARY KEY (`option_id`) USING BTREE,
  INDEX `inx_question_id`(`question_id`) USING BTREE,
  INDEX `inx_options_no`(`option_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '问卷选项表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_options
-- ----------------------------
INSERT INTO `tb_options` VALUES (8, 2, 13, '1', '选项1', 1, '', '', '', '', '', '', '', '', '2024-03-17 21:07:46', '', NULL);
INSERT INTO `tb_options` VALUES (9, 2, 17, '1', '111', 1, '', '', '', '', '', '', '', '', '2024-03-18 21:48:10', '', NULL);
INSERT INTO `tb_options` VALUES (10, 2, 17, '2', '222', 2, '', '', '', '', '', '', '', '', '2024-03-18 21:48:10', '', NULL);
INSERT INTO `tb_options` VALUES (11, 2, 17, '3', '3333', 3, '', '', '', '', '', '', '', '', '2024-03-18 21:48:10', '', NULL);
INSERT INTO `tb_options` VALUES (12, 2, 20, '1', '选项1', 1, '', '', '', '', '', '', '', '', '2024-03-18 21:51:10', '', NULL);

-- ----------------------------
-- Table structure for tb_question
-- ----------------------------
DROP TABLE IF EXISTS `tb_question`;
CREATE TABLE `tb_question`  (
  `question_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '题目主键',
  `survey_id` bigint(20) NOT NULL COMMENT '问卷主键',
  `question_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '题目编号',
  `question_sort` int(8) NULL DEFAULT 1 COMMENT '排序字段',
  `question_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '题目名称',
  `question_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'input' COMMENT '题目类型',
  `validate_rule` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '校验规则',
  `show_or_hide` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '初始是否隐藏（1：是，0：否）',
  `question_attr` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '题目属性',
  `relation_result` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联结果字段',
  `not_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '只读标识 1 为不能编辑',
  `default_value` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '默认值',
  `formula` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '结果计算公式',
  `option_display` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'column' COMMENT '选项显示方向',
  `book_code` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账套',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`question_id`) USING BTREE,
  INDEX `inx_survey_id`(`survey_id`) USING BTREE,
  INDEX `inx_question_sort`(`question_sort`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '问卷题目表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_question
-- ----------------------------
INSERT INTO `tb_question` VALUES (16, 2, NULL, 1, '1111111', 'title', '', '0', NULL, NULL, '0', NULL, NULL, 'column', NULL, '2024-03-18 21:45:43');
INSERT INTO `tb_question` VALUES (17, 2, '1', 3, '11111', 'radio', 'notEmpty', '0', NULL, NULL, '0', NULL, NULL, 'column', NULL, '2024-03-18 21:48:10');
INSERT INTO `tb_question` VALUES (18, 2, NULL, 2, '1212123213123', 'text', '', '0', NULL, NULL, '0', NULL, NULL, 'column', NULL, '2024-03-18 21:50:13');
INSERT INTO `tb_question` VALUES (20, 2, '2', 4, '2334214123', 'radio', '', '0', NULL, NULL, '0', NULL, NULL, 'column', NULL, '2024-03-18 21:51:10');

-- ----------------------------
-- Table structure for tb_survey
-- ----------------------------
DROP TABLE IF EXISTS `tb_survey`;
CREATE TABLE `tb_survey`  (
  `survey_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '问卷主键',
  `survey_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '问卷名称',
  `survey_desc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '问卷说明描述',
  `survey_type` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '问卷类型',
  `survey_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '问卷状态（0：未发布，1：收集中，2：已结束）',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据状态（1：有效，0：无效）',
  `book_code` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '帐套编码',
  PRIMARY KEY (`survey_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '问卷表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_survey
-- ----------------------------
INSERT INTO `tb_survey` VALUES (1, '1111', '111', '01', '0', '2024-03-13 20:53:20', 1, '1', '');
INSERT INTO `tb_survey` VALUES (2, '2222', NULL, NULL, '1', '2024-03-17 20:34:25', 1, '1', '');

SET FOREIGN_KEY_CHECKS = 1;
