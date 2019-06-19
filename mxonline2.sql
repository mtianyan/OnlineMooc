/*
 Navicat Premium Data Transfer

 Source Server         : ght_ubuntu
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : 139.199.189.211:3306
 Source Schema         : mxonline2

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 06/05/2018 21:30:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES (1, '编辑');

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
INSERT INTO `auth_group_permissions` VALUES (1, 1, 28);
INSERT INTO `auth_group_permissions` VALUES (3, 1, 29);
INSERT INTO `auth_group_permissions` VALUES (4, 1, 30);
INSERT INTO `auth_group_permissions` VALUES (2, 1, 68);

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (17, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (18, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (19, 'Can add 用户信息', 7, 'add_userprofile');
INSERT INTO `auth_permission` VALUES (20, 'Can change 用户信息', 7, 'change_userprofile');
INSERT INTO `auth_permission` VALUES (21, 'Can delete 用户信息', 7, 'delete_userprofile');
INSERT INTO `auth_permission` VALUES (22, 'Can add 邮箱验证码', 8, 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (23, 'Can change 邮箱验证码', 8, 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (24, 'Can delete 邮箱验证码', 8, 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (25, 'Can add 轮播图', 9, 'add_banner');
INSERT INTO `auth_permission` VALUES (26, 'Can change 轮播图', 9, 'change_banner');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 轮播图', 9, 'delete_banner');
INSERT INTO `auth_permission` VALUES (28, 'Can add 课程', 10, 'add_course');
INSERT INTO `auth_permission` VALUES (29, 'Can change 课程', 10, 'change_course');
INSERT INTO `auth_permission` VALUES (30, 'Can delete 课程', 10, 'delete_course');
INSERT INTO `auth_permission` VALUES (31, 'Can add 章节', 11, 'add_lesson');
INSERT INTO `auth_permission` VALUES (32, 'Can change 章节', 11, 'change_lesson');
INSERT INTO `auth_permission` VALUES (33, 'Can delete 章节', 11, 'delete_lesson');
INSERT INTO `auth_permission` VALUES (34, 'Can add 视频', 12, 'add_video');
INSERT INTO `auth_permission` VALUES (35, 'Can change 视频', 12, 'change_video');
INSERT INTO `auth_permission` VALUES (36, 'Can delete 视频', 12, 'delete_video');
INSERT INTO `auth_permission` VALUES (37, 'Can add 课程资源', 13, 'add_courseresource');
INSERT INTO `auth_permission` VALUES (38, 'Can change 课程资源', 13, 'change_courseresource');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 课程资源', 13, 'delete_courseresource');
INSERT INTO `auth_permission` VALUES (40, 'Can add 用户咨询', 14, 'add_userask');
INSERT INTO `auth_permission` VALUES (41, 'Can change 用户咨询', 14, 'change_userask');
INSERT INTO `auth_permission` VALUES (42, 'Can delete 用户咨询', 14, 'delete_userask');
INSERT INTO `auth_permission` VALUES (43, 'Can add 课程评论', 15, 'add_coursecomments');
INSERT INTO `auth_permission` VALUES (44, 'Can change 课程评论', 15, 'change_coursecomments');
INSERT INTO `auth_permission` VALUES (45, 'Can delete 课程评论', 15, 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES (46, 'Can add 用户收藏', 16, 'add_userfavorite');
INSERT INTO `auth_permission` VALUES (47, 'Can change 用户收藏', 16, 'change_userfavorite');
INSERT INTO `auth_permission` VALUES (48, 'Can delete 用户收藏', 16, 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES (49, 'Can add 用户消息', 17, 'add_usermessage');
INSERT INTO `auth_permission` VALUES (50, 'Can change 用户消息', 17, 'change_usermessage');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 用户消息', 17, 'delete_usermessage');
INSERT INTO `auth_permission` VALUES (52, 'Can add 用户课程', 18, 'add_usercourse');
INSERT INTO `auth_permission` VALUES (53, 'Can change 用户课程', 18, 'change_usercourse');
INSERT INTO `auth_permission` VALUES (54, 'Can delete 用户课程', 18, 'delete_usercourse');
INSERT INTO `auth_permission` VALUES (55, 'Can add 城市', 19, 'add_citydict');
INSERT INTO `auth_permission` VALUES (56, 'Can change 城市', 19, 'change_citydict');
INSERT INTO `auth_permission` VALUES (57, 'Can delete 城市', 19, 'delete_citydict');
INSERT INTO `auth_permission` VALUES (58, 'Can add 课程机构', 20, 'add_courseorg');
INSERT INTO `auth_permission` VALUES (59, 'Can change 课程机构', 20, 'change_courseorg');
INSERT INTO `auth_permission` VALUES (60, 'Can delete 课程机构', 20, 'delete_courseorg');
INSERT INTO `auth_permission` VALUES (61, 'Can add 教师', 21, 'add_teacher');
INSERT INTO `auth_permission` VALUES (62, 'Can change 教师', 21, 'change_teacher');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 教师', 21, 'delete_teacher');
INSERT INTO `auth_permission` VALUES (64, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (65, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (66, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (67, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (68, 'Can view 课程', 10, 'view_course');
INSERT INTO `auth_permission` VALUES (69, 'Can view 课程资源', 13, 'view_courseresource');
INSERT INTO `auth_permission` VALUES (70, 'Can view 章节', 11, 'view_lesson');
INSERT INTO `auth_permission` VALUES (71, 'Can view 视频', 12, 'view_video');
INSERT INTO `auth_permission` VALUES (72, 'Can view 课程评论', 15, 'view_coursecomments');
INSERT INTO `auth_permission` VALUES (73, 'Can view 用户咨询', 14, 'view_userask');
INSERT INTO `auth_permission` VALUES (74, 'Can view 用户课程', 18, 'view_usercourse');
INSERT INTO `auth_permission` VALUES (75, 'Can view 用户收藏', 16, 'view_userfavorite');
INSERT INTO `auth_permission` VALUES (76, 'Can view 用户消息', 17, 'view_usermessage');
INSERT INTO `auth_permission` VALUES (77, 'Can view 城市', 19, 'view_citydict');
INSERT INTO `auth_permission` VALUES (78, 'Can view 课程机构', 20, 'view_courseorg');
INSERT INTO `auth_permission` VALUES (79, 'Can view 教师', 21, 'view_teacher');
INSERT INTO `auth_permission` VALUES (80, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (81, 'Can view 轮播图', 9, 'view_banner');
INSERT INTO `auth_permission` VALUES (82, 'Can view 邮箱验证码', 8, 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (83, 'Can view 用户信息', 7, 'view_userprofile');
INSERT INTO `auth_permission` VALUES (84, 'Can add Bookmark', 22, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (85, 'Can change Bookmark', 22, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (86, 'Can delete Bookmark', 22, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (87, 'Can add User Setting', 23, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (88, 'Can change User Setting', 23, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (89, 'Can delete User Setting', 23, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (90, 'Can add User Widget', 24, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (91, 'Can change User Widget', 24, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (92, 'Can delete User Widget', 24, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (93, 'Can view Bookmark', 22, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (94, 'Can view User Setting', 23, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (95, 'Can view User Widget', 24, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (96, 'Can add log entry', 25, 'add_log');
INSERT INTO `auth_permission` VALUES (97, 'Can change log entry', 25, 'change_log');
INSERT INTO `auth_permission` VALUES (98, 'Can delete log entry', 25, 'delete_log');
INSERT INTO `auth_permission` VALUES (99, 'Can view log entry', 25, 'view_log');
INSERT INTO `auth_permission` VALUES (100, 'Can add captcha store', 26, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (101, 'Can change captcha store', 26, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (102, 'Can delete captcha store', 26, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (103, 'Can view captcha store', 26, 'view_captchastore');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `response` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hashkey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expiration` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hashkey`(`hashkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1431 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES (1430, 'WKQK', 'wkqk', '0ae991c7e405f6fc2f5d7e1c3be63390b6bb4c52', '2018-05-06 21:19:19.648265');

-- ----------------------------
-- Table structure for courses_course
-- ----------------------------
DROP TABLE IF EXISTS `courses_course`;
CREATE TABLE `courses_course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `degree` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `learn_times` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` datetime(6) NULL DEFAULT NULL,
  `course_org_id` int(11) NULL DEFAULT NULL,
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teacher_id` int(11) NULL DEFAULT NULL,
  `teacher_tell` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `you_need_know` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_course_course_org_id_4d2c4aab_fk_organizat`(`course_org_id`) USING BTREE,
  INDEX `courses_course_d9614d40`(`teacher_id`) USING BTREE,
  CONSTRAINT `courses_course_course_org_id_4d2c4aab_fk_organizat` FOREIGN KEY (`course_org_id`) REFERENCES `organization_courseorg` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `courses_course_teacher_id_846fa526_fk_organization_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organization_teacher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses_course
-- ----------------------------
INSERT INTO `courses_course` VALUES (1, '天涯明月笙编程-1(1.1已添加视频)', '天涯明月笙编程-1', '<h1 label=\"Title left\" name=\"tl\" style=\"white-space: normal; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; margin: 0px 0px 10px;\"><span style=\"color: rgb(227, 108, 9);\">天涯明月笙</span></h1><p style=\"white-space: normal;\"><span style=\"color: rgb(227, 108, 9);\"><br/> </span></p><table width=\"100%\" bordercolor=\"#95B3D7\"><tbody><tr class=\"firstRow\"><td width=\"200\" style=\"text-align: center;\"><img src=\"http://mxonlinestatic.mtianyan.cn/courses/ueditor/testue_20180409155501_825.jpg\" title=\"\" alt=\"testue.jpg\" width=\"181\" height=\"158\" style=\"width: 181px; height: 158px;\"/></td><td><p><br/> </p><p>联系电话：180xxxxxxxx</p><p><br/> </p><p>电子邮件：mxonline@mtianyan.cn</p><p><br/> </p><p>家庭住址：银河系地球中国</p><p><br/> </p></td></tr></tbody></table><h3 style=\"white-space: normal;\"><span style=\"color: rgb(227, 108, 9); font-size: 20px;\">目标职位</span></h3><p style=\"white-space: normal; text-indent: 2em;\">Python相关职位</p><p><br/> </p>', 'cj', 10, 57, 17, 'courses/2018/01/smallbanner1.png', 736, '2018-03-16 18:35:00.000000', 2, '后端开发', 'Python', 2, '按时交作业,不然叫家长', '一颗勤学的心是本课程必要前提', 1);
INSERT INTO `courses_course` VALUES (2, '天涯明月笙编程-2', '天涯明月笙编程-2', '<h1 label=\"Title left\" name=\"tl\" style=\"white-space: normal; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; margin: 0px 0px 10px;\"><span style=\"color: rgb(227, 108, 9);\">天涯明月笙</span></h1><p style=\"white-space: normal;\"><span style=\"color: rgb(227, 108, 9);\"><br/> </span></p><table width=\"100%\" bordercolor=\"#95B3D7\"><tbody><tr class=\"firstRow\"><td width=\"200\" class=\"ue_t\" style=\"text-align: center;\"><img src=\"http://127.0.0.1:8002/media/courses/ueditor/avatar_20180115083626_574.jpg\" title=\"\" alt=\"avatar.jpg\" width=\"209\" height=\"211\" style=\"width: 209px; height: 211px;\"/>&nbsp;</td><td><p><br/> </p><p>联系电话：180xxxxxxxx</p><p><br/> </p><p>电子邮件：mxonline@mtianyan.cn</p><p><br/> </p><p>家庭住址：银河系地球中国</p><p><br/> </p></td></tr></tbody></table><h3 style=\"white-space: normal;\"><span style=\"color: rgb(227, 108, 9); font-size: 20px;\">目标职位</span></h3><p style=\"white-space: normal; text-indent: 2em;\">Python相关职位</p><p><br/> </p>', 'zj', 0, 5, 0, 'courses/2018/01/smallbanner1_2W5PQP2.png', 148, '2018-01-12 06:54:00.000000', 3, '前端开发', 'html', 11, '按时交作业,不然叫家长', '一颗勤学的心是本课程必要前提', 1);
INSERT INTO `courses_course` VALUES (3, '天涯明月笙编程-3', '天涯明月笙编程-3', '<h1 label=\"Title left\" name=\"tl\" style=\"white-space: normal; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; margin: 0px 0px 10px;\"><span style=\"color: rgb(227, 108, 9);\">天涯明月笙</span></h1><p style=\"white-space: normal;\"><span style=\"color: rgb(227, 108, 9);\"><br/> </span></p><table width=\"100%\" bordercolor=\"#95B3D7\"><tbody><tr class=\"firstRow\"><td width=\"200\" class=\"ue_t\" style=\"text-align: center;\"><img src=\"http://127.0.0.1:8002/media/courses/ueditor/avatar_20180115083626_574.jpg\" title=\"\" alt=\"avatar.jpg\" width=\"209\" height=\"211\" style=\"width: 209px; height: 211px;\"/>&nbsp;</td><td><p><br/> </p><p>联系电话：180xxxxxxxx</p><p><br/> </p><p>电子邮件：mxonline@mtianyan.cn</p><p><br/> </p><p>家庭住址：银河系地球中国</p><p><br/> </p></td></tr></tbody></table><h3 style=\"white-space: normal;\"><span style=\"color: rgb(227, 108, 9); font-size: 20px;\">目标职位</span></h3><p style=\"white-space: normal; text-indent: 2em;\">Python相关职位</p><p><br/> </p>', 'gj', 0, 4, 1, 'courses/2018/01/smallbanner1_qJxJazr.png', 115, '2018-01-12 06:54:00.000000', 5, '前端开发', 'html', 4, '按时交作业,不然叫家长', '一颗勤学的心是本课程必要前提', 1);
INSERT INTO `courses_course` VALUES (4, '天涯明月笙编程-4', '天涯明月笙编程-4', '<h1 label=\"Title left\" name=\"tl\" style=\"white-space: normal; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; margin: 0px 0px 10px;\"><span style=\"color: rgb(227, 108, 9);\">天涯明月笙4</span></h1><p style=\"white-space: normal;\"><span style=\"color: rgb(227, 108, 9);\"><br/> </span></p><table width=\"100%\" bordercolor=\"#95B3D7\"><tbody><tr class=\"firstRow\"><td width=\"200\" style=\"text-align: center;\"><img src=\"http://mxonlinestatic.mtianyan.cn/courses/ueditor/avatar_20180504011815_460.jpg\" title=\"\" alt=\"avatar.jpg\" width=\"169\" height=\"176\" style=\"width: 169px; height: 176px;\"/>&nbsp;</td><td><p><br/> </p><p>联系电话：180xxxxxxxx</p><p><br/> </p><p>电子邮件：mxonline@mtianyan.cn</p><p><br/> </p><p>家庭住址：银河系地球中国</p><p><br/> </p></td></tr></tbody></table><h3 style=\"white-space: normal;\"><span style=\"color: rgb(227, 108, 9); font-size: 20px;\">目标职位</span></h3><p style=\"white-space: normal; text-indent: 2em;\">Python相关职位</p><p><br/> </p>', 'gj', 0, 16, 3, 'courses/2018/01/course-mtianyan_tx4tIQE.png', 244, '2018-01-12 06:54:00.000000', 6, '前端开发', 'html', NULL, '按时交作业,不然叫家长', '一颗勤学的心是本课程必要前提', 0);
INSERT INTO `courses_course` VALUES (5, '天涯明月笙编程-5', '天涯明月笙编程-5', '<h1 label=\"Title left\" name=\"tl\" style=\"white-space: normal; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; margin: 0px 0px 10px;\"><span style=\"color: rgb(227, 108, 9);\">天涯明月笙</span></h1><p style=\"white-space: normal;\"><span style=\"color: rgb(227, 108, 9);\"><br/> </span></p><table width=\"100%\" bordercolor=\"#95B3D7\"><tbody><tr class=\"firstRow\"><td width=\"200\" class=\"ue_t\" style=\"text-align: center;\"><img src=\"http://127.0.0.1:8002/media/courses/ueditor/avatar_20180115083626_574.jpg\" title=\"\" alt=\"avatar.jpg\" width=\"209\" height=\"211\" style=\"width: 209px; height: 211px;\"/>&nbsp;</td><td><p><br/> </p><p>联系电话：180xxxxxxxx</p><p><br/> </p><p>电子邮件：mxonline@mtianyan.cn</p><p><br/> </p><p>家庭住址：银河系地球中国</p><p><br/> </p></td></tr></tbody></table><h3 style=\"white-space: normal;\"><span style=\"color: rgb(227, 108, 9); font-size: 20px;\">目标职位</span></h3><p style=\"white-space: normal; text-indent: 2em;\">Python相关职位</p><p><br/> </p>', 'zj', 0, 7, 1, 'courses/2018/01/course-mtianyan_7IO0hQp.png', 84, '2018-01-12 06:55:00.000000', 7, '基础必备', '基础', 2, '按时交作业,不然叫家长', '一颗勤学的心是本课程必要前提', 0);
INSERT INTO `courses_course` VALUES (6, '天涯明月笙编程-6', '天涯明月笙编程-6', '<h1 label=\"Title left\" name=\"tl\" style=\"white-space: normal; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; margin: 0px 0px 10px;\"><span style=\"color: rgb(227, 108, 9);\">天涯明月笙</span></h1><p style=\"white-space: normal;\"><span style=\"color: rgb(227, 108, 9);\"><br/></span></p><table width=\"100%\" bordercolor=\"#95B3D7\"><tbody><tr class=\"firstRow\"><td width=\"200\" class=\"ue_t\" style=\"text-align: center;\"><img src=\"http://127.0.0.1:8002/media/courses/ueditor/avatar_20180115083626_574.jpg\" title=\"\" alt=\"avatar.jpg\" width=\"209\" height=\"211\" style=\"width: 209px; height: 211px;\"/>&nbsp;</td><td><p><br/></p><p>联系电话：180xxxxxxxx</p><p><br/></p><p>电子邮件：mxonline@mtianyan.cn</p><p><br/></p><p>家庭住址：银河系地球中国</p><p><br/></p></td></tr></tbody></table><h3 style=\"white-space: normal;\"><span style=\"color: rgb(227, 108, 9); font-size: 20px;\">目标职位</span></h3><p style=\"white-space: normal; text-indent: 2em;\">Python相关职位</p><p><br/></p>', 'zj', 0, 6, 0, 'courses/2018/01/course-mtianyan_8tjuYEn.png', 133, '2018-01-12 06:55:00.000000', 8, '后端开发', 'Django', 9, '按时交作业,不然叫家长', '一颗勤学的心是本课程必要前提', 0);
INSERT INTO `courses_course` VALUES (7, '天涯明月笙编程-7', '天涯明月笙编程-7', '<h1 label=\"Title left\" name=\"tl\" style=\"white-space: normal; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; margin: 0px 0px 10px;\"><span style=\"color: rgb(227, 108, 9);\">天涯明月笙7</span></h1><p style=\"white-space: normal;\"><span style=\"color: rgb(227, 108, 9);\"><br/></span></p><table width=\"100%\" bordercolor=\"#95B3D7\"><tbody><tr class=\"firstRow\"><td width=\"200\" class=\"ue_t\" style=\"text-align: center;\"><img src=\"http://127.0.0.1:8002/media/courses/ueditor/avatar_20180115083626_574.jpg\" title=\"\" alt=\"avatar.jpg\" width=\"209\" height=\"211\" style=\"width: 209px; height: 211px;\"/>&nbsp;</td><td><p><br/></p><p>联系电话：180xxxxxxxx</p><p><br/></p><p>电子邮件：mxonline@mtianyan.cn</p><p><br/></p><p>家庭住址：银河系地球中国</p><p><br/></p></td></tr></tbody></table><h3 style=\"white-space: normal;\"><span style=\"color: rgb(227, 108, 9); font-size: 20px;\">目标职位</span></h3><p style=\"white-space: normal; text-indent: 2em;\">Python相关职位</p><p><br/></p>', 'cj', 0, 8, 1, 'courses/2018/01/course-mtianyan_c4SmGF4.png', 123, '2018-01-13 01:04:00.000000', 12, '人工智能', 'AI', 5, '按时交作业,不然叫家长', '一颗勤学的心是本课程必要前提', 0);
INSERT INTO `courses_course` VALUES (8, '天涯明月笙编程-8', '天涯明月笙编程-8', '<h1 label=\"Title left\" name=\"tl\" style=\"white-space: normal; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; margin: 0px 0px 10px;\"><span style=\"color: rgb(227, 108, 9);\">天涯明月笙8</span></h1><p style=\"white-space: normal;\"><span style=\"color: rgb(227, 108, 9);\"><br/> </span></p><table width=\"100%\" bordercolor=\"#95B3D7\"><tbody><tr class=\"firstRow\"><td width=\"200\" style=\"text-align: center;\"><img src=\"http://mxonlinestatic.mtianyan.cn/courses/ueditor/avatar_20180409160807_231.jpg\" title=\"\" alt=\"avatar.jpg\" width=\"261\" height=\"242\" style=\"width: 261px; height: 242px;\"/>&nbsp;</td><td><p><br/> </p><p>联系电话：180xxxxxxxx</p><p><br/> </p><p>电子邮件：mxonline@mtianyan.cn</p><p><br/> </p><p>家庭住址：银河系地球中国</p><p><br/> </p></td></tr></tbody></table><h3 style=\"white-space: normal;\"><span style=\"color: rgb(227, 108, 9); font-size: 20px;\">目标职位</span></h3><p style=\"white-space: normal; text-indent: 2em;\">Python相关职位</p><p><br/> </p>', 'zj', 0, 16, 1, 'courses/2018/01/course-mtianyan_XaIReTT.png', 198, '2018-01-13 01:05:00.000000', 11, '后端开发', 'Python', NULL, '按时交作业,不然叫家长', '一颗勤学的心是本课程必要前提', 0);
INSERT INTO `courses_course` VALUES (9, '天涯明月笙编程-9', '天涯明月笙编程-9', '<p><img src=\"/media/courses/ueditor/avatar_20180216192350_233.jpg\" title=\"\" alt=\"avatar.jpg\" width=\"209\" height=\"194\" style=\"width: 209px; height: 194px; float: left;\"/> </p><p><img src=\"/media/courses/ueditor/alipay_20180216191732_552.jpg\" title=\"\" alt=\"alipay.jpg\" width=\"188\" height=\"191\" style=\"width: 188px; height: 191px;\"/> <br/> </p>', 'cj', 0, 8, 2, 'courses/2018/04/mtianyan_0BK6RNN.png', 127, '2018-01-13 01:05:00.000000', 10, '后端开发', 'Python', 2, '按时交作业,不然叫家长', '一颗勤学的心是本课程必要前提', 0);
INSERT INTO `courses_course` VALUES (10, '边老师小课堂', '哈哈', '<p>哈哈</p>', 'cj', 0, 6, 1, 'courses/2018/04/course-mtianyan_7u8mi1R.png', 112, '2018-04-08 23:46:00.000000', 16, '哈哈', '哈哈', 14, '按时交作业,不然叫家长', '一颗勤学的心是本课程必要前提', 0);

-- ----------------------------
-- Table structure for courses_courseresource
-- ----------------------------
DROP TABLE IF EXISTS `courses_courseresource`;
CREATE TABLE `courses_courseresource`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `download` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NULL DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_courseresource_course_id_5eba1332_fk_courses_course_id`(`course_id`) USING BTREE,
  CONSTRAINT `courses_courseresource_course_id_5eba1332_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses_courseresource
-- ----------------------------
INSERT INTO `courses_courseresource` VALUES (2, '课程ppt', 'course/resource/2018/01/c.tar.gz', '2018-01-13 05:32:00.000000', 1);
INSERT INTO `courses_courseresource` VALUES (3, '课程源码', 'course/resource/2018/01/media.zip', '2018-01-13 05:32:00.000000', 1);

-- ----------------------------
-- Table structure for courses_lesson
-- ----------------------------
DROP TABLE IF EXISTS `courses_lesson`;
CREATE TABLE `courses_lesson`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NULL DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_lesson_course_id_16bc4882_fk_courses_course_id`(`course_id`) USING BTREE,
  CONSTRAINT `courses_lesson_course_id_16bc4882_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses_lesson
-- ----------------------------
INSERT INTO `courses_lesson` VALUES (2, '第一章 开发环境搭建', '2018-01-13 04:58:00.000000', 1);
INSERT INTO `courses_lesson` VALUES (3, '第二章 基础知识回顾', '2018-01-13 04:59:00.000000', 1);
INSERT INTO `courses_lesson` VALUES (4, '第三章 通过留言板功能进行复习', '2018-01-13 04:59:00.000000', 1);
INSERT INTO `courses_lesson` VALUES (5, '第四章 xadmin快速搭建后台', '2018-01-13 04:59:00.000000', 1);
INSERT INTO `courses_lesson` VALUES (6, '第五章 登录注册功能实现', '2018-01-13 05:00:00.000000', 1);
INSERT INTO `courses_lesson` VALUES (7, '第六章 课程机构功能实现', '2018-01-13 05:00:00.000000', 1);
INSERT INTO `courses_lesson` VALUES (8, '第七章 课程列表功能实现', '2018-01-13 05:01:00.000000', 1);
INSERT INTO `courses_lesson` VALUES (9, '第八章 课程讲师功能实现', '2018-01-13 05:01:00.000000', 1);
INSERT INTO `courses_lesson` VALUES (10, '第九章 个人中心和全局搜索功能实现', '2018-01-13 05:01:00.000000', 1);
INSERT INTO `courses_lesson` VALUES (11, '第十章 首页全局功能细节', '2018-01-13 05:01:00.000000', 1);

-- ----------------------------
-- Table structure for courses_video
-- ----------------------------
DROP TABLE IF EXISTS `courses_video`;
CREATE TABLE `courses_video`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NULL DEFAULT NULL,
  `lesson_id` int(11) NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `learn_times` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_video_lesson_id_59f2396e_fk_courses_lesson_id`(`lesson_id`) USING BTREE,
  CONSTRAINT `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses_video
-- ----------------------------
INSERT INTO `courses_video` VALUES (2, '1.1 helloworld', '2018-01-13 05:04:00.000000', 2, 'http://of66as8gb.bkt.clouddn.com/12.2%20xss%E6%94%BB%E5%87%BB%E5%8E%9F%E7%90%86%E5%8F%8A%E9%98%B2%E8%8C%83.mp4', 0);
INSERT INTO `courses_video` VALUES (3, '1.2 windows下软件下载', '2018-01-13 05:04:00.000000', 2, 'http://blog.mtianyan.cn/', 0);
INSERT INTO `courses_video` VALUES (4, '1.3 Navicat使用指南', '2018-01-13 05:05:00.000000', 2, 'http://blog.mtianyan.cn/', 0);
INSERT INTO `courses_video` VALUES (5, '1.4 mysql安装与配置', '2018-01-13 05:05:00.000000', 2, 'http://blog.mtianyan.cn/', 0);
INSERT INTO `courses_video` VALUES (6, '2.1 基础唐诗背诵', '2018-01-13 05:05:00.000000', 3, 'http://blog.mtianyan.cn/', 0);
INSERT INTO `courses_video` VALUES (7, '2.2 基础宋词悲伤', '2018-01-13 05:05:00.000000', 3, 'http://blog.mtianyan.cn/', 0);
INSERT INTO `courses_video` VALUES (8, '2.3 基础舞蹈学习', '2018-01-13 05:06:00.000000', 3, 'http://blog.mtianyan.cn/', 0);
INSERT INTO `courses_video` VALUES (9, '2.3 基础礼仪学习', '2018-01-13 05:06:00.000000', 3, 'http://blog.mtianyan.cn/', 0);
INSERT INTO `courses_video` VALUES (10, '3-1 django目录介绍', '2018-01-13 05:06:00.000000', 4, 'http://blog.mtianyan.cn/', 0);
INSERT INTO `courses_video` VALUES (11, '3-2 配置表单页面', '2018-01-13 05:07:00.000000', 4, 'http://blog.mtianyan.cn/', 0);
INSERT INTO `courses_video` VALUES (12, '3-3 django orm介绍', '2018-01-13 05:07:00.000000', 4, 'http://blog.mtianyan.cn/', 0);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NULL DEFAULT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (11, '2018-01-09 06:21:10.606000', '12', 'mtianyan123', 1, '已添加。', 7, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (26, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (27, 'courses', 'bannercourse');
INSERT INTO `django_content_type` VALUES (10, 'courses', 'course');
INSERT INTO `django_content_type` VALUES (13, 'courses', 'courseresource');
INSERT INTO `django_content_type` VALUES (11, 'courses', 'lesson');
INSERT INTO `django_content_type` VALUES (12, 'courses', 'video');
INSERT INTO `django_content_type` VALUES (15, 'operation', 'coursecomments');
INSERT INTO `django_content_type` VALUES (14, 'operation', 'userask');
INSERT INTO `django_content_type` VALUES (18, 'operation', 'usercourse');
INSERT INTO `django_content_type` VALUES (16, 'operation', 'userfavorite');
INSERT INTO `django_content_type` VALUES (17, 'operation', 'usermessage');
INSERT INTO `django_content_type` VALUES (19, 'organization', 'citydict');
INSERT INTO `django_content_type` VALUES (20, 'organization', 'courseorg');
INSERT INTO `django_content_type` VALUES (21, 'organization', 'teacher');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (9, 'users', 'banner');
INSERT INTO `django_content_type` VALUES (8, 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES (7, 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES (22, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (25, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (23, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (24, 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2018-01-08 12:28:40.425000');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2018-01-08 12:28:41.780000');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2018-01-08 12:28:42.111000');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2018-01-08 12:28:42.142000');
INSERT INTO `django_migrations` VALUES (5, 'contenttypes', '0002_remove_content_type_name', '2018-01-08 12:28:42.285000');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0002_alter_permission_name_max_length', '2018-01-08 12:28:42.396000');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0003_alter_user_email_max_length', '2018-01-08 12:28:42.468000');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0004_alter_user_username_opts', '2018-01-08 12:28:42.484000');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0005_alter_user_last_login_null', '2018-01-08 12:28:42.537000');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0006_require_contenttypes_0002', '2018-01-08 12:28:42.542000');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0007_alter_validators_add_error_messages', '2018-01-08 12:28:42.556000');
INSERT INTO `django_migrations` VALUES (12, 'sessions', '0001_initial', '2018-01-08 12:28:42.606000');
INSERT INTO `django_migrations` VALUES (13, 'users', '0001_initial', '2018-01-08 14:51:15.757000');
INSERT INTO `django_migrations` VALUES (14, 'courses', '0001_initial', '2018-01-08 20:29:09.374000');
INSERT INTO `django_migrations` VALUES (15, 'operation', '0001_initial', '2018-01-08 20:29:09.863000');
INSERT INTO `django_migrations` VALUES (16, 'organization', '0001_initial', '2018-01-08 20:29:10.041000');
INSERT INTO `django_migrations` VALUES (17, 'users', '0002_auto_20180109_0429', '2018-01-08 20:29:10.166000');
INSERT INTO `django_migrations` VALUES (18, 'users', '0003_auto_20180109_0522', '2018-01-08 21:22:17.664000');
INSERT INTO `django_migrations` VALUES (19, 'xadmin', '0001_initial', '2018-01-09 06:43:52.050000');
INSERT INTO `django_migrations` VALUES (20, 'xadmin', '0002_log', '2018-01-09 17:43:32.975000');
INSERT INTO `django_migrations` VALUES (21, 'xadmin', '0003_auto_20160715_0100', '2018-01-09 17:43:33.066000');
INSERT INTO `django_migrations` VALUES (22, 'captcha', '0001_initial', '2018-01-10 19:31:57.529000');
INSERT INTO `django_migrations` VALUES (23, 'courses', '0002_auto_20180110_1931', '2018-01-10 19:31:57.568000');
INSERT INTO `django_migrations` VALUES (24, 'users', '0004_auto_20180110_1931', '2018-01-10 19:31:57.844000');
INSERT INTO `django_migrations` VALUES (25, 'organization', '0002_auto_20180111_2046', '2018-01-11 20:47:25.503000');
INSERT INTO `django_migrations` VALUES (26, 'organization', '0003_auto_20180112_0236', '2018-01-12 02:36:59.643000');
INSERT INTO `django_migrations` VALUES (27, 'courses', '0003_course_course_org', '2018-01-12 23:28:11.032000');
INSERT INTO `django_migrations` VALUES (28, 'organization', '0004_teacher_image', '2018-01-12 23:40:13.998000');
INSERT INTO `django_migrations` VALUES (29, 'courses', '0004_course_category', '2018-01-13 03:58:25.272000');
INSERT INTO `django_migrations` VALUES (30, 'courses', '0005_course_tag', '2018-01-13 03:59:44.568000');
INSERT INTO `django_migrations` VALUES (31, 'courses', '0006_video_url', '2018-01-13 05:10:42.032000');
INSERT INTO `django_migrations` VALUES (32, 'courses', '0007_video_learn_times', '2018-01-13 05:27:05.229000');
INSERT INTO `django_migrations` VALUES (33, 'courses', '0008_course_teacher', '2018-01-13 05:47:37.860000');
INSERT INTO `django_migrations` VALUES (34, 'courses', '0009_remove_course_teacher', '2018-01-13 06:03:46.902000');
INSERT INTO `django_migrations` VALUES (35, 'courses', '0010_course_teacher', '2018-01-13 06:05:39.962000');
INSERT INTO `django_migrations` VALUES (36, 'courses', '0011_auto_20180113_0619', '2018-01-13 06:19:30.469000');
INSERT INTO `django_migrations` VALUES (37, 'organization', '0005_teacher_age', '2018-01-14 01:27:31.857000');
INSERT INTO `django_migrations` VALUES (38, 'users', '0005_auto_20180114_0556', '2018-01-14 05:56:25.556000');
INSERT INTO `django_migrations` VALUES (39, 'courses', '0012_course_is_banner', '2018-01-15 04:41:46.704000');
INSERT INTO `django_migrations` VALUES (40, 'organization', '0006_courseorg_tag', '2018-01-15 04:42:09.183000');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_de54fa62`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('0ohi0xg9auqhrti3cey5gwqlzopt9v8b', 'MjA0YTNkNTFjNTBhZWZkNGI2ZThlMWM1OGNlOTgxZDdlOWM0YzQzYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-01-23 23:44:34.793000');
INSERT INTO `django_session` VALUES ('0pixzycermaloo5bxfuhts6nyf3yys7b', 'OTJjMGY2NmI2NDliNjNhNjgwYzU3ZTJkYzc1YjU3MGQ4OWEzYmYyYjp7Il9hdXRoX3VzZXJfaGFzaCI6IjZjZTk5NzUyNzZiZDdlM2QyZjM3MjY5OTE3OTllNzczMmEwZTExMDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Ijk5In0=', '2018-04-17 02:40:28.675160');
INSERT INTO `django_session` VALUES ('127zhmizoy10gc0w3tc4ou9crciktrov', 'MjMzNzY1ZGYyODkxMzRhZDlkYzA4NmE1ZDA4YTFmNDQxZTc4ZmIxNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjkxNDk4ZGM3OGJhZjU5YTBhNGQ5OWMyZDFmNGM1ZDhlZWQzYWMxODUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjExMyJ9', '2018-04-21 10:30:48.779862');
INSERT INTO `django_session` VALUES ('17j9yl2f6ktbcs0l3niutjn8e0ukb8jj', 'ZjI4MGI5NWI0NGY2OTE4ZGIyNjg2YmZlNjZkOTdjZjA2Y2Q4NmI3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-01-28 02:25:47.122000');
INSERT INTO `django_session` VALUES ('19b6oc45vwi9tsrtua95zwapsk2egtrw', 'ZjI4MGI5NWI0NGY2OTE4ZGIyNjg2YmZlNjZkOTdjZjA2Y2Q4NmI3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-01-27 04:10:34.136000');
INSERT INTO `django_session` VALUES ('1q2tn9q85otep9ud6qxx9hmz5icctko0', 'NTdmYzE2N2QyMWY1MTg3YTM0ZjhjNjUzZGI4NTQ5MDAyN2M2MDJlYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1siYXV0aCIsImdyb3VwIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiI0MzhhOTY0ZjNiZTBiOWYwZmU4OWI4MjRiOGE3YWU3NzU0MzNkMWY3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', '2018-01-24 00:43:54.413000');
INSERT INTO `django_session` VALUES ('267pyt6rb2zs313geiai82oowano6hin', 'MDEwMWE5ZDk0YWU2YzVjMTBkYmZjMGJlMjI2ZmM0MDM3ZjJmODVkNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiTElTVF9RVUVSWSI6W1siY291cnNlcyIsImNvdXJzZXJlc291cmNlIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiI0MzhhOTY0ZjNiZTBiOWYwZmU4OWI4MjRiOGE3YWU3NzU0MzNkMWY3IiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-01-23 20:51:41.521000');
INSERT INTO `django_session` VALUES ('2f9cz251syg0ku39m6kmoz7ozzxtp3vi', 'ZjI4MGI5NWI0NGY2OTE4ZGIyNjg2YmZlNjZkOTdjZjA2Y2Q4NmI3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-01-28 02:23:46.086000');
INSERT INTO `django_session` VALUES ('2fea6xrxbtsawbo8ed6g0bdj3h72ah0t', 'NzQwY2YyMjZiZDcyNzE2MmY5MDg5ZGNhZTA5ZmM4YjhkNzc3MDcwMjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg1OTFkZTEwZTFhMmJkMDhiZjg0NDAyNzBkNGFmNjFjZDdjODZhMDIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyNyJ9', '2018-04-24 20:05:07.256817');
INSERT INTO `django_session` VALUES ('2ou0on7rd10xv0g9xknui7yqmutsj5gu', 'YzA4M2FiOTZkYjE1YmZiZDJkYjk1NmQ0M2Y1MGNlNDVkNjAyYTA1Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1sib3JnYW5pemF0aW9uIiwiY291cnNlb3JnIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiI0MzhhOTY0ZjNiZTBiOWYwZmU4OWI4MjRiOGE3YWU3NzU0MzNkMWY3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCJ9', '2018-01-26 02:58:56.247000');
INSERT INTO `django_session` VALUES ('2vjjv73mrt4a0ytfuv2huiu6z05qavfh', 'NGVmY2M0ZDJjZjMzYWFlMjRjODZiYTA0YWEwN2QxYTk2NDRiZGQyOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjAxZDZlNDY5NWE2OGRiNTBlMDljYjFlZmQyZTgwNzM4YzI0MzhkOGYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQyIn0=', '2018-03-27 20:28:17.006324');
INSERT INTO `django_session` VALUES ('2y5j5s6uw4odo0cpbelrgib37966soh3', 'ZDY0OTM5NzI5ZjM5MGI4Mjk3OWFmM2QyMjVhNTFjZjEyZjVlNDVjMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1siY291cnNlcyIsImNvdXJzZXJlc291cmNlIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiI0MzhhOTY0ZjNiZTBiOWYwZmU4OWI4MjRiOGE3YWU3NzU0MzNkMWY3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', '2018-01-23 20:33:17.141000');
INSERT INTO `django_session` VALUES ('3haqxks59ucsbrtgb7mwxf7czefcsx85', 'ZjI4MGI5NWI0NGY2OTE4ZGIyNjg2YmZlNjZkOTdjZjA2Y2Q4NmI3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-01-28 02:27:00.366000');
INSERT INTO `django_session` VALUES ('43dtxrb3k73cc5ldxzc7kk47jscvismd', 'NWU0MWQwY2UwZmI3ZGE4MmI1MzZhZmVhNTRkMWU1Y2NhNmU1YzU1YTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc5MTE4NjBhZGIxMDhkMGY1NWIyNDk5OWQwMjNhZTc2ZmVmNWExMTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjExOCJ9', '2018-04-21 22:53:59.599710');
INSERT INTO `django_session` VALUES ('4567dcb42jmreahk2zslout0jrwoidnr', 'YjRkZTEwYjVjODU1N2JlMjNhODA3YWRlMzU5ZDQ5NGY3YWJmYjk1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjU0NmQ2NTJiYjBjZGQ2MjEzZDFlNDY5MmJlYzMxYzE0NjljZGJlZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMyIn0=', '2018-01-27 22:08:05.257000');
INSERT INTO `django_session` VALUES ('4dh5sihz7fuy6wsfvl7uf34h8dlzeyx7', 'NDRjY2QzNTdiNzhhMjI4NTU4MmQ5ZTg2M2RjYTAyNTdkZmE2YTJhMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjVkOWI3M2RhYTRmMWExYjkxOTUyMDhhYTkyM2M1MmYzNjJmZjdjOWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Ijc4In0=', '2018-04-10 19:21:48.137777');
INSERT INTO `django_session` VALUES ('4ekym2nreht2pnj2f3onqr7auvkniih5', 'MjkwZGJiOTA3NGRkZThhM2Q1M2ZiZmMwMmE5OGM4NDNkNTA1NTM0ODp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc0Nzg5MmJkYTdiYWI1NGQ5ZTRiMThmYWQ5MWU3NDFhZTMwY2VhNDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyMyJ9', '2018-04-22 21:15:30.922973');
INSERT INTO `django_session` VALUES ('4irnftu3m5zux311xxthbe1378bhhnk8', 'ZWJjNTI2YjU3MjU1NDRkZTAzMTY3NTYxYzc5NjA0YzE1NTI4M2ZkZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImQyNTdiODI5ZTlkNWIxYWQ0YWE4ZDdiNzgwNjQzMGNlZDNjZTg2ZjYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyOCJ9', '2018-04-24 22:34:58.526107');
INSERT INTO `django_session` VALUES ('4szjjvm1vfoh0edioxrz2ry9h5jd9gez', 'NWM4OGRmMDRhMzFiMzIzYzMxYTQzMDhlMTA1ODE3MGZhMzc0YTM1Mjp7Il9hdXRoX3VzZXJfaGFzaCI6ImE0MTMxZTU4MGM5ODBlOGY0MWZmMGI5Mjk0OTFkY2JhNmNjNTFiMGYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE2MSJ9', '2018-05-03 17:40:31.349219');
INSERT INTO `django_session` VALUES ('4t0htfaa61i3cz92ds5w8phjdch0y2sy', 'MjFhMGYxMDVhODdhN2IwMDkxMDVkMzk0N2NmM2EwZGVhOTFlMjc2Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjBkOGY4MmE3OWQ1Y2RjYjMyZTcyYjg0YTBmMzc5OTA3N2I5NDA3YzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjM4In0=', '2018-03-27 10:14:40.721414');
INSERT INTO `django_session` VALUES ('5386mwn28pc5363k2ardri4dhccwtpq0', 'ZjI4MGI5NWI0NGY2OTE4ZGIyNjg2YmZlNjZkOTdjZjA2Y2Q4NmI3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-01-28 02:21:37.260000');
INSERT INTO `django_session` VALUES ('55bybjdfwej3zpo67mnou444qjzye6u9', 'NWQ2MWY2OTY5YTdlYWMwZmNlNTRjOTE5NGY2MWNiOWZmZjE5ODZjMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImVkYjBiNjA2OTIwNWZjNDBhMjQ2M2U0NjJlMWEzYzNhN2M0ZjRjZTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjU5In0=', '2018-04-10 19:22:52.851380');
INSERT INTO `django_session` VALUES ('5j1lo8vb2pn77sm3glmugu444kjm7onc', 'MjA0YTNkNTFjNTBhZWZkNGI2ZThlMWM1OGNlOTgxZDdlOWM0YzQzYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-01-23 23:41:46.086000');
INSERT INTO `django_session` VALUES ('5kf2gugbbkbou7whuwysxpnno931zuhj', 'NjY5ODZjMTY0YWE2NGE4Y2EwOTc5MTE3YWY4YjI5ODA1MDQwNDM3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjlhZGE3NWIwMDI0ZWU0NTQ1OTJjNjY2NWM3MzYwZjkwN2Q2MzM2YWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-01-28 05:23:49.026000');
INSERT INTO `django_session` VALUES ('5y4hpngjdv56o4mbuhdgk09biz3pv9qw', 'ZjI4MGI5NWI0NGY2OTE4ZGIyNjg2YmZlNjZkOTdjZjA2Y2Q4NmI3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-01-28 02:24:40.049000');
INSERT INTO `django_session` VALUES ('6lsb2bgkru7k2zjxfwst18v4b7hxclbv', 'ZjI4MGI5NWI0NGY2OTE4ZGIyNjg2YmZlNjZkOTdjZjA2Y2Q4NmI3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-01-28 02:24:11.142000');
INSERT INTO `django_session` VALUES ('6mqdljc0xageh93cjoafqdcxeqa1lnuk', 'Mjc4MjIzMjUyMDM2ZWMyYzQ3MzNjYTdhZjVkMmEwOWEwOWEyZTNlMjp7Il9hdXRoX3VzZXJfaGFzaCI6ImM3YzZmNzVhMTM3MDBmNzI5ZmVjNzg2NTliZmE3OTFiZDI4NmIxZmYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMzIn0=', '2018-01-27 22:49:19.583000');
INSERT INTO `django_session` VALUES ('6xhvk8qqwu2bcfqysswrr17emxj01gem', 'MDk0ODE0MmZjNzc2ZDE5ZjI0ZDczZTY1Mjg2YTUxNzhjMTRlYWY1ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjkwOThiNDg4ZDk5ZTk4MGQzMjJjNjE4M2I3YTE0YjdjYjcxZWE1MTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3NiJ9', '2018-05-19 20:11:37.338347');
INSERT INTO `django_session` VALUES ('70oc8g2nz5dcmzn099l7t56qi2a6ei34', 'OTU1MmE2OGRiMmUzZmNjZDBlOGQzYzhlNmNiNzVjMDUwMGY2MGJhNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjIyZTM1OGViOTBiYTYwM2I5ZjZkNjRkOWNkOGYwMjA0MTViYjkzYzIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Ijk1In0=', '2018-04-16 12:54:03.483517');
INSERT INTO `django_session` VALUES ('7lirtf91qnjzv0xalhd9nu0sxkqnw7in', 'NzExZjI2NjU2OTU1ZmUzNWU0M2E1YmQzMDVmOGIzM2YyMzU4N2E1Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1sib3BlcmF0aW9uIiwidXNlcmZhdm9yaXRlIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiI0MzhhOTY0ZjNiZTBiOWYwZmU4OWI4MjRiOGE3YWU3NzU0MzNkMWY3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', '2018-01-23 22:28:59.551000');
INSERT INTO `django_session` VALUES ('7pkx7m1aefxk4bfav0l2oi6xy6nd1pp5', 'NjU2NDA0YTcxMmFjNzc0ZTlkMTdlZDQwMjE4YmNjNjc5NjdkODIzNzp7Il9hdXRoX3VzZXJfaGFzaCI6ImIyZjE0OTZlNzExOThlZTkyMzdjZGIwNGM0ZWI3MGM1Y2U0MGQ1MjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyMiJ9', '2018-05-04 10:28:21.271634');
INSERT INTO `django_session` VALUES ('7sy7nfv93xlma9bp6cbjn74285kpbjhz', 'OTk4NzZmZmJlMjBmNzhhZmE1YjRkZmMwZjE4MjcyOWJkM2M3NzdkYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJvcGVyYXRpb24iLCJjb3Vyc2Vjb21tZW50cyJdLCIiXSwibmF2X21lbnUiOiJbe1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NpdHlkaWN0L1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNywgXCJ0aXRsZVwiOiBcIlx1NTdjZVx1NWUwMlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vY291cnNlb3JnL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxOCwgXCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1NjczYVx1Njc4NFwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vdGVhY2hlci9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTksIFwidGl0bGVcIjogXCJcdTY1NTlcdTVlMDhcIn1dLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NpdHlkaWN0L1wiLCBcInRpdGxlXCI6IFwiXHU2NzNhXHU2Nzg0XHU0ZmUxXHU2MDZmXCJ9LCB7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi91c2Vycy91c2VycHJvZmlsZS9cIiwgXCJpY29uXCI6IFwiZmEgZmEtdXNlclwiLCBcIm9yZGVyXCI6IDMsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTRmZTFcdTYwNmZcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvZW1haWx2ZXJpZnlyZWNvcmQvXCIsIFwiaWNvblwiOiBcImZhIGZhLWVudmVsb3BlXCIsIFwib3JkZXJcIjogNSwgXCJ0aXRsZVwiOiBcIlx1OTBhZVx1N2JiMVx1OWE4Y1x1OGJjMVx1NzgwMVwifSwge1widXJsXCI6IFwiL3hhZG1pbi91c2Vycy9iYW5uZXIvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogNiwgXCJ0aXRsZVwiOiBcIlx1OGY2ZVx1NjRhZFx1NTZmZVwifV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wiLCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU0ZmUxXHU2MDZmXCJ9LCB7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmFzay9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTIsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTU0YThcdThiZTJcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJjb3Vyc2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDEzLCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU4YmZlXHU3YTBiXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VybWVzc2FnZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTQsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTZkODhcdTYwNmZcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL2NvdXJzZWNvbW1lbnRzL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNSwgXCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1OGJjNFx1OGJiYVwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmZhdm9yaXRlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNiwgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NjUzNlx1ODVjZlwifV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmZhdm9yaXRlL1wiLCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU2NGNkXHU0ZjVjXCJ9LCB7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wiLCBcImljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJvcmRlclwiOiAyMSwgXCJ0aXRsZVwiOiBcIlx1NjVlNVx1NWZkN1x1OGJiMFx1NWY1NVwifV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4veGFkbWluL2xvZy9cIiwgXCJ0aXRsZVwiOiBcIlx1N2JhMVx1NzQwNlwifSwge1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4vYXV0aC9ncm91cC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJvcmRlclwiOiAyLCBcInRpdGxlXCI6IFwiXHU3ZWM0XCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDQsIFwidGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIn1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1sb2NrXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9hdXRoL3Blcm1pc3Npb24vXCIsIFwidGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIn0sIHtcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvYmFubmVyY291cnNlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA3LCBcInRpdGxlXCI6IFwiXHU4ZjZlXHU2NGFkXHU4YmZlXHU3YTBiXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvY291cnNlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA4LCBcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvbGVzc29uL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA5LCBcInRpdGxlXCI6IFwiXHU3YWUwXHU4MjgyXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvdmlkZW8vXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDEwLCBcInRpdGxlXCI6IFwiXHU4OWM2XHU5ODkxXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvY291cnNlcmVzb3VyY2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDExLCBcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU4ZDQ0XHU2ZTkwXCJ9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2NvdXJzZXMvbGVzc29uL1wiLCBcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU0ZmUxXHU2MDZmXCJ9XSIsIl9hdXRoX3VzZXJfaGFzaCI6ImRhNzA3NjJhZDE2MzY5YjAxMWVkNDkxMmY1NjA1ZDQ1MmI4NjIwN2MiLCJfYXV0aF91c2VyX2lkIjoiNDUifQ==', '2018-04-30 16:41:20.134629');
INSERT INTO `django_session` VALUES ('7x4sanp7b2c2hia1iiy0s04latwh0d1t', 'MGRlOWViOWUwNWViNDEyMmNiNWM1NjkzZWU1OTk2ZDcyMjM5MWQxNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1siY291cnNlcyIsImNvdXJzZSJdLCIiXSwiX2F1dGhfdXNlcl9oYXNoIjoiNDM4YTk2NGYzYmUwYjlmMGZlODliODI0YjhhN2FlNzc1NDMzZDFmNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQifQ==', '2018-01-26 06:45:15.654000');
INSERT INTO `django_session` VALUES ('7zeokhdlxhpwsqnczhce3pwyoe74f4yb', 'MmVjYzg5MjY3ZDAzNTA1MWFiM2I2MzdiZTJiMWExMWQ4YzllMTMxZTp7Il9hdXRoX3VzZXJfaWQiOiI0NSIsIkxJU1RfUVVFUlkiOltbIm9yZ2FuaXphdGlvbiIsImNpdHlkaWN0Il0sIiJdLCJuYXZfbWVudSI6Ilt7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vY2l0eWRpY3QvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE3LCBcInRpdGxlXCI6IFwiXHU1N2NlXHU1ZTAyXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL29yZ2FuaXphdGlvbi9jb3Vyc2VvcmcvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE4LCBcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU2NzNhXHU2Nzg0XCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL29yZ2FuaXphdGlvbi90ZWFjaGVyL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxOSwgXCJ0aXRsZVwiOiBcIlx1NjU1OVx1NWUwOFwifV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vY2l0eWRpY3QvXCIsIFwidGl0bGVcIjogXCJcdTY3M2FcdTY3ODRcdTRmZTFcdTYwNmZcIn0sIHtcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wiLCBcImljb25cIjogXCJmYSBmYS11c2VyXCIsIFwib3JkZXJcIjogMywgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NGZlMVx1NjA2ZlwifSwge1widXJsXCI6IFwiL3hhZG1pbi91c2Vycy9lbWFpbHZlcmlmeXJlY29yZC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZW52ZWxvcGVcIiwgXCJvcmRlclwiOiA1LCBcInRpdGxlXCI6IFwiXHU5MGFlXHU3YmIxXHU5YThjXHU4YmMxXHU3ODAxXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL2Jhbm5lci9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJvcmRlclwiOiA2LCBcInRpdGxlXCI6IFwiXHU4ZjZlXHU2NGFkXHU1NmZlXCJ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtdXNlclwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vdXNlcnMvdXNlcnByb2ZpbGUvXCIsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTRmZTFcdTYwNmZcIn0sIHtcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyYXNrL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxMiwgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NTRhOFx1OGJlMlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmNvdXJzZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTMsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdThiZmVcdTdhMGJcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJtZXNzYWdlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNCwgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NmQ4OFx1NjA2ZlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vY291cnNlY29tbWVudHMvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE1LCBcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU4YmM0XHU4YmJhXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyZmF2b3JpdGUvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE2LCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU2NTM2XHU4NWNmXCJ9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyZmF2b3JpdGUvXCIsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY0Y2RcdTRmNWNcIn0sIHtcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDIxLCBcInRpdGxlXCI6IFwiXHU2NWU1XHU1ZmQ3XHU4YmIwXHU1ZjU1XCJ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wiLCBcInRpdGxlXCI6IFwiXHU3YmExXHU3NDA2XCJ9LCB7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi9hdXRoL2dyb3VwL1wiLCBcImljb25cIjogXCJmYSBmYS1ncm91cFwiLCBcIm9yZGVyXCI6IDIsIFwidGl0bGVcIjogXCJcdTdlYzRcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vYXV0aC9wZXJtaXNzaW9uL1wiLCBcImljb25cIjogXCJmYSBmYS1sb2NrXCIsIFwib3JkZXJcIjogNCwgXCJ0aXRsZVwiOiBcIlx1Njc0M1x1OTY1MFwifV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWxvY2tcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJ0aXRsZVwiOiBcIlx1OGJhNFx1OGJjMVx1NTQ4Y1x1NjM4OFx1Njc0M1wifSwge1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy9iYW5uZXJjb3Vyc2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDcsIFwidGl0bGVcIjogXCJcdThmNmVcdTY0YWRcdThiZmVcdTdhMGJcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy9jb3Vyc2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDgsIFwidGl0bGVcIjogXCJcdThiZmVcdTdhMGJcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy9sZXNzb24vXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDksIFwidGl0bGVcIjogXCJcdTdhZTBcdTgyODJcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy92aWRlby9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTAsIFwidGl0bGVcIjogXCJcdTg5YzZcdTk4OTFcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy9jb3Vyc2VyZXNvdXJjZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTEsIFwidGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdThkNDRcdTZlOTBcIn1dLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vY291cnNlcy9sZXNzb24vXCIsIFwidGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdTRmZTFcdTYwNmZcIn1dIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGE3MDc2MmFkMTYzNjliMDExZWQ0OTEyZjU2MDVkNDUyYjg2MjA3YyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQifQ==', '2018-04-25 19:20:00.027955');
INSERT INTO `django_session` VALUES ('8i5tinwqgqyb4yc6ykyua8mc9b5d4kz9', 'NmY4MmY2NTg0NWZiMWMxNGVhMjQyMTY1MTA0YzczMmVlZGYyYzY5NTp7Il9hdXRoX3VzZXJfaGFzaCI6ImIwMzc1NmU5OGQzNzFhYTU5MzI1MzViNzRlMjZiODBiMTFiNGYxMjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEwNSJ9', '2018-05-20 20:56:14.727553');
INSERT INTO `django_session` VALUES ('8o1hmszxn5lqhbcl208rsvyspoo4peyp', 'NTYzZjM4NTUyYzc2ZmQxNzI0OTQ2Y2I3MGMzODBlODVlN2MyZjVjZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ4ZGZhZjQwZWFiMDhkOGU3OTAzOTMxNWUzNTcxZGYzZDk4Njk1NTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9', '2018-05-19 17:34:52.197505');
INSERT INTO `django_session` VALUES ('952npw9eqkg9u441swwh8pst48p9fl8f', 'ZjlhMDM2MmU5MjYxZWY2OTFjYTg2NGNiZGIyMjAwZjJhOTUxNGFjYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjNjZTIyMmU4MDE3ZWExYzVhZGRlY2MyMjU2MTk4Zjg3MzA3ZWZhOTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjkyIn0=', '2018-04-15 09:25:37.361713');
INSERT INTO `django_session` VALUES ('9bt8mrrmixzr5viun1r0j087ld6qjukp', 'NWQ2MDVjNDZjOGQ4YTY1N2M1N2RjMzZhZTJjMGQ3OTdhNTc3ZWI1ODp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQifQ==', '2018-01-28 02:04:55.919000');
INSERT INTO `django_session` VALUES ('9ddqtxc21jqo4d2bp1c6etf8qywg2qlh', 'NjQ1YWNjNGFhMjAxZTI1YzIxOTgwNjMzNzc5OTczYjQ2NWFkZjgwNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjA0MTMzNjQ3ZDJmZjZiYzBlNGQxZjQ5MGZmYzA0OTM4YWE4OGMxMDYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEwMiJ9', '2018-04-17 19:44:27.371778');
INSERT INTO `django_session` VALUES ('9enbhh3hu1j5zjm0s2v3myu5bwggfai2', 'YjdkYTcyZmJjMWU0ZjhmZDA2ZTcyMmY3N2ViMjg0Mjk0YmY3NDM3Njp7Il9hdXRoX3VzZXJfaGFzaCI6ImY4OTAzMTc0MTg1MWIzMGQwYzE2ZDk1NjAxNmE3YTUxYjhhMjEzYTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMxIn0=', '2018-01-25 07:41:26.233000');
INSERT INTO `django_session` VALUES ('9fvkkg46wwxpqaejb88nb2w5gvtwaihj', 'MjA0YTNkNTFjNTBhZWZkNGI2ZThlMWM1OGNlOTgxZDdlOWM0YzQzYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-01-23 05:50:46.518000');
INSERT INTO `django_session` VALUES ('9jr79v4vkmhf1ig1f0w5r9t422aegdsp', 'NzY2Nzc1NjViYTQ2YjBhZGMyZTY5MzQ5M2Y3ZGY4YWFjNTkzYzNjYjp7Il9hdXRoX3VzZXJfaGFzaCI6ImE2N2UxNTI2OWRjM2MwZDg1OWFkMGQ0ZGEzZTMyMDM5MjE2Yzc4YTYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3OSJ9', '2018-05-20 16:16:32.446356');
INSERT INTO `django_session` VALUES ('9myybx5bxitk2mnrhk7ot2tzwobj96zi', 'OTBiYWU4MzE4MjhmYzdmNGUzM2U2ZjM3YzA3ZmU5NzMwNmRkNzU0NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjA0YTdkODQwZTk0NjFiMDA2N2IyYzUzODkxMjRjOTMyYTBmMzg0NjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjM5In0=', '2018-03-27 10:23:04.052326');
INSERT INTO `django_session` VALUES ('9wi9js5xxyaco320do1vw5on2lmkqwyx', 'MTBiOWQwZWQxNTg3NGVhNWExMTc0Yzk5MjFmMmQ2YjY1ZTUwM2ViMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjFmMzc1OTZjMzIwZTVjZDQ1ZjYxNGQyZWExNzI1NjQwZDg4NTg1NTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE0NCJ9', '2018-04-27 21:58:39.354946');
INSERT INTO `django_session` VALUES ('a1a0sfn45qdrfzqex2zxs9pf4xsyad92', 'MjMwOTA3MjUyOThhYWQ3YzU0OGY4M2FmOTc2MTI3MjYxNjg3MWUzMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjVjOTkyY2M5OWM2ZWMwNzY2ZTk5ZWUwYjY4ZmNjMDNmNmE1YjYwMDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjExMCJ9', '2018-04-20 09:38:47.376678');
INSERT INTO `django_session` VALUES ('bc0ry6rluj5s73jwxvjq4ioj0m8rcwnb', 'MTJhMzE5ZTFmYjJmOTk1Nzk1ZWNhZjY1YTM5YWQ2NWUzNmExNTMyZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ3ZjA3NWI5ZmU4NjhhZWViNmM1OTI2NjkyMWI5OGY5NWYyYTYxMjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjUxIn0=', '2018-04-01 19:44:26.834920');
INSERT INTO `django_session` VALUES ('bkyv01uz3xq2xk2fhu9px1i6xo74ktq3', 'ZjAzZTlkYzkyYjA1MGZmNGRiNzRiYzgxNGRmNDBkNWYzNTYwOTNlNzp7Il9hdXRoX3VzZXJfaGFzaCI6ImQyYWZiZTZiMzYzNzZjODkyM2Y2ZDA2Y2YxNzYwM2YwYmM3ZjY5MDQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjU1In0=', '2018-04-02 18:35:06.032293');
INSERT INTO `django_session` VALUES ('bqmquchjlf53bwb2zeh976st2zqgz8lj', 'YTQ0OTUyZjNlNzI3MjA5ZDc1YmM3ZWIwY2E2MzA3OWQ2ZmNmNzFmNzp7Il9hdXRoX3VzZXJfaGFzaCI6ImU2NzVmMGY1MTY5Y2FiNDgwMDNhY2M1M2VlODIwNTFiNzI4MjM3OGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjExMiJ9', '2018-04-21 03:56:02.121507');
INSERT INTO `django_session` VALUES ('c5em36ebprxtvyfdpbsxzwliv6fzupeg', 'YjEzYzk2ZTY1MjA4NTJlYjIzMjEyYzlmMDExMGY1MjlkMDU0MTI2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImRiMGJiYTI4NjBkYWQzMmEyOWY1NWM0NDk3Nzk1MzRjZDFkZjUwN2QiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Ijk2In0=', '2018-04-16 12:58:27.083057');
INSERT INTO `django_session` VALUES ('cjalo4vwqhmbaj8soog4jt3kna6rdk5g', 'NWU4YTU5NWY2OWZiZGM0NzM0NjZjNTMyOWQxZjkzMDIyZWE1OWRmODp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1NWY4MWQ5Yjg3NzNjMzQyOTg1Y2YzOWYyYzI3Y2Y2OTcwZTc2MjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjUwIn0=', '2018-03-31 13:33:00.535744');
INSERT INTO `django_session` VALUES ('ck5cycwijnt9j8zjr7i28e1tg5duuiqk', 'ZDIwYTNjYmQzMmE4MDMyMWQwNmNmODU3NDdmMGEzNWJhNzYxZGY4OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjRkMGE3NTU1ZDVhODRhNGUxZmVlZDNjZWNjYjA0YThhMWJiMjUxODUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE0MyJ9', '2018-04-26 20:17:27.082818');
INSERT INTO `django_session` VALUES ('cmuossqlahf70quddt0ol30jv0didu3p', 'YjRkZTEwYjVjODU1N2JlMjNhODA3YWRlMzU5ZDQ5NGY3YWJmYjk1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjU0NmQ2NTJiYjBjZGQ2MjEzZDFlNDY5MmJlYzMxYzE0NjljZGJlZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMyIn0=', '2018-01-27 22:06:03.346000');
INSERT INTO `django_session` VALUES ('d4xm7yxbzk3xupz2vf4ufwxpvxdn7v00', 'ZjI4MGI5NWI0NGY2OTE4ZGIyNjg2YmZlNjZkOTdjZjA2Y2Q4NmI3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-01-28 02:24:58.319000');
INSERT INTO `django_session` VALUES ('da7u7qgyxx5qnbw0o6stgc0myjk845i5', 'NjlkYTg2OWU5MzQ2MzZlMGM5ZmY0NjUyNDIwMzI3OTk4OGI3ODhlMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiJjZTE2NjM0OTcwYTlkY2EzYzQzZDdhNzg0MmY2M2QxMTUwMTM0Y2UxIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-03-02 19:33:08.638000');
INSERT INTO `django_session` VALUES ('dih8t8uee98a4ghkdbmhxwghtcivhuvm', 'YjRkZTEwYjVjODU1N2JlMjNhODA3YWRlMzU5ZDQ5NGY3YWJmYjk1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjU0NmQ2NTJiYjBjZGQ2MjEzZDFlNDY5MmJlYzMxYzE0NjljZGJlZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMyIn0=', '2018-01-27 22:02:51.817000');
INSERT INTO `django_session` VALUES ('dl7gjqessz82uh54j4qloll0g8icc3l8', 'NWMzZTU3OTAzMmUyOGU5ZTI2MmQ1OGRhNGFlMGUxNWM3YTM0ODA5Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImI4MDJjMjYxZTNjY2MyODdkNzkzM2EwYWZlY2FjNWY5NDBhMTA4MTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMwIn0=', '2018-01-25 03:37:09.216000');
INSERT INTO `django_session` VALUES ('efdbpic9hr7t5jsyw227zzjc2y3tklag', 'ZGEwZmQ4OTU5MDQ3NzMwMTJkNWNhNTllNzFkOGFmNmQ1OGEyZDdiZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiI5YWRhNzViMDAyNGVlNDU0NTkyYzY2NjVjNzM2MGY5MDdkNjMzNmFjIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-01-28 22:55:11.966000');
INSERT INTO `django_session` VALUES ('eqyqby2mq22lfybit0swfoa2ovfdb4ni', 'ZjI4MGI5NWI0NGY2OTE4ZGIyNjg2YmZlNjZkOTdjZjA2Y2Q4NmI3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-01-28 02:27:15.720000');
INSERT INTO `django_session` VALUES ('eu926norw3ao3b50x1zko9w88fjy2yfn', 'NjU2NDA0YTcxMmFjNzc0ZTlkMTdlZDQwMjE4YmNjNjc5NjdkODIzNzp7Il9hdXRoX3VzZXJfaGFzaCI6ImIyZjE0OTZlNzExOThlZTkyMzdjZGIwNGM0ZWI3MGM1Y2U0MGQ1MjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyMiJ9', '2018-05-03 10:47:48.540524');
INSERT INTO `django_session` VALUES ('euauiik0w4lheklliikxasby6cp689yh', 'MGQ1ZDNkNmQ0MWNkZTgxY2MwY2MxMDU1YmQ1YjAwNTJkYWIxMWYzYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImMyMThjNGUyODNlYTA2YTJjYmZkNjdkNTU0NmY0MTc1MTFiZWFiM2QiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjExNiJ9', '2018-04-21 21:52:16.129983');
INSERT INTO `django_session` VALUES ('f35tvuze1gfymmrttrarhbvywe123rcd', 'MjA0YTNkNTFjNTBhZWZkNGI2ZThlMWM1OGNlOTgxZDdlOWM0YzQzYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-01-24 03:19:49.977000');
INSERT INTO `django_session` VALUES ('f5hy80o30cwwtdtq34bnjhbevr5tkvn0', 'NDY1MjBlOTg1NzQ2NTMzOTkzNzRmOThhYmY5YTRkZWRlMTJkNTk3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImRhNzA3NjJhZDE2MzY5YjAxMWVkNDkxMmY1NjA1ZDQ1MmI4NjIwN2MiLCJfYXV0aF91c2VyX2lkIjoiNDUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwibmF2X21lbnUiOiJbe1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NpdHlkaWN0L1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNywgXCJ0aXRsZVwiOiBcIlx1NTdjZVx1NWUwMlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vY291cnNlb3JnL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxOCwgXCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1NjczYVx1Njc4NFwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vdGVhY2hlci9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTksIFwidGl0bGVcIjogXCJcdTY1NTlcdTVlMDhcIn1dLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NpdHlkaWN0L1wiLCBcInRpdGxlXCI6IFwiXHU2NzNhXHU2Nzg0XHU0ZmUxXHU2MDZmXCJ9LCB7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi91c2Vycy91c2VycHJvZmlsZS9cIiwgXCJpY29uXCI6IFwiZmEgZmEtdXNlclwiLCBcIm9yZGVyXCI6IDMsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTRmZTFcdTYwNmZcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvZW1haWx2ZXJpZnlyZWNvcmQvXCIsIFwiaWNvblwiOiBcImZhIGZhLWVudmVsb3BlXCIsIFwib3JkZXJcIjogNSwgXCJ0aXRsZVwiOiBcIlx1OTBhZVx1N2JiMVx1OWE4Y1x1OGJjMVx1NzgwMVwifSwge1widXJsXCI6IFwiL3hhZG1pbi91c2Vycy9iYW5uZXIvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogNiwgXCJ0aXRsZVwiOiBcIlx1OGY2ZVx1NjRhZFx1NTZmZVwifV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wiLCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU0ZmUxXHU2MDZmXCJ9LCB7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmFzay9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTIsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTU0YThcdThiZTJcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJjb3Vyc2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDEzLCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU4YmZlXHU3YTBiXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VybWVzc2FnZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTQsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTZkODhcdTYwNmZcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL2NvdXJzZWNvbW1lbnRzL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNSwgXCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1OGJjNFx1OGJiYVwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmZhdm9yaXRlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNiwgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NjUzNlx1ODVjZlwifV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmZhdm9yaXRlL1wiLCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU2NGNkXHU0ZjVjXCJ9LCB7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wiLCBcImljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJvcmRlclwiOiAyMSwgXCJ0aXRsZVwiOiBcIlx1NjVlNVx1NWZkN1x1OGJiMFx1NWY1NVwifV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4veGFkbWluL2xvZy9cIiwgXCJ0aXRsZVwiOiBcIlx1N2JhMVx1NzQwNlwifSwge1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4vYXV0aC9ncm91cC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJvcmRlclwiOiAyLCBcInRpdGxlXCI6IFwiXHU3ZWM0XCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDQsIFwidGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIn1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1sb2NrXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9hdXRoL3Blcm1pc3Npb24vXCIsIFwidGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIn0sIHtcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvYmFubmVyY291cnNlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA3LCBcInRpdGxlXCI6IFwiXHU4ZjZlXHU2NGFkXHU4YmZlXHU3YTBiXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvY291cnNlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA4LCBcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvbGVzc29uL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA5LCBcInRpdGxlXCI6IFwiXHU3YWUwXHU4MjgyXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvdmlkZW8vXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDEwLCBcInRpdGxlXCI6IFwiXHU4OWM2XHU5ODkxXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvY291cnNlcmVzb3VyY2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDExLCBcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU4ZDQ0XHU2ZTkwXCJ9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2NvdXJzZXMvbGVzc29uL1wiLCBcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU0ZmUxXHU2MDZmXCJ9XSIsIkxJU1RfUVVFUlkiOltbInhhZG1pbiIsImxvZyJdLCIiXSwid2l6YXJkX3hhZG1pbnVzZXJ3aWRnZXRfYWRtaW5fd2l6YXJkX2Zvcm1fcGx1Z2luIjp7InN0ZXBfZmlsZXMiOnt9LCJzdGVwIjoiV2lkZ2V0XHU3YzdiXHU1NzhiIiwiZXh0cmFfZGF0YSI6e30sInN0ZXBfZGF0YSI6e319fQ==', '2018-04-16 17:46:15.582180');
INSERT INTO `django_session` VALUES ('fmc0czi6bjld46jws92cm0ao1iaabs8u', 'YjVhN2Q5MGFhY2E5ODk2NGEwNTNhNDMyOWUyMjBhZTRlMzYyOTI0ODp7Il9hdXRoX3VzZXJfaGFzaCI6ImM1YzU0ZWE2NjhjM2QzOGVmZjk0YTBkYmIwOWQwYzQwYzdiNjNjNGUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Ijg0In0=', '2018-04-12 10:28:17.948259');
INSERT INTO `django_session` VALUES ('fqg7ff4k7t5y06oc7pl00xj9agr3cn03', 'YjRkZTEwYjVjODU1N2JlMjNhODA3YWRlMzU5ZDQ5NGY3YWJmYjk1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjU0NmQ2NTJiYjBjZGQ2MjEzZDFlNDY5MmJlYzMxYzE0NjljZGJlZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMyIn0=', '2018-01-27 22:07:06.404000');
INSERT INTO `django_session` VALUES ('fuhiu36ecph2dutk7vs8jqds0xwzjmfd', 'NWQ0N2RlYWNlZTIyOGQ5YWMzN2YwMWFmZDlkM2Y0ZjdjY2Y0MDNjZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ1YWU0MmNjY2IwYTJmMWVlYjA2MTJlZWJhOTZhOWE3ODYzYzAyNGYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjgzIn0=', '2018-04-12 09:34:00.512861');
INSERT INTO `django_session` VALUES ('fxleod7c2sv0sy316avbyfbh7v9n450r', 'NjY5ODZjMTY0YWE2NGE4Y2EwOTc5MTE3YWY4YjI5ODA1MDQwNDM3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjlhZGE3NWIwMDI0ZWU0NTQ1OTJjNjY2NWM3MzYwZjkwN2Q2MzM2YWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-01-29 04:42:34.638000');
INSERT INTO `django_session` VALUES ('g2vq15hzipor9fjseargxdi8vmn3euzo', 'ZjI4MGI5NWI0NGY2OTE4ZGIyNjg2YmZlNjZkOTdjZjA2Y2Q4NmI3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-01-28 01:27:56.754000');
INSERT INTO `django_session` VALUES ('g6sioeyirnppf370w0jpwodwcbwxq72m', 'YjQ3ZThmMDE3MjA3OTA3ZjIxOTdiMzMwMzllOTdhMmNiZDI1YzkwMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ0ZWM5Zjc2YTMyMGRiODg5YmQ5ZWRjODAxZWY0YmU3ZmJlYWYwNDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjkzIn0=', '2018-04-29 09:28:19.925691');
INSERT INTO `django_session` VALUES ('gapujp4msojhfz352alprue8c7blc6kw', 'N2ZhYWVmOTQ3YzU3MWE2ZTFhNjc0YzZlYzUwYmY2MjQ0MzU0NzI0Yzp7Il9hdXRoX3VzZXJfaGFzaCI6IjhkZjJkYWQ5ZGRiYmJiMDFjYmEwMjg4ODY5ZWNjMWYzMjYzZGY5NTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Ijg1In0=', '2018-04-12 18:35:02.227360');
INSERT INTO `django_session` VALUES ('gk2xu39uymglv0cxymrea6gw4scabzdc', 'ZjIxMDE4YjdmMDc5YWU1MjlkMzljYTQ0Yzc4ZDI5MDZmYTUzMTY2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1siY291cnNlcyIsImNvdXJzZSJdLCIiXSwiX2F1dGhfdXNlcl9oYXNoIjoiNDM4YTk2NGYzYmUwYjlmMGZlODliODI0YjhhN2FlNzc1NDMzZDFmNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-01-23 23:00:41.859000');
INSERT INTO `django_session` VALUES ('gnckbhp08b2qidfs3tb1dlo3r61huwmp', 'Mjc4MjIzMjUyMDM2ZWMyYzQ3MzNjYTdhZjVkMmEwOWEwOWEyZTNlMjp7Il9hdXRoX3VzZXJfaGFzaCI6ImM3YzZmNzVhMTM3MDBmNzI5ZmVjNzg2NTliZmE3OTFiZDI4NmIxZmYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMzIn0=', '2018-01-27 22:47:14.609000');
INSERT INTO `django_session` VALUES ('h4959jqyzdoz09e1tkfwo1gwb9jkgyln', 'MWZiNDc2MTBkNGI3MzA3M2JiZGUxZDY5ZWY5ZjJjMGYxMzYzM2NhMzp7Il9hdXRoX3VzZXJfaGFzaCI6IjQwNWU1YzEwZTllZTY1NmMyNGYyN2ZmZmVkM2JiYWM2NzU2YjUwNGUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQ0In0=', '2018-05-20 19:23:05.729043');
INSERT INTO `django_session` VALUES ('h6xju7tlznhskc8o54s1tf19uki8dhvv', 'ZjI4MGI5NWI0NGY2OTE4ZGIyNjg2YmZlNjZkOTdjZjA2Y2Q4NmI3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-01-27 04:05:03.603000');
INSERT INTO `django_session` VALUES ('ha1269qti7z3qsr6zz17p6m1knsq1u55', 'MjYyOTVmOTYxN2YyYjBiNDNkODhlM2I4M2NmMzQ0NzhhNDIwZGYxYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZlZmVjNzlkZjllYjBmMjkyZGU5MzNmMzc0YjRjYmRmMjY0OWFmMTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MiJ9', '2018-05-19 13:00:08.571967');
INSERT INTO `django_session` VALUES ('hkn2i4myjleaihfcqjcox1el9eprwxcc', 'YWQ4OWZmMTg5YzMwMTI3NjZhZTY1NDAzYzk5M2ZiZjYzZDc3MjYyZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiI0MzhhOTY0ZjNiZTBiOWYwZmU4OWI4MjRiOGE3YWU3NzU0MzNkMWY3IiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-01-27 01:08:20.339000');
INSERT INTO `django_session` VALUES ('iq804bx6juhm8y9bcg4qy1lldlyazyws', 'M2M2OTVkM2VkYmMxZDA2NTBmMmRmZmNhOTM5YmVmYmQzNGVkZWI3Nzp7Il9hdXRoX3VzZXJfaGFzaCI6ImRhNzA3NjJhZDE2MzY5YjAxMWVkNDkxMmY1NjA1ZDQ1MmI4NjIwN2MiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQ1In0=', '2018-05-02 16:09:44.481985');
INSERT INTO `django_session` VALUES ('j8ez03hit3gw8uf5ffc9dbiphj1vjvel', 'MjA0YTNkNTFjNTBhZWZkNGI2ZThlMWM1OGNlOTgxZDdlOWM0YzQzYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-01-24 00:03:56.952000');
INSERT INTO `django_session` VALUES ('j9n2c0dd2tpzvjrqlsypqnfo26iw7v0r', 'NGViMGU0ZGJlMTRmZTVlYjEzOTllMjZmYjk4MDk4MmFhMWY3ZGFjOTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwidmlkZW8iXSwiIl0sIl9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2lkIjoiMSJ9', '2018-01-27 22:36:09.009000');
INSERT INTO `django_session` VALUES ('jtarlg3222lr9iimn2n6997x2bjjwl15', 'MmE5ODU1MjhlZTgxYmU2ZGJiMjM3ODNjZDUxMTNiOTE4MWU3OWNlYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2MzgyMTYyNzE4YzVkODI0YmU0ZjYxNTBhY2JmMzJmOTZiMjYwMmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQxIn0=', '2018-03-27 13:58:51.424768');
INSERT INTO `django_session` VALUES ('jy0s2oemhim4qzpf09i5h74iqtp63vrs', 'NTU1ZjdiODc3OWEwM2YyODE1ZmY0ZmY1Njk5YjdjMTAxYzcxMTIxMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiTElTVF9RVUVSWSI6W1sib3JnYW5pemF0aW9uIiwidGVhY2hlciJdLCIiXSwiX2F1dGhfdXNlcl9oYXNoIjoiNDM4YTk2NGYzYmUwYjlmMGZlODliODI0YjhhN2FlNzc1NDMzZDFmNyIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-01-23 21:28:02.157000');
INSERT INTO `django_session` VALUES ('jztiepx7zt2ee9oz1gbs38mr35up1ce1', 'NTU1ZjdiODc3OWEwM2YyODE1ZmY0ZmY1Njk5YjdjMTAxYzcxMTIxMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiTElTVF9RVUVSWSI6W1sib3JnYW5pemF0aW9uIiwidGVhY2hlciJdLCIiXSwiX2F1dGhfdXNlcl9oYXNoIjoiNDM4YTk2NGYzYmUwYjlmMGZlODliODI0YjhhN2FlNzc1NDMzZDFmNyIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-01-23 21:32:22.136000');
INSERT INTO `django_session` VALUES ('k140nyxi6zvm1vq7z1ila43zjiwfjkjb', 'ZjI4MGI5NWI0NGY2OTE4ZGIyNjg2YmZlNjZkOTdjZjA2Y2Q4NmI3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-01-28 02:26:51.407000');
INSERT INTO `django_session` VALUES ('k8a5tks6x5ccuiy0ykk8izoxa1rq508n', 'NjY5ODZjMTY0YWE2NGE4Y2EwOTc5MTE3YWY4YjI5ODA1MDQwNDM3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjlhZGE3NWIwMDI0ZWU0NTQ1OTJjNjY2NWM3MzYwZjkwN2Q2MzM2YWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-01-28 07:13:35.538000');
INSERT INTO `django_session` VALUES ('kj4p7dw9oak8wpwqj8mwelurbuh7kmwy', 'NjAyYmNiODVmNGQzZDRmYmFjYjdiNWVlNTYxMGQ2NDQ2YThiMWUxMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjhjNTI2MzEzMjAwODhmYmM2NDdhZTNlMTY2MzQ0MDE1MDYyNGJmODciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Ijg4In0=', '2018-04-13 11:31:40.991189');
INSERT INTO `django_session` VALUES ('kjpadjqgxn7dnhz8y8ajg60c2oim2092', 'MjA0YTNkNTFjNTBhZWZkNGI2ZThlMWM1OGNlOTgxZDdlOWM0YzQzYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-01-23 23:03:27.595000');
INSERT INTO `django_session` VALUES ('ko52fjwzg3kqplaw6u25cvvxvw7445pb', 'YjdkYTcyZmJjMWU0ZjhmZDA2ZTcyMmY3N2ViMjg0Mjk0YmY3NDM3Njp7Il9hdXRoX3VzZXJfaGFzaCI6ImY4OTAzMTc0MTg1MWIzMGQwYzE2ZDk1NjAxNmE3YTUxYjhhMjEzYTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMxIn0=', '2018-01-27 22:42:34.533000');
INSERT INTO `django_session` VALUES ('kpums4gyzud52rr0sr36r6zxh364a8hn', 'MGI4MjI3YmYyYzY5MjI0MDc0NjgwYjMxNWFlNTI2YTFlNzNkYTA5MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFlMzcwMWQ3MDBiZTI3NzdjOTUyNWQ5M2Q5ODdjZGRmNjdmMTk4OGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyNCJ9', '2018-04-23 15:36:21.838712');
INSERT INTO `django_session` VALUES ('kt9e2sz9jej323zw970o4zeyohg8qvih', 'MzEwZGY5ZmMxZGI2N2M0ODliMDQ2YTk3YzVkYTI1NjZiZjNmYjY4NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjFmY2I1ZjM2N2I0YjIxNTc0YzVlNDNiY2IyODAyZjIxMjUyYWZhYTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyNiJ9', '2018-04-24 17:14:15.331620');
INSERT INTO `django_session` VALUES ('kud0v006wkzs166c77umslthmxd2x4i6', 'NTYzZjM4NTUyYzc2ZmQxNzI0OTQ2Y2I3MGMzODBlODVlN2MyZjVjZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ4ZGZhZjQwZWFiMDhkOGU3OTAzOTMxNWUzNTcxZGYzZDk4Njk1NTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9', '2018-05-18 22:31:54.623563');
INSERT INTO `django_session` VALUES ('kydh2payykqzkjpx6vuujaj17yf9b4fv', 'MGJhYTBlNGVmYzNmNzFmMTA4MmY3NGMwZTNiNDJiYzIxZjFkNzExZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjllY2NjM2UyMzJkZDIzOTE5ZjRkODkyZjg3NzI2ZDVkNmE3MmQ1MzIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE2NSJ9', '2018-05-05 10:56:01.494278');
INSERT INTO `django_session` VALUES ('lohu2wp0l6i0ihksb1m2pwsypm3h8t6r', 'ZjI4MGI5NWI0NGY2OTE4ZGIyNjg2YmZlNjZkOTdjZjA2Y2Q4NmI3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-01-28 02:10:53.449000');
INSERT INTO `django_session` VALUES ('m3tsecig7kfk31nxcnohkl7aqwczt8q3', 'MjA0YTNkNTFjNTBhZWZkNGI2ZThlMWM1OGNlOTgxZDdlOWM0YzQzYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-01-23 05:40:52.430000');
INSERT INTO `django_session` VALUES ('m79mr8owg0e6e21m4snkgyl18itnj0i9', 'YjQ3ZThmMDE3MjA3OTA3ZjIxOTdiMzMwMzllOTdhMmNiZDI1YzkwMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ0ZWM5Zjc2YTMyMGRiODg5YmQ5ZWRjODAxZWY0YmU3ZmJlYWYwNDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjkzIn0=', '2018-05-20 21:09:23.824232');
INSERT INTO `django_session` VALUES ('m9t3i1l64g20mixol0zt3a2jyr6q8ji4', 'MGU5YTU3YzEzMDJmMDNlNDAyNzM5ZTE1MTU1OTc2ZGM0OThlMjRlZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImYxZjU2MzIzZmY1MjdhNTNhNTY1MzdiMmY2M2ZhYmFhMDVhZDNjYzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQ3In0=', '2018-03-30 10:33:22.505907');
INSERT INTO `django_session` VALUES ('mrbnixmf98wilafv75kbovd73p3mp0ff', 'MjNjMTk1N2I3MGI0OTI0ZmQ2ZTJhNGZlNmI5MTU5MjczZjJjYjhmNDp7Il9hdXRoX3VzZXJfaGFzaCI6IjZhMWI1YzJmYjYzMzU1ZWRlMGI5NjMzZjlhZmUxZDY3ZTJiZGNjZjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Ijg5In0=', '2018-04-13 15:08:03.947017');
INSERT INTO `django_session` VALUES ('mxm32bwn8iwcw6g5vk8houc4gpbtxjen', 'YzQyNTQxNTQxMzhkNDNhZDdlMDc3ZGM1NDM0NjMxMThjNjhiZDk2NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1sib3BlcmF0aW9uIiwiY291cnNlY29tbWVudHMiXSwiIl0sIl9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwid2l6YXJkX3hhZG1pbnVzZXJ3aWRnZXRfYWRtaW5fd2l6YXJkX2Zvcm1fcGx1Z2luIjp7InN0ZXBfZmlsZXMiOnt9LCJzdGVwIjpudWxsLCJleHRyYV9kYXRhIjp7fSwic3RlcF9kYXRhIjp7fX19', '2018-01-24 05:53:33.455000');
INSERT INTO `django_session` VALUES ('n06pyddnpxt0zj8ml7gxl0z5v7c0csp4', 'NjU2NDA0YTcxMmFjNzc0ZTlkMTdlZDQwMjE4YmNjNjc5NjdkODIzNzp7Il9hdXRoX3VzZXJfaGFzaCI6ImIyZjE0OTZlNzExOThlZTkyMzdjZGIwNGM0ZWI3MGM1Y2U0MGQ1MjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyMiJ9', '2018-05-02 14:50:29.726282');
INSERT INTO `django_session` VALUES ('n3fmc7s5vgz52x137h8coxpjyv53ndgg', 'NWU4YTU5NWY2OWZiZGM0NzM0NjZjNTMyOWQxZjkzMDIyZWE1OWRmODp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1NWY4MWQ5Yjg3NzNjMzQyOTg1Y2YzOWYyYzI3Y2Y2OTcwZTc2MjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjUwIn0=', '2018-05-06 09:45:39.445415');
INSERT INTO `django_session` VALUES ('n97r3yieox2l3avsk84ul4aim20mvvyj', 'ZmQ4MTVjOWNlNDY1MDFkMjNhNzhjMmIyY2IyNDA1ZTJkNmY1NzQyZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjM0OGVhNDBlM2QzMTBlY2VkYzVkODk2MTBiOTliYmM5YjY3YzYwYmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE1MSJ9', '2018-04-30 23:28:42.662175');
INSERT INTO `django_session` VALUES ('njouc3ee30lxutxh1poa3r9o3hm56ol2', 'ZjI4MGI5NWI0NGY2OTE4ZGIyNjg2YmZlNjZkOTdjZjA2Y2Q4NmI3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-01-28 02:27:53.121000');
INSERT INTO `django_session` VALUES ('nmfqoqebitzhp3dm8m369cc01olvxnck', 'MzY0YmFlMzA2Y2MxNmExOGNkNmM5YWM0OGRlNjA4MDY5MWM0NzVjOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjRhMDFkMjhmZDU3YjQzY2NjNWI5OWM5Y2UyOTgyNGJiZWU5ODhiMTYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3OCJ9', '2018-05-19 22:27:27.415111');
INSERT INTO `django_session` VALUES ('nysi0ddzaun3binbulq00yk9mr8ozw3g', 'NDdlN2ZhNjY5ZGNlODJjNmI1NDI1ZjQ3ZGZiMTc4MjE4NzMzNzI4ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjBlNmE0NjEzOTI0YzIxN2FlNmFjMWM1NjRiYWY3NzQ1OWMwZTBiOTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjUyIn0=', '2018-04-01 22:25:36.231517');
INSERT INTO `django_session` VALUES ('o1jr499u3cg8rsfxp6zssdjqubxq2bsb', 'MjA0YTNkNTFjNTBhZWZkNGI2ZThlMWM1OGNlOTgxZDdlOWM0YzQzYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-01-23 22:42:40.066000');
INSERT INTO `django_session` VALUES ('o3wmsf2ldk13hat8f6cox7evzmnt7jcf', 'OGZhNmJjMmQzZWFjMjA5NmY3ODQ1ZThkZjY3OTM1OWY4NmRhMmVjZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1sidXNlcnMiLCJiYW5uZXIiXSwiIl0sIl9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9', '2018-01-23 18:40:19.700000');
INSERT INTO `django_session` VALUES ('o58zs1aff9sbz62j4iwfd0bstfbmvaaa', 'NjRlZWUzYzU3OGM3YzBlNmMxYWRlODA4MWNmODJkZTUyMjc4MTIxODp7Il9hdXRoX3VzZXJfaGFzaCI6IjJiYjA5MmJjZTg0ZjJjMDgxNTg0NDQwYTgxMmRhYzlmZDQ5ZDU0ZTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Ijk3In0=', '2018-05-19 15:01:52.585995');
INSERT INTO `django_session` VALUES ('o9lpm1qwd31n1ifp34of1ohw58rbu8sw', 'NWMzZTU3OTAzMmUyOGU5ZTI2MmQ1OGRhNGFlMGUxNWM3YTM0ODA5Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImI4MDJjMjYxZTNjY2MyODdkNzkzM2EwYWZlY2FjNWY5NDBhMTA4MTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMwIn0=', '2018-01-25 02:39:42.566000');
INSERT INTO `django_session` VALUES ('pel0gcjxzulkabzi67exqbgbp6oa8frj', 'ZmI0ZmFhZjVlNTRhZTczMzgwNTg2OGE2NWZhODZkZGYyYjk0YmZmNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjI3YWYyNmZlMjAwZWZhNGExNzE1YzA5MmNlNDVlOTM0MjUyMWFhM2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3NCJ9', '2018-05-19 18:02:31.581883');
INSERT INTO `django_session` VALUES ('phh4ojedscr1q4lpkyyqm0szddrley47', 'MjYyOTVmOTYxN2YyYjBiNDNkODhlM2I4M2NmMzQ0NzhhNDIwZGYxYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZlZmVjNzlkZjllYjBmMjkyZGU5MzNmMzc0YjRjYmRmMjY0OWFmMTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MiJ9', '2018-05-19 00:53:59.766687');
INSERT INTO `django_session` VALUES ('piqpiui6ekw9aijh2uqknzl5vm8r6smq', 'M2Q3OTFkNGU2MWY0YTJjYTQyYWI2OTQzNmJkOWRlYmZiYWNmNTIxMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImQxODZmMjg4MDdjZWU1NjIyM2I1YzFjNGIzNDI2NDYzODMzYzkyNmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyOSJ9', '2018-04-25 09:13:39.568938');
INSERT INTO `django_session` VALUES ('pkia1x08fjzr02f2hcz20zyireb3ksbo', 'YmZiN2UwNjcxZjNjYjJhMzhkMjc1MjI5YmUxZTA2ZDRiYmZhYjQyNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjBlZDIwNmU0YzNkZTE2ZWM3YzJlZjkzOTYzOGE0YzgzNjU0MzY1M2QiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjU2In0=', '2018-04-23 18:47:18.282396');
INSERT INTO `django_session` VALUES ('ptalc7nw66d0d9yynpyeq9yj1fffd3gb', 'ZTViMTU5YmE0NjBiZGQ5NjkzZGQzMmU2NmY5ODcyOWY1MGVlZWY2MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImExNjg2NDllOTUwY2M1YmY5Nzk2NzNhZjBkYzA0YWRlY2Y1ZmI2NDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE1MCJ9', '2018-04-30 06:02:22.657105');
INSERT INTO `django_session` VALUES ('ptbkni1wng2yde57oqqvduy7qaezbz1s', 'YWQ4OWZmMTg5YzMwMTI3NjZhZTY1NDAzYzk5M2ZiZjYzZDc3MjYyZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiI0MzhhOTY0ZjNiZTBiOWYwZmU4OWI4MjRiOGE3YWU3NzU0MzNkMWY3IiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-01-27 06:11:07.654000');
INSERT INTO `django_session` VALUES ('ptx0bhirvcpax3qh8f8ntbae22qohfba', 'OGUyZWE3NmU4NTA3ZWFhNzBhNzMyNDZiNjU0MmFlMTUwZTRkMDljZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjgxYmYwNTJjOWE0NzBlNmU3MDBhNTFhNDY3ZTljYjk3M2ZjNzE1YTEiLCJfYXV0aF91c2VyX2lkIjoiMTExIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCJ9', '2018-04-20 23:47:53.963820');
INSERT INTO `django_session` VALUES ('q9c0v50w0ju44nahuyqst34fyblld5pv', 'OWY4OTFjZjFhNzdiMTVlN2E2NWVmYzY1YzRkZjNmZjg2ODVmNjQyOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1sib3JnYW5pemF0aW9uIiwiY291cnNlb3JnIl0sIl9wX2NhdGVnb3J5X19leGFjdD1nciJdLCJfYXV0aF91c2VyX2hhc2giOiI0MzhhOTY0ZjNiZTBiOWYwZmU4OWI4MjRiOGE3YWU3NzU0MzNkMWY3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCJ9', '2018-01-25 23:03:50.108000');
INSERT INTO `django_session` VALUES ('qhtw47ke02kvbjz6bmkprovr9s6rrow8', 'M2NiN2RmZDQ2Nzk0MTM3NGZjNDU2YjE3ZjFmMTI5YmU5ZWY1ZGI4ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImM4ZTgzNzhlMzYwMzY2N2U3MTZhOGFlOTE4ZDE3MTVmNjc0YTU3YWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Ijk4In0=', '2018-04-16 23:32:19.241009');
INSERT INTO `django_session` VALUES ('qt15hk6aocu7se9pu9fr1tjm9yd84p1h', 'ZDNjMGY3MTAwZDI0YjJjMDQ1NTcyYzI1Yjk4YjA2NjY5MjNkOTVmNzp7Il9hdXRoX3VzZXJfaGFzaCI6ImY1YjMyYzFhNjAzZTNmOTQ3M2QyNGQ3YWZhMmQwNTc0NGY0NDkzZjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyMSJ9', '2018-04-22 12:40:47.267198');
INSERT INTO `django_session` VALUES ('qvnr91kb1nehe95bg6dshk0qjp2r7jx5', 'ZjI4MGI5NWI0NGY2OTE4ZGIyNjg2YmZlNjZkOTdjZjA2Y2Q4NmI3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-01-28 02:22:33.902000');
INSERT INTO `django_session` VALUES ('qzcesoftf217pggaq366cx68k9ryt8rp', 'NjY5ODZjMTY0YWE2NGE4Y2EwOTc5MTE3YWY4YjI5ODA1MDQwNDM3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjlhZGE3NWIwMDI0ZWU0NTQ1OTJjNjY2NWM3MzYwZjkwN2Q2MzM2YWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-01-28 07:13:47.482000');
INSERT INTO `django_session` VALUES ('reaatrmk9o89q721jnwo9gfa4oq028f0', 'MDk0ODE0MmZjNzc2ZDE5ZjI0ZDczZTY1Mjg2YTUxNzhjMTRlYWY1ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjkwOThiNDg4ZDk5ZTk4MGQzMjJjNjE4M2I3YTE0YjdjYjcxZWE1MTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3NiJ9', '2018-05-19 20:11:14.626514');
INSERT INTO `django_session` VALUES ('rlovbiyjqja0hujn0hc4jwk5qyg7a56v', 'OTUxZWUzNWEzZDVmNjE1NTQzN2I0ZGYzYTM4OWVjNTBhY2Q5MDZlYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjMwNDc3Y2JlM2I4Y2Y2NTUzZjNlOGI5OTJjYTdjNjlhYzU1N2EyOGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyNSJ9', '2018-04-23 20:55:55.701488');
INSERT INTO `django_session` VALUES ('ru4avclgvdukb6nt51gxmyc716oi134r', 'NjU2NDA0YTcxMmFjNzc0ZTlkMTdlZDQwMjE4YmNjNjc5NjdkODIzNzp7Il9hdXRoX3VzZXJfaGFzaCI6ImIyZjE0OTZlNzExOThlZTkyMzdjZGIwNGM0ZWI3MGM1Y2U0MGQ1MjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyMiJ9', '2018-05-01 15:00:22.292359');
INSERT INTO `django_session` VALUES ('ru7yjms2uxl4nvxhex0r9qh1ud6xo16v', 'Zjk4NDE4Mjk1ODY0M2Q4NDYzNjUzMzc3ZDM2MWQ2NmY1NDc1NTJhZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjlkMzRkMzMwZDk5NzNkZDVhMjM1NThkZDI4NjI0NzY1NzBiYzYzMzQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjgwIn0=', '2018-04-24 17:24:14.166050');
INSERT INTO `django_session` VALUES ('scb514pn65r0j1cq4hvny9a9fgk74gd3', 'MGNiOTllMjlkNDQ3ODJjNzhhYWViYjViZjk5MDBiMzQwY2QxOTkxYjp7Il9hdXRoX3VzZXJfaGFzaCI6IjgxZjA2ZTdmNTM4M2I3MWM4YTZmNjA3YzY4NmIyYzA4M2YwMTJlMWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE0NiJ9', '2018-05-04 13:15:28.288871');
INSERT INTO `django_session` VALUES ('sec9pbmg8jh4ozx9v8rbuwgq1z8amshj', 'MjA0YTNkNTFjNTBhZWZkNGI2ZThlMWM1OGNlOTgxZDdlOWM0YzQzYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-01-22 21:25:04.689000');
INSERT INTO `django_session` VALUES ('siplu01xyhrpw9u4a6nktuojlkbiv0rf', 'YzYwYzFiMDhjNjRlMTRmNDNlMGEwNTBkMDU1ODI4Mzg5NGI3NTk4Yzp7Il9hdXRoX3VzZXJfaGFzaCI6IjYwNDJlNjA1MWVhNzdkNGEyNzgxNjlmNzE0YmFhZjFlMjBlZWE2OTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEwMSJ9', '2018-04-17 16:38:44.652160');
INSERT INTO `django_session` VALUES ('spddo8orhf39kgy1wguv7ed0wvoe3lp3', 'MTY3OTg1MGQzYWFiZjIyNjE4ZGI1M2QwYTQ2NmJjNDAwYzc2ZDBmOTp7Il9hdXRoX3VzZXJfaWQiOiI0NSIsIkxJU1RfUVVFUlkiOltbImNvdXJzZXMiLCJjb3Vyc2UiXSwiIl0sIm5hdl9tZW51IjoiW3tcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL29yZ2FuaXphdGlvbi9jaXR5ZGljdC9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTcsIFwidGl0bGVcIjogXCJcdTU3Y2VcdTVlMDJcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NvdXJzZW9yZy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTgsIFwidGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdTY3M2FcdTY3ODRcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL3RlYWNoZXIvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE5LCBcInRpdGxlXCI6IFwiXHU2NTU5XHU1ZTA4XCJ9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL29yZ2FuaXphdGlvbi9jaXR5ZGljdC9cIiwgXCJ0aXRsZVwiOiBcIlx1NjczYVx1Njc4NFx1NGZlMVx1NjA2ZlwifSwge1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvdXNlcnByb2ZpbGUvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzLCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU0ZmUxXHU2MDZmXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL2VtYWlsdmVyaWZ5cmVjb3JkL1wiLCBcImljb25cIjogXCJmYSBmYS1lbnZlbG9wZVwiLCBcIm9yZGVyXCI6IDUsIFwidGl0bGVcIjogXCJcdTkwYWVcdTdiYjFcdTlhOGNcdThiYzFcdTc4MDFcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvYmFubmVyL1wiLCBcImljb25cIjogXCJmYSBmYS1ncm91cFwiLCBcIm9yZGVyXCI6IDYsIFwidGl0bGVcIjogXCJcdThmNmVcdTY0YWRcdTU2ZmVcIn1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS11c2VyXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi91c2Vycy91c2VycHJvZmlsZS9cIiwgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NGZlMVx1NjA2ZlwifSwge1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJhc2svXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDEyLCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU1NGE4XHU4YmUyXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyY291cnNlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxMywgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1OGJmZVx1N2EwYlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcm1lc3NhZ2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE0LCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU2ZDg4XHU2MDZmXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi9jb3Vyc2Vjb21tZW50cy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTUsIFwidGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdThiYzRcdThiYmFcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJmYXZvcml0ZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTYsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY1MzZcdTg1Y2ZcIn1dLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJjb3Vyc2UvXCIsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY0Y2RcdTRmNWNcIn0sIHtcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDIxLCBcInRpdGxlXCI6IFwiXHU2NWU1XHU1ZmQ3XHU4YmIwXHU1ZjU1XCJ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wiLCBcInRpdGxlXCI6IFwiXHU3YmExXHU3NDA2XCJ9LCB7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi9hdXRoL2dyb3VwL1wiLCBcImljb25cIjogXCJmYSBmYS1ncm91cFwiLCBcIm9yZGVyXCI6IDIsIFwidGl0bGVcIjogXCJcdTdlYzRcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vYXV0aC9wZXJtaXNzaW9uL1wiLCBcImljb25cIjogXCJmYSBmYS1sb2NrXCIsIFwib3JkZXJcIjogNCwgXCJ0aXRsZVwiOiBcIlx1Njc0M1x1OTY1MFwifV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWxvY2tcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJ0aXRsZVwiOiBcIlx1OGJhNFx1OGJjMVx1NTQ4Y1x1NjM4OFx1Njc0M1wifSwge1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy9iYW5uZXJjb3Vyc2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDcsIFwidGl0bGVcIjogXCJcdThmNmVcdTY0YWRcdThiZmVcdTdhMGJcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy9jb3Vyc2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDgsIFwidGl0bGVcIjogXCJcdThiZmVcdTdhMGJcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy9sZXNzb24vXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDksIFwidGl0bGVcIjogXCJcdTdhZTBcdTgyODJcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy92aWRlby9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTAsIFwidGl0bGVcIjogXCJcdTg5YzZcdTk4OTFcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy9jb3Vyc2VyZXNvdXJjZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTEsIFwidGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdThkNDRcdTZlOTBcIn1dLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vY291cnNlcy9sZXNzb24vXCIsIFwidGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdTRmZTFcdTYwNmZcIn1dIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGE3MDc2MmFkMTYzNjliMDExZWQ0OTEyZjU2MDVkNDUyYjg2MjA3YyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQifQ==', '2018-05-18 02:16:06.247507');
INSERT INTO `django_session` VALUES ('ss0lgtgys19sh65bb25bbesptitz9wzc', 'NWNkNWQzMWE1NDZlNGY3N2E2NjJjYTJjZTkyN2U5MThlY2QwMGFiMzp7Il9hdXRoX3VzZXJfaGFzaCI6IjI5NGZjYjZlNzU5ZTMxODRiYTI4NjUxNWMzNzFiMzJlZGNlNWIwMTMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjM3In0=', '2018-03-27 08:31:55.348876');
INSERT INTO `django_session` VALUES ('tarvy4lpsrug2mocu7drdpar9s3p7uqn', 'ZjI4MGI5NWI0NGY2OTE4ZGIyNjg2YmZlNjZkOTdjZjA2Y2Q4NmI3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-01-28 02:19:43.910000');
INSERT INTO `django_session` VALUES ('tzx27r2nodt4k46i4oimtj0o9erped71', 'NjRlZWUzYzU3OGM3YzBlNmMxYWRlODA4MWNmODJkZTUyMjc4MTIxODp7Il9hdXRoX3VzZXJfaGFzaCI6IjJiYjA5MmJjZTg0ZjJjMDgxNTg0NDQwYTgxMmRhYzlmZDQ5ZDU0ZTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Ijk3In0=', '2018-05-05 14:04:28.440001');
INSERT INTO `django_session` VALUES ('u7upr2hflnb4jt62fys16mz2s6o37nsc', 'YjRkZTEwYjVjODU1N2JlMjNhODA3YWRlMzU5ZDQ5NGY3YWJmYjk1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjU0NmQ2NTJiYjBjZGQ2MjEzZDFlNDY5MmJlYzMxYzE0NjljZGJlZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMyIn0=', '2018-01-27 18:25:32.565000');
INSERT INTO `django_session` VALUES ('uhbwr7wtpue0z5m01mskw8wshy5ccsjh', 'MGJhZTk2OTNkMDA3NjIzMWFiNzY1NzcxMTNlNGZlODRlNGIwNDkwYjp7Il9hdXRoX3VzZXJfaGFzaCI6ImRhMDdkMDY5YmYzZTA2NDI5OTRmZTRhYjZhYTcyZjg4ZTA1MTZlNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjU4In0=', '2018-04-03 16:09:50.074805');
INSERT INTO `django_session` VALUES ('ur3whk5b3ud9wk784emv080qv017uqqs', 'NGQzMmM4NDU2YWU5NzRlNzVmM2I0OGQ2OGQxNGQ0YzgyNTg5NTMwMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjI2NGYyZGU0ZTg3ZWZhOGE1ZTY4N2Q1YTA0ZDQ4NzJhMWNiYzc1NjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE2NCJ9', '2018-05-03 20:56:30.327081');
INSERT INTO `django_session` VALUES ('v8lcf11j19qzvv3tuvji81rohnjsujnr', 'ZTNjM2MxZDYwMzJhYTRlYzVjMmZiNmJkOThkOWFmNjNkNmE1YmFjMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjczZTk5MDY1NzcyMjdhMDQ2ZjE4YjY1YjNmZmQxMDZkNDQ2OWU5NmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEwNyJ9', '2018-04-18 14:08:03.683918');
INSERT INTO `django_session` VALUES ('w5ui3q5i6vl6vw87gq7qsaz4zj3r5unq', 'NzdjNmU2NDAxZDk0YzQyYWRmOTEyYzNlY2NjMzRlMmJmNzM2MzgxZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjM4OWNhZDM0YWI3MTllY2FmOTY5ZTZhMDJmNWY5NTlmODk1MmQwNzAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE2OCJ9', '2018-05-19 22:21:25.610292');
INSERT INTO `django_session` VALUES ('w5yxyua8y3cl9tu9u684h25zhmbb076c', 'NjEwNjNmNTUyNmZhM2NmZjI4MTllOWM3NGRlMDQyNTk4NzExZDUyYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImJiN2QwNDJhZDg2MDg2ZDM2OTk1NjA4YWYzNTVhNzUwNDRhMzJhN2MiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE1NiJ9', '2018-05-02 22:38:58.973460');
INSERT INTO `django_session` VALUES ('woolto8am0jaxm5kxlw1ajkwck49pi2a', 'NzE4MWYyMGYxN2RhMTgyZjY2YzJmYTU0ZmI5NzczNmMxMWE5MTU2Nzp7Il9hdXRoX3VzZXJfaGFzaCI6IjdlOTIzYTNhNzNhMDk5MzkwMmU4OTQyYTExNjJkMDRlZGM1MjdmNTYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE4MSJ9', '2018-05-20 19:41:21.358581');
INSERT INTO `django_session` VALUES ('wwr40qperau44xcind2qmt5be5wv8ku9', 'Nzg5YzZjN2YyZGQ1OWY1ZThlYjQyNTU4ODIxODViZGQ5YTg2ZTUxYTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg1Y2Y4MWMwZWRjYmUxOTIyNWY2YjAwN2YwOThlY2I1ZTU5OTQyNTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIxIn0=', '2018-01-25 00:58:46.518000');
INSERT INTO `django_session` VALUES ('x66mnv4g8c7dxs7sh1eini3g6hle8blw', 'MzBhNjE5MzZhNWVmN2M2NGVlOTVlZDQ5YzFlOTFlZjc0MjRmMDJjYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJhYjM3NDQ2N2FjMmVlMGI4MmJlODkwMWM4ZDQzN2RjZjcyM2QxZGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEwOSJ9', '2018-05-19 13:48:21.237148');
INSERT INTO `django_session` VALUES ('x7wgczlx15720b6rh4veuehois64yrxz', 'OThjMzUzOGMzZWE1OTAyNDAyZWYyN2FmOWNmYWFmNDJjMGEyNWY3NTp7Il9hdXRoX3VzZXJfaGFzaCI6ImM2YzVlMDlkY2Y3M2M1YmQ0NjNjZTM3MmY2M2Q3MDhjZmQ1ZjdjMzQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjExNCJ9', '2018-04-21 17:33:49.654757');
INSERT INTO `django_session` VALUES ('xa8u4ymzjt1hxm1nmqgcdw4rkszvmmnf', 'NTBhZjBjMGUwODkwNzk2ZDliNzM0NzJmODJkODE2ZTJjYTJhNGJhMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjEzZTkwODJiZmE0ZGYwNzNhNTExZDg3ZDI4ZDIxNjU5ZDUyNWUwMDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MCJ9', '2018-05-18 11:16:10.654279');
INSERT INTO `django_session` VALUES ('xe0rdi9x8qafr8eotxy85h5cb5lz6xtg', 'MWZiNDc2MTBkNGI3MzA3M2JiZGUxZDY5ZWY5ZjJjMGYxMzYzM2NhMzp7Il9hdXRoX3VzZXJfaGFzaCI6IjQwNWU1YzEwZTllZTY1NmMyNGYyN2ZmZmVkM2JiYWM2NzU2YjUwNGUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQ0In0=', '2018-03-28 20:08:05.856654');
INSERT INTO `django_session` VALUES ('xhxswvnboepmj9ozller7gj7rgnvkd26', 'NDMxMTgyMjcxYTY3MWU1NjViY2ZlYWJmZWU5ODYxNzhiOTIzN2JhYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjdkYmMwNzBmZjZlZmU1YzE3NmI3MWJiN2UwZjM2ODRmMDNlM2UxMDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjUzIn0=', '2018-04-02 13:56:55.593340');
INSERT INTO `django_session` VALUES ('xi8feheeqz7y06ofm47lh62z1ftqn271', 'YjYzZTIzMmI2MjdlZDI5Y2E5YzEzNmQ3NTE5MDI0MzM2M2UxZWE4Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjNjZmM3YmM1YmI3ODhlMjZjZjFjM2YyZjQzNjU1MTNiMGM1M2FmYmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MyJ9', '2018-05-19 11:44:51.819508');
INSERT INTO `django_session` VALUES ('xs4656cxjoqcjyvtcnwrmbnwgcrxio7w', 'MjVkMDdlYjE0YzBmMjVlMTU3MGE4MTI3NGVhZGZlNDUzNjMxZmQ1Nzp7Im5hdl9tZW51IjoiW3tcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL29yZ2FuaXphdGlvbi9jaXR5ZGljdC9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTcsIFwidGl0bGVcIjogXCJcdTU3Y2VcdTVlMDJcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NvdXJzZW9yZy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTgsIFwidGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdTY3M2FcdTY3ODRcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL3RlYWNoZXIvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE5LCBcInRpdGxlXCI6IFwiXHU2NTU5XHU1ZTA4XCJ9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL29yZ2FuaXphdGlvbi9jaXR5ZGljdC9cIiwgXCJ0aXRsZVwiOiBcIlx1NjczYVx1Njc4NFx1NGZlMVx1NjA2ZlwifSwge1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvdXNlcnByb2ZpbGUvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzLCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU0ZmUxXHU2MDZmXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL2VtYWlsdmVyaWZ5cmVjb3JkL1wiLCBcImljb25cIjogXCJmYSBmYS1lbnZlbG9wZVwiLCBcIm9yZGVyXCI6IDUsIFwidGl0bGVcIjogXCJcdTkwYWVcdTdiYjFcdTlhOGNcdThiYzFcdTc4MDFcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvYmFubmVyL1wiLCBcImljb25cIjogXCJmYSBmYS1ncm91cFwiLCBcIm9yZGVyXCI6IDYsIFwidGl0bGVcIjogXCJcdThmNmVcdTY0YWRcdTU2ZmVcIn1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS11c2VyXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi91c2Vycy91c2VycHJvZmlsZS9cIiwgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NGZlMVx1NjA2ZlwifSwge1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJhc2svXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDEyLCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU1NGE4XHU4YmUyXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyY291cnNlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxMywgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1OGJmZVx1N2EwYlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcm1lc3NhZ2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE0LCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU2ZDg4XHU2MDZmXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi9jb3Vyc2Vjb21tZW50cy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTUsIFwidGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdThiYzRcdThiYmFcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJmYXZvcml0ZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTYsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY1MzZcdTg1Y2ZcIn1dLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJmYXZvcml0ZS9cIiwgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NjRjZFx1NGY1Y1wifSwge1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4veGFkbWluL2xvZy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtY29nXCIsIFwib3JkZXJcIjogMjEsIFwidGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIn1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwidGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIn0sIHtcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMiwgXCJ0aXRsZVwiOiBcIlx1N2VjNFwifSwge1widXJsXCI6IFwiL3hhZG1pbi9hdXRoL3Blcm1pc3Npb24vXCIsIFwiaWNvblwiOiBcImZhIGZhLWxvY2tcIiwgXCJvcmRlclwiOiA0LCBcInRpdGxlXCI6IFwiXHU2NzQzXHU5NjUwXCJ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vYXV0aC9wZXJtaXNzaW9uL1wiLCBcInRpdGxlXCI6IFwiXHU4YmE0XHU4YmMxXHU1NDhjXHU2Mzg4XHU2NzQzXCJ9LCB7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2Jhbm5lcmNvdXJzZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogNywgXCJ0aXRsZVwiOiBcIlx1OGY2ZVx1NjRhZFx1OGJmZVx1N2EwYlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2NvdXJzZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogOCwgXCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2xlc3Nvbi9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogOSwgXCJ0aXRsZVwiOiBcIlx1N2FlMFx1ODI4MlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL3ZpZGVvL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxMCwgXCJ0aXRsZVwiOiBcIlx1ODljNlx1OTg5MVwifSwge1widXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2NvdXJzZXJlc291cmNlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxMSwgXCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1OGQ0NFx1NmU5MFwifV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2xlc3Nvbi9cIiwgXCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1NGZlMVx1NjA2ZlwifV0iLCJfYXV0aF91c2VyX2lkIjoiNDUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGE3MDc2MmFkMTYzNjliMDExZWQ0OTEyZjU2MDVkNDUyYjg2MjA3YyIsIkxJU1RfUVVFUlkiOltbIm9yZ2FuaXphdGlvbiIsImNpdHlkaWN0Il0sIiJdLCJ3aXphcmRfeGFkbWludXNlcndpZGdldF9hZG1pbl93aXphcmRfZm9ybV9wbHVnaW4iOnsic3RlcF9maWxlcyI6e30sInN0ZXAiOiJXaWRnZXRcdTdjN2JcdTU3OGIiLCJleHRyYV9kYXRhIjp7fSwic3RlcF9kYXRhIjp7fX19', '2018-04-23 21:09:51.705700');
INSERT INTO `django_session` VALUES ('xvb5idfrwegpvbidd36f1q4ck75vjfr2', 'MTBiOWQwZWQxNTg3NGVhNWExMTc0Yzk5MjFmMmQ2YjY1ZTUwM2ViMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjFmMzc1OTZjMzIwZTVjZDQ1ZjYxNGQyZWExNzI1NjQwZDg4NTg1NTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE0NCJ9', '2018-05-20 19:47:36.362563');
INSERT INTO `django_session` VALUES ('yelubb4jxuyvo7ywbe2kz98o1vezqcv5', 'NWQ2MDVjNDZjOGQ4YTY1N2M1N2RjMzZhZTJjMGQ3OTdhNTc3ZWI1ODp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQifQ==', '2018-01-28 02:19:30.448000');
INSERT INTO `django_session` VALUES ('ypk5cqn6067mpdscepowsdckejyiudrb', 'Y2FjZjMyMDdjY2EzMTFjMjQzOTNjYjk1OTNhZTEzMmZhZGJmODc2Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJvcmdhbml6YXRpb24iLCJ0ZWFjaGVyIl0sIiJdLCJuYXZfbWVudSI6Ilt7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vY2l0eWRpY3QvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE3LCBcInRpdGxlXCI6IFwiXHU1N2NlXHU1ZTAyXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL29yZ2FuaXphdGlvbi9jb3Vyc2VvcmcvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE4LCBcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU2NzNhXHU2Nzg0XCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL29yZ2FuaXphdGlvbi90ZWFjaGVyL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxOSwgXCJ0aXRsZVwiOiBcIlx1NjU1OVx1NWUwOFwifV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vY291cnNlb3JnL1wiLCBcInRpdGxlXCI6IFwiXHU2NzNhXHU2Nzg0XHU0ZmUxXHU2MDZmXCJ9LCB7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi91c2Vycy91c2VycHJvZmlsZS9cIiwgXCJpY29uXCI6IFwiZmEgZmEtdXNlclwiLCBcIm9yZGVyXCI6IDMsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTRmZTFcdTYwNmZcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvZW1haWx2ZXJpZnlyZWNvcmQvXCIsIFwiaWNvblwiOiBcImZhIGZhLWVudmVsb3BlXCIsIFwib3JkZXJcIjogNSwgXCJ0aXRsZVwiOiBcIlx1OTBhZVx1N2JiMVx1OWE4Y1x1OGJjMVx1NzgwMVwifSwge1widXJsXCI6IFwiL3hhZG1pbi91c2Vycy9iYW5uZXIvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogNiwgXCJ0aXRsZVwiOiBcIlx1OGY2ZVx1NjRhZFx1NTZmZVwifV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWVudmVsb3BlXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi91c2Vycy9lbWFpbHZlcmlmeXJlY29yZC9cIiwgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NGZlMVx1NjA2ZlwifSwge1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJhc2svXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDEyLCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU1NGE4XHU4YmUyXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyY291cnNlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxMywgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1OGJmZVx1N2EwYlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcm1lc3NhZ2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE0LCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU2ZDg4XHU2MDZmXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi9jb3Vyc2Vjb21tZW50cy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTUsIFwidGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdThiYzRcdThiYmFcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJmYXZvcml0ZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTYsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY1MzZcdTg1Y2ZcIn1dLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL2NvdXJzZWNvbW1lbnRzL1wiLCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU2NGNkXHU0ZjVjXCJ9LCB7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wiLCBcImljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJvcmRlclwiOiAyMSwgXCJ0aXRsZVwiOiBcIlx1NjVlNVx1NWZkN1x1OGJiMFx1NWY1NVwifV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4veGFkbWluL2xvZy9cIiwgXCJ0aXRsZVwiOiBcIlx1N2JhMVx1NzQwNlwifSwge1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4vYXV0aC9ncm91cC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJvcmRlclwiOiAyLCBcInRpdGxlXCI6IFwiXHU3ZWM0XCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDQsIFwidGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIn1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1ncm91cFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vYXV0aC9ncm91cC9cIiwgXCJ0aXRsZVwiOiBcIlx1OGJhNFx1OGJjMVx1NTQ4Y1x1NjM4OFx1Njc0M1wifSwge1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy9iYW5uZXJjb3Vyc2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDcsIFwidGl0bGVcIjogXCJcdThmNmVcdTY0YWRcdThiZmVcdTdhMGJcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy9jb3Vyc2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDgsIFwidGl0bGVcIjogXCJcdThiZmVcdTdhMGJcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy9sZXNzb24vXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDksIFwidGl0bGVcIjogXCJcdTdhZTBcdTgyODJcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy92aWRlby9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTAsIFwidGl0bGVcIjogXCJcdTg5YzZcdTk4OTFcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy9jb3Vyc2VyZXNvdXJjZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTEsIFwidGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdThkNDRcdTZlOTBcIn1dLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vY291cnNlcy92aWRlby9cIiwgXCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1NGZlMVx1NjA2ZlwifV0iLCJfYXV0aF91c2VyX2hhc2giOiJiNDAzZGRmNTFmNTUxMjcwYTk1NWE2NTg3OGMzZjM1OTFiZjg5Y2FlIiwiX2F1dGhfdXNlcl9pZCI6IjQ1In0=', '2018-04-03 03:03:32.144121');
INSERT INTO `django_session` VALUES ('z4a0nhdgy4mvpsij1gnbkjxnj58yxu7r', 'MzBhNjE5MzZhNWVmN2M2NGVlOTVlZDQ5YzFlOTFlZjc0MjRmMDJjYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJhYjM3NDQ2N2FjMmVlMGI4MmJlODkwMWM4ZDQzN2RjZjcyM2QxZGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEwOSJ9', '2018-05-04 10:46:12.911244');
INSERT INTO `django_session` VALUES ('zbtbj8mmpzmdzqk487f0uveunrtzyeco', 'MjMwYmM5MDdmOTNjN2FjMTYxNzE2Mzk0YmU2Y2EwYzFjNWFhYjk1Mjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc4NDY1YjNmY2YxOGFkZDQ4N2UzZTJlODA1ZDEyNjE4YmRkMjNkNDYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Ijg3In0=', '2018-04-12 18:39:36.771313');
INSERT INTO `django_session` VALUES ('zjddxpyuf3479m8duafavq8qdsu0dilu', 'ZjI4MGI5NWI0NGY2OTE4ZGIyNjg2YmZlNjZkOTdjZjA2Y2Q4NmI3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOGE5NjRmM2JlMGI5ZjBmZTg5YjgyNGI4YTdhZTc3NTQzM2QxZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-01-25 03:03:00.654000');
INSERT INTO `django_session` VALUES ('zjspkvddpnf7e2cr9d8ilf5fehyb05dm', 'MGJhYTBlNGVmYzNmNzFmMTA4MmY3NGMwZTNiNDJiYzIxZjFkNzExZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjllY2NjM2UyMzJkZDIzOTE5ZjRkODkyZjg3NzI2ZDVkNmE3MmQ1MzIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE2NSJ9', '2018-05-04 23:42:59.979894');
INSERT INTO `django_session` VALUES ('zk9lrodo8qoccptg5172ky1wjm9rvqk0', 'ZWU3YTUwYWExNDk4Y2EwY2MzODMyOGNiMTk0OTRiMGRmY2U1M2Q5YTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg4YzI0YWYyY2M3YTc4NmNhZGYzNzExZjcxODc1NDQ4OTg1OTU3YjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Ijc5In0=', '2018-04-10 19:48:08.512320');
INSERT INTO `django_session` VALUES ('zpm9g4v2adfd6m7l4e6k8cqgmnk96no9', 'NDM4ZDZiMDVhZTk3OWFiMmJkY2ZiZWM4NTdkYzU0YTkzOWY3YmQ3YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImE0MjZkZDIyZDEyMjRmYTE2ZjQ3MDJhMzJmYjMxMDU5NTgxNzI3NjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjgxIn0=', '2018-04-11 11:13:50.553760');

-- ----------------------------
-- Table structure for operation_coursecomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_coursecomments`;
CREATE TABLE `operation_coursecomments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NULL DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id`(`course_id`) USING BTREE,
  INDEX `operation_coursecomment_user_id_f5ff70b3_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `operation_coursecomment_user_id_f5ff70b3_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_coursecomments
-- ----------------------------
INSERT INTO `operation_coursecomments` VALUES (1, '我是', '2018-01-09 22:27:00.000000', 1, 1);
INSERT INTO `operation_coursecomments` VALUES (2, '哈哈哈', '2018-01-13 18:25:56.573000', 1, 32);
INSERT INTO `operation_coursecomments` VALUES (3, '哈哈', '2018-01-13 18:26:06.005000', 1, 32);
INSERT INTO `operation_coursecomments` VALUES (4, '哈哈哈哈', '2018-01-13 22:48:00.731000', 1, 33);
INSERT INTO `operation_coursecomments` VALUES (5, 'ahhh1', '2018-01-14 07:56:41.691000', 2, 1);
INSERT INTO `operation_coursecomments` VALUES (6, '<script>alert(document.cookie)</script>', '2018-01-15 05:41:15.000000', 1, 1);
INSERT INTO `operation_coursecomments` VALUES (7, '为啥视频看不来哦啊', '2018-03-13 14:09:12.755284', 1, 41);
INSERT INTO `operation_coursecomments` VALUES (8, 'test', '2018-03-21 12:48:52.219494', 1, 56);
INSERT INTO `operation_coursecomments` VALUES (9, 'aaa', '2018-04-02 13:46:56.849515', 1, 56);
INSERT INTO `operation_coursecomments` VALUES (10, '嗷嗷嗷', '2018-04-02 13:47:06.350150', 1, 56);
INSERT INTO `operation_coursecomments` VALUES (11, '啊', '2018-04-02 14:38:39.552887', 1, 56);
INSERT INTO `operation_coursecomments` VALUES (12, '啊 ', '2018-04-02 15:18:06.132798', 1, 56);
INSERT INTO `operation_coursecomments` VALUES (13, '讲的好，简单易懂\n', '2018-04-02 22:20:28.071376', 3, 97);
INSERT INTO `operation_coursecomments` VALUES (14, '2333', '2018-04-20 12:44:11.082920', 10, 146);
INSERT INTO `operation_coursecomments` VALUES (15, '122', '2018-04-20 12:44:18.283540', 10, 146);
INSERT INTO `operation_coursecomments` VALUES (16, '45', '2018-04-20 12:44:26.549934', 10, 146);
INSERT INTO `operation_coursecomments` VALUES (17, '哈喽', '2018-04-21 19:24:41.711556', 1, 123);
INSERT INTO `operation_coursecomments` VALUES (18, '有些视频无法播放，路径是正确的，好像是js出了问题，能解决吗，我按你的步骤做的也一样', '2018-04-21 21:28:47.002133', 1, 123);
INSERT INTO `operation_coursecomments` VALUES (19, 'hjk', '2018-05-04 12:18:46.394111', 10, 105);
INSERT INTO `operation_coursecomments` VALUES (20, 'uyiyui', '2018-05-04 12:18:50.121039', 10, 105);
INSERT INTO `operation_coursecomments` VALUES (21, 'gj', '2018-05-04 15:17:03.134966', 1, 105);
INSERT INTO `operation_coursecomments` VALUES (22, 'kj', '2018-05-04 15:17:05.328803', 1, 105);
INSERT INTO `operation_coursecomments` VALUES (23, 'kj', '2018-05-04 15:17:06.984239', 1, 105);
INSERT INTO `operation_coursecomments` VALUES (24, '原来是两个页面', '2018-05-04 15:17:14.751943', 1, 105);
INSERT INTO `operation_coursecomments` VALUES (25, '不是局部刷新', '2018-05-04 15:17:32.326822', 1, 105);
INSERT INTO `operation_coursecomments` VALUES (26, '<script>alert(/XSS/);</script>', '2018-05-04 18:00:35.180437', 1, 105);
INSERT INTO `operation_coursecomments` VALUES (27, 'cvbcv', '2018-05-04 18:08:25.813908', 1, 105);
INSERT INTO `operation_coursecomments` VALUES (28, 'cvbcvb', '2018-05-04 18:08:29.363524', 1, 105);
INSERT INTO `operation_coursecomments` VALUES (29, 'dfgdfg', '2018-05-04 18:08:33.643686', 1, 105);
INSERT INTO `operation_coursecomments` VALUES (30, 'cvbcvb', '2018-05-04 18:08:36.793387', 1, 105);
INSERT INTO `operation_coursecomments` VALUES (31, 'bnfgnghfngh', '2018-05-04 18:08:41.318305', 1, 105);
INSERT INTO `operation_coursecomments` VALUES (32, '章节和评论不是ajax \n评论是ajax', '2018-05-04 18:09:11.434395', 1, 105);
INSERT INTO `operation_coursecomments` VALUES (33, 'vcx', '2018-05-04 18:51:34.384617', 1, 105);
INSERT INTO `operation_coursecomments` VALUES (34, 'fdg', '2018-05-04 19:22:34.788260', 1, 105);
INSERT INTO `operation_coursecomments` VALUES (35, '54', '2018-05-05 12:24:54.924286', 2, 105);
INSERT INTO `operation_coursecomments` VALUES (36, 'rge', '2018-05-05 17:16:37.225130', 1, 105);
INSERT INTO `operation_coursecomments` VALUES (37, '章节和评论，下方LOGO缺失', '2018-05-05 22:22:19.512689', 1, 168);

-- ----------------------------
-- Table structure for operation_userask
-- ----------------------------
DROP TABLE IF EXISTS `operation_userask`;
CREATE TABLE `operation_userask`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_userask
-- ----------------------------
INSERT INTO `operation_userask` VALUES (1, '天涯明月笙', '18092671458', '我要吃饭', '2018-01-12 05:07:32.261476');
INSERT INTO `operation_userask` VALUES (2, '天涯明月笙', '18092671458', '发顺丰', '2018-01-12 05:10:40.177301');
INSERT INTO `operation_userask` VALUES (3, '人', '18092671458', '轻微的', '2018-01-12 05:11:35.879650');
INSERT INTO `operation_userask` VALUES (4, '11', '11', '11', '2018-01-12 05:13:19.657729');
INSERT INTO `operation_userask` VALUES (5, '天涯明月笙', '天涯', '1', '2018-01-12 05:15:16.930671');
INSERT INTO `operation_userask` VALUES (6, '防守打法', '18092671458', '11', '2018-01-12 05:16:52.135522');
INSERT INTO `operation_userask` VALUES (7, '天涯明月的video', '18092671458', '123131231', '2018-01-12 05:18:07.340809');
INSERT INTO `operation_userask` VALUES (8, '1高度与低谷', '打上', '12', '2018-01-12 05:18:16.291456');
INSERT INTO `operation_userask` VALUES (9, '天涯', '18092671458', '哈哈', '2018-01-12 05:20:29.329710');
INSERT INTO `operation_userask` VALUES (10, '天涯明月笙', '18092671458', '11', '2018-01-12 05:30:59.456011');
INSERT INTO `operation_userask` VALUES (11, '天涯', '11', '天涯', '2018-01-12 05:33:08.868194');
INSERT INTO `operation_userask` VALUES (12, '天涯', '11', '天涯', '2018-01-12 05:33:10.308482');
INSERT INTO `operation_userask` VALUES (13, '天涯', '11', '天涯', '2018-01-12 05:33:12.385600');
INSERT INTO `operation_userask` VALUES (14, '天涯', '11', '天涯', '2018-01-12 05:33:12.697104');
INSERT INTO `operation_userask` VALUES (15, '大它是由', '18092671458', '1111', '2018-01-12 05:33:20.816903');
INSERT INTO `operation_userask` VALUES (16, '大它是由', '18092671458', '11111', '2018-01-12 05:33:22.289025');
INSERT INTO `operation_userask` VALUES (17, '大它是由', '18092671458', '111111', '2018-01-12 05:33:23.849543');
INSERT INTO `operation_userask` VALUES (18, '他说的', '18092671458', '1111111111', '2018-01-12 05:33:32.739325');
INSERT INTO `operation_userask` VALUES (19, '他说的', '18092671458', '1111111111', '2018-01-12 05:33:33.067355');
INSERT INTO `operation_userask` VALUES (20, '他说的', '18092671458', '1111111111', '2018-01-12 05:33:49.782280');
INSERT INTO `operation_userask` VALUES (21, '他说的', '18092671458', '1111111111', '2018-01-12 05:33:52.301967');
INSERT INTO `operation_userask` VALUES (22, '他说的', '18092671458', '1111111111', '2018-01-12 05:33:52.582673');
INSERT INTO `operation_userask` VALUES (23, 'mtianyan', '13186133006', '哈哈', '2018-01-12 05:34:14.406013');
INSERT INTO `operation_userask` VALUES (24, '天涯', '13186133006', '32178312738', '2018-01-12 05:34:38.705159');
INSERT INTO `operation_userask` VALUES (25, '哈哈哈哈', '13186133006', '天涯', '2018-01-12 05:47:41.819318');
INSERT INTO `operation_userask` VALUES (26, '挺大的', '13186133006', '大家都哈打上', '2018-01-12 05:51:03.497081');
INSERT INTO `operation_userask` VALUES (27, '笔记哈收到蛤啥', '大手大脚阿克苏', '大健康四大皆空', '2018-01-12 05:51:14.388231');
INSERT INTO `operation_userask` VALUES (28, '天涯明月笙', '18092671458', '大书房打的ed', '2018-01-12 05:51:46.278921');
INSERT INTO `operation_userask` VALUES (29, '大大框架', '18092671458', '法大大发送', '2018-01-12 05:52:10.349645');
INSERT INTO `operation_userask` VALUES (30, '大使馆等不', '18092671458', '大叔大婶大所', '2018-01-12 05:52:40.133850');
INSERT INTO `operation_userask` VALUES (31, '田岩', '18092671458', '大大大书房', '2018-01-12 05:53:51.899697');
INSERT INTO `operation_userask` VALUES (32, '田岩', '1318613306', '哈哈哈哈或', '2018-01-12 05:54:31.213845');
INSERT INTO `operation_userask` VALUES (33, '田岩明月', '13186133006', '大健康不打击', '2018-01-12 05:54:51.257247');
INSERT INTO `operation_userask` VALUES (34, '天涯明月笙', '18092671458', '大是大非发', '2018-01-12 05:57:03.364736');
INSERT INTO `operation_userask` VALUES (35, '天涯', '18091829311', '嘎嘎嘎嘎嘎', '2018-01-12 06:15:13.819049');
INSERT INTO `operation_userask` VALUES (36, '额', '13739511384', '带上', '2018-03-23 10:45:10.406005');
INSERT INTO `operation_userask` VALUES (37, '小三也有情', '15888888888', '牧雪在线', '2018-03-30 17:28:28.574050');
INSERT INTO `operation_userask` VALUES (38, 'xq', '13169646556', '1322', '2018-04-02 12:55:40.820162');
INSERT INTO `operation_userask` VALUES (39, '啊', '15829182751', 'ad', '2018-04-03 04:38:21.493756');
INSERT INTO `operation_userask` VALUES (40, 'test', '18294827195', 'aa', '2018-04-03 16:34:44.659668');
INSERT INTO `operation_userask` VALUES (41, 'admin', '13913913999', 'qeqr', '2018-04-11 12:33:52.615580');
INSERT INTO `operation_userask` VALUES (42, 'TTT', '13545677897', 'python', '2018-04-16 17:47:40.333682');
INSERT INTO `operation_userask` VALUES (43, 'admin', '18406586148', '天涯明月笙编程-2', '2018-04-19 01:49:21.728645');
INSERT INTO `operation_userask` VALUES (44, '吴', '15221355838', '木看望', '2018-04-19 18:32:13.108703');
INSERT INTO `operation_userask` VALUES (45, 'k', '15221355838', '5', '2018-04-19 19:08:18.669938');
INSERT INTO `operation_userask` VALUES (46, '我', '15221355838', 'ad1', '2018-04-19 19:21:11.915874');
INSERT INTO `operation_userask` VALUES (47, '莫开胜', '15313316269', '天涯', '2018-04-21 13:53:58.502167');
INSERT INTO `operation_userask` VALUES (48, 'derek', '15250265042', 'pyhton', '2018-04-22 11:30:59.173640');

-- ----------------------------
-- Table structure for operation_usercourse
-- ----------------------------
DROP TABLE IF EXISTS `operation_usercourse`;
CREATE TABLE `operation_usercourse`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NULL DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id`(`course_id`) USING BTREE,
  INDEX `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 128 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_usercourse
-- ----------------------------
INSERT INTO `operation_usercourse` VALUES (1, '2018-01-13 02:47:00.000000', 1, 1);
INSERT INTO `operation_usercourse` VALUES (2, '2018-01-13 02:48:00.000000', 1, 2);
INSERT INTO `operation_usercourse` VALUES (3, '2018-01-13 21:33:00.074318', 2, 1);
INSERT INTO `operation_usercourse` VALUES (4, '2018-01-13 21:33:08.964313', 3, 1);
INSERT INTO `operation_usercourse` VALUES (5, '2018-01-13 21:53:02.127042', 6, 1);
INSERT INTO `operation_usercourse` VALUES (6, '2018-01-14 18:32:12.702576', 2, 2);
INSERT INTO `operation_usercourse` VALUES (7, '2018-01-15 01:36:07.173857', 9, 1);
INSERT INTO `operation_usercourse` VALUES (8, '2018-01-15 05:40:24.542000', 8, 1);
INSERT INTO `operation_usercourse` VALUES (9, '2018-03-12 13:40:37.659297', 4, 35);
INSERT INTO `operation_usercourse` VALUES (10, '2018-03-12 18:46:36.280201', 8, 36);
INSERT INTO `operation_usercourse` VALUES (11, '2018-03-12 18:46:48.309203', 9, 36);
INSERT INTO `operation_usercourse` VALUES (12, '2018-03-12 18:47:03.361654', 1, 36);
INSERT INTO `operation_usercourse` VALUES (13, '2018-03-13 10:23:10.017624', 1, 39);
INSERT INTO `operation_usercourse` VALUES (14, '2018-03-13 10:35:50.616961', 8, 38);
INSERT INTO `operation_usercourse` VALUES (15, '2018-03-13 11:27:12.790663', 8, 40);
INSERT INTO `operation_usercourse` VALUES (16, '2018-03-13 11:27:24.904898', 4, 40);
INSERT INTO `operation_usercourse` VALUES (17, '2018-03-13 11:27:52.751365', 6, 40);
INSERT INTO `operation_usercourse` VALUES (18, '2018-03-13 11:28:24.718668', 5, 40);
INSERT INTO `operation_usercourse` VALUES (19, '2018-03-13 11:28:36.364108', 7, 40);
INSERT INTO `operation_usercourse` VALUES (20, '2018-03-13 11:28:45.846936', 9, 40);
INSERT INTO `operation_usercourse` VALUES (21, '2018-03-13 11:29:41.401211', 1, 40);
INSERT INTO `operation_usercourse` VALUES (22, '2018-03-13 14:03:52.780777', 1, 41);
INSERT INTO `operation_usercourse` VALUES (23, '2018-03-13 20:28:21.521419', 7, 42);
INSERT INTO `operation_usercourse` VALUES (24, '2018-03-14 15:06:25.978481', 3, 37);
INSERT INTO `operation_usercourse` VALUES (25, '2018-03-14 16:55:04.548857', 1, 37);
INSERT INTO `operation_usercourse` VALUES (26, '2018-03-14 20:08:28.220093', 8, 44);
INSERT INTO `operation_usercourse` VALUES (27, '2018-03-16 10:33:39.712509', 8, 47);
INSERT INTO `operation_usercourse` VALUES (28, '2018-03-16 10:33:49.742770', 9, 47);
INSERT INTO `operation_usercourse` VALUES (29, '2018-03-16 18:34:14.869119', 1, 45);
INSERT INTO `operation_usercourse` VALUES (30, '2018-03-17 22:34:50.894762', 1, 38);
INSERT INTO `operation_usercourse` VALUES (31, '2018-03-18 19:44:32.141459', 4, 51);
INSERT INTO `operation_usercourse` VALUES (32, '2018-03-18 22:25:44.037077', 5, 52);
INSERT INTO `operation_usercourse` VALUES (33, '2018-03-19 21:10:44.926851', 8, 50);
INSERT INTO `operation_usercourse` VALUES (34, '2018-03-21 02:41:36.681536', 1, 56);
INSERT INTO `operation_usercourse` VALUES (35, '2018-03-21 18:08:39.732390', 8, 56);
INSERT INTO `operation_usercourse` VALUES (36, '2018-03-27 19:22:42.697790', 1, 78);
INSERT INTO `operation_usercourse` VALUES (37, '2018-03-27 19:22:52.915158', 1, 59);
INSERT INTO `operation_usercourse` VALUES (38, '2018-03-27 19:48:20.888915', 1, 79);
INSERT INTO `operation_usercourse` VALUES (39, '2018-03-28 11:14:00.671476', 4, 81);
INSERT INTO `operation_usercourse` VALUES (40, '2018-03-28 11:14:12.573735', 6, 81);
INSERT INTO `operation_usercourse` VALUES (41, '2018-03-29 09:34:59.716656', 6, 83);
INSERT INTO `operation_usercourse` VALUES (42, '2018-03-29 09:35:22.244958', 5, 83);
INSERT INTO `operation_usercourse` VALUES (43, '2018-03-29 09:35:48.919422', 1, 83);
INSERT INTO `operation_usercourse` VALUES (44, '2018-03-29 09:36:21.408997', 4, 83);
INSERT INTO `operation_usercourse` VALUES (45, '2018-03-29 10:29:22.026204', 1, 84);
INSERT INTO `operation_usercourse` VALUES (46, '2018-03-30 11:33:42.022221', 1, 88);
INSERT INTO `operation_usercourse` VALUES (47, '2018-03-30 11:57:16.989022', 7, 88);
INSERT INTO `operation_usercourse` VALUES (48, '2018-03-30 11:57:29.097780', 9, 88);
INSERT INTO `operation_usercourse` VALUES (49, '2018-03-30 15:08:10.922486', 1, 89);
INSERT INTO `operation_usercourse` VALUES (50, '2018-03-30 16:54:14.813452', 3, 88);
INSERT INTO `operation_usercourse` VALUES (51, '2018-03-30 17:38:01.063926', 8, 88);
INSERT INTO `operation_usercourse` VALUES (52, '2018-04-01 09:26:07.713874', 1, 92);
INSERT INTO `operation_usercourse` VALUES (53, '2018-04-02 12:54:29.037612', 9, 95);
INSERT INTO `operation_usercourse` VALUES (54, '2018-04-02 12:58:45.591962', 4, 96);
INSERT INTO `operation_usercourse` VALUES (55, '2018-04-02 22:19:26.570330', 3, 97);
INSERT INTO `operation_usercourse` VALUES (56, '2018-04-03 19:44:38.440573', 1, 102);
INSERT INTO `operation_usercourse` VALUES (57, '2018-04-04 11:57:59.146367', 1, 105);
INSERT INTO `operation_usercourse` VALUES (58, '2018-04-04 14:06:32.332526', 7, 106);
INSERT INTO `operation_usercourse` VALUES (59, '2018-04-04 14:06:48.156614', 1, 106);
INSERT INTO `operation_usercourse` VALUES (60, '2018-04-04 14:08:58.863016', 1, 107);
INSERT INTO `operation_usercourse` VALUES (61, '2018-04-04 17:29:45.768320', 1, 109);
INSERT INTO `operation_usercourse` VALUES (62, '2018-04-06 09:39:32.160455', 1, 110);
INSERT INTO `operation_usercourse` VALUES (63, '2018-04-06 23:48:06.974138', 4, 111);
INSERT INTO `operation_usercourse` VALUES (64, '2018-04-07 03:56:17.121055', 1, 112);
INSERT INTO `operation_usercourse` VALUES (65, '2018-04-07 17:34:03.180828', 1, 114);
INSERT INTO `operation_usercourse` VALUES (66, '2018-04-07 21:52:26.184954', 1, 116);
INSERT INTO `operation_usercourse` VALUES (67, '2018-04-07 21:54:26.008185', 5, 116);
INSERT INTO `operation_usercourse` VALUES (68, '2018-04-07 22:54:17.808804', 1, 118);
INSERT INTO `operation_usercourse` VALUES (69, '2018-04-08 12:40:52.464768', 1, 121);
INSERT INTO `operation_usercourse` VALUES (70, '2018-04-08 12:42:13.460328', 9, 121);
INSERT INTO `operation_usercourse` VALUES (71, '2018-04-08 12:42:20.355991', 8, 121);
INSERT INTO `operation_usercourse` VALUES (72, '2018-04-08 21:15:34.849282', 4, 123);
INSERT INTO `operation_usercourse` VALUES (73, '2018-04-08 21:15:44.482088', 6, 123);
INSERT INTO `operation_usercourse` VALUES (74, '2018-04-08 21:15:57.808102', 1, 123);
INSERT INTO `operation_usercourse` VALUES (75, '2018-04-09 20:56:00.820144', 4, 125);
INSERT INTO `operation_usercourse` VALUES (76, '2018-04-09 20:56:22.677952', 8, 125);
INSERT INTO `operation_usercourse` VALUES (77, '2018-04-09 20:56:29.853741', 1, 125);
INSERT INTO `operation_usercourse` VALUES (78, '2018-04-10 20:06:28.531853', 7, 127);
INSERT INTO `operation_usercourse` VALUES (79, '2018-04-10 20:07:18.270686', 2, 127);
INSERT INTO `operation_usercourse` VALUES (80, '2018-04-10 22:36:07.366568', 1, 128);
INSERT INTO `operation_usercourse` VALUES (81, '2018-04-11 09:14:33.906840', 1, 129);
INSERT INTO `operation_usercourse` VALUES (82, '2018-04-12 18:47:52.335349', 10, 45);
INSERT INTO `operation_usercourse` VALUES (83, '2018-04-12 20:21:11.937535', 1, 143);
INSERT INTO `operation_usercourse` VALUES (84, '2018-04-13 21:58:44.767020', 1, 144);
INSERT INTO `operation_usercourse` VALUES (85, '2018-04-13 21:59:23.057763', 9, 144);
INSERT INTO `operation_usercourse` VALUES (86, '2018-04-16 06:02:27.696289', 4, 150);
INSERT INTO `operation_usercourse` VALUES (87, '2018-04-16 06:02:39.818764', 8, 150);
INSERT INTO `operation_usercourse` VALUES (88, '2018-04-16 23:28:47.728072', 1, 151);
INSERT INTO `operation_usercourse` VALUES (89, '2018-04-16 23:30:48.484286', 2, 151);
INSERT INTO `operation_usercourse` VALUES (90, '2018-04-16 23:33:35.746607', 4, 151);
INSERT INTO `operation_usercourse` VALUES (91, '2018-04-18 22:39:07.884565', 8, 156);
INSERT INTO `operation_usercourse` VALUES (92, '2018-04-18 22:39:17.147009', 1, 156);
INSERT INTO `operation_usercourse` VALUES (93, '2018-04-19 10:15:53.906002', 2, 156);
INSERT INTO `operation_usercourse` VALUES (94, '2018-04-19 17:41:02.132870', 1, 161);
INSERT INTO `operation_usercourse` VALUES (95, '2018-04-19 17:41:21.142891', 8, 161);
INSERT INTO `operation_usercourse` VALUES (96, '2018-04-19 17:41:30.073623', 4, 161);
INSERT INTO `operation_usercourse` VALUES (97, '2018-04-19 17:41:40.849914', 5, 161);
INSERT INTO `operation_usercourse` VALUES (98, '2018-04-19 20:56:35.924009', 1, 164);
INSERT INTO `operation_usercourse` VALUES (99, '2018-04-20 10:18:08.623498', 4, 97);
INSERT INTO `operation_usercourse` VALUES (100, '2018-04-20 10:18:49.921952', 1, 97);
INSERT INTO `operation_usercourse` VALUES (101, '2018-04-20 12:43:45.800879', 10, 146);
INSERT INTO `operation_usercourse` VALUES (102, '2018-04-21 22:22:42.521107', 1, 168);
INSERT INTO `operation_usercourse` VALUES (103, '2018-04-22 10:54:08.027142', 10, 156);
INSERT INTO `operation_usercourse` VALUES (104, '2018-04-22 10:54:45.156332', 3, 156);
INSERT INTO `operation_usercourse` VALUES (105, '2018-04-22 11:28:11.984692', 1, 50);
INSERT INTO `operation_usercourse` VALUES (106, '2018-05-04 11:16:31.533412', 1, 170);
INSERT INTO `operation_usercourse` VALUES (107, '2018-05-04 11:17:02.398742', 8, 170);
INSERT INTO `operation_usercourse` VALUES (108, '2018-05-04 12:17:19.037135', 10, 105);
INSERT INTO `operation_usercourse` VALUES (109, '2018-05-04 19:45:06.401755', 8, 105);
INSERT INTO `operation_usercourse` VALUES (110, '2018-05-04 19:45:21.756627', 7, 105);
INSERT INTO `operation_usercourse` VALUES (111, '2018-05-04 23:21:33.120829', 7, 168);
INSERT INTO `operation_usercourse` VALUES (112, '2018-05-04 23:22:33.809134', 2, 168);
INSERT INTO `operation_usercourse` VALUES (113, '2018-05-04 23:23:38.586378', 4, 168);
INSERT INTO `operation_usercourse` VALUES (114, '2018-05-04 23:23:50.477944', 6, 168);
INSERT INTO `operation_usercourse` VALUES (115, '2018-05-05 00:54:20.419594', 1, 172);
INSERT INTO `operation_usercourse` VALUES (116, '2018-05-05 00:55:52.792653', 5, 172);
INSERT INTO `operation_usercourse` VALUES (117, '2018-05-05 02:48:59.644684', 10, 172);
INSERT INTO `operation_usercourse` VALUES (118, '2018-05-05 11:45:08.440445', 10, 173);
INSERT INTO `operation_usercourse` VALUES (119, '2018-05-05 12:24:46.906934', 2, 105);
INSERT INTO `operation_usercourse` VALUES (120, '2018-05-05 15:43:05.497989', 5, 105);
INSERT INTO `operation_usercourse` VALUES (121, '2018-05-05 22:27:46.374919', 1, 178);
INSERT INTO `operation_usercourse` VALUES (122, '2018-05-05 22:31:47.172180', 7, 45);
INSERT INTO `operation_usercourse` VALUES (123, '2018-05-05 22:56:30.869966', 6, 45);
INSERT INTO `operation_usercourse` VALUES (124, '2018-05-06 16:18:01.209035', 4, 179);
INSERT INTO `operation_usercourse` VALUES (125, '2018-05-06 16:18:15.559602', 1, 179);
INSERT INTO `operation_usercourse` VALUES (126, '2018-05-06 19:47:36.382521', 4, 144);
INSERT INTO `operation_usercourse` VALUES (127, '2018-05-06 21:10:01.565592', 1, 93);

-- ----------------------------
-- Table structure for operation_userfavorite
-- ----------------------------
DROP TABLE IF EXISTS `operation_userfavorite`;
CREATE TABLE `operation_userfavorite`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime(6) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 145 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_userfavorite
-- ----------------------------
INSERT INTO `operation_userfavorite` VALUES (14, 8, 2, '2018-01-12 22:45:44.225707', 1);
INSERT INTO `operation_userfavorite` VALUES (31, 5, 2, '2018-01-13 21:21:43.961066', 1);
INSERT INTO `operation_userfavorite` VALUES (37, 1, 1, '2018-01-13 23:24:02.313994', 1);
INSERT INTO `operation_userfavorite` VALUES (40, 2, 3, '2018-01-14 01:10:35.878154', 1);
INSERT INTO `operation_userfavorite` VALUES (44, 5, 2, '2018-01-14 19:50:14.386718', 2);
INSERT INTO `operation_userfavorite` VALUES (45, 4, 1, '2018-03-13 11:28:13.971740', 40);
INSERT INTO `operation_userfavorite` VALUES (46, 6, 2, '2018-03-13 11:28:16.173130', 40);
INSERT INTO `operation_userfavorite` VALUES (47, 8, 2, '2018-03-19 18:35:53.362671', 55);
INSERT INTO `operation_userfavorite` VALUES (54, 1, 1, '2018-03-27 20:16:10.676860', 79);
INSERT INTO `operation_userfavorite` VALUES (56, 2, 2, '2018-03-29 10:30:37.549832', 84);
INSERT INTO `operation_userfavorite` VALUES (59, 2, 2, '2018-03-29 18:40:01.564781', 87);
INSERT INTO `operation_userfavorite` VALUES (60, 1, 1, '2018-03-30 11:33:25.013907', 88);
INSERT INTO `operation_userfavorite` VALUES (63, 12, 2, '2018-03-30 11:57:16.032314', 88);
INSERT INTO `operation_userfavorite` VALUES (65, 12, 3, '2018-03-30 11:57:57.617682', 88);
INSERT INTO `operation_userfavorite` VALUES (70, 9, 1, '2018-03-30 16:54:31.758622', 88);
INSERT INTO `operation_userfavorite` VALUES (74, 8, 1, '2018-03-30 17:38:09.991717', 88);
INSERT INTO `operation_userfavorite` VALUES (75, 1, 1, '2018-04-01 09:26:06.996339', 92);
INSERT INTO `operation_userfavorite` VALUES (77, 4, 1, '2018-04-02 12:54:10.659125', 95);
INSERT INTO `operation_userfavorite` VALUES (79, 9, 1, '2018-04-02 12:55:00.935836', 95);
INSERT INTO `operation_userfavorite` VALUES (80, 6, 2, '2018-04-02 12:58:44.050810', 96);
INSERT INTO `operation_userfavorite` VALUES (81, 3, 1, '2018-04-02 22:19:13.652361', 97);
INSERT INTO `operation_userfavorite` VALUES (82, 2, 3, '2018-04-03 16:55:30.716623', 56);
INSERT INTO `operation_userfavorite` VALUES (83, 2, 2, '2018-04-04 14:08:56.472515', 107);
INSERT INTO `operation_userfavorite` VALUES (85, 1, 1, '2018-04-04 17:31:09.697691', 109);
INSERT INTO `operation_userfavorite` VALUES (86, 2, 2, '2018-04-04 17:31:15.870251', 109);
INSERT INTO `operation_userfavorite` VALUES (87, 2, 3, '2018-04-04 22:27:51.721631', 45);
INSERT INTO `operation_userfavorite` VALUES (88, 2, 2, '2018-04-04 22:27:57.543649', 45);
INSERT INTO `operation_userfavorite` VALUES (89, 5, 1, '2018-04-07 21:54:24.479478', 116);
INSERT INTO `operation_userfavorite` VALUES (90, 2, 3, '2018-04-08 23:04:46.778644', 121);
INSERT INTO `operation_userfavorite` VALUES (93, 2, 2, '2018-04-10 10:48:23.489334', 121);
INSERT INTO `operation_userfavorite` VALUES (104, 1, 1, '2018-04-11 12:31:51.275795', 56);
INSERT INTO `operation_userfavorite` VALUES (105, 1, 1, '2018-04-19 17:42:11.670360', 161);
INSERT INTO `operation_userfavorite` VALUES (106, 4, 1, '2018-04-19 17:42:15.381533', 161);
INSERT INTO `operation_userfavorite` VALUES (108, 2, 3, '2018-04-20 12:43:30.595528', 146);
INSERT INTO `operation_userfavorite` VALUES (111, 1, 1, '2018-04-21 13:34:07.356845', 123);
INSERT INTO `operation_userfavorite` VALUES (120, 2, 3, '2018-04-21 18:23:18.075928', 123);
INSERT INTO `operation_userfavorite` VALUES (132, 10, 1, '2018-05-04 12:17:46.955674', 105);
INSERT INTO `operation_userfavorite` VALUES (134, 12, 2, '2018-05-04 23:23:20.858051', 168);
INSERT INTO `operation_userfavorite` VALUES (135, 7, 1, '2018-05-04 23:23:22.205191', 168);
INSERT INTO `operation_userfavorite` VALUES (139, 16, 2, '2018-05-06 20:24:49.772230', 173);

-- ----------------------------
-- Table structure for operation_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `operation_usermessage`;
CREATE TABLE `operation_usermessage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 149 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_usermessage
-- ----------------------------
INSERT INTO `operation_usermessage` VALUES (1, 1, '欢迎注册mtianyan的慕课小站', 1, '2018-01-14 21:43:00.000000');
INSERT INTO `operation_usermessage` VALUES (2, 34, '欢迎注册mtianyan慕课小站!!', 0, '2018-01-16 04:44:23.655000');
INSERT INTO `operation_usermessage` VALUES (3, 35, '欢迎注册mtianyan慕课小站!!', 1, '2018-03-12 13:39:29.556839');
INSERT INTO `operation_usermessage` VALUES (4, 36, '欢迎注册mtianyan慕课小站!!', 1, '2018-03-12 18:46:01.938002');
INSERT INTO `operation_usermessage` VALUES (5, 37, '欢迎注册mtianyan慕课小站!!', 1, '2018-03-13 08:30:42.989953');
INSERT INTO `operation_usermessage` VALUES (6, 38, '欢迎注册mtianyan慕课小站!!', 1, '2018-03-13 10:13:00.092404');
INSERT INTO `operation_usermessage` VALUES (7, 39, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-13 10:22:30.944005');
INSERT INTO `operation_usermessage` VALUES (8, 40, '欢迎注册mtianyan慕课小站!!', 1, '2018-03-13 11:22:27.700088');
INSERT INTO `operation_usermessage` VALUES (9, 41, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-13 13:58:21.148245');
INSERT INTO `operation_usermessage` VALUES (10, 42, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-13 20:27:19.988825');
INSERT INTO `operation_usermessage` VALUES (11, 43, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-14 14:45:55.159247');
INSERT INTO `operation_usermessage` VALUES (12, 44, '欢迎注册mtianyan慕课小站!!', 1, '2018-03-14 20:06:52.688679');
INSERT INTO `operation_usermessage` VALUES (13, 46, '欢迎注册mtianyan慕课小站!!', 1, '2018-03-15 09:40:39.431779');
INSERT INTO `operation_usermessage` VALUES (14, 47, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-16 10:32:16.429316');
INSERT INTO `operation_usermessage` VALUES (15, 48, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-16 11:44:01.566985');
INSERT INTO `operation_usermessage` VALUES (16, 49, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-16 22:53:30.755174');
INSERT INTO `operation_usermessage` VALUES (17, 50, '欢迎注册mtianyan慕课小站!!', 1, '2018-03-17 13:32:10.105405');
INSERT INTO `operation_usermessage` VALUES (18, 51, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-18 19:43:36.392626');
INSERT INTO `operation_usermessage` VALUES (19, 52, '欢迎注册mtianyan慕课小站!!', 1, '2018-03-18 22:23:52.285368');
INSERT INTO `operation_usermessage` VALUES (20, 53, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-19 13:54:55.898860');
INSERT INTO `operation_usermessage` VALUES (21, 54, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-19 17:37:33.046885');
INSERT INTO `operation_usermessage` VALUES (22, 55, '欢迎注册mtianyan慕课小站!!', 1, '2018-03-19 18:32:49.485540');
INSERT INTO `operation_usermessage` VALUES (23, 56, '欢迎注册mtianyan慕课小站!!', 1, '2018-03-20 12:10:11.442195');
INSERT INTO `operation_usermessage` VALUES (24, 57, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-20 12:13:40.011197');
INSERT INTO `operation_usermessage` VALUES (25, 58, '欢迎注册mtianyan慕课小站!!', 1, '2018-03-20 16:08:45.909361');
INSERT INTO `operation_usermessage` VALUES (26, 59, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-21 18:41:23.388983');
INSERT INTO `operation_usermessage` VALUES (27, 60, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-22 13:04:54.292130');
INSERT INTO `operation_usermessage` VALUES (28, 61, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-22 14:17:02.088641');
INSERT INTO `operation_usermessage` VALUES (29, 62, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-22 21:24:47.493083');
INSERT INTO `operation_usermessage` VALUES (30, 63, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-22 21:26:09.055037');
INSERT INTO `operation_usermessage` VALUES (31, 64, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-22 23:14:09.639385');
INSERT INTO `operation_usermessage` VALUES (32, 65, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-23 01:28:23.449771');
INSERT INTO `operation_usermessage` VALUES (33, 66, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-23 13:21:08.906912');
INSERT INTO `operation_usermessage` VALUES (34, 67, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-23 15:42:12.729513');
INSERT INTO `operation_usermessage` VALUES (35, 68, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-24 18:36:16.394607');
INSERT INTO `operation_usermessage` VALUES (36, 69, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-24 20:58:51.332427');
INSERT INTO `operation_usermessage` VALUES (37, 70, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-24 22:42:10.961205');
INSERT INTO `operation_usermessage` VALUES (38, 71, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-24 23:41:40.846637');
INSERT INTO `operation_usermessage` VALUES (39, 72, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-24 23:44:24.266412');
INSERT INTO `operation_usermessage` VALUES (40, 73, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-24 23:47:26.149281');
INSERT INTO `operation_usermessage` VALUES (41, 74, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-25 16:57:34.077742');
INSERT INTO `operation_usermessage` VALUES (42, 75, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-25 20:27:25.657801');
INSERT INTO `operation_usermessage` VALUES (43, 76, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-26 17:57:56.772061');
INSERT INTO `operation_usermessage` VALUES (44, 77, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-26 17:58:38.421751');
INSERT INTO `operation_usermessage` VALUES (45, 78, '欢迎注册mtianyan慕课小站!!', 1, '2018-03-27 19:20:58.268261');
INSERT INTO `operation_usermessage` VALUES (46, 79, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-27 19:46:37.475601');
INSERT INTO `operation_usermessage` VALUES (47, 80, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-27 22:20:45.046359');
INSERT INTO `operation_usermessage` VALUES (48, 81, '欢迎注册mtianyan慕课小站!!', 1, '2018-03-28 11:13:14.709002');
INSERT INTO `operation_usermessage` VALUES (49, 82, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-28 23:20:24.895090');
INSERT INTO `operation_usermessage` VALUES (50, 83, '欢迎注册mtianyan慕课小站!!', 1, '2018-03-29 09:33:44.597907');
INSERT INTO `operation_usermessage` VALUES (51, 84, '欢迎注册mtianyan慕课小站!!', 1, '2018-03-29 10:26:30.478348');
INSERT INTO `operation_usermessage` VALUES (52, 85, '欢迎注册mtianyan慕课小站!!', 1, '2018-03-29 18:34:05.753454');
INSERT INTO `operation_usermessage` VALUES (53, 86, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-29 18:38:01.455681');
INSERT INTO `operation_usermessage` VALUES (54, 87, '欢迎注册mtianyan慕课小站!!', 1, '2018-03-29 18:38:39.838071');
INSERT INTO `operation_usermessage` VALUES (55, 88, '欢迎注册mtianyan慕课小站!!', 1, '2018-03-30 11:30:49.505527');
INSERT INTO `operation_usermessage` VALUES (56, 89, '欢迎注册mtianyan慕课小站!!', 1, '2018-03-30 15:07:17.593344');
INSERT INTO `operation_usermessage` VALUES (57, 90, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-30 17:23:10.751590');
INSERT INTO `operation_usermessage` VALUES (58, 91, '欢迎注册mtianyan慕课小站!!', 0, '2018-03-31 18:22:09.861470');
INSERT INTO `operation_usermessage` VALUES (59, 92, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-01 09:24:01.352434');
INSERT INTO `operation_usermessage` VALUES (60, 93, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-02 08:15:51.897325');
INSERT INTO `operation_usermessage` VALUES (61, 94, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-02 09:14:18.361769');
INSERT INTO `operation_usermessage` VALUES (62, 95, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-02 12:53:12.962646');
INSERT INTO `operation_usermessage` VALUES (63, 96, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-02 12:57:38.736880');
INSERT INTO `operation_usermessage` VALUES (64, 97, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-02 22:16:39.932520');
INSERT INTO `operation_usermessage` VALUES (65, 98, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-02 23:31:05.924743');
INSERT INTO `operation_usermessage` VALUES (66, 99, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-03 02:40:04.205281');
INSERT INTO `operation_usermessage` VALUES (67, 100, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-03 15:24:11.039434');
INSERT INTO `operation_usermessage` VALUES (68, 101, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-03 16:38:09.678625');
INSERT INTO `operation_usermessage` VALUES (69, 102, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-03 19:43:54.872773');
INSERT INTO `operation_usermessage` VALUES (70, 103, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-04 01:05:20.277748');
INSERT INTO `operation_usermessage` VALUES (71, 104, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-04 01:05:57.231738');
INSERT INTO `operation_usermessage` VALUES (72, 105, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-04 11:56:22.429335');
INSERT INTO `operation_usermessage` VALUES (73, 106, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-04 14:04:37.410355');
INSERT INTO `operation_usermessage` VALUES (74, 107, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-04 14:05:06.398908');
INSERT INTO `operation_usermessage` VALUES (75, 108, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-04 14:45:25.637747');
INSERT INTO `operation_usermessage` VALUES (76, 109, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-04 17:28:34.438947');
INSERT INTO `operation_usermessage` VALUES (77, 110, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-06 09:37:31.706469');
INSERT INTO `operation_usermessage` VALUES (78, 111, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-06 23:44:13.311231');
INSERT INTO `operation_usermessage` VALUES (79, 112, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-07 03:54:44.959147');
INSERT INTO `operation_usermessage` VALUES (80, 113, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-07 10:28:18.743687');
INSERT INTO `operation_usermessage` VALUES (81, 114, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-07 17:33:05.228492');
INSERT INTO `operation_usermessage` VALUES (82, 115, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-07 21:50:31.484547');
INSERT INTO `operation_usermessage` VALUES (83, 116, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-07 21:51:43.872007');
INSERT INTO `operation_usermessage` VALUES (84, 117, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-07 22:46:10.302656');
INSERT INTO `operation_usermessage` VALUES (85, 118, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-07 22:52:15.876563');
INSERT INTO `operation_usermessage` VALUES (86, 119, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-08 02:18:22.057088');
INSERT INTO `operation_usermessage` VALUES (87, 120, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-08 11:31:07.551479');
INSERT INTO `operation_usermessage` VALUES (88, 121, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-08 12:38:51.499376');
INSERT INTO `operation_usermessage` VALUES (89, 122, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-08 16:58:53.289527');
INSERT INTO `operation_usermessage` VALUES (90, 123, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-08 21:14:35.170508');
INSERT INTO `operation_usermessage` VALUES (91, 124, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-09 15:35:20.440614');
INSERT INTO `operation_usermessage` VALUES (92, 125, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-09 20:55:37.032967');
INSERT INTO `operation_usermessage` VALUES (93, 126, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-10 17:12:38.127366');
INSERT INTO `operation_usermessage` VALUES (94, 127, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-10 20:03:55.742006');
INSERT INTO `operation_usermessage` VALUES (95, 128, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-10 22:34:25.325445');
INSERT INTO `operation_usermessage` VALUES (96, 129, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-11 09:12:47.750374');
INSERT INTO `operation_usermessage` VALUES (97, 130, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-12 11:03:33.251518');
INSERT INTO `operation_usermessage` VALUES (98, 131, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-12 12:58:59.851076');
INSERT INTO `operation_usermessage` VALUES (99, 132, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-12 14:53:12.377043');
INSERT INTO `operation_usermessage` VALUES (100, 133, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-12 14:53:48.667151');
INSERT INTO `operation_usermessage` VALUES (101, 134, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-12 17:04:57.849514');
INSERT INTO `operation_usermessage` VALUES (102, 135, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-12 17:05:24.789120');
INSERT INTO `operation_usermessage` VALUES (103, 136, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-12 18:39:30.559683');
INSERT INTO `operation_usermessage` VALUES (104, 137, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-12 18:53:31.296241');
INSERT INTO `operation_usermessage` VALUES (105, 138, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-12 18:54:08.113126');
INSERT INTO `operation_usermessage` VALUES (106, 139, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-12 18:54:43.673118');
INSERT INTO `operation_usermessage` VALUES (107, 140, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-12 18:56:39.987828');
INSERT INTO `operation_usermessage` VALUES (108, 141, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-12 18:58:04.609214');
INSERT INTO `operation_usermessage` VALUES (109, 142, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-12 19:38:15.544804');
INSERT INTO `operation_usermessage` VALUES (110, 143, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-12 20:15:50.279820');
INSERT INTO `operation_usermessage` VALUES (111, 144, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-13 21:57:57.839506');
INSERT INTO `operation_usermessage` VALUES (112, 145, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-13 22:12:45.431647');
INSERT INTO `operation_usermessage` VALUES (113, 146, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-14 13:48:11.294641');
INSERT INTO `operation_usermessage` VALUES (114, 147, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-14 17:19:42.497834');
INSERT INTO `operation_usermessage` VALUES (115, 148, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-14 22:02:54.682532');
INSERT INTO `operation_usermessage` VALUES (116, 149, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-15 22:33:13.987791');
INSERT INTO `operation_usermessage` VALUES (117, 150, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-16 06:01:07.781494');
INSERT INTO `operation_usermessage` VALUES (118, 151, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-16 23:28:15.638447');
INSERT INTO `operation_usermessage` VALUES (119, 152, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-17 00:15:59.500545');
INSERT INTO `operation_usermessage` VALUES (120, 153, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-17 00:17:32.916750');
INSERT INTO `operation_usermessage` VALUES (121, 154, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-17 10:31:54.174434');
INSERT INTO `operation_usermessage` VALUES (122, 155, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-18 15:31:57.046163');
INSERT INTO `operation_usermessage` VALUES (123, 156, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-18 22:35:36.536154');
INSERT INTO `operation_usermessage` VALUES (124, 157, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-19 09:08:36.508440');
INSERT INTO `operation_usermessage` VALUES (125, 158, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-19 16:44:47.975142');
INSERT INTO `operation_usermessage` VALUES (126, 159, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-19 16:46:09.273382');
INSERT INTO `operation_usermessage` VALUES (127, 160, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-19 17:39:14.619269');
INSERT INTO `operation_usermessage` VALUES (128, 161, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-19 17:39:51.607158');
INSERT INTO `operation_usermessage` VALUES (129, 162, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-19 19:12:30.110697');
INSERT INTO `operation_usermessage` VALUES (130, 163, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-19 19:36:51.083531');
INSERT INTO `operation_usermessage` VALUES (131, 164, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-19 20:55:14.810627');
INSERT INTO `operation_usermessage` VALUES (132, 165, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-20 23:42:20.702316');
INSERT INTO `operation_usermessage` VALUES (133, 166, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-21 15:37:34.839415');
INSERT INTO `operation_usermessage` VALUES (134, 167, '欢迎注册mtianyan慕课小站!!', 0, '2018-04-21 15:38:06.988617');
INSERT INTO `operation_usermessage` VALUES (135, 168, '欢迎注册mtianyan慕课小站!!', 1, '2018-04-21 22:21:02.685058');
INSERT INTO `operation_usermessage` VALUES (136, 169, '欢迎注册mtianyan慕课小站!!', 0, '2018-05-04 09:45:56.364796');
INSERT INTO `operation_usermessage` VALUES (137, 170, '欢迎注册mtianyan慕课小站!!', 1, '2018-05-04 11:15:14.533817');
INSERT INTO `operation_usermessage` VALUES (138, 171, '欢迎注册mtianyan慕课小站!!', 1, '2018-05-04 19:29:43.725060');
INSERT INTO `operation_usermessage` VALUES (139, 172, '欢迎注册mtianyan慕课小站!!', 1, '2018-05-05 00:33:26.829708');
INSERT INTO `operation_usermessage` VALUES (140, 173, '欢迎注册mtianyan慕课小站!!', 1, '2018-05-05 11:43:49.898520');
INSERT INTO `operation_usermessage` VALUES (141, 174, '欢迎注册mtianyan慕课小站!!', 1, '2018-05-05 18:01:59.972790');
INSERT INTO `operation_usermessage` VALUES (142, 175, '欢迎注册mtianyan慕课小站!!', 0, '2018-05-05 20:08:58.916939');
INSERT INTO `operation_usermessage` VALUES (143, 176, '欢迎注册mtianyan慕课小站!!', 1, '2018-05-05 20:10:01.211642');
INSERT INTO `operation_usermessage` VALUES (144, 177, '欢迎注册mtianyan慕课小站!!', 0, '2018-05-05 21:34:27.669376');
INSERT INTO `operation_usermessage` VALUES (145, 178, '欢迎注册mtianyan慕课小站!!', 0, '2018-05-05 22:25:07.759625');
INSERT INTO `operation_usermessage` VALUES (146, 179, '欢迎注册mtianyan慕课小站!!', 1, '2018-05-06 16:15:05.075154');
INSERT INTO `operation_usermessage` VALUES (147, 180, '欢迎注册mtianyan慕课小站!!', 0, '2018-05-06 16:32:55.952984');
INSERT INTO `operation_usermessage` VALUES (148, 181, '欢迎注册mtianyan慕课小站!!', 1, '2018-05-06 19:18:44.020095');

-- ----------------------------
-- Table structure for organization_citydict
-- ----------------------------
DROP TABLE IF EXISTS `organization_citydict`;
CREATE TABLE `organization_citydict`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization_citydict
-- ----------------------------
INSERT INTO `organization_citydict` VALUES (2, '北京市', '中国首都', '2018-01-11 20:01:00.000000');
INSERT INTO `organization_citydict` VALUES (3, '上海市', '中国魔都', '2018-01-11 20:01:00.000000');
INSERT INTO `organization_citydict` VALUES (4, '杭州市', '人间天堂', '2018-01-11 20:02:00.000000');
INSERT INTO `organization_citydict` VALUES (5, '西安市', '我爱我家', '2018-01-11 20:02:00.000000');
INSERT INTO `organization_citydict` VALUES (6, '广州市', '咩咩咩，羊羊羊', '2018-01-11 20:02:00.000000');
INSERT INTO `organization_citydict` VALUES (7, '深圳市', '有位老人画了一个圈', '2018-01-11 20:03:00.000000');
INSERT INTO `organization_citydict` VALUES (8, '昆明市', '四季如春', '2018-01-11 20:04:00.000000');
INSERT INTO `organization_citydict` VALUES (9, '乌鲁木齐', '新疆', '2018-01-12 22:49:00.000000');
INSERT INTO `organization_citydict` VALUES (10, '火星火火火城', '火星', '2018-01-12 23:02:00.000000');
INSERT INTO `organization_citydict` VALUES (11, '互联网+ 城市', '互联网+', '2018-04-08 23:44:00.000000');

-- ----------------------------
-- Table structure for organization_courseorg
-- ----------------------------
DROP TABLE IF EXISTS `organization_courseorg`;
CREATE TABLE `organization_courseorg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NULL DEFAULT NULL,
  `city_id` int(11) NOT NULL,
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_nums` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `organization_course_city_id_4a842f85_fk_organization_citydict_id`(`city_id`) USING BTREE,
  CONSTRAINT `organization_course_city_id_4a842f85_fk_organization_citydict_id` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization_courseorg
-- ----------------------------
INSERT INTO `organization_courseorg` VALUES (2, '慕课网', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n     慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。', 418, 6, 'org/2018/01/imooc_4IdqJ9p.png', '北京市慕课科技中心', '2018-01-11 20:12:00.000000', 2, 'pxjg', 0, 0, '国内名校');
INSERT INTO `organization_courseorg` VALUES (3, '北京大学', '北京大学，简称“北大”，诞生于1898年，初名京师大学堂，是中国近代第一所国立大学，也是最早以“大学”之名创办的学校，其成立标志着中国近代高等教育的开端。北大是中国近代以来唯一以国家最高学府身份创立的学校，最初也是国家最高教育行政机关，行使教育部职能，统管全国教育。北大催生了中国最早的现代学制，开创了中国最早的文科、理科、社科、农科、医科等大学学科，是近代以来中国高等教育的奠基者。', 138, 0, 'org/2018/01/beijingdaxue.png', '中国北京市海淀区颐和园路5号', '2018-01-11 20:15:00.000000', 2, 'gx', 0, 0, '国内名校');
INSERT INTO `organization_courseorg` VALUES (5, '浙江大学', '浙江大学（Zhejiang University），简称“浙大”，坐落于“人间天堂”杭州。前身是1897年创建的求是书院，是中国人自己最早创办的新式高等学校之一。1928年更名为国立浙江大学。中华民国时期，浙江大学在竺可桢老校长带领下，崛起为民国最高学府之一，被英国科学史家李约瑟誉为“东方剑桥”，迎来了浙大百年历史中最辉煌的时期。竺可桢老校长因其历史贡献，成为了浙大校史中最伟大的人，并为浙大确立了“求是”校训和文言文《浙江大学校歌》。', 58, 0, 'org/2018/01/zju_XOugCKr.png', '浙江省杭州市西湖区翠苑街道余杭塘路866号', '2018-01-11 20:22:00.000000', 4, 'gx', 0, 0, '国内名校');
INSERT INTO `organization_courseorg` VALUES (6, '云南大学', '云南大学（Yunnan University），简称云大（YNU），原名私立东陆大学，始建于1922年12月，1934年更名为省立云南大学，1938年改为国立云南大学，是我国西部边疆最早建立的综合性大学之一，1946年，《不列颠百科全书》将云南大学列为中国15所世界著名大学之一，1949年径称“云南大学”，沿用至今。由复旦大学对口支援云南大学。\r\n   云南大学是省部共建的全国重点大学[2]  ，中国首批42所双一流建设高校，211工程、2011计划、千人计划、卓越法律人才教育培养计划、卓越工程师教育培养计划，高等学校学科创新引智计划（111计划）入选高校，中西部高校基础能力建设工程实施高校，中西部高校综合实力提升工程建设高校，中西部高校联盟的重要成员。学校以民族学、生物学、特色资源开发与环境保护、边疆问题、以及东南亚和南亚国际问题研究为优势特色，发展成为涵盖12大学科门类，人才密集的全国重点综合性大学。', 50, 2, 'org/2018/01/ynu_70oImVZ.png', '云南省昆明市呈贡区大学城云南大学呈贡校区', '2018-01-11 20:23:00.000000', 8, 'gx', 1, 0, '国内名校');
INSERT INTO `organization_courseorg` VALUES (7, '天涯明月笙培训', '一只考研狗。热爱技术。\r\n精通各种语言的helloworld。\r\n精通配各种环境，略懂修电脑。\r\n爱写博客。上课爱抄ppt，人称ppt复制者。lol万磁王成就达成者。\r\n技术栈: python java php', 34, 0, 'org/2018/01/mtianyan_mFUZjXX.png', '陕西省西安市我家', '2018-01-11 20:25:00.000000', 5, 'pxjg', 1, 0, '国内名校');
INSERT INTO `organization_courseorg` VALUES (8, '上海复旦', '复旦大学（Fudan University），简称“复旦”，位于中国上海，由中华人民共和国教育部直属，中央直管副部级建制，位列211工程、985工程，入选双一流、“珠峰计划”、“111计划”、“2011计划”、“卓越医生教育培养计划”，为“九校联盟”成员、中国大学校长联谊会成员、东亚研究型大学协会成员、环太平洋大学协会成员、21世纪大学协会成员，是一所综合性研究型的全国重点大学。', 57, 1, 'org/2018/01/fudan.png', '上海市杨浦区邯郸路220号', '2018-01-11 20:28:00.000000', 3, 'gx', 1, 0, '国内名校');
INSERT INTO `organization_courseorg` VALUES (9, 'mtianyan个人', '在这里\r\n雄关漫道真如铁, 而今迈步从头越! 技术进步没有终点，只有新的起点。\r\n您可以在这些地方找到我:\r\n简书: https://www.jianshu.com/u/db9a7a0daa1f\r\n博客: http://blog.mtianyan.cn/\r\nGitHub:https://github.com/mtianyan\r\n有趣的Python群: 619417153\r\n欢迎您的交流, 关注, star!', 76, 0, 'org/2018/01/mtianyan_6chFdZo.png', '陕西省西安市我家电脑前', '2018-01-11 20:32:00.000000', 5, 'gr', 20, 10, '国内名校');
INSERT INTO `organization_courseorg` VALUES (10, '深圳大学', '深圳大学（Shenzhen University），简称“深大”，位于广东省深圳市南山区南海大道3688号，1983年经国务院批准创办。中央、教育部和地方高度重视特区大学建设。北京大学援建中文、外语类学科，清华大学援建电子、建筑类学科，中国人民大学援建经济、法律类学科，学校办学层次由学士、硕士到博士教育。深圳大学是深圳唯一的一所综合性大学，也是深圳规模最大的一所本科院校。', 41, 0, 'org/2018/01/shenzhen.png', '广东深圳市南山区南海大道3688号', '2018-01-11 20:35:00.000000', 7, 'gx', 1, 0, '国内名校');
INSERT INTO `organization_courseorg` VALUES (11, '暨南大学', '暨南大学（Jinan University），简称“”暨大（JNU），位于广东省广州市，是中国第一所由国家创办的华侨最高学府，是中央部属高校，直属“国务院侨务办公室”领导，被誉为“中国第一侨校”。学校是国家“211工程”、“985工程优势学科创新平台”  全国重点大学，是国家“双一流”世界一流学科建设高校 ，入选国家“111计划”、“2011计划”  、教育部“卓越医生教育培养计划”、“卓越法律人才教育培养计划”、教育部人文社会科学重点研究基地、国家建设高水平大学公派研究生项目，是教育部、国侨办、广东省三方签约重点共建大学  ，教育部全国首批深化创新创业教育改革示范高校，中国改革开放以来最早开展学位与研究生教育的高校之一，设有研究生院  ，具有推荐免试研究生资格。', 52, 0, 'org/2018/01/jinan_1geI1yp.png', '广东省广州市黄埔大道西601号（510632 ）', '2018-01-11 20:37:00.000000', 6, 'gx', 1, 0, '国内名校');
INSERT INTO `organization_courseorg` VALUES (12, '清华大学', '清华大学（Tsinghua University），简称“清华”，由中华人民共和国教育部直属，中央直管副部级建制，位列“211工程”、“985工程”、“世界一流大学和一流学科”，入选“基础学科拔尖学生培养试验计划”、“高等学校创新能力提升计划”、“高等学校学科创新引智计划”，为九校联盟、中国大学校长联谊会、东亚研究型大学协会、亚洲大学联盟、环太平洋大学联盟、清华—剑桥—MIT低碳大学联盟成员，被誉为“红色工程师的摇篮”。', 31, 2, 'org/2018/01/Tsinghua.png', '北京市海淀区中关村北大街', '2018-01-11 22:59:00.000000', 2, 'gx', 1, 0, '国内名校');
INSERT INTO `organization_courseorg` VALUES (13, '测试大学', '哈哈', 41, 0, 'org/2018/01/mtianyan_aJHBiwQ.png', '我也不知道在哪', '2018-01-12 02:59:00.000000', 5, 'pxjg', 0, 0, '国内名校');
INSERT INTO `organization_courseorg` VALUES (14, '小葵花妈妈课堂', '小葵花妈妈课堂，3年来，小葵花妈妈课堂，通过努力行动来实现自己的信条价值，通过与医院、地方社区、地方幼儿园以及其他合作伙伴的协作关系，展开各健康领域的公益活动并把“产业报国，贡献社会”的精神和理念融入发展中。致力于营造儿童安全、科学、健康用药的环境。', 56, 0, 'org/2018/01/xiaokuihua.png', '乌鲁木齐不知道阿达', '2018-01-12 22:50:00.000000', 9, 'gr', 0, 0, '国内名校');
INSERT INTO `organization_courseorg` VALUES (15, '星星之火优培', '全能型补课，英语，数学，语文，物理，化学，啥都能补。', 52, 0, 'org/2018/01/xiaokuihua_DUXimig.png', '火星北半球你寻不着的地方', '2018-01-12 23:03:00.000000', 10, 'pxjg', 0, 0, '国内名校');
INSERT INTO `organization_courseorg` VALUES (16, '互联网+课程结构', '课程机构', 12, 1, 'org/2018/04/course-mtianyan.png', '软件学院', '2018-04-08 23:44:00.000000', 11, 'pxjg', 1, 0, '国内名校');

-- ----------------------------
-- Table structure for organization_teacher
-- ----------------------------
DROP TABLE IF EXISTS `organization_teacher`;
CREATE TABLE `organization_teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `work_position` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `points` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `add_time` datetime(6) NULL DEFAULT NULL,
  `org_id` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `organization_teache_org_id_cd000a1a_fk_organization_courseorg_id`(`org_id`) USING BTREE,
  CONSTRAINT `organization_teache_org_id_cd000a1a_fk_organization_courseorg_id` FOREIGN KEY (`org_id`) REFERENCES `organization_courseorg` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization_teacher
-- ----------------------------
INSERT INTO `organization_teacher` VALUES (2, 'mtianyan', 5, '天涯明月笙有限公司', 'CEO', '幽默，讲话又好听', 417, 105, '2018-01-12 06:34:00.000000', 2, 'teacher/2018/01/avatar_cBsu3w2.jpg', 18);
INSERT INTO `organization_teacher` VALUES (3, '杨教授', 10, '北京大学软件与微电子学院', '副院长', '严谨，耐心', 73, 0, '2018-01-12 06:35:00.000000', 3, 'teacher/2018/01/avatar_zRSnKYc.jpg', 18);
INSERT INTO `organization_teacher` VALUES (4, '陈越姥姥', 18, '浙江大学计算机学院', '院长', '幽默，近人', 81, 0, '2018-01-12 06:36:00.000000', 5, 'teacher/2018/01/course-mtianyan_E1V94aO_klRjA9S.png', 18);
INSERT INTO `organization_teacher` VALUES (5, '杨教授', 4, '云南大学软件学院', '教授', '紧跟时代潮流', 52, 0, '2018-01-12 06:37:00.000000', 6, 'teacher/2018/01/course-mtianyan_E1V94aO.png', 18);
INSERT INTO `organization_teacher` VALUES (6, '天涯', 1, '云南大学', '学生', '好学', 34, 0, '2018-01-12 06:38:00.000000', 7, 'teacher/2018/01/course-mtianyan_AWXYsdC.png', 18);
INSERT INTO `organization_teacher` VALUES (7, '李教授', 7, '复旦大学电子学院', '教授', '学风端正', 61, 0, '2018-01-12 06:39:00.000000', 8, 'teacher/2018/01/avatar_phJKpw6.jpg', 18);
INSERT INTO `organization_teacher` VALUES (8, 'mtianyan', 1, '家里蹲有限公司', '儿子', '宅，热爱学习', 48, 0, '2018-01-12 06:39:00.000000', 9, 'teacher/2018/01/avatar_RRcrp2y.jpg', 18);
INSERT INTO `organization_teacher` VALUES (9, '王教授', 5, '深圳大学计算机学院', '讲师', '认真，负责', 41, 0, '2018-01-12 06:40:00.000000', 10, 'teacher/2018/01/avatar_LmtZ5qg.jpg', 18);
INSERT INTO `organization_teacher` VALUES (10, '赵教授', 8, '暨南大学软件学院', '教授', '技术过硬，技术栈强大', 35, 0, '2018-01-12 06:40:00.000000', 11, 'teacher/2018/01/course-mtianyan.png', 18);
INSERT INTO `organization_teacher` VALUES (11, '刘教授', 15, '清华大学计算机学院', '院长', '知识渊博', 33, 0, '2018-01-12 06:41:00.000000', 12, 'teacher/2018/01/avatar.jpg', 18);
INSERT INTO `organization_teacher` VALUES (12, '小葵花', 0, '小葵花有限公司', '老师', '没有特点', 34, 1, '2018-01-12 22:53:00.000000', 14, 'teacher/2018/01/course-mtianyan_mpMWJlo.png', 18);
INSERT INTO `organization_teacher` VALUES (13, '星星老师', 0, '星星之火有限公司', '全能教师', '擅长火星文', 35, 0, '2018-01-12 23:04:00.000000', 15, 'teacher/2018/01/course-mtianyan_E1V94aO_URESikS.png', 18);
INSERT INTO `organization_teacher` VALUES (14, '边老师', 0, '软件学院', '老师', '哈哈', 12, 0, '2018-04-08 23:45:00.000000', 16, 'teacher/2018/04/course-mtianyan.png', 18);

-- ----------------------------
-- Table structure for users_banner
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_banner
-- ----------------------------
INSERT INTO `users_banner` VALUES (1, '我的博客', 'banner/2018/01/57a801860001c34b12000460.jpg', 'http://blog.mtianyan.cn/', 2, '2018-01-15 02:20:00.000000');
INSERT INTO `users_banner` VALUES (2, '我的简书', 'banner/2018/01/57aa86a0000145c512000460.jpg', 'https://www.jianshu.com/u/db9a7a0daa1f', 3, '2018-01-15 02:21:00.000000');
INSERT INTO `users_banner` VALUES (3, '我的GitHub', 'banner/2018/01/banner1.png', 'https://github.com/mtianyan', 5, '2018-01-15 02:22:00.000000');
INSERT INTO `users_banner` VALUES (4, '本网站源码', 'banner/2018/01/banne2.png', 'https://github.com/mtianyan/Mxonline3', 1, '2018-01-15 02:37:00.000000');
INSERT INTO `users_banner` VALUES (5, '博客', 'banner/2018/01/banner3.png', 'http://blog.mtianyan.cn/', 4, '2018-01-15 02:37:00.000000');

-- ----------------------------
-- Table structure for users_emailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifyrecord`;
CREATE TABLE `users_emailverifyrecord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 186 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_emailverifyrecord
-- ----------------------------
INSERT INTO `users_emailverifyrecord` VALUES (1, '8hw2', 'mtianyan@qq.com', 'update_email', '2018-01-14 07:06:08.327670');
INSERT INTO `users_emailverifyrecord` VALUES (2, 'b00D', '1147727180@qq.com', 'update_email', '2018-01-14 07:12:08.374910');
INSERT INTO `users_emailverifyrecord` VALUES (3, 'V1QB0hco2FGMEprx', '2311200628@qq.com', 'register', '2018-01-16 04:44:23.658000');
INSERT INTO `users_emailverifyrecord` VALUES (4, 'fhYvGv2RYRCPCn5t', '977644703@qq.com', 'register', '2018-03-12 13:39:29.558464');
INSERT INTO `users_emailverifyrecord` VALUES (5, 'LKJupBhLCYPU28KN', '1147727180@qq.com', 'register', '2018-03-12 18:46:01.940405');
INSERT INTO `users_emailverifyrecord` VALUES (6, 'VCT1sYSzp50Gpb7o', '2357574009@qq.com', 'register', '2018-03-13 08:30:42.990937');
INSERT INTO `users_emailverifyrecord` VALUES (7, 'fgh9hoiMjxDTi3MU', '737010657@qq.com', 'register', '2018-03-13 10:13:00.095167');
INSERT INTO `users_emailverifyrecord` VALUES (8, '5ZjTV3ihWS2i0S6K', '3476893120@qq.com', 'register', '2018-03-13 10:22:30.944950');
INSERT INTO `users_emailverifyrecord` VALUES (9, '0l8N2ZRBjhGlKUOW', '767472021@qq.com', 'register', '2018-03-13 11:22:27.702400');
INSERT INTO `users_emailverifyrecord` VALUES (10, 'FRDn2XYtH86zUP5x', '767472021@qq.com', 'forget', '2018-03-13 11:24:19.022581');
INSERT INTO `users_emailverifyrecord` VALUES (11, 'WHz0eQibXggytz1j', '571288304@qq.com', 'register', '2018-03-13 13:58:21.149339');
INSERT INTO `users_emailverifyrecord` VALUES (12, 'Q93GYTgqayAPUjo2', '1204244164@qq.com', 'register', '2018-03-13 20:27:19.990243');
INSERT INTO `users_emailverifyrecord` VALUES (13, 'WECv2f899rWPfgSw', 'sas@qq.com', 'register', '2018-03-14 14:45:55.161974');
INSERT INTO `users_emailverifyrecord` VALUES (14, 'CduuYJCPSe3u2vD6', '1414749109@qq.com', 'register', '2018-03-14 20:06:52.689879');
INSERT INTO `users_emailverifyrecord` VALUES (15, 'W57nH55iHe8lwEZA', '813811805@qq.com', 'register', '2018-03-15 09:40:39.432910');
INSERT INTO `users_emailverifyrecord` VALUES (16, '0QNLRQxL56D5fniW', 'mark.iii@live.com', 'register', '2018-03-16 10:32:16.431191');
INSERT INTO `users_emailverifyrecord` VALUES (17, 'suGefPpyPwWbtnPn', 'test@qqq.com', 'register', '2018-03-16 11:44:01.567990');
INSERT INTO `users_emailverifyrecord` VALUES (18, 'GCSXzUf7UTh40Gyh', 'dfa@163.com', 'register', '2018-03-16 22:53:30.756119');
INSERT INTO `users_emailverifyrecord` VALUES (19, 'a8jWam78hTi5eW13', '1184405959@qq.com', 'register', '2018-03-17 13:32:10.107324');
INSERT INTO `users_emailverifyrecord` VALUES (20, 'gAEfdpbqSlv3ysKY', 'wolfxin2010@163.com', 'register', '2018-03-18 19:43:36.394056');
INSERT INTO `users_emailverifyrecord` VALUES (21, '9tgvTmczpmBdf2Ba', '15533637462@163.com', 'register', '2018-03-18 22:23:52.286728');
INSERT INTO `users_emailverifyrecord` VALUES (22, 'wbJvjRSMX4PcDUWj', '441274636@qq.com', 'register', '2018-03-19 13:54:55.899843');
INSERT INTO `users_emailverifyrecord` VALUES (23, 'AUp0EK1DfTSHN7i2', '441274636@qq.com', 'forget', '2018-03-19 13:56:12.166096');
INSERT INTO `users_emailverifyrecord` VALUES (24, 'sQhKXzc30mQML3Nh', 'yhdai@whu.edu.cn', 'register', '2018-03-19 17:37:33.048699');
INSERT INTO `users_emailverifyrecord` VALUES (25, '5u5TwFkFQWdgyKHQ', 'hzn201@126.com', 'register', '2018-03-19 18:32:49.486813');
INSERT INTO `users_emailverifyrecord` VALUES (26, 'XhP5f01j6qfM5zbO', '774166816@qq.com', 'register', '2018-03-20 12:10:11.443104');
INSERT INTO `users_emailverifyrecord` VALUES (27, '3pBENEDTTOLkiVTm', '123@qq.com', 'register', '2018-03-20 12:13:40.012144');
INSERT INTO `users_emailverifyrecord` VALUES (28, 'nmbubGFAOVnTfS8d', '467741750@qq.com', 'register', '2018-03-20 16:08:45.911605');
INSERT INTO `users_emailverifyrecord` VALUES (29, 'xUfXshu66uqEdKLh', '454238650@qq.com', 'forget', '2018-03-21 17:44:25.510896');
INSERT INTO `users_emailverifyrecord` VALUES (30, 'WJiBWHFeWZX2LXKV', '290817362@qq.com', 'register', '2018-03-21 18:41:23.390329');
INSERT INTO `users_emailverifyrecord` VALUES (31, 'P9H0FYAJaiWlTYDv', 'hhh@qq.com', 'register', '2018-03-22 13:04:54.293188');
INSERT INTO `users_emailverifyrecord` VALUES (32, 'd9u2XVaybVwg0KUP', 'htzs@qq.com', 'register', '2018-03-22 14:17:02.090186');
INSERT INTO `users_emailverifyrecord` VALUES (33, 'v1q7yH63ZEsys2Hd', '2675368872@qq.com', 'register', '2018-03-22 21:24:47.495253');
INSERT INTO `users_emailverifyrecord` VALUES (34, '7OwPFAjhfduVcyAZ', '1234124124@qq.com', 'register', '2018-03-22 21:26:09.055994');
INSERT INTO `users_emailverifyrecord` VALUES (35, 'X8i66WrvSRK0n3oE', 'helloworld@126.com', 'register', '2018-03-22 23:14:09.640333');
INSERT INTO `users_emailverifyrecord` VALUES (36, 'ovIXg98lxx176bEt', 'yyxx_1008@163.com', 'register', '2018-03-23 01:28:23.451074');
INSERT INTO `users_emailverifyrecord` VALUES (37, 'q1ySeGJnXJjOhThG', '39@qq.com', 'register', '2018-03-23 13:21:08.907846');
INSERT INTO `users_emailverifyrecord` VALUES (38, 'HtnUM1LPkWNJntGC', '2089194171@qq.com', 'register', '2018-03-23 15:42:12.731813');
INSERT INTO `users_emailverifyrecord` VALUES (39, 'tYXC8b7xydj6JK29', '2089194171@qq.com', 'forget', '2018-03-24 16:44:38.230907');
INSERT INTO `users_emailverifyrecord` VALUES (40, 'pdhbSvYCvydbco2x', '1247079575@qq.com', 'register', '2018-03-24 18:36:16.395739');
INSERT INTO `users_emailverifyrecord` VALUES (41, '0nm0y3s3GoHgs1C2', '705301804@qq.com', 'register', '2018-03-24 20:58:51.333522');
INSERT INTO `users_emailverifyrecord` VALUES (42, 'xv6k1YJMCNt0gSwq', 'fuckyou@man.com', 'register', '2018-03-24 22:42:10.962547');
INSERT INTO `users_emailverifyrecord` VALUES (43, 'fPN43Gs4weGm4DFL', '2081322832@qq.com', 'register', '2018-03-24 23:41:40.847564');
INSERT INTO `users_emailverifyrecord` VALUES (44, 'fGErKOW8HIOopsDu', '2081322832@qq.comnmnm', 'register', '2018-03-24 23:44:24.268320');
INSERT INTO `users_emailverifyrecord` VALUES (45, '7n8CEPUTLpOLakNc', '179803381@qq.com', 'register', '2018-03-24 23:47:26.150516');
INSERT INTO `users_emailverifyrecord` VALUES (46, 'S6RyUINvxRGhPGBA', '123454321@qq.com', 'register', '2018-03-25 16:57:34.079067');
INSERT INTO `users_emailverifyrecord` VALUES (47, '6hlmIHbjIejwvIYC', '878709@qq.com', 'register', '2018-03-25 20:27:25.659001');
INSERT INTO `users_emailverifyrecord` VALUES (48, 'kf9StFHTTDf5ugDN', '774166816@qq.com', 'forget', '2018-03-26 09:49:05.442507');
INSERT INTO `users_emailverifyrecord` VALUES (49, 'rgIKom2FeaJHUCsj', '2089194171@qq.com', 'forget', '2018-03-26 12:09:31.606457');
INSERT INTO `users_emailverifyrecord` VALUES (50, 'pV88lH4H1VIZEER5', '34970843@qq.com', 'register', '2018-03-26 17:57:56.773134');
INSERT INTO `users_emailverifyrecord` VALUES (51, 'f5pQtco9PSV5Vop3', 'rainmanxp@gmail.com', 'register', '2018-03-26 17:58:38.423039');
INSERT INTO `users_emailverifyrecord` VALUES (52, 'RrCDPfFHNPaU1o4J', '1147727180@qq.com', 'forget', '2018-03-26 23:36:35.008650');
INSERT INTO `users_emailverifyrecord` VALUES (53, 'iUnPI2b7wQyCjSWq', '1147727180@qq.com', 'forget', '2018-03-26 23:37:13.699083');
INSERT INTO `users_emailverifyrecord` VALUES (54, 'AIFN2UwfvI9gCmex', '1147727180@qq.com', 'forget', '2018-03-26 23:46:33.816273');
INSERT INTO `users_emailverifyrecord` VALUES (55, 'bp1J0NHjhCDm3D8a', '1147727180@qq.com', 'forget', '2018-03-26 23:47:29.203082');
INSERT INTO `users_emailverifyrecord` VALUES (56, 'EhTsLmFSBaRxDt9k', '1147727180@qq.com', 'forget', '2018-03-27 00:13:41.054340');
INSERT INTO `users_emailverifyrecord` VALUES (57, 'QNiyJXY86PLMkpIN', '1147727180@qq.com', 'forget', '2018-03-27 00:17:29.484311');
INSERT INTO `users_emailverifyrecord` VALUES (58, 'HJGfHyWKtxjUpVNn', '1147727180@qq.com', 'forget', '2018-03-27 00:30:35.461286');
INSERT INTO `users_emailverifyrecord` VALUES (59, 'fFciffcW6Ytp6nB0', '496294776@qq.com', 'forget', '2018-03-27 17:53:38.908744');
INSERT INTO `users_emailverifyrecord` VALUES (60, 'SavcCayAHvbfarqw', 'thebluedove@foxmail.com', 'register', '2018-03-27 19:20:58.270558');
INSERT INTO `users_emailverifyrecord` VALUES (61, 'LlXchlAxu9Ljg9L6', '1508287079@qq.com', 'forget', '2018-03-27 19:27:31.484908');
INSERT INTO `users_emailverifyrecord` VALUES (62, 'pd1IXAltBolMLUTJ', '18826237487@163.com', 'register', '2018-03-27 19:46:37.476537');
INSERT INTO `users_emailverifyrecord` VALUES (63, 'ftFtD1DJVGtW6RAT', 'wangrui_wwrr@163.com', 'register', '2018-03-27 22:20:45.047414');
INSERT INTO `users_emailverifyrecord` VALUES (64, 'vRqz1R0QBnvk1fTl', 'wangrui_wwrr@163.com', 'forget', '2018-03-27 22:21:38.827681');
INSERT INTO `users_emailverifyrecord` VALUES (65, 'ee8cNuF33Clef69u', 'wangrui_wwrr@163.com', 'forget', '2018-03-27 22:22:39.338385');
INSERT INTO `users_emailverifyrecord` VALUES (66, 'GX52tjlNaoKF1gX6', '1017421922@qq.com', 'forget', '2018-03-28 00:05:50.527321');
INSERT INTO `users_emailverifyrecord` VALUES (67, 'Zx6CKiLTqZpWVJgT', '1173551915@qq.com', 'register', '2018-03-28 11:13:14.710409');
INSERT INTO `users_emailverifyrecord` VALUES (68, '9jx4TJytKUxOmtAd', 'eminjan789@gmail.com', 'register', '2018-03-28 23:20:24.896052');
INSERT INTO `users_emailverifyrecord` VALUES (69, 'hSTtAxrTHvundxt6', '346554289@qq.com', 'register', '2018-03-29 09:33:44.599396');
INSERT INTO `users_emailverifyrecord` VALUES (70, 'ygFfzYj8eR7MUPQu', '414820128@qq.com', 'register', '2018-03-29 10:26:30.479373');
INSERT INTO `users_emailverifyrecord` VALUES (71, 'FhKho6GN2BvCPxmt', 'h0ward@yeah.net', 'register', '2018-03-29 18:34:05.755757');
INSERT INTO `users_emailverifyrecord` VALUES (72, 'WM58MirQI9bgFeFq', 'hehecat@qq.com', 'register', '2018-03-29 18:38:01.456786');
INSERT INTO `users_emailverifyrecord` VALUES (73, 'zmiBAB7U8qwjjFtf', '494411916@qq.com', 'register', '2018-03-29 18:38:39.839015');
INSERT INTO `users_emailverifyrecord` VALUES (74, 'QkGPSuqzPGWoGgEX', '1491447354@qq.com', 'register', '2018-03-30 11:30:49.507078');
INSERT INTO `users_emailverifyrecord` VALUES (75, 'U0mzJ5N73Au1uctW', '444687196@qq.com', 'register', '2018-03-30 15:07:17.594705');
INSERT INTO `users_emailverifyrecord` VALUES (76, 'nnc2hyeJsa5LB3FO', '1231231@qq.com', 'register', '2018-03-30 17:23:10.752569');
INSERT INTO `users_emailverifyrecord` VALUES (77, 'l5hwSANt4FrcB5Cu', 'par_junjie@163.com', 'register', '2018-03-31 18:22:09.862716');
INSERT INTO `users_emailverifyrecord` VALUES (78, 'CGN7laMazQhRg7p0', '634750125@qq.com', 'register', '2018-04-01 09:24:01.354585');
INSERT INTO `users_emailverifyrecord` VALUES (79, 'uGxLV0XQFbJS4PTU', '18406586148@163.com', 'register', '2018-04-02 08:15:51.898520');
INSERT INTO `users_emailverifyrecord` VALUES (80, 'kHYnNk2IAidySTXE', '444838468@qq.com', 'register', '2018-04-02 09:14:18.363217');
INSERT INTO `users_emailverifyrecord` VALUES (81, 'u28qxnfYSS1CZYDX', '505711559@qq.com', 'register', '2018-04-02 12:53:12.963593');
INSERT INTO `users_emailverifyrecord` VALUES (82, 'laxGAmZKB0NUl0kw', '503492546@qq.com', 'register', '2018-04-02 12:57:38.738327');
INSERT INTO `users_emailverifyrecord` VALUES (83, 'aE41KeCOkymH73ye', '1678220527@qq.com', 'register', '2018-04-02 22:16:39.933441');
INSERT INTO `users_emailverifyrecord` VALUES (84, '2LA9dckSkwyjH8wV', '971632208@qq.com', 'register', '2018-04-02 23:31:05.926345');
INSERT INTO `users_emailverifyrecord` VALUES (85, 'tDTPQy38BtRsAw5O', '921065540@qq.com', 'register', '2018-04-03 02:40:04.206633');
INSERT INTO `users_emailverifyrecord` VALUES (86, 'JwMyhlYcFoP6yUHZ', '374848559@qq.com', 'register', '2018-04-03 15:24:11.042099');
INSERT INTO `users_emailverifyrecord` VALUES (87, 'vfFSsdNFZjUX5oD0', 'uclgysse@163.com', 'register', '2018-04-03 16:38:09.679601');
INSERT INTO `users_emailverifyrecord` VALUES (88, 'OqeYrQDJvFNERwHl', 'suisheng-com@foxmail.com', 'register', '2018-04-03 19:43:54.874109');
INSERT INTO `users_emailverifyrecord` VALUES (89, '8lp2aLXq1VcoCCOQ', '1678220527@qq.com', 'forget', '2018-04-03 21:15:46.097017');
INSERT INTO `users_emailverifyrecord` VALUES (90, 'wl58Yi3glbiJ2uxp', '1678220527@qq.com', 'forget', '2018-04-03 21:41:52.019752');
INSERT INTO `users_emailverifyrecord` VALUES (91, 'dKj6zdp2bkL3SU2G', '158@qq.com', 'register', '2018-04-04 01:05:20.279090');
INSERT INTO `users_emailverifyrecord` VALUES (92, 'fqqlyVrCrmWQH7Or', '1582586525@qq.com', 'register', '2018-04-04 01:05:57.232771');
INSERT INTO `users_emailverifyrecord` VALUES (93, 'bHERKBtgYTSnADmo', '1753545439@qq.com', 'register', '2018-04-04 11:56:22.430585');
INSERT INTO `users_emailverifyrecord` VALUES (94, 'CdyHii97MuFRpKTy', '1753545439@qq.com', 'forget', '2018-04-04 12:06:38.752270');
INSERT INTO `users_emailverifyrecord` VALUES (95, 'SGIwjGe5UrdIFywU', '1298203718@qq.com', 'register', '2018-04-04 14:04:37.411344');
INSERT INTO `users_emailverifyrecord` VALUES (96, 'bIgX5Qr8ZxfH7p3S', '122184668@qq.com', 'register', '2018-04-04 14:05:06.399933');
INSERT INTO `users_emailverifyrecord` VALUES (97, 'IOflSrohKzAw8aQB', '379268530@qq.com', 'register', '2018-04-04 14:45:25.639181');
INSERT INTO `users_emailverifyrecord` VALUES (98, 'VhFPaQPOft2hPifn', '3068807439@qq.com', 'register', '2018-04-04 17:28:34.441016');
INSERT INTO `users_emailverifyrecord` VALUES (99, 'wnjR1mZVl7mdMLkd', '1678220527@qq.com', 'forget', '2018-04-04 18:37:02.171370');
INSERT INTO `users_emailverifyrecord` VALUES (100, 'EXFpWFeHeKWKKsvj', '176096952@qq.com', 'register', '2018-04-06 09:37:31.707424');
INSERT INTO `users_emailverifyrecord` VALUES (101, 'HEHbwSnnwnFMa7bV', '541849735@qq.com', 'register', '2018-04-06 23:44:13.312798');
INSERT INTO `users_emailverifyrecord` VALUES (102, 'Q3oZ6CLuLIS5Zfi1', '21204301@qq.com', 'register', '2018-04-07 03:54:44.968178');
INSERT INTO `users_emailverifyrecord` VALUES (103, 'ae3RmjsTDOp0uIYc', '1756808068@qq.com', 'register', '2018-04-07 10:28:18.744631');
INSERT INTO `users_emailverifyrecord` VALUES (104, '3ohCoWh2unDp68PO', '36238379@qq.com', 'register', '2018-04-07 17:33:05.229487');
INSERT INTO `users_emailverifyrecord` VALUES (105, 'yAftjV8BXM3OC4Ur', '1106530233@qq.cm', 'register', '2018-04-07 21:50:31.486218');
INSERT INTO `users_emailverifyrecord` VALUES (106, '7fowsMwUjjkDzTPg', '1106530233@qq.com', 'register', '2018-04-07 21:51:43.873010');
INSERT INTO `users_emailverifyrecord` VALUES (107, 'iHUl6tpzGstlhEQZ', '875791833@qqq.com', 'register', '2018-04-07 22:46:10.303611');
INSERT INTO `users_emailverifyrecord` VALUES (108, 'P5oljooaKLi6rFk9', '875791833@qq.com', 'forget', '2018-04-07 22:48:10.691151');
INSERT INTO `users_emailverifyrecord` VALUES (109, 'evRFaK3YGu62XhDv', '875791833@qq.com', 'register', '2018-04-07 22:52:15.877923');
INSERT INTO `users_emailverifyrecord` VALUES (110, 'NOp7a52H0Ec41I3H', '2231146809@qq.com', 'register', '2018-04-08 02:18:22.059574');
INSERT INTO `users_emailverifyrecord` VALUES (111, 'Iiv3d68yyXPhYATG', '3158544903@qq.com', 'register', '2018-04-08 11:31:07.552520');
INSERT INTO `users_emailverifyrecord` VALUES (112, 'meKB6z2CY0SkK6o6', 'wolfwlk98@sina.com', 'register', '2018-04-08 12:38:51.500313');
INSERT INTO `users_emailverifyrecord` VALUES (113, '2oItEFPK6LokwrOJ', '373804312@qq.com', 'register', '2018-04-08 16:58:53.290908');
INSERT INTO `users_emailverifyrecord` VALUES (114, 'qNyntReQVxACXIPH', '29860896@qq.com', 'forget', '2018-04-08 18:05:12.804438');
INSERT INTO `users_emailverifyrecord` VALUES (115, 'OX6iwKil7n4qKGfH', '34970843@qq.com', 'forget', '2018-04-08 20:20:23.463105');
INSERT INTO `users_emailverifyrecord` VALUES (116, 'xWKAkizHDixPjUFu', '1058285605@qq.com', 'register', '2018-04-08 21:14:35.171519');
INSERT INTO `users_emailverifyrecord` VALUES (117, 'Q9NmKsLf50M57Tr8', '396337932@qq.com', 'register', '2018-04-09 15:35:20.442065');
INSERT INTO `users_emailverifyrecord` VALUES (118, 'kKgJiNSGDwbTZvWe', '1755130007@qq.com', 'register', '2018-04-09 20:55:37.034280');
INSERT INTO `users_emailverifyrecord` VALUES (119, 'd0XesSOEtc6UHiSN', 'luowhang_gd@163.com', 'register', '2018-04-10 17:12:38.128383');
INSERT INTO `users_emailverifyrecord` VALUES (120, '33jOachSycwp3nJl', 'wangrui_wwrr@163.com', 'forget', '2018-04-10 17:23:07.049721');
INSERT INTO `users_emailverifyrecord` VALUES (121, 'gKX6YMlw7O8BPdBh', 'bsli@leapmobi.com', 'register', '2018-04-10 20:03:55.743356');
INSERT INTO `users_emailverifyrecord` VALUES (122, 'lG9ayHQBBtzAYS92', '916939772@qq.com', 'register', '2018-04-10 22:34:25.326874');
INSERT INTO `users_emailverifyrecord` VALUES (123, 'aUNAQ3mg3lJarLDf', 'lc199712138@163.com', 'register', '2018-04-11 09:12:47.751385');
INSERT INTO `users_emailverifyrecord` VALUES (124, 'VIUOOTb7nstmeOFD', '302777816@qq.com', 'register', '2018-04-12 11:03:33.252742');
INSERT INTO `users_emailverifyrecord` VALUES (125, 'eu6oMq3e681q9rFy', '1365862888@163.com', 'register', '2018-04-12 12:58:59.852144');
INSERT INTO `users_emailverifyrecord` VALUES (126, 'dNNUBS9p0FUPKba6', 'shuitai504@sohu.com', 'register', '2018-04-12 14:53:12.378682');
INSERT INTO `users_emailverifyrecord` VALUES (127, 'Ue0HjhsfMACyXC8b', 'shuitai@sohu.com', 'register', '2018-04-12 14:53:48.668282');
INSERT INTO `users_emailverifyrecord` VALUES (128, 'IQ9npnxJbivnqGiC', '373804312@qq.com2', 'register', '2018-04-12 17:04:57.850866');
INSERT INTO `users_emailverifyrecord` VALUES (129, 'apGJtdNLz08vAX08', '3555504312@qq.com', 'register', '2018-04-12 17:05:24.790445');
INSERT INTO `users_emailverifyrecord` VALUES (130, 'z9Amv9EAs1P8qOwh', 'jiping505@163.com', 'register', '2018-04-12 18:39:30.560845');
INSERT INTO `users_emailverifyrecord` VALUES (131, '3Bl2tvGeXBgA5VGG', 'set@qqq.com', 'register', '2018-04-12 18:53:31.298424');
INSERT INTO `users_emailverifyrecord` VALUES (132, 'g3p2GwyLlLbDMIKW', '12345678@qq.com', 'register', '2018-04-12 18:54:08.114601');
INSERT INTO `users_emailverifyrecord` VALUES (133, 'ukZjIBDFYR4hW94c', '572907561@qq.com', 'register', '2018-04-12 18:54:43.676879');
INSERT INTO `users_emailverifyrecord` VALUES (134, 'I8q1L06jUo0D1XBb', '1753545438@qq.com', 'register', '2018-04-12 18:56:39.988797');
INSERT INTO `users_emailverifyrecord` VALUES (135, '1c4dKMVy2vrhrgkx', 'ceshi@ceshi.com', 'register', '2018-04-12 18:58:04.610581');
INSERT INTO `users_emailverifyrecord` VALUES (136, 'oxa3fAnP1JwkrIVR', '409760494@qq.com', 'register', '2018-04-12 19:38:15.547207');
INSERT INTO `users_emailverifyrecord` VALUES (137, 'jNwMAVLLAvk6Dfj4', 'riyueguangcq@sohu.com', 'register', '2018-04-12 20:15:50.280833');
INSERT INTO `users_emailverifyrecord` VALUES (138, 'T2vadrhhBLVMaCxw', '635766754@qq.com', 'register', '2018-04-13 21:57:57.840600');
INSERT INTO `users_emailverifyrecord` VALUES (139, 'u8XQXIGChDl0crsa', 'fjdje@qq.com', 'register', '2018-04-13 22:12:45.432612');
INSERT INTO `users_emailverifyrecord` VALUES (140, 'S9XKpP4gk0sbYCrD', 'uonele@163.com', 'register', '2018-04-14 13:48:11.295754');
INSERT INTO `users_emailverifyrecord` VALUES (141, 'GYzLYGejwZ8ETY8E', 'minghuixu97ae@163.com', 'register', '2018-04-14 17:19:42.499190');
INSERT INTO `users_emailverifyrecord` VALUES (142, '8lJMN8UuVbaw8pAR', '376186792@qq.com', 'register', '2018-04-14 22:02:54.683525');
INSERT INTO `users_emailverifyrecord` VALUES (143, 'RuH2xmkO3KTLKQyt', '5161178799@qq.com', 'register', '2018-04-15 22:33:13.988814');
INSERT INTO `users_emailverifyrecord` VALUES (144, 'MEUr8lOc8yJdNOhe', '1037861239@qq.com', 'register', '2018-04-16 06:01:07.782984');
INSERT INTO `users_emailverifyrecord` VALUES (145, 'IoLuRxnpZRzpT3LO', '296153676@qq.com', 'register', '2018-04-16 23:28:15.639498');
INSERT INTO `users_emailverifyrecord` VALUES (146, 'EDnLsEXEHZnG1F57', 'xgp@132.com', 'register', '2018-04-17 00:15:59.501452');
INSERT INTO `users_emailverifyrecord` VALUES (147, 'iVTci5iQL4r2FzWC', 'xgp@123.com', 'register', '2018-04-17 00:17:32.918215');
INSERT INTO `users_emailverifyrecord` VALUES (148, 'v1HSBCDK180eVxbF', 'admin@126.com', 'register', '2018-04-17 10:31:54.175469');
INSERT INTO `users_emailverifyrecord` VALUES (149, 'Y48ljTy2KecNDaCt', 'mxonline@mtianyan.cn', 'forget', '2018-04-18 12:09:06.776922');
INSERT INTO `users_emailverifyrecord` VALUES (150, 'E18uvV4muFZjxhuZ', '1036035929@qq.com', 'register', '2018-04-18 15:31:57.047987');
INSERT INTO `users_emailverifyrecord` VALUES (151, 'LK9qwVphhwHSSO3Z', '1036035929@qq.com', 'forget', '2018-04-18 16:26:56.994893');
INSERT INTO `users_emailverifyrecord` VALUES (152, 'rOHQHGpJOMyHdUE7', '1803723813@qq.com', 'forget', '2018-04-18 21:56:57.020155');
INSERT INTO `users_emailverifyrecord` VALUES (153, '2NIEU1wwnD3sBTG5', 'rainy008@126.com', 'register', '2018-04-18 22:35:36.539969');
INSERT INTO `users_emailverifyrecord` VALUES (154, 'kpXzTpKTabMwTG4X', '1211594633@qq.com', 'register', '2018-04-19 09:08:36.509560');
INSERT INTO `users_emailverifyrecord` VALUES (155, 'zO163ZE8uaKCkhaR', '123413@wd.com', 'register', '2018-04-19 16:44:47.976210');
INSERT INTO `users_emailverifyrecord` VALUES (156, 'HjrrmnUpgUVhup6V', '640513606@qq.com', 'register', '2018-04-19 16:46:09.274675');
INSERT INTO `users_emailverifyrecord` VALUES (157, 'LaKrnsJ2ldgmKAev', 'abc@sohu.com', 'register', '2018-04-19 17:39:14.620743');
INSERT INTO `users_emailverifyrecord` VALUES (158, 'XqRiyz6AUfNQcLXp', 'lzc_softline@163.com', 'register', '2018-04-19 17:39:51.608601');
INSERT INTO `users_emailverifyrecord` VALUES (159, 'MhLod8ivcBDrrvnI', '222@222.com', 'register', '2018-04-19 19:12:30.111813');
INSERT INTO `users_emailverifyrecord` VALUES (160, 'yXzjTXNLcPrhxun0', 'un1imited@sina.com', 'register', '2018-04-19 19:36:51.084656');
INSERT INTO `users_emailverifyrecord` VALUES (161, 'wh8idCHRGKtXZJ48', 'un1imited@sina.com', 'forget', '2018-04-19 19:37:31.592520');
INSERT INTO `users_emailverifyrecord` VALUES (162, 'XSRkyorKlQEaefaj', '251120714@qq.com', 'register', '2018-04-19 20:55:14.811806');
INSERT INTO `users_emailverifyrecord` VALUES (163, 'aMvfOs4ja9aPnJoE', 'uonele@163.com', 'forget', '2018-04-20 13:14:32.606469');
INSERT INTO `users_emailverifyrecord` VALUES (164, 'vx1QlqrD4ALleuXH', '527380349@qq.com', 'register', '2018-04-20 23:42:20.703346');
INSERT INTO `users_emailverifyrecord` VALUES (165, 'Sz5D3ng6mzLlLgkc', '111@abc.com', 'register', '2018-04-21 15:37:34.840618');
INSERT INTO `users_emailverifyrecord` VALUES (166, '6j9gKWvBsZ1WGgkY', 'sss@tcl.com', 'register', '2018-04-21 15:38:06.990186');
INSERT INTO `users_emailverifyrecord` VALUES (167, '0EkERtEYozzOVwkN', 'x_tom@sina.com', 'register', '2018-04-21 22:21:02.686919');
INSERT INTO `users_emailverifyrecord` VALUES (168, 'dbNHttI5z8fl3ny3', '1147727180@qq.com', 'forget', '2018-05-04 01:17:38.146620');
INSERT INTO `users_emailverifyrecord` VALUES (169, 'Jz39Ds9JGBVxVeTL', '5949@88.com', 'register', '2018-05-04 09:45:56.365922');
INSERT INTO `users_emailverifyrecord` VALUES (170, 'PPOfXw6midRCXNlY', '451432001@qq.com', 'forget', '2018-05-04 09:46:27.567860');
INSERT INTO `users_emailverifyrecord` VALUES (171, '0SX6k1oD7yVO1BCh', '594978759@qq.com', 'register', '2018-05-04 11:15:14.535653');
INSERT INTO `users_emailverifyrecord` VALUES (172, 'lkSfEZuqHFa5WeGC', '925123164@qq.com', 'register', '2018-05-04 19:29:43.726346');
INSERT INTO `users_emailverifyrecord` VALUES (173, '8qq1kopR2PP1Zxz7', 'x_tom@sina.com', 'forget', '2018-05-04 23:18:38.195451');
INSERT INTO `users_emailverifyrecord` VALUES (174, 'vAVgVOfRMMm47cUq', 'sizfx6@126.com', 'register', '2018-05-05 00:33:26.830957');
INSERT INTO `users_emailverifyrecord` VALUES (175, 'ehCpda4RRwJ8HjeQ', 'sizfx6@126.com', 'forget', '2018-05-05 01:42:20.612983');
INSERT INTO `users_emailverifyrecord` VALUES (176, 'EsYRjlUQnXuk2jkZ', '728835285@qq.com', 'register', '2018-05-05 11:43:49.900077');
INSERT INTO `users_emailverifyrecord` VALUES (177, 'SIzM2FklEUs88PDp', '792416906@qq.com', 'register', '2018-05-05 18:01:59.973777');
INSERT INTO `users_emailverifyrecord` VALUES (178, 'Y8zotBEImphuUxsF', '123@163.com', 'register', '2018-05-05 20:08:58.918116');
INSERT INTO `users_emailverifyrecord` VALUES (179, 'ZL5KuF8vaswqqaT5', 'w05210720@163.com', 'register', '2018-05-05 20:10:01.221578');
INSERT INTO `users_emailverifyrecord` VALUES (180, '9IiSZ2R4b77UJwsp', 'yy@qq.com', 'register', '2018-05-05 21:34:27.678253');
INSERT INTO `users_emailverifyrecord` VALUES (181, 'VODlQXi6JnvXukBP', 'zhangsiqiang519@sina.com', 'register', '2018-05-05 22:25:07.761566');
INSERT INTO `users_emailverifyrecord` VALUES (182, 'JTwwO1FABcHdbq45', '18301239320@163.com', 'register', '2018-05-06 16:15:05.076782');
INSERT INTO `users_emailverifyrecord` VALUES (183, 'QzL9KDCLH8h8njPE', '2131247535@qq.com', 'register', '2018-05-06 16:32:55.954136');
INSERT INTO `users_emailverifyrecord` VALUES (184, 'oba0LxWSpAQTUxz3', 'mxins@qq.com', 'register', '2018-05-06 19:18:44.021879');
INSERT INTO `users_emailverifyrecord` VALUES (185, 'vZmf', 'fsdfds@qq.com', 'update_email', '2018-05-06 20:56:46.461385');

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NULL DEFAULT NULL,
  `nick_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthday` date NULL DEFAULT NULL,
  `gender` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 182 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES (1, 'pbkdf2_sha256$24000$Tb50eqO5PqVr$T3d9qLKjiSnZ9h+jzsrNz20n3lysVfrw6FMv8b9d+jk=', '2018-03-27 00:32:34.774452', 1, 'mtianyan', '', '', 'mtianyan@qq.com', 1, 1, '2018-01-08 21:24:00.000000', '天涯明月笙', '2018-01-01', 'male', '西安市', '23333333333', 'image/2018/01/course-mtianyan_xLnzxsy.png');
INSERT INTO `users_userprofile` VALUES (12, 'pbkdf2_sha256$24000$82pzKSTTZhBk$6OuSqzk0qsjO1d8/0EUb1JHAy8ukEeO6+3CK+ANSLpA=', '2018-01-15 06:36:00.000000', 0, 'mtianyan123', '', '', '', 1, 1, '2018-01-09 06:20:00.000000', '天涯明月笙', NULL, 'male', '西安市', '', 'image/2018/01/avatar_1XzhOtS.jpg');
INSERT INTO `users_userprofile` VALUES (13, 'pbkdf2_sha256$24000$mZRzWaglbYzz$hr1EKxiSjPoBjo4Zi3Wu9JaRPdSZttAA6Fy07Cr6Uqs=', NULL, 0, '', '', '', '', 0, 1, '2018-01-10 20:44:41.633000', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (19, 'pbkdf2_sha256$24000$aH88MbjclKBc$by8WzcTe7Hi+qGn7jDhijnWwtvVrHHenZ4/EmGPITJQ=', '2018-01-10 23:08:43.313000', 0, '2@ty.com', '', '', '2@ty.com', 0, 1, '2018-01-10 23:08:28.543000', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (31, 'pbkdf2_sha256$24000$W0P6v75hufMR$AHYNdmaQcw7cBp9+rtgH062ANRHQ3jXNM7MG3xknWaY=', '2018-01-13 22:42:34.529000', 0, '447742468@qq.com', '', '', '447742468@qq.com', 0, 1, '2018-01-11 07:32:44.468000', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (32, 'pbkdf2_sha256$24000$wqljDmcawfpe$GnTpYVhhDWaMffhape2K8xyYzJskXUL96H34fTXnSYo=', '2018-01-13 22:08:05.254000', 0, 'mtianyan2', '', '', '', 0, 1, '2018-01-13 04:31:00.000000', '天涯明月笙', NULL, 'female', '西安', '', 'image/2018/01/wechatpay.png');
INSERT INTO `users_userprofile` VALUES (33, 'pbkdf2_sha256$24000$PNQFnenrdcJR$X3ndzipudAZXv3UHaiaWTkcJh25xjFm1baMM+MbGkrw=', '2018-01-13 22:49:19.579000', 0, '15760990336@163.com', '', '', '15760990336@163.com', 0, 1, '2018-01-13 22:45:58.950000', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (34, 'pbkdf2_sha256$24000$VgfgcjAlQjH3$FYuo1KzL/s6o4Lczk/NCyf1WquW2rBBkXVSKw72pDrs=', NULL, 0, '2311200628@qq.com', '', '', '2311200628@qq.com', 0, 0, '2018-01-16 04:44:23.628000', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (35, 'pbkdf2_sha256$24000$sMMQXK3G5zUx$zi4i5KOk9geod4vlqYzcO/CeoMfrsfi46Ju2OyBPZJw=', '2018-03-12 13:40:29.504267', 0, '977644703@qq.com', '', '', '977644703@qq.com', 0, 1, '2018-03-12 13:39:29.524443', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (36, 'pbkdf2_sha256$24000$HvcfFJ8nlUeu$0YgAVb2k4c+8nTm9OMcvpB+dGzzU4/s3+eM/TJkk6D0=', '2018-03-12 18:46:21.338889', 0, '1@qq.com', '', '', '1@qq.com', 0, 1, '2018-03-12 18:46:01.905068', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (37, 'pbkdf2_sha256$24000$cJP69lzU3CMW$jPBaJM4RWEoVL+5MVixKqVzRMBQCjSifzUJYAyaIFt4=', '2018-03-13 08:31:55.347095', 0, '2357574009@qq.com', '', '', '2357574009@qq.com', 0, 1, '2018-03-13 08:30:42.955578', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (38, 'pbkdf2_sha256$24000$r7JFsgbIKuiz$6K7PF9v/pnAOYybU57r04kyzyMK4JXs0AVNvLQIfPJw=', '2018-03-17 22:34:50.846583', 0, '737010657@qq.com', '', '', '737010657@qq.com', 0, 1, '2018-03-13 10:13:00.058187', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (39, 'pbkdf2_sha256$24000$ZBHBkZEVG9Yl$GTrCVJNX1YZMSX3vc8ZrsQa5bKTXdPYnRyG/8te4Mx0=', '2018-03-13 10:23:04.050604', 0, '3476893120@qq.com', '', '', '3476893120@qq.com', 0, 1, '2018-03-13 10:22:30.911967', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (40, 'pbkdf2_sha256$24000$Yk4usMZFRUXU$U65s02yLjGLypspYpoHrO4oiviJRRJDE4wCM1gulzlA=', '2018-03-13 11:26:51.287554', 0, '767472021@qq.com', '', '', '767472021@qq.com', 0, 1, '2018-03-13 11:22:27.667679', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (41, 'pbkdf2_sha256$24000$HeQxDBPD72lG$oV2LGfxnpsyr8HnKvyFK8XYu+bNuQKi5Y875K8l6+sU=', '2018-03-13 13:58:51.422994', 0, '571288304@qq.com', '', '', '571288304@qq.com', 0, 1, '2018-03-13 13:58:21.115711', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (42, 'pbkdf2_sha256$24000$W8fbVmiCUBpn$Kgtxk4Dpv1Q8tcW+D2NGWVJcHDoIXQAYwe+EIJmUwPI=', '2018-03-13 20:28:17.004199', 0, '1204244164@qq.com', '', '', '1204244164@qq.com', 0, 1, '2018-03-13 20:27:19.954431', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (43, 'pbkdf2_sha256$24000$gtn5PxUGWCKQ$lQPFsKWOTO/8ASv+SlTZnC6Bi5C9m1OFU7cMN9e+wXk=', NULL, 0, 'sas@qq.com', '', '', 'sas@qq.com', 0, 0, '2018-03-14 14:45:55.125367', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (44, 'pbkdf2_sha256$24000$2FQ6xWGxgya3$exFkm+HkxdoaeFQ5s+WVtPbqMKz9EW6xHLEB48wADvQ=', '2018-05-06 19:23:05.726323', 0, '1414749109@qq.com', '', '', '1414749109@qq.com', 0, 1, '2018-03-14 20:06:52.657410', 'stormsha', '2014-05-06', 'female', '北京', '1329839322', 'image/2018/05/18813743462949033.jpg');
INSERT INTO `users_userprofile` VALUES (45, 'pbkdf2_sha256$24000$kcJnLLyZX78x$lC1rvSwygSHGe9svEOxyOgtyUnTVNWIHO+serUU85hI=', '2018-05-04 01:17:55.416319', 1, 'mtianyan6666', '', '', '1147727180@qq.com', 1, 1, '2018-03-14 23:21:47.201356', '天涯明月笙', '2018-04-09', 'female', '西安市', '1809267145', 'image/2018/04/avatar.jpg');
INSERT INTO `users_userprofile` VALUES (46, 'pbkdf2_sha256$24000$F88Li9ljQnhT$1wq3GsPtDZEkXutR76N8Q6QYeOWf6lhQkE7AB3npdtc=', '2018-03-15 09:41:40.765183', 0, '813811805@qq.com', '', '', '813811805@qq.com', 0, 1, '2018-03-15 09:40:39.398538', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (47, 'pbkdf2_sha256$24000$nptEs6LVQ7aw$rWQgTLwSKxAFl23QjLuKJOG/hypi52svKfs3zK3sKP0=', '2018-03-16 10:33:22.503033', 0, 'mark.iii@live.com', '', '', 'mark.iii@live.com', 0, 1, '2018-03-16 10:32:16.394832', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (48, 'pbkdf2_sha256$24000$3KOcPw7qUBRu$nQVDtziccly9Q+Z4Jj9TaxkMOmjxn5Q+M1gIV2P13XI=', NULL, 0, 'test@qqq.com', '', '', 'test@qqq.com', 0, 0, '2018-03-16 11:44:01.534293', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (49, 'pbkdf2_sha256$24000$n5zQZBYw6AZC$wrLIcO8mfglH4SykF6NLs3C2n0xZq/lS4cITnGhdggY=', NULL, 0, 'dfa@163.com', '', '', 'dfa@163.com', 0, 0, '2018-03-16 22:53:30.721590', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (50, 'pbkdf2_sha256$24000$HziDyXOf2U6V$3CFI2/9aYs8583w7iHtPOTb9xCcsiLKEhdsWyC5I0J4=', '2018-04-22 09:45:39.442399', 0, '1184405959@qq.com', '', '', '1184405959@qq.com', 0, 1, '2018-03-17 13:32:10.068724', 'wetg', '2018-04-03', 'female', 'arwar', 'aeherh', 'image/2018/04/胡歌.jpg');
INSERT INTO `users_userprofile` VALUES (51, 'pbkdf2_sha256$24000$unopEafeORIO$7q84Fi7E06nNAs8NBFJn7QuKlfsP81Xg2B9EBddnHms=', '2018-03-18 19:44:26.832822', 0, 'wolfxin2010@163.com', '', '', 'wolfxin2010@163.com', 0, 1, '2018-03-18 19:43:36.358104', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (52, 'pbkdf2_sha256$24000$mQpcpMcuNixi$6R9SjRTruc4rua9CmuV4pJUlowTYS4Wm3oY8pyBO38k=', '2018-03-18 22:25:36.229190', 0, '15533637462@163.com', '', '', '15533637462@163.com', 0, 1, '2018-03-18 22:23:52.252459', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (53, 'pbkdf2_sha256$24000$YE013vIqSzB8$Xv2kgyet1sUraT0AFZBWQVtmEdoZDofk/dJMCa9uVs0=', '2018-03-19 13:56:55.591308', 0, '441274636@qq.com', '', '', '441274636@qq.com', 0, 1, '2018-03-19 13:54:55.866645', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (54, 'pbkdf2_sha256$24000$m30xjXASw7uw$8TRH5Xbk1DxBkgTHz+txfoQ5lhX6gBA8xPwXtyqsMRI=', NULL, 0, 'yhdai@whu.edu.cn', '', '', 'yhdai@whu.edu.cn', 0, 0, '2018-03-19 17:37:33.015358', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (55, 'pbkdf2_sha256$24000$h3ivZG6BKAzI$vPy7KT/IgbzB4kGhAXbMWQTAPwrds7tu+hDb10uTWyE=', '2018-03-19 18:35:06.030511', 0, 'hzn201@126.com', '', '', 'hzn201@126.com', 0, 1, '2018-03-19 18:32:49.451254', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (56, 'pbkdf2_sha256$24000$Ak9AThWtwDlP$PNkoDIYqD1Ww0+u4sXU3U1T7rODEgEEqp45m33V5MSQ=', '2018-04-09 18:47:18.277063', 0, '774166816@qq.com', '', '', '774166816@qq.com', 0, 1, '2018-03-20 12:10:11.409880', 'mmm', '2005-03-02', 'female', 'abc', '1820482192', 'image/2018/03/低俗小说.jpg');
INSERT INTO `users_userprofile` VALUES (57, 'pbkdf2_sha256$24000$XX2xHm5pjTVz$W+3+Jkn9GlfN1Q+KQm04/w6FQxioOCJOUkwGfUiyjWk=', NULL, 0, '123@qq.com', '', '', '123@qq.com', 0, 0, '2018-03-20 12:13:39.975785', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (58, 'pbkdf2_sha256$24000$wM1nujcxBKqa$yynF6pVeG5kgTYU9ibgNwqPYEWDFbFy6HITgAnziK0Q=', '2018-03-20 16:09:50.072628', 0, '467741750@qq.com', '', '', '467741750@qq.com', 0, 1, '2018-03-20 16:08:45.874776', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (59, 'pbkdf2_sha256$24000$ODmVqAjF9G6c$iHEa5fIbyXUnikdTpCG2U6IwVC1Z9HC1C9AQX1PrwIM=', '2018-03-27 19:22:52.849134', 0, '290817362@qq.com', '', '', '290817362@qq.com', 0, 1, '2018-03-21 18:41:23.357253', 'gg', '2018-03-06', 'female', 'gg', '', 'image/default.png');
INSERT INTO `users_userprofile` VALUES (60, 'pbkdf2_sha256$24000$wMlsRkGtNl3T$Nu0+RGQr/Sw562PZYI7CUcIiOX0NVPCNs5Iy8SBdnz0=', NULL, 0, 'hhh@qq.com', '', '', 'hhh@qq.com', 0, 0, '2018-03-22 13:04:54.259429', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (61, 'pbkdf2_sha256$24000$dzr6WxtpPMSz$w6Ve1eXeVCB6TF8WdNumXIRDn5xn3yO+8GPHgBxFmNw=', NULL, 0, 'htzs@qq.com', '', '', 'htzs@qq.com', 0, 0, '2018-03-22 14:17:02.055476', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (62, 'pbkdf2_sha256$24000$jG1keQolgFxn$tv2Hy3E1gqTGRd/qhC79FJdLLCdQNfiQddBZn56Bn2g=', NULL, 0, '2675368872@qq.com', '', '', '2675368872@qq.com', 0, 0, '2018-03-22 21:24:47.461402', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (63, 'pbkdf2_sha256$24000$4FBDlGFgSZRB$z2C/qO3+774m6yNmH108XRHSajTJwzjUCYc9eBe4ss0=', NULL, 0, '1234124124@qq.com', '', '', '1234124124@qq.com', 0, 0, '2018-03-22 21:26:09.019628', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (64, 'pbkdf2_sha256$24000$bRuVrXOW1rQP$ruRtHBpXO6hdC/R4UVDJ+czv5ctCu52haVDoBv06bD0=', NULL, 0, 'helloworld@126.com', '', '', 'helloworld@126.com', 0, 0, '2018-03-22 23:14:09.607881', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (65, 'pbkdf2_sha256$24000$1EjrMr3fWq7t$EfDt9qyZcqCNE2Cfw1jhCM0c2B1wjF+2z4ap9HShPLc=', NULL, 0, 'yyxx_1008@163.com', '', '', 'yyxx_1008@163.com', 0, 0, '2018-03-23 01:28:23.416789', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (66, 'pbkdf2_sha256$24000$JCqXYu7jBTUS$+/Yo356lHGEJoZcHRnqixUC3lcpdIBdfZFIpDvJblMI=', NULL, 0, '39@qq.com', '', '', '39@qq.com', 0, 0, '2018-03-23 13:21:08.873907', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (67, 'pbkdf2_sha256$24000$fNpC5nIS9Ve9$2FmweZSngvE+bAmMp5UxjRuIfWt7jp0rRy51IPC1oY4=', NULL, 0, '2089194171@qq.com', '', '', '2089194171@qq.com', 0, 0, '2018-03-23 15:42:12.697055', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (68, 'pbkdf2_sha256$24000$ginXpB0DpNh1$N0QJun4OqyXOsNsbFhVQ+haQl+nqzJT34S4ofrJKDak=', NULL, 0, '1247079575@qq.com', '', '', '1247079575@qq.com', 0, 0, '2018-03-24 18:36:16.354444', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (69, 'pbkdf2_sha256$24000$WHdgNJO92eZU$1OeU5A4Tc6MqNqxJA/ZG2M4QoLAzOHER5NNRnGQEh74=', NULL, 0, '705301804@qq.com', '', '', '705301804@qq.com', 0, 0, '2018-03-24 20:58:51.299414', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (70, 'pbkdf2_sha256$24000$JtELKG7CUwkF$0aeoOv+2mZnPH7Lsp8X6MtXPVtY2tIgEOHdR9UGzYzQ=', NULL, 0, 'fuckyou@man.com', '', '', 'fuckyou@man.com', 0, 0, '2018-03-24 22:42:10.929268', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (71, 'pbkdf2_sha256$24000$UL4wjFyWYOwo$HSzNPWl1f3iEZDNLKemYR4S/K68AwFe4h7hkd+hqWIk=', NULL, 0, '2081322832@qq.com', '', '', '2081322832@qq.com', 0, 0, '2018-03-24 23:41:40.811263', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (72, 'pbkdf2_sha256$24000$sCPWv0t0j4LE$Bmz3UMpVI3X6GzCa56vfo3zAyNRhXY3NKDXKayiAlv0=', NULL, 0, '2081322832@qq.comnmnm', '', '', '2081322832@qq.comnmnm', 0, 0, '2018-03-24 23:44:24.233465', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (73, 'pbkdf2_sha256$24000$5zzU8KBUP99J$rVsDHpbBAW7rH1T/dt2qSG9TZjc2ium9xcwPFqgYcFs=', NULL, 0, '179803381@qq.com', '', '', '179803381@qq.com', 0, 0, '2018-03-24 23:47:26.116789', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (74, 'pbkdf2_sha256$24000$bC1Str42c3Nb$ZBqz9XX3BA/wHUPcABsXkZTJPRscjliVR3jK4N7RI/w=', NULL, 0, '123454321@qq.com', '', '', '123454321@qq.com', 0, 0, '2018-03-25 16:57:34.045324', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (75, 'pbkdf2_sha256$24000$QMhPMLEju3YT$OzqefiyF5ZuSQSzV71b5iyS3WoRdF6GoRqUrlrd2CfA=', NULL, 0, '878709@qq.com', '', '', '878709@qq.com', 0, 0, '2018-03-25 20:27:25.626184', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (76, 'pbkdf2_sha256$24000$EVb0svrygENu$rfzmEFXgzGsrQKPKHs+39j92su4pkS8qcan7qW4cjYs=', NULL, 0, '34970843@qq.com', '', '', '34970843@qq.com', 0, 0, '2018-03-26 17:57:56.739264', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (77, 'pbkdf2_sha256$24000$JfNOxIwgTYrp$SK0O4n3C7Ntq1c4ZUMxzU58257U0BtyEEiUCPprjRcA=', NULL, 0, 'rainmanxp@gmail.com', '', '', 'rainmanxp@gmail.com', 0, 0, '2018-03-26 17:58:38.389544', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (78, 'pbkdf2_sha256$24000$S6Ha9ikk9oal$L+wBp9L1NrAdqDtCA/ggcHWCgOJWiaw5E+AKY2n+0/o=', '2018-03-27 19:21:48.135862', 0, 'thebluedove@foxmail.com', '', '', 'thebluedove@foxmail.com', 0, 1, '2018-03-27 19:20:58.232179', 'dove', '2018-03-27', 'female', 'king stree', '', 'image/2018/03/background.png');
INSERT INTO `users_userprofile` VALUES (79, 'pbkdf2_sha256$24000$GGBLkKCEeIY0$7PE6Cd79lwfH3/DK6+4r3N8up3AcApQpAU5t8BRR7E0=', '2018-03-27 19:48:08.510384', 0, '18826237487@163.com', '', '', '18826237487@163.com', 0, 1, '2018-03-27 19:46:37.442549', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (80, 'pbkdf2_sha256$24000$V6IpoHiANd8A$uH9e770aYTPcDj3po6a7/T39jCtGKnZ+VofMKlYcqtM=', '2018-04-10 17:24:14.163775', 0, 'wangrui_wwrr@163.com', '', '', 'wangrui_wwrr@163.com', 0, 1, '2018-03-27 22:20:45.014515', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (81, 'pbkdf2_sha256$24000$eMQ4l0CHfMvm$MO0aVwFIHQDz5KW6prpvi7djowabxh0DLHzsDsjBipY=', '2018-03-28 11:13:50.551713', 0, '1173551915@qq.com', '', '', '1173551915@qq.com', 0, 1, '2018-03-28 11:13:14.674101', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (82, 'pbkdf2_sha256$24000$4s1JmhJbBEW4$B9M5Rq2zsMBH9li003qT4rmRmIb+zcqkomiDQ1tKH6c=', NULL, 0, 'eminjan789@gmail.com', '', '', 'eminjan789@gmail.com', 0, 0, '2018-03-28 23:20:24.862270', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (83, 'pbkdf2_sha256$24000$gkpj3fElAQVQ$GiySaX4NEpOaF1lfte+ypf5DS/9/S+NtsLtZAi2AFTA=', '2018-03-29 09:34:00.510694', 0, '346554289@qq.com', '', '', '346554289@qq.com', 0, 1, '2018-03-29 09:33:44.563695', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (84, 'pbkdf2_sha256$24000$bveTB0er2uZH$9F4KC/YY1CW1qly9dD8m/moG7CvqrycOcDmKt9JE0VQ=', '2018-03-29 10:28:17.945479', 0, '414820128@qq.com', '', '', '414820128@qq.com', 0, 1, '2018-03-29 10:26:30.442155', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (85, 'pbkdf2_sha256$24000$OflTRDdTZjC3$7BZERDAZODpp49A8qmqmJpvaAw0yS0JwMpiWK+L8nr4=', '2018-03-29 18:35:02.224755', 0, 'h0ward@yeah.net', '', '', 'h0ward@yeah.net', 0, 1, '2018-03-29 18:34:05.719512', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (86, 'pbkdf2_sha256$24000$gFnXF2eixIRB$17nNvdkIXD+llMWY5uQxIKzLrjmZM5IB7NXKNXGOfAs=', NULL, 0, 'hehecat@qq.com', '', '', 'hehecat@qq.com', 0, 0, '2018-03-29 18:38:01.421912', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (87, 'pbkdf2_sha256$24000$UWFnXmy6rIMy$jaJegqKZdFSxfn6Xiu2Zn/IJJsrNKkg8BeZZVZlFH7I=', '2018-03-29 18:39:36.767516', 0, '494411916@qq.com', '', '', '494411916@qq.com', 0, 1, '2018-03-29 18:38:39.805321', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (88, 'pbkdf2_sha256$24000$WH8woL8cZSdM$N0DnlBr+qEnT8vfOqzvjCWljg0gUjumPf1qvwXGonCU=', '2018-03-30 11:31:40.988408', 0, '1491447354@qq.com', '', '', '1491447354@qq.com', 0, 1, '2018-03-30 11:30:49.472655', '小三也有情', '2018-03-06', 'female', '前途无路', '', 'image/2018/03/444444444444444.png');
INSERT INTO `users_userprofile` VALUES (89, 'pbkdf2_sha256$24000$K89CpyrrdV23$V/8oKp9h3WeeQPxJXJlG/KxG+kEP+iv80NbRPL1mgkk=', '2018-03-30 15:08:03.944713', 0, '444687196@qq.com', '', '', '444687196@qq.com', 0, 1, '2018-03-30 15:07:17.560077', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (90, 'pbkdf2_sha256$24000$K38Ac1XXBDDa$aVJGB2OxIoJUyvGwex0jicovHPN1ahBLQ+EOylOQpGU=', NULL, 0, '1231231@qq.com', '', '', '1231231@qq.com', 0, 0, '2018-03-30 17:23:10.718415', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (91, 'pbkdf2_sha256$24000$AXgRdNIGfp1e$C+ACbcGD7/KoxFgApvBI94N82RwELL8/BUTiS9P3mII=', NULL, 0, 'par_junjie@163.com', '', '', 'par_junjie@163.com', 0, 0, '2018-03-31 18:22:09.829429', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (92, 'pbkdf2_sha256$24000$SZlnv8U1nFUO$sKM6TCpHjZWv5GzEkwMpkqP9+Y5Z00385ZAPVouiBcI=', '2018-04-01 09:25:37.359799', 0, '634750125@qq.com', '', '', '634750125@qq.com', 0, 1, '2018-04-01 09:24:01.316749', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (93, 'pbkdf2_sha256$24000$KUuCDFZZXwx4$ZBXEiSvnydwIQFuzs02xc2/n1Rlny6rwwfnumLLT1ss=', '2018-05-06 21:09:23.821639', 0, '18406586148@163.com', '', '', '18406586148@163.com', 0, 1, '2018-04-02 08:15:51.863653', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (94, 'pbkdf2_sha256$24000$kysrD7IV2A6P$gMH5oaN7mxn80jyLbTsLz9sNRFHcxD3a+CiUrA4IVkE=', NULL, 0, '444838468@qq.com', '', '', '444838468@qq.com', 0, 0, '2018-04-02 09:14:18.328707', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (95, 'pbkdf2_sha256$24000$VmfYJxwfigWL$CjYfT4U6kO3YHhxd49SQLIWtjhqKfYwBRiWKwfgKilg=', '2018-04-02 12:54:03.480941', 0, '505711559@qq.com', '', '', '505711559@qq.com', 0, 1, '2018-04-02 12:53:12.929662', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (96, 'pbkdf2_sha256$24000$Ea2J0JylVXdg$8ZmwufVlun8etXSaN2ihJJkYYL2F+tgeVfZ72RiYWhg=', '2018-04-02 12:58:27.080768', 0, '503492546@qq.com', '', '', '503492546@qq.com', 0, 1, '2018-04-02 12:57:38.702729', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (97, 'pbkdf2_sha256$24000$jNeKOZed8fx2$PdgwnCWr13RrHJHGFzh83oyQe2P1+pNHaScaHeB3SK4=', '2018-05-05 15:01:52.582212', 0, '1678220527@qq.com', '', '', '1678220527@qq.com', 0, 1, '2018-04-02 22:16:39.899100', 'Bugyou', NULL, 'male', '美国', '', 'image/2018/04/aobama.png');
INSERT INTO `users_userprofile` VALUES (98, 'pbkdf2_sha256$24000$XJz3H59y1Nkf$YtEN5Hv6+BHDPqhC/ieSuR6mDH9iX+2OnP624bdFKIc=', '2018-04-02 23:32:19.238918', 0, '971632208@qq.com', '', '', '971632208@qq.com', 0, 1, '2018-04-02 23:31:05.892704', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (99, 'pbkdf2_sha256$24000$K2iAlVQmlVwf$/S2xg1KfJI33DFFH9c1Dq2YoKkriakweOUZXzF/K8XI=', '2018-04-03 02:40:28.673093', 0, '921065540@qq.com', '', '', '921065540@qq.com', 0, 1, '2018-04-03 02:40:04.172904', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (100, 'pbkdf2_sha256$24000$8y7dOhnh1sKk$v2cMxDrVUo2O9Npnv8lfqToPXTJ/Bz84iNLES6rSf8w=', NULL, 0, '374848559@qq.com', '', '', '374848559@qq.com', 0, 0, '2018-04-03 15:24:11.002234', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (101, 'pbkdf2_sha256$24000$r3ZkjymM0QNT$c/aEUJpgJPJv23jBcMq6THVEfO2Otz5cdbhuqxXlI44=', '2018-04-03 16:38:44.649146', 0, 'uclgysse@163.com', '', '', 'uclgysse@163.com', 0, 1, '2018-04-03 16:38:09.643819', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (102, 'pbkdf2_sha256$24000$675OoQfJ8ANr$6pudPY1LPY/9BXhT0RIzsw+kursWN6MGTNat2wCk1Zs=', '2018-04-03 19:44:27.369294', 0, 'suisheng-com@foxmail.com', '', '', 'suisheng-com@foxmail.com', 0, 1, '2018-04-03 19:43:54.840395', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (103, 'pbkdf2_sha256$24000$2RiBsUorJcyu$miD2UUgWnsYRCbI92M6X79xSytmE++3ODpzPCPaaALs=', NULL, 0, '158@qq.com', '', '', '158@qq.com', 0, 0, '2018-04-04 01:05:20.245013', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (104, 'pbkdf2_sha256$24000$5SXggQFgM0Db$gNms06gMirikGet74NW4pnDvg+FX3gsdIsBpe5qxbsQ=', NULL, 0, '1582586525@qq.com', '', '', '1582586525@qq.com', 0, 0, '2018-04-04 01:05:57.198505', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (105, 'pbkdf2_sha256$24000$XcocZKhR28sd$MkJv/MPWRT8Ibgp10lfbhRee7khI9o2kXgMGBjyyJtU=', '2018-05-06 20:56:14.724904', 0, '1753545439@qq.com', '', '', '1753545439@qq.com', 0, 1, '2018-04-04 11:56:22.396060', 'wqewqe', '2018-04-11', 'female', 'wrewrew', 'wewqewqe', 'image/2018/05/a8014c086e061d95c0f04e9171f40ad163d9cae1.jpg');
INSERT INTO `users_userprofile` VALUES (106, 'pbkdf2_sha256$24000$HjLwUwtrjQ17$6fsczGbxiFFueNRBil5IMkMHYhUzbbXfC8ZR/DcT6SA=', '2018-04-04 14:42:03.339865', 0, '1298203718@qq.com', '', '', '1298203718@qq.com', 0, 1, '2018-04-04 14:04:37.377636', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (107, 'pbkdf2_sha256$24000$3PzGFN38gQvf$AeSPtBhl0NxSSCsZEcTFyCXE1Ip6wyuuSgIDU+ESoek=', '2018-04-04 14:08:03.681270', 0, '122184668@qq.com', '', '', '122184668@qq.com', 0, 1, '2018-04-04 14:05:06.366660', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (108, 'pbkdf2_sha256$24000$x94DmYTxLZah$XyBX1mOkMajn8svxhRs2C3iEZUEOEH9BSZR26VWyKwk=', '2018-04-04 14:46:03.865577', 0, '379268530@qq.com', '', '', '379268530@qq.com', 0, 1, '2018-04-04 14:45:25.605198', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (109, 'pbkdf2_sha256$24000$o3TyQwkgzEWi$FcSXRxJ/9GtCg6QqnHnOYFfrTG2X0iap+4W7riArW3k=', '2018-05-05 13:48:21.234740', 0, '3068807439@qq.com', '', '', '3068807439@qq.com', 0, 1, '2018-04-04 17:28:34.404418', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (110, 'pbkdf2_sha256$24000$UorZWeRXgN3d$NIH5QZYt0PWIaN3xSLKXJteD+FBUQLul5oqkOPHxJa8=', '2018-04-06 09:38:47.374272', 0, '176096952@qq.com', '', '', '176096952@qq.com', 0, 1, '2018-04-06 09:37:31.672043', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (111, 'pbkdf2_sha256$24000$c3TpteZxBvty$z9LVxN6/jmbSTeLPPpsWHN4YeK33EDYGLDHRhZSnYUI=', '2018-04-06 23:47:53.961023', 0, '541849735@qq.com', '', '', '541849735@qq.com', 0, 1, '2018-04-06 23:44:13.212565', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (112, 'pbkdf2_sha256$24000$EAIXv8JvS5nH$gclwvQKhvvGDo9CF7ubm11r+MSL7py/exs2eyADDbvA=', '2018-04-07 03:56:02.119357', 0, '21204301@qq.com', '', '', '21204301@qq.com', 0, 1, '2018-04-07 03:54:44.916412', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (113, 'pbkdf2_sha256$24000$Cq8NiNYrtOgb$rwene4aTGoeGY8x5EVPXnHTcAHuELXb6xKsmOM25SZI=', '2018-04-07 10:30:48.776348', 0, '1756808068@qq.com', '', '', '1756808068@qq.com', 0, 1, '2018-04-07 10:28:18.710559', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (114, 'pbkdf2_sha256$24000$GkjA4f1sCIJh$2WdLCRcXWHK5uQFMJi1BOJ/eaDC6JrM/6Cr1LVnCxIY=', '2018-04-07 17:33:49.652440', 0, '36238379@qq.com', '', '', '36238379@qq.com', 0, 1, '2018-04-07 17:33:05.194765', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (115, 'pbkdf2_sha256$24000$v9ZdrDCcxcu4$YAVepeDYBg7Vxh8tWn99dVSzXBGdG94AZjIzxOF7zqk=', NULL, 0, '1106530233@qq.cm', '', '', '1106530233@qq.cm', 0, 0, '2018-04-07 21:50:31.447118', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (116, 'pbkdf2_sha256$24000$3u9SefYPaaUr$CAgJW4JPwidacq7u5iiKlyyaozU1SVr0/KnktrGZbi4=', '2018-04-07 21:52:16.127889', 0, '1106530233@qq.com', '', '', '1106530233@qq.com', 0, 1, '2018-04-07 21:51:43.838830', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (117, 'pbkdf2_sha256$24000$RivmfN466qp3$s1imKF6id3cjsojrV2exuHp1x7jvzdTA8wd5RmiPbo4=', NULL, 0, '875791833@qqq.com', '', '', '875791833@qqq.com', 0, 0, '2018-04-07 22:46:10.269803', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (118, 'pbkdf2_sha256$24000$Qb60lwhGflHb$v+oqCFmXbpC9RB7AP3eNlaRUxqsuVKBtm/mprls2Ksg=', '2018-04-07 22:53:59.597502', 0, '875791833@qq.com', '', '', '875791833@qq.com', 0, 1, '2018-04-07 22:52:15.843753', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (119, 'pbkdf2_sha256$24000$hAO6r4JrI0II$QKxorRO9SQHOe/I+bMXzOMiBZ5KfpqjqeBlm/49yzH4=', NULL, 0, '2231146809@qq.com', '', '', '2231146809@qq.com', 0, 0, '2018-04-08 02:18:22.024327', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (120, 'pbkdf2_sha256$24000$R3d06p4x7hRO$SjVQhDnovxfMrVc90aPFIn9oOp2zUghORWBy6MIBgxc=', NULL, 0, '3158544903@qq.com', '', '', '3158544903@qq.com', 0, 1, '2018-04-08 11:31:07.518689', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (121, 'pbkdf2_sha256$24000$Nw1uQpij7RRA$a73wGieDJn/hpBio3R1q3n4pfJ+84kpneiSu9Y7gGak=', '2018-04-08 12:40:47.264741', 0, 'wolfwlk98@sina.com', '', '', 'wolfwlk98@sina.com', 0, 1, '2018-04-08 12:38:51.466370', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (122, 'pbkdf2_sha256$24000$N9DESetJFpgD$/+lhNJnNLVGdSbnpYuPZz2QSW/A6quoM4u6d+se9rJs=', '2018-04-20 10:28:21.269145', 0, '373804312@qq.com', '', '', '373804312@qq.com', 0, 1, '2018-04-08 16:58:53.252263', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (123, 'pbkdf2_sha256$24000$09oeBNGaRzym$dGrAKZZV8SuShOa6BPv9oHqRWIe7rQFdFfPW+Lx0TX4=', '2018-04-08 21:15:30.920674', 0, '1058285605@qq.com', '', '', '1058285605@qq.com', 0, 1, '2018-04-08 21:14:35.138310', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (124, 'pbkdf2_sha256$24000$H35BNDderRSj$YE/eoWUUV98jr+UCpxRQTPHgGloC7O4VgbgbK71JkZY=', '2018-04-09 15:36:21.836343', 0, '396337932@qq.com', '', '', '396337932@qq.com', 0, 1, '2018-04-09 15:35:20.405972', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (125, 'pbkdf2_sha256$24000$7rRdWi9KdKRW$B7HdTCfySyo6bYcZuINrYz9lZSz4BwLSNHC+e+RhEwM=', '2018-04-09 20:55:55.699093', 0, '1755130007@qq.com', '', '', '1755130007@qq.com', 0, 1, '2018-04-09 20:55:36.999457', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (126, 'pbkdf2_sha256$24000$tn7sX723TwvG$xVoxjW8SAR4QamHUZ6EsV7zC5qtq/4K0ZtVf+ag8Ed4=', '2018-04-10 17:14:15.328999', 0, 'luowhang_gd@163.com', '', '', 'luowhang_gd@163.com', 0, 1, '2018-04-10 17:12:38.094684', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (127, 'pbkdf2_sha256$24000$jUFU9cEGbdcw$FSe2fGd8+iAbcac/JlQY/HStQNjMgpitsDMWw9Sb5Bw=', '2018-04-10 20:05:07.254326', 0, 'bsli@leapmobi.com', '', '', 'bsli@leapmobi.com', 0, 1, '2018-04-10 20:03:55.704573', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (128, 'pbkdf2_sha256$24000$BDS5Xx5gPs4n$wjngmkQu6qj6A5SNSSu1oNmB2V4k5WGvbsNydHinMnI=', '2018-04-10 22:34:58.524040', 0, '916939772@qq.com', '', '', '916939772@qq.com', 0, 1, '2018-04-10 22:34:25.291924', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (129, 'pbkdf2_sha256$24000$5B77UFq7KjCu$dHEWEhqZ4h1o1HZPYnVwF/drSGoXIQC1EfEjigeEFwY=', '2018-04-11 09:13:39.565326', 0, 'lc199712138@163.com', '', '', 'lc199712138@163.com', 0, 1, '2018-04-11 09:12:47.715808', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (130, 'pbkdf2_sha256$24000$DJRjI5FOLuom$Pal17nMpTe9O1R9c5lDI8Se7N5I4p6Jw3Nv26zSc3LE=', NULL, 0, '302777816@qq.com', '', '', '302777816@qq.com', 0, 0, '2018-04-12 11:03:33.216542', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (131, 'pbkdf2_sha256$24000$xhNIBHCbR5ay$x6Yvv0UckcMUaTYPwYXvgeCmAiM7ZHZXwPGwTfpTFJU=', NULL, 0, '1365862888@163.com', '', '', '1365862888@163.com', 0, 0, '2018-04-12 12:58:59.816399', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (132, 'pbkdf2_sha256$24000$NqLKCCbxkJvp$zya53cPLFXgFUK1zLQEef5/tj+XrcJsVLuc/LXR+Vec=', NULL, 0, 'shuitai504@sohu.com', '', '', 'shuitai504@sohu.com', 0, 0, '2018-04-12 14:53:12.342582', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (133, 'pbkdf2_sha256$24000$lJL0AQVdwZPh$cSHwcUiMgVg53EmJk+mecKjpAwx16XZt6OXenS7ABPA=', NULL, 0, 'shuitai@sohu.com', '', '', 'shuitai@sohu.com', 0, 0, '2018-04-12 14:53:48.631073', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (134, 'pbkdf2_sha256$24000$3hM0drBaZMkj$hLdDJaIlVRPgoc0BV85C8BitCVdNWi47sUoxc27z1mQ=', NULL, 0, '373804312@qq.com2', '', '', '373804312@qq.com2', 0, 0, '2018-04-12 17:04:57.816702', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (135, 'pbkdf2_sha256$24000$pdekcEuWD4gP$m6+N1ivQNoCiMVqfnU6yOhGU833l6ceJUwCMykPtAnA=', NULL, 0, '3555504312@qq.com', '', '', '3555504312@qq.com', 0, 0, '2018-04-12 17:05:24.753271', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (136, 'pbkdf2_sha256$24000$EQyo18S4Ya0J$VrKcKEgY3mcOc20mti/1aRS0ndB8CAbecQOK5wsIP0I=', NULL, 0, 'jiping505@163.com', '', '', 'jiping505@163.com', 0, 0, '2018-04-12 18:39:30.526157', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (137, 'pbkdf2_sha256$24000$1TokN3IpNxvN$qZfg3IxoQFBqQtXeXkZCBYpeOY/KcG6Qu67Ai8KQBLA=', NULL, 0, 'set@qqq.com', '', '', 'set@qqq.com', 0, 0, '2018-04-12 18:53:31.243140', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (138, 'pbkdf2_sha256$24000$PRcA7Xd3tPgs$leDoj4TBB5JCn+PqyuoalnmwjdJDJSneWQ7yStmRYPg=', NULL, 0, '12345678@qq.com', '', '', '12345678@qq.com', 0, 0, '2018-04-12 18:54:08.078534', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (139, 'pbkdf2_sha256$24000$RW864QRHE7Qt$bFpDal0vcRxwH71+ukbrinfbwFIdgqZ/CQ38AKEhbaA=', NULL, 0, '572907561@qq.com', '', '', '572907561@qq.com', 0, 0, '2018-04-12 18:54:43.634682', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (140, 'pbkdf2_sha256$24000$unwyCbg5VyJg$Lgb3KoQFr0VVDtxATvXCScqlNldtBRjheo/pQjhXBbE=', NULL, 0, '1753545438@qq.com', '', '', '1753545438@qq.com', 0, 0, '2018-04-12 18:56:39.954195', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (141, 'pbkdf2_sha256$24000$IGYgr3ImBKSU$S7lgguQQY0AW8ZjKPl3+7JIkzzshDFq1gIrwnE9w+LY=', NULL, 0, 'ceshi@ceshi.com', '', '', 'ceshi@ceshi.com', 0, 0, '2018-04-12 18:58:04.574790', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (142, 'pbkdf2_sha256$24000$KPjeH4lAwxaH$/88HjACdRIaI1AIRpEXWF+UVgWfAPpbbbjBqMaT8tTo=', NULL, 0, '409760494@qq.com', '', '', '409760494@qq.com', 0, 0, '2018-04-12 19:38:15.510037', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (143, 'pbkdf2_sha256$24000$0kr6wG1KI63I$e6TPpnQU5hpV6FY1IT8np3NTUmYgMvxK7C2t9g/kltY=', '2018-04-12 20:17:27.080357', 0, 'riyueguangcq@sohu.com', '', '', 'riyueguangcq@sohu.com', 0, 1, '2018-04-12 20:15:50.238401', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (144, 'pbkdf2_sha256$24000$cm1dne5lOWJs$1fkPFW3mD3dliKKUXmJTVceR1oDAKH6HCUWgm6q8OEw=', '2018-05-06 19:47:36.360695', 0, '635766754@qq.com', '', '', '635766754@qq.com', 0, 1, '2018-04-13 21:57:57.804810', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (145, 'pbkdf2_sha256$24000$o3rL0ehBAl63$QdxZn59Md/o8ntl/Pkot16M8tOjT34pLvttAXF48pNQ=', NULL, 0, 'fjdje@qq.com', '', '', 'fjdje@qq.com', 0, 0, '2018-04-13 22:12:45.398749', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (146, 'pbkdf2_sha256$24000$sCsWqzOjSq34$QbVM8EWuS9BGTGxf5ZziOOL3Mvt/nfXh5MwXHVHLF3I=', '2018-04-20 13:15:28.286399', 0, 'uonele@163.com', '', '', 'uonele@163.com', 0, 1, '2018-04-14 13:48:11.259815', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (147, 'pbkdf2_sha256$24000$2vaECKIpiD94$HRsEvnjIgirV/gKpfRg6xQchhO0ZtiOpdAI+uKhP1OI=', NULL, 0, 'minghuixu97ae@163.com', '', '', 'minghuixu97ae@163.com', 0, 0, '2018-04-14 17:19:42.464555', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (148, 'pbkdf2_sha256$24000$vMAkdQH22dT2$aH3wMc2VSKroA7FU8T86mFvOesbmU67ISeT6XT9S6Eg=', NULL, 0, '376186792@qq.com', '', '', '376186792@qq.com', 0, 1, '2018-04-14 22:02:54.646182', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (149, 'pbkdf2_sha256$24000$EI5rAlsfkmzW$Ex6BoUenxUlvEnkdSXTiYXeUqvb0bGSAd+J99fRpTrY=', NULL, 0, '5161178799@qq.com', '', '', '5161178799@qq.com', 0, 0, '2018-04-15 22:33:13.947887', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (150, 'pbkdf2_sha256$24000$fBlb26P8nTpq$p6ATp0q8ebhq9v5A8/St70qNckMt1gInc9wE6JiMXcw=', '2018-04-16 06:02:22.655027', 0, '1037861239@qq.com', '', '', '1037861239@qq.com', 0, 1, '2018-04-16 06:01:07.740931', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (151, 'pbkdf2_sha256$24000$dpimcWRjwiWj$qz+l89bsdtFWngcy8Fc950gR3ADLtE/5Ws1asG2cKCg=', '2018-04-16 23:28:42.658044', 0, '296153676@qq.com', '', '', '296153676@qq.com', 0, 1, '2018-04-16 23:28:15.605234', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (152, 'pbkdf2_sha256$24000$nQdxSnr4b4dS$+U+uwuqIXkA3+TZctew19ST2wqftMYnDuF24+Q7kCYk=', NULL, 0, 'xgp@132.com', '', '', 'xgp@132.com', 0, 0, '2018-04-17 00:15:59.466234', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (153, 'pbkdf2_sha256$24000$l2yKkMp6aAzm$iIehtMv0NIhylq8nuAIwpj6y0sox95pU3xpEcGNz1F8=', NULL, 0, 'xgp@123.com', '', '', 'xgp@123.com', 0, 0, '2018-04-17 00:17:32.881915', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (154, 'pbkdf2_sha256$24000$QqXzQZ03VU4r$vY5oZ1mgBR/gCvHMbbtY1eJyo7KXrprXWN5/m0IYNes=', NULL, 0, 'admin@126.com', '', '', 'admin@126.com', 0, 0, '2018-04-17 10:31:54.139373', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (155, 'pbkdf2_sha256$24000$ZnMIbNnVHKLs$8Plf2PN7gDuzA1Pj2oVG2Uj7IXApCrTpiMDczIK9Q4Y=', '2018-04-18 15:33:55.055034', 0, '1036035929@qq.com', '', '', '1036035929@qq.com', 0, 1, '2018-04-18 15:31:57.012019', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (156, 'pbkdf2_sha256$24000$aUv82mHTWGpa$9iSSSC2BYB/IJgxsjuzs5i4WuNX/gyRe3A1DzvuF+Nk=', '2018-04-18 22:38:58.971377', 0, 'rainy008@126.com', '', '', 'rainy008@126.com', 0, 1, '2018-04-18 22:35:36.483865', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (157, 'pbkdf2_sha256$24000$nRcsAXQdADs1$dkTFBGB1PaYtcAPD7W4MazkAeQXG+PsWummdNXvTmgw=', '2018-04-19 09:09:45.180830', 0, '1211594633@qq.com', '', '', '1211594633@qq.com', 0, 1, '2018-04-19 09:08:36.470090', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (158, 'pbkdf2_sha256$24000$rOLVNcYa3KKD$Dta13ypZAwv6M83VWqhlZPpuZ2FDdK/eOlZyhPe7jFg=', NULL, 0, '123413@wd.com', '', '', '123413@wd.com', 0, 0, '2018-04-19 16:44:47.941601', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (159, 'pbkdf2_sha256$24000$Uy356Mrpcsxa$B38PLH3xWuKZGJ+uDpQDuJzeOGKxu6bkPok1wrANssc=', '2018-04-19 16:46:55.176076', 0, '640513606@qq.com', '', '', '640513606@qq.com', 0, 1, '2018-04-19 16:46:09.238588', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (160, 'pbkdf2_sha256$24000$Ca8TL3hcrs0R$YaZN3kdgxAg1A+OqmD8cpn0c71u00CHUeU8cfKpJeYM=', NULL, 0, 'abc@sohu.com', '', '', 'abc@sohu.com', 0, 0, '2018-04-19 17:39:14.580259', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (161, 'pbkdf2_sha256$24000$zMF6qz6NZgtf$N5rQRbH75h5MujR7SAk/G4vW7lWh6T6BWoHvXNqp680=', '2018-04-19 17:40:31.345181', 0, 'lzc_softline@163.com', '', '', 'lzc_softline@163.com', 0, 1, '2018-04-19 17:39:51.572662', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (162, 'pbkdf2_sha256$24000$XDKmhYo00Dq4$r8oDKUp2WWUg00cGo3za3qdVARdXG3yA81asqIwhJsQ=', NULL, 0, '222@222.com', '', '', '222@222.com', 0, 0, '2018-04-19 19:12:30.067304', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (163, 'pbkdf2_sha256$24000$oR8KMTRFcMEq$/d/rRsvEiJJ4IabG06U/AOMXVk9C47fc56vCjNLRvzQ=', '2018-04-19 19:37:15.149181', 0, 'un1imited@sina.com', '', '', 'un1imited@sina.com', 0, 1, '2018-04-19 19:36:51.047597', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (164, 'pbkdf2_sha256$24000$k4DU5rXOdIUF$KQS7YK4r/8mFzP8BlE+c9FvyLLyiyHMm1FORMwRp+fI=', '2018-04-19 20:56:30.324308', 0, '251120714@qq.com', '', '', '251120714@qq.com', 0, 1, '2018-04-19 20:55:14.772751', 'hello', '2018-04-19', 'male', 'aa', '', 'image/2018/04/0001.jpg');
INSERT INTO `users_userprofile` VALUES (165, 'pbkdf2_sha256$24000$2U2mg46qQMTF$oNCMnvdab5nzE9RrJVG7SeljXU9a/9aFpf1wJTuNkRc=', '2018-04-21 10:56:01.476377', 0, '527380349@qq.com', '', '', '527380349@qq.com', 0, 1, '2018-04-20 23:42:20.668848', '', NULL, 'female', '', NULL, 'image/2018/04/1195431.jpg');
INSERT INTO `users_userprofile` VALUES (166, 'pbkdf2_sha256$24000$ekGQCmji2DHv$Vh5ruuu8nxc1xvU484qAxEpIVd2lKeBOl8GpKbnErDI=', NULL, 0, '111@abc.com', '', '', '111@abc.com', 0, 0, '2018-04-21 15:37:34.796856', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (167, 'pbkdf2_sha256$24000$395fBJ5HzaaZ$wwpIIfbbi9VBgU7984LthkB1ODxCSgqZPVyB+fD4jNc=', NULL, 0, 'sss@tcl.com', '', '', 'sss@tcl.com', 0, 0, '2018-04-21 15:38:06.946746', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (168, 'pbkdf2_sha256$24000$9op7np3f9XYX$F+XYexlgn8U69JfuqySfIkpURN8X3pE7dGoSCicnJdQ=', '2018-05-05 22:21:25.607286', 0, 'x_tom@sina.com', '', '', 'x_tom@sina.com', 0, 1, '2018-04-21 22:21:02.648914', '红彤彤', NULL, 'male', '123', '', 'image/2018/05/2014082519314734_S.jpg');
INSERT INTO `users_userprofile` VALUES (169, 'pbkdf2_sha256$24000$hEwzNZoEpmnQ$5Eai1NtjnDu084fDZ793na0FkvRyogP3KQCBAY+vgnc=', NULL, 0, '5949@88.com', '', '', '5949@88.com', 0, 0, '2018-05-04 09:45:56.328770', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (170, 'pbkdf2_sha256$24000$pTHUdiTc6pk9$AjeTD+PjgqSna8Mk9VBksL2OUHQx2h6dk2IhjFU7NDY=', '2018-05-04 11:16:10.651094', 0, '594978759@qq.com', '', '', '594978759@qq.com', 0, 1, '2018-05-04 11:15:14.497584', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (171, 'pbkdf2_sha256$24000$L8GwQpiGZDkr$6IZBGtFyJJkhjpEYtoXjkGPF6eVBjQuru12VQQ/8OtU=', '2018-05-05 17:34:52.194419', 0, '925123164@qq.com', '', '', '925123164@qq.com', 0, 1, '2018-05-04 19:29:43.688405', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (172, 'pbkdf2_sha256$24000$c3k5xxAdYBzy$j1rMNGBCCP9LxskA8riSFV5TA9wRsMNN5e4gFYm+AEo=', '2018-05-05 13:00:08.569809', 0, 'sizfx6@126.com', '', '', 'sizfx6@126.com', 0, 1, '2018-05-05 00:33:26.794455', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (173, 'pbkdf2_sha256$24000$S9syncz1xexd$msQkTCX4V+j2tNnrG3O4fLS0oRK1Rg1tP16+di+m/PU=', '2018-05-05 11:44:51.816041', 0, '728835285@qq.com', '', '', '728835285@qq.com', 0, 1, '2018-05-05 11:43:49.857040', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (174, 'pbkdf2_sha256$24000$cujxzGoCciCA$vxMCeuZavFZ5QKYwv/3/4xjJ0A16+ODq8x7TtbwTrF4=', '2018-05-05 18:02:31.578483', 0, '792416906@qq.com', '', '', '792416906@qq.com', 0, 1, '2018-05-05 18:01:59.938217', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (175, 'pbkdf2_sha256$24000$9Xfy2jarZjWv$A2mFlrW6CDYkzbME+oDXseuvQBG4YLlXz6TbYp8Y1xw=', NULL, 0, '123@163.com', '', '', '123@163.com', 0, 0, '2018-05-05 20:08:58.881926', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (176, 'pbkdf2_sha256$24000$OepmcGO4wa1A$DHK9j3Sn2fOdYEUD/HtEJYsw6zxl5iBaBTVNST+6ayY=', '2018-05-05 20:11:37.335729', 0, 'w05210720@163.com', '', '', 'w05210720@163.com', 0, 1, '2018-05-05 20:10:01.122440', '', NULL, 'female', '', NULL, 'image/2018/05/示例图片_01.jpg');
INSERT INTO `users_userprofile` VALUES (177, 'pbkdf2_sha256$24000$i7uA6R85GPBk$eo2N2+vrYjtwRanNd4/YCyZSDx8uybKowvhm0Pr9AHE=', NULL, 0, 'yy@qq.com', '', '', 'yy@qq.com', 0, 0, '2018-05-05 21:34:27.625486', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (178, 'pbkdf2_sha256$24000$09qGuflumv0e$zn0htv/qMJVgFPO2hFR2qIWST3krZlh2Oo4zyj8JGLk=', '2018-05-05 22:27:27.412983', 0, 'zhangsiqiang519@sina.com', '', '', 'zhangsiqiang519@sina.com', 0, 1, '2018-05-05 22:25:07.707112', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (179, 'pbkdf2_sha256$24000$fKr2W9PU78sp$KrNtogSCWD7WAXmTt8bY7oAYA5DDSp7w3beFfy0DoJE=', '2018-05-06 16:16:32.439854', 0, '18301239320@163.com', '', '', '18301239320@163.com', 0, 1, '2018-05-06 16:15:05.033611', 'zhougy', '2013-05-02', 'male', 'wuhan', '1830123932', 'image/2018/05/qixin.png');
INSERT INTO `users_userprofile` VALUES (180, 'pbkdf2_sha256$24000$1ibDGRkmYKtJ$7z1vOSh/GuQTnzZFQYQvrlcboJmZUcMbILui70QoxTg=', NULL, 0, '2131247535@qq.com', '', '', '2131247535@qq.com', 0, 1, '2018-05-06 16:32:55.919596', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (181, 'pbkdf2_sha256$24000$xxfcwX7SZV6D$9P38xJ7FVONXW+3oVUfwY35MBw2S4AumgMhCarXKhnY=', '2018-05-06 19:41:21.356812', 0, 'mxins@qq.com', '', '', 'mxins@qq.com', 0, 1, '2018-05-06 19:18:43.977125', '', NULL, 'female', '', NULL, 'image/default.png');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_groups_userprofile_id_823cf2fc_uniq`(`userprofile_id`, `group_id`) USING BTREE,
  INDEX `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `users_userprofil_userprofile_id_a4496a80_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------
INSERT INTO `users_userprofile_groups` VALUES (1, 12, 1);

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_user_permissions_userprofile_id_d0215190_uniq`(`userprofile_id`, `permission_id`) USING BTREE,
  INDEX `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id`(`permission_id`) USING BTREE,
  CONSTRAINT `users_userprofil_userprofile_id_34544737_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------
INSERT INTO `users_userprofile_user_permissions` VALUES (50, 12, 52);
INSERT INTO `users_userprofile_user_permissions` VALUES (51, 12, 53);
INSERT INTO `users_userprofile_user_permissions` VALUES (52, 12, 54);
INSERT INTO `users_userprofile_user_permissions` VALUES (71, 12, 74);

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `query` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id`(`content_type_id`) USING BTREE,
  INDEX `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NULL DEFAULT NULL,
  `ip_addr` char(39) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id`(`content_type_id`) USING BTREE,
  INDEX `xadmin_log_user_id_bb16a176_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 150 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES (1, '2018-01-09 17:43:36.502000', '127.0.0.1', '2', 'EmailVerifyRecord object', 'create', '已添加。', 8, 1);
INSERT INTO `xadmin_log` VALUES (2, '2018-01-09 18:08:30.883000', '127.0.0.1', '3', '5678(mtianyan@qq.com)', 'create', '已添加。', 8, 1);
INSERT INTO `xadmin_log` VALUES (3, '2018-01-09 18:32:48.492000', '127.0.0.1', '1', 'Banner object', 'create', '已添加。', 9, 1);
INSERT INTO `xadmin_log` VALUES (4, '2018-01-09 18:37:32.350000', '127.0.0.1', '2', 'Banner object', 'create', '已添加。', 9, 1);
INSERT INTO `xadmin_log` VALUES (5, '2018-01-09 18:40:19.610000', '127.0.0.1', '2', '2(位于第100位)', 'change', '已修改 title 。', 9, 1);
INSERT INTO `xadmin_log` VALUES (6, '2018-01-09 20:32:35.883000', '127.0.0.1', '1', '天涯明月笙', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (7, '2018-01-09 20:32:49.451000', '127.0.0.1', '1', '《天涯明月笙》课程的章节 >> 天涯明月笙第一章', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (8, '2018-01-09 20:33:01.512000', '127.0.0.1', '1', '《天涯明月笙》课程的章节 >> 天涯明月笙第一章章节的视频 >> 天涯明月的video', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (9, '2018-01-09 20:33:16.977000', '127.0.0.1', '1', '《天涯明月笙》课程的资源: ppt', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (10, '2018-01-09 21:18:24.112000', '127.0.0.1', '1', '杭州', 'create', '已添加。', 19, 1);
INSERT INTO `xadmin_log` VALUES (11, '2018-01-09 21:18:50.829000', '127.0.0.1', '1', '课程机构: 浙江大学', 'create', '已添加。', 20, 1);
INSERT INTO `xadmin_log` VALUES (12, '2018-01-09 21:19:38.852000', '127.0.0.1', '1', '[课程机构: 浙江大学]的教师: 天涯明月笙', 'create', '已添加。', 21, 1);
INSERT INTO `xadmin_log` VALUES (13, '2018-01-09 22:26:52.325000', '127.0.0.1', '1', '用户: 天涯明月笙 手机号: 110', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (14, '2018-01-09 22:27:16.447000', '127.0.0.1', '1', '用户(mtianyan)学习了天涯明月笙 ', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (15, '2018-01-09 22:27:36.624000', '127.0.0.1', '1', '用户(0)接收了哈哈 ', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (16, '2018-01-09 22:27:50.293000', '127.0.0.1', '1', '用户(mtianyan)对于《天涯明月笙》 评论 :', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (17, '2018-01-09 22:28:04.800000', '127.0.0.1', '1', '用户(mtianyan123)收藏了2 ', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (18, '2018-01-10 05:52:04.039000', '127.0.0.1', NULL, '', 'delete', '批量删除 1 个 用户小组件', NULL, 1);
INSERT INTO `xadmin_log` VALUES (19, '2018-01-11 20:01:50.761000', '127.0.0.1', '2', '北京市', 'create', '已添加。', 19, 1);
INSERT INTO `xadmin_log` VALUES (20, '2018-01-11 20:02:12.906000', '127.0.0.1', '3', '上海市', 'create', '已添加。', 19, 1);
INSERT INTO `xadmin_log` VALUES (21, '2018-01-11 20:02:46.153000', '127.0.0.1', '4', '杭州市', 'create', '已添加。', 19, 1);
INSERT INTO `xadmin_log` VALUES (22, '2018-01-11 20:02:54.089000', '127.0.0.1', '5', '西安市', 'create', '已添加。', 19, 1);
INSERT INTO `xadmin_log` VALUES (23, '2018-01-11 20:03:13.713000', '127.0.0.1', '6', '广州市', 'create', '已添加。', 19, 1);
INSERT INTO `xadmin_log` VALUES (24, '2018-01-11 20:03:50.665000', '127.0.0.1', '7', '深圳市', 'create', '已添加。', 19, 1);
INSERT INTO `xadmin_log` VALUES (25, '2018-01-11 20:04:27.684000', '127.0.0.1', '8', '昆明市', 'create', '已添加。', 19, 1);
INSERT INTO `xadmin_log` VALUES (26, '2018-01-11 20:15:26.690000', '127.0.0.1', '2', '课程机构: 慕课网', 'create', '已添加。', 20, 1);
INSERT INTO `xadmin_log` VALUES (27, '2018-01-11 20:16:19.493000', '127.0.0.1', '3', '课程机构: 北京大学', 'create', '已添加。', 20, 1);
INSERT INTO `xadmin_log` VALUES (28, '2018-01-11 20:21:14.020000', '127.0.0.1', '4', '课程机构: 浙江大学', 'create', '已添加。', 20, 1);
INSERT INTO `xadmin_log` VALUES (29, '2018-01-11 20:21:23.044000', '127.0.0.1', NULL, '', 'delete', '批量删除 1 个 课程机构', NULL, 1);
INSERT INTO `xadmin_log` VALUES (30, '2018-01-11 20:21:49.039000', '127.0.0.1', NULL, '', 'delete', '批量删除 1 个 城市', NULL, 1);
INSERT INTO `xadmin_log` VALUES (31, '2018-01-11 20:22:03.648000', '127.0.0.1', '4', '杭州市', 'change', '已修改 desc 。', 19, 1);
INSERT INTO `xadmin_log` VALUES (32, '2018-01-11 20:22:59.828000', '127.0.0.1', '5', '课程机构: 浙江大学', 'create', '已添加。', 20, 1);
INSERT INTO `xadmin_log` VALUES (33, '2018-01-11 20:25:28.038000', '127.0.0.1', '6', '课程机构: 云南大学', 'create', '已添加。', 20, 1);
INSERT INTO `xadmin_log` VALUES (34, '2018-01-11 20:28:00.109000', '127.0.0.1', '7', '课程机构: 天涯明月笙培训', 'create', '已添加。', 20, 1);
INSERT INTO `xadmin_log` VALUES (35, '2018-01-11 20:31:55.624000', '127.0.0.1', '8', '课程机构: 上海复旦', 'create', '已添加。', 20, 1);
INSERT INTO `xadmin_log` VALUES (36, '2018-01-11 20:33:09.413000', '127.0.0.1', '9', '课程机构: mtianyan个人培训', 'create', '已添加。', 20, 1);
INSERT INTO `xadmin_log` VALUES (37, '2018-01-11 20:36:27.102000', '127.0.0.1', '10', '课程机构: 深圳大学', 'create', '已添加。', 20, 1);
INSERT INTO `xadmin_log` VALUES (38, '2018-01-11 20:39:47.811000', '127.0.0.1', '11', '课程机构: 暨南大学', 'create', '已添加。', 20, 1);
INSERT INTO `xadmin_log` VALUES (39, '2018-01-11 22:42:20.826000', '127.0.0.1', '11', '课程机构: 暨南大学', 'change', '已修改 category 和 image 。', 20, 1);
INSERT INTO `xadmin_log` VALUES (40, '2018-01-11 22:42:25.344000', '127.0.0.1', '11', '课程机构: 暨南大学', 'change', '没有字段被修改。', 20, 1);
INSERT INTO `xadmin_log` VALUES (41, '2018-01-11 22:42:35.750000', '127.0.0.1', '10', '课程机构: 深圳大学', 'change', '已修改 category 。', 20, 1);
INSERT INTO `xadmin_log` VALUES (42, '2018-01-11 22:43:50.199000', '127.0.0.1', '9', '课程机构: mtianyan个人', 'change', '已修改 name，category 和 image 。', 20, 1);
INSERT INTO `xadmin_log` VALUES (43, '2018-01-11 22:44:01.140000', '127.0.0.1', '8', '课程机构: 上海复旦', 'change', '没有字段被修改。', 20, 1);
INSERT INTO `xadmin_log` VALUES (44, '2018-01-11 22:44:15.070000', '127.0.0.1', '7', '课程机构: 天涯明月笙培训', 'change', '已修改 image 。', 20, 1);
INSERT INTO `xadmin_log` VALUES (45, '2018-01-11 22:46:08.115000', '127.0.0.1', '2', '课程机构: 慕课网', 'change', '已修改 image 。', 20, 1);
INSERT INTO `xadmin_log` VALUES (46, '2018-01-11 22:47:18.106000', '127.0.0.1', '3', '课程机构: 北京大学', 'change', '已修改 image 。', 20, 1);
INSERT INTO `xadmin_log` VALUES (47, '2018-01-11 22:50:02.266000', '127.0.0.1', '5', '课程机构: 浙江大学', 'change', '已修改 category 和 image 。', 20, 1);
INSERT INTO `xadmin_log` VALUES (48, '2018-01-11 22:50:53.234000', '127.0.0.1', '6', '课程机构: 云南大学', 'change', '已修改 image 。', 20, 1);
INSERT INTO `xadmin_log` VALUES (49, '2018-01-11 22:56:16.883000', '127.0.0.1', '11', '课程机构: 暨南大学', 'change', '已修改 image 。', 20, 1);
INSERT INTO `xadmin_log` VALUES (50, '2018-01-11 23:00:55.340000', '127.0.0.1', '12', '课程机构: 清华大学', 'create', '已添加。', 20, 1);
INSERT INTO `xadmin_log` VALUES (51, '2018-01-11 23:01:13.812000', '127.0.0.1', '12', '课程机构: 清华大学', 'change', '没有字段被修改。', 20, 1);
INSERT INTO `xadmin_log` VALUES (52, '2018-01-11 23:01:35.080000', '127.0.0.1', '8', '课程机构: 上海复旦', 'change', '已修改 category 。', 20, 1);
INSERT INTO `xadmin_log` VALUES (53, '2018-01-11 23:01:47.154000', '127.0.0.1', '6', '课程机构: 云南大学', 'change', '已修改 category 。', 20, 1);
INSERT INTO `xadmin_log` VALUES (54, '2018-01-11 23:01:59.351000', '127.0.0.1', '3', '课程机构: 北京大学', 'change', '已修改 category 。', 20, 1);
INSERT INTO `xadmin_log` VALUES (55, '2018-01-11 23:02:04.541000', '127.0.0.1', '5', '课程机构: 浙江大学', 'change', '没有字段被修改。', 20, 1);
INSERT INTO `xadmin_log` VALUES (56, '2018-01-12 02:58:51.112000', '127.0.0.1', '12', '课程机构: 清华大学', 'change', '没有字段被修改。', 20, 1);
INSERT INTO `xadmin_log` VALUES (57, '2018-01-12 02:58:56.065000', '127.0.0.1', '11', '课程机构: 暨南大学', 'change', '没有字段被修改。', 20, 1);
INSERT INTO `xadmin_log` VALUES (58, '2018-01-12 06:35:49.665000', '127.0.0.1', '2', '[课程机构: 慕课网]的教师: mtianyan', 'create', '已添加。', 21, 1);
INSERT INTO `xadmin_log` VALUES (59, '2018-01-12 06:36:54.213000', '127.0.0.1', '3', '[课程机构: 北京大学]的教师: 北大杨教授', 'create', '已添加。', 21, 1);
INSERT INTO `xadmin_log` VALUES (60, '2018-01-12 06:37:29.763000', '127.0.0.1', '4', '[课程机构: 浙江大学]的教师: 陈越姥姥', 'create', '已添加。', 21, 1);
INSERT INTO `xadmin_log` VALUES (61, '2018-01-12 06:38:00.783000', '127.0.0.1', '5', '[课程机构: 云南大学]的教师: 杨云', 'create', '已添加。', 21, 1);
INSERT INTO `xadmin_log` VALUES (62, '2018-01-12 06:39:01.070000', '127.0.0.1', '6', '[课程机构: 天涯明月笙培训]的教师: 天涯明月笙', 'create', '已添加。', 21, 1);
INSERT INTO `xadmin_log` VALUES (63, '2018-01-12 06:39:47.974000', '127.0.0.1', '7', '[课程机构: 上海复旦]的教师: 复旦李教授', 'create', '已添加。', 21, 1);
INSERT INTO `xadmin_log` VALUES (64, '2018-01-12 06:40:21.392000', '127.0.0.1', '8', '[课程机构: mtianyan个人]的教师: mtianyan', 'create', '已添加。', 21, 1);
INSERT INTO `xadmin_log` VALUES (65, '2018-01-12 06:40:58.934000', '127.0.0.1', '9', '[课程机构: 深圳大学]的教师: 深圳大学王教授', 'create', '已添加。', 21, 1);
INSERT INTO `xadmin_log` VALUES (66, '2018-01-12 06:41:52.666000', '127.0.0.1', '10', '[课程机构: 暨南大学]的教师: 暨南大学赵教授', 'create', '已添加。', 21, 1);
INSERT INTO `xadmin_log` VALUES (67, '2018-01-12 06:42:38.941000', '127.0.0.1', '11', '[课程机构: 清华大学]的教师: 清华刘教授', 'create', '已添加。', 21, 1);
INSERT INTO `xadmin_log` VALUES (68, '2018-01-12 06:43:09.908000', '127.0.0.1', '1', '天涯明月笙', 'change', '已修改 image 。', 10, 1);
INSERT INTO `xadmin_log` VALUES (69, '2018-01-13 01:05:31.455000', '127.0.0.1', '7', '天涯明月笙编程-7', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (70, '2018-01-13 01:05:57.411000', '127.0.0.1', '8', '天涯明月笙编程-8', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (71, '2018-01-13 01:07:24.753000', '127.0.0.1', '9', '天涯明月笙编程-9', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (72, '2018-01-13 01:08:01.688000', '127.0.0.1', '10', '天涯明月笙编程-10', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (73, '2018-01-13 01:08:18.743000', '127.0.0.1', '11', '天涯明月笙编程-11', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (74, '2018-01-13 04:30:12.823000', '127.0.0.1', '11', '天涯明月笙编程-11', 'change', '已修改 category 和 tag 。', 10, 1);
INSERT INTO `xadmin_log` VALUES (75, '2018-01-13 04:30:36.546000', '127.0.0.1', '1', '天涯明月笙编程-1', 'change', '已修改 category 和 tag 。', 10, 1);
INSERT INTO `xadmin_log` VALUES (76, '2018-01-13 04:31:11.936000', '127.0.0.1', '32', 'mtianyan2', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (77, '2018-01-13 04:31:33.394000', '127.0.0.1', '2', '用户(mtianyan2)学习了天涯明月笙编程-1 ', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (78, '2018-01-13 04:31:38.986000', '127.0.0.1', '2', '用户(mtianyan2)学习了天涯明月笙编程-1 ', 'change', '没有字段被修改。', 18, 1);
INSERT INTO `xadmin_log` VALUES (79, '2018-01-13 04:32:00.313000', '127.0.0.1', '32', 'mtianyan2', 'change', '已修改 nick_name 和 address 。', 7, 1);
INSERT INTO `xadmin_log` VALUES (80, '2018-01-13 04:32:17.044000', '127.0.0.1', '1', 'mtianyan', 'change', '已修改 last_login，nick_name，address 和 image 。', 7, 1);
INSERT INTO `xadmin_log` VALUES (81, '2018-01-13 04:33:06.159000', '127.0.0.1', '32', 'mtianyan2', 'change', '已修改 image 。', 7, 1);
INSERT INTO `xadmin_log` VALUES (82, '2018-01-13 04:59:08.942000', '127.0.0.1', '2', '《天涯明月笙编程-1》课程的章节 >> 第一章 开发环境搭建', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (83, '2018-01-13 04:59:19.119000', '127.0.0.1', '3', '《天涯明月笙编程-1》课程的章节 >> 第二章 基础知识回顾', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (84, '2018-01-13 04:59:40.525000', '127.0.0.1', '4', '《天涯明月笙编程-1》课程的章节 >> 第三章 通过留言板功能进行复习', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (85, '2018-01-13 05:00:30.251000', '127.0.0.1', '5', '《天涯明月笙编程-1》课程的章节 >> 第四章 xadmin快速搭建后台', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (86, '2018-01-13 05:00:47.222000', '127.0.0.1', '6', '《天涯明月笙编程-11》课程的章节 >> 第五章 登录注册功能实现', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (87, '2018-01-13 05:01:03.276000', '127.0.0.1', '7', '《天涯明月笙编程-11》课程的章节 >> 第六章 课程机构功能实现', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (88, '2018-01-13 05:01:18.436000', '127.0.0.1', '8', '《天涯明月笙编程-11》课程的章节 >> 第七章 课程列表功能实现', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (89, '2018-01-13 05:01:33.348000', '127.0.0.1', '9', '《天涯明月笙编程-11》课程的章节 >> 第八章 课程讲师功能实现', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (90, '2018-01-13 05:01:53.586000', '127.0.0.1', '10', '《天涯明月笙编程-11》课程的章节 >> 第十章 个人中心和全局搜索功能实现', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (91, '2018-01-13 05:02:05.902000', '127.0.0.1', '11', '《天涯明月笙编程-11》课程的章节 >> 首页全局功能细节', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (92, '2018-01-13 05:02:24.786000', '127.0.0.1', '6', '《天涯明月笙编程-1》课程的章节 >> 第五章 登录注册功能实现', 'change', '已修改 course 。', 11, 1);
INSERT INTO `xadmin_log` VALUES (93, '2018-01-13 05:02:29.255000', '127.0.0.1', '7', '《天涯明月笙编程-1》课程的章节 >> 第六章 课程机构功能实现', 'change', '已修改 course 。', 11, 1);
INSERT INTO `xadmin_log` VALUES (94, '2018-01-13 05:02:33.607000', '127.0.0.1', '11', '《天涯明月笙编程-1》课程的章节 >> 首页全局功能细节', 'change', '已修改 course 。', 11, 1);
INSERT INTO `xadmin_log` VALUES (95, '2018-01-13 05:02:38.019000', '127.0.0.1', '10', '《天涯明月笙编程-1》课程的章节 >> 第十章 个人中心和全局搜索功能实现', 'change', '已修改 course 。', 11, 1);
INSERT INTO `xadmin_log` VALUES (96, '2018-01-13 05:02:43.936000', '127.0.0.1', '9', '《天涯明月笙编程-1》课程的章节 >> 第八章 课程讲师功能实现', 'change', '已修改 course 。', 11, 1);
INSERT INTO `xadmin_log` VALUES (97, '2018-01-13 05:02:48.226000', '127.0.0.1', '8', '《天涯明月笙编程-1》课程的章节 >> 第七章 课程列表功能实现', 'change', '已修改 course 。', 11, 1);
INSERT INTO `xadmin_log` VALUES (98, '2018-01-13 05:02:55.270000', '127.0.0.1', NULL, '', 'delete', '批量删除 1 个 章节', NULL, 1);
INSERT INTO `xadmin_log` VALUES (99, '2018-01-13 05:03:14.224000', '127.0.0.1', '10', '《天涯明月笙编程-1》课程的章节 >> 第九章 个人中心和全局搜索功能实现', 'change', '已修改 name 。', 11, 1);
INSERT INTO `xadmin_log` VALUES (100, '2018-01-13 05:03:20.025000', '127.0.0.1', '11', '《天涯明月笙编程-1》课程的章节 >> 第十章 首页全局功能细节', 'change', '已修改 name 。', 11, 1);
INSERT INTO `xadmin_log` VALUES (101, '2018-01-13 05:04:32.593000', '127.0.0.1', '2', '《天涯明月笙编程-1》课程的章节 >> 第一章 开发环境搭建章节的视频 >> 1.1 helloworld', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (102, '2018-01-13 05:05:02.905000', '127.0.0.1', '3', '《天涯明月笙编程-1》课程的章节 >> 第一章 开发环境搭建章节的视频 >> 1.2 windows下软件下载', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (103, '2018-01-13 05:05:12.828000', '127.0.0.1', '4', '《天涯明月笙编程-1》课程的章节 >> 第一章 开发环境搭建章节的视频 >> 1.3 Navicat使用指南', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (104, '2018-01-13 05:05:28.415000', '127.0.0.1', '5', '《天涯明月笙编程-1》课程的章节 >> 第一章 开发环境搭建章节的视频 >> 1.4 mysql安装与配置', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (105, '2018-01-13 05:05:53.191000', '127.0.0.1', '6', '《天涯明月笙编程-1》课程的章节 >> 第二章 基础知识回顾章节的视频 >> 2.1 基础唐诗背诵', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (106, '2018-01-13 05:06:03.761000', '127.0.0.1', '7', '《天涯明月笙编程-1》课程的章节 >> 第二章 基础知识回顾章节的视频 >> 2.2 基础宋词悲伤', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (107, '2018-01-13 05:06:15.239000', '127.0.0.1', '8', '《天涯明月笙编程-1》课程的章节 >> 第二章 基础知识回顾章节的视频 >> 2.3 基础舞蹈学习', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (108, '2018-01-13 05:06:43.503000', '127.0.0.1', '9', '《天涯明月笙编程-1》课程的章节 >> 第二章 基础知识回顾章节的视频 >> 2.3 基础礼仪学习', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (109, '2018-01-13 05:07:08.680000', '127.0.0.1', '10', '《天涯明月笙编程-1》课程的章节 >> 第三章 通过留言板功能进行复习章节的视频 >> 3-1 django目录介绍', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (110, '2018-01-13 05:07:16.376000', '127.0.0.1', '11', '《天涯明月笙编程-1》课程的章节 >> 第三章 通过留言板功能进行复习章节的视频 >> 3-2 配置表单页面', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (111, '2018-01-13 05:07:29.129000', '127.0.0.1', '12', '《天涯明月笙编程-1》课程的章节 >> 第三章 通过留言板功能进行复习章节的视频 >> 3-3 django orm介绍', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (112, '2018-01-13 05:29:57.223000', '127.0.0.1', '1', '天涯明月笙编程-1', 'change', '已修改 learn_times，students，fav_nums 和 add_time 。', 10, 1);
INSERT INTO `xadmin_log` VALUES (113, '2018-01-13 05:30:04.626000', '127.0.0.1', '1', '天涯明月笙编程-1', 'change', '没有字段被修改。', 10, 1);
INSERT INTO `xadmin_log` VALUES (114, '2018-01-13 05:30:19.805000', '127.0.0.1', '1', '《天涯明月笙编程-1》课程的资源: ppt', 'change', '没有字段被修改。', 13, 1);
INSERT INTO `xadmin_log` VALUES (115, '2018-01-13 05:31:58.689000', '127.0.0.1', NULL, '', 'delete', '批量删除 1 个 课程资源', NULL, 1);
INSERT INTO `xadmin_log` VALUES (116, '2018-01-13 05:32:18.161000', '127.0.0.1', '2', '《天涯明月笙编程-1》课程的资源: 课程ppt', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (117, '2018-01-13 05:33:18.576000', '127.0.0.1', '3', '《天涯明月笙编程-1》课程的资源: 课程源码', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (118, '2018-01-13 06:09:50.345000', '127.0.0.1', '9', '天涯明月笙编程-9', 'change', '已修改 teacher，category 和 tag 。', 10, 1);
INSERT INTO `xadmin_log` VALUES (119, '2018-01-13 06:11:07.498000', '127.0.0.1', '1', '天涯明月笙编程-1', 'change', '已修改 teacher 。', 10, 1);
INSERT INTO `xadmin_log` VALUES (120, '2018-01-13 22:36:08.866000', '127.0.0.1', '2', '《天涯明月笙编程-1》课程的章节 >> 第一章 开发环境搭建章节的视频 >> 1.1 helloworld', 'change', '已修改 url 。', 12, 1);
INSERT INTO `xadmin_log` VALUES (121, '2018-01-14 04:16:48.107000', '127.0.0.1', '1', 'mtianyan', 'change', '已修改 last_login，birthday 和 mobile 。', 7, 1);
INSERT INTO `xadmin_log` VALUES (122, '2018-01-14 22:55:11.831000', '127.0.0.1', '8', '天涯明月笙编程-8', 'change', '已修改 teacher，category 和 tag 。', 10, 1);
INSERT INTO `xadmin_log` VALUES (123, '2018-01-15 06:26:50.604000', '127.0.0.1', '12', 'mtianyan123', 'change', '已修改 user_permissions，is_staff 和 image 。', 7, 1);
INSERT INTO `xadmin_log` VALUES (124, '2018-01-15 06:31:47.421000', '127.0.0.1', '12', 'mtianyan123', 'change', '已修改 last_login 和 user_permissions 。', 7, 1);
INSERT INTO `xadmin_log` VALUES (125, '2018-01-15 06:32:48.496000', '127.0.0.1', '12', 'mtianyan123', 'change', '已修改 last_login 和 user_permissions 。', 7, 1);
INSERT INTO `xadmin_log` VALUES (126, '2018-01-15 06:39:41.881000', '127.0.0.1', '1', '编辑', 'create', '已添加。', 3, 1);
INSERT INTO `xadmin_log` VALUES (127, '2018-01-15 06:40:01.812000', '127.0.0.1', '12', 'mtianyan123', 'change', '已修改 last_login 和 groups 。', 7, 1);
INSERT INTO `xadmin_log` VALUES (128, '2018-01-15 08:52:03.647000', '127.0.0.1', '2', '《天涯明月笙编程-1》课程的章节 >> 第一章 开发环境搭建章节的视频 >> 1.1 helloworld', 'change', '已修改 url 。', 12, 1);
INSERT INTO `xadmin_log` VALUES (129, '2018-01-15 19:24:29.386000', '127.0.0.1', '1', '天涯明月笙编程-1', 'change', '已修改 detail 。', 27, 1);
INSERT INTO `xadmin_log` VALUES (130, '2018-01-15 19:24:35.567000', '127.0.0.1', '2', '天涯明月笙编程-2', 'change', '已修改 detail 。', 27, 1);
INSERT INTO `xadmin_log` VALUES (131, '2018-01-15 19:24:42.199000', '127.0.0.1', '3', '天涯明月笙编程-3', 'change', '已修改 detail 。', 27, 1);
INSERT INTO `xadmin_log` VALUES (132, '2018-01-15 20:13:05.895000', '127.0.0.1', '1', '天涯明月笙编程-1', 'change', '已修改 detail 和 image 。', 27, 1);
INSERT INTO `xadmin_log` VALUES (133, '2018-01-15 20:13:22.654000', '127.0.0.1', '2', '天涯明月笙编程-2', 'change', '已修改 teacher，detail 和 image 。', 27, 1);
INSERT INTO `xadmin_log` VALUES (134, '2018-01-15 20:13:33.558000', '127.0.0.1', '3', '天涯明月笙编程-3', 'change', '已修改 teacher，detail 和 image 。', 27, 1);
INSERT INTO `xadmin_log` VALUES (135, '2018-01-16 02:52:13.973000', '127.0.0.1', '2', '《天涯明月笙编程-1》课程的章节 >> 第一章 开发环境搭建章节的视频 >> 1.1 helloworld', 'change', '已修改 url 。', 12, 1);
INSERT INTO `xadmin_log` VALUES (136, '2018-03-16 18:35:35.016842', '39.129.5.42', '1', '天涯明月笙编程-1(已添加课程)', 'change', '已修改 name 和 add_time 。', 27, 45);
INSERT INTO `xadmin_log` VALUES (137, '2018-03-16 18:36:56.838310', '39.129.5.42', '1', '天涯明月笙编程-1(第一小节已添加视频)', 'change', '已修改 name 。', 27, 45);
INSERT INTO `xadmin_log` VALUES (138, '2018-03-16 18:37:23.582889', '39.129.5.42', '1', '天涯明月笙编程-1(1.1已添加视频)', 'change', '已修改 name 。', 27, 45);
INSERT INTO `xadmin_log` VALUES (139, '2018-03-19 07:54:08.801637', '60.184.152.109', '10', '《天涯明月笙编程-1(1.1已添加视频)》课程的章节 >> 第九章 个人中心和全局搜索功能实现', 'change', '没有字段被修改。', 11, 45);
INSERT INTO `xadmin_log` VALUES (140, '2018-04-08 23:44:51.516104', '182.245.21.98', '11', '互联网+ 城市', 'create', '已添加。', 19, 45);
INSERT INTO `xadmin_log` VALUES (141, '2018-04-08 23:45:47.101953', '182.245.21.98', '16', '课程机构: 互联网+课程结构', 'create', '已添加。', 20, 45);
INSERT INTO `xadmin_log` VALUES (142, '2018-04-08 23:46:22.987798', '182.245.21.98', '14', '教师: 边老师', 'create', '已添加。', 21, 45);
INSERT INTO `xadmin_log` VALUES (143, '2018-04-09 12:47:28.882000', '182.245.21.98', '14', '教师: 边老师', 'change', '已修改 image 。', 21, 45);
INSERT INTO `xadmin_log` VALUES (144, '2018-04-09 12:58:09.795649', '182.245.21.98', '16', '课程机构: 互联网+课程结构', 'change', '已修改 image 。', 20, 45);
INSERT INTO `xadmin_log` VALUES (145, '2018-04-09 12:59:56.332004', '182.245.21.98', '1', '天涯明月笙编程-1(1.1已添加视频)', 'change', '已修改 detail 。', 27, 45);
INSERT INTO `xadmin_log` VALUES (146, '2018-04-09 15:38:43.908352', '39.129.5.55', '1', '天涯明月笙编程-1(1.1已添加视频)', 'change', '已修改 detail 。', 27, 45);
INSERT INTO `xadmin_log` VALUES (147, '2018-04-09 15:42:46.792137', '39.129.5.55', '1', '天涯明月笙编程-1(1.1已添加视频)', 'change', '已修改 detail 。', 27, 45);
INSERT INTO `xadmin_log` VALUES (148, '2018-04-09 15:45:52.042410', '39.129.5.55', '1', '天涯明月笙编程-1(1.1已添加视频)', 'change', '已修改 detail 。', 27, 45);
INSERT INTO `xadmin_log` VALUES (149, '2018-04-09 15:55:28.948636', '39.129.5.55', '1', '天涯明月笙编程-1(1.1已添加视频)', 'change', '已修改 detail 。', 27, 45);

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '', 1);
INSERT INTO `xadmin_usersettings` VALUES (2, 'site-theme', '/static/xadmin/css/themes/bootstrap-xadmin.css', 1);
INSERT INTO `xadmin_usersettings` VALUES (3, 'users_userprofile_editform_portal', 'box-0,box-1,box-2,box-3,box-4|box-5', 1);
INSERT INTO `xadmin_usersettings` VALUES (4, 'dashboard:home:pos', '', 12);
INSERT INTO `xadmin_usersettings` VALUES (5, 'dashboard:home:pos', '', 45);
INSERT INTO `xadmin_usersettings` VALUES (6, 'site-theme', 'http://mxonlinestatic.mtianyan.cn/static/xadmin/css/themes/bootstrap-xadmin.css', 45);

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `widget_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
