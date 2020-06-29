CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `passport` varchar(45) NOT NULL COMMENT '账号',
  `password` varchar(45) NOT NULL COMMENT '密码',
  `nickname` varchar(45) NOT NULL COMMENT '昵称',
  `create_time` timestamp NOT NULL COMMENT '创建时间/注册时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : todo

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 28/06/2020 21:41:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for devices
-- ----------------------------
DROP TABLE IF EXISTS `devices`;
CREATE TABLE `devices` (
   `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
   `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '设备类型\n1: 手机',
   `model` varchar(255) DEFAULT NULL COMMENT '型号\ngetprop ro.product.model',
   `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '分辨率\nwm density\n',
   `android_id` varchar(255) DEFAULT NULL COMMENT 'android_id\nsettings get secure android_id',
   `version` varchar(255) DEFAULT NULL COMMENT '系统版本\ngetprop ro.build.version.release\n',
   `sdk` varchar(255) DEFAULT NULL COMMENT 'sdk\ngetprop ro.build.version.sdk',
   `brand` varchar(255) DEFAULT NULL COMMENT '厂商名称\ngetprop ro.product.brand\n',
   `devices_id` varchar(255) DEFAULT NULL COMMENT '设备id\ngetprop ro.serialno',
   `imei` varchar(255) DEFAULT NULL COMMENT 'IMEI\nservice call iphonesubinfo 1 \n需要自己处理',
   `mac` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'MAC\ncat /sys/class/net/wlan0/address',
   `df` varchar(255) DEFAULT NULL COMMENT '内存\ndf /data\n自己处理',
   `create_time` datetime DEFAULT NULL COMMENT '创建时间',
   `last_time` datetime DEFAULT NULL COMMENT '上次在线时间',
   `group` varchar(255) DEFAULT NULL COMMENT '分组',
   `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '设备状态\n0 正常\n1 禁用',
   PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;
