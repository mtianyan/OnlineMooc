/*
 Navicat Premium Data Transfer

 Source Server         : mtianyan_mac_local
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : online_mooc

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 09/10/2020 21:29:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_api_address
-- ----------------------------
DROP TABLE IF EXISTS `app_api_address`;
CREATE TABLE `app_api_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `isDefault` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_address
-- ----------------------------
BEGIN;
INSERT INTO `app_api_address` VALUES (10, '', '汪图南', '18277776666', '广东省广州市', '天河区xxx路xxx号xxx公司', '000000', 0);
INSERT INTO `app_api_address` VALUES (11, '4', '12', '1', '1', '1', '1', 1);
COMMIT;

-- ----------------------------
-- Table structure for app_api_answer
-- ----------------------------
DROP TABLE IF EXISTS `app_api_answer`;
CREATE TABLE `app_api_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_answer
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for app_api_article
-- ----------------------------
DROP TABLE IF EXISTS `app_api_article`;
CREATE TABLE `app_api_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `views` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_api_article_type_id_35065149` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=955 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_article
-- ----------------------------
BEGIN;
INSERT INTO `app_api_article` VALUES (796, '怎样学习 SpringBoot', 'https://img1.mukewang.com/5bf3a0670001160b02720272-200-200.jpg', 3537, '张勤一', 'Java', '07.31', 118);
INSERT INTO `app_api_article` VALUES (797, '【干货合辑】都2019年下半年了， 抓紧上车 ，今年新热技术都在这里！', 'https://img3.mukewang.com/5d006f600001620802500250-200-200.jpg', 12400, '慕课网官方_运营中心', 'Node.js', '06.12', 118);
INSERT INTO `app_api_article` VALUES (798, 'Go高并发秒杀实践', 'https://www.imooc.com/static/img/article/cover/pic28.jpg', 2210, 'Cap', 'Go', '08.26', 118);
INSERT INTO `app_api_article` VALUES (799, 'Python进阶量化交易专栏场外篇13-TA-Lib库量价指标分析', 'https://www.imooc.com/static/img/article/cover/pic8.jpg', 261, '袁霄', 'python', '08.25', 118);
INSERT INTO `app_api_article` VALUES (800, '怎样学习 SpringBoot', 'https://img1.mukewang.com/5bf3a0670001160b02720272-200-200.jpg', 3537, '张勤一', 'Java', '07.31', 118);
INSERT INTO `app_api_article` VALUES (801, '【干货合辑】都2019年下半年了， 抓紧上车 ，今年新热技术都在这里！', 'https://img3.mukewang.com/5d006f600001620802500250-200-200.jpg', 12400, '慕课网官方_运营中心', 'Node.js', '06.12', 118);
INSERT INTO `app_api_article` VALUES (802, 'Go高并发秒杀实践', 'https://www.imooc.com/static/img/article/cover/pic28.jpg', 2210, 'Cap', 'Go', '08.26', 118);
INSERT INTO `app_api_article` VALUES (803, 'Python进阶量化交易专栏场外篇13-TA-Lib库量价指标分析', 'https://www.imooc.com/static/img/article/cover/pic8.jpg', 261, '袁霄', 'python', '08.25', 118);
INSERT INTO `app_api_article` VALUES (804, '怎样学习 SpringBoot', 'https://img1.mukewang.com/5bf3a0670001160b02720272-200-200.jpg', 3537, '张勤一', 'Java', '07.31', 118);
INSERT INTO `app_api_article` VALUES (805, '【干货合辑】都2019年下半年了， 抓紧上车 ，今年新热技术都在这里！', 'https://img3.mukewang.com/5d006f600001620802500250-200-200.jpg', 12400, '慕课网官方_运营中心', 'Node.js', '06.12', 118);
INSERT INTO `app_api_article` VALUES (806, 'Go高并发秒杀实践', 'https://www.imooc.com/static/img/article/cover/pic28.jpg', 2210, 'Cap', 'Go', '08.26', 118);
INSERT INTO `app_api_article` VALUES (807, 'Python进阶量化交易专栏场外篇13-TA-Lib库量价指标分析', 'https://www.imooc.com/static/img/article/cover/pic8.jpg', 261, '袁霄', 'python', '08.25', 118);
INSERT INTO `app_api_article` VALUES (808, '首届清华智班30人名单公布：贵校第一批AI本科生，状元金牌云集，与姚班', 'https://img.mukewang.com/5d6125c800011ebe06880155-200-200.jpg', 105, '量子位', '人工智能', '08.24', 119);
INSERT INTO `app_api_article` VALUES (809, '百度Q2扭亏为盈，市值一夜大涨300亿，李彦宏：呼唤猛将雄兵，要再上行', 'https://img3.mukewang.com/5d006f600001620802500250-200-200.jpg', 12400, '量子位', '资讯', '08.21', 119);
INSERT INTO `app_api_article` VALUES (810, '国产AI框架再进化！百度Paddle Lite发布：率先支持华为NPU', 'https://img3.mukewang.com/5bf3a0670001160b02720272-200-200.jpg', 199, '量子位', '人工智能', '08.20', 119);
INSERT INTO `app_api_article` VALUES (811, '首届清华智班30人名单公布：贵校第一批AI本科生，状元金牌云集，与姚班', 'https://img.mukewang.com/5d6125c800011ebe06880155-200-200.jpg', 105, '量子位', '人工智能', '08.24', 119);
INSERT INTO `app_api_article` VALUES (812, '百度Q2扭亏为盈，市值一夜大涨300亿，李彦宏：呼唤猛将雄兵，要再上行', 'https://img3.mukewang.com/5d006f600001620802500250-200-200.jpg', 12400, '量子位', '资讯', '08.21', 119);
INSERT INTO `app_api_article` VALUES (813, '国产AI框架再进化！百度Paddle Lite发布：率先支持华为NPU', 'https://img3.mukewang.com/5bf3a0670001160b02720272-200-200.jpg', 199, '量子位', '人工智能', '08.20', 119);
INSERT INTO `app_api_article` VALUES (814, '首届清华智班30人名单公布：贵校第一批AI本科生，状元金牌云集，与姚班', 'https://img.mukewang.com/5d6125c800011ebe06880155-200-200.jpg', 105, '量子位', '人工智能', '08.24', 119);
INSERT INTO `app_api_article` VALUES (815, '百度Q2扭亏为盈，市值一夜大涨300亿，李彦宏：呼唤猛将雄兵，要再上行', 'https://img3.mukewang.com/5d006f600001620802500250-200-200.jpg', 12400, '量子位', '资讯', '08.21', 119);
INSERT INTO `app_api_article` VALUES (816, '国产AI框架再进化！百度Paddle Lite发布：率先支持华为NPU', 'https://img3.mukewang.com/5bf3a0670001160b02720272-200-200.jpg', 199, '量子位', '人工智能', '08.20', 119);
INSERT INTO `app_api_article` VALUES (817, '首届清华智班30人名单公布：贵校第一批AI本科生，状元金牌云集，与姚班', 'https://img.mukewang.com/5d6125c800011ebe06880155-200-200.jpg', 105, '量子位', '人工智能', '08.24', 119);
INSERT INTO `app_api_article` VALUES (818, '百度Q2扭亏为盈，市值一夜大涨300亿，李彦宏：呼唤猛将雄兵，要再上行', 'https://img3.mukewang.com/5d006f600001620802500250-200-200.jpg', 12400, '量子位', '资讯', '08.21', 119);
INSERT INTO `app_api_article` VALUES (819, '国产AI框架再进化！百度Paddle Lite发布：率先支持华为NPU', 'https://img3.mukewang.com/5bf3a0670001160b02720272-200-200.jpg', 199, '量子位', '人工智能', '08.20', 119);
INSERT INTO `app_api_article` VALUES (820, '微服务架构之分布式数据管理', 'https://img3.mukewang.com/5bf3a0b100015d1e02720272-200-200.jpg', 105, '量子位', '人工智能', '08.24', 120);
INSERT INTO `app_api_article` VALUES (821, '数说成龙电影|数据告诉你，成龙大哥真的老了吗', 'https://img1.mukewang.com/5d65243c0001629506000440-200-200.jpg', 12400, '量子位', '资讯', '08.21', 120);
INSERT INTO `app_api_article` VALUES (822, '脑门贴张纸，骗过最强人脸识别系统！华为莫斯科研究院出品，FaceID已', 'https://img3.mukewang.com/5bf39fdb0001ba0702720272-200-200.jpg', 199, '量子位', '人工智能', '08.20', 120);
INSERT INTO `app_api_article` VALUES (823, '微服务架构之分布式数据管理', 'https://img3.mukewang.com/5bf3a0b100015d1e02720272-200-200.jpg', 105, '量子位', '人工智能', '08.24', 120);
INSERT INTO `app_api_article` VALUES (824, '数说成龙电影|数据告诉你，成龙大哥真的老了吗', 'https://img1.mukewang.com/5d65243c0001629506000440-200-200.jpg', 12400, '量子位', '资讯', '08.21', 120);
INSERT INTO `app_api_article` VALUES (825, '脑门贴张纸，骗过最强人脸识别系统！华为莫斯科研究院出品，FaceID已', 'https://img3.mukewang.com/5bf39fdb0001ba0702720272-200-200.jpg', 199, '量子位', '人工智能', '08.20', 120);
INSERT INTO `app_api_article` VALUES (826, '微服务架构之分布式数据管理', 'https://img3.mukewang.com/5bf3a0b100015d1e02720272-200-200.jpg', 105, '量子位', '人工智能', '08.24', 120);
INSERT INTO `app_api_article` VALUES (827, '数说成龙电影|数据告诉你，成龙大哥真的老了吗', 'https://img1.mukewang.com/5d65243c0001629506000440-200-200.jpg', 12400, '量子位', '资讯', '08.21', 120);
INSERT INTO `app_api_article` VALUES (828, '脑门贴张纸，骗过最强人脸识别系统！华为莫斯科研究院出品，FaceID已', 'https://img3.mukewang.com/5bf39fdb0001ba0702720272-200-200.jpg', 199, '量子位', '人工智能', '08.20', 120);
INSERT INTO `app_api_article` VALUES (829, '微服务架构之分布式数据管理', 'https://img3.mukewang.com/5bf3a0b100015d1e02720272-200-200.jpg', 105, '量子位', '人工智能', '08.24', 120);
INSERT INTO `app_api_article` VALUES (830, '数说成龙电影|数据告诉你，成龙大哥真的老了吗', 'https://img1.mukewang.com/5d65243c0001629506000440-200-200.jpg', 12400, '量子位', '资讯', '08.21', 120);
INSERT INTO `app_api_article` VALUES (831, '脑门贴张纸，骗过最强人脸识别系统！华为莫斯科研究院出品，FaceID已', 'https://img3.mukewang.com/5bf39fdb0001ba0702720272-200-200.jpg', 199, '量子位', '人工智能', '08.20', 120);
INSERT INTO `app_api_article` VALUES (832, '遇到洋妞不敢搭讪，程序员的羞涩你不懂', 'https://img1.mukewang.com/5d540db20001227105530311-200-200.jpg', 105, '量子位', '人工智能', '08.24', 121);
INSERT INTO `app_api_article` VALUES (833, '学习Filecoin开发一个自己的公链（一）共识 - LearnDap', 'https://img4.mukewang.com/5d3d2f880001946802000200-200-200.jpg', 12400, '量子位', '资讯', '08.21', 121);
INSERT INTO `app_api_article` VALUES (834, '一入币圈深似海，浮浮沉沉走人生', 'https://www.imooc.com/static/img/article/cover/pic5.jpg', 199, '量子位', '人工智能', '08.20', 121);
INSERT INTO `app_api_article` VALUES (835, '遇到洋妞不敢搭讪，程序员的羞涩你不懂', 'https://img1.mukewang.com/5d540db20001227105530311-200-200.jpg', 105, '量子位', '人工智能', '08.24', 121);
INSERT INTO `app_api_article` VALUES (836, '学习Filecoin开发一个自己的公链（一）共识 - LearnDap', 'https://img4.mukewang.com/5d3d2f880001946802000200-200-200.jpg', 12400, '量子位', '资讯', '08.21', 121);
INSERT INTO `app_api_article` VALUES (837, '一入币圈深似海，浮浮沉沉走人生', 'https://www.imooc.com/static/img/article/cover/pic5.jpg', 199, '量子位', '人工智能', '08.20', 121);
INSERT INTO `app_api_article` VALUES (838, '遇到洋妞不敢搭讪，程序员的羞涩你不懂', 'https://img1.mukewang.com/5d540db20001227105530311-200-200.jpg', 105, '量子位', '人工智能', '08.24', 121);
INSERT INTO `app_api_article` VALUES (839, '学习Filecoin开发一个自己的公链（一）共识 - LearnDap', 'https://img4.mukewang.com/5d3d2f880001946802000200-200-200.jpg', 12400, '量子位', '资讯', '08.21', 121);
INSERT INTO `app_api_article` VALUES (840, '一入币圈深似海，浮浮沉沉走人生', 'https://www.imooc.com/static/img/article/cover/pic5.jpg', 199, '量子位', '人工智能', '08.20', 121);
INSERT INTO `app_api_article` VALUES (841, '遇到洋妞不敢搭讪，程序员的羞涩你不懂', 'https://img1.mukewang.com/5d540db20001227105530311-200-200.jpg', 105, '量子位', '人工智能', '08.24', 121);
INSERT INTO `app_api_article` VALUES (842, '学习Filecoin开发一个自己的公链（一）共识 - LearnDap', 'https://img4.mukewang.com/5d3d2f880001946802000200-200-200.jpg', 12400, '量子位', '资讯', '08.21', 121);
INSERT INTO `app_api_article` VALUES (843, '一入币圈深似海，浮浮沉沉走人生', 'https://www.imooc.com/static/img/article/cover/pic5.jpg', 199, '量子位', '人工智能', '08.20', 121);
INSERT INTO `app_api_article` VALUES (844, '华为算力最强AI芯片商用：2倍于英伟达V100！开源AI框架，对标Te', 'https://img1.mukewang.com/5bf3a0570001e5fb02720272-200-200.jpg', 105, '量子位', '人工智能', '08.24', 122);
INSERT INTO `app_api_article` VALUES (845, '项目说明文档编写规范', 'https://img3.mukewang.com/5d5bea3e0001300005000333-200-200.jpg', 12400, '量子位', '资讯', '08.21', 122);
INSERT INTO `app_api_article` VALUES (846, 'Huffman编码使用介绍', 'https://img1.mukewang.com/5d63a46c000136ef08450715-200-200.jpg', 199, '量子位', '人工智能', '08.20', 122);
INSERT INTO `app_api_article` VALUES (847, '华为算力最强AI芯片商用：2倍于英伟达V100！开源AI框架，对标Te', 'https://img1.mukewang.com/5bf3a0570001e5fb02720272-200-200.jpg', 105, '量子位', '人工智能', '08.24', 122);
INSERT INTO `app_api_article` VALUES (848, '项目说明文档编写规范', 'https://img3.mukewang.com/5d5bea3e0001300005000333-200-200.jpg', 12400, '量子位', '资讯', '08.21', 122);
INSERT INTO `app_api_article` VALUES (849, 'Huffman编码使用介绍', 'https://img1.mukewang.com/5d63a46c000136ef08450715-200-200.jpg', 199, '量子位', '人工智能', '08.20', 122);
INSERT INTO `app_api_article` VALUES (850, '华为算力最强AI芯片商用：2倍于英伟达V100！开源AI框架，对标Te', 'https://img1.mukewang.com/5bf3a0570001e5fb02720272-200-200.jpg', 105, '量子位', '人工智能', '08.24', 122);
INSERT INTO `app_api_article` VALUES (851, '项目说明文档编写规范', 'https://img3.mukewang.com/5d5bea3e0001300005000333-200-200.jpg', 12400, '量子位', '资讯', '08.21', 122);
INSERT INTO `app_api_article` VALUES (852, 'Huffman编码使用介绍', 'https://img1.mukewang.com/5d63a46c000136ef08450715-200-200.jpg', 199, '量子位', '人工智能', '08.20', 122);
INSERT INTO `app_api_article` VALUES (853, '华为算力最强AI芯片商用：2倍于英伟达V100！开源AI框架，对标Te', 'https://img1.mukewang.com/5bf3a0570001e5fb02720272-200-200.jpg', 105, '量子位', '人工智能', '08.24', 122);
INSERT INTO `app_api_article` VALUES (854, '项目说明文档编写规范', 'https://img3.mukewang.com/5d5bea3e0001300005000333-200-200.jpg', 12400, '量子位', '资讯', '08.21', 122);
INSERT INTO `app_api_article` VALUES (855, 'Huffman编码使用介绍', 'https://img1.mukewang.com/5d63a46c000136ef08450715-200-200.jpg', 199, '量子位', '人工智能', '08.20', 122);
INSERT INTO `app_api_article` VALUES (856, 'Python进阶量化交易专栏场外篇13-TA-Lib库量价指标分析', 'https://www.imooc.com/static/img/article/cover/pic8.jpg', 105, '量子位', '人工智能', '08.24', 123);
INSERT INTO `app_api_article` VALUES (857, '微服务架构之服务注册中心', 'https://img1.mukewang.com/5bf3a0870001f33c02720272-200-200.jpg', 12400, '量子位', '资讯', '08.21', 123);
INSERT INTO `app_api_article` VALUES (858, 'Kafka实战(四) -Kafka门派知多少', 'https://img.mukewang.com/5d641d5a000139f106000390-200-200.jpg', 199, '量子位', '人工智能', '08.20', 123);
INSERT INTO `app_api_article` VALUES (859, 'Python进阶量化交易专栏场外篇13-TA-Lib库量价指标分析', 'https://www.imooc.com/static/img/article/cover/pic8.jpg', 105, '量子位', '人工智能', '08.24', 123);
INSERT INTO `app_api_article` VALUES (860, '微服务架构之服务注册中心', 'https://img1.mukewang.com/5bf3a0870001f33c02720272-200-200.jpg', 12400, '量子位', '资讯', '08.21', 123);
INSERT INTO `app_api_article` VALUES (861, 'Kafka实战(四) -Kafka门派知多少', 'https://img.mukewang.com/5d641d5a000139f106000390-200-200.jpg', 199, '量子位', '人工智能', '08.20', 123);
INSERT INTO `app_api_article` VALUES (862, 'Python进阶量化交易专栏场外篇13-TA-Lib库量价指标分析', 'https://www.imooc.com/static/img/article/cover/pic8.jpg', 105, '量子位', '人工智能', '08.24', 123);
INSERT INTO `app_api_article` VALUES (863, '微服务架构之服务注册中心', 'https://img1.mukewang.com/5bf3a0870001f33c02720272-200-200.jpg', 12400, '量子位', '资讯', '08.21', 123);
INSERT INTO `app_api_article` VALUES (864, 'Kafka实战(四) -Kafka门派知多少', 'https://img.mukewang.com/5d641d5a000139f106000390-200-200.jpg', 199, '量子位', '人工智能', '08.20', 123);
INSERT INTO `app_api_article` VALUES (865, 'Python进阶量化交易专栏场外篇13-TA-Lib库量价指标分析', 'https://www.imooc.com/static/img/article/cover/pic8.jpg', 105, '量子位', '人工智能', '08.24', 123);
INSERT INTO `app_api_article` VALUES (866, '微服务架构之服务注册中心', 'https://img1.mukewang.com/5bf3a0870001f33c02720272-200-200.jpg', 12400, '量子位', '资讯', '08.21', 123);
INSERT INTO `app_api_article` VALUES (867, 'Kafka实战(四) -Kafka门派知多少', 'https://img.mukewang.com/5d641d5a000139f106000390-200-200.jpg', 199, '量子位', '人工智能', '08.20', 123);
INSERT INTO `app_api_article` VALUES (868, '怎么理清自己的编程思路', 'https://img4.mukewang.com/5bf39fdb0001ba0702720272-200-200.jpg', 105, '量子位', '人工智能', '08.24', 124);
INSERT INTO `app_api_article` VALUES (869, '从零开始配置React全家桶', 'https://img4.mukewang.com/5bf3a0b100015d1e02720272-200-200.jpg', 12400, '量子位', '资讯', '08.21', 124);
INSERT INTO `app_api_article` VALUES (870, '你必须要掌握的微信小程序云开发', 'https://img3.mukewang.com/5bf3a0570001e5fb02720272-200-200.jpg', 199, '量子位', '人工智能', '08.20', 124);
INSERT INTO `app_api_article` VALUES (871, '怎么理清自己的编程思路', 'https://img4.mukewang.com/5bf39fdb0001ba0702720272-200-200.jpg', 105, '量子位', '人工智能', '08.24', 124);
INSERT INTO `app_api_article` VALUES (872, '从零开始配置React全家桶', 'https://img4.mukewang.com/5bf3a0b100015d1e02720272-200-200.jpg', 12400, '量子位', '资讯', '08.21', 124);
INSERT INTO `app_api_article` VALUES (873, '你必须要掌握的微信小程序云开发', 'https://img3.mukewang.com/5bf3a0570001e5fb02720272-200-200.jpg', 199, '量子位', '人工智能', '08.20', 124);
INSERT INTO `app_api_article` VALUES (874, '怎么理清自己的编程思路', 'https://img4.mukewang.com/5bf39fdb0001ba0702720272-200-200.jpg', 105, '量子位', '人工智能', '08.24', 124);
INSERT INTO `app_api_article` VALUES (875, '从零开始配置React全家桶', 'https://img4.mukewang.com/5bf3a0b100015d1e02720272-200-200.jpg', 12400, '量子位', '资讯', '08.21', 124);
INSERT INTO `app_api_article` VALUES (876, '你必须要掌握的微信小程序云开发', 'https://img3.mukewang.com/5bf3a0570001e5fb02720272-200-200.jpg', 199, '量子位', '人工智能', '08.20', 124);
INSERT INTO `app_api_article` VALUES (877, '怎么理清自己的编程思路', 'https://img4.mukewang.com/5bf39fdb0001ba0702720272-200-200.jpg', 105, '量子位', '人工智能', '08.24', 124);
INSERT INTO `app_api_article` VALUES (878, '从零开始配置React全家桶', 'https://img4.mukewang.com/5bf3a0b100015d1e02720272-200-200.jpg', 12400, '量子位', '资讯', '08.21', 124);
INSERT INTO `app_api_article` VALUES (879, '你必须要掌握的微信小程序云开发', 'https://img3.mukewang.com/5bf3a0570001e5fb02720272-200-200.jpg', 199, '量子位', '人工智能', '08.20', 124);
INSERT INTO `app_api_article` VALUES (880, '怎么理清自己的编程思路', 'https://img4.mukewang.com/5bf39fdb0001ba0702720272-200-200.jpg', 105, '量子位', '人工智能', '08.24', 124);
INSERT INTO `app_api_article` VALUES (881, '从零开始配置React全家桶', 'https://img4.mukewang.com/5bf3a0b100015d1e02720272-200-200.jpg', 12400, '量子位', '资讯', '08.21', 124);
INSERT INTO `app_api_article` VALUES (882, '你必须要掌握的微信小程序云开发', 'https://img3.mukewang.com/5bf3a0570001e5fb02720272-200-200.jpg', 199, '量子位', '人工智能', '08.20', 124);
INSERT INTO `app_api_article` VALUES (883, '怎么理清自己的编程思路', 'https://img4.mukewang.com/5bf39fdb0001ba0702720272-200-200.jpg', 105, '量子位', '人工智能', '08.24', 124);
INSERT INTO `app_api_article` VALUES (884, '从零开始配置React全家桶', 'https://img4.mukewang.com/5bf3a0b100015d1e02720272-200-200.jpg', 12400, '量子位', '资讯', '08.21', 124);
INSERT INTO `app_api_article` VALUES (885, '你必须要掌握的微信小程序云开发', 'https://img3.mukewang.com/5bf3a0570001e5fb02720272-200-200.jpg', 199, '量子位', '人工智能', '08.20', 124);
INSERT INTO `app_api_article` VALUES (886, 'Go高并发秒杀实践', 'https://www.imooc.com/static/img/article/cover/pic28.jpg', 105, '量子位', '人工智能', '08.24', 125);
INSERT INTO `app_api_article` VALUES (887, '学完这100多技术，能当架构师么？（非广告）', 'https://www.imooc.com/static/img/article/cover/pic18.jpg', 12400, '量子位', '资讯', '08.21', 125);
INSERT INTO `app_api_article` VALUES (888, '如何写优雅的SQL原生语句？', 'https://img3.mukewang.com/5bf3a1460001f88002720272-200-200.jpg', 199, '量子位', '人工智能', '08.20', 125);
INSERT INTO `app_api_article` VALUES (889, 'Go高并发秒杀实践', 'https://www.imooc.com/static/img/article/cover/pic28.jpg', 105, '量子位', '人工智能', '08.24', 125);
INSERT INTO `app_api_article` VALUES (890, '学完这100多技术，能当架构师么？（非广告）', 'https://www.imooc.com/static/img/article/cover/pic18.jpg', 12400, '量子位', '资讯', '08.21', 125);
INSERT INTO `app_api_article` VALUES (891, '如何写优雅的SQL原生语句？', 'https://img3.mukewang.com/5bf3a1460001f88002720272-200-200.jpg', 199, '量子位', '人工智能', '08.20', 125);
INSERT INTO `app_api_article` VALUES (892, 'Go高并发秒杀实践', 'https://www.imooc.com/static/img/article/cover/pic28.jpg', 105, '量子位', '人工智能', '08.24', 125);
INSERT INTO `app_api_article` VALUES (893, '学完这100多技术，能当架构师么？（非广告）', 'https://www.imooc.com/static/img/article/cover/pic18.jpg', 12400, '量子位', '资讯', '08.21', 125);
INSERT INTO `app_api_article` VALUES (894, '如何写优雅的SQL原生语句？', 'https://img3.mukewang.com/5bf3a1460001f88002720272-200-200.jpg', 199, '量子位', '人工智能', '08.20', 125);
INSERT INTO `app_api_article` VALUES (895, 'Go高并发秒杀实践', 'https://www.imooc.com/static/img/article/cover/pic28.jpg', 105, '量子位', '人工智能', '08.24', 125);
INSERT INTO `app_api_article` VALUES (896, '学完这100多技术，能当架构师么？（非广告）', 'https://www.imooc.com/static/img/article/cover/pic18.jpg', 12400, '量子位', '资讯', '08.21', 125);
INSERT INTO `app_api_article` VALUES (897, '如何写优雅的SQL原生语句？', 'https://img3.mukewang.com/5bf3a1460001f88002720272-200-200.jpg', 199, '量子位', '人工智能', '08.20', 125);
INSERT INTO `app_api_article` VALUES (898, 'Go高并发秒杀实践', 'https://www.imooc.com/static/img/article/cover/pic28.jpg', 105, '量子位', '人工智能', '08.24', 125);
INSERT INTO `app_api_article` VALUES (899, '学完这100多技术，能当架构师么？（非广告）', 'https://www.imooc.com/static/img/article/cover/pic18.jpg', 12400, '量子位', '资讯', '08.21', 125);
INSERT INTO `app_api_article` VALUES (900, '如何写优雅的SQL原生语句？', 'https://img3.mukewang.com/5bf3a1460001f88002720272-200-200.jpg', 199, '量子位', '人工智能', '08.20', 125);
INSERT INTO `app_api_article` VALUES (901, 'Go高并发秒杀实践', 'https://www.imooc.com/static/img/article/cover/pic28.jpg', 105, '量子位', '人工智能', '08.24', 125);
INSERT INTO `app_api_article` VALUES (902, '学完这100多技术，能当架构师么？（非广告）', 'https://www.imooc.com/static/img/article/cover/pic18.jpg', 12400, '量子位', '资讯', '08.21', 125);
INSERT INTO `app_api_article` VALUES (903, '如何写优雅的SQL原生语句？', 'https://img3.mukewang.com/5bf3a1460001f88002720272-200-200.jpg', 199, '量子位', '人工智能', '08.20', 125);
INSERT INTO `app_api_article` VALUES (904, '你从未见过的EditText属性详解', 'https://www.imooc.com/static/img/article/cover/pic24.jpg', 105, '量子位', '人工智能', '08.24', 126);
INSERT INTO `app_api_article` VALUES (905, '让你的布局滚动起来—ScrollView', 'https://www.imooc.com/static/img/article/cover/pic10.jpg', 12400, '量子位', '资讯', '08.21', 126);
INSERT INTO `app_api_article` VALUES (906, '你不能错过的RadioButton实践', 'https://www.imooc.com/static/img/article/cover/pic20.jpg', 199, '量子位', '人工智能', '08.20', 126);
INSERT INTO `app_api_article` VALUES (907, '你从未见过的EditText属性详解', 'https://www.imooc.com/static/img/article/cover/pic24.jpg', 105, '量子位', '人工智能', '08.24', 126);
INSERT INTO `app_api_article` VALUES (908, '让你的布局滚动起来—ScrollView', 'https://www.imooc.com/static/img/article/cover/pic10.jpg', 12400, '量子位', '资讯', '08.21', 126);
INSERT INTO `app_api_article` VALUES (909, '你不能错过的RadioButton实践', 'https://www.imooc.com/static/img/article/cover/pic20.jpg', 199, '量子位', '人工智能', '08.20', 126);
INSERT INTO `app_api_article` VALUES (910, '你从未见过的EditText属性详解', 'https://www.imooc.com/static/img/article/cover/pic24.jpg', 105, '量子位', '人工智能', '08.24', 126);
INSERT INTO `app_api_article` VALUES (911, '让你的布局滚动起来—ScrollView', 'https://www.imooc.com/static/img/article/cover/pic10.jpg', 12400, '量子位', '资讯', '08.21', 126);
INSERT INTO `app_api_article` VALUES (912, '你不能错过的RadioButton实践', 'https://www.imooc.com/static/img/article/cover/pic20.jpg', 199, '量子位', '人工智能', '08.20', 126);
INSERT INTO `app_api_article` VALUES (913, '你从未见过的EditText属性详解', 'https://www.imooc.com/static/img/article/cover/pic24.jpg', 105, '量子位', '人工智能', '08.24', 126);
INSERT INTO `app_api_article` VALUES (914, '让你的布局滚动起来—ScrollView', 'https://www.imooc.com/static/img/article/cover/pic10.jpg', 12400, '量子位', '资讯', '08.21', 126);
INSERT INTO `app_api_article` VALUES (915, '你不能错过的RadioButton实践', 'https://www.imooc.com/static/img/article/cover/pic20.jpg', 199, '量子位', '人工智能', '08.20', 126);
INSERT INTO `app_api_article` VALUES (916, '你从未见过的EditText属性详解', 'https://www.imooc.com/static/img/article/cover/pic24.jpg', 105, '量子位', '人工智能', '08.24', 126);
INSERT INTO `app_api_article` VALUES (917, '让你的布局滚动起来—ScrollView', 'https://www.imooc.com/static/img/article/cover/pic10.jpg', 12400, '量子位', '资讯', '08.21', 126);
INSERT INTO `app_api_article` VALUES (918, '你不能错过的RadioButton实践', 'https://www.imooc.com/static/img/article/cover/pic20.jpg', 199, '量子位', '人工智能', '08.20', 126);
INSERT INTO `app_api_article` VALUES (919, '如何选择一个性能测试工具（LoadRunner和Locust的一次对比', 'https://www.imooc.com/static/img/article/cover/pic9.jpg', 105, '量子位', '人工智能', '08.24', 127);
INSERT INTO `app_api_article` VALUES (920, 'Spread.NET 表格控件 V12.0 Update2 发布更新', 'https://img4.mukewang.com/5bf3a0ce0001f11102720272-200-200.jpg', 12400, '量子位', '资讯', '08.21', 127);
INSERT INTO `app_api_article` VALUES (921, '使用Typora+docsify+GitHub Pages搭建团队知识', 'https://www.imooc.com/static/img/article/cover/pic5.jpg', 199, '量子位', '人工智能', '08.20', 127);
INSERT INTO `app_api_article` VALUES (922, '培训班出身如何构建自己的知识体系？', 'https://www.imooc.com/static/img/article/cover/pic28.jpg', 105, '量子位', '人工智能', '08.24', 128);
INSERT INTO `app_api_article` VALUES (923, '【一元福利】程序员的高数入门课', 'https://www.imooc.com/static/img/article/cover/pic4.jpg', 12400, '量子位', '资讯', '08.21', 128);
INSERT INTO `app_api_article` VALUES (924, '程序员是最好的产品经理', 'https://img3.mukewang.com/5d5dff6600017e9711990674-200-200.jpg', 199, '量子位', '人工智能', '08.20', 128);
INSERT INTO `app_api_article` VALUES (925, '牛郎决定去学编程', 'https://img4.mukewang.com/5d5411e00001007e05190300-200-200.jpg', 105, '量子位', '人工智能', '08.24', 129);
INSERT INTO `app_api_article` VALUES (926, '程序员在理发时悟出的真理', 'https://img1.mukewang.com/5d20841a0001118d05000375-200-200.jpg', 12400, '量子位', '资讯', '08.21', 129);
INSERT INTO `app_api_article` VALUES (927, '程序员的江湖梦', 'https://img4.mukewang.com/5d2082170001e05105000336-200-200.jpg', 199, '量子位', '人工智能', '08.20', 129);
INSERT INTO `app_api_article` VALUES (928, 'Jmeter如何设置线程数，ramp-up period，循环次数', 'https://www.imooc.com/static/img/article/cover/pic8.jpg', 105, '量子位', '人工智能', '08.24', 130);
INSERT INTO `app_api_article` VALUES (929, '长安十二时辰大结局一段时间了', 'https://img3.mukewang.com/5bf3a1620001b65902720272-200-200.jpg', 12400, '量子位', '资讯', '08.21', 130);
INSERT INTO `app_api_article` VALUES (930, '开发电商购物直播系统是直播公会的出路吗？我个人这么觉得', 'https://www.imooc.com/static/img/article/cover/pic12.jpg', 199, '量子位', '人工智能', '08.20', 130);
INSERT INTO `app_api_article` VALUES (931, '如何选择一个性能测试工具（LoadRunner和Locust的一次对比', 'https://www.imooc.com/static/img/article/cover/pic9.jpg', 105, '量子位', '人工智能', '08.24', 127);
INSERT INTO `app_api_article` VALUES (932, 'Spread.NET 表格控件 V12.0 Update2 发布更新', 'https://img4.mukewang.com/5bf3a0ce0001f11102720272-200-200.jpg', 12400, '量子位', '资讯', '08.21', 127);
INSERT INTO `app_api_article` VALUES (933, '使用Typora+docsify+GitHub Pages搭建团队知识', 'https://www.imooc.com/static/img/article/cover/pic5.jpg', 199, '量子位', '人工智能', '08.20', 127);
INSERT INTO `app_api_article` VALUES (934, '培训班出身如何构建自己的知识体系？', 'https://www.imooc.com/static/img/article/cover/pic28.jpg', 105, '量子位', '人工智能', '08.24', 128);
INSERT INTO `app_api_article` VALUES (935, '【一元福利】程序员的高数入门课', 'https://www.imooc.com/static/img/article/cover/pic4.jpg', 12400, '量子位', '资讯', '08.21', 128);
INSERT INTO `app_api_article` VALUES (936, '程序员是最好的产品经理', 'https://img3.mukewang.com/5d5dff6600017e9711990674-200-200.jpg', 199, '量子位', '人工智能', '08.20', 128);
INSERT INTO `app_api_article` VALUES (937, '牛郎决定去学编程', 'https://img4.mukewang.com/5d5411e00001007e05190300-200-200.jpg', 105, '量子位', '人工智能', '08.24', 129);
INSERT INTO `app_api_article` VALUES (938, '程序员在理发时悟出的真理', 'https://img1.mukewang.com/5d20841a0001118d05000375-200-200.jpg', 12400, '量子位', '资讯', '08.21', 129);
INSERT INTO `app_api_article` VALUES (939, '程序员的江湖梦', 'https://img4.mukewang.com/5d2082170001e05105000336-200-200.jpg', 199, '量子位', '人工智能', '08.20', 129);
INSERT INTO `app_api_article` VALUES (940, 'Jmeter如何设置线程数，ramp-up period，循环次数', 'https://www.imooc.com/static/img/article/cover/pic8.jpg', 105, '量子位', '人工智能', '08.24', 130);
INSERT INTO `app_api_article` VALUES (941, '长安十二时辰大结局一段时间了', 'https://img3.mukewang.com/5bf3a1620001b65902720272-200-200.jpg', 12400, '量子位', '资讯', '08.21', 130);
INSERT INTO `app_api_article` VALUES (942, '开发电商购物直播系统是直播公会的出路吗？我个人这么觉得', 'https://www.imooc.com/static/img/article/cover/pic12.jpg', 199, '量子位', '人工智能', '08.20', 130);
INSERT INTO `app_api_article` VALUES (943, '如何选择一个性能测试工具（LoadRunner和Locust的一次对比', 'https://www.imooc.com/static/img/article/cover/pic9.jpg', 105, '量子位', '人工智能', '08.24', 127);
INSERT INTO `app_api_article` VALUES (944, 'Spread.NET 表格控件 V12.0 Update2 发布更新', 'https://img4.mukewang.com/5bf3a0ce0001f11102720272-200-200.jpg', 12400, '量子位', '资讯', '08.21', 127);
INSERT INTO `app_api_article` VALUES (945, '使用Typora+docsify+GitHub Pages搭建团队知识', 'https://www.imooc.com/static/img/article/cover/pic5.jpg', 199, '量子位', '人工智能', '08.20', 127);
INSERT INTO `app_api_article` VALUES (946, '培训班出身如何构建自己的知识体系？', 'https://www.imooc.com/static/img/article/cover/pic28.jpg', 105, '量子位', '人工智能', '08.24', 128);
INSERT INTO `app_api_article` VALUES (947, '【一元福利】程序员的高数入门课', 'https://www.imooc.com/static/img/article/cover/pic4.jpg', 12400, '量子位', '资讯', '08.21', 128);
INSERT INTO `app_api_article` VALUES (948, '程序员是最好的产品经理', 'https://img3.mukewang.com/5d5dff6600017e9711990674-200-200.jpg', 199, '量子位', '人工智能', '08.20', 128);
INSERT INTO `app_api_article` VALUES (949, '牛郎决定去学编程', 'https://img4.mukewang.com/5d5411e00001007e05190300-200-200.jpg', 105, '量子位', '人工智能', '08.24', 129);
INSERT INTO `app_api_article` VALUES (950, '程序员在理发时悟出的真理', 'https://img1.mukewang.com/5d20841a0001118d05000375-200-200.jpg', 12400, '量子位', '资讯', '08.21', 129);
INSERT INTO `app_api_article` VALUES (951, '程序员的江湖梦', 'https://img4.mukewang.com/5d2082170001e05105000336-200-200.jpg', 199, '量子位', '人工智能', '08.20', 129);
INSERT INTO `app_api_article` VALUES (952, 'Jmeter如何设置线程数，ramp-up period，循环次数', 'https://www.imooc.com/static/img/article/cover/pic8.jpg', 105, '量子位', '人工智能', '08.24', 130);
INSERT INTO `app_api_article` VALUES (953, '长安十二时辰大结局一段时间了', 'https://img3.mukewang.com/5bf3a1620001b65902720272-200-200.jpg', 12400, '量子位', '资讯', '08.21', 130);
INSERT INTO `app_api_article` VALUES (954, '开发电商购物直播系统是直播公会的出路吗？我个人这么觉得', 'https://www.imooc.com/static/img/article/cover/pic12.jpg', 199, '量子位', '人工智能', '08.20', 130);
COMMIT;

-- ----------------------------
-- Table structure for app_api_articletype
-- ----------------------------
DROP TABLE IF EXISTS `app_api_articletype`;
CREATE TABLE `app_api_articletype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `code` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_articletype
-- ----------------------------
BEGIN;
INSERT INTO `app_api_articletype` VALUES (118, '推荐', 0);
INSERT INTO `app_api_articletype` VALUES (119, '资讯', 1);
INSERT INTO `app_api_articletype` VALUES (120, '最新文章', 2);
INSERT INTO `app_api_articletype` VALUES (121, '区块链', 3);
INSERT INTO `app_api_articletype` VALUES (122, '人工智能', 4);
INSERT INTO `app_api_articletype` VALUES (123, '云计算/大数据', 5);
INSERT INTO `app_api_articletype` VALUES (124, '前端开发', 6);
INSERT INTO `app_api_articletype` VALUES (125, '后端开发', 7);
INSERT INTO `app_api_articletype` VALUES (126, '移动端开发', 8);
INSERT INTO `app_api_articletype` VALUES (127, '工具资源', 9);
INSERT INTO `app_api_articletype` VALUES (128, '职场生活', 10);
INSERT INTO `app_api_articletype` VALUES (129, '幽默段子', 11);
INSERT INTO `app_api_articletype` VALUES (130, '其它', 12);
COMMIT;

-- ----------------------------
-- Table structure for app_api_bill
-- ----------------------------
DROP TABLE IF EXISTS `app_api_bill`;
CREATE TABLE `app_api_bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `orderno` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `cost` int(11) NOT NULL,
  `way_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_api_bill_way_id_d9e97a89` (`way_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_bill
-- ----------------------------
BEGIN;
INSERT INTO `app_api_bill` VALUES (1, '', '', '基于TypeScript从零重构axios', '2019-04-24 10:36:38', 32800, 1);
INSERT INTO `app_api_bill` VALUES (2, '', '', 'Vue 2.0开发企业级移动端音乐Web APP', '2019-04-24 10:36:38', 30579, 1);
INSERT INTO `app_api_bill` VALUES (3, '', '', 'Get全栈技能点 Vue2.0 / Node.js / MongoDB 打造商城系统', '2019-03-15 19:26:01', 26670, 1);
INSERT INTO `app_api_bill` VALUES (4, '', '', '纯正商业级应用-微信小程序开发实战', '2019-03-15 19:26:01', 28050, 1);
INSERT INTO `app_api_bill` VALUES (5, '', '', '基于TypeScript从零重构axios', '2019-04-24 10:36:38', 32800, 1);
INSERT INTO `app_api_bill` VALUES (6, '', '', 'Vue 2.0开发企业级移动端音乐Web APP', '2019-04-24 10:36:38', 30579, 4);
INSERT INTO `app_api_bill` VALUES (7, '', '', 'Get全栈技能点 Vue2.0 / Node.js / MongoDB 打造商城系统', '2019-03-15 19:26:01', 26670, 4);
INSERT INTO `app_api_bill` VALUES (8, '', '', '纯正商业级应用-微信小程序开发实战', '2019-03-15 19:26:01', 28050, 4);
INSERT INTO `app_api_bill` VALUES (9, '', '', '基于TypeScript从零重构axios', '2019-04-24 10:36:38', 32800, 4);
INSERT INTO `app_api_bill` VALUES (10, '', '', 'Vue 2.0开发企业级移动端音乐Web APP', '2019-04-24 10:36:38', 30579, 4);
INSERT INTO `app_api_bill` VALUES (11, '', '', 'Get全栈技能点 Vue2.0 / Node.js / MongoDB 打造商城系统', '2019-03-15 19:26:01', 26670, 4);
INSERT INTO `app_api_bill` VALUES (12, '', '', '纯正商业级应用-微信小程序开发实战', '2019-03-15 19:26:01', 28050, 4);
INSERT INTO `app_api_bill` VALUES (13, '4', '', '基于TypeScript从零重构axios', '2019-04-24 10:36:38', 32800, 4);
COMMIT;

-- ----------------------------
-- Table structure for app_api_cart
-- ----------------------------
DROP TABLE IF EXISTS `app_api_cart`;
CREATE TABLE `app_api_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `lessonid` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `price` int(11) NOT NULL,
  `isDiscount` tinyint(1) NOT NULL,
  `discountPrice` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_cart
-- ----------------------------
BEGIN;
INSERT INTO `app_api_cart` VALUES (1, '4', '145', 'https://img.mukewang.com/szimg/5e1d990f0885d97306000338-360-202.jpg', 'TypeScript  系统入门到项目实战 趁早学习提高职场竞争力', 266, 1, 216);
COMMIT;

-- ----------------------------
-- Table structure for app_api_catalog
-- ----------------------------
DROP TABLE IF EXISTS `app_api_catalog`;
CREATE TABLE `app_api_catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lessonid` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `introduction` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `isComplete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_catalog
-- ----------------------------
BEGIN;
INSERT INTO `app_api_catalog` VALUES (39, '198', '简介：对于很多刚接触Vue的同学，最难做到的就是编程思路的切换，这门课程，我们将通过形象的例子给大家讲解Vue的基础语法及编程思路，带大家快速的上手Vue的基础开发，这门课也包含了关于组件话和vue-cli等内容的基础讲解。', 1);
INSERT INTO `app_api_catalog` VALUES (40, '199', '简介：对于很多刚接触Vue的同学，最难做到的就是编程思路的切换，这门课程，我们将通过形象的例子给大家讲解Vue的基础语法及编程思路，带大家快速的上手Vue的基础开发，这门课也包含了关于组件话和vue-cli等内容的基础讲解。', 1);
INSERT INTO `app_api_catalog` VALUES (41, '200', '简介：对于很多刚接触Vue的同学，最难做到的就是编程思路的切换，这门课程，我们将通过形象的例子给大家讲解Vue的基础语法及编程思路，带大家快速的上手Vue的基础开发，这门课也包含了关于组件话和vue-cli等内容的基础讲解。', 1);
INSERT INTO `app_api_catalog` VALUES (42, '201', '简介：对于很多刚接触Vue的同学，最难做到的就是编程思路的切换，这门课程，我们将通过形象的例子给大家讲解Vue的基础语法及编程思路，带大家快速的上手Vue的基础开发，这门课也包含了关于组件话和vue-cli等内容的基础讲解。', 1);
INSERT INTO `app_api_catalog` VALUES (43, '202', '简介：对于很多刚接触Vue的同学，最难做到的就是编程思路的切换，这门课程，我们将通过形象的例子给大家讲解Vue的基础语法及编程思路，带大家快速的上手Vue的基础开发，这门课也包含了关于组件话和vue-cli等内容的基础讲解。', 1);
INSERT INTO `app_api_catalog` VALUES (44, '203', '简介：对于很多刚接触Vue的同学，最难做到的就是编程思路的切换，这门课程，我们将通过形象的例子给大家讲解Vue的基础语法及编程思路，带大家快速的上手Vue的基础开发，这门课也包含了关于组件话和vue-cli等内容的基础讲解。', 1);
INSERT INTO `app_api_catalog` VALUES (45, '204', '简介：对于很多刚接触Vue的同学，最难做到的就是编程思路的切换，这门课程，我们将通过形象的例子给大家讲解Vue的基础语法及编程思路，带大家快速的上手Vue的基础开发，这门课也包含了关于组件话和vue-cli等内容的基础讲解。', 1);
INSERT INTO `app_api_catalog` VALUES (46, '205', '简介：对于很多刚接触Vue的同学，最难做到的就是编程思路的切换，这门课程，我们将通过形象的例子给大家讲解Vue的基础语法及编程思路，带大家快速的上手Vue的基础开发，这门课也包含了关于组件话和vue-cli等内容的基础讲解。', 1);
INSERT INTO `app_api_catalog` VALUES (47, '206', '简介：对于很多刚接触Vue的同学，最难做到的就是编程思路的切换，这门课程，我们将通过形象的例子给大家讲解Vue的基础语法及编程思路，带大家快速的上手Vue的基础开发，这门课也包含了关于组件话和vue-cli等内容的基础讲解。', 1);
INSERT INTO `app_api_catalog` VALUES (48, '207', '简介：对于很多刚接触Vue的同学，最难做到的就是编程思路的切换，这门课程，我们将通过形象的例子给大家讲解Vue的基础语法及编程思路，带大家快速的上手Vue的基础开发，这门课也包含了关于组件话和vue-cli等内容的基础讲解。', 1);
INSERT INTO `app_api_catalog` VALUES (49, '208', '简介：对于很多刚接触Vue的同学，最难做到的就是编程思路的切换，这门课程，我们将通过形象的例子给大家讲解Vue的基础语法及编程思路，带大家快速的上手Vue的基础开发，这门课也包含了关于组件话和vue-cli等内容的基础讲解。', 1);
INSERT INTO `app_api_catalog` VALUES (50, '209', '简介：对于很多刚接触Vue的同学，最难做到的就是编程思路的切换，这门课程，我们将通过形象的例子给大家讲解Vue的基础语法及编程思路，带大家快速的上手Vue的基础开发，这门课也包含了关于组件话和vue-cli等内容的基础讲解。', 1);
INSERT INTO `app_api_catalog` VALUES (51, '210', '简介：对于很多刚接触Vue的同学，最难做到的就是编程思路的切换，这门课程，我们将通过形象的例子给大家讲解Vue的基础语法及编程思路，带大家快速的上手Vue的基础开发，这门课也包含了关于组件话和vue-cli等内容的基础讲解。', 1);
INSERT INTO `app_api_catalog` VALUES (52, '211', '简介：对于很多刚接触Vue的同学，最难做到的就是编程思路的切换，这门课程，我们将通过形象的例子给大家讲解Vue的基础语法及编程思路，带大家快速的上手Vue的基础开发，这门课也包含了关于组件话和vue-cli等内容的基础讲解。', 1);
INSERT INTO `app_api_catalog` VALUES (53, '212', '简介：对于很多刚接触Vue的同学，最难做到的就是编程思路的切换，这门课程，我们将通过形象的例子给大家讲解Vue的基础语法及编程思路，带大家快速的上手Vue的基础开发，这门课也包含了关于组件话和vue-cli等内容的基础讲解。', 1);
INSERT INTO `app_api_catalog` VALUES (54, '213', '简介：对于很多刚接触Vue的同学，最难做到的就是编程思路的切换，这门课程，我们将通过形象的例子给大家讲解Vue的基础语法及编程思路，带大家快速的上手Vue的基础开发，这门课也包含了关于组件话和vue-cli等内容的基础讲解。', 1);
INSERT INTO `app_api_catalog` VALUES (55, '214', '简介：对于很多刚接触Vue的同学，最难做到的就是编程思路的切换，这门课程，我们将通过形象的例子给大家讲解Vue的基础语法及编程思路，带大家快速的上手Vue的基础开发，这门课也包含了关于组件话和vue-cli等内容的基础讲解。', 1);
INSERT INTO `app_api_catalog` VALUES (56, '215', '简介：对于很多刚接触Vue的同学，最难做到的就是编程思路的切换，这门课程，我们将通过形象的例子给大家讲解Vue的基础语法及编程思路，带大家快速的上手Vue的基础开发，这门课也包含了关于组件话和vue-cli等内容的基础讲解。', 1);
INSERT INTO `app_api_catalog` VALUES (57, '216', '简介：对于很多刚接触Vue的同学，最难做到的就是编程思路的切换，这门课程，我们将通过形象的例子给大家讲解Vue的基础语法及编程思路，带大家快速的上手Vue的基础开发，这门课也包含了关于组件话和vue-cli等内容的基础讲解。', 1);
COMMIT;

-- ----------------------------
-- Table structure for app_api_chapter
-- ----------------------------
DROP TABLE IF EXISTS `app_api_chapter`;
CREATE TABLE `app_api_chapter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `introduce` varchar(800) COLLATE utf8mb4_general_ci NOT NULL,
  `lesson_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_api_chapter_lesson_id_abe252fd` (`lesson_id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_chapter
-- ----------------------------
BEGIN;
INSERT INTO `app_api_chapter` VALUES (153, '第1章 课程介绍', '对课程讲解内容做完整陈述，帮助大家理清学习思路。', 198);
INSERT INTO `app_api_chapter` VALUES (154, '第2章 Vue基础语法', '本章节通过浅显易懂的实例来给大家讲解Vue2.0的基本语法，包含计算属性，侦听器，基础模版指令等。', 198);
INSERT INTO `app_api_chapter` VALUES (155, '第3章 Vue中的组件', '本章节讲解Vue中组件的概念和使用，结合对组件的完整理解，我们还将做一个TodoList功能模块。', 198);
INSERT INTO `app_api_chapter` VALUES (156, '第4章 Vue-cli的使用', '本章节我们讲给大家介绍如何使用Vue-cli脚手架工具构建项目，并讲解单文件组件和局部全局样式的知识。', 198);
INSERT INTO `app_api_chapter` VALUES (157, '第1章 课程介绍', '对课程讲解内容做完整陈述，帮助大家理清学习思路。', 199);
INSERT INTO `app_api_chapter` VALUES (158, '第2章 Vue基础语法', '本章节通过浅显易懂的实例来给大家讲解Vue2.0的基本语法，包含计算属性，侦听器，基础模版指令等。', 199);
INSERT INTO `app_api_chapter` VALUES (159, '第3章 Vue中的组件', '本章节讲解Vue中组件的概念和使用，结合对组件的完整理解，我们还将做一个TodoList功能模块。', 199);
INSERT INTO `app_api_chapter` VALUES (160, '第4章 Vue-cli的使用', '本章节我们讲给大家介绍如何使用Vue-cli脚手架工具构建项目，并讲解单文件组件和局部全局样式的知识。', 199);
INSERT INTO `app_api_chapter` VALUES (161, '第1章 课程介绍', '对课程讲解内容做完整陈述，帮助大家理清学习思路。', 200);
INSERT INTO `app_api_chapter` VALUES (162, '第2章 Vue基础语法', '本章节通过浅显易懂的实例来给大家讲解Vue2.0的基本语法，包含计算属性，侦听器，基础模版指令等。', 200);
INSERT INTO `app_api_chapter` VALUES (163, '第3章 Vue中的组件', '本章节讲解Vue中组件的概念和使用，结合对组件的完整理解，我们还将做一个TodoList功能模块。', 200);
INSERT INTO `app_api_chapter` VALUES (164, '第4章 Vue-cli的使用', '本章节我们讲给大家介绍如何使用Vue-cli脚手架工具构建项目，并讲解单文件组件和局部全局样式的知识。', 200);
INSERT INTO `app_api_chapter` VALUES (165, '第1章 课程介绍', '对课程讲解内容做完整陈述，帮助大家理清学习思路。', 201);
INSERT INTO `app_api_chapter` VALUES (166, '第2章 Vue基础语法', '本章节通过浅显易懂的实例来给大家讲解Vue2.0的基本语法，包含计算属性，侦听器，基础模版指令等。', 201);
INSERT INTO `app_api_chapter` VALUES (167, '第3章 Vue中的组件', '本章节讲解Vue中组件的概念和使用，结合对组件的完整理解，我们还将做一个TodoList功能模块。', 201);
INSERT INTO `app_api_chapter` VALUES (168, '第4章 Vue-cli的使用', '本章节我们讲给大家介绍如何使用Vue-cli脚手架工具构建项目，并讲解单文件组件和局部全局样式的知识。', 201);
INSERT INTO `app_api_chapter` VALUES (169, '第1章 课程介绍', '对课程讲解内容做完整陈述，帮助大家理清学习思路。', 202);
INSERT INTO `app_api_chapter` VALUES (170, '第2章 Vue基础语法', '本章节通过浅显易懂的实例来给大家讲解Vue2.0的基本语法，包含计算属性，侦听器，基础模版指令等。', 202);
INSERT INTO `app_api_chapter` VALUES (171, '第3章 Vue中的组件', '本章节讲解Vue中组件的概念和使用，结合对组件的完整理解，我们还将做一个TodoList功能模块。', 202);
INSERT INTO `app_api_chapter` VALUES (172, '第4章 Vue-cli的使用', '本章节我们讲给大家介绍如何使用Vue-cli脚手架工具构建项目，并讲解单文件组件和局部全局样式的知识。', 202);
INSERT INTO `app_api_chapter` VALUES (173, '第1章 课程介绍', '对课程讲解内容做完整陈述，帮助大家理清学习思路。', 203);
INSERT INTO `app_api_chapter` VALUES (174, '第2章 Vue基础语法', '本章节通过浅显易懂的实例来给大家讲解Vue2.0的基本语法，包含计算属性，侦听器，基础模版指令等。', 203);
INSERT INTO `app_api_chapter` VALUES (175, '第3章 Vue中的组件', '本章节讲解Vue中组件的概念和使用，结合对组件的完整理解，我们还将做一个TodoList功能模块。', 203);
INSERT INTO `app_api_chapter` VALUES (176, '第4章 Vue-cli的使用', '本章节我们讲给大家介绍如何使用Vue-cli脚手架工具构建项目，并讲解单文件组件和局部全局样式的知识。', 203);
INSERT INTO `app_api_chapter` VALUES (177, '第1章 课程介绍', '对课程讲解内容做完整陈述，帮助大家理清学习思路。', 204);
INSERT INTO `app_api_chapter` VALUES (178, '第2章 Vue基础语法', '本章节通过浅显易懂的实例来给大家讲解Vue2.0的基本语法，包含计算属性，侦听器，基础模版指令等。', 204);
INSERT INTO `app_api_chapter` VALUES (179, '第3章 Vue中的组件', '本章节讲解Vue中组件的概念和使用，结合对组件的完整理解，我们还将做一个TodoList功能模块。', 204);
INSERT INTO `app_api_chapter` VALUES (180, '第4章 Vue-cli的使用', '本章节我们讲给大家介绍如何使用Vue-cli脚手架工具构建项目，并讲解单文件组件和局部全局样式的知识。', 204);
INSERT INTO `app_api_chapter` VALUES (181, '第1章 课程介绍', '对课程讲解内容做完整陈述，帮助大家理清学习思路。', 205);
INSERT INTO `app_api_chapter` VALUES (182, '第2章 Vue基础语法', '本章节通过浅显易懂的实例来给大家讲解Vue2.0的基本语法，包含计算属性，侦听器，基础模版指令等。', 205);
INSERT INTO `app_api_chapter` VALUES (183, '第3章 Vue中的组件', '本章节讲解Vue中组件的概念和使用，结合对组件的完整理解，我们还将做一个TodoList功能模块。', 205);
INSERT INTO `app_api_chapter` VALUES (184, '第4章 Vue-cli的使用', '本章节我们讲给大家介绍如何使用Vue-cli脚手架工具构建项目，并讲解单文件组件和局部全局样式的知识。', 205);
INSERT INTO `app_api_chapter` VALUES (185, '第1章 课程介绍', '对课程讲解内容做完整陈述，帮助大家理清学习思路。', 206);
INSERT INTO `app_api_chapter` VALUES (186, '第2章 Vue基础语法', '本章节通过浅显易懂的实例来给大家讲解Vue2.0的基本语法，包含计算属性，侦听器，基础模版指令等。', 206);
INSERT INTO `app_api_chapter` VALUES (187, '第3章 Vue中的组件', '本章节讲解Vue中组件的概念和使用，结合对组件的完整理解，我们还将做一个TodoList功能模块。', 206);
INSERT INTO `app_api_chapter` VALUES (188, '第4章 Vue-cli的使用', '本章节我们讲给大家介绍如何使用Vue-cli脚手架工具构建项目，并讲解单文件组件和局部全局样式的知识。', 206);
INSERT INTO `app_api_chapter` VALUES (189, '第1章 课程介绍', '对课程讲解内容做完整陈述，帮助大家理清学习思路。', 207);
INSERT INTO `app_api_chapter` VALUES (190, '第2章 Vue基础语法', '本章节通过浅显易懂的实例来给大家讲解Vue2.0的基本语法，包含计算属性，侦听器，基础模版指令等。', 207);
INSERT INTO `app_api_chapter` VALUES (191, '第3章 Vue中的组件', '本章节讲解Vue中组件的概念和使用，结合对组件的完整理解，我们还将做一个TodoList功能模块。', 207);
INSERT INTO `app_api_chapter` VALUES (192, '第4章 Vue-cli的使用', '本章节我们讲给大家介绍如何使用Vue-cli脚手架工具构建项目，并讲解单文件组件和局部全局样式的知识。', 207);
INSERT INTO `app_api_chapter` VALUES (193, '第1章 课程介绍', '对课程讲解内容做完整陈述，帮助大家理清学习思路。', 208);
INSERT INTO `app_api_chapter` VALUES (194, '第2章 Vue基础语法', '本章节通过浅显易懂的实例来给大家讲解Vue2.0的基本语法，包含计算属性，侦听器，基础模版指令等。', 208);
INSERT INTO `app_api_chapter` VALUES (195, '第3章 Vue中的组件', '本章节讲解Vue中组件的概念和使用，结合对组件的完整理解，我们还将做一个TodoList功能模块。', 208);
INSERT INTO `app_api_chapter` VALUES (196, '第4章 Vue-cli的使用', '本章节我们讲给大家介绍如何使用Vue-cli脚手架工具构建项目，并讲解单文件组件和局部全局样式的知识。', 208);
INSERT INTO `app_api_chapter` VALUES (197, '第1章 课程介绍', '对课程讲解内容做完整陈述，帮助大家理清学习思路。', 209);
INSERT INTO `app_api_chapter` VALUES (198, '第2章 Vue基础语法', '本章节通过浅显易懂的实例来给大家讲解Vue2.0的基本语法，包含计算属性，侦听器，基础模版指令等。', 209);
INSERT INTO `app_api_chapter` VALUES (199, '第3章 Vue中的组件', '本章节讲解Vue中组件的概念和使用，结合对组件的完整理解，我们还将做一个TodoList功能模块。', 209);
INSERT INTO `app_api_chapter` VALUES (200, '第4章 Vue-cli的使用', '本章节我们讲给大家介绍如何使用Vue-cli脚手架工具构建项目，并讲解单文件组件和局部全局样式的知识。', 209);
INSERT INTO `app_api_chapter` VALUES (201, '第1章 课程介绍', '对课程讲解内容做完整陈述，帮助大家理清学习思路。', 210);
INSERT INTO `app_api_chapter` VALUES (202, '第2章 Vue基础语法', '本章节通过浅显易懂的实例来给大家讲解Vue2.0的基本语法，包含计算属性，侦听器，基础模版指令等。', 210);
INSERT INTO `app_api_chapter` VALUES (203, '第3章 Vue中的组件', '本章节讲解Vue中组件的概念和使用，结合对组件的完整理解，我们还将做一个TodoList功能模块。', 210);
INSERT INTO `app_api_chapter` VALUES (204, '第4章 Vue-cli的使用', '本章节我们讲给大家介绍如何使用Vue-cli脚手架工具构建项目，并讲解单文件组件和局部全局样式的知识。', 210);
INSERT INTO `app_api_chapter` VALUES (205, '第1章 课程介绍', '对课程讲解内容做完整陈述，帮助大家理清学习思路。', 211);
INSERT INTO `app_api_chapter` VALUES (206, '第2章 Vue基础语法', '本章节通过浅显易懂的实例来给大家讲解Vue2.0的基本语法，包含计算属性，侦听器，基础模版指令等。', 211);
INSERT INTO `app_api_chapter` VALUES (207, '第3章 Vue中的组件', '本章节讲解Vue中组件的概念和使用，结合对组件的完整理解，我们还将做一个TodoList功能模块。', 211);
INSERT INTO `app_api_chapter` VALUES (208, '第4章 Vue-cli的使用', '本章节我们讲给大家介绍如何使用Vue-cli脚手架工具构建项目，并讲解单文件组件和局部全局样式的知识。', 211);
INSERT INTO `app_api_chapter` VALUES (209, '第1章 课程介绍', '对课程讲解内容做完整陈述，帮助大家理清学习思路。', 212);
INSERT INTO `app_api_chapter` VALUES (210, '第2章 Vue基础语法', '本章节通过浅显易懂的实例来给大家讲解Vue2.0的基本语法，包含计算属性，侦听器，基础模版指令等。', 212);
INSERT INTO `app_api_chapter` VALUES (211, '第3章 Vue中的组件', '本章节讲解Vue中组件的概念和使用，结合对组件的完整理解，我们还将做一个TodoList功能模块。', 212);
INSERT INTO `app_api_chapter` VALUES (212, '第4章 Vue-cli的使用', '本章节我们讲给大家介绍如何使用Vue-cli脚手架工具构建项目，并讲解单文件组件和局部全局样式的知识。', 212);
INSERT INTO `app_api_chapter` VALUES (213, '第1章 课程介绍', '对课程讲解内容做完整陈述，帮助大家理清学习思路。', 213);
INSERT INTO `app_api_chapter` VALUES (214, '第2章 Vue基础语法', '本章节通过浅显易懂的实例来给大家讲解Vue2.0的基本语法，包含计算属性，侦听器，基础模版指令等。', 213);
INSERT INTO `app_api_chapter` VALUES (215, '第3章 Vue中的组件', '本章节讲解Vue中组件的概念和使用，结合对组件的完整理解，我们还将做一个TodoList功能模块。', 213);
INSERT INTO `app_api_chapter` VALUES (216, '第4章 Vue-cli的使用', '本章节我们讲给大家介绍如何使用Vue-cli脚手架工具构建项目，并讲解单文件组件和局部全局样式的知识。', 213);
INSERT INTO `app_api_chapter` VALUES (217, '第1章 课程介绍', '对课程讲解内容做完整陈述，帮助大家理清学习思路。', 214);
INSERT INTO `app_api_chapter` VALUES (218, '第2章 Vue基础语法', '本章节通过浅显易懂的实例来给大家讲解Vue2.0的基本语法，包含计算属性，侦听器，基础模版指令等。', 214);
INSERT INTO `app_api_chapter` VALUES (219, '第3章 Vue中的组件', '本章节讲解Vue中组件的概念和使用，结合对组件的完整理解，我们还将做一个TodoList功能模块。', 214);
INSERT INTO `app_api_chapter` VALUES (220, '第4章 Vue-cli的使用', '本章节我们讲给大家介绍如何使用Vue-cli脚手架工具构建项目，并讲解单文件组件和局部全局样式的知识。', 214);
INSERT INTO `app_api_chapter` VALUES (221, '第1章 课程介绍', '对课程讲解内容做完整陈述，帮助大家理清学习思路。', 215);
INSERT INTO `app_api_chapter` VALUES (222, '第2章 Vue基础语法', '本章节通过浅显易懂的实例来给大家讲解Vue2.0的基本语法，包含计算属性，侦听器，基础模版指令等。', 215);
INSERT INTO `app_api_chapter` VALUES (223, '第3章 Vue中的组件', '本章节讲解Vue中组件的概念和使用，结合对组件的完整理解，我们还将做一个TodoList功能模块。', 215);
INSERT INTO `app_api_chapter` VALUES (224, '第4章 Vue-cli的使用', '本章节我们讲给大家介绍如何使用Vue-cli脚手架工具构建项目，并讲解单文件组件和局部全局样式的知识。', 215);
INSERT INTO `app_api_chapter` VALUES (225, '第1章 课程介绍', '对课程讲解内容做完整陈述，帮助大家理清学习思路。', 216);
INSERT INTO `app_api_chapter` VALUES (226, '第2章 Vue基础语法', '本章节通过浅显易懂的实例来给大家讲解Vue2.0的基本语法，包含计算属性，侦听器，基础模版指令等。', 216);
INSERT INTO `app_api_chapter` VALUES (227, '第3章 Vue中的组件', '本章节讲解Vue中组件的概念和使用，结合对组件的完整理解，我们还将做一个TodoList功能模块。', 216);
INSERT INTO `app_api_chapter` VALUES (228, '第4章 Vue-cli的使用', '本章节我们讲给大家介绍如何使用Vue-cli脚手架工具构建项目，并讲解单文件组件和局部全局样式的知识。', 216);
COMMIT;

-- ----------------------------
-- Table structure for app_api_comment
-- ----------------------------
DROP TABLE IF EXISTS `app_api_comment`;
CREATE TABLE `app_api_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lessonid` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_score` double NOT NULL,
  `easy_score` double NOT NULL,
  `logic_score` double NOT NULL,
  `time` datetime(6) NOT NULL,
  `comment` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_comment
-- ----------------------------
BEGIN;
INSERT INTO `app_api_comment` VALUES (761, '198', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.390509', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (762, '198', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.391263', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (763, '198', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.392311', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (764, '198', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.392991', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (765, '198', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.393562', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (766, '198', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.394160', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (767, '198', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.394738', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (768, '198', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.395302', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (769, '198', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.395829', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (770, '198', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.396342', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (771, '198', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.396963', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (772, '198', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.397480', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (773, '198', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.398021', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (774, '198', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.398474', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (775, '198', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.398963', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (776, '198', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.399442', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (777, '198', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.399976', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (778, '198', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.400434', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (779, '198', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.400866', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (780, '198', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.401325', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (781, '199', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.401751', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (782, '199', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.402167', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (783, '199', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.402704', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (784, '199', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.403222', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (785, '199', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.403817', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (786, '199', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.404298', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (787, '199', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.404786', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (788, '199', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.405284', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (789, '199', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.405749', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (790, '199', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.406168', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (791, '199', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.406628', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (792, '199', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.407189', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (793, '199', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.407660', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (794, '199', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.408122', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (795, '199', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.408540', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (796, '199', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.409011', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (797, '199', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.409503', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (798, '199', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.409996', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (799, '199', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.410437', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (800, '199', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.410981', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (801, '200', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.411433', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (802, '200', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.411898', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (803, '200', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.412315', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (804, '200', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.412768', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (805, '200', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.413223', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (806, '200', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.413678', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (807, '200', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.414153', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (808, '200', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.414607', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (809, '200', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.415060', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (810, '200', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.415507', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (811, '200', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.415920', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (812, '200', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.416347', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (813, '200', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.416789', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (814, '200', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.417330', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (815, '200', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.417726', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (816, '200', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.418195', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (817, '200', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.418708', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (818, '200', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.419160', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (819, '200', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.419700', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (820, '200', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.420132', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (821, '201', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.420685', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (822, '201', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.421234', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (823, '201', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.421710', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (824, '201', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.422183', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (825, '201', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.422649', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (826, '201', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.423093', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (827, '201', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.423629', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (828, '201', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.424104', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (829, '201', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.424526', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (830, '201', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.424986', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (831, '201', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.425407', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (832, '201', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.425827', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (833, '201', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.426374', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (834, '201', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.426968', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (835, '201', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.427449', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (836, '201', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.427886', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (837, '201', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.428329', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (838, '201', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.428833', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (839, '201', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.429346', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (840, '201', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.429784', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (841, '202', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.430368', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (842, '202', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.430852', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (843, '202', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.431335', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (844, '202', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.431937', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (845, '202', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.432396', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (846, '202', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.432867', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (847, '202', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.433338', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (848, '202', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.433804', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (849, '202', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.434245', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (850, '202', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.434701', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (851, '202', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.435149', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (852, '202', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.435634', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (853, '202', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.436076', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (854, '202', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.436524', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (855, '202', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.436960', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (856, '202', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.437397', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (857, '202', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.437839', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (858, '202', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.438238', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (859, '202', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.438670', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (860, '202', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.439107', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (861, '203', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.439545', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (862, '203', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.440320', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (863, '203', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.440836', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (864, '203', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.441321', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (865, '203', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.441807', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (866, '203', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.442345', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (867, '203', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.442878', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (868, '203', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.443449', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (869, '203', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.443909', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (870, '203', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.444318', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (871, '203', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.444820', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (872, '203', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.445312', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (873, '203', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.445774', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (874, '203', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.446248', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (875, '203', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.446749', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (876, '203', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.447231', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (877, '203', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.447705', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (878, '203', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.448211', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (879, '203', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.448638', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (880, '203', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.449119', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (881, '204', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.449603', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (882, '204', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.450181', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (883, '204', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.450629', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (884, '204', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.451141', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (885, '204', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.451586', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (886, '204', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.452054', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (887, '204', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.452523', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (888, '204', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.453000', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (889, '204', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.453577', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (890, '204', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.454014', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (891, '204', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.454478', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (892, '204', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.454909', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (893, '204', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.455375', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (894, '204', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.455834', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (895, '204', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.456245', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (896, '204', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.456795', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (897, '204', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.457248', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (898, '204', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.457719', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (899, '204', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.458155', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (900, '204', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.458631', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (901, '205', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.459124', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (902, '205', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.459619', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (903, '205', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.460198', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (904, '205', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.460618', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (905, '205', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.461088', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (906, '205', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.461544', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (907, '205', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.461961', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (908, '205', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.462419', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (909, '205', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.462888', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (910, '205', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.463419', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (911, '205', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.463887', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (912, '205', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.464409', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (913, '205', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.464957', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (914, '205', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.465417', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (915, '205', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.465841', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (916, '205', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.466261', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (917, '205', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.466853', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (918, '205', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.467296', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (919, '205', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.467784', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (920, '205', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.468224', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (921, '206', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.468672', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (922, '206', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.469097', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (923, '206', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.469556', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (924, '206', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.470126', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (925, '206', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.470543', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (926, '206', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.471003', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (927, '206', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.471580', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (928, '206', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.472096', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (929, '206', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.472533', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (930, '206', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.472989', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (931, '206', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.473539', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (932, '206', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.474000', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (933, '206', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.474463', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (934, '206', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.474954', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (935, '206', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.475419', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (936, '206', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.476062', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (937, '206', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.476747', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (938, '206', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.477369', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (939, '206', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.477852', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (940, '206', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.478301', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (941, '207', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.478764', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (942, '207', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.479264', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (943, '207', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.479734', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (944, '207', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.480240', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (945, '207', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.480667', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (946, '207', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.481116', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (947, '207', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.481570', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (948, '207', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.482026', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (949, '207', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.482520', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (950, '207', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.482952', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (951, '207', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.483424', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (952, '207', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.483997', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (953, '207', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.484498', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (954, '207', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.484984', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (955, '207', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.485479', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (956, '207', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.485925', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (957, '207', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.486377', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (958, '207', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.486822', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (959, '207', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.487378', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (960, '207', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.487839', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (961, '208', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.488296', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (962, '208', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.488782', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (963, '208', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.489256', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (964, '208', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.489721', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (965, '208', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.490145', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (966, '208', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.490708', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (967, '208', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.491177', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (968, '208', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.491626', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (969, '208', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.492111', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (970, '208', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.492545', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (971, '208', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.493010', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (972, '208', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.493540', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (973, '208', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.494085', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (974, '208', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.494562', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (975, '208', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.494977', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (976, '208', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.495395', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (977, '208', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.495895', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (978, '208', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.496359', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (979, '208', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.496854', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (980, '208', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.497341', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (981, '209', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.497913', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (982, '209', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.498551', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (983, '209', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.499051', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (984, '209', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.499495', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (985, '209', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.500079', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (986, '209', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.500598', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (987, '209', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.501062', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (988, '209', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.501620', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (989, '209', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.502182', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (990, '209', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.502804', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (991, '209', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.503275', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (992, '209', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.503827', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (993, '209', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.504617', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (994, '209', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.505377', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (995, '209', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.505997', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (996, '209', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.506530', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (997, '209', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.506998', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (998, '209', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.507524', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (999, '209', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.508026', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1000, '209', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.508481', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1001, '210', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.508979', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1002, '210', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.509465', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1003, '210', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.509967', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1004, '210', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.510456', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1005, '210', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.510982', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1006, '210', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.511575', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1007, '210', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.512192', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1008, '210', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.512822', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1009, '210', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.513307', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1010, '210', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.513749', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1011, '210', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.514353', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1012, '210', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.514878', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1013, '210', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.515370', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1014, '210', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.515908', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1015, '210', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.516373', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1016, '210', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.516781', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1017, '210', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.517286', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1018, '210', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.517754', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1019, '210', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.518217', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1020, '210', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.518628', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1021, '211', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.519175', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1022, '211', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.519656', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1023, '211', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.520136', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1024, '211', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.520641', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1025, '211', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.521089', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1026, '211', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.521574', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1027, '211', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.522299', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1028, '211', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.522919', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1029, '211', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.523369', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1030, '211', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.523952', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1031, '211', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.524429', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1032, '211', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.524981', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1033, '211', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.525576', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1034, '211', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.526080', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1035, '211', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.526685', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1036, '211', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.527177', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1037, '211', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.527666', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1038, '211', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.528080', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1039, '211', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.528519', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1040, '211', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.528956', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1041, '212', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.529404', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1042, '212', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.529837', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1043, '212', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.530294', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1044, '212', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.530781', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1045, '212', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.531281', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1046, '212', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.531721', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1047, '212', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.532192', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1048, '212', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.532750', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1049, '212', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.533202', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1050, '212', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.533616', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1051, '212', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.534068', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1052, '212', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.534496', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1053, '212', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.534945', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1054, '212', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.535369', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1055, '212', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.536056', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1056, '212', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.536530', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1057, '212', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.536996', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1058, '212', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.537446', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1059, '212', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.537865', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1060, '212', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.538349', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1061, '213', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.538860', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1062, '213', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.539390', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1063, '213', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.539805', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1064, '213', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.540261', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1065, '213', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.540828', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1066, '213', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.541295', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1067, '213', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.541757', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1068, '213', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.542221', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1069, '213', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.542698', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1070, '213', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.543121', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1071, '213', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.543576', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1072, '213', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.544044', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1073, '213', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.544578', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1074, '213', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.545033', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1075, '213', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.545475', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1076, '213', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.546068', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1077, '213', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.546736', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1078, '213', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.547215', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1079, '213', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.547639', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1080, '213', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.548099', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1081, '214', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.548527', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1082, '214', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.548946', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1083, '214', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.549497', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1084, '214', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.549910', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1085, '214', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.550364', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1086, '214', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.550776', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1087, '214', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.551183', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1088, '214', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.551739', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1089, '214', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.552324', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1090, '214', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.552906', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1091, '214', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.553333', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1092, '214', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.553829', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1093, '214', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.554292', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1094, '214', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.554716', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1095, '214', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.555167', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1096, '214', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.555583', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1097, '214', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.556057', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1098, '214', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.556513', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1099, '214', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.556935', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1100, '214', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.557461', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1101, '215', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.557918', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1102, '215', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.558372', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1103, '215', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.558823', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1104, '215', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.559377', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1105, '215', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.559822', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1106, '215', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.560290', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1107, '215', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.560755', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1108, '215', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.561230', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1109, '215', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.561709', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1110, '215', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.562149', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1111, '215', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.562731', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1112, '215', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.563202', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1113, '215', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.563660', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1114, '215', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.564158', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1115, '215', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.564660', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1116, '215', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.565167', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1117, '215', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.565612', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1118, '215', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.566080', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1119, '215', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.566551', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1120, '215', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.567031', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1121, '216', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.567457', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1122, '216', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.567963', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1123, '216', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.568447', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1124, '216', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.568933', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1125, '216', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.569409', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1126, '216', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.569837', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1127, '216', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.570290', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1128, '216', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.570765', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1129, '216', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.571309', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1130, '216', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.571765', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1131, '216', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9.6, 9.5, 9.7, '2020-10-07 01:42:47.572259', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1132, '216', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9.6, 9.2, 9.8, '2020-10-07 01:42:47.572854', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1133, '216', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 9.9, 9.3, 9.4, '2020-10-07 01:42:47.573330', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1134, '216', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 8, 9.3, 9.4, '2020-10-07 01:42:47.573749', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1135, '216', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 7, 8.3, 8.4, '2020-10-07 01:42:47.574215', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
INSERT INTO `app_api_comment` VALUES (1136, '216', '网络侦探', 'https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg', 9, 8.3, 8.4, '2020-10-07 01:42:47.574658', '就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。');
INSERT INTO `app_api_comment` VALUES (1137, '216', 'Cassie_MC', 'https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg', 9, 9.3, 9.4, '2020-10-07 01:42:47.575087', '非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。');
INSERT INTO `app_api_comment` VALUES (1138, '216', '凌晨晚餐', 'https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg', 8.5, 9, 9, '2020-10-07 01:42:47.575486', '之前只用过react，看这个课程，对vue有了初步的了解，挺好的');
INSERT INTO `app_api_comment` VALUES (1139, '216', '慕丝3222080', 'https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg', 9.9, 9, 9, '2020-10-07 01:42:47.575972', '感谢老师，入门很有帮助！');
INSERT INTO `app_api_comment` VALUES (1140, '216', '熬夜会牙痛_代码打多会掉头发', 'https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg', 6.6, 8, 8, '2020-10-07 01:42:47.576478', '老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松');
COMMIT;

-- ----------------------------
-- Table structure for app_api_commonpathconfig
-- ----------------------------
DROP TABLE IF EXISTS `app_api_commonpathconfig`;
CREATE TABLE `app_api_commonpathconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `icon` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_commonpathconfig
-- ----------------------------
BEGIN;
INSERT INTO `app_api_commonpathconfig` VALUES (127, '企业合作', '', '', 'f');
INSERT INTO `app_api_commonpathconfig` VALUES (128, '人才招聘', '', '', 'f');
INSERT INTO `app_api_commonpathconfig` VALUES (129, '联系我们', '', '', 'f');
INSERT INTO `app_api_commonpathconfig` VALUES (130, '讲师招募', '', '', 'f');
INSERT INTO `app_api_commonpathconfig` VALUES (131, '帮助中心', '', '', 'f');
INSERT INTO `app_api_commonpathconfig` VALUES (132, '意见反馈', '', '', 'f');
INSERT INTO `app_api_commonpathconfig` VALUES (133, '慕课大学', '', '', 'f');
INSERT INTO `app_api_commonpathconfig` VALUES (134, '代码托管', '', '', 'f');
INSERT INTO `app_api_commonpathconfig` VALUES (135, '友情链接', '', '', 'f');
INSERT INTO `app_api_commonpathconfig` VALUES (136, '免费课程', '/course', '', 'h');
INSERT INTO `app_api_commonpathconfig` VALUES (137, '实战课程', '/lesson', '', 'h');
INSERT INTO `app_api_commonpathconfig` VALUES (138, '专栏', '/read', 'https://www.imooc.com/static/img/common/new.png', 'h');
INSERT INTO `app_api_commonpathconfig` VALUES (139, '猿问', '/question', '', 'h');
INSERT INTO `app_api_commonpathconfig` VALUES (140, '手记', '/article', '', 'h');
COMMIT;

-- ----------------------------
-- Table structure for app_api_consult
-- ----------------------------
DROP TABLE IF EXISTS `app_api_consult`;
CREATE TABLE `app_api_consult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `like` tinyint(1) NOT NULL,
  `number` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `answer` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `time` datetime(6) NOT NULL,
  `course_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_consult
-- ----------------------------
BEGIN;
INSERT INTO `app_api_consult` VALUES (1, 0, 0, '课程有效期是多久呢？', '亲，您好~课程无限期的，您可以根据自己的时间安排学习进度。祝您学习愉快~', '2019-07-18 00:00:00.000000', 'Flutter从入门到进阶 实战携程网App', '1');
INSERT INTO `app_api_consult` VALUES (2, 1, 99, '试听一节课', '亲，您好~课程界面上有课程的导学试听。祝您学习愉快~', '2019-07-18 00:00:00.000000', 'Flutter从入门到进阶 实战携程网App', '1');
INSERT INTO `app_api_consult` VALUES (3, 1, 30, '老师除了视频，还会有辅助资料吗，遇到不懂的，可以问您吗？', '亲，您好~每一小节的代码，我都会提供给大家，另外我为大家建立了git仓库，一些高级的webpack内容，我会不断向仓库中新增。我们还有群，大家可以互相探讨Webpack的最佳实践，是非常好的学习沟通资源。同学们有问题，随时可以在慕课留言区提问，我会及时给大家解答。祝您学习愉快~', '2019-07-18 00:00:00.000000', '从基础到实战 手把手带你掌握新版Webpack4.0', '1');
INSERT INTO `app_api_consult` VALUES (4, 1, 44, '课程中讲到的内容，是否是目前企业中常用的解决方案，能够直接应用到实际工作中吗？', '亲，您好~课程中的问题，都是在业务中非常常见的配置，你可以直接应用在实际工作中，帮助你解决配置问题。祝您学习愉快~', '2019-07-18 00:00:00.000000', '从基础到实战 手把手带你掌握新版Webpack4.0', '1');
INSERT INTO `app_api_consult` VALUES (5, 1, 12, '最近VUE的课程络绎不绝，这个课程对于其他来说特点在哪里呢？', '亲，您好~这门课程是vue入门的课程，针对没有vue基础，学要学习vue的用户人群。所以课程的前部分是讲解vue的入门基础语法，后半部分是一个实战的项目，所以是入门到实战的完美过渡的课程。学习完成这门课程再学习其它的vue高级课程其实是最好的学习路径了。祝您学习愉快~', '2019-07-18 00:00:00.000000', 'Vue2.5开发去哪儿网App 从零基础入门到实战项目', '1');
INSERT INTO `app_api_consult` VALUES (6, 1, 30, '有关于通过路由控制权限的讲解吗', '亲，您好~这部分内容课程中没有讲， 但是很简单 可以随时问我，在qq群@我，或者在平台问答区提问。祝您学习愉快~', '2019-07-18 00:00:00.000000', 'Vue2.5开发去哪儿网App 从零基础入门到实战项目', '4');
COMMIT;

-- ----------------------------
-- Table structure for app_api_coupon
-- ----------------------------
DROP TABLE IF EXISTS `app_api_coupon`;
CREATE TABLE `app_api_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `orderid` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `number` int(11) NOT NULL,
  `limit` int(11) NOT NULL,
  `starttime` datetime(6) NOT NULL,
  `endtime` datetime(6) NOT NULL,
  `usetime` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `range_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_api_coupon_range_id_66f00ed0` (`range_id`),
  KEY `app_api_coupon_status_id_071fcbb7` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_coupon
-- ----------------------------
BEGIN;
INSERT INTO `app_api_coupon` VALUES (1, '4', '', 10, 50, '2020-10-01 00:00:00.000000', '2020-10-15 00:00:00.000000', '', 1, 1);
INSERT INTO `app_api_coupon` VALUES (2, '', '', 30, 99, '2020-05-01 00:00:00.000000', '2020-05-15 00:00:00.000000', '', 1, 1);
INSERT INTO `app_api_coupon` VALUES (3, '', '', 60, 199, '2020-05-01 00:00:00.000000', '2020-05-15 00:00:00.000000', '', 1, 1);
INSERT INTO `app_api_coupon` VALUES (4, '', '', 90, 399, '2020-05-01 00:00:00.000000', '2020-05-15 00:00:00.000000', '', 1, 1);
INSERT INTO `app_api_coupon` VALUES (5, '', '', 120, 599, '2020-05-01 00:00:00.000000', '2020-05-15 00:00:00.000000', '', 1, 1);
INSERT INTO `app_api_coupon` VALUES (6, '', '', 30, 99, '2020-05-01 00:00:00.000000', '2020-05-15 00:00:00.000000', '', 1, 1);
INSERT INTO `app_api_coupon` VALUES (7, '', '', 30, 99, '2019-03-01 00:00:00.000000', '2019-07-01 00:00:00.000000', '', 1, 7);
INSERT INTO `app_api_coupon` VALUES (8, '', '', 60, 199, '2020-05-01 00:00:00.000000', '2020-05-15 00:00:00.000000', '', 1, 7);
INSERT INTO `app_api_coupon` VALUES (9, '', '', 60, 299, '2019-03-01 00:00:00.000000', '2019-07-01 00:00:00.000000', '', 1, 7);
INSERT INTO `app_api_coupon` VALUES (10, '', '', 90, 399, '2019-03-01 00:00:00.000000', '2019-07-01 00:00:00.000000', '', 1, 7);
INSERT INTO `app_api_coupon` VALUES (11, '', '', 120, 599, '2019-03-01 00:00:00.000000', '2019-07-01 00:00:00.000000', '', 1, 7);
INSERT INTO `app_api_coupon` VALUES (12, '', '', 30, 99, '2019-03-01 00:00:00.000000', '2019-07-01 00:00:00.000000', '', 1, 12);
INSERT INTO `app_api_coupon` VALUES (13, '', '', 60, 199, '2020-05-01 00:00:00.000000', '2020-05-15 00:00:00.000000', '', 1, 12);
INSERT INTO `app_api_coupon` VALUES (14, '', '', 60, 299, '2019-03-01 00:00:00.000000', '2019-07-01 00:00:00.000000', '', 1, 12);
INSERT INTO `app_api_coupon` VALUES (15, '', '', 90, 399, '2019-03-01 00:00:00.000000', '2019-07-01 00:00:00.000000', '', 1, 12);
INSERT INTO `app_api_coupon` VALUES (16, '', '', 120, 599, '2019-03-01 00:00:00.000000', '2019-07-01 00:00:00.000000', '', 1, 12);
COMMIT;

-- ----------------------------
-- Table structure for app_api_couponrange
-- ----------------------------
DROP TABLE IF EXISTS `app_api_couponrange`;
CREATE TABLE `app_api_couponrange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `code` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_couponrange
-- ----------------------------
BEGIN;
INSERT INTO `app_api_couponrange` VALUES (1, '实战课程', 0);
COMMIT;

-- ----------------------------
-- Table structure for app_api_couponstatus
-- ----------------------------
DROP TABLE IF EXISTS `app_api_couponstatus`;
CREATE TABLE `app_api_couponstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `code` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_couponstatus
-- ----------------------------
BEGIN;
INSERT INTO `app_api_couponstatus` VALUES (1, '未使用', 0);
INSERT INTO `app_api_couponstatus` VALUES (7, '已使用', 1);
INSERT INTO `app_api_couponstatus` VALUES (12, '已过期', 2);
COMMIT;

-- ----------------------------
-- Table structure for app_api_emailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `app_api_emailverifyrecord`;
CREATE TABLE `app_api_emailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `send_type` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_emailverifyrecord
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for app_api_footer
-- ----------------------------
DROP TABLE IF EXISTS `app_api_footer`;
CREATE TABLE `app_api_footer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_footer
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for app_api_history
-- ----------------------------
DROP TABLE IF EXISTS `app_api_history`;
CREATE TABLE `app_api_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_history
-- ----------------------------
BEGIN;
INSERT INTO `app_api_history` VALUES (26, 'canvas', '2020-10-07 01:42:41.214927');
INSERT INTO `app_api_history` VALUES (27, '去哪儿网', '2020-10-07 01:42:41.215326');
INSERT INTO `app_api_history` VALUES (28, 'webpack', '2020-10-07 01:42:41.215699');
INSERT INTO `app_api_history` VALUES (29, 'flutter', '2020-10-07 01:42:41.216191');
INSERT INTO `app_api_history` VALUES (30, 'rn', '2020-10-07 01:42:41.216626');
COMMIT;

-- ----------------------------
-- Table structure for app_api_hot
-- ----------------------------
DROP TABLE IF EXISTS `app_api_hot`;
CREATE TABLE `app_api_hot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_hot
-- ----------------------------
BEGIN;
INSERT INTO `app_api_hot` VALUES (73, 'React', '2020-10-07 01:42:40.477173');
INSERT INTO `app_api_hot` VALUES (74, '面试', '2020-10-07 01:42:40.477725');
INSERT INTO `app_api_hot` VALUES (75, '算法', '2020-10-07 01:42:40.478205');
INSERT INTO `app_api_hot` VALUES (76, 'Vue.js', '2020-10-07 01:42:40.478632');
INSERT INTO `app_api_hot` VALUES (77, 'Python', '2020-10-07 01:42:40.479108');
INSERT INTO `app_api_hot` VALUES (78, 'GO语言', '2020-10-07 01:42:40.479508');
INSERT INTO `app_api_hot` VALUES (79, '小程序', '2020-10-07 01:42:40.479876');
INSERT INTO `app_api_hot` VALUES (80, '毕设', '2020-10-07 01:42:40.480226');
COMMIT;

-- ----------------------------
-- Table structure for app_api_integral
-- ----------------------------
DROP TABLE IF EXISTS `app_api_integral`;
CREATE TABLE `app_api_integral` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `integral` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_api_integral_type_id_f4742337` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_integral
-- ----------------------------
BEGIN;
INSERT INTO `app_api_integral` VALUES (73, 'https://img3.sycdn.imooc.com/5d312ea3000161d102820282-200-200.jpg', '15元全站课程优惠券', 50, 7);
INSERT INTO `app_api_integral` VALUES (74, 'https://img1.sycdn.imooc.com/5d312f7d00018c3c02820282-200-200.jpg', '30元全站课程优惠券', 100, 7);
INSERT INTO `app_api_integral` VALUES (75, 'https://img3.sycdn.imooc.com/5d312f8700019e4b02820282-200-200.jpg', '50元全站课程优惠券', 150, 7);
INSERT INTO `app_api_integral` VALUES (76, 'https://img3.sycdn.imooc.com/5d312f8700019e4b02820282-200-200.jpg', '魔性贪吃蛇小游戏', 1, 7);
INSERT INTO `app_api_integral` VALUES (77, 'https://img1.sycdn.imooc.com/5678c7e600019c8303600360-200-200.jpg', '2048技术人生定制版', 1, 7);
INSERT INTO `app_api_integral` VALUES (78, 'https://img3.sycdn.imooc.com/565d1a920001244403600360-200-200.jpg', '慕烟花', 1, 7);
INSERT INTO `app_api_integral` VALUES (79, 'https://img3.sycdn.imooc.com/5bd0410f0001524703440400-200-200.jpg', '基于iOS8正式版全面修订 Swift开发指南', 395, 8);
INSERT INTO `app_api_integral` VALUES (80, 'https://img3.sycdn.imooc.com/5bd0402e000132bd04300430-200-200.jpg', 'Scala与Clojure函数式编程模式', 295, 8);
INSERT INTO `app_api_integral` VALUES (81, 'https://img4.sycdn.imooc.com/5bd03ee40001539304300430-200-200.jpg', 'Druid实时大数据分析原理与实践', 445, 8);
INSERT INTO `app_api_integral` VALUES (82, 'https://img1.sycdn.imooc.com/5bd03db700012a7403500350-200-200.jpg', 'POSTGRESQL 9', 445, 8);
INSERT INTO `app_api_integral` VALUES (83, 'https://img3.sycdn.imooc.com/5bd03cd70001db9503500350-200-200.jpg', 'Kotlin程序开发入门精要', 395, 8);
INSERT INTO `app_api_integral` VALUES (84, 'https://img3.sycdn.imooc.com/5bd03c890001e77602730304-200-200.jpg', '创世学说 游戏系统设计指南', 545, 8);
INSERT INTO `app_api_integral` VALUES (85, 'https://img1.sycdn.imooc.com/5bd03db700012a7403500350-200-200.jpg', 'Elixir 程序设计', 425, 8);
INSERT INTO `app_api_integral` VALUES (86, 'https://img3.sycdn.imooc.com/5bd03cd70001db9503500350-200-200.jpg', '疯狂Java讲义 第4版 附光盘', 545, 8);
INSERT INTO `app_api_integral` VALUES (87, 'https://img3.sycdn.imooc.com/5bd03c890001e77602730304-200-200.jpg', '创世学说 MySQL管理之道 性能调优、高可用与监控', 395, 8);
INSERT INTO `app_api_integral` VALUES (88, 'https://img3.sycdn.imooc.com/5bd0410f0001524703440400-200-200.jpg', '基于iOS8正式版全面修订 Swift开发指南', 395, 8);
INSERT INTO `app_api_integral` VALUES (89, 'https://img3.sycdn.imooc.com/5bd0402e000132bd04300430-200-200.jpg', 'Scala与Clojure函数式编程模式', 295, 8);
INSERT INTO `app_api_integral` VALUES (90, 'https://img4.sycdn.imooc.com/5bd03ee40001539304300430-200-200.jpg', 'Druid实时大数据分析原理与实践', 445, 8);
INSERT INTO `app_api_integral` VALUES (91, 'https://img1.sycdn.imooc.com/5bd03db700012a7403500350-200-200.jpg', 'POSTGRESQL 9', 445, 8);
INSERT INTO `app_api_integral` VALUES (92, 'https://img3.sycdn.imooc.com/5bd03cd70001db9503500350-200-200.jpg', 'Kotlin程序开发入门精要', 395, 8);
INSERT INTO `app_api_integral` VALUES (93, 'https://img3.sycdn.imooc.com/5bd03c890001e77602730304-200-200.jpg', '创世学说 游戏系统设计指南', 545, 8);
INSERT INTO `app_api_integral` VALUES (94, 'https://img1.sycdn.imooc.com/5bd03db700012a7403500350-200-200.jpg', 'Elixir 程序设计', 425, 8);
INSERT INTO `app_api_integral` VALUES (95, 'https://img3.sycdn.imooc.com/5bd03cd70001db9503500350-200-200.jpg', '疯狂Java讲义 第4版 附光盘', 545, 8);
INSERT INTO `app_api_integral` VALUES (96, 'https://img3.sycdn.imooc.com/5bd03c890001e77602730304-200-200.jpg', '创世学说 MySQL管理之道 性能调优、高可用与监控', 395, 8);
COMMIT;

-- ----------------------------
-- Table structure for app_api_integraltype
-- ----------------------------
DROP TABLE IF EXISTS `app_api_integraltype`;
CREATE TABLE `app_api_integraltype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_integraltype
-- ----------------------------
BEGIN;
INSERT INTO `app_api_integraltype` VALUES (7, '0', '虚拟商品');
INSERT INTO `app_api_integraltype` VALUES (8, '1', '实体商品');
COMMIT;

-- ----------------------------
-- Table structure for app_api_label
-- ----------------------------
DROP TABLE IF EXISTS `app_api_label`;
CREATE TABLE `app_api_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_api_label_type_id_4ede89be` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_label
-- ----------------------------
BEGIN;
INSERT INTO `app_api_label` VALUES (137, 'HTML/CSS', 0, 28);
INSERT INTO `app_api_label` VALUES (138, 'JavaScript', 1, 28);
INSERT INTO `app_api_label` VALUES (139, 'TypeScript', 2, 28);
INSERT INTO `app_api_label` VALUES (140, 'Vue.js', 2, 28);
INSERT INTO `app_api_label` VALUES (141, 'React.js', 3, 28);
INSERT INTO `app_api_label` VALUES (142, 'Angular', 4, 28);
INSERT INTO `app_api_label` VALUES (143, 'Node.js', 5, 28);
INSERT INTO `app_api_label` VALUES (144, 'jQuery', 6, 28);
INSERT INTO `app_api_label` VALUES (145, 'Sass/Less', 7, 28);
INSERT INTO `app_api_label` VALUES (146, 'WebApp', 8, 28);
INSERT INTO `app_api_label` VALUES (147, '小程序', 9, 28);
INSERT INTO `app_api_label` VALUES (148, '前端工具', 10, 28);
INSERT INTO `app_api_label` VALUES (149, 'Java', 0, 29);
INSERT INTO `app_api_label` VALUES (150, 'SpringBoot', 1, 29);
INSERT INTO `app_api_label` VALUES (151, 'Spring Cloud', 2, 29);
INSERT INTO `app_api_label` VALUES (152, 'SSM', 3, 29);
INSERT INTO `app_api_label` VALUES (153, 'Python', 4, 29);
INSERT INTO `app_api_label` VALUES (154, '爬虫', 5, 29);
INSERT INTO `app_api_label` VALUES (155, 'Django', 6, 29);
INSERT INTO `app_api_label` VALUES (156, 'Flask', 7, 29);
INSERT INTO `app_api_label` VALUES (157, 'Tornado', 8, 29);
INSERT INTO `app_api_label` VALUES (158, 'Go', 9, 29);
INSERT INTO `app_api_label` VALUES (159, 'PHP', 10, 29);
INSERT INTO `app_api_label` VALUES (160, 'Swoole', 11, 29);
INSERT INTO `app_api_label` VALUES (161, 'C', 12, 29);
INSERT INTO `app_api_label` VALUES (162, 'C++', 13, 29);
INSERT INTO `app_api_label` VALUES (163, 'Android', 0, 30);
INSERT INTO `app_api_label` VALUES (164, 'iOS', 1, 30);
INSERT INTO `app_api_label` VALUES (165, 'React native', 2, 30);
INSERT INTO `app_api_label` VALUES (166, 'Ionic', 3, 30);
INSERT INTO `app_api_label` VALUES (167, 'Flutter', 4, 30);
INSERT INTO `app_api_label` VALUES (168, 'Weex', 5, 30);
INSERT INTO `app_api_label` VALUES (169, '计算机网络', 0, 31);
INSERT INTO `app_api_label` VALUES (170, '算法与数据结构', 1, 31);
INSERT INTO `app_api_label` VALUES (171, '数学', 2, 31);
INSERT INTO `app_api_label` VALUES (172, '微服务', 0, 32);
INSERT INTO `app_api_label` VALUES (173, '区块链', 1, 32);
INSERT INTO `app_api_label` VALUES (174, '机器学习', 2, 32);
INSERT INTO `app_api_label` VALUES (175, '深度学习', 3, 32);
INSERT INTO `app_api_label` VALUES (176, '计算机视觉', 5, 32);
INSERT INTO `app_api_label` VALUES (177, '自然语言处理', 6, 32);
INSERT INTO `app_api_label` VALUES (178, '数据分析&挖掘', 7, 32);
INSERT INTO `app_api_label` VALUES (179, '大数据', 0, 33);
INSERT INTO `app_api_label` VALUES (180, 'Hadoop', 1, 33);
INSERT INTO `app_api_label` VALUES (181, 'Spark', 2, 33);
INSERT INTO `app_api_label` VALUES (182, 'Hbase', 3, 33);
INSERT INTO `app_api_label` VALUES (183, 'Flink', 4, 33);
INSERT INTO `app_api_label` VALUES (184, 'Storm', 5, 33);
INSERT INTO `app_api_label` VALUES (185, '阿里云', 6, 33);
INSERT INTO `app_api_label` VALUES (186, 'Docker', 7, 33);
INSERT INTO `app_api_label` VALUES (187, 'Kubernetes', 8, 33);
INSERT INTO `app_api_label` VALUES (188, '运维', 0, 34);
INSERT INTO `app_api_label` VALUES (189, '自动化运维', 1, 34);
INSERT INTO `app_api_label` VALUES (190, '中间件', 2, 34);
INSERT INTO `app_api_label` VALUES (191, 'Linux', 3, 34);
INSERT INTO `app_api_label` VALUES (192, '测试', 4, 34);
INSERT INTO `app_api_label` VALUES (193, '功能测试', 5, 34);
INSERT INTO `app_api_label` VALUES (194, '性能测试', 6, 34);
INSERT INTO `app_api_label` VALUES (195, '自动化测试', 7, 34);
INSERT INTO `app_api_label` VALUES (196, '接口测试', 8, 34);
INSERT INTO `app_api_label` VALUES (197, 'MySQL', 0, 35);
INSERT INTO `app_api_label` VALUES (198, 'Redis', 1, 35);
INSERT INTO `app_api_label` VALUES (199, 'MongoDB', 2, 35);
INSERT INTO `app_api_label` VALUES (200, '动效动画', 0, 36);
INSERT INTO `app_api_label` VALUES (201, '设计基础', 1, 36);
INSERT INTO `app_api_label` VALUES (202, '设计工具', 2, 36);
INSERT INTO `app_api_label` VALUES (203, 'APPUI设计', 3, 36);
INSERT INTO `app_api_label` VALUES (204, '产品交互', 4, 36);
COMMIT;

-- ----------------------------
-- Table structure for app_api_labelfollow
-- ----------------------------
DROP TABLE IF EXISTS `app_api_labelfollow`;
CREATE TABLE `app_api_labelfollow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `labelid` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_api_labelfollow_userid_labelid_b4d2cd2a_uniq` (`userid`,`labelid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_labelfollow
-- ----------------------------
BEGIN;
INSERT INTO `app_api_labelfollow` VALUES (1, 1, 137, 'HTML/CSS');
INSERT INTO `app_api_labelfollow` VALUES (2, 1, 138, 'JavaScript');
INSERT INTO `app_api_labelfollow` VALUES (3, 4, 137, 'HTML/CSS');
INSERT INTO `app_api_labelfollow` VALUES (4, 4, 138, 'JavaScript');
COMMIT;

-- ----------------------------
-- Table structure for app_api_labeltype
-- ----------------------------
DROP TABLE IF EXISTS `app_api_labeltype`;
CREATE TABLE `app_api_labeltype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `code` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_labeltype
-- ----------------------------
BEGIN;
INSERT INTO `app_api_labeltype` VALUES (28, '前端开发', 0, 0);
INSERT INTO `app_api_labeltype` VALUES (29, '后端开发', 1, 1);
INSERT INTO `app_api_labeltype` VALUES (30, '移动端开发', 2, 2);
INSERT INTO `app_api_labeltype` VALUES (31, '计算机基础', 3, 3);
INSERT INTO `app_api_labeltype` VALUES (32, '前沿技术', 4, 4);
INSERT INTO `app_api_labeltype` VALUES (33, '云计算&大数据', 5, 5);
INSERT INTO `app_api_labeltype` VALUES (34, '运维&测试', 6, 6);
INSERT INTO `app_api_labeltype` VALUES (35, '数据库', 7, 7);
INSERT INTO `app_api_labeltype` VALUES (36, 'UI设计&多媒体', 8, 8);
COMMIT;

-- ----------------------------
-- Table structure for app_api_lesson
-- ----------------------------
DROP TABLE IF EXISTS `app_api_lesson`;
CREATE TABLE `app_api_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `introduction` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `price` int(11) NOT NULL,
  `isDiscount` tinyint(1) NOT NULL,
  `discountPrice` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `persons` int(11) NOT NULL,
  `comments` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `hard_id` int(11) NOT NULL,
  `script_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `app_api_lesson_category_id_b3f7501d` (`category_id`),
  KEY `app_api_lesson_hard_id_430e4731` (`hard_id`),
  KEY `app_api_lesson_script_id_b115974a` (`script_id`),
  KEY `app_api_lesson_teacher_id_4105c9e3` (`teacher_id`),
  KEY `app_api_lesson_type_id_5b18e75f` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_lesson
-- ----------------------------
BEGIN;
INSERT INTO `app_api_lesson` VALUES (145, 'TypeScript  系统入门到项目实战 趁早学习提高职场竞争力', 'Dell老师专为TypeScript小白打造的，全栈式教学TS入门课程', 'https://img.mukewang.com/szimg/5e1d990f0885d97306000338-360-202.jpg', 'https://img1.sycdn.imooc.com/szimg/5e1d991809c5318e40000800.jpg', 266, 1, 216, '2020-10-07 01:42:46.623680', 0, 0, 28, 145, NULL, 246, 145);
INSERT INTO `app_api_lesson` VALUES (146, '前端要学的测试课 从Jest入门到 TDD/BDD双实战', '以Vue/React项目进行自动化测试实战，让你技术水平和架构思维双提升', 'https://img.mukewang.com/szimg/5d36a6000837a91d06000338-360-202.jpg', 'https://img.mukewang.com/szimg/5d36a60709f5666320000400.jpg', 299, 0, 0, '2020-10-07 01:42:46.630327', 0, 0, 28, 145, NULL, 246, 145);
INSERT INTO `app_api_lesson` VALUES (147, '从基础到实战 手把手带你掌握新版Webpack4.0', '知识点+项目实例+原理讲解 全方位解析Webpack4最新版本', 'https://img.mukewang.com/szimg/5c6bdb3e08e4674a06000338-360-202.jpg', 'https://img.mukewang.com/szimg/5c6bdb4f09c2401020000400.jpg', 299, 0, 0, '2020-10-07 01:42:46.636258', 0, 0, 28, 145, NULL, 246, 145);
INSERT INTO `app_api_lesson` VALUES (148, 'React服务器渲染原理解析与实践', '从零开始，带你搭建属于自己的React SSR框架，从根本上解决客户端渲染问题 。', 'https://img.mukewang.com/szimg/5ba07190000135b505400300-360-202.jpg', 'https://img.mukewang.com/szimg/5c6bdb4f09c2401020000400.jpg', 299, 0, 0, '2020-10-07 01:42:46.641665', 0, 0, 28, 145, NULL, 246, 145);
INSERT INTO `app_api_lesson` VALUES (149, 'React开发简书项目 从零基础入门到实战 ', '主流新技术 React-redux，React-router4，贯穿基础语法及项目实战。', 'https://img.mukewang.com/szimg/5b3082da0001d7e905400300-360-202.jpg', 'https://img.mukewang.com/szimg/5b508ba90001116220000560.jpg', 299, 0, 0, '2020-10-07 01:42:46.647418', 0, 0, 28, 145, NULL, 246, 145);
INSERT INTO `app_api_lesson` VALUES (150, '经典再升级-新版Vue2.6开发去哪儿网App 从零基础入门到实战项目', '基于Vue最新版本，从基础语法到完整项目，一课掌握Vue基础知识点', 'https://img.mukewang.com/szimg/5b3082da0001d7e905400300-360-202.jpg', 'https://img.mukewang.com/szimg/5b50858100011b9220000560.jpg', 266, 0, 0, '2020-10-07 01:42:46.652674', 0, 0, 28, 145, NULL, 246, 145);
INSERT INTO `app_api_lesson` VALUES (151, '下一代前端开发语言 TypeScript从零重构axios', '掌握TS，学习vue3.0源码必备基础！课程从零开始重构功能完整的JS库，是学习造轮子的不二之选！', 'https://img.mukewang.com/szimg/5cbf00c608f52a3b06000338-360-202.jpg', 'https://img.mukewang.com/szimg/5cbf00cb092626c820000400.jpg', 388, 1, 348, '2020-10-07 01:42:46.657815', 0, 0, 28, 145, NULL, 228, 145);
INSERT INTO `app_api_lesson` VALUES (152, 'Vue.js2.5+cube-ui重构饿了么App（经典再升级）', '掌握Vue1.0到2.0再到2.5最全版本应用与迭代，打造极致流畅的WebApp', 'https://img.mukewang.com/szimg/5becd5ad0001b89306000338-360-202.jpg', 'https://img1.sycdn.imooc.com/szimg/5becd5bc0001d45120000560.jpg', 198, 0, 0, '2020-10-07 01:42:46.663109', 0, 0, 28, 145, NULL, 228, 145);
INSERT INTO `app_api_lesson` VALUES (153, 'Vue.js源码全方位深入解析 （含Vue3.0源码分析）', '全方位讲解 Vue.js 源码，学精学透 Vue 原理实现，进阶高级工程师', 'https://img.mukewang.com/szimg/5b17bad10001535305400300-360-202.jpg', 'https://img1.sycdn.imooc.com/szimg/5b508b4200014f8a20000560.jpg', 488, 0, 0, '2020-10-07 01:42:46.668403', 0, 0, 28, 153, NULL, 228, 145);
INSERT INTO `app_api_lesson` VALUES (154, 'Python Flask高级编程之RESTFul API前后端分离精讲', 'RESTFul+权限管理+token令牌+扩展flask=提升编程思维', 'https://img.mukewang.com/szimg/5b061fe30001db4505400300-360-202.jpg', 'https://img1.sycdn.imooc.com/szimg/5be39cb6000127a520000559.jpg', 148, 0, 0, '2020-10-07 01:42:46.673813', 0, 0, 29, 145, NULL, 255, 145);
INSERT INTO `app_api_lesson` VALUES (155, 'Python Flask高级编程之从0到1开发《鱼书》精品项目', '7月老师深入浅出剖析Flask核心机制，和你一起探讨Python高级编程', 'https://img.mukewang.com/szimg/5ab84f650001f0b005400300-360-202.jpg', 'https://img.mukewang.com/szimg/5b51c78300015e0220000560.jpg', 399, 0, 0, '2020-10-07 01:42:46.678875', 0, 0, 29, 145, NULL, 255, 145);
INSERT INTO `app_api_lesson` VALUES (156, '全面系统Python3.8入门+进阶  (程序员必备第二语言)', '语法精讲/配套练习+思考题/原生爬虫实战', 'https://img.mukewang.com/szimg/59b8a486000107fb05400300-360-202.jpg', 'https://img.mukewang.com/szimg/5b51c78300015e0220000560.jpg', 366, 0, 0, '2020-10-07 01:42:46.684093', 0, 0, 29, 156, NULL, 255, 145);
INSERT INTO `app_api_lesson` VALUES (157, 'Spring Cloud微服务实战 打造企业级优惠券系统', '面试、毕设、升职优选：从0开始，Java主流框架，构建电商都在用的优惠券系统', 'https://img.mukewang.com/szimg/5d5f7da0093eb24212000676-360-202.jpg', 'https://img.mukewang.com/szimg/5d5f7da709b71ad320000400.jpg', 299, 0, 0, '2020-10-07 01:42:46.689602', 0, 0, 29, 145, NULL, 258, 145);
INSERT INTO `app_api_lesson` VALUES (158, '基于Spring Cloud微服务架构  广告系统设计与实现（2020新版）', '掌握互联网广告系统，学会为公司创收，你自然就是最抢手的人才。可用于毕设。', 'https://img.mukewang.com/szimg/5d2e7ada09946f6f12000676-360-202.jpg', 'https://img.mukewang.com/szimg/5d2e7ae20942ca4d20000400.jpg', 299, 0, 0, '2020-10-07 01:42:46.695529', 0, 0, 29, 145, NULL, 258, 145);
INSERT INTO `app_api_lesson` VALUES (159, 'Java分布式后台开发  Spring Boot+Kafka+HBase', '从零到一完整搭建企业级架构的通用卡包工程，让你开发技迈向到百度T4+ 。', 'https://img1.sycdn.imooc.com/szimg/5b55356c0001af0105400300-360-202.jpg', 'https://img.mukewang.com/szimg/5b5535400001b72e20000560.jpg', 299, 0, 0, '2020-10-07 01:42:46.701491', 0, 0, 29, 145, NULL, 258, 145);
INSERT INTO `app_api_lesson` VALUES (160, 'Flutter从入门到进阶 实战携程网App', '从入门到进阶，系统掌握Flutter开发核心技术', 'https://img.mukewang.com/szimg/5c7e6835087ef3d806000338-360-202.jpg', 'https://img.mukewang.com/szimg/5c9304cd097d093d20000400.jpg', 348, 0, 0, '2020-10-07 01:42:46.707252', 0, 0, 30, 145, NULL, 261, 145);
INSERT INTO `app_api_lesson` VALUES (161, '新版React Native从入门到实战打造高质量上线App（再升级）', '解锁React Native开发应用新姿势，一网打尽React Native新版本热门技术', 'https://img.mukewang.com/szimg/5db6916d08d81b8b12000676-360-202.jpg', 'https://img.mukewang.com/szimg/5db69b9c086653ff40001120.jpg', 399, 0, 0, '2020-10-07 01:42:46.713409', 0, 0, 30, 145, 9, 261, 145);
INSERT INTO `app_api_lesson` VALUES (162, '实战企业级项目 践行App重构之路', '真实还原大厂App重构过程，以组件化和插件化为核心，进击高级工程师必备', 'https://img.mukewang.com/szimg/5e4f4f66098b14c512000676-360-202.jpg', 'https://img.mukewang.com/szimg/5e4f4f7009aeb1a920000400.jpg', 299, 0, 0, '2020-10-07 01:42:46.719657', 0, 0, 30, 145, 9, 263, 145);
INSERT INTO `app_api_lesson` VALUES (163, '企业级Android应用架构设计与开发', '一门能助你掌握企业级架构设计、功能开发，冲击大厂Android中高级工程师职位的课程', 'https://img.mukewang.com/szimg/5d5e6d1f0983ee0112000676-360-202.jpg', 'https://img1.sycdn.imooc.com/szimg/5d5e6d2809b8706c20000400.jpg', 299, 0, 0, '2020-10-07 01:42:46.725496', 0, 0, 30, 145, 9, 263, 145);
INSERT INTO `app_api_lesson` VALUES (164, 'Gradle3.0自动化项目构建技术精讲+实战', '全面覆盖Gradle核心知识和高级用法，高级工程师必备技能！', 'https://img.mukewang.com/szimg/5acf37460001aa3405400300-360-202.jpg', 'https://img.mukewang.com/szimg/5b5085f900017de520000560.jpg', 199, 0, 0, '2020-10-07 01:42:46.731880', 0, 0, 30, 145, 9, 263, 145);
INSERT INTO `app_api_lesson` VALUES (165, '玩转算法系列--图论精讲  面试升职必备（Java版）', '由于图论算法本身的复杂性和抽象性，让同学们头疼不已，这次bobo带你彻底玩转图论，克服对图论问题的恐惧心理', 'https://img1.sycdn.imooc.com/szimg/5d31765d08c90cba06000338-360-202.jpg', 'https://img.mukewang.com/szimg/5d3176630945ccf020000288.jpg', 348, 0, 0, '2020-10-07 01:42:46.737051', 0, 0, 31, 145, NULL, 227, 145);
INSERT INTO `app_api_lesson` VALUES (166, '玩转算法系列--数据结构精讲 更适合0算法基础入门到进阶（java版）', '体系完整，细致入微，0基础入门：动态数组/栈/队列/链表/BST/堆/线段树/Trie/并查集/AVL/红黑树…', 'https://img1.sycdn.imooc.com/szimg/5ad05dc00001eae705400300-360-202.jpg', 'https://img.mukewang.com/szimg/5b5086220001ef9420000560.jpg', 299, 0, 0, '2020-10-07 01:42:46.742882', 0, 0, 31, 145, NULL, 227, 145);
INSERT INTO `app_api_lesson` VALUES (167, '结合编程学数学 专为程序员设计的线性代数', '创新设计，通俗易懂。用编程的方式学数学。这一次，bobo老师带你彻底征服线性代数', 'https://img1.sycdn.imooc.com/szimg/5b5835a60001907e05400300-360-202.jpg', 'https://img1.sycdn.imooc.com/szimg/5b5835cb0001d0c120000560.jpg', 348, 0, 0, '2020-10-07 01:42:46.748284', 0, 0, 31, 156, NULL, 227, 145);
INSERT INTO `app_api_lesson` VALUES (168, '看的见的算法 7个经典应用诠释算法精髓', '课程重应用、重实践、重思维，真正应用于实际工作开发中，也可作为毕设作品、面试项目。', 'https://img1.sycdn.imooc.com/szimg/59b2766f000190d505400300-360-202.jpg', 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg', 248, 0, 0, '2020-10-07 01:42:46.753296', 0, 0, 31, 156, NULL, 227, 145);
INSERT INTO `app_api_lesson` VALUES (169, '看的见的算法 Zookeeper源码分析', '“分而治之”逐一攻克Zookeeper框架各个组件的源码', 'https://img.mukewang.com/szimg/5d1ad17f08cd16e800000000-360-202.jpg', 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg', 388, 0, 0, '2020-10-07 01:42:46.758739', 0, 0, 32, 145, NULL, 231, 145);
INSERT INTO `app_api_lesson` VALUES (170, '学习Hyperledger Fabric实战联盟链', '兼顾区块链应用层和底层  进击区块链工程师', 'https://img.mukewang.com/szimg/5b73d7f60001dc1e05400300-360-202.jpg', 'https://img1.sycdn.imooc.com/szimg/5b73d7fc0001e07720000560.jpg', 266, 0, 0, '2020-10-07 01:42:46.764201', 0, 0, 32, 153, NULL, 271, 145);
INSERT INTO `app_api_lesson` VALUES (171, '深度学习之目标检测常用算法原理+实践精讲', '从原理（YOLO / Faster RCNN / SSD / 文本检测 / 多任务网络）到场景实战，掌握目标检测核心技术', 'https://img1.sycdn.imooc.com/szimg/5bfb523c0001290905400300-360-202.jpg', 'https://img1.sycdn.imooc.com/szimg/5bfb52480001858920000559.jpg', 499, 0, 0, '2020-10-07 01:42:46.769553', 0, 0, 32, 153, NULL, 272, 145);
INSERT INTO `app_api_lesson` VALUES (181, 'SparkSQL极速入门  整合Kudu实现广告业务数据分析', '大数据工程师干货课程 带你从入门到实战掌握SparkSQL', 'https://img1.sycdn.imooc.com/szimg/5d844ae7089e674906000338-360-202.jpg', 'https://img1.sycdn.imooc.com/szimg/5d844af609893ec140000800.jpg', 388, 0, 0, '2020-10-07 01:42:46.799504', 0, 0, 33, 145, NULL, 282, 145);
INSERT INTO `app_api_lesson` VALUES (182, 'Spark进阶 大数据离线与实时项目实战', '大数据生态圈中多个框架(Spark/Hbase/Redis/Hadoop)的整合应用及调优', 'https://img1.sycdn.imooc.com/szimg/59f85ec90001103405400300-360-202.jpg', 'https://img1.sycdn.imooc.com/szimg/5d844af609893ec140000800.jpg', 399, 0, 0, '2020-10-07 01:42:46.805147', 0, 0, 33, 145, NULL, 282, 145);
INSERT INTO `app_api_lesson` VALUES (183, 'Spark Streaming实时流处理项目实战 ', 'Flume+Kafka+Spark Streaming 构建通用实时流处理平台', 'https://img1.sycdn.imooc.com/szimg/5c203a4b0001dcf306000338-360-202.jpg', 'https://img.mukewang.com/szimg/5c203a520001d14320000560.jpg', 288, 0, 0, '2020-10-07 01:42:46.810363', 0, 0, 33, 145, NULL, 282, 145);
INSERT INTO `app_api_lesson` VALUES (184, '跟着360架构师 学习Shell脚本编程', '30%知识讲解+70%实例操作 掌握Shell脚本编程能力', 'https://img1.sycdn.imooc.com/szimg/5c46c4a308ad3b3406000338-360-202.jpg', 'https://img.mukewang.com/szimg/5c46c4ae099dc71320000560.jpg', 366, 0, 0, '2020-10-07 01:42:46.815758', 0, 0, 34, 145, NULL, 285, 145);
INSERT INTO `app_api_lesson` VALUES (185, '企业级开源四层负载均衡解决方案-LVS', '轻松应对负载均衡，深刻理解网络系统架构，真正解决工作中的实际问题', 'https://img1.sycdn.imooc.com/szimg/5b99c15f0001ca0206000338-360-202.jpg', 'https://img.mukewang.com/szimg/5b99d1e90001903240001120.jpg', 199, 0, 0, '2020-10-07 01:42:46.821291', 0, 0, 34, 145, NULL, 285, 145);
INSERT INTO `app_api_lesson` VALUES (188, '零基础入门 全角度解读企业主流数据库MySQL8.0', '掌握SQL优化与慢查询优化，具备独当一面的能力，彰显更多个人价值', 'https://img.mukewang.com/szimg/5ca5e266085019b306000338-360-202.jpg', 'https://img.mukewang.com/szimg/5ca5e26e09568dbc20000400.jpg', 266, 0, 0, '2020-10-07 01:42:46.831506', 0, 0, 35, 188, NULL, 289, 145);
INSERT INTO `app_api_lesson` VALUES (190, '中高级开发晋升利器 MySQL面试指南', '9大类常见问题详解，切实提升数据库应用和管理能力，升职加薪必备佳品！', 'https://img.mukewang.com/szimg/5bdc3b81000178e812000676-360-202.jpg', 'https://img.mukewang.com/szimg/5bdc3b8a0001583240001120.jpg', 288, 0, 0, '2020-10-07 01:42:46.839618', 0, 0, 35, 145, NULL, 289, 145);
INSERT INTO `app_api_lesson` VALUES (193, '玩转MongoDB4.0(最新版) 从入门到实践', '30%理论+70%实战，让你用实操去检验真理,一门让你事半功倍的入门进阶课', 'https://img.mukewang.com/szimg/5c90dc020849c59a06000338-360-202.jpg', 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg', 288, 0, 0, '2020-10-07 01:42:46.850254', 0, 0, 35, 188, NULL, 294, 145);
INSERT INTO `app_api_lesson` VALUES (194, '高薪设计师必修课 AE移动UI动效设计从入门到实战', '20多个商业实用案例，轻松Get√到AE动效核心技术，让你的作品脱颖而出！', 'https://img.mukewang.com/szimg/5aa9d2c1000104d510800600-360-202.jpg', 'https://img.mukewang.com/szimg/5b51c7100001351220000560.jpg', 199, 0, 0, '2020-10-07 01:42:46.855445', 0, 0, 36, 145, NULL, 295, 145);
INSERT INTO `app_api_lesson` VALUES (195, '移动端App UI设计入门与实战', '涉及多项实用设计技能训练，成为一名具有“产品思维”的设计师！', 'https://img.mukewang.com/szimg/5a123d7e00011fa705400300-360-202.jpg', 'https://img.mukewang.com/szimg/5b51c7100001351220000560.jpg', 199, 0, 0, '2020-10-07 01:42:46.861096', 0, 0, 36, 145, NULL, 295, 145);
INSERT INTO `app_api_lesson` VALUES (198, '初识HTML(5)+CSS(3)-2020升级版', 'HTML(5)+CSS(3)基础教程8小时带领大家步步深入学习标签用法和意义', 'https://img4.mukewang.com/529dc3380001379906000338-240-135.jpg', '', 0, 0, 0, '2020-10-07 01:42:46.871556', 0, 0, 28, 188, NULL, 299, 198);
INSERT INTO `app_api_lesson` VALUES (199, 'JavaScript入门篇', 'JavaScript做为一名Web工程师的必备技术，本教程让您快速入门', 'https://img2.mukewang.com/53e1d0470001ad1e06000338-240-135.jpg', '', 0, 0, 0, '2020-10-07 01:42:46.876890', 0, 0, 28, 188, NULL, 229, 198);
INSERT INTO `app_api_lesson` VALUES (200, 'JavaScript进阶篇', '本课程从如何插入JS代码开始，带您进入网页动态交互世界', 'https://img2.mukewang.com/574678bd00010a7206000338-240-135.jpg', '', 0, 0, 0, '2020-10-07 01:42:46.882173', 0, 0, 28, 188, NULL, 229, 198);
INSERT INTO `app_api_lesson` VALUES (201, 'vue2.5入门', '快速理解Vue编程理念上手Vue2.0开发。', 'https://img2.mukewang.com/5ad5cc490001e53006000338-240-135.jpg', '', 0, 0, 0, '2020-10-07 01:42:46.887408', 0, 0, 28, 145, NULL, 246, 198);
INSERT INTO `app_api_lesson` VALUES (202, 'Vue+Webpack打造todo应用', '用前端最热门框架Vue+最火打包工具Webpack打造todo应用', 'https://img1.mukewang.com/5a56fdb400017d0306000338-240-135.jpg', '', 0, 0, 0, '2020-10-07 01:42:46.892548', 0, 0, 28, 153, NULL, 303, 198);
INSERT INTO `app_api_lesson` VALUES (203, 'Vue+node.js调试入门', '理论实践相结合学习使用 Inspector 调试 Node.js。', 'https://img3.sycdn.imooc.com/5c3eaa0a08d7052706000338-240-135.jpg', '', 0, 0, 0, '2020-10-07 01:42:46.897845', 0, 0, 28, 188, NULL, 304, 198);
INSERT INTO `app_api_lesson` VALUES (204, 'Nodejs全栈入门', '基于node+mysql+react全栈实战', 'https://img3.sycdn.imooc.com/5dd7561309f8ae4806000338-240-135.png', '', 0, 0, 0, '2020-10-07 01:42:46.903185', 0, 0, 28, 145, NULL, 305, 198);
INSERT INTO `app_api_lesson` VALUES (205, '使用Prometheus实践基于Spring Boot监控告警体系', '基于Spring Boot2.X使用Prometheus实现监控大盘及微服务告警功能。', 'https://img2.mukewang.com/5e82b5b8099dc26405400300-240-135.png', '', 0, 0, 0, '2020-10-07 01:42:46.908217', 0, 0, 29, 145, NULL, 306, 198);
INSERT INTO `app_api_lesson` VALUES (206, '二进制与Java中的基本数据类型', '从认识二进制开始，逐步理解Java是如何存储和处理数据的。', 'https://img.mukewang.com/5e646d5708f882d512000676-240-135.jpg', '', 0, 0, 0, '2020-10-07 01:42:46.913559', 0, 0, 29, 188, NULL, 307, 198);
INSERT INTO `app_api_lesson` VALUES (207, '自己动手实现RPC框架', '自己动手实现一个完整的RPC框架，So Easy！', 'https://img.mukewang.com/5e37d120082e7c7c06000338-240-135.jpg', '', 0, 0, 0, '2020-10-07 01:42:46.918955', 0, 0, 29, 145, NULL, 308, 198);
INSERT INTO `app_api_lesson` VALUES (208, 'MUI+个推实现安卓与ios移动端推送', '结合慕信轻聊Netty实战，整合个推到前端与后端，实现安卓与ios移动端推送', 'https://img4.mukewang.com/5bebce6b0001bd6106000336-240-135.jpg', '', 0, 0, 0, '2020-10-07 01:42:46.924824', 0, 0, 29, 156, NULL, 309, 198);
INSERT INTO `app_api_lesson` VALUES (209, 'Springboot 微信小程序 – 微信登录功能实战', '简单实现在小程序中对使用微信登录的方式来登录小程序应用', 'https://img2.mukewang.com/5bbf2def000118ab06000336-240-135.jpg', '', 0, 0, 0, '2020-10-07 01:42:46.930103', 0, 0, 29, 156, NULL, 309, 198);
INSERT INTO `app_api_lesson` VALUES (210, 'Numpy基础入门', '从基本数组入手全面讲解Numpy中的核心知识', 'https://img.mukewang.com/5e9683f808f03af912000676-240-135.jpg', '', 0, 0, 0, '2020-10-07 01:42:46.935138', 0, 0, 29, 188, NULL, 311, 198);
INSERT INTO `app_api_lesson` VALUES (211, 'Python数据预处理（四）- 特征降维与可视化', '教会你使用Python数据预处理', 'https://img2.mukewang.com/5ce4b199083e469306000338-240-135.jpg', '', 0, 0, 0, '2020-10-07 01:42:46.940548', 0, 0, 29, 156, NULL, 312, 198);
INSERT INTO `app_api_lesson` VALUES (212, 'MultiDex从基础原理到实践优化', 'Android进阶学习必备，带你从基础用法到实践优化一站式掌握MultiDex。', 'https://img.mukewang.com/5e6098b409a0151406000338-240-135.png', '', 0, 0, 0, '2020-10-07 01:42:46.946101', 0, 0, 30, 145, NULL, 313, 198);
INSERT INTO `app_api_lesson` VALUES (213, 'Android网络安全之加解密', '在不安全的网络环境中，如何安全的传输敏感数据', 'https://img4.mukewang.com/5dfc2e870902f80d06000338-240-135.png', '', 0, 0, 0, '2020-10-07 01:42:46.951531', 0, 0, 30, 145, NULL, 313, 198);
INSERT INTO `app_api_lesson` VALUES (214, 'Android CMake以及NDK实践基础', 'Android底层开发入门必备，CMake动态库编译和使用，NDK的各种开发技巧。 ', 'https://img1.mukewang.com/5de8a5740989152106000338-240-135.png', '', 0, 0, 0, '2020-10-07 01:42:46.956726', 0, 0, 30, 145, NULL, 315, 198);
INSERT INTO `app_api_lesson` VALUES (215, 'Android 机器学习中的统计学基础', '机器学习中的常用统计学知识点 ', 'https://img4.mukewang.com/5b470bfe0001cdbf06000338-240-135.jpg', '', 0, 0, 0, '2020-10-07 01:42:46.961990', 0, 0, 31, 156, NULL, 316, 198);
INSERT INTO `app_api_lesson` VALUES (216, 'Javascript实现二叉树算法', '感受JS与数据结构的魅力。 ', 'https://img3.mukewang.com/59ae0e2a0001307706000338-240-135.jpg', '', 0, 0, 0, '2020-10-07 01:42:46.967398', 0, 0, 31, 145, NULL, 317, 198);
COMMIT;

-- ----------------------------
-- Table structure for app_api_lesson_labels
-- ----------------------------
DROP TABLE IF EXISTS `app_api_lesson_labels`;
CREATE TABLE `app_api_lesson_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lesson_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_api_lesson_labels_lesson_id_label_id_05b2f65c_uniq` (`lesson_id`,`label_id`),
  KEY `app_api_lesson_labels_lesson_id_8aa66f9f` (`lesson_id`),
  KEY `app_api_lesson_labels_label_id_339c345c` (`label_id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_lesson_labels
-- ----------------------------
BEGIN;
INSERT INTO `app_api_lesson_labels` VALUES (131, 145, 139);
INSERT INTO `app_api_lesson_labels` VALUES (132, 146, 140);
INSERT INTO `app_api_lesson_labels` VALUES (133, 146, 141);
INSERT INTO `app_api_lesson_labels` VALUES (134, 147, 140);
INSERT INTO `app_api_lesson_labels` VALUES (135, 147, 141);
INSERT INTO `app_api_lesson_labels` VALUES (136, 148, 141);
INSERT INTO `app_api_lesson_labels` VALUES (137, 149, 141);
INSERT INTO `app_api_lesson_labels` VALUES (138, 150, 140);
INSERT INTO `app_api_lesson_labels` VALUES (139, 151, 139);
INSERT INTO `app_api_lesson_labels` VALUES (140, 152, 140);
INSERT INTO `app_api_lesson_labels` VALUES (141, 153, 140);
INSERT INTO `app_api_lesson_labels` VALUES (142, 154, 153);
INSERT INTO `app_api_lesson_labels` VALUES (143, 155, 153);
INSERT INTO `app_api_lesson_labels` VALUES (144, 156, 153);
INSERT INTO `app_api_lesson_labels` VALUES (145, 157, 149);
INSERT INTO `app_api_lesson_labels` VALUES (146, 157, 151);
INSERT INTO `app_api_lesson_labels` VALUES (147, 158, 149);
INSERT INTO `app_api_lesson_labels` VALUES (148, 158, 151);
INSERT INTO `app_api_lesson_labels` VALUES (149, 159, 149);
INSERT INTO `app_api_lesson_labels` VALUES (150, 159, 150);
INSERT INTO `app_api_lesson_labels` VALUES (151, 160, 165);
INSERT INTO `app_api_lesson_labels` VALUES (152, 160, 167);
INSERT INTO `app_api_lesson_labels` VALUES (153, 161, 165);
INSERT INTO `app_api_lesson_labels` VALUES (154, 162, 163);
INSERT INTO `app_api_lesson_labels` VALUES (155, 163, 163);
INSERT INTO `app_api_lesson_labels` VALUES (156, 164, 163);
INSERT INTO `app_api_lesson_labels` VALUES (157, 167, 171);
INSERT INTO `app_api_lesson_labels` VALUES (158, 169, 172);
INSERT INTO `app_api_lesson_labels` VALUES (159, 170, 173);
INSERT INTO `app_api_lesson_labels` VALUES (160, 171, 174);
INSERT INTO `app_api_lesson_labels` VALUES (161, 181, 179);
INSERT INTO `app_api_lesson_labels` VALUES (162, 182, 179);
INSERT INTO `app_api_lesson_labels` VALUES (163, 183, 179);
INSERT INTO `app_api_lesson_labels` VALUES (164, 184, 188);
INSERT INTO `app_api_lesson_labels` VALUES (165, 185, 188);
INSERT INTO `app_api_lesson_labels` VALUES (166, 188, 197);
INSERT INTO `app_api_lesson_labels` VALUES (167, 190, 197);
INSERT INTO `app_api_lesson_labels` VALUES (168, 193, 199);
INSERT INTO `app_api_lesson_labels` VALUES (169, 194, 201);
INSERT INTO `app_api_lesson_labels` VALUES (170, 195, 201);
INSERT INTO `app_api_lesson_labels` VALUES (171, 195, 203);
INSERT INTO `app_api_lesson_labels` VALUES (172, 198, 137);
INSERT INTO `app_api_lesson_labels` VALUES (173, 199, 138);
INSERT INTO `app_api_lesson_labels` VALUES (174, 200, 138);
INSERT INTO `app_api_lesson_labels` VALUES (175, 201, 140);
INSERT INTO `app_api_lesson_labels` VALUES (176, 202, 140);
INSERT INTO `app_api_lesson_labels` VALUES (177, 203, 143);
INSERT INTO `app_api_lesson_labels` VALUES (178, 204, 143);
INSERT INTO `app_api_lesson_labels` VALUES (179, 205, 149);
INSERT INTO `app_api_lesson_labels` VALUES (180, 206, 149);
INSERT INTO `app_api_lesson_labels` VALUES (181, 207, 149);
INSERT INTO `app_api_lesson_labels` VALUES (182, 208, 149);
INSERT INTO `app_api_lesson_labels` VALUES (183, 208, 150);
INSERT INTO `app_api_lesson_labels` VALUES (184, 209, 149);
INSERT INTO `app_api_lesson_labels` VALUES (185, 209, 150);
INSERT INTO `app_api_lesson_labels` VALUES (186, 210, 153);
INSERT INTO `app_api_lesson_labels` VALUES (187, 211, 153);
INSERT INTO `app_api_lesson_labels` VALUES (188, 211, 177);
INSERT INTO `app_api_lesson_labels` VALUES (189, 212, 163);
INSERT INTO `app_api_lesson_labels` VALUES (190, 213, 163);
INSERT INTO `app_api_lesson_labels` VALUES (191, 214, 163);
INSERT INTO `app_api_lesson_labels` VALUES (192, 215, 169);
INSERT INTO `app_api_lesson_labels` VALUES (193, 215, 170);
INSERT INTO `app_api_lesson_labels` VALUES (195, 216, 138);
INSERT INTO `app_api_lesson_labels` VALUES (194, 216, 170);
COMMIT;

-- ----------------------------
-- Table structure for app_api_lessonhardtype
-- ----------------------------
DROP TABLE IF EXISTS `app_api_lessonhardtype`;
CREATE TABLE `app_api_lessonhardtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_lessonhardtype
-- ----------------------------
BEGIN;
INSERT INTO `app_api_lessonhardtype` VALUES (145, '2', '中级');
INSERT INTO `app_api_lessonhardtype` VALUES (153, '3', '高级');
INSERT INTO `app_api_lessonhardtype` VALUES (156, '1', '初级');
INSERT INTO `app_api_lessonhardtype` VALUES (188, '0', '入门');
COMMIT;

-- ----------------------------
-- Table structure for app_api_lessonscript
-- ----------------------------
DROP TABLE IF EXISTS `app_api_lessonscript`;
CREATE TABLE `app_api_lessonscript` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `code` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_lessonscript
-- ----------------------------
BEGIN;
INSERT INTO `app_api_lessonscript` VALUES (9, '升级', 1);
COMMIT;

-- ----------------------------
-- Table structure for app_api_lessontype
-- ----------------------------
DROP TABLE IF EXISTS `app_api_lessontype`;
CREATE TABLE `app_api_lessontype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_lessontype
-- ----------------------------
BEGIN;
INSERT INTO `app_api_lessontype` VALUES (145, '1', '实战');
INSERT INTO `app_api_lessontype` VALUES (198, '0', '免费');
COMMIT;

-- ----------------------------
-- Table structure for app_api_log
-- ----------------------------
DROP TABLE IF EXISTS `app_api_log`;
CREATE TABLE `app_api_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `device` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_api_log_type_id_7225d783` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_log
-- ----------------------------
BEGIN;
INSERT INTO `app_api_log` VALUES (1, '', '2019-10-11 08:08:08', '192.168.0.1', 'web', '广东省广州市天河区', 1);
INSERT INTO `app_api_log` VALUES (2, '', '2019-09-11 08:08:08', '192.168.0.1', 'web', '广东省广州市天河区', 1);
INSERT INTO `app_api_log` VALUES (3, '', '2019-08-11 08:08:08', '192.168.0.1', 'ipad', '广东省广州市天河区', 3);
INSERT INTO `app_api_log` VALUES (4, '', '2019-07-11 08:08:08', '192.168.0.1', 'ipad', '广东省广州市天河区', 3);
INSERT INTO `app_api_log` VALUES (5, '', '2019-06-11 08:08:08', '192.168.0.1', 'ipad', '广东省广州市天河区', 5);
INSERT INTO `app_api_log` VALUES (6, '', '2019-05-11 08:08:08', '192.168.0.1', 'APP', '广东省广州市天河区', 5);
INSERT INTO `app_api_log` VALUES (7, '', '2019-04-11 08:08:08', '192.168.0.1', 'APP', '广东省广州市天河区', 1);
INSERT INTO `app_api_log` VALUES (8, '', '2019-03-11 08:08:08', '192.168.0.1', 'APP', '广东省广州市天河区', 1);
INSERT INTO `app_api_log` VALUES (9, '', '2019-02-11 08:08:08', '192.168.0.1', 'APP', '广东省广州市天河区', 3);
INSERT INTO `app_api_log` VALUES (10, '', '2019-01-11 08:08:08', '192.168.0.1', 'APP', '广东省广州市天河区', 3);
INSERT INTO `app_api_log` VALUES (11, '', '2019-10-11 08:08:08', '192.168.0.1', 'web', '广东省广州市天河区', 1);
INSERT INTO `app_api_log` VALUES (12, '', '2019-09-11 08:08:08', '192.168.0.1', 'web', '广东省广州市天河区', 1);
INSERT INTO `app_api_log` VALUES (13, '', '2019-08-11 08:08:08', '192.168.0.1', 'ipad', '广东省广州市天河区', 3);
INSERT INTO `app_api_log` VALUES (14, '', '2019-07-11 08:08:08', '192.168.0.1', 'ipad', '广东省广州市天河区', 3);
INSERT INTO `app_api_log` VALUES (15, '', '2019-06-11 08:08:08', '192.168.0.1', 'ipad', '广东省广州市天河区', 5);
INSERT INTO `app_api_log` VALUES (16, '', '2019-05-11 08:08:08', '192.168.0.1', 'APP', '广东省广州市天河区', 5);
INSERT INTO `app_api_log` VALUES (17, '', '2019-04-11 08:08:08', '192.168.0.1', 'APP', '广东省广州市天河区', 1);
INSERT INTO `app_api_log` VALUES (18, '', '2019-03-11 08:08:08', '192.168.0.1', 'APP', '广东省广州市天河区', 1);
INSERT INTO `app_api_log` VALUES (19, '', '2019-02-11 08:08:08', '192.168.0.1', 'APP', '广东省广州市天河区', 3);
INSERT INTO `app_api_log` VALUES (20, '', '2019-01-11 08:08:08', '192.168.0.1', 'APP', '广东省广州市天河区', 3);
INSERT INTO `app_api_log` VALUES (21, '4', '2020-10-07 21:21:15.588800', '127.0.0.1', 'web', '四川省成都市', 1);
COMMIT;

-- ----------------------------
-- Table structure for app_api_logtype
-- ----------------------------
DROP TABLE IF EXISTS `app_api_logtype`;
CREATE TABLE `app_api_logtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `code` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_logtype
-- ----------------------------
BEGIN;
INSERT INTO `app_api_logtype` VALUES (1, '账号登陆', 0);
INSERT INTO `app_api_logtype` VALUES (3, '短信验证码登陆', 1);
INSERT INTO `app_api_logtype` VALUES (5, '二维码登陆', 2);
COMMIT;

-- ----------------------------
-- Table structure for app_api_nav
-- ----------------------------
DROP TABLE IF EXISTS `app_api_nav`;
CREATE TABLE `app_api_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_nav
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for app_api_navigation
-- ----------------------------
DROP TABLE IF EXISTS `app_api_navigation`;
CREATE TABLE `app_api_navigation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_navigation
-- ----------------------------
BEGIN;
INSERT INTO `app_api_navigation` VALUES (64, '前沿 / 区块链 / 人工智能', '4', 0);
INSERT INTO `app_api_navigation` VALUES (65, '前端 / 小程序 / JS', '0', 0);
INSERT INTO `app_api_navigation` VALUES (66, '后端 / JAVA / Python', '1', 0);
INSERT INTO `app_api_navigation` VALUES (67, '移动 / Android / iOS', '2', 0);
INSERT INTO `app_api_navigation` VALUES (68, '云计算 / 大数据 / 容器', '3,5', 0);
INSERT INTO `app_api_navigation` VALUES (69, '运维 / 测试 / 数据库', '6,7', 0);
INSERT INTO `app_api_navigation` VALUES (70, 'UI设计 / 3D动画 / 游戏', '8', 0);
COMMIT;

-- ----------------------------
-- Table structure for app_api_notice
-- ----------------------------
DROP TABLE IF EXISTS `app_api_notice`;
CREATE TABLE `app_api_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_notice
-- ----------------------------
BEGIN;
INSERT INTO `app_api_notice` VALUES (49, 1, '2019-08-13 16:32:01.000000', '多知多懂的程序猿，慕丝2069084诚恳的向你抛来了一个问题，不要吝惜你的才华，帮帮他吧！');
INSERT INTO `app_api_notice` VALUES (50, 1, '2019-08-12 13:36:45.000000', '你购买的“前端要学的测试课 从Jest入门到 TDD/BDD双实战”课程又更新了，一如既往的坚持学习吧');
INSERT INTO `app_api_notice` VALUES (51, 1, '2019-08-13 16:32:01.000000', '多知多懂的程序猿，qq_慕尼黑1028606诚恳的向你抛来了一个问题,，不要吝惜你的才华，帮帮他吧！');
INSERT INTO `app_api_notice` VALUES (52, 1, '2019-08-13 16:32:01.000000', '你购买的“前端要学的测试课 从Jest入门到 TDD/BDD双实战”课程又更新了，一如既往的坚持学习吧！');
INSERT INTO `app_api_notice` VALUES (53, 2, '2019-08-13 16:32:01.000000', '您于07月18日14时27分收到支付宝充值余额1000元');
INSERT INTO `app_api_notice` VALUES (54, 2, '2019-08-13 16:32:01.000000', '尊敬的用户，您有8张优惠券即将过期，机不可失，来选一门心仪的课程吧！');
INSERT INTO `app_api_notice` VALUES (55, 2, '2019-08-13 16:32:01.000000', '尊敬的用户，您有8张优惠券即将过期，机不可失，来选一门心仪的课程吧！');
INSERT INTO `app_api_notice` VALUES (56, 1, '2019-08-13 16:32:01.000000', '你购买的“前端下一代开发语言TypeScript  从基础到axios实战”课程又更新了，一如既往的坚持学习吧');
INSERT INTO `app_api_notice` VALUES (57, 1, '2019-08-13 16:32:01.000000', '多知多懂的程序猿，慕丝2069084诚恳的向你抛来了一个问题，不要吝惜你的才华，帮帮他吧！');
INSERT INTO `app_api_notice` VALUES (58, 1, '2019-08-12 13:36:45.000000', '你购买的“前端要学的测试课 从Jest入门到 TDD/BDD双实战”课程又更新了，一如既往的坚持学习吧');
INSERT INTO `app_api_notice` VALUES (59, 1, '2019-08-13 16:32:01.000000', '多知多懂的程序猿，qq_慕尼黑1028606诚恳的向你抛来了一个问题,，不要吝惜你的才华，帮帮他吧！');
INSERT INTO `app_api_notice` VALUES (60, 1, '2019-08-13 16:32:01.000000', '你购买的“前端要学的测试课 从Jest入门到 TDD/BDD双实战”课程又更新了，一如既往的坚持学习吧！');
INSERT INTO `app_api_notice` VALUES (61, 2, '2019-08-13 16:32:01.000000', '您于07月18日14时27分收到支付宝充值余额1000元');
INSERT INTO `app_api_notice` VALUES (62, 2, '2019-08-13 16:32:01.000000', '尊敬的用户，您有8张优惠券即将过期，机不可失，来选一门心仪的课程吧！');
INSERT INTO `app_api_notice` VALUES (63, 2, '2019-08-13 16:32:01.000000', '尊敬的用户，您有8张优惠券即将过期，机不可失，来选一门心仪的课程吧！');
INSERT INTO `app_api_notice` VALUES (64, 1, '2019-08-13 16:32:01.000000', '你购买的“前端下一代开发语言TypeScript  从基础到axios实战”课程又更新了，一如既往的坚持学习吧');
INSERT INTO `app_api_notice` VALUES (65, 1, '2019-08-13 16:32:01.000000', '多知多懂的程序猿，慕丝2069084诚恳的向你抛来了一个问题，不要吝惜你的才华，帮帮他吧！');
INSERT INTO `app_api_notice` VALUES (66, 1, '2019-08-12 13:36:45.000000', '你购买的“前端要学的测试课 从Jest入门到 TDD/BDD双实战”课程又更新了，一如既往的坚持学习吧');
INSERT INTO `app_api_notice` VALUES (67, 1, '2019-08-13 16:32:01.000000', '多知多懂的程序猿，qq_慕尼黑1028606诚恳的向你抛来了一个问题,，不要吝惜你的才华，帮帮他吧！');
INSERT INTO `app_api_notice` VALUES (68, 1, '2019-08-13 16:32:01.000000', '你购买的“前端要学的测试课 从Jest入门到 TDD/BDD双实战”课程又更新了，一如既往的坚持学习吧！');
INSERT INTO `app_api_notice` VALUES (69, 2, '2019-08-13 16:32:01.000000', '您于07月18日14时27分收到支付宝充值余额1000元');
INSERT INTO `app_api_notice` VALUES (70, 2, '2019-08-13 16:32:01.000000', '尊敬的用户，您有8张优惠券即将过期，机不可失，来选一门心仪的课程吧！');
INSERT INTO `app_api_notice` VALUES (71, 2, '2019-08-13 16:32:01.000000', '尊敬的用户，您有8张优惠券即将过期，机不可失，来选一门心仪的课程吧！');
INSERT INTO `app_api_notice` VALUES (72, 1, '2019-08-13 16:32:01.000000', '你购买的“前端下一代开发语言TypeScript  从基础到axios实战”课程又更新了，一如既往的坚持学习吧');
COMMIT;

-- ----------------------------
-- Table structure for app_api_order
-- ----------------------------
DROP TABLE IF EXISTS `app_api_order`;
CREATE TABLE `app_api_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `time` datetime(6) NOT NULL,
  `expired` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `way_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_api_order_status_id_a6b1a192` (`status_id`),
  KEY `app_api_order_way_id_8005bd2c` (`way_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_order
-- ----------------------------
BEGIN;
INSERT INTO `app_api_order` VALUES (2, '4', '202010071602079282', '2020-10-07 22:01:22.151040', 1800000, 0, 1, NULL);
COMMIT;

-- ----------------------------
-- Table structure for app_api_orderitem
-- ----------------------------
DROP TABLE IF EXISTS `app_api_orderitem`;
CREATE TABLE `app_api_orderitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lessonid` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `price` int(11) NOT NULL,
  `isDiscount` tinyint(1) NOT NULL,
  `discountPrice` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_api_orderitem_order_id_f7b99dde` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_orderitem
-- ----------------------------
BEGIN;
INSERT INTO `app_api_orderitem` VALUES (1, '145', 'https://img.mukewang.com/szimg/5e1d990f0885d97306000338-360-202.jpg', 'TypeScript  系统入门到项目实战 趁早学习提高职场竞争力', 266, 1, 216, 1);
INSERT INTO `app_api_orderitem` VALUES (2, '145', 'https://img.mukewang.com/szimg/5e1d990f0885d97306000338-360-202.jpg', 'TypeScript  系统入门到项目实战 趁早学习提高职场竞争力', 266, 1, 216, 2);
COMMIT;

-- ----------------------------
-- Table structure for app_api_orderstatus
-- ----------------------------
DROP TABLE IF EXISTS `app_api_orderstatus`;
CREATE TABLE `app_api_orderstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `code` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_orderstatus
-- ----------------------------
BEGIN;
INSERT INTO `app_api_orderstatus` VALUES (1, '未支付', 0);
INSERT INTO `app_api_orderstatus` VALUES (2, '已完成', 1);
INSERT INTO `app_api_orderstatus` VALUES (3, '已关闭', 2);
COMMIT;

-- ----------------------------
-- Table structure for app_api_qa
-- ----------------------------
DROP TABLE IF EXISTS `app_api_qa`;
CREATE TABLE `app_api_qa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lessonid` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `answers` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `chapter` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `time` datetime(6) NOT NULL,
  `comment` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_api_qa_type_id_06ad19b1` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=343 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_qa
-- ----------------------------
BEGIN;
INSERT INTO `app_api_qa` VALUES (229, '198', 'jest-enzyme支持typescript吗，根据官网怎么配都不行。', 'https://img.mukewang.com/user/577220cf00016fe902790279-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.604766', '', 13);
INSERT INTO `app_api_qa` VALUES (230, '199', 'jest-enzyme支持typescript吗，根据官网怎么配都不行。', 'https://img.mukewang.com/user/577220cf00016fe902790279-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.606086', '', 13);
INSERT INTO `app_api_qa` VALUES (231, '200', 'jest-enzyme支持typescript吗，根据官网怎么配都不行。', 'https://img.mukewang.com/user/577220cf00016fe902790279-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.607447', '', 13);
INSERT INTO `app_api_qa` VALUES (232, '201', 'jest-enzyme支持typescript吗，根据官网怎么配都不行。', 'https://img.mukewang.com/user/577220cf00016fe902790279-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.608586', '', 13);
INSERT INTO `app_api_qa` VALUES (233, '202', 'jest-enzyme支持typescript吗，根据官网怎么配都不行。', 'https://img.mukewang.com/user/577220cf00016fe902790279-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.609699', '', 13);
INSERT INTO `app_api_qa` VALUES (234, '203', 'jest-enzyme支持typescript吗，根据官网怎么配都不行。', 'https://img.mukewang.com/user/577220cf00016fe902790279-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.610936', '', 13);
INSERT INTO `app_api_qa` VALUES (235, '204', 'jest-enzyme支持typescript吗，根据官网怎么配都不行。', 'https://img.mukewang.com/user/577220cf00016fe902790279-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.612066', '', 13);
INSERT INTO `app_api_qa` VALUES (236, '205', 'jest-enzyme支持typescript吗，根据官网怎么配都不行。', 'https://img.mukewang.com/user/577220cf00016fe902790279-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.613101', '', 13);
INSERT INTO `app_api_qa` VALUES (237, '206', 'jest-enzyme支持typescript吗，根据官网怎么配都不行。', 'https://img.mukewang.com/user/577220cf00016fe902790279-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.614054', '', 13);
INSERT INTO `app_api_qa` VALUES (238, '207', 'jest-enzyme支持typescript吗，根据官网怎么配都不行。', 'https://img.mukewang.com/user/577220cf00016fe902790279-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.615203', '', 13);
INSERT INTO `app_api_qa` VALUES (239, '208', 'jest-enzyme支持typescript吗，根据官网怎么配都不行。', 'https://img.mukewang.com/user/577220cf00016fe902790279-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.616367', '', 13);
INSERT INTO `app_api_qa` VALUES (240, '209', 'jest-enzyme支持typescript吗，根据官网怎么配都不行。', 'https://img.mukewang.com/user/577220cf00016fe902790279-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.617445', '', 13);
INSERT INTO `app_api_qa` VALUES (241, '210', 'jest-enzyme支持typescript吗，根据官网怎么配都不行。', 'https://img.mukewang.com/user/577220cf00016fe902790279-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.618484', '', 13);
INSERT INTO `app_api_qa` VALUES (242, '211', 'jest-enzyme支持typescript吗，根据官网怎么配都不行。', 'https://img.mukewang.com/user/577220cf00016fe902790279-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.619408', '', 13);
INSERT INTO `app_api_qa` VALUES (243, '212', 'jest-enzyme支持typescript吗，根据官网怎么配都不行。', 'https://img.mukewang.com/user/577220cf00016fe902790279-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.620400', '', 13);
INSERT INTO `app_api_qa` VALUES (244, '213', 'jest-enzyme支持typescript吗，根据官网怎么配都不行。', 'https://img.mukewang.com/user/577220cf00016fe902790279-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.621540', '', 13);
INSERT INTO `app_api_qa` VALUES (245, '214', 'jest-enzyme支持typescript吗，根据官网怎么配都不行。', 'https://img.mukewang.com/user/577220cf00016fe902790279-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.622523', '', 13);
INSERT INTO `app_api_qa` VALUES (246, '215', 'jest-enzyme支持typescript吗，根据官网怎么配都不行。', 'https://img.mukewang.com/user/577220cf00016fe902790279-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.623467', '', 13);
INSERT INTO `app_api_qa` VALUES (247, '216', 'jest-enzyme支持typescript吗，根据官网怎么配都不行。', 'https://img.mukewang.com/user/577220cf00016fe902790279-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.624577', '', 13);
INSERT INTO `app_api_qa` VALUES (248, '198', '老师，能不能把前几节课的代码上传一下', 'https://img.mukewang.com/user/545847c10001f40702200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.625555', '', 14);
INSERT INTO `app_api_qa` VALUES (249, '199', '老师，能不能把前几节课的代码上传一下', 'https://img.mukewang.com/user/545847c10001f40702200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.626493', '', 14);
INSERT INTO `app_api_qa` VALUES (250, '200', '老师，能不能把前几节课的代码上传一下', 'https://img.mukewang.com/user/545847c10001f40702200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.627540', '', 14);
INSERT INTO `app_api_qa` VALUES (251, '201', '老师，能不能把前几节课的代码上传一下', 'https://img.mukewang.com/user/545847c10001f40702200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.628607', '', 14);
INSERT INTO `app_api_qa` VALUES (252, '202', '老师，能不能把前几节课的代码上传一下', 'https://img.mukewang.com/user/545847c10001f40702200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.629509', '', 14);
INSERT INTO `app_api_qa` VALUES (253, '203', '老师，能不能把前几节课的代码上传一下', 'https://img.mukewang.com/user/545847c10001f40702200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.630406', '', 14);
INSERT INTO `app_api_qa` VALUES (254, '204', '老师，能不能把前几节课的代码上传一下', 'https://img.mukewang.com/user/545847c10001f40702200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.631304', '', 14);
INSERT INTO `app_api_qa` VALUES (255, '205', '老师，能不能把前几节课的代码上传一下', 'https://img.mukewang.com/user/545847c10001f40702200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.632292', '', 14);
INSERT INTO `app_api_qa` VALUES (256, '206', '老师，能不能把前几节课的代码上传一下', 'https://img.mukewang.com/user/545847c10001f40702200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.633400', '', 14);
INSERT INTO `app_api_qa` VALUES (257, '207', '老师，能不能把前几节课的代码上传一下', 'https://img.mukewang.com/user/545847c10001f40702200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.634336', '', 14);
INSERT INTO `app_api_qa` VALUES (258, '208', '老师，能不能把前几节课的代码上传一下', 'https://img.mukewang.com/user/545847c10001f40702200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.635233', '', 14);
INSERT INTO `app_api_qa` VALUES (259, '209', '老师，能不能把前几节课的代码上传一下', 'https://img.mukewang.com/user/545847c10001f40702200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.636174', '', 14);
INSERT INTO `app_api_qa` VALUES (260, '210', '老师，能不能把前几节课的代码上传一下', 'https://img.mukewang.com/user/545847c10001f40702200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.637209', '', 14);
INSERT INTO `app_api_qa` VALUES (261, '211', '老师，能不能把前几节课的代码上传一下', 'https://img.mukewang.com/user/545847c10001f40702200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.638131', '', 14);
INSERT INTO `app_api_qa` VALUES (262, '212', '老师，能不能把前几节课的代码上传一下', 'https://img.mukewang.com/user/545847c10001f40702200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.639065', '', 14);
INSERT INTO `app_api_qa` VALUES (263, '213', '老师，能不能把前几节课的代码上传一下', 'https://img.mukewang.com/user/545847c10001f40702200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.640132', '', 14);
INSERT INTO `app_api_qa` VALUES (264, '214', '老师，能不能把前几节课的代码上传一下', 'https://img.mukewang.com/user/545847c10001f40702200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.641081', '', 14);
INSERT INTO `app_api_qa` VALUES (265, '215', '老师，能不能把前几节课的代码上传一下', 'https://img.mukewang.com/user/545847c10001f40702200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.642064', '', 14);
INSERT INTO `app_api_qa` VALUES (266, '216', '老师，能不能把前几节课的代码上传一下', 'https://img.mukewang.com/user/545847c10001f40702200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.643125', '', 14);
INSERT INTO `app_api_qa` VALUES (267, '198', '这一节课有个小问题', 'https://img.mukewang.com/user/5a01401500018d9903000300-100-100.jpg', 1, 30, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.644147', '', 14);
INSERT INTO `app_api_qa` VALUES (268, '199', '这一节课有个小问题', 'https://img.mukewang.com/user/5a01401500018d9903000300-100-100.jpg', 1, 30, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.645561', '', 14);
INSERT INTO `app_api_qa` VALUES (269, '200', '这一节课有个小问题', 'https://img.mukewang.com/user/5a01401500018d9903000300-100-100.jpg', 1, 30, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.646790', '', 14);
INSERT INTO `app_api_qa` VALUES (270, '201', '这一节课有个小问题', 'https://img.mukewang.com/user/5a01401500018d9903000300-100-100.jpg', 1, 30, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.647780', '', 14);
INSERT INTO `app_api_qa` VALUES (271, '202', '这一节课有个小问题', 'https://img.mukewang.com/user/5a01401500018d9903000300-100-100.jpg', 1, 30, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.648850', '', 14);
INSERT INTO `app_api_qa` VALUES (272, '203', '这一节课有个小问题', 'https://img.mukewang.com/user/5a01401500018d9903000300-100-100.jpg', 1, 30, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.649889', '', 14);
INSERT INTO `app_api_qa` VALUES (273, '204', '这一节课有个小问题', 'https://img.mukewang.com/user/5a01401500018d9903000300-100-100.jpg', 1, 30, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.650774', '', 14);
INSERT INTO `app_api_qa` VALUES (274, '205', '这一节课有个小问题', 'https://img.mukewang.com/user/5a01401500018d9903000300-100-100.jpg', 1, 30, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.651859', '', 14);
INSERT INTO `app_api_qa` VALUES (275, '206', '这一节课有个小问题', 'https://img.mukewang.com/user/5a01401500018d9903000300-100-100.jpg', 1, 30, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.652940', '', 14);
INSERT INTO `app_api_qa` VALUES (276, '207', '这一节课有个小问题', 'https://img.mukewang.com/user/5a01401500018d9903000300-100-100.jpg', 1, 30, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.653894', '', 14);
INSERT INTO `app_api_qa` VALUES (277, '208', '这一节课有个小问题', 'https://img.mukewang.com/user/5a01401500018d9903000300-100-100.jpg', 1, 30, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.654830', '', 14);
INSERT INTO `app_api_qa` VALUES (278, '209', '这一节课有个小问题', 'https://img.mukewang.com/user/5a01401500018d9903000300-100-100.jpg', 1, 30, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.655766', '', 14);
INSERT INTO `app_api_qa` VALUES (279, '210', '这一节课有个小问题', 'https://img.mukewang.com/user/5a01401500018d9903000300-100-100.jpg', 1, 30, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.656708', '', 14);
INSERT INTO `app_api_qa` VALUES (280, '211', '这一节课有个小问题', 'https://img.mukewang.com/user/5a01401500018d9903000300-100-100.jpg', 1, 30, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.657639', '', 14);
INSERT INTO `app_api_qa` VALUES (281, '212', '这一节课有个小问题', 'https://img.mukewang.com/user/5a01401500018d9903000300-100-100.jpg', 1, 30, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.658744', '', 14);
INSERT INTO `app_api_qa` VALUES (282, '213', '这一节课有个小问题', 'https://img.mukewang.com/user/5a01401500018d9903000300-100-100.jpg', 1, 30, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.659866', '', 14);
INSERT INTO `app_api_qa` VALUES (283, '214', '这一节课有个小问题', 'https://img.mukewang.com/user/5a01401500018d9903000300-100-100.jpg', 1, 30, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.660875', '', 14);
INSERT INTO `app_api_qa` VALUES (284, '215', '这一节课有个小问题', 'https://img.mukewang.com/user/5a01401500018d9903000300-100-100.jpg', 1, 30, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.661816', '', 14);
INSERT INTO `app_api_qa` VALUES (285, '216', '这一节课有个小问题', 'https://img.mukewang.com/user/5a01401500018d9903000300-100-100.jpg', 1, 30, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.662768', '', 14);
INSERT INTO `app_api_qa` VALUES (286, '198', 'jest coverage配置问题', 'https://img.mukewang.com/user/545863080001255902200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.663864', '', 14);
INSERT INTO `app_api_qa` VALUES (287, '199', 'jest coverage配置问题', 'https://img.mukewang.com/user/545863080001255902200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.664888', '', 14);
INSERT INTO `app_api_qa` VALUES (288, '200', 'jest coverage配置问题', 'https://img.mukewang.com/user/545863080001255902200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.665899', '', 14);
INSERT INTO `app_api_qa` VALUES (289, '201', 'jest coverage配置问题', 'https://img.mukewang.com/user/545863080001255902200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.666875', '', 14);
INSERT INTO `app_api_qa` VALUES (290, '202', 'jest coverage配置问题', 'https://img.mukewang.com/user/545863080001255902200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.667978', '', 14);
INSERT INTO `app_api_qa` VALUES (291, '203', 'jest coverage配置问题', 'https://img.mukewang.com/user/545863080001255902200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.669019', '', 14);
INSERT INTO `app_api_qa` VALUES (292, '204', 'jest coverage配置问题', 'https://img.mukewang.com/user/545863080001255902200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.669984', '', 14);
INSERT INTO `app_api_qa` VALUES (293, '205', 'jest coverage配置问题', 'https://img.mukewang.com/user/545863080001255902200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.671017', '', 14);
INSERT INTO `app_api_qa` VALUES (294, '206', 'jest coverage配置问题', 'https://img.mukewang.com/user/545863080001255902200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.672053', '', 14);
INSERT INTO `app_api_qa` VALUES (295, '207', 'jest coverage配置问题', 'https://img.mukewang.com/user/545863080001255902200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.672972', '', 14);
INSERT INTO `app_api_qa` VALUES (296, '208', 'jest coverage配置问题', 'https://img.mukewang.com/user/545863080001255902200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.673933', '', 14);
INSERT INTO `app_api_qa` VALUES (297, '209', 'jest coverage配置问题', 'https://img.mukewang.com/user/545863080001255902200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.674884', '', 14);
INSERT INTO `app_api_qa` VALUES (298, '210', 'jest coverage配置问题', 'https://img.mukewang.com/user/545863080001255902200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.675826', '', 14);
INSERT INTO `app_api_qa` VALUES (299, '211', 'jest coverage配置问题', 'https://img.mukewang.com/user/545863080001255902200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.676805', '', 14);
INSERT INTO `app_api_qa` VALUES (300, '212', 'jest coverage配置问题', 'https://img.mukewang.com/user/545863080001255902200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.677826', '', 14);
INSERT INTO `app_api_qa` VALUES (301, '213', 'jest coverage配置问题', 'https://img.mukewang.com/user/545863080001255902200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.679113', '', 14);
INSERT INTO `app_api_qa` VALUES (302, '214', 'jest coverage配置问题', 'https://img.mukewang.com/user/545863080001255902200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.680207', '', 14);
INSERT INTO `app_api_qa` VALUES (303, '215', 'jest coverage配置问题', 'https://img.mukewang.com/user/545863080001255902200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.681189', '', 14);
INSERT INTO `app_api_qa` VALUES (304, '216', 'jest coverage配置问题', 'https://img.mukewang.com/user/545863080001255902200220-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.682211', '', 14);
INSERT INTO `app_api_qa` VALUES (305, '198', 'jQuery requires a window with a document', 'https://img.mukewang.com/user/5405241d00010c6501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.683309', '', 14);
INSERT INTO `app_api_qa` VALUES (306, '199', 'jQuery requires a window with a document', 'https://img.mukewang.com/user/5405241d00010c6501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.684385', '', 14);
INSERT INTO `app_api_qa` VALUES (307, '200', 'jQuery requires a window with a document', 'https://img.mukewang.com/user/5405241d00010c6501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.685597', '', 14);
INSERT INTO `app_api_qa` VALUES (308, '201', 'jQuery requires a window with a document', 'https://img.mukewang.com/user/5405241d00010c6501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.686732', '', 14);
INSERT INTO `app_api_qa` VALUES (309, '202', 'jQuery requires a window with a document', 'https://img.mukewang.com/user/5405241d00010c6501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.687927', '', 14);
INSERT INTO `app_api_qa` VALUES (310, '203', 'jQuery requires a window with a document', 'https://img.mukewang.com/user/5405241d00010c6501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.689055', '', 14);
INSERT INTO `app_api_qa` VALUES (311, '204', 'jQuery requires a window with a document', 'https://img.mukewang.com/user/5405241d00010c6501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.690037', '', 14);
INSERT INTO `app_api_qa` VALUES (312, '205', 'jQuery requires a window with a document', 'https://img.mukewang.com/user/5405241d00010c6501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.691070', '', 14);
INSERT INTO `app_api_qa` VALUES (313, '206', 'jQuery requires a window with a document', 'https://img.mukewang.com/user/5405241d00010c6501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.692027', '', 14);
INSERT INTO `app_api_qa` VALUES (314, '207', 'jQuery requires a window with a document', 'https://img.mukewang.com/user/5405241d00010c6501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.693030', '', 14);
INSERT INTO `app_api_qa` VALUES (315, '208', 'jQuery requires a window with a document', 'https://img.mukewang.com/user/5405241d00010c6501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.693967', '', 14);
INSERT INTO `app_api_qa` VALUES (316, '209', 'jQuery requires a window with a document', 'https://img.mukewang.com/user/5405241d00010c6501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.695044', '', 14);
INSERT INTO `app_api_qa` VALUES (317, '210', 'jQuery requires a window with a document', 'https://img.mukewang.com/user/5405241d00010c6501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.696040', '', 14);
INSERT INTO `app_api_qa` VALUES (318, '211', 'jQuery requires a window with a document', 'https://img.mukewang.com/user/5405241d00010c6501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.696970', '', 14);
INSERT INTO `app_api_qa` VALUES (319, '212', 'jQuery requires a window with a document', 'https://img.mukewang.com/user/5405241d00010c6501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.698111', '', 14);
INSERT INTO `app_api_qa` VALUES (320, '213', 'jQuery requires a window with a document', 'https://img.mukewang.com/user/5405241d00010c6501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.699171', '', 14);
INSERT INTO `app_api_qa` VALUES (321, '214', 'jQuery requires a window with a document', 'https://img.mukewang.com/user/5405241d00010c6501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.700104', '', 14);
INSERT INTO `app_api_qa` VALUES (322, '215', 'jQuery requires a window with a document', 'https://img.mukewang.com/user/5405241d00010c6501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.701103', '', 14);
INSERT INTO `app_api_qa` VALUES (323, '216', 'jQuery requires a window with a document', 'https://img.mukewang.com/user/5405241d00010c6501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.702077', '', 14);
INSERT INTO `app_api_qa` VALUES (324, '198', '老师，做UI测试用哪个库比较好，主要就是测试一下是否精确的还原UI给的设计稿', 'https://img.mukewang.com/user/57613b890001cba501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.702991', '', 13);
INSERT INTO `app_api_qa` VALUES (325, '199', '老师，做UI测试用哪个库比较好，主要就是测试一下是否精确的还原UI给的设计稿', 'https://img.mukewang.com/user/57613b890001cba501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.703927', '', 13);
INSERT INTO `app_api_qa` VALUES (326, '200', '老师，做UI测试用哪个库比较好，主要就是测试一下是否精确的还原UI给的设计稿', 'https://img.mukewang.com/user/57613b890001cba501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.704949', '', 13);
INSERT INTO `app_api_qa` VALUES (327, '201', '老师，做UI测试用哪个库比较好，主要就是测试一下是否精确的还原UI给的设计稿', 'https://img.mukewang.com/user/57613b890001cba501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.705847', '', 13);
INSERT INTO `app_api_qa` VALUES (328, '202', '老师，做UI测试用哪个库比较好，主要就是测试一下是否精确的还原UI给的设计稿', 'https://img.mukewang.com/user/57613b890001cba501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.706877', '', 13);
INSERT INTO `app_api_qa` VALUES (329, '203', '老师，做UI测试用哪个库比较好，主要就是测试一下是否精确的还原UI给的设计稿', 'https://img.mukewang.com/user/57613b890001cba501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.707796', '', 13);
INSERT INTO `app_api_qa` VALUES (330, '204', '老师，做UI测试用哪个库比较好，主要就是测试一下是否精确的还原UI给的设计稿', 'https://img.mukewang.com/user/57613b890001cba501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.708871', '', 13);
INSERT INTO `app_api_qa` VALUES (331, '205', '老师，做UI测试用哪个库比较好，主要就是测试一下是否精确的还原UI给的设计稿', 'https://img.mukewang.com/user/57613b890001cba501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.709876', '', 13);
INSERT INTO `app_api_qa` VALUES (332, '206', '老师，做UI测试用哪个库比较好，主要就是测试一下是否精确的还原UI给的设计稿', 'https://img.mukewang.com/user/57613b890001cba501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.710908', '', 13);
INSERT INTO `app_api_qa` VALUES (333, '207', '老师，做UI测试用哪个库比较好，主要就是测试一下是否精确的还原UI给的设计稿', 'https://img.mukewang.com/user/57613b890001cba501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.712239', '', 13);
INSERT INTO `app_api_qa` VALUES (334, '208', '老师，做UI测试用哪个库比较好，主要就是测试一下是否精确的还原UI给的设计稿', 'https://img.mukewang.com/user/57613b890001cba501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.713312', '', 13);
INSERT INTO `app_api_qa` VALUES (335, '209', '老师，做UI测试用哪个库比较好，主要就是测试一下是否精确的还原UI给的设计稿', 'https://img.mukewang.com/user/57613b890001cba501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.714342', '', 13);
INSERT INTO `app_api_qa` VALUES (336, '210', '老师，做UI测试用哪个库比较好，主要就是测试一下是否精确的还原UI给的设计稿', 'https://img.mukewang.com/user/57613b890001cba501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.715248', '', 13);
INSERT INTO `app_api_qa` VALUES (337, '211', '老师，做UI测试用哪个库比较好，主要就是测试一下是否精确的还原UI给的设计稿', 'https://img.mukewang.com/user/57613b890001cba501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.716256', '', 13);
INSERT INTO `app_api_qa` VALUES (338, '212', '老师，做UI测试用哪个库比较好，主要就是测试一下是否精确的还原UI给的设计稿', 'https://img.mukewang.com/user/57613b890001cba501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.717190', '', 13);
INSERT INTO `app_api_qa` VALUES (339, '213', '老师，做UI测试用哪个库比较好，主要就是测试一下是否精确的还原UI给的设计稿', 'https://img.mukewang.com/user/57613b890001cba501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.718225', '', 13);
INSERT INTO `app_api_qa` VALUES (340, '214', '老师，做UI测试用哪个库比较好，主要就是测试一下是否精确的还原UI给的设计稿', 'https://img.mukewang.com/user/57613b890001cba501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.719123', '', 13);
INSERT INTO `app_api_qa` VALUES (341, '215', '老师，做UI测试用哪个库比较好，主要就是测试一下是否精确的还原UI给的设计稿', 'https://img.mukewang.com/user/57613b890001cba501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.720054', '', 13);
INSERT INTO `app_api_qa` VALUES (342, '216', '老师，做UI测试用哪个库比较好，主要就是测试一下是否精确的还原UI给的设计稿', 'https://img.mukewang.com/user/57613b890001cba501000100-100-100.jpg', 1, 5, '5-4 Enzyme 的配置及使用', '2020-10-07 01:42:47.720927', '', 13);
COMMIT;

-- ----------------------------
-- Table structure for app_api_qatype
-- ----------------------------
DROP TABLE IF EXISTS `app_api_qatype`;
CREATE TABLE `app_api_qatype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `code` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_qatype
-- ----------------------------
BEGIN;
INSERT INTO `app_api_qatype` VALUES (13, '待解决', 0);
INSERT INTO `app_api_qatype` VALUES (14, '已采纳', 1);
COMMIT;

-- ----------------------------
-- Table structure for app_api_question
-- ----------------------------
DROP TABLE IF EXISTS `app_api_question`;
CREATE TABLE `app_api_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `answers` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `isResolve` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_question
-- ----------------------------
BEGIN;
INSERT INTO `app_api_question` VALUES (1, 'Chrome59到底支不支持forEach函数？', 23, 11519, 'https://img.mukewang.com/59e96f340001faac02400240.jpg', 1);
INSERT INTO `app_api_question` VALUES (2, '慕课网适合非计算机专业的人学习吗', 56, 15635, 'https://img.mukewang.com/59e96ff90001ab0402400240.jpg', 1);
INSERT INTO `app_api_question` VALUES (3, '我是网页设计从业者，怎么入门前端', 57, 11053, 'https://img.mukewang.com/59e96ff90001ab0402400240.jpg', 1);
INSERT INTO `app_api_question` VALUES (4, '大三暑假没有实习，这段时间应该怎么安排来提高前端水平？', 29, 5971, 'https://img.mukewang.com/59e96deb0001f9d302400240.jpg', 1);
INSERT INTO `app_api_question` VALUES (5, '貌似整个函数都没有调用？', 15, 3972, 'https://img.mukewang.com/59e96f340001faac02400240.jpg', 1);
INSERT INTO `app_api_question` VALUES (6, '怎么用html 或CSS写出下列的表单样子', 20, 6987, 'https://img.mukewang.com/59e96ebe0001a9ad02400240.jpg', 0);
INSERT INTO `app_api_question` VALUES (7, '/* margin:0;padding:0（消除文本与div边框之间的间隙）*/', 4, 2278, 'https://img.mukewang.com/59e96ebe0001a9ad02400240.jpg', 0);
INSERT INTO `app_api_question` VALUES (8, '关于VUE路由单页面使用JQUERY第三方插件的问题？跳转过去插件部分就不起作用了', 7, 6805, 'https://img.mukewang.com/59e96deb0001f9d302400240.jpg', 0);
INSERT INTO `app_api_question` VALUES (9, 'HTML 打印机', 20, 6987, 'https://img.mukewang.com/59e96ebe0001a9ad02400240.jpg', 0);
INSERT INTO `app_api_question` VALUES (10, '【花式填坑第9期】解密高级前端攻城狮の极速进化', 4, 2278, 'https://img.mukewang.com/59e96ebe0001a9ad02400240.jpg', 0);
INSERT INTO `app_api_question` VALUES (11, 'transform-style:preserve-3d', 7, 6805, 'https://img.mukewang.com/59e96deb0001f9d302400240.jpg', 0);
INSERT INTO `app_api_question` VALUES (12, '大佬们 请问在HTML中<input/>标签和<input></input>有什么区别？', 20, 6987, 'https://img.mukewang.com/59e96ebe0001a9ad02400240.jpg', 0);
INSERT INTO `app_api_question` VALUES (13, '盒子1下边界30px 盒子2的上边界50px  那盒子1的下边界还会30px吗', 4, 2278, 'https://img.mukewang.com/59e96ebe0001a9ad02400240.jpg', 0);
INSERT INTO `app_api_question` VALUES (14, '把sum放到前面初始化 ，运行是合计为空，是不是js按循序运行的？？求解', 7, 6805, 'https://img.mukewang.com/59e96deb0001f9d302400240.jpg', 0);
INSERT INTO `app_api_question` VALUES (15, 'Chrome59到底支不支持forEach函数？', 23, 11519, 'https://img.mukewang.com/59e96f340001faac02400240.jpg', 1);
INSERT INTO `app_api_question` VALUES (16, '慕课网适合非计算机专业的人学习吗', 56, 15635, 'https://img.mukewang.com/59e96ff90001ab0402400240.jpg', 1);
INSERT INTO `app_api_question` VALUES (17, '我是网页设计从业者，怎么入门前端', 57, 11053, 'https://img.mukewang.com/59e96ff90001ab0402400240.jpg', 1);
INSERT INTO `app_api_question` VALUES (18, '大三暑假没有实习，这段时间应该怎么安排来提高前端水平？', 29, 5971, 'https://img.mukewang.com/59e96deb0001f9d302400240.jpg', 1);
INSERT INTO `app_api_question` VALUES (19, '貌似整个函数都没有调用？', 15, 3972, 'https://img.mukewang.com/59e96f340001faac02400240.jpg', 1);
INSERT INTO `app_api_question` VALUES (20, '怎么用html 或CSS写出下列的表单样子', 20, 6987, 'https://img.mukewang.com/59e96ebe0001a9ad02400240.jpg', 0);
INSERT INTO `app_api_question` VALUES (21, '/* margin:0;padding:0（消除文本与div边框之间的间隙）*/', 4, 2278, 'https://img.mukewang.com/59e96ebe0001a9ad02400240.jpg', 0);
INSERT INTO `app_api_question` VALUES (22, '关于VUE路由单页面使用JQUERY第三方插件的问题？跳转过去插件部分就不起作用了', 7, 6805, 'https://img.mukewang.com/59e96deb0001f9d302400240.jpg', 0);
INSERT INTO `app_api_question` VALUES (23, 'HTML 打印机', 20, 6987, 'https://img.mukewang.com/59e96ebe0001a9ad02400240.jpg', 0);
INSERT INTO `app_api_question` VALUES (24, '【花式填坑第9期】解密高级前端攻城狮の极速进化', 4, 2278, 'https://img.mukewang.com/59e96ebe0001a9ad02400240.jpg', 0);
INSERT INTO `app_api_question` VALUES (25, 'transform-style:preserve-3d', 7, 6805, 'https://img.mukewang.com/59e96deb0001f9d302400240.jpg', 0);
INSERT INTO `app_api_question` VALUES (26, '大佬们 请问在HTML中<input/>标签和<input></input>有什么区别？', 20, 6987, 'https://img.mukewang.com/59e96ebe0001a9ad02400240.jpg', 0);
INSERT INTO `app_api_question` VALUES (27, '盒子1下边界30px 盒子2的上边界50px  那盒子1的下边界还会30px吗', 4, 2278, 'https://img.mukewang.com/59e96ebe0001a9ad02400240.jpg', 0);
INSERT INTO `app_api_question` VALUES (28, '把sum放到前面初始化 ，运行是合计为空，是不是js按循序运行的？？求解', 7, 6805, 'https://img.mukewang.com/59e96deb0001f9d302400240.jpg', 0);
COMMIT;

-- ----------------------------
-- Table structure for app_api_question_tags
-- ----------------------------
DROP TABLE IF EXISTS `app_api_question_tags`;
CREATE TABLE `app_api_question_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_api_question_tags_question_id_label_id_cfec20a6_uniq` (`question_id`,`label_id`),
  KEY `app_api_question_tags_question_id_0f222b22` (`question_id`),
  KEY `app_api_question_tags_label_id_de0c82b7` (`label_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_question_tags
-- ----------------------------
BEGIN;
INSERT INTO `app_api_question_tags` VALUES (1, 1, 138);
INSERT INTO `app_api_question_tags` VALUES (2, 2, 137);
INSERT INTO `app_api_question_tags` VALUES (3, 2, 138);
INSERT INTO `app_api_question_tags` VALUES (4, 3, 137);
INSERT INTO `app_api_question_tags` VALUES (5, 3, 138);
INSERT INTO `app_api_question_tags` VALUES (6, 4, 140);
INSERT INTO `app_api_question_tags` VALUES (7, 5, 138);
INSERT INTO `app_api_question_tags` VALUES (8, 6, 137);
INSERT INTO `app_api_question_tags` VALUES (9, 6, 141);
INSERT INTO `app_api_question_tags` VALUES (11, 8, 140);
INSERT INTO `app_api_question_tags` VALUES (10, 8, 148);
INSERT INTO `app_api_question_tags` VALUES (12, 9, 137);
INSERT INTO `app_api_question_tags` VALUES (13, 9, 141);
INSERT INTO `app_api_question_tags` VALUES (15, 11, 140);
INSERT INTO `app_api_question_tags` VALUES (14, 11, 148);
INSERT INTO `app_api_question_tags` VALUES (16, 12, 137);
INSERT INTO `app_api_question_tags` VALUES (17, 12, 141);
INSERT INTO `app_api_question_tags` VALUES (19, 14, 140);
INSERT INTO `app_api_question_tags` VALUES (18, 14, 148);
INSERT INTO `app_api_question_tags` VALUES (20, 15, 138);
INSERT INTO `app_api_question_tags` VALUES (21, 16, 137);
INSERT INTO `app_api_question_tags` VALUES (22, 16, 138);
INSERT INTO `app_api_question_tags` VALUES (23, 17, 137);
INSERT INTO `app_api_question_tags` VALUES (24, 17, 138);
INSERT INTO `app_api_question_tags` VALUES (25, 18, 140);
INSERT INTO `app_api_question_tags` VALUES (26, 19, 138);
INSERT INTO `app_api_question_tags` VALUES (27, 20, 137);
INSERT INTO `app_api_question_tags` VALUES (28, 20, 141);
INSERT INTO `app_api_question_tags` VALUES (30, 22, 140);
INSERT INTO `app_api_question_tags` VALUES (29, 22, 148);
INSERT INTO `app_api_question_tags` VALUES (31, 23, 137);
INSERT INTO `app_api_question_tags` VALUES (32, 23, 141);
INSERT INTO `app_api_question_tags` VALUES (34, 25, 140);
INSERT INTO `app_api_question_tags` VALUES (33, 25, 148);
INSERT INTO `app_api_question_tags` VALUES (35, 26, 137);
INSERT INTO `app_api_question_tags` VALUES (36, 26, 141);
INSERT INTO `app_api_question_tags` VALUES (38, 28, 140);
INSERT INTO `app_api_question_tags` VALUES (37, 28, 148);
COMMIT;

-- ----------------------------
-- Table structure for app_api_read
-- ----------------------------
DROP TABLE IF EXISTS `app_api_read`;
CREATE TABLE `app_api_read` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `detailImg` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `price` int(11) NOT NULL,
  `persons` int(11) NOT NULL,
  `term` int(11) NOT NULL,
  `isRecommend` tinyint(1) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `app_api_read_author_id_2cfb3836` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_read
-- ----------------------------
BEGIN;
INSERT INTO `app_api_read` VALUES (1, '前端开发', '从0到1 实战朋友圈移动Web App开发', 'https://img3.mukewang.com/5d5bd52600016bbc02940333.jpg', 'https://img3.sycdn.imooc.com/5d3138f000015f4c05400720.jpg', '全栈开发进阶系列课', 48, 472, 36, 1, 318);
INSERT INTO `app_api_read` VALUES (2, '前端开发', '你不知道的前端性能优化技巧', 'https://img2.mukewang.com/5d5bd510000104f102940333.jpg', 'https://img4.sycdn.imooc.com/5d283a2c0001b89205400720.jpg', '前端进阶必修系列课', 48, 508, 27, 1, 319);
INSERT INTO `app_api_read` VALUES (3, '前端开发', '零基础实现微信电商小程序开发', 'https://img.mukewang.com/5d5bd4fe0001e01602940333.jpg', 'https://img1.sycdn.imooc.com/5d22a6be0001d12805400720.jpg', '小程序开发一线战地笔记', 68, 491, 50, 1, 320);
INSERT INTO `app_api_read` VALUES (4, '后端开发', 'Python入门指南', 'https://img2.mukewang.com/5d5bd56b00012afd02940333.jpg', 'https://img3.sycdn.imooc.com/5d5510fa00011fa605400720.jpg', '无门槛快速学Python', 46, 86, 33, 0, 321);
INSERT INTO `app_api_read` VALUES (5, '后端开发', 'Spring Cloud微服务开发实践', 'https://img.mukewang.com/5d5bd44a0001fa2902940333.jpg', 'https://img2.sycdn.imooc.com/5d12d7e500013ada03600480.jpg', 'Java工程师晋升必学', 88, 299, 39, 1, 322);
INSERT INTO `app_api_read` VALUES (6, '数据库', '一线数据库工程师带你深入理解 MySQL', 'https://img.mukewang.com/5d5bd53d00019b5302940333.jpg', 'https://img2.sycdn.imooc.com/5d3ac78f0001b10a05400720.jpg', '你的数据库优化管理第一课', 35, 621, 32, 1, 323);
INSERT INTO `app_api_read` VALUES (7, '面试', '面试高频算法习题精讲', 'https://img4.mukewang.com/5d5bd54f0001e41902940333.jpg', 'https://img2.sycdn.imooc.com/5d424c5800015b5c05400720.jpg', '一网打尽面试官最喜欢的算法习题', 49, 350, 44, 0, 324);
INSERT INTO `app_api_read` VALUES (8, '其它', '用技术人的眼光看世界 • 程序员技术指北', 'https://img3.mukewang.com/5d5bd3f9000130dd02940333.jpg', 'https://img2.sycdn.imooc.com/5cd10384000145f305400720.jpg', 'bobo老师出品必是精品', 99, 824, 62, 0, 227);
COMMIT;

-- ----------------------------
-- Table structure for app_api_readchapter
-- ----------------------------
DROP TABLE IF EXISTS `app_api_readchapter`;
CREATE TABLE `app_api_readchapter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `read_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_api_readchapter_read_id_e49b33a4` (`read_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_readchapter
-- ----------------------------
BEGIN;
INSERT INTO `app_api_readchapter` VALUES (1, '第1章 优化的概念', 1);
INSERT INTO `app_api_readchapter` VALUES (2, '第2章 性能工具介绍', 1);
INSERT INTO `app_api_readchapter` VALUES (3, '第3章 网络部分', 1);
INSERT INTO `app_api_readchapter` VALUES (4, '第4章 缓存部分', 1);
INSERT INTO `app_api_readchapter` VALUES (5, '第1章 优化的概念', 2);
INSERT INTO `app_api_readchapter` VALUES (6, '第2章 性能工具介绍', 2);
INSERT INTO `app_api_readchapter` VALUES (7, '第3章 网络部分', 2);
INSERT INTO `app_api_readchapter` VALUES (8, '第4章 缓存部分', 2);
INSERT INTO `app_api_readchapter` VALUES (9, '第1章 优化的概念', 3);
INSERT INTO `app_api_readchapter` VALUES (10, '第2章 性能工具介绍', 3);
INSERT INTO `app_api_readchapter` VALUES (11, '第3章 网络部分', 3);
INSERT INTO `app_api_readchapter` VALUES (12, '第4章 缓存部分', 3);
INSERT INTO `app_api_readchapter` VALUES (13, '第1章 优化的概念', 4);
INSERT INTO `app_api_readchapter` VALUES (14, '第2章 性能工具介绍', 4);
INSERT INTO `app_api_readchapter` VALUES (15, '第3章 网络部分', 4);
INSERT INTO `app_api_readchapter` VALUES (16, '第4章 缓存部分', 4);
INSERT INTO `app_api_readchapter` VALUES (17, '第1章 优化的概念', 5);
INSERT INTO `app_api_readchapter` VALUES (18, '第2章 性能工具介绍', 5);
INSERT INTO `app_api_readchapter` VALUES (19, '第3章 网络部分', 5);
INSERT INTO `app_api_readchapter` VALUES (20, '第4章 缓存部分', 5);
INSERT INTO `app_api_readchapter` VALUES (21, '第1章 优化的概念', 6);
INSERT INTO `app_api_readchapter` VALUES (22, '第2章 性能工具介绍', 6);
INSERT INTO `app_api_readchapter` VALUES (23, '第3章 网络部分', 6);
INSERT INTO `app_api_readchapter` VALUES (24, '第4章 缓存部分', 6);
INSERT INTO `app_api_readchapter` VALUES (25, '第1章 优化的概念', 7);
INSERT INTO `app_api_readchapter` VALUES (26, '第2章 性能工具介绍', 7);
INSERT INTO `app_api_readchapter` VALUES (27, '第3章 网络部分', 7);
INSERT INTO `app_api_readchapter` VALUES (28, '第4章 缓存部分', 7);
INSERT INTO `app_api_readchapter` VALUES (29, '第1章 优化的概念', 8);
INSERT INTO `app_api_readchapter` VALUES (30, '第2章 性能工具介绍', 8);
INSERT INTO `app_api_readchapter` VALUES (31, '第3章 网络部分', 8);
INSERT INTO `app_api_readchapter` VALUES (32, '第4章 缓存部分', 8);
COMMIT;

-- ----------------------------
-- Table structure for app_api_readchapteritem
-- ----------------------------
DROP TABLE IF EXISTS `app_api_readchapteritem`;
CREATE TABLE `app_api_readchapteritem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `isTry` tinyint(1) NOT NULL,
  `time` datetime(6) NOT NULL,
  `read_chapter_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_api_readchapteritem_read_chapter_id_88505c74` (`read_chapter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_readchapteritem
-- ----------------------------
BEGIN;
INSERT INTO `app_api_readchapteritem` VALUES (1, '01 导读：移动 web 的趋势', 1, '2019-07-01 00:00:00.000000', 1);
INSERT INTO `app_api_readchapteritem` VALUES (2, '02 项目技术栈介绍', 1, '2019-07-01 00:00:00.000000', 1);
INSERT INTO `app_api_readchapteritem` VALUES (3, '03 开发环境准备', 1, '2019-07-01 00:00:00.000000', 1);
INSERT INTO `app_api_readchapteritem` VALUES (4, '04 使用 PWA 改造真正的 webApp', 1, '2019-07-01 00:00:00.000000', 1);
INSERT INTO `app_api_readchapteritem` VALUES (5, '5 性能优化百宝箱（上）', 0, '2019-07-01 00:00:00.000000', 2);
INSERT INTO `app_api_readchapteritem` VALUES (6, '6 性能优化百宝箱（下）', 0, '2019-07-01 00:00:00.000000', 2);
INSERT INTO `app_api_readchapteritem` VALUES (7, '7 聊聊 DNS Prefetch', 0, '2019-07-01 00:00:00.000000', 3);
INSERT INTO `app_api_readchapteritem` VALUES (8, '8 Webpack 性能优化两三事', 0, '2019-07-01 00:00:00.000000', 3);
INSERT INTO `app_api_readchapteritem` VALUES (9, '9 图片加载优化（上）', 0, '2019-07-01 00:00:00.000000', 3);
INSERT INTO `app_api_readchapteritem` VALUES (10, '10 图片加载优化（下）', 0, '2019-07-01 00:00:00.000000', 3);
INSERT INTO `app_api_readchapteritem` VALUES (11, '11 十八般缓存', 0, '2019-07-01 00:00:00.000000', 4);
INSERT INTO `app_api_readchapteritem` VALUES (12, '12 CDN 缓存', 0, '2019-07-01 00:00:00.000000', 4);
INSERT INTO `app_api_readchapteritem` VALUES (13, '13 本地缓存（Web Storage）', 0, '2019-07-01 00:00:00.000000', 4);
INSERT INTO `app_api_readchapteritem` VALUES (14, '14 浏览器缓存（上）', 0, '2019-07-01 00:00:00.000000', 4);
INSERT INTO `app_api_readchapteritem` VALUES (15, '1 你的前端性能还能再抢救一下', 1, '2019-07-01 00:00:00.000000', 5);
INSERT INTO `app_api_readchapteritem` VALUES (16, '2 解读雅虎35条军规（上）', 1, '2019-07-01 00:00:00.000000', 5);
INSERT INTO `app_api_readchapteritem` VALUES (17, '3 解读雅虎35条军规（下）', 1, '2019-07-01 00:00:00.000000', 5);
INSERT INTO `app_api_readchapteritem` VALUES (18, '4 你要不要看这些优化指标？', 0, '2019-07-01 00:00:00.000000', 5);
INSERT INTO `app_api_readchapteritem` VALUES (19, '5 性能优化百宝箱（上）', 0, '2019-07-01 00:00:00.000000', 6);
INSERT INTO `app_api_readchapteritem` VALUES (20, '6 性能优化百宝箱（下）', 0, '2019-07-01 00:00:00.000000', 6);
INSERT INTO `app_api_readchapteritem` VALUES (21, '7 聊聊 DNS Prefetch', 0, '2019-07-01 00:00:00.000000', 7);
INSERT INTO `app_api_readchapteritem` VALUES (22, '8 Webpack 性能优化两三事', 0, '2019-07-01 00:00:00.000000', 7);
INSERT INTO `app_api_readchapteritem` VALUES (23, '9 图片加载优化（上）', 0, '2019-07-01 00:00:00.000000', 7);
INSERT INTO `app_api_readchapteritem` VALUES (24, '10 图片加载优化（下）', 0, '2019-07-01 00:00:00.000000', 7);
INSERT INTO `app_api_readchapteritem` VALUES (25, '11 十八般缓存', 0, '2019-07-01 00:00:00.000000', 8);
INSERT INTO `app_api_readchapteritem` VALUES (26, '12 CDN 缓存', 0, '2019-07-01 00:00:00.000000', 8);
INSERT INTO `app_api_readchapteritem` VALUES (27, '13 本地缓存（Web Storage）', 0, '2019-07-01 00:00:00.000000', 8);
INSERT INTO `app_api_readchapteritem` VALUES (28, '14 浏览器缓存（上）', 0, '2019-07-01 00:00:00.000000', 8);
INSERT INTO `app_api_readchapteritem` VALUES (29, '01 为什么你觉得学编程好难？', 1, '2019-07-01 00:00:00.000000', 9);
INSERT INTO `app_api_readchapteritem` VALUES (30, '02 分类拆解法简介： 助你马上起飞的编程方法论', 1, '2019-07-01 00:00:00.000000', 9);
INSERT INTO `app_api_readchapteritem` VALUES (31, '03 专栏使用指南：他们都说一开始就要敲重点', 1, '2019-07-01 00:00:00.000000', 9);
INSERT INTO `app_api_readchapteritem` VALUES (32, '04 解剖分类拆解法详解', 1, '2019-07-01 00:00:00.000000', 9);
INSERT INTO `app_api_readchapteritem` VALUES (33, '5 性能优化百宝箱（上）', 0, '2019-07-01 00:00:00.000000', 10);
INSERT INTO `app_api_readchapteritem` VALUES (34, '6 性能优化百宝箱（下）', 0, '2019-07-01 00:00:00.000000', 10);
INSERT INTO `app_api_readchapteritem` VALUES (35, '7 聊聊 DNS Prefetch', 0, '2019-07-01 00:00:00.000000', 11);
INSERT INTO `app_api_readchapteritem` VALUES (36, '8 Webpack 性能优化两三事', 0, '2019-07-01 00:00:00.000000', 11);
INSERT INTO `app_api_readchapteritem` VALUES (37, '9 图片加载优化（上）', 0, '2019-07-01 00:00:00.000000', 11);
INSERT INTO `app_api_readchapteritem` VALUES (38, '10 图片加载优化（下）', 0, '2019-07-01 00:00:00.000000', 11);
INSERT INTO `app_api_readchapteritem` VALUES (39, '11 十八般缓存', 0, '2019-07-01 00:00:00.000000', 12);
INSERT INTO `app_api_readchapteritem` VALUES (40, '12 CDN 缓存', 0, '2019-07-01 00:00:00.000000', 12);
INSERT INTO `app_api_readchapteritem` VALUES (41, '13 本地缓存（Web Storage）', 0, '2019-07-01 00:00:00.000000', 12);
INSERT INTO `app_api_readchapteritem` VALUES (42, '14 浏览器缓存（上）', 0, '2019-07-01 00:00:00.000000', 12);
INSERT INTO `app_api_readchapteritem` VALUES (43, '01 你为什么要学 Python ？', 1, '2019-07-01 00:00:00.000000', 13);
INSERT INTO `app_api_readchapteritem` VALUES (44, '02 我会怎样带你学 Python？', 1, '2019-07-01 00:00:00.000000', 13);
INSERT INTO `app_api_readchapteritem` VALUES (45, '03 让 Python 在你的电脑上安家落户', 1, '2019-07-01 00:00:00.000000', 13);
INSERT INTO `app_api_readchapteritem` VALUES (46, '5 性能优化百宝箱（上）', 0, '2019-07-01 00:00:00.000000', 14);
INSERT INTO `app_api_readchapteritem` VALUES (47, '6 性能优化百宝箱（下）', 0, '2019-07-01 00:00:00.000000', 14);
INSERT INTO `app_api_readchapteritem` VALUES (48, '7 聊聊 DNS Prefetch', 0, '2019-07-01 00:00:00.000000', 15);
INSERT INTO `app_api_readchapteritem` VALUES (49, '8 Webpack 性能优化两三事', 0, '2019-07-01 00:00:00.000000', 15);
INSERT INTO `app_api_readchapteritem` VALUES (50, '9 图片加载优化（上）', 0, '2019-07-01 00:00:00.000000', 15);
INSERT INTO `app_api_readchapteritem` VALUES (51, '10 图片加载优化（下）', 0, '2019-07-01 00:00:00.000000', 15);
INSERT INTO `app_api_readchapteritem` VALUES (52, '11 十八般缓存', 0, '2019-07-01 00:00:00.000000', 16);
INSERT INTO `app_api_readchapteritem` VALUES (53, '12 CDN 缓存', 0, '2019-07-01 00:00:00.000000', 16);
INSERT INTO `app_api_readchapteritem` VALUES (54, '13 本地缓存（Web Storage）', 0, '2019-07-01 00:00:00.000000', 16);
INSERT INTO `app_api_readchapteritem` VALUES (55, '14 浏览器缓存（上）', 0, '2019-07-01 00:00:00.000000', 16);
INSERT INTO `app_api_readchapteritem` VALUES (56, '01 Spring Cloud专栏介绍', 1, '2019-07-01 00:00:00.000000', 17);
INSERT INTO `app_api_readchapteritem` VALUES (57, '02 为什么要使用微服务架构？', 1, '2019-07-01 00:00:00.000000', 17);
INSERT INTO `app_api_readchapteritem` VALUES (58, '03 Spring Cloud 介绍以及发展前景', 1, '2019-07-01 00:00:00.000000', 17);
INSERT INTO `app_api_readchapteritem` VALUES (59, '04 Spring Boot 的设计理念和简单实践', 1, '2019-07-01 00:00:00.000000', 17);
INSERT INTO `app_api_readchapteritem` VALUES (60, '5 性能优化百宝箱（上）', 0, '2019-07-01 00:00:00.000000', 18);
INSERT INTO `app_api_readchapteritem` VALUES (61, '6 性能优化百宝箱（下）', 0, '2019-07-01 00:00:00.000000', 18);
INSERT INTO `app_api_readchapteritem` VALUES (62, '7 聊聊 DNS Prefetch', 0, '2019-07-01 00:00:00.000000', 19);
INSERT INTO `app_api_readchapteritem` VALUES (63, '8 Webpack 性能优化两三事', 0, '2019-07-01 00:00:00.000000', 19);
INSERT INTO `app_api_readchapteritem` VALUES (64, '9 图片加载优化（上）', 0, '2019-07-01 00:00:00.000000', 19);
INSERT INTO `app_api_readchapteritem` VALUES (65, '10 图片加载优化（下）', 0, '2019-07-01 00:00:00.000000', 19);
INSERT INTO `app_api_readchapteritem` VALUES (66, '11 十八般缓存', 0, '2019-07-01 00:00:00.000000', 20);
INSERT INTO `app_api_readchapteritem` VALUES (67, '12 CDN 缓存', 0, '2019-07-01 00:00:00.000000', 20);
INSERT INTO `app_api_readchapteritem` VALUES (68, '13 本地缓存（Web Storage）', 0, '2019-07-01 00:00:00.000000', 20);
INSERT INTO `app_api_readchapteritem` VALUES (69, '14 浏览器缓存（上）', 0, '2019-07-01 00:00:00.000000', 20);
INSERT INTO `app_api_readchapteritem` VALUES (70, '01 开篇词', 1, '2019-07-01 00:00:00.000000', 21);
INSERT INTO `app_api_readchapteritem` VALUES (71, '02 快速学会分析SQL执行效率（上）', 1, '2019-07-01 00:00:00.000000', 21);
INSERT INTO `app_api_readchapteritem` VALUES (72, '02 快速学会分析SQL执行效率（下）', 1, '2019-07-01 00:00:00.000000', 21);
INSERT INTO `app_api_readchapteritem` VALUES (73, '5 性能优化百宝箱（上）', 0, '2019-07-01 00:00:00.000000', 22);
INSERT INTO `app_api_readchapteritem` VALUES (74, '6 性能优化百宝箱（下）', 0, '2019-07-01 00:00:00.000000', 22);
INSERT INTO `app_api_readchapteritem` VALUES (75, '7 聊聊 DNS Prefetch', 0, '2019-07-01 00:00:00.000000', 23);
INSERT INTO `app_api_readchapteritem` VALUES (76, '8 Webpack 性能优化两三事', 0, '2019-07-01 00:00:00.000000', 23);
INSERT INTO `app_api_readchapteritem` VALUES (77, '9 图片加载优化（上）', 0, '2019-07-01 00:00:00.000000', 23);
INSERT INTO `app_api_readchapteritem` VALUES (78, '10 图片加载优化（下）', 0, '2019-07-01 00:00:00.000000', 23);
INSERT INTO `app_api_readchapteritem` VALUES (79, '11 十八般缓存', 0, '2019-07-01 00:00:00.000000', 24);
INSERT INTO `app_api_readchapteritem` VALUES (80, '12 CDN 缓存', 0, '2019-07-01 00:00:00.000000', 24);
INSERT INTO `app_api_readchapteritem` VALUES (81, '13 本地缓存（Web Storage）', 0, '2019-07-01 00:00:00.000000', 24);
INSERT INTO `app_api_readchapteritem` VALUES (82, '14 浏览器缓存（上）', 0, '2019-07-01 00:00:00.000000', 24);
INSERT INTO `app_api_readchapteritem` VALUES (83, '01 开篇：这个专栏能给你带来什么？', 1, '2019-07-01 00:00:00.000000', 25);
INSERT INTO `app_api_readchapteritem` VALUES (84, '02 online judge 的原理', 1, '2019-07-01 00:00:00.000000', 25);
INSERT INTO `app_api_readchapteritem` VALUES (85, '03 时间复杂度与空间复杂度分析', 1, '2019-07-01 00:00:00.000000', 25);
INSERT INTO `app_api_readchapteritem` VALUES (86, '5 性能优化百宝箱（上）', 0, '2019-07-01 00:00:00.000000', 26);
INSERT INTO `app_api_readchapteritem` VALUES (87, '6 性能优化百宝箱（下）', 0, '2019-07-01 00:00:00.000000', 26);
INSERT INTO `app_api_readchapteritem` VALUES (88, '7 聊聊 DNS Prefetch', 0, '2019-07-01 00:00:00.000000', 27);
INSERT INTO `app_api_readchapteritem` VALUES (89, '8 Webpack 性能优化两三事', 0, '2019-07-01 00:00:00.000000', 27);
INSERT INTO `app_api_readchapteritem` VALUES (90, '9 图片加载优化（上）', 0, '2019-07-01 00:00:00.000000', 27);
INSERT INTO `app_api_readchapteritem` VALUES (91, '10 图片加载优化（下）', 0, '2019-07-01 00:00:00.000000', 27);
INSERT INTO `app_api_readchapteritem` VALUES (92, '11 十八般缓存', 0, '2019-07-01 00:00:00.000000', 28);
INSERT INTO `app_api_readchapteritem` VALUES (93, '12 CDN 缓存', 0, '2019-07-01 00:00:00.000000', 28);
INSERT INTO `app_api_readchapteritem` VALUES (94, '13 本地缓存（Web Storage）', 0, '2019-07-01 00:00:00.000000', 28);
INSERT INTO `app_api_readchapteritem` VALUES (95, '14 浏览器缓存（上）', 0, '2019-07-01 00:00:00.000000', 28);
INSERT INTO `app_api_readchapteritem` VALUES (96, '01 开篇词', 1, '2019-07-01 00:00:00.000000', 29);
INSERT INTO `app_api_readchapteritem` VALUES (97, '02 编程语言的发展趋势：从没有分号，到DSL', 1, '2019-07-01 00:00:00.000000', 29);
INSERT INTO `app_api_readchapteritem` VALUES (98, '03 科技，死亡，和永生', 1, '2019-07-01 00:00:00.000000', 29);
INSERT INTO `app_api_readchapteritem` VALUES (99, '04 新西兰恐袭，疯狂删帖的小编，背锅的算法工程师', 1, '2019-07-01 00:00:00.000000', 29);
INSERT INTO `app_api_readchapteritem` VALUES (100, '5 性能优化百宝箱（上）', 0, '2019-07-01 00:00:00.000000', 30);
INSERT INTO `app_api_readchapteritem` VALUES (101, '6 性能优化百宝箱（下）', 0, '2019-07-01 00:00:00.000000', 30);
INSERT INTO `app_api_readchapteritem` VALUES (102, '7 聊聊 DNS Prefetch', 0, '2019-07-01 00:00:00.000000', 31);
INSERT INTO `app_api_readchapteritem` VALUES (103, '8 Webpack 性能优化两三事', 0, '2019-07-01 00:00:00.000000', 31);
INSERT INTO `app_api_readchapteritem` VALUES (104, '9 图片加载优化（上）', 0, '2019-07-01 00:00:00.000000', 31);
INSERT INTO `app_api_readchapteritem` VALUES (105, '10 图片加载优化（下）', 0, '2019-07-01 00:00:00.000000', 31);
INSERT INTO `app_api_readchapteritem` VALUES (106, '11 十八般缓存', 0, '2019-07-01 00:00:00.000000', 32);
INSERT INTO `app_api_readchapteritem` VALUES (107, '12 CDN 缓存', 0, '2019-07-01 00:00:00.000000', 32);
INSERT INTO `app_api_readchapteritem` VALUES (108, '13 本地缓存（Web Storage）', 0, '2019-07-01 00:00:00.000000', 32);
INSERT INTO `app_api_readchapteritem` VALUES (109, '14 浏览器缓存（上）', 0, '2019-07-01 00:00:00.000000', 32);
COMMIT;

-- ----------------------------
-- Table structure for app_api_readtype
-- ----------------------------
DROP TABLE IF EXISTS `app_api_readtype`;
CREATE TABLE `app_api_readtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_readtype
-- ----------------------------
BEGIN;
INSERT INTO `app_api_readtype` VALUES (1, '前端开发', 0);
INSERT INTO `app_api_readtype` VALUES (2, '后端开发', 0);
INSERT INTO `app_api_readtype` VALUES (3, '数据库', 0);
INSERT INTO `app_api_readtype` VALUES (4, '面试', 0);
INSERT INTO `app_api_readtype` VALUES (5, '其它', 0);
COMMIT;

-- ----------------------------
-- Table structure for app_api_recharge
-- ----------------------------
DROP TABLE IF EXISTS `app_api_recharge`;
CREATE TABLE `app_api_recharge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `time` datetime(6) NOT NULL,
  `money` int(11) NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `action_id` int(11) NOT NULL,
  `way_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_api_recharge_action_id_c00eb3bf` (`action_id`),
  KEY `app_api_recharge_way_id_6e2cc3f4` (`way_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_recharge
-- ----------------------------
BEGIN;
INSERT INTO `app_api_recharge` VALUES (1, '', '2020-10-07 01:42:47.871878', 100, '支付宝充值', 1, 1);
INSERT INTO `app_api_recharge` VALUES (2, '', '2020-10-07 01:42:47.875329', 900, '支付宝充值', 1, 1);
INSERT INTO `app_api_recharge` VALUES (3, '', '2020-10-07 01:42:47.877782', 3000, '支付宝充值', 1, 1);
INSERT INTO `app_api_recharge` VALUES (4, '', '2020-10-07 01:42:47.880062', 5000, '微信充值', 1, 4);
INSERT INTO `app_api_recharge` VALUES (5, '', '2020-10-07 01:42:47.882094', 90000, '微信充值', 1, 4);
INSERT INTO `app_api_recharge` VALUES (6, '', '2020-10-07 01:42:47.884002', 100, '支付宝充值', 1, 1);
INSERT INTO `app_api_recharge` VALUES (7, '', '2020-10-07 01:42:47.885826', 900, '支付宝充值', 1, 1);
INSERT INTO `app_api_recharge` VALUES (8, '', '2020-10-07 01:42:47.887542', 3000, '支付宝充值', 1, 1);
INSERT INTO `app_api_recharge` VALUES (9, '', '2020-10-07 01:42:47.889217', 5000, '微信充值', 1, 4);
INSERT INTO `app_api_recharge` VALUES (10, '', '2020-10-07 01:42:47.890817', 90000, '微信充值', 1, 4);
INSERT INTO `app_api_recharge` VALUES (11, '', '2020-10-07 01:42:47.892327', 100, '支付宝充值', 1, 1);
INSERT INTO `app_api_recharge` VALUES (12, '', '2020-10-07 01:42:47.893880', 900, '支付宝充值', 1, 1);
INSERT INTO `app_api_recharge` VALUES (13, '', '2020-10-07 01:42:47.895424', 3000, '支付宝充值', 1, 1);
INSERT INTO `app_api_recharge` VALUES (14, '', '2020-10-07 01:42:47.896918', 5000, '微信充值', 1, 4);
INSERT INTO `app_api_recharge` VALUES (15, '', '2020-10-07 01:42:47.898508', 90000, '微信充值', 1, 4);
INSERT INTO `app_api_recharge` VALUES (16, '', '2020-10-07 01:42:47.899844', 100, '支付宝充值', 1, 1);
INSERT INTO `app_api_recharge` VALUES (17, '', '2020-10-07 01:42:47.901324', 900, '支付宝充值', 1, 1);
INSERT INTO `app_api_recharge` VALUES (18, '', '2020-10-07 01:42:47.902692', 3000, '支付宝充值', 1, 1);
INSERT INTO `app_api_recharge` VALUES (19, '', '2020-10-07 01:42:47.904015', 5000, '微信充值', 1, 4);
INSERT INTO `app_api_recharge` VALUES (20, '', '2020-10-07 01:42:47.905543', 90000, '微信充值', 1, 4);
INSERT INTO `app_api_recharge` VALUES (21, '', '2020-10-07 01:42:47.906850', 100, '支付宝充值', 1, 1);
INSERT INTO `app_api_recharge` VALUES (22, '', '2020-10-07 01:42:47.908309', 900, '支付宝充值', 1, 1);
INSERT INTO `app_api_recharge` VALUES (23, '', '2020-10-07 01:42:47.909821', 3000, '支付宝充值', 1, 1);
INSERT INTO `app_api_recharge` VALUES (24, '', '2020-10-07 01:42:47.911175', 5000, '微信充值', 1, 4);
INSERT INTO `app_api_recharge` VALUES (25, '', '2020-10-07 01:42:47.912705', 90000, '微信充值', 1, 4);
INSERT INTO `app_api_recharge` VALUES (26, '4', '2020-10-07 21:48:29.791911', 30000, '支付宝充值', 1, 1);
INSERT INTO `app_api_recharge` VALUES (27, '4', '2020-10-07 21:48:36.361138', 100000, '微信充值', 1, 4);
INSERT INTO `app_api_recharge` VALUES (28, '4', '2020-10-07 21:58:28.196009', 1100, '支付宝充值', 1, 1);
INSERT INTO `app_api_recharge` VALUES (29, '4', '2020-10-07 21:58:32.581324', 11100, '微信充值', 1, 4);
COMMIT;

-- ----------------------------
-- Table structure for app_api_rechargeaction
-- ----------------------------
DROP TABLE IF EXISTS `app_api_rechargeaction`;
CREATE TABLE `app_api_rechargeaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `code` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_rechargeaction
-- ----------------------------
BEGIN;
INSERT INTO `app_api_rechargeaction` VALUES (1, '转入', 0);
COMMIT;

-- ----------------------------
-- Table structure for app_api_rechargepay
-- ----------------------------
DROP TABLE IF EXISTS `app_api_rechargepay`;
CREATE TABLE `app_api_rechargepay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `code` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_rechargepay
-- ----------------------------
BEGIN;
INSERT INTO `app_api_rechargepay` VALUES (1, '支付宝', 0);
INSERT INTO `app_api_rechargepay` VALUES (4, '微信', 1);
COMMIT;

-- ----------------------------
-- Table structure for app_api_slider
-- ----------------------------
DROP TABLE IF EXISTS `app_api_slider`;
CREATE TABLE `app_api_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_slider
-- ----------------------------
BEGIN;
INSERT INTO `app_api_slider` VALUES (55, 'https://img.mukewang.com/5d1e0a1800013ca916000540.jpg', '', 1);
INSERT INTO `app_api_slider` VALUES (56, 'https://img.mukewang.com/5d1c5aec00011c1016000540.jpg', '', 2);
INSERT INTO `app_api_slider` VALUES (57, 'https://img.mukewang.com/5d108b1500010bfe18720632.jpg', '', 3);
INSERT INTO `app_api_slider` VALUES (58, 'https://img.mukewang.com/5d1466c5000172a516000540.jpg', '', 4);
INSERT INTO `app_api_slider` VALUES (59, 'https://img.mukewang.com/5cb833cf0001efb716000540.jpg', '', 5);
INSERT INTO `app_api_slider` VALUES (60, 'https://img.mukewang.com/5c0fd2630001ef2118720632.jpg', '', 6);
COMMIT;

-- ----------------------------
-- Table structure for app_api_student
-- ----------------------------
DROP TABLE IF EXISTS `app_api_student`;
CREATE TABLE `app_api_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `number` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_api_student_type_id_a495c9fc` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_student
-- ----------------------------
BEGIN;
INSERT INTO `app_api_student` VALUES (89, 'https://img1.sycdn.imooc.com/5d0d7a6c0001aa9a09760976-100-100.jpg', '梨不开的桃子', 0, 94);
INSERT INTO `app_api_student` VALUES (90, 'https://img2.sycdn.imooc.com/545850200001359c02200220-100-100.jpg', 'EnchantF', 0, 95);
INSERT INTO `app_api_student` VALUES (91, 'https://img2.sycdn.imooc.com/5bd113ec00019d0003000300-100-100.jpg', '安晓辉', 0, 96);
INSERT INTO `app_api_student` VALUES (92, 'https://www.imooc.com/static/img/index/tuhao.png', 'ml320', 0, 97);
INSERT INTO `app_api_student` VALUES (93, 'https://img3.sycdn.imooc.com/5b60202f000159e305330300-100-100.jpg', '灰灰520', 72, 94);
INSERT INTO `app_api_student` VALUES (94, 'https://img2.sycdn.imooc.com/59f190ea00018f9101000100-100-100.jpg', 'qq_花开花落又是雨季_2', 75, 94);
INSERT INTO `app_api_student` VALUES (95, 'https://img3.sycdn.imooc.com/5d121c7f00014baf02190218-100-100.jpg', '码农故事汇', 7, 96);
INSERT INTO `app_api_student` VALUES (96, 'https://img3.sycdn.imooc.com/5cbbfae10001ce5d14402560-100-100.jpg', 'JavaEdge', 14, 96);
INSERT INTO `app_api_student` VALUES (97, 'https://img2.sycdn.imooc.com/5b7ec6890001625a09700970-100-100.jpg', '橋本奈奈未', 1, 95);
INSERT INTO `app_api_student` VALUES (98, 'https://img3.sycdn.imooc.com/533e4ca50001117901990200-100-100.jpg', 'pardon110', 7, 95);
INSERT INTO `app_api_student` VALUES (99, 'https://img2.sycdn.imooc.com/5d19c00b0001843208000800-100-100.jpg', '爱写bug', 16, 96);
INSERT INTO `app_api_student` VALUES (100, 'https://img3.sycdn.imooc.com/5cc9bb2c00018e8709600960-100-100.jpg', '猪哥66', 18, 96);
INSERT INTO `app_api_student` VALUES (101, 'https://img3.sycdn.imooc.com/5d0c3944000142ec10241024-100-100.jpg', '慕课网官方_运营中心', 7, 96);
INSERT INTO `app_api_student` VALUES (102, 'https://img2.sycdn.imooc.com/5a4ae8860001f12903260326-100-100.jpg', '猪哥66', 75, 94);
INSERT INTO `app_api_student` VALUES (103, 'https://img1.sycdn.imooc.com/5d1eaf680001576f07000722-100-100.jpg', '唐唐师傅', 1, 95);
INSERT INTO `app_api_student` VALUES (104, 'https://img1.sycdn.imooc.com/533e4cf4000151f602000200-100-100.jpg', '柯南一号呀', 72, 94);
INSERT INTO `app_api_student` VALUES (105, 'https://img3.sycdn.imooc.com/545862b90001ab4c02200220-100-100.jpg', '妹妹的姐姐', 78, 94);
INSERT INTO `app_api_student` VALUES (106, 'https://img3.sycdn.imooc.com/5cee919c000182b504400440-100-100.jpg', '李红红', 7, 96);
INSERT INTO `app_api_student` VALUES (107, 'https://img1.sycdn.imooc.com/5c53bb070001ba6804000400-100-100.jpg', '慕猿梦', 75, 94);
INSERT INTO `app_api_student` VALUES (108, 'https://img2.sycdn.imooc.com/545867340001101702200220-100-100.jpg', 'xyr0601', 75, 94);
INSERT INTO `app_api_student` VALUES (109, 'https://img3.sycdn.imooc.com/5b4e66620001dd4703500350-100-100.jpg', '侠客岛的含笑', 9, 96);
INSERT INTO `app_api_student` VALUES (110, 'https://img2.sycdn.imooc.com/5b8cede40001b96c02000198-100-100.jpg', '南山搬瓦工', 1, 95);
COMMIT;

-- ----------------------------
-- Table structure for app_api_studenttype
-- ----------------------------
DROP TABLE IF EXISTS `app_api_studenttype`;
CREATE TABLE `app_api_studenttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `code` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_studenttype
-- ----------------------------
BEGIN;
INSERT INTO `app_api_studenttype` VALUES (94, '风骚课程学霸', 1);
INSERT INTO `app_api_studenttype` VALUES (95, '神秘解疑大神', 2);
INSERT INTO `app_api_studenttype` VALUES (96, '智慧文章王者', 3);
INSERT INTO `app_api_studenttype` VALUES (97, '慕课第一土豪', 4);
COMMIT;

-- ----------------------------
-- Table structure for app_api_syslog
-- ----------------------------
DROP TABLE IF EXISTS `app_api_syslog`;
CREATE TABLE `app_api_syslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` varchar(39) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `action_flag` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `log_type` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `user_name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_syslog
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for app_api_teacher
-- ----------------------------
DROP TABLE IF EXISTS `app_api_teacher`;
CREATE TABLE `app_api_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `job` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `introduction` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=334 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_teacher
-- ----------------------------
BEGIN;
INSERT INTO `app_api_teacher` VALUES (226, '七月', 'https://img1.mukewang.com/54584e2c00010a2c02200220-100-100.jpg', '全栈工程师', '十年研发及团队管理经验，对程序员面临的各种问题深有体会；精通Python、Java、Node.js、JavaScript等语言，对Web的基础研发、高并发处理与分布式有非常深入的理解。课程讲解深入浅出，极为擅长培养学生的编程思维。');
INSERT INTO `app_api_teacher` VALUES (227, 'liuyubobobo', 'https://img1.mukewang.com/5347593e00010cfb01400140-100-100.jpg', '全栈工程师', '创业者，全栈工程师，持续学习者。对技术开发，产品设计、前后端，ios，html5，智能算法等领域均有接触；拥有多款独立App作品；对一切可编程的东西有浓厚兴趣，对游戏编程格外感兴趣。相信编程改变一切。');
INSERT INTO `app_api_teacher` VALUES (228, 'ustbhuangyi', 'https://img2.mukewang.com/577baef700019c4501400140-100-100.jpg', '前端架构师', '北京科技大学毕业，计算机专业硕士。对前端工程化，前后端性能优化有丰富的经验。曾任职百度、滴滴，现担任Zoom前端架构师。慕课网明星讲师，Vue.js 布道者，《Vue.js 技术揭秘》独立作者，《Vue.js 权威指南》主要作者。开源项目 better-scroll 作者，并主导滴滴开源项目 cube-ui，建立团队技术博客。');
INSERT INTO `app_api_teacher` VALUES (229, '慕课官方号', 'https://img.mukewang.com/5b88f1f50001688401500150-100-100.jpg', '页面重构设计', '慕课，Massive（大规模）Open（开放）Online（在线）Course（课程）。专注做好IT技能教育的MOOC，符合互联网发展潮流接地气儿的MOOC。我们有更多免费资源，我们只教有用的，我们专心做教育。');
INSERT INTO `app_api_teacher` VALUES (230, 'Oeasy', 'https://img3.mukewang.com/53855e6f0001034501400140-100-100.jpg', '页面重构设计', '他，授课风趣幽默，激情四射，自称屌丝青年，中国传媒大学计算机教师；他，专注于网页制作、平面设计、多媒体等多个领域的软件以及应用的挖掘与创新，热爱分享，是新鲜热门软件和应用的导航标，他就是众粉丝心中的“Oeasy老湿”');
INSERT INTO `app_api_teacher` VALUES (231, '城南大师兄', 'https://img2.mukewang.com/5cac7e810001fe7705270698-100-100.jpg', 'JAVA开发工程师', '目前主要负责后端架构设计，具有十多年一线开发和架构经验，拥有丰富的高性能、高并发处理以及大型服务器软件设计架构经验。深谙各种源码。工作中常常和千万级高并发的问题“正面硬钢” ，因此在高并发调优等方面积累了丰富的实战经验。十几年的架构经验，让讲师早已将理论和实践锻造的炉火纯青。如果你想学习他密不外传的工作‘渡劫’经验，讲师等你打Call~');
INSERT INTO `app_api_teacher` VALUES (232, 'bobby', 'https://img4.mukewang.com/58d9c48f0001ad0304070270-100-100.jpg', '全栈工程师', 'python全栈工程师，五年工作经验，喜欢钻研python技术，对爬虫、web开发以及机器学习有浓厚的兴趣，关注前沿技术以及发展趋势。');
INSERT INTO `app_api_teacher` VALUES (233, '大目', 'https://img1.mukewang.com/5d142f090804929712361209-100-100.jpg', 'JAVA开发工程师', '阿里技术专家，9年软件系统开发经验，多年系统架构经验。参与开发/架构多个大型项目，Spring Cloud、微服务、持续集成、持续交付、Cloud Native生态均有涉猎。热爱技术交流，代表公司参加全球微服务架构高峰论坛、QCon等技术沙龙。拥抱开源，多个项目开源在Github与Gitee上，也是多个项目的Contributor，为多个开源项目提交PR。');
INSERT INTO `app_api_teacher` VALUES (234, 'hyman', 'https://img.mukewang.com/54169c430001face18403264-100-100.jpg', '移动开发工程师', '同大千攻城狮般无异，本狮有着巨大的火热的不灭的技术热情，痴迷于Android开发。乐于分享，善于将技术生活化，唯愿与大千男女攻城狮共同进步');
INSERT INTO `app_api_teacher` VALUES (235, 'PegasusWang', 'https://img3.mukewang.com/5bfba2490001457005750575-100-100.jpg', 'Python工程师', '从事web开发4年，工作中以 Python 作为主力语言，代码控，实践经验丰富，乐于分享技术知识，知乎专栏作者。');
INSERT INTO `app_api_teacher` VALUES (246, 'Dell', 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg', 'Web前端工程师', 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！');
INSERT INTO `app_api_teacher` VALUES (255, '7七月', 'https://img.mukewang.com/user/54584e2c00010a2c02200220-100-100.jpg', '全栈工程师', '十年研发及团队管理经验，对程序员面临的各种问题深有体会；精通Python、Java、Node.js、JavaScript等语言，对Web的基础研发、高并发处理与分布式有非常深入的理解。课程讲解深入浅出，极为擅长培养学生的编程思维。');
INSERT INTO `app_api_teacher` VALUES (258, '勤一', 'https://img.mukewang.com/user/5c36c432000158e609600960-100-100.jpg', 'Java开发工程师', '高级技术专家，曾就职于微软、腾讯，目前就职于知名电商互联网公司，拥有丰富的大型项目开发经验。多年IT从业经验，一线软件设计、研发，熟悉C、CPP、Java等开发语言，对Web框架、数据存储、架构设计等有深入的理解和实践。');
INSERT INTO `app_api_teacher` VALUES (261, 'CrazyCodeBoy', 'https://img.mukewang.com/user/545847e20001163c02200220-100-100.jpg', '移动端开发工程师', '深耕移动端领域8年有余，全栈技术专家，CSDN 博客专家，擅长Android、iOS、Flutter、React Native以及小程序项目开发，负责过前端、Java、Android、iOS等多平台项目的研发，有多款React Native App上线及管理经验。他享受编程、热爱开源、酷爱分享，平时除了写写博客外，也分享一些开源技术干货 · Github');
INSERT INTO `app_api_teacher` VALUES (263, 'qndroid', 'http://img3.sycdn.imooc.com/5333a0350001692e02200220-160-160.jpg', '移动开发工程师', '多年Android开发经验，曾任职于优酷等一线互联网企业，现就职于快手基础架构部，有丰富的Android应用架构和SDK开发经验，喜欢分享，授课风格循序渐进，擅长培养学生的编程思维，深受学员好评。');
INSERT INTO `app_api_teacher` VALUES (271, '自游蜗牛', 'https://img.mukewang.com/user/5b6949e20001c6bf10801080-100-100.jpg', '区块链底层工程师', '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。');
INSERT INTO `app_api_teacher` VALUES (272, '会写代码的好厨师', 'https://img1.sycdn.imooc.com/user/5b8618950001cd9101440146-100-100.jpg', '资深机器学习工程师', '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。');
INSERT INTO `app_api_teacher` VALUES (282, 'Michael_PK', 'https://img1.sycdn.imooc.com/user/533e4d510001c2ad02000200-100-100.jpg', '资深大数据架构师', '八年互联网公司一线研发经验，担任大数据架构师。主要从事基于Spark/Flink为核心打造的大数据公有云、私有云数据平台产品的研发。改造过Hadoop、Spark等框架的源码为云平台提供更高的执行性能。集群规模过万，有丰富的大数据项目实战经验以及授课经验(授课数千小时，深受学员好评)。');
INSERT INTO `app_api_teacher` VALUES (285, '酷田', 'http://img2.sycdn.imooc.com/5c297bb600013f6d11100834-160-160.jpg', '全栈工程师', '360企业安全集团资深工程师，曾就职于中国移动、亚信科技 ，等知名大型公司，多年工作经验积累，所传授的知识技能可以让你在实际工作中有的放矢，游刃有余。');
INSERT INTO `app_api_teacher` VALUES (289, 'sqlercn', 'http://img3.sycdn.imooc.com/5ad7144100017a5e07410741-160-160.jpg', '数据库工程师', '高级数据库工程师（DBA），从事数据库管理工作多年，曾就职于聚美优品、猫扑、TOM等多家大型互联网公司，进行过千万级的数据处理，对大数据业务、高并发时数据优化积累了大量丰富的经验。');
INSERT INTO `app_api_teacher` VALUES (294, 'Stannum', 'https://img1.sycdn.imooc.com/user/5b558fd00001ca6207410741-100-100.jpg', 'Java/C++敏捷开发专家', '目前在财经界俗称的“大摩”，一家成立于美国纽约的国际金融服务公司-摩根士丹利担任软件工程师和敏捷开发专家。 主攻Event Sourcing架构模式的应用。是一个“只有男同事,没有女同事”的程序媛一枚,先后就职于多家投资银行，负责开发“每一个bug都很贵”的内部交易系统,主导了股票交易执行系统和衍生品交易风险控制系统。');
INSERT INTO `app_api_teacher` VALUES (295, '墨染ART', 'http://img4.sycdn.imooc.com/5b1c1e530001c06c07410719-160-160.jpg', 'UI设计师', '站酷推荐设计师，UI中国推荐设计师。热门UI动效实战系列教程作者，对UI设计、动效设计、多终端响应式设计有深入的研究和经验。');
INSERT INTO `app_api_teacher` VALUES (299, '丶五月的夏天', 'https://img2.mukewang.com/54584f6d0001759002200220-80-80.jpg', 'Web前端工程师', '');
INSERT INTO `app_api_teacher` VALUES (303, 'Jokcy', 'https://img1.sycdn.imooc.com/5a697c950001262b05790578-80-80.jpg', 'Web前端工程师', '');
INSERT INTO `app_api_teacher` VALUES (304, 'lewis', 'https://img.mukewang.com/5c3ea1f10001b55908070807-80-80.jpg', 'Web前端工程师', '');
INSERT INTO `app_api_teacher` VALUES (305, '一缕孤烟', 'https://img4.mukewang.com/54a2bf390001593c01000100-80-80.jpg', 'Web前端工程师', '');
INSERT INTO `app_api_teacher` VALUES (306, '龙猪GG', 'https://img1.mukewang.com/5b8cd6cb000114e702000112-80-80.jpg', '架构师', '');
INSERT INTO `app_api_teacher` VALUES (307, '舞马', 'https://img.mukewang.com/5e3c0b840001796401500124-80-80.jpg', '软件工程师', '');
INSERT INTO `app_api_teacher` VALUES (308, '司马极客', 'https://img4.mukewang.com/5b8cdb710001d95c02000200-80-80.jpg', '软件工程师', '');
INSERT INTO `app_api_teacher` VALUES (309, '风间影月', 'https://img4.mukewang.com/5a0c5df20001a1cb05800580-80-80.jpg', '全栈工程师', '');
INSERT INTO `app_api_teacher` VALUES (311, '夏正东', 'https://img2.mukewang.com/5da6841d0001f79409600960-80-80.jpg', 'Python工程师', '');
INSERT INTO `app_api_teacher` VALUES (312, '伏草惟存', 'https://img3.mukewang.com/545863cd0001b72a02200220-80-80.jpg', '算法工程师', '');
INSERT INTO `app_api_teacher` VALUES (313, '凡諾', 'https://img.mukewang.com/5e57662a00012deb11111109-80-80.jpg', '移动开发工程师', '');
INSERT INTO `app_api_teacher` VALUES (315, 'glumes', 'https://img3.mukewang.com/5462e44b0001421501800180-80-80.jpg', '移动开发工程师', '');
INSERT INTO `app_api_teacher` VALUES (316, '北极小琪', 'https://img4.mukewang.com/5bcd983c0001264203500350-80-80.jpg', '算法工程师', '');
INSERT INTO `app_api_teacher` VALUES (317, 'coding迪斯尼', 'https://img.mukewang.com/57a333b400010f6006400478-80-80.jpg', '全栈工程师', '');
INSERT INTO `app_api_teacher` VALUES (318, '吕小鸣', 'https://img1.mukewang.com/5a6f01bc0001a6f405680495-100-100.jpg', '高级web前端工程师', '');
INSERT INTO `app_api_teacher` VALUES (319, 'BinaryCoding', 'https://img3.mukewang.com/54584dad0001dd7802200220-100-100.jpg', '前端性能优化极客', '');
INSERT INTO `app_api_teacher` VALUES (320, '刘捷Jay', 'https://img1.mukewang.com/5d23fb440001901e11111081-100-100.jpg', '首批微信开发从业者', '');
INSERT INTO `app_api_teacher` VALUES (321, '黄浮云', 'https://img3.mukewang.com/5d5496f200014b7e11001100-100-100.jpg', '资深云计算工程师', '');
INSERT INTO `app_api_teacher` VALUES (322, '江南一点雨', 'https://img4.mukewang.com/533e4d7c0001828702000200-100-100.jpg', '资深Java工程师', '');
INSERT INTO `app_api_teacher` VALUES (323, '马听老师', 'https://img2.mukewang.com/5d30228f00016ccc19201080-100-100.jpg', '一线数据库工程师', '');
INSERT INTO `app_api_teacher` VALUES (324, 'Lisanaaa', 'https://img4.mukewang.com/5d4146160001d2b803500350-100-100.jpg', 'GitHub 开源算法项目万星作者', '');
COMMIT;

-- ----------------------------
-- Table structure for app_api_term
-- ----------------------------
DROP TABLE IF EXISTS `app_api_term`;
CREATE TABLE `app_api_term` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seconds` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `chapter_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_api_term_chapter_id_6224437b` (`chapter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=856 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_term
-- ----------------------------
BEGIN;
INSERT INTO `app_api_term` VALUES (571, 145, '1-1 课程介绍', '', 153);
INSERT INTO `app_api_term` VALUES (572, 558, '2-1 创建第一个Vue实例', '', 154);
INSERT INTO `app_api_term` VALUES (573, 264, '2-2 挂载点，模版与实例', '', 154);
INSERT INTO `app_api_term` VALUES (574, 746, '2-3 Vue实例中的数据,事件和方法', '', 154);
INSERT INTO `app_api_term` VALUES (575, 518, '2-4 Vue中的属性绑定和双向数据绑定', '', 154);
INSERT INTO `app_api_term` VALUES (576, 540, '2-5 Vue中的计算属性和侦听器', '', 154);
INSERT INTO `app_api_term` VALUES (577, 541, '2-6 v-if, v-show与v-for指令', '', 154);
INSERT INTO `app_api_term` VALUES (578, 410, '3-1 todolist功能开发', '', 155);
INSERT INTO `app_api_term` VALUES (579, 669, '3-2 todolist组件拆分', '', 155);
INSERT INTO `app_api_term` VALUES (580, 303, '3-3 组件与实例的关系', '', 155);
INSERT INTO `app_api_term` VALUES (581, 691, '3-4 实现todolist的删除功能', '', 155);
INSERT INTO `app_api_term` VALUES (582, 999, '4-1 vue-cli的简介与使用', '', 156);
INSERT INTO `app_api_term` VALUES (583, 1044, '4-2 使用vue-cli开发TodoList', '', 156);
INSERT INTO `app_api_term` VALUES (584, 258, '4-3 全局样式与局部样式', '', 156);
INSERT INTO `app_api_term` VALUES (585, 244, '4-4 课程总结', '', 156);
INSERT INTO `app_api_term` VALUES (586, 145, '1-1 课程介绍', '', 157);
INSERT INTO `app_api_term` VALUES (587, 558, '2-1 创建第一个Vue实例', '', 158);
INSERT INTO `app_api_term` VALUES (588, 264, '2-2 挂载点，模版与实例', '', 158);
INSERT INTO `app_api_term` VALUES (589, 746, '2-3 Vue实例中的数据,事件和方法', '', 158);
INSERT INTO `app_api_term` VALUES (590, 518, '2-4 Vue中的属性绑定和双向数据绑定', '', 158);
INSERT INTO `app_api_term` VALUES (591, 540, '2-5 Vue中的计算属性和侦听器', '', 158);
INSERT INTO `app_api_term` VALUES (592, 541, '2-6 v-if, v-show与v-for指令', '', 158);
INSERT INTO `app_api_term` VALUES (593, 410, '3-1 todolist功能开发', '', 159);
INSERT INTO `app_api_term` VALUES (594, 669, '3-2 todolist组件拆分', '', 159);
INSERT INTO `app_api_term` VALUES (595, 303, '3-3 组件与实例的关系', '', 159);
INSERT INTO `app_api_term` VALUES (596, 691, '3-4 实现todolist的删除功能', '', 159);
INSERT INTO `app_api_term` VALUES (597, 999, '4-1 vue-cli的简介与使用', '', 160);
INSERT INTO `app_api_term` VALUES (598, 1044, '4-2 使用vue-cli开发TodoList', '', 160);
INSERT INTO `app_api_term` VALUES (599, 258, '4-3 全局样式与局部样式', '', 160);
INSERT INTO `app_api_term` VALUES (600, 244, '4-4 课程总结', '', 160);
INSERT INTO `app_api_term` VALUES (601, 145, '1-1 课程介绍', '', 161);
INSERT INTO `app_api_term` VALUES (602, 558, '2-1 创建第一个Vue实例', '', 162);
INSERT INTO `app_api_term` VALUES (603, 264, '2-2 挂载点，模版与实例', '', 162);
INSERT INTO `app_api_term` VALUES (604, 746, '2-3 Vue实例中的数据,事件和方法', '', 162);
INSERT INTO `app_api_term` VALUES (605, 518, '2-4 Vue中的属性绑定和双向数据绑定', '', 162);
INSERT INTO `app_api_term` VALUES (606, 540, '2-5 Vue中的计算属性和侦听器', '', 162);
INSERT INTO `app_api_term` VALUES (607, 541, '2-6 v-if, v-show与v-for指令', '', 162);
INSERT INTO `app_api_term` VALUES (608, 410, '3-1 todolist功能开发', '', 163);
INSERT INTO `app_api_term` VALUES (609, 669, '3-2 todolist组件拆分', '', 163);
INSERT INTO `app_api_term` VALUES (610, 303, '3-3 组件与实例的关系', '', 163);
INSERT INTO `app_api_term` VALUES (611, 691, '3-4 实现todolist的删除功能', '', 163);
INSERT INTO `app_api_term` VALUES (612, 999, '4-1 vue-cli的简介与使用', '', 164);
INSERT INTO `app_api_term` VALUES (613, 1044, '4-2 使用vue-cli开发TodoList', '', 164);
INSERT INTO `app_api_term` VALUES (614, 258, '4-3 全局样式与局部样式', '', 164);
INSERT INTO `app_api_term` VALUES (615, 244, '4-4 课程总结', '', 164);
INSERT INTO `app_api_term` VALUES (616, 145, '1-1 课程介绍', '', 165);
INSERT INTO `app_api_term` VALUES (617, 558, '2-1 创建第一个Vue实例', '', 166);
INSERT INTO `app_api_term` VALUES (618, 264, '2-2 挂载点，模版与实例', '', 166);
INSERT INTO `app_api_term` VALUES (619, 746, '2-3 Vue实例中的数据,事件和方法', '', 166);
INSERT INTO `app_api_term` VALUES (620, 518, '2-4 Vue中的属性绑定和双向数据绑定', '', 166);
INSERT INTO `app_api_term` VALUES (621, 540, '2-5 Vue中的计算属性和侦听器', '', 166);
INSERT INTO `app_api_term` VALUES (622, 541, '2-6 v-if, v-show与v-for指令', '', 166);
INSERT INTO `app_api_term` VALUES (623, 410, '3-1 todolist功能开发', '', 167);
INSERT INTO `app_api_term` VALUES (624, 669, '3-2 todolist组件拆分', '', 167);
INSERT INTO `app_api_term` VALUES (625, 303, '3-3 组件与实例的关系', '', 167);
INSERT INTO `app_api_term` VALUES (626, 691, '3-4 实现todolist的删除功能', '', 167);
INSERT INTO `app_api_term` VALUES (627, 999, '4-1 vue-cli的简介与使用', '', 168);
INSERT INTO `app_api_term` VALUES (628, 1044, '4-2 使用vue-cli开发TodoList', '', 168);
INSERT INTO `app_api_term` VALUES (629, 258, '4-3 全局样式与局部样式', '', 168);
INSERT INTO `app_api_term` VALUES (630, 244, '4-4 课程总结', '', 168);
INSERT INTO `app_api_term` VALUES (631, 145, '1-1 课程介绍', '', 169);
INSERT INTO `app_api_term` VALUES (632, 558, '2-1 创建第一个Vue实例', '', 170);
INSERT INTO `app_api_term` VALUES (633, 264, '2-2 挂载点，模版与实例', '', 170);
INSERT INTO `app_api_term` VALUES (634, 746, '2-3 Vue实例中的数据,事件和方法', '', 170);
INSERT INTO `app_api_term` VALUES (635, 518, '2-4 Vue中的属性绑定和双向数据绑定', '', 170);
INSERT INTO `app_api_term` VALUES (636, 540, '2-5 Vue中的计算属性和侦听器', '', 170);
INSERT INTO `app_api_term` VALUES (637, 541, '2-6 v-if, v-show与v-for指令', '', 170);
INSERT INTO `app_api_term` VALUES (638, 410, '3-1 todolist功能开发', '', 171);
INSERT INTO `app_api_term` VALUES (639, 669, '3-2 todolist组件拆分', '', 171);
INSERT INTO `app_api_term` VALUES (640, 303, '3-3 组件与实例的关系', '', 171);
INSERT INTO `app_api_term` VALUES (641, 691, '3-4 实现todolist的删除功能', '', 171);
INSERT INTO `app_api_term` VALUES (642, 999, '4-1 vue-cli的简介与使用', '', 172);
INSERT INTO `app_api_term` VALUES (643, 1044, '4-2 使用vue-cli开发TodoList', '', 172);
INSERT INTO `app_api_term` VALUES (644, 258, '4-3 全局样式与局部样式', '', 172);
INSERT INTO `app_api_term` VALUES (645, 244, '4-4 课程总结', '', 172);
INSERT INTO `app_api_term` VALUES (646, 145, '1-1 课程介绍', '', 173);
INSERT INTO `app_api_term` VALUES (647, 558, '2-1 创建第一个Vue实例', '', 174);
INSERT INTO `app_api_term` VALUES (648, 264, '2-2 挂载点，模版与实例', '', 174);
INSERT INTO `app_api_term` VALUES (649, 746, '2-3 Vue实例中的数据,事件和方法', '', 174);
INSERT INTO `app_api_term` VALUES (650, 518, '2-4 Vue中的属性绑定和双向数据绑定', '', 174);
INSERT INTO `app_api_term` VALUES (651, 540, '2-5 Vue中的计算属性和侦听器', '', 174);
INSERT INTO `app_api_term` VALUES (652, 541, '2-6 v-if, v-show与v-for指令', '', 174);
INSERT INTO `app_api_term` VALUES (653, 410, '3-1 todolist功能开发', '', 175);
INSERT INTO `app_api_term` VALUES (654, 669, '3-2 todolist组件拆分', '', 175);
INSERT INTO `app_api_term` VALUES (655, 303, '3-3 组件与实例的关系', '', 175);
INSERT INTO `app_api_term` VALUES (656, 691, '3-4 实现todolist的删除功能', '', 175);
INSERT INTO `app_api_term` VALUES (657, 999, '4-1 vue-cli的简介与使用', '', 176);
INSERT INTO `app_api_term` VALUES (658, 1044, '4-2 使用vue-cli开发TodoList', '', 176);
INSERT INTO `app_api_term` VALUES (659, 258, '4-3 全局样式与局部样式', '', 176);
INSERT INTO `app_api_term` VALUES (660, 244, '4-4 课程总结', '', 176);
INSERT INTO `app_api_term` VALUES (661, 145, '1-1 课程介绍', '', 177);
INSERT INTO `app_api_term` VALUES (662, 558, '2-1 创建第一个Vue实例', '', 178);
INSERT INTO `app_api_term` VALUES (663, 264, '2-2 挂载点，模版与实例', '', 178);
INSERT INTO `app_api_term` VALUES (664, 746, '2-3 Vue实例中的数据,事件和方法', '', 178);
INSERT INTO `app_api_term` VALUES (665, 518, '2-4 Vue中的属性绑定和双向数据绑定', '', 178);
INSERT INTO `app_api_term` VALUES (666, 540, '2-5 Vue中的计算属性和侦听器', '', 178);
INSERT INTO `app_api_term` VALUES (667, 541, '2-6 v-if, v-show与v-for指令', '', 178);
INSERT INTO `app_api_term` VALUES (668, 410, '3-1 todolist功能开发', '', 179);
INSERT INTO `app_api_term` VALUES (669, 669, '3-2 todolist组件拆分', '', 179);
INSERT INTO `app_api_term` VALUES (670, 303, '3-3 组件与实例的关系', '', 179);
INSERT INTO `app_api_term` VALUES (671, 691, '3-4 实现todolist的删除功能', '', 179);
INSERT INTO `app_api_term` VALUES (672, 999, '4-1 vue-cli的简介与使用', '', 180);
INSERT INTO `app_api_term` VALUES (673, 1044, '4-2 使用vue-cli开发TodoList', '', 180);
INSERT INTO `app_api_term` VALUES (674, 258, '4-3 全局样式与局部样式', '', 180);
INSERT INTO `app_api_term` VALUES (675, 244, '4-4 课程总结', '', 180);
INSERT INTO `app_api_term` VALUES (676, 145, '1-1 课程介绍', '', 181);
INSERT INTO `app_api_term` VALUES (677, 558, '2-1 创建第一个Vue实例', '', 182);
INSERT INTO `app_api_term` VALUES (678, 264, '2-2 挂载点，模版与实例', '', 182);
INSERT INTO `app_api_term` VALUES (679, 746, '2-3 Vue实例中的数据,事件和方法', '', 182);
INSERT INTO `app_api_term` VALUES (680, 518, '2-4 Vue中的属性绑定和双向数据绑定', '', 182);
INSERT INTO `app_api_term` VALUES (681, 540, '2-5 Vue中的计算属性和侦听器', '', 182);
INSERT INTO `app_api_term` VALUES (682, 541, '2-6 v-if, v-show与v-for指令', '', 182);
INSERT INTO `app_api_term` VALUES (683, 410, '3-1 todolist功能开发', '', 183);
INSERT INTO `app_api_term` VALUES (684, 669, '3-2 todolist组件拆分', '', 183);
INSERT INTO `app_api_term` VALUES (685, 303, '3-3 组件与实例的关系', '', 183);
INSERT INTO `app_api_term` VALUES (686, 691, '3-4 实现todolist的删除功能', '', 183);
INSERT INTO `app_api_term` VALUES (687, 999, '4-1 vue-cli的简介与使用', '', 184);
INSERT INTO `app_api_term` VALUES (688, 1044, '4-2 使用vue-cli开发TodoList', '', 184);
INSERT INTO `app_api_term` VALUES (689, 258, '4-3 全局样式与局部样式', '', 184);
INSERT INTO `app_api_term` VALUES (690, 244, '4-4 课程总结', '', 184);
INSERT INTO `app_api_term` VALUES (691, 145, '1-1 课程介绍', '', 185);
INSERT INTO `app_api_term` VALUES (692, 558, '2-1 创建第一个Vue实例', '', 186);
INSERT INTO `app_api_term` VALUES (693, 264, '2-2 挂载点，模版与实例', '', 186);
INSERT INTO `app_api_term` VALUES (694, 746, '2-3 Vue实例中的数据,事件和方法', '', 186);
INSERT INTO `app_api_term` VALUES (695, 518, '2-4 Vue中的属性绑定和双向数据绑定', '', 186);
INSERT INTO `app_api_term` VALUES (696, 540, '2-5 Vue中的计算属性和侦听器', '', 186);
INSERT INTO `app_api_term` VALUES (697, 541, '2-6 v-if, v-show与v-for指令', '', 186);
INSERT INTO `app_api_term` VALUES (698, 410, '3-1 todolist功能开发', '', 187);
INSERT INTO `app_api_term` VALUES (699, 669, '3-2 todolist组件拆分', '', 187);
INSERT INTO `app_api_term` VALUES (700, 303, '3-3 组件与实例的关系', '', 187);
INSERT INTO `app_api_term` VALUES (701, 691, '3-4 实现todolist的删除功能', '', 187);
INSERT INTO `app_api_term` VALUES (702, 999, '4-1 vue-cli的简介与使用', '', 188);
INSERT INTO `app_api_term` VALUES (703, 1044, '4-2 使用vue-cli开发TodoList', '', 188);
INSERT INTO `app_api_term` VALUES (704, 258, '4-3 全局样式与局部样式', '', 188);
INSERT INTO `app_api_term` VALUES (705, 244, '4-4 课程总结', '', 188);
INSERT INTO `app_api_term` VALUES (706, 145, '1-1 课程介绍', '', 189);
INSERT INTO `app_api_term` VALUES (707, 558, '2-1 创建第一个Vue实例', '', 190);
INSERT INTO `app_api_term` VALUES (708, 264, '2-2 挂载点，模版与实例', '', 190);
INSERT INTO `app_api_term` VALUES (709, 746, '2-3 Vue实例中的数据,事件和方法', '', 190);
INSERT INTO `app_api_term` VALUES (710, 518, '2-4 Vue中的属性绑定和双向数据绑定', '', 190);
INSERT INTO `app_api_term` VALUES (711, 540, '2-5 Vue中的计算属性和侦听器', '', 190);
INSERT INTO `app_api_term` VALUES (712, 541, '2-6 v-if, v-show与v-for指令', '', 190);
INSERT INTO `app_api_term` VALUES (713, 410, '3-1 todolist功能开发', '', 191);
INSERT INTO `app_api_term` VALUES (714, 669, '3-2 todolist组件拆分', '', 191);
INSERT INTO `app_api_term` VALUES (715, 303, '3-3 组件与实例的关系', '', 191);
INSERT INTO `app_api_term` VALUES (716, 691, '3-4 实现todolist的删除功能', '', 191);
INSERT INTO `app_api_term` VALUES (717, 999, '4-1 vue-cli的简介与使用', '', 192);
INSERT INTO `app_api_term` VALUES (718, 1044, '4-2 使用vue-cli开发TodoList', '', 192);
INSERT INTO `app_api_term` VALUES (719, 258, '4-3 全局样式与局部样式', '', 192);
INSERT INTO `app_api_term` VALUES (720, 244, '4-4 课程总结', '', 192);
INSERT INTO `app_api_term` VALUES (721, 145, '1-1 课程介绍', '', 193);
INSERT INTO `app_api_term` VALUES (722, 558, '2-1 创建第一个Vue实例', '', 194);
INSERT INTO `app_api_term` VALUES (723, 264, '2-2 挂载点，模版与实例', '', 194);
INSERT INTO `app_api_term` VALUES (724, 746, '2-3 Vue实例中的数据,事件和方法', '', 194);
INSERT INTO `app_api_term` VALUES (725, 518, '2-4 Vue中的属性绑定和双向数据绑定', '', 194);
INSERT INTO `app_api_term` VALUES (726, 540, '2-5 Vue中的计算属性和侦听器', '', 194);
INSERT INTO `app_api_term` VALUES (727, 541, '2-6 v-if, v-show与v-for指令', '', 194);
INSERT INTO `app_api_term` VALUES (728, 410, '3-1 todolist功能开发', '', 195);
INSERT INTO `app_api_term` VALUES (729, 669, '3-2 todolist组件拆分', '', 195);
INSERT INTO `app_api_term` VALUES (730, 303, '3-3 组件与实例的关系', '', 195);
INSERT INTO `app_api_term` VALUES (731, 691, '3-4 实现todolist的删除功能', '', 195);
INSERT INTO `app_api_term` VALUES (732, 999, '4-1 vue-cli的简介与使用', '', 196);
INSERT INTO `app_api_term` VALUES (733, 1044, '4-2 使用vue-cli开发TodoList', '', 196);
INSERT INTO `app_api_term` VALUES (734, 258, '4-3 全局样式与局部样式', '', 196);
INSERT INTO `app_api_term` VALUES (735, 244, '4-4 课程总结', '', 196);
INSERT INTO `app_api_term` VALUES (736, 145, '1-1 课程介绍', '', 197);
INSERT INTO `app_api_term` VALUES (737, 558, '2-1 创建第一个Vue实例', '', 198);
INSERT INTO `app_api_term` VALUES (738, 264, '2-2 挂载点，模版与实例', '', 198);
INSERT INTO `app_api_term` VALUES (739, 746, '2-3 Vue实例中的数据,事件和方法', '', 198);
INSERT INTO `app_api_term` VALUES (740, 518, '2-4 Vue中的属性绑定和双向数据绑定', '', 198);
INSERT INTO `app_api_term` VALUES (741, 540, '2-5 Vue中的计算属性和侦听器', '', 198);
INSERT INTO `app_api_term` VALUES (742, 541, '2-6 v-if, v-show与v-for指令', '', 198);
INSERT INTO `app_api_term` VALUES (743, 410, '3-1 todolist功能开发', '', 199);
INSERT INTO `app_api_term` VALUES (744, 669, '3-2 todolist组件拆分', '', 199);
INSERT INTO `app_api_term` VALUES (745, 303, '3-3 组件与实例的关系', '', 199);
INSERT INTO `app_api_term` VALUES (746, 691, '3-4 实现todolist的删除功能', '', 199);
INSERT INTO `app_api_term` VALUES (747, 999, '4-1 vue-cli的简介与使用', '', 200);
INSERT INTO `app_api_term` VALUES (748, 1044, '4-2 使用vue-cli开发TodoList', '', 200);
INSERT INTO `app_api_term` VALUES (749, 258, '4-3 全局样式与局部样式', '', 200);
INSERT INTO `app_api_term` VALUES (750, 244, '4-4 课程总结', '', 200);
INSERT INTO `app_api_term` VALUES (751, 145, '1-1 课程介绍', '', 201);
INSERT INTO `app_api_term` VALUES (752, 558, '2-1 创建第一个Vue实例', '', 202);
INSERT INTO `app_api_term` VALUES (753, 264, '2-2 挂载点，模版与实例', '', 202);
INSERT INTO `app_api_term` VALUES (754, 746, '2-3 Vue实例中的数据,事件和方法', '', 202);
INSERT INTO `app_api_term` VALUES (755, 518, '2-4 Vue中的属性绑定和双向数据绑定', '', 202);
INSERT INTO `app_api_term` VALUES (756, 540, '2-5 Vue中的计算属性和侦听器', '', 202);
INSERT INTO `app_api_term` VALUES (757, 541, '2-6 v-if, v-show与v-for指令', '', 202);
INSERT INTO `app_api_term` VALUES (758, 410, '3-1 todolist功能开发', '', 203);
INSERT INTO `app_api_term` VALUES (759, 669, '3-2 todolist组件拆分', '', 203);
INSERT INTO `app_api_term` VALUES (760, 303, '3-3 组件与实例的关系', '', 203);
INSERT INTO `app_api_term` VALUES (761, 691, '3-4 实现todolist的删除功能', '', 203);
INSERT INTO `app_api_term` VALUES (762, 999, '4-1 vue-cli的简介与使用', '', 204);
INSERT INTO `app_api_term` VALUES (763, 1044, '4-2 使用vue-cli开发TodoList', '', 204);
INSERT INTO `app_api_term` VALUES (764, 258, '4-3 全局样式与局部样式', '', 204);
INSERT INTO `app_api_term` VALUES (765, 244, '4-4 课程总结', '', 204);
INSERT INTO `app_api_term` VALUES (766, 145, '1-1 课程介绍', '', 205);
INSERT INTO `app_api_term` VALUES (767, 558, '2-1 创建第一个Vue实例', '', 206);
INSERT INTO `app_api_term` VALUES (768, 264, '2-2 挂载点，模版与实例', '', 206);
INSERT INTO `app_api_term` VALUES (769, 746, '2-3 Vue实例中的数据,事件和方法', '', 206);
INSERT INTO `app_api_term` VALUES (770, 518, '2-4 Vue中的属性绑定和双向数据绑定', '', 206);
INSERT INTO `app_api_term` VALUES (771, 540, '2-5 Vue中的计算属性和侦听器', '', 206);
INSERT INTO `app_api_term` VALUES (772, 541, '2-6 v-if, v-show与v-for指令', '', 206);
INSERT INTO `app_api_term` VALUES (773, 410, '3-1 todolist功能开发', '', 207);
INSERT INTO `app_api_term` VALUES (774, 669, '3-2 todolist组件拆分', '', 207);
INSERT INTO `app_api_term` VALUES (775, 303, '3-3 组件与实例的关系', '', 207);
INSERT INTO `app_api_term` VALUES (776, 691, '3-4 实现todolist的删除功能', '', 207);
INSERT INTO `app_api_term` VALUES (777, 999, '4-1 vue-cli的简介与使用', '', 208);
INSERT INTO `app_api_term` VALUES (778, 1044, '4-2 使用vue-cli开发TodoList', '', 208);
INSERT INTO `app_api_term` VALUES (779, 258, '4-3 全局样式与局部样式', '', 208);
INSERT INTO `app_api_term` VALUES (780, 244, '4-4 课程总结', '', 208);
INSERT INTO `app_api_term` VALUES (781, 145, '1-1 课程介绍', '', 209);
INSERT INTO `app_api_term` VALUES (782, 558, '2-1 创建第一个Vue实例', '', 210);
INSERT INTO `app_api_term` VALUES (783, 264, '2-2 挂载点，模版与实例', '', 210);
INSERT INTO `app_api_term` VALUES (784, 746, '2-3 Vue实例中的数据,事件和方法', '', 210);
INSERT INTO `app_api_term` VALUES (785, 518, '2-4 Vue中的属性绑定和双向数据绑定', '', 210);
INSERT INTO `app_api_term` VALUES (786, 540, '2-5 Vue中的计算属性和侦听器', '', 210);
INSERT INTO `app_api_term` VALUES (787, 541, '2-6 v-if, v-show与v-for指令', '', 210);
INSERT INTO `app_api_term` VALUES (788, 410, '3-1 todolist功能开发', '', 211);
INSERT INTO `app_api_term` VALUES (789, 669, '3-2 todolist组件拆分', '', 211);
INSERT INTO `app_api_term` VALUES (790, 303, '3-3 组件与实例的关系', '', 211);
INSERT INTO `app_api_term` VALUES (791, 691, '3-4 实现todolist的删除功能', '', 211);
INSERT INTO `app_api_term` VALUES (792, 999, '4-1 vue-cli的简介与使用', '', 212);
INSERT INTO `app_api_term` VALUES (793, 1044, '4-2 使用vue-cli开发TodoList', '', 212);
INSERT INTO `app_api_term` VALUES (794, 258, '4-3 全局样式与局部样式', '', 212);
INSERT INTO `app_api_term` VALUES (795, 244, '4-4 课程总结', '', 212);
INSERT INTO `app_api_term` VALUES (796, 145, '1-1 课程介绍', '', 213);
INSERT INTO `app_api_term` VALUES (797, 558, '2-1 创建第一个Vue实例', '', 214);
INSERT INTO `app_api_term` VALUES (798, 264, '2-2 挂载点，模版与实例', '', 214);
INSERT INTO `app_api_term` VALUES (799, 746, '2-3 Vue实例中的数据,事件和方法', '', 214);
INSERT INTO `app_api_term` VALUES (800, 518, '2-4 Vue中的属性绑定和双向数据绑定', '', 214);
INSERT INTO `app_api_term` VALUES (801, 540, '2-5 Vue中的计算属性和侦听器', '', 214);
INSERT INTO `app_api_term` VALUES (802, 541, '2-6 v-if, v-show与v-for指令', '', 214);
INSERT INTO `app_api_term` VALUES (803, 410, '3-1 todolist功能开发', '', 215);
INSERT INTO `app_api_term` VALUES (804, 669, '3-2 todolist组件拆分', '', 215);
INSERT INTO `app_api_term` VALUES (805, 303, '3-3 组件与实例的关系', '', 215);
INSERT INTO `app_api_term` VALUES (806, 691, '3-4 实现todolist的删除功能', '', 215);
INSERT INTO `app_api_term` VALUES (807, 999, '4-1 vue-cli的简介与使用', '', 216);
INSERT INTO `app_api_term` VALUES (808, 1044, '4-2 使用vue-cli开发TodoList', '', 216);
INSERT INTO `app_api_term` VALUES (809, 258, '4-3 全局样式与局部样式', '', 216);
INSERT INTO `app_api_term` VALUES (810, 244, '4-4 课程总结', '', 216);
INSERT INTO `app_api_term` VALUES (811, 145, '1-1 课程介绍', '', 217);
INSERT INTO `app_api_term` VALUES (812, 558, '2-1 创建第一个Vue实例', '', 218);
INSERT INTO `app_api_term` VALUES (813, 264, '2-2 挂载点，模版与实例', '', 218);
INSERT INTO `app_api_term` VALUES (814, 746, '2-3 Vue实例中的数据,事件和方法', '', 218);
INSERT INTO `app_api_term` VALUES (815, 518, '2-4 Vue中的属性绑定和双向数据绑定', '', 218);
INSERT INTO `app_api_term` VALUES (816, 540, '2-5 Vue中的计算属性和侦听器', '', 218);
INSERT INTO `app_api_term` VALUES (817, 541, '2-6 v-if, v-show与v-for指令', '', 218);
INSERT INTO `app_api_term` VALUES (818, 410, '3-1 todolist功能开发', '', 219);
INSERT INTO `app_api_term` VALUES (819, 669, '3-2 todolist组件拆分', '', 219);
INSERT INTO `app_api_term` VALUES (820, 303, '3-3 组件与实例的关系', '', 219);
INSERT INTO `app_api_term` VALUES (821, 691, '3-4 实现todolist的删除功能', '', 219);
INSERT INTO `app_api_term` VALUES (822, 999, '4-1 vue-cli的简介与使用', '', 220);
INSERT INTO `app_api_term` VALUES (823, 1044, '4-2 使用vue-cli开发TodoList', '', 220);
INSERT INTO `app_api_term` VALUES (824, 258, '4-3 全局样式与局部样式', '', 220);
INSERT INTO `app_api_term` VALUES (825, 244, '4-4 课程总结', '', 220);
INSERT INTO `app_api_term` VALUES (826, 145, '1-1 课程介绍', '', 221);
INSERT INTO `app_api_term` VALUES (827, 558, '2-1 创建第一个Vue实例', '', 222);
INSERT INTO `app_api_term` VALUES (828, 264, '2-2 挂载点，模版与实例', '', 222);
INSERT INTO `app_api_term` VALUES (829, 746, '2-3 Vue实例中的数据,事件和方法', '', 222);
INSERT INTO `app_api_term` VALUES (830, 518, '2-4 Vue中的属性绑定和双向数据绑定', '', 222);
INSERT INTO `app_api_term` VALUES (831, 540, '2-5 Vue中的计算属性和侦听器', '', 222);
INSERT INTO `app_api_term` VALUES (832, 541, '2-6 v-if, v-show与v-for指令', '', 222);
INSERT INTO `app_api_term` VALUES (833, 410, '3-1 todolist功能开发', '', 223);
INSERT INTO `app_api_term` VALUES (834, 669, '3-2 todolist组件拆分', '', 223);
INSERT INTO `app_api_term` VALUES (835, 303, '3-3 组件与实例的关系', '', 223);
INSERT INTO `app_api_term` VALUES (836, 691, '3-4 实现todolist的删除功能', '', 223);
INSERT INTO `app_api_term` VALUES (837, 999, '4-1 vue-cli的简介与使用', '', 224);
INSERT INTO `app_api_term` VALUES (838, 1044, '4-2 使用vue-cli开发TodoList', '', 224);
INSERT INTO `app_api_term` VALUES (839, 258, '4-3 全局样式与局部样式', '', 224);
INSERT INTO `app_api_term` VALUES (840, 244, '4-4 课程总结', '', 224);
INSERT INTO `app_api_term` VALUES (841, 145, '1-1 课程介绍', '', 225);
INSERT INTO `app_api_term` VALUES (842, 558, '2-1 创建第一个Vue实例', '', 226);
INSERT INTO `app_api_term` VALUES (843, 264, '2-2 挂载点，模版与实例', '', 226);
INSERT INTO `app_api_term` VALUES (844, 746, '2-3 Vue实例中的数据,事件和方法', '', 226);
INSERT INTO `app_api_term` VALUES (845, 518, '2-4 Vue中的属性绑定和双向数据绑定', '', 226);
INSERT INTO `app_api_term` VALUES (846, 540, '2-5 Vue中的计算属性和侦听器', '', 226);
INSERT INTO `app_api_term` VALUES (847, 541, '2-6 v-if, v-show与v-for指令', '', 226);
INSERT INTO `app_api_term` VALUES (848, 410, '3-1 todolist功能开发', '', 227);
INSERT INTO `app_api_term` VALUES (849, 669, '3-2 todolist组件拆分', '', 227);
INSERT INTO `app_api_term` VALUES (850, 303, '3-3 组件与实例的关系', '', 227);
INSERT INTO `app_api_term` VALUES (851, 691, '3-4 实现todolist的删除功能', '', 227);
INSERT INTO `app_api_term` VALUES (852, 999, '4-1 vue-cli的简介与使用', '', 228);
INSERT INTO `app_api_term` VALUES (853, 1044, '4-2 使用vue-cli开发TodoList', '', 228);
INSERT INTO `app_api_term` VALUES (854, 258, '4-3 全局样式与局部样式', '', 228);
INSERT INTO `app_api_term` VALUES (855, 244, '4-4 课程总结', '', 228);
COMMIT;

-- ----------------------------
-- Table structure for app_api_user
-- ----------------------------
DROP TABLE IF EXISTS `app_api_user`;
CREATE TABLE `app_api_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sex` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `job` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `signature` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `hour` int(11) NOT NULL,
  `exp` int(11) NOT NULL,
  `integral` int(11) NOT NULL,
  `follow` int(11) NOT NULL,
  `fans` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `qq` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `wechat` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `weibo` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_user
-- ----------------------------
BEGIN;
INSERT INTO `app_api_user` VALUES (2, '2020-10-07 20:21:18.292240', 0, '', '', 0, 1, '2020-10-07 01:42:49.143508', 'mtianyan', 'pbkdf2_sha256$216000$LukuhZQAgMio$Q9xnmFxBYrrfYljf99qCnQ7RfBxJFMWQRSC2S3Iy0yU=', '天涯明月笙', 'https://img3.sycdn.imooc.com/5a5d1f3a0001cab806380638-140-140.jpg', 'male', 'Python工程师', '四川省成都市', 'funpython(qq付费群): 211599322', 887, 28439, 6, 27, 2721, '1147727180@qq.com', '1147727180', '173xxxx1458', 'wechat', 'weibo', '2020-10-07 01:42:49.143884');
INSERT INTO `app_api_user` VALUES (3, NULL, 0, '', '', 0, 1, '2020-10-07 19:46:20.552910', '1147727180@qq.com', 'pbkdf2_sha256$216000$GXkUjq64Q0rK$39lbd6XvJ0dkoYSP0v6Og/0ti6v6o/o1vQgTMGw9J+M=', '', 'https://img3.sycdn.imooc.com/5a5d1f3a0001cab806380638-140-140.jpg', 'male', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '2020-10-07 19:46:20.566677');
INSERT INTO `app_api_user` VALUES (4, '2020-10-07 21:21:16.997426', 0, '', '', 0, 1, '2020-10-07 20:20:57.752511', '447742468@qq.com', 'pbkdf2_sha256$216000$uhMtGSKc9r0i$VBhrqiM7JqxcMrYbvrrFRKO0irLfeH71TcWqDjS1E+w=', '1', 'https://img3.sycdn.imooc.com/5a5d1f3a0001cab806380638-140-140.jpg', 'male', '我', '我', '我', 0, 0, 0, 0, 0, '1147727180@qq.com', '1147727180', '1147727180', '1147727180', '', '2020-10-07 20:46:32.444410');
COMMIT;

-- ----------------------------
-- Table structure for app_api_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `app_api_user_groups`;
CREATE TABLE `app_api_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_api_user_groups_user_id_group_id_52951211_uniq` (`user_id`,`group_id`),
  KEY `app_api_user_groups_group_id_2284c97f_fk_auth_group_id` (`group_id`),
  CONSTRAINT `app_api_user_groups_group_id_2284c97f_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `app_api_user_groups_user_id_7897c141_fk_app_api_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_api_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_user_groups
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for app_api_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `app_api_user_user_permissions`;
CREATE TABLE `app_api_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_api_user_user_permis_user_id_permission_id_ae7de441_uniq` (`user_id`,`permission_id`),
  KEY `app_api_user_user_pe_permission_id_2b1f98fa_fk_auth_perm` (`permission_id`),
  CONSTRAINT `app_api_user_user_pe_permission_id_2b1f98fa_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `app_api_user_user_pe_user_id_c137b0fb_fk_app_api_u` FOREIGN KEY (`user_id`) REFERENCES `app_api_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_user_user_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for app_api_userlesson
-- ----------------------------
DROP TABLE IF EXISTS `app_api_userlesson`;
CREATE TABLE `app_api_userlesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `lessonid` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `percent` int(11) NOT NULL,
  `isFollow` tinyint(1) NOT NULL,
  `exp` int(11) NOT NULL,
  `hours` int(11) NOT NULL,
  `notes` int(11) NOT NULL,
  `codes` int(11) NOT NULL,
  `questions` int(11) NOT NULL,
  `lastChapter` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_api_userlesson_type_id_3cbce00c` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_userlesson
-- ----------------------------
BEGIN;
INSERT INTO `app_api_userlesson` VALUES (1, '1', '145', 'TypeScript  系统入门到项目实战 趁早学习提高职场竞争力', 'https://img.mukewang.com/szimg/5e1d990f0885d97306000338-360-202.jpg', 0, 0, 0, 0, 0, 0, 0, '', 145);
INSERT INTO `app_api_userlesson` VALUES (2, '1', '146', '前端要学的测试课 从Jest入门到 TDD/BDD双实战', 'https://img.mukewang.com/szimg/5d36a6000837a91d06000338-360-202.jpg', 0, 0, 0, 0, 0, 0, 0, '', 145);
INSERT INTO `app_api_userlesson` VALUES (3, '1', '145', 'TypeScript  系统入门到项目实战 趁早学习提高职场竞争力', 'https://img.mukewang.com/szimg/5e1d990f0885d97306000338-360-202.jpg', 0, 0, 0, 0, 0, 0, 0, '', 145);
INSERT INTO `app_api_userlesson` VALUES (4, '1', '146', '前端要学的测试课 从Jest入门到 TDD/BDD双实战', 'https://img.mukewang.com/szimg/5d36a6000837a91d06000338-360-202.jpg', 0, 0, 0, 0, 0, 0, 0, '', 145);
COMMIT;

-- ----------------------------
-- Table structure for app_api_usernotice
-- ----------------------------
DROP TABLE IF EXISTS `app_api_usernotice`;
CREATE TABLE `app_api_usernotice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `isRead` tinyint(1) NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `messageid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_api_usernotice_messageid_id_71262ff9` (`messageid_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of app_api_usernotice
-- ----------------------------
BEGIN;
INSERT INTO `app_api_usernotice` VALUES (1, '1', 1, 0, 49);
INSERT INTO `app_api_usernotice` VALUES (2, '1', 1, 0, 50);
INSERT INTO `app_api_usernotice` VALUES (3, '1', 1, 0, 51);
INSERT INTO `app_api_usernotice` VALUES (4, '1', 1, 0, 52);
INSERT INTO `app_api_usernotice` VALUES (5, '1', 1, 0, 53);
INSERT INTO `app_api_usernotice` VALUES (6, '1', 1, 0, 54);
INSERT INTO `app_api_usernotice` VALUES (7, '1', 1, 0, 55);
INSERT INTO `app_api_usernotice` VALUES (8, '1', 1, 0, 56);
INSERT INTO `app_api_usernotice` VALUES (9, '1', 1, 0, 57);
INSERT INTO `app_api_usernotice` VALUES (10, '1', 1, 0, 58);
INSERT INTO `app_api_usernotice` VALUES (11, '1', 1, 0, 59);
INSERT INTO `app_api_usernotice` VALUES (12, '1', 1, 0, 60);
INSERT INTO `app_api_usernotice` VALUES (13, '1', 1, 0, 61);
INSERT INTO `app_api_usernotice` VALUES (14, '1', 1, 0, 62);
INSERT INTO `app_api_usernotice` VALUES (15, '1', 1, 0, 63);
INSERT INTO `app_api_usernotice` VALUES (16, '1', 1, 0, 64);
INSERT INTO `app_api_usernotice` VALUES (17, '1', 1, 0, 65);
INSERT INTO `app_api_usernotice` VALUES (18, '1', 1, 0, 66);
INSERT INTO `app_api_usernotice` VALUES (19, '1', 1, 0, 67);
INSERT INTO `app_api_usernotice` VALUES (20, '1', 1, 0, 68);
INSERT INTO `app_api_usernotice` VALUES (21, '1', 1, 0, 69);
INSERT INTO `app_api_usernotice` VALUES (22, '1', 1, 0, 70);
INSERT INTO `app_api_usernotice` VALUES (23, '1', 1, 0, 71);
INSERT INTO `app_api_usernotice` VALUES (24, '1', 1, 0, 72);
COMMIT;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=489 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES (245, 'Can add permission', 62, 'add_permission');
INSERT INTO `auth_permission` VALUES (246, 'Can change permission', 62, 'change_permission');
INSERT INTO `auth_permission` VALUES (247, 'Can delete permission', 62, 'delete_permission');
INSERT INTO `auth_permission` VALUES (248, 'Can view permission', 62, 'view_permission');
INSERT INTO `auth_permission` VALUES (249, 'Can add group', 63, 'add_group');
INSERT INTO `auth_permission` VALUES (250, 'Can change group', 63, 'change_group');
INSERT INTO `auth_permission` VALUES (251, 'Can delete group', 63, 'delete_group');
INSERT INTO `auth_permission` VALUES (252, 'Can view group', 63, 'view_group');
INSERT INTO `auth_permission` VALUES (253, 'Can add content type', 64, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (254, 'Can change content type', 64, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (255, 'Can delete content type', 64, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (256, 'Can view content type', 64, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (257, 'Can add session', 65, 'add_session');
INSERT INTO `auth_permission` VALUES (258, 'Can change session', 65, 'change_session');
INSERT INTO `auth_permission` VALUES (259, 'Can delete session', 65, 'delete_session');
INSERT INTO `auth_permission` VALUES (260, 'Can view session', 65, 'view_session');
INSERT INTO `auth_permission` VALUES (261, 'Can add TyAdmin邮箱验证码', 66, 'add_tyadminemailverifyrecord');
INSERT INTO `auth_permission` VALUES (262, 'Can change TyAdmin邮箱验证码', 66, 'change_tyadminemailverifyrecord');
INSERT INTO `auth_permission` VALUES (263, 'Can delete TyAdmin邮箱验证码', 66, 'delete_tyadminemailverifyrecord');
INSERT INTO `auth_permission` VALUES (264, 'Can view TyAdmin邮箱验证码', 66, 'view_tyadminemailverifyrecord');
INSERT INTO `auth_permission` VALUES (265, 'Can add 系统日志', 67, 'add_tyadminsyslog');
INSERT INTO `auth_permission` VALUES (266, 'Can change 系统日志', 67, 'change_tyadminsyslog');
INSERT INTO `auth_permission` VALUES (267, 'Can delete 系统日志', 67, 'delete_tyadminsyslog');
INSERT INTO `auth_permission` VALUES (268, 'Can view 系统日志', 67, 'view_tyadminsyslog');
INSERT INTO `auth_permission` VALUES (269, 'Can add 地址信息', 68, 'add_address');
INSERT INTO `auth_permission` VALUES (270, 'Can change 地址信息', 68, 'change_address');
INSERT INTO `auth_permission` VALUES (271, 'Can delete 地址信息', 68, 'delete_address');
INSERT INTO `auth_permission` VALUES (272, 'Can view 地址信息', 68, 'view_address');
INSERT INTO `auth_permission` VALUES (273, 'Can add 回答', 69, 'add_answer');
INSERT INTO `auth_permission` VALUES (274, 'Can change 回答', 69, 'change_answer');
INSERT INTO `auth_permission` VALUES (275, 'Can delete 回答', 69, 'delete_answer');
INSERT INTO `auth_permission` VALUES (276, 'Can view 回答', 69, 'view_answer');
INSERT INTO `auth_permission` VALUES (277, 'Can add 文章类型', 70, 'add_articletype');
INSERT INTO `auth_permission` VALUES (278, 'Can change 文章类型', 70, 'change_articletype');
INSERT INTO `auth_permission` VALUES (279, 'Can delete 文章类型', 70, 'delete_articletype');
INSERT INTO `auth_permission` VALUES (280, 'Can view 文章类型', 70, 'view_articletype');
INSERT INTO `auth_permission` VALUES (281, 'Can add 购物车', 71, 'add_cart');
INSERT INTO `auth_permission` VALUES (282, 'Can change 购物车', 71, 'change_cart');
INSERT INTO `auth_permission` VALUES (283, 'Can delete 购物车', 71, 'delete_cart');
INSERT INTO `auth_permission` VALUES (284, 'Can view 购物车', 71, 'view_cart');
INSERT INTO `auth_permission` VALUES (285, 'Can add 课程目录信息', 72, 'add_catalog');
INSERT INTO `auth_permission` VALUES (286, 'Can change 课程目录信息', 72, 'change_catalog');
INSERT INTO `auth_permission` VALUES (287, 'Can delete 课程目录信息', 72, 'delete_catalog');
INSERT INTO `auth_permission` VALUES (288, 'Can view 课程目录信息', 72, 'view_catalog');
INSERT INTO `auth_permission` VALUES (289, 'Can add 章节', 73, 'add_chapter');
INSERT INTO `auth_permission` VALUES (290, 'Can change 章节', 73, 'change_chapter');
INSERT INTO `auth_permission` VALUES (291, 'Can delete 章节', 73, 'delete_chapter');
INSERT INTO `auth_permission` VALUES (292, 'Can view 章节', 73, 'view_chapter');
INSERT INTO `auth_permission` VALUES (293, 'Can add 评论', 74, 'add_comment');
INSERT INTO `auth_permission` VALUES (294, 'Can change 评论', 74, 'change_comment');
INSERT INTO `auth_permission` VALUES (295, 'Can delete 评论', 74, 'delete_comment');
INSERT INTO `auth_permission` VALUES (296, 'Can view 评论', 74, 'view_comment');
INSERT INTO `auth_permission` VALUES (297, 'Can add 公共头部脚部配置', 75, 'add_commonpathconfig');
INSERT INTO `auth_permission` VALUES (298, 'Can change 公共头部脚部配置', 75, 'change_commonpathconfig');
INSERT INTO `auth_permission` VALUES (299, 'Can delete 公共头部脚部配置', 75, 'delete_commonpathconfig');
INSERT INTO `auth_permission` VALUES (300, 'Can view 公共头部脚部配置', 75, 'view_commonpathconfig');
INSERT INTO `auth_permission` VALUES (301, 'Can add 用户咨询', 76, 'add_consult');
INSERT INTO `auth_permission` VALUES (302, 'Can change 用户咨询', 76, 'change_consult');
INSERT INTO `auth_permission` VALUES (303, 'Can delete 用户咨询', 76, 'delete_consult');
INSERT INTO `auth_permission` VALUES (304, 'Can view 用户咨询', 76, 'view_consult');
INSERT INTO `auth_permission` VALUES (305, 'Can add 充值方式', 77, 'add_couponrange');
INSERT INTO `auth_permission` VALUES (306, 'Can change 充值方式', 77, 'change_couponrange');
INSERT INTO `auth_permission` VALUES (307, 'Can delete 充值方式', 77, 'delete_couponrange');
INSERT INTO `auth_permission` VALUES (308, 'Can view 充值方式', 77, 'view_couponrange');
INSERT INTO `auth_permission` VALUES (309, 'Can add 充值方式', 78, 'add_couponstatus');
INSERT INTO `auth_permission` VALUES (310, 'Can change 充值方式', 78, 'change_couponstatus');
INSERT INTO `auth_permission` VALUES (311, 'Can delete 充值方式', 78, 'delete_couponstatus');
INSERT INTO `auth_permission` VALUES (312, 'Can view 充值方式', 78, 'view_couponstatus');
INSERT INTO `auth_permission` VALUES (313, 'Can add 邮箱验证码', 79, 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (314, 'Can change 邮箱验证码', 79, 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (315, 'Can delete 邮箱验证码', 79, 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (316, 'Can view 邮箱验证码', 79, 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (317, 'Can add 底部配置', 80, 'add_footer');
INSERT INTO `auth_permission` VALUES (318, 'Can change 底部配置', 80, 'change_footer');
INSERT INTO `auth_permission` VALUES (319, 'Can delete 底部配置', 80, 'delete_footer');
INSERT INTO `auth_permission` VALUES (320, 'Can view 底部配置', 80, 'view_footer');
INSERT INTO `auth_permission` VALUES (321, 'Can add 搜索历史', 81, 'add_history');
INSERT INTO `auth_permission` VALUES (322, 'Can change 搜索历史', 81, 'change_history');
INSERT INTO `auth_permission` VALUES (323, 'Can delete 搜索历史', 81, 'delete_history');
INSERT INTO `auth_permission` VALUES (324, 'Can view 搜索历史', 81, 'view_history');
INSERT INTO `auth_permission` VALUES (325, 'Can add 热搜', 82, 'add_hot');
INSERT INTO `auth_permission` VALUES (326, 'Can change 热搜', 82, 'change_hot');
INSERT INTO `auth_permission` VALUES (327, 'Can delete 热搜', 82, 'delete_hot');
INSERT INTO `auth_permission` VALUES (328, 'Can view 热搜', 82, 'view_hot');
INSERT INTO `auth_permission` VALUES (329, 'Can add 积分商品类别', 83, 'add_integraltype');
INSERT INTO `auth_permission` VALUES (330, 'Can change 积分商品类别', 83, 'change_integraltype');
INSERT INTO `auth_permission` VALUES (331, 'Can delete 积分商品类别', 83, 'delete_integraltype');
INSERT INTO `auth_permission` VALUES (332, 'Can view 积分商品类别', 83, 'view_integraltype');
INSERT INTO `auth_permission` VALUES (333, 'Can add Label小项', 84, 'add_label');
INSERT INTO `auth_permission` VALUES (334, 'Can change Label小项', 84, 'change_label');
INSERT INTO `auth_permission` VALUES (335, 'Can delete Label小项', 84, 'delete_label');
INSERT INTO `auth_permission` VALUES (336, 'Can view Label小项', 84, 'view_label');
INSERT INTO `auth_permission` VALUES (337, 'Can add Label类型', 85, 'add_labeltype');
INSERT INTO `auth_permission` VALUES (338, 'Can change Label类型', 85, 'change_labeltype');
INSERT INTO `auth_permission` VALUES (339, 'Can delete Label类型', 85, 'delete_labeltype');
INSERT INTO `auth_permission` VALUES (340, 'Can view Label类型', 85, 'view_labeltype');
INSERT INTO `auth_permission` VALUES (341, 'Can add 课程难度类型', 86, 'add_lessonhardtype');
INSERT INTO `auth_permission` VALUES (342, 'Can change 课程难度类型', 86, 'change_lessonhardtype');
INSERT INTO `auth_permission` VALUES (343, 'Can delete 课程难度类型', 86, 'delete_lessonhardtype');
INSERT INTO `auth_permission` VALUES (344, 'Can view 课程难度类型', 86, 'view_lessonhardtype');
INSERT INTO `auth_permission` VALUES (345, 'Can add 课程角标类型', 87, 'add_lessonscript');
INSERT INTO `auth_permission` VALUES (346, 'Can change 课程角标类型', 87, 'change_lessonscript');
INSERT INTO `auth_permission` VALUES (347, 'Can delete 课程角标类型', 87, 'delete_lessonscript');
INSERT INTO `auth_permission` VALUES (348, 'Can view 课程角标类型', 87, 'view_lessonscript');
INSERT INTO `auth_permission` VALUES (349, 'Can add 课程类型', 88, 'add_lessontype');
INSERT INTO `auth_permission` VALUES (350, 'Can change 课程类型', 88, 'change_lessontype');
INSERT INTO `auth_permission` VALUES (351, 'Can delete 课程类型', 88, 'delete_lessontype');
INSERT INTO `auth_permission` VALUES (352, 'Can view 课程类型', 88, 'view_lessontype');
INSERT INTO `auth_permission` VALUES (353, 'Can add 登录类型', 89, 'add_logtype');
INSERT INTO `auth_permission` VALUES (354, 'Can change 登录类型', 89, 'change_logtype');
INSERT INTO `auth_permission` VALUES (355, 'Can delete 登录类型', 89, 'delete_logtype');
INSERT INTO `auth_permission` VALUES (356, 'Can view 登录类型', 89, 'view_logtype');
INSERT INTO `auth_permission` VALUES (357, 'Can add 首页左侧菜单', 90, 'add_nav');
INSERT INTO `auth_permission` VALUES (358, 'Can change 首页左侧菜单', 90, 'change_nav');
INSERT INTO `auth_permission` VALUES (359, 'Can delete 首页左侧菜单', 90, 'delete_nav');
INSERT INTO `auth_permission` VALUES (360, 'Can view 首页左侧菜单', 90, 'view_nav');
INSERT INTO `auth_permission` VALUES (361, 'Can add 首页左侧菜单', 91, 'add_navigation');
INSERT INTO `auth_permission` VALUES (362, 'Can change 首页左侧菜单', 91, 'change_navigation');
INSERT INTO `auth_permission` VALUES (363, 'Can delete 首页左侧菜单', 91, 'delete_navigation');
INSERT INTO `auth_permission` VALUES (364, 'Can view 首页左侧菜单', 91, 'view_navigation');
INSERT INTO `auth_permission` VALUES (365, 'Can add 通知', 92, 'add_notice');
INSERT INTO `auth_permission` VALUES (366, 'Can change 通知', 92, 'change_notice');
INSERT INTO `auth_permission` VALUES (367, 'Can delete 通知', 92, 'delete_notice');
INSERT INTO `auth_permission` VALUES (368, 'Can view 通知', 92, 'view_notice');
INSERT INTO `auth_permission` VALUES (369, 'Can add 订单', 93, 'add_order');
INSERT INTO `auth_permission` VALUES (370, 'Can change 订单', 93, 'change_order');
INSERT INTO `auth_permission` VALUES (371, 'Can delete 订单', 93, 'delete_order');
INSERT INTO `auth_permission` VALUES (372, 'Can view 订单', 93, 'view_order');
INSERT INTO `auth_permission` VALUES (373, 'Can add 订单状态', 94, 'add_orderstatus');
INSERT INTO `auth_permission` VALUES (374, 'Can change 订单状态', 94, 'change_orderstatus');
INSERT INTO `auth_permission` VALUES (375, 'Can delete 订单状态', 94, 'delete_orderstatus');
INSERT INTO `auth_permission` VALUES (376, 'Can view 订单状态', 94, 'view_orderstatus');
INSERT INTO `auth_permission` VALUES (377, 'Can add 文章类型', 95, 'add_qatype');
INSERT INTO `auth_permission` VALUES (378, 'Can change 文章类型', 95, 'change_qatype');
INSERT INTO `auth_permission` VALUES (379, 'Can delete 文章类型', 95, 'delete_qatype');
INSERT INTO `auth_permission` VALUES (380, 'Can view 文章类型', 95, 'view_qatype');
INSERT INTO `auth_permission` VALUES (381, 'Can add 专栏', 96, 'add_read');
INSERT INTO `auth_permission` VALUES (382, 'Can change 专栏', 96, 'change_read');
INSERT INTO `auth_permission` VALUES (383, 'Can delete 专栏', 96, 'delete_read');
INSERT INTO `auth_permission` VALUES (384, 'Can view 专栏', 96, 'view_read');
INSERT INTO `auth_permission` VALUES (385, 'Can add 专栏章节', 97, 'add_readchapter');
INSERT INTO `auth_permission` VALUES (386, 'Can change 专栏章节', 97, 'change_readchapter');
INSERT INTO `auth_permission` VALUES (387, 'Can delete 专栏章节', 97, 'delete_readchapter');
INSERT INTO `auth_permission` VALUES (388, 'Can view 专栏章节', 97, 'view_readchapter');
INSERT INTO `auth_permission` VALUES (389, 'Can add 专栏分类', 98, 'add_readtype');
INSERT INTO `auth_permission` VALUES (390, 'Can change 专栏分类', 98, 'change_readtype');
INSERT INTO `auth_permission` VALUES (391, 'Can delete 专栏分类', 98, 'delete_readtype');
INSERT INTO `auth_permission` VALUES (392, 'Can view 专栏分类', 98, 'view_readtype');
INSERT INTO `auth_permission` VALUES (393, 'Can add 充值类型', 99, 'add_rechargeaction');
INSERT INTO `auth_permission` VALUES (394, 'Can change 充值类型', 99, 'change_rechargeaction');
INSERT INTO `auth_permission` VALUES (395, 'Can delete 充值类型', 99, 'delete_rechargeaction');
INSERT INTO `auth_permission` VALUES (396, 'Can view 充值类型', 99, 'view_rechargeaction');
INSERT INTO `auth_permission` VALUES (397, 'Can add 充值方式', 100, 'add_rechargepay');
INSERT INTO `auth_permission` VALUES (398, 'Can change 充值方式', 100, 'change_rechargepay');
INSERT INTO `auth_permission` VALUES (399, 'Can delete 充值方式', 100, 'delete_rechargepay');
INSERT INTO `auth_permission` VALUES (400, 'Can view 充值方式', 100, 'view_rechargepay');
INSERT INTO `auth_permission` VALUES (401, 'Can add 首页Banner', 101, 'add_slider');
INSERT INTO `auth_permission` VALUES (402, 'Can change 首页Banner', 101, 'change_slider');
INSERT INTO `auth_permission` VALUES (403, 'Can delete 首页Banner', 101, 'delete_slider');
INSERT INTO `auth_permission` VALUES (404, 'Can view 首页Banner', 101, 'view_slider');
INSERT INTO `auth_permission` VALUES (405, 'Can add 学生类型', 102, 'add_studenttype');
INSERT INTO `auth_permission` VALUES (406, 'Can change 学生类型', 102, 'change_studenttype');
INSERT INTO `auth_permission` VALUES (407, 'Can delete 学生类型', 102, 'delete_studenttype');
INSERT INTO `auth_permission` VALUES (408, 'Can view 学生类型', 102, 'view_studenttype');
INSERT INTO `auth_permission` VALUES (409, 'Can add 系统日志', 103, 'add_syslog');
INSERT INTO `auth_permission` VALUES (410, 'Can change 系统日志', 103, 'change_syslog');
INSERT INTO `auth_permission` VALUES (411, 'Can delete 系统日志', 103, 'delete_syslog');
INSERT INTO `auth_permission` VALUES (412, 'Can view 系统日志', 103, 'view_syslog');
INSERT INTO `auth_permission` VALUES (413, 'Can add 讲师', 104, 'add_teacher');
INSERT INTO `auth_permission` VALUES (414, 'Can change 讲师', 104, 'change_teacher');
INSERT INTO `auth_permission` VALUES (415, 'Can delete 讲师', 104, 'delete_teacher');
INSERT INTO `auth_permission` VALUES (416, 'Can view 讲师', 104, 'view_teacher');
INSERT INTO `auth_permission` VALUES (417, 'Can add 用户通知', 105, 'add_usernotice');
INSERT INTO `auth_permission` VALUES (418, 'Can change 用户通知', 105, 'change_usernotice');
INSERT INTO `auth_permission` VALUES (419, 'Can delete 用户通知', 105, 'delete_usernotice');
INSERT INTO `auth_permission` VALUES (420, 'Can view 用户通知', 105, 'view_usernotice');
INSERT INTO `auth_permission` VALUES (421, 'Can add 用户学习的课程', 106, 'add_userlesson');
INSERT INTO `auth_permission` VALUES (422, 'Can change 用户学习的课程', 106, 'change_userlesson');
INSERT INTO `auth_permission` VALUES (423, 'Can delete 用户学习的课程', 106, 'delete_userlesson');
INSERT INTO `auth_permission` VALUES (424, 'Can view 用户学习的课程', 106, 'view_userlesson');
INSERT INTO `auth_permission` VALUES (425, 'Can add 小节', 107, 'add_term');
INSERT INTO `auth_permission` VALUES (426, 'Can change 小节', 107, 'change_term');
INSERT INTO `auth_permission` VALUES (427, 'Can delete 小节', 107, 'delete_term');
INSERT INTO `auth_permission` VALUES (428, 'Can view 小节', 107, 'view_term');
INSERT INTO `auth_permission` VALUES (429, 'Can add 学生', 108, 'add_student');
INSERT INTO `auth_permission` VALUES (430, 'Can change 学生', 108, 'change_student');
INSERT INTO `auth_permission` VALUES (431, 'Can delete 学生', 108, 'delete_student');
INSERT INTO `auth_permission` VALUES (432, 'Can view 学生', 108, 'view_student');
INSERT INTO `auth_permission` VALUES (433, 'Can add 充值记录', 109, 'add_recharge');
INSERT INTO `auth_permission` VALUES (434, 'Can change 充值记录', 109, 'change_recharge');
INSERT INTO `auth_permission` VALUES (435, 'Can delete 充值记录', 109, 'delete_recharge');
INSERT INTO `auth_permission` VALUES (436, 'Can view 充值记录', 109, 'view_recharge');
INSERT INTO `auth_permission` VALUES (437, 'Can add 专栏章节小节', 110, 'add_readchapteritem');
INSERT INTO `auth_permission` VALUES (438, 'Can change 专栏章节小节', 110, 'change_readchapteritem');
INSERT INTO `auth_permission` VALUES (439, 'Can delete 专栏章节小节', 110, 'delete_readchapteritem');
INSERT INTO `auth_permission` VALUES (440, 'Can view 专栏章节小节', 110, 'view_readchapteritem');
INSERT INTO `auth_permission` VALUES (441, 'Can add 问题', 111, 'add_question');
INSERT INTO `auth_permission` VALUES (442, 'Can change 问题', 111, 'change_question');
INSERT INTO `auth_permission` VALUES (443, 'Can delete 问题', 111, 'delete_question');
INSERT INTO `auth_permission` VALUES (444, 'Can view 问题', 111, 'view_question');
INSERT INTO `auth_permission` VALUES (445, 'Can add Qa', 112, 'add_qa');
INSERT INTO `auth_permission` VALUES (446, 'Can change Qa', 112, 'change_qa');
INSERT INTO `auth_permission` VALUES (447, 'Can delete Qa', 112, 'delete_qa');
INSERT INTO `auth_permission` VALUES (448, 'Can view Qa', 112, 'view_qa');
INSERT INTO `auth_permission` VALUES (449, 'Can add 订单小项', 113, 'add_orderitem');
INSERT INTO `auth_permission` VALUES (450, 'Can change 订单小项', 113, 'change_orderitem');
INSERT INTO `auth_permission` VALUES (451, 'Can delete 订单小项', 113, 'delete_orderitem');
INSERT INTO `auth_permission` VALUES (452, 'Can view 订单小项', 113, 'view_orderitem');
INSERT INTO `auth_permission` VALUES (453, 'Can add 访问日志', 114, 'add_log');
INSERT INTO `auth_permission` VALUES (454, 'Can change 访问日志', 114, 'change_log');
INSERT INTO `auth_permission` VALUES (455, 'Can delete 访问日志', 114, 'delete_log');
INSERT INTO `auth_permission` VALUES (456, 'Can view 访问日志', 114, 'view_log');
INSERT INTO `auth_permission` VALUES (457, 'Can add 课程', 115, 'add_lesson');
INSERT INTO `auth_permission` VALUES (458, 'Can change 课程', 115, 'change_lesson');
INSERT INTO `auth_permission` VALUES (459, 'Can delete 课程', 115, 'delete_lesson');
INSERT INTO `auth_permission` VALUES (460, 'Can view 课程', 115, 'view_lesson');
INSERT INTO `auth_permission` VALUES (461, 'Can add 关注Label', 116, 'add_labelfollow');
INSERT INTO `auth_permission` VALUES (462, 'Can change 关注Label', 116, 'change_labelfollow');
INSERT INTO `auth_permission` VALUES (463, 'Can delete 关注Label', 116, 'delete_labelfollow');
INSERT INTO `auth_permission` VALUES (464, 'Can view 关注Label', 116, 'view_labelfollow');
INSERT INTO `auth_permission` VALUES (465, 'Can add 积分商品', 117, 'add_integral');
INSERT INTO `auth_permission` VALUES (466, 'Can change 积分商品', 117, 'change_integral');
INSERT INTO `auth_permission` VALUES (467, 'Can delete 积分商品', 117, 'delete_integral');
INSERT INTO `auth_permission` VALUES (468, 'Can view 积分商品', 117, 'view_integral');
INSERT INTO `auth_permission` VALUES (469, 'Can add 优惠券', 118, 'add_coupon');
INSERT INTO `auth_permission` VALUES (470, 'Can change 优惠券', 118, 'change_coupon');
INSERT INTO `auth_permission` VALUES (471, 'Can delete 优惠券', 118, 'delete_coupon');
INSERT INTO `auth_permission` VALUES (472, 'Can view 优惠券', 118, 'view_coupon');
INSERT INTO `auth_permission` VALUES (473, 'Can add Bill', 119, 'add_bill');
INSERT INTO `auth_permission` VALUES (474, 'Can change Bill', 119, 'change_bill');
INSERT INTO `auth_permission` VALUES (475, 'Can delete Bill', 119, 'delete_bill');
INSERT INTO `auth_permission` VALUES (476, 'Can view Bill', 119, 'view_bill');
INSERT INTO `auth_permission` VALUES (477, 'Can add 文章', 120, 'add_article');
INSERT INTO `auth_permission` VALUES (478, 'Can change 文章', 120, 'change_article');
INSERT INTO `auth_permission` VALUES (479, 'Can delete 文章', 120, 'delete_article');
INSERT INTO `auth_permission` VALUES (480, 'Can view 文章', 120, 'view_article');
INSERT INTO `auth_permission` VALUES (481, 'Can add 用户', 121, 'add_user');
INSERT INTO `auth_permission` VALUES (482, 'Can change 用户', 121, 'change_user');
INSERT INTO `auth_permission` VALUES (483, 'Can delete 用户', 121, 'delete_user');
INSERT INTO `auth_permission` VALUES (484, 'Can view 用户', 121, 'view_user');
INSERT INTO `auth_permission` VALUES (485, 'Can add captcha store', 122, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (486, 'Can change captcha store', 122, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (487, 'Can delete captcha store', 122, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (488, 'Can view captcha store', 122, 'view_captchastore');
COMMIT;

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `response` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `hashkey` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
BEGIN;
INSERT INTO `captcha_captchastore` VALUES (12, 'VQCO', 'vqco', 'aa739246f24728ee60cf710bf81c160a89ec22f9', '2020-10-07 01:48:16.067811');
INSERT INTO `captcha_captchastore` VALUES (13, 'QFNT', 'qfnt', 'a2b8e1ec176859fa4610168b2278133fc3378d5b', '2020-10-07 01:48:23.860539');
INSERT INTO `captcha_captchastore` VALUES (14, 'ZPOZ', 'zpoz', 'c1345e49c97e6810825eded5c13baddb73c37bc2', '2020-10-07 01:48:28.105083');
INSERT INTO `captcha_captchastore` VALUES (15, 'YIYN', 'yiyn', 'f9a33e4d0d419607e2bb8f6017d2b5ce949d54bc', '2020-10-07 01:48:30.351402');
INSERT INTO `captcha_captchastore` VALUES (18, 'YNAJ', 'ynaj', '9a508fc1d0dc05c1856b81183f78c2199b3c3eff', '2020-10-07 01:48:43.966125');
INSERT INTO `captcha_captchastore` VALUES (19, 'IQCM', 'iqcm', '53e6470ac57a6ba316bd376f662090f39079a6bb', '2020-10-07 18:29:21.061982');
INSERT INTO `captcha_captchastore` VALUES (20, 'CIKN', 'cikn', 'f321650d6df907d72446902638cee72533dc9707', '2020-10-07 18:29:28.079052');
INSERT INTO `captcha_captchastore` VALUES (22, 'HTZQ', 'htzq', '84ddb046b3dc482bb3e85dc62db4a956a9a077ef', '2020-10-07 18:29:35.586410');
COMMIT;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES (68, 'app_api', 'address');
INSERT INTO `django_content_type` VALUES (69, 'app_api', 'answer');
INSERT INTO `django_content_type` VALUES (120, 'app_api', 'article');
INSERT INTO `django_content_type` VALUES (70, 'app_api', 'articletype');
INSERT INTO `django_content_type` VALUES (119, 'app_api', 'bill');
INSERT INTO `django_content_type` VALUES (71, 'app_api', 'cart');
INSERT INTO `django_content_type` VALUES (72, 'app_api', 'catalog');
INSERT INTO `django_content_type` VALUES (73, 'app_api', 'chapter');
INSERT INTO `django_content_type` VALUES (74, 'app_api', 'comment');
INSERT INTO `django_content_type` VALUES (75, 'app_api', 'commonpathconfig');
INSERT INTO `django_content_type` VALUES (76, 'app_api', 'consult');
INSERT INTO `django_content_type` VALUES (118, 'app_api', 'coupon');
INSERT INTO `django_content_type` VALUES (77, 'app_api', 'couponrange');
INSERT INTO `django_content_type` VALUES (78, 'app_api', 'couponstatus');
INSERT INTO `django_content_type` VALUES (79, 'app_api', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES (80, 'app_api', 'footer');
INSERT INTO `django_content_type` VALUES (81, 'app_api', 'history');
INSERT INTO `django_content_type` VALUES (82, 'app_api', 'hot');
INSERT INTO `django_content_type` VALUES (117, 'app_api', 'integral');
INSERT INTO `django_content_type` VALUES (83, 'app_api', 'integraltype');
INSERT INTO `django_content_type` VALUES (84, 'app_api', 'label');
INSERT INTO `django_content_type` VALUES (116, 'app_api', 'labelfollow');
INSERT INTO `django_content_type` VALUES (85, 'app_api', 'labeltype');
INSERT INTO `django_content_type` VALUES (115, 'app_api', 'lesson');
INSERT INTO `django_content_type` VALUES (86, 'app_api', 'lessonhardtype');
INSERT INTO `django_content_type` VALUES (87, 'app_api', 'lessonscript');
INSERT INTO `django_content_type` VALUES (88, 'app_api', 'lessontype');
INSERT INTO `django_content_type` VALUES (114, 'app_api', 'log');
INSERT INTO `django_content_type` VALUES (89, 'app_api', 'logtype');
INSERT INTO `django_content_type` VALUES (90, 'app_api', 'nav');
INSERT INTO `django_content_type` VALUES (91, 'app_api', 'navigation');
INSERT INTO `django_content_type` VALUES (92, 'app_api', 'notice');
INSERT INTO `django_content_type` VALUES (93, 'app_api', 'order');
INSERT INTO `django_content_type` VALUES (113, 'app_api', 'orderitem');
INSERT INTO `django_content_type` VALUES (94, 'app_api', 'orderstatus');
INSERT INTO `django_content_type` VALUES (112, 'app_api', 'qa');
INSERT INTO `django_content_type` VALUES (95, 'app_api', 'qatype');
INSERT INTO `django_content_type` VALUES (111, 'app_api', 'question');
INSERT INTO `django_content_type` VALUES (96, 'app_api', 'read');
INSERT INTO `django_content_type` VALUES (97, 'app_api', 'readchapter');
INSERT INTO `django_content_type` VALUES (110, 'app_api', 'readchapteritem');
INSERT INTO `django_content_type` VALUES (98, 'app_api', 'readtype');
INSERT INTO `django_content_type` VALUES (109, 'app_api', 'recharge');
INSERT INTO `django_content_type` VALUES (99, 'app_api', 'rechargeaction');
INSERT INTO `django_content_type` VALUES (100, 'app_api', 'rechargepay');
INSERT INTO `django_content_type` VALUES (101, 'app_api', 'slider');
INSERT INTO `django_content_type` VALUES (108, 'app_api', 'student');
INSERT INTO `django_content_type` VALUES (102, 'app_api', 'studenttype');
INSERT INTO `django_content_type` VALUES (103, 'app_api', 'syslog');
INSERT INTO `django_content_type` VALUES (104, 'app_api', 'teacher');
INSERT INTO `django_content_type` VALUES (107, 'app_api', 'term');
INSERT INTO `django_content_type` VALUES (121, 'app_api', 'user');
INSERT INTO `django_content_type` VALUES (106, 'app_api', 'userlesson');
INSERT INTO `django_content_type` VALUES (105, 'app_api', 'usernotice');
INSERT INTO `django_content_type` VALUES (63, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (62, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (122, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (64, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (65, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (66, 'xadmin_api', 'tyadminemailverifyrecord');
INSERT INTO `django_content_type` VALUES (67, 'xadmin_api', 'tyadminsyslog');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES (38, 'contenttypes', '0001_initial', '2020-10-07 20:18:25.836112');
INSERT INTO `django_migrations` VALUES (39, 'contenttypes', '0002_remove_content_type_name', '2020-10-07 20:18:25.837783');
INSERT INTO `django_migrations` VALUES (40, 'auth', '0001_initial', '2020-10-07 20:18:25.839274');
INSERT INTO `django_migrations` VALUES (41, 'auth', '0002_alter_permission_name_max_length', '2020-10-07 20:18:25.840864');
INSERT INTO `django_migrations` VALUES (42, 'auth', '0003_alter_user_email_max_length', '2020-10-07 20:18:25.842490');
INSERT INTO `django_migrations` VALUES (43, 'auth', '0004_alter_user_username_opts', '2020-10-07 20:18:25.844063');
INSERT INTO `django_migrations` VALUES (44, 'auth', '0005_alter_user_last_login_null', '2020-10-07 20:18:25.845677');
INSERT INTO `django_migrations` VALUES (45, 'auth', '0006_require_contenttypes_0002', '2020-10-07 20:18:25.847151');
INSERT INTO `django_migrations` VALUES (46, 'auth', '0007_alter_validators_add_error_messages', '2020-10-07 20:18:25.848864');
INSERT INTO `django_migrations` VALUES (47, 'auth', '0008_alter_user_username_max_length', '2020-10-07 20:18:25.850746');
INSERT INTO `django_migrations` VALUES (48, 'auth', '0009_alter_user_last_name_max_length', '2020-10-07 20:18:25.852028');
INSERT INTO `django_migrations` VALUES (49, 'auth', '0010_alter_group_name_max_length', '2020-10-07 20:18:25.853473');
INSERT INTO `django_migrations` VALUES (50, 'auth', '0011_update_proxy_permissions', '2020-10-07 20:18:25.855490');
INSERT INTO `django_migrations` VALUES (51, 'auth', '0012_alter_user_first_name_max_length', '2020-10-07 20:18:25.857107');
INSERT INTO `django_migrations` VALUES (52, 'app_api', '0001_initial', '2020-10-07 20:18:25.858500');
INSERT INTO `django_migrations` VALUES (53, 'app_api', '0002_auto_20201007_0140', '2020-10-07 20:18:25.859836');
INSERT INTO `django_migrations` VALUES (54, 'app_api', '0003_auto_20201007_2018', '2020-10-07 20:18:25.861118');
INSERT INTO `django_migrations` VALUES (55, 'captcha', '0001_initial', '2020-10-07 20:18:25.862356');
INSERT INTO `django_migrations` VALUES (56, 'sessions', '0001_initial', '2020-10-07 20:18:25.863766');
INSERT INTO `django_migrations` VALUES (57, 'xadmin_api', '0001_initial', '2020-10-07 20:18:25.865197');
INSERT INTO `django_migrations` VALUES (58, 'app_api', '0004_auto_20201007_2140', '2020-10-07 21:41:04.886189');
INSERT INTO `django_migrations` VALUES (59, 'app_api', '0005_consult_userid', '2020-10-07 22:07:19.333967');
COMMIT;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of django_session
-- ----------------------------
BEGIN;
INSERT INTO `django_session` VALUES ('7wtvcn77cdvbbtb7e6wn6wjq7jnrqa3k', '.eJxVjDsOwjAQBe_iGln-YS-U9JzBWu8uOIAcKU4qxN1JpBTQvpl5b5VxmWteukx5YHVWTh1-t4L0lLYBfmC7j5rGNk9D0Zuid9r1dWR5XXb376Bir2ttyViQZIAYkgnOpgKRE7GFAJGQ0QJH8Texp5V5OboAnr0rmIJ4oz5f0OA3cA:1kQ8Ra:_0shmut0Q0SzQCCSjhV8UZCN6QP-GX9ZvDRBE8Cl_5M', '2020-10-21 20:21:18.311866');
INSERT INTO `django_session` VALUES ('h10ugenouc8ysaeg3mj62eyibneel3kf', '.eJxVjDsOwjAQBe_iGln-YS-U9JzBWu8uOIAcKU4qxN1JpBTQvpl5b5VxmWteukx5YHVWTh1-t4L0lLYBfmC7j5rGNk9D0Zuid9r1dWR5XXb376Bir2ttyViQZIAYkgnOpgKRE7GFAJGQ0QJH8Texp5V5OboAnr0rmIJ4oz5f0OA3cA:1kPr04:NSwzO-GSkO0XoVWRnb30W4gen0Q6JR5ffzdK6vQu-4s', '2020-10-21 01:43:44.092839');
INSERT INTO `django_session` VALUES ('tu2uo1bj3wrdk9k2o3zts4c7u2m727jv', '.eJxVjDsOwjAQBe_iGln-b0xJnzNY3vWCA8iR4qRC3B0ipYD2zcx7iZS3taat85KmIs7CidPvhpke3HZQ7rndZklzW5cJ5a7Ig3Y5zoWfl8P9O6i51289OMik2IF1pDCYqE0A471HRPDRwuDclaJGFTmi0oYKkAoFNVtrcxDvD7zHNw4:1kQ8RZ:SYEH9ATPwgV884wvNEE_5zWE4CuyyB-Ywi7T9HTK7Uo', '2020-10-21 20:21:17.213229');
COMMIT;

-- ----------------------------
-- Table structure for xadmin_api_tyadminemailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_api_tyadminemailverifyrecord`;
CREATE TABLE `xadmin_api_tyadminemailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `send_type` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of xadmin_api_tyadminemailverifyrecord
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for xadmin_api_tyadminsyslog
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_api_tyadminsyslog`;
CREATE TABLE `xadmin_api_tyadminsyslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` varchar(39) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `action_flag` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `log_type` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `user_name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of xadmin_api_tyadminsyslog
-- ----------------------------
BEGIN;
INSERT INTO `xadmin_api_tyadminsyslog` VALUES (4, '2020-10-07 01:43:16.189855', '127.0.0.1', '登录', '登录成功', 'login', '');
INSERT INTO `xadmin_api_tyadminsyslog` VALUES (5, '2020-10-07 01:43:35.410381', '127.0.0.1', '登录', '登录成功', 'login', '');
INSERT INTO `xadmin_api_tyadminsyslog` VALUES (6, '2020-10-07 01:43:44.088352', '127.0.0.1', '登录', '登录成功', 'login', '');
INSERT INTO `xadmin_api_tyadminsyslog` VALUES (7, '2020-10-07 18:24:35.712628', '127.0.0.1', '登录', '登录成功', 'login', '');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
