/*
 Navicat Premium Data Transfer

 Source Server         : mtianyan_mac_local
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : mxonline3

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 25/07/2020 20:56:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add 用户信息', 6, 'add_userprofile');
INSERT INTO `auth_permission` VALUES (22, 'Can change 用户信息', 6, 'change_userprofile');
INSERT INTO `auth_permission` VALUES (23, 'Can delete 用户信息', 6, 'delete_userprofile');
INSERT INTO `auth_permission` VALUES (24, 'Can view 用户信息', 6, 'view_userprofile');
INSERT INTO `auth_permission` VALUES (25, 'Can add 轮播图', 7, 'add_banner');
INSERT INTO `auth_permission` VALUES (26, 'Can change 轮播图', 7, 'change_banner');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 轮播图', 7, 'delete_banner');
INSERT INTO `auth_permission` VALUES (28, 'Can view 轮播图', 7, 'view_banner');
INSERT INTO `auth_permission` VALUES (29, 'Can add 邮箱验证码', 8, 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (30, 'Can change 邮箱验证码', 8, 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 邮箱验证码', 8, 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (32, 'Can view 邮箱验证码', 8, 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (33, 'Can add 课程', 9, 'add_course');
INSERT INTO `auth_permission` VALUES (34, 'Can change 课程', 9, 'change_course');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 课程', 9, 'delete_course');
INSERT INTO `auth_permission` VALUES (36, 'Can view 课程', 9, 'view_course');
INSERT INTO `auth_permission` VALUES (37, 'Can add 课程资源', 10, 'add_courseresource');
INSERT INTO `auth_permission` VALUES (38, 'Can change 课程资源', 10, 'change_courseresource');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 课程资源', 10, 'delete_courseresource');
INSERT INTO `auth_permission` VALUES (40, 'Can view 课程资源', 10, 'view_courseresource');
INSERT INTO `auth_permission` VALUES (41, 'Can add 章节', 11, 'add_lesson');
INSERT INTO `auth_permission` VALUES (42, 'Can change 章节', 11, 'change_lesson');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 章节', 11, 'delete_lesson');
INSERT INTO `auth_permission` VALUES (44, 'Can view 章节', 11, 'view_lesson');
INSERT INTO `auth_permission` VALUES (45, 'Can add 视频', 12, 'add_video');
INSERT INTO `auth_permission` VALUES (46, 'Can change 视频', 12, 'change_video');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 视频', 12, 'delete_video');
INSERT INTO `auth_permission` VALUES (48, 'Can view 视频', 12, 'view_video');
INSERT INTO `auth_permission` VALUES (49, 'Can add 课程评论', 13, 'add_coursecomments');
INSERT INTO `auth_permission` VALUES (50, 'Can change 课程评论', 13, 'change_coursecomments');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 课程评论', 13, 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES (52, 'Can view 课程评论', 13, 'view_coursecomments');
INSERT INTO `auth_permission` VALUES (53, 'Can add 用户咨询', 14, 'add_userask');
INSERT INTO `auth_permission` VALUES (54, 'Can change 用户咨询', 14, 'change_userask');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 用户咨询', 14, 'delete_userask');
INSERT INTO `auth_permission` VALUES (56, 'Can view 用户咨询', 14, 'view_userask');
INSERT INTO `auth_permission` VALUES (57, 'Can add 用户课程', 15, 'add_usercourse');
INSERT INTO `auth_permission` VALUES (58, 'Can change 用户课程', 15, 'change_usercourse');
INSERT INTO `auth_permission` VALUES (59, 'Can delete 用户课程', 15, 'delete_usercourse');
INSERT INTO `auth_permission` VALUES (60, 'Can view 用户课程', 15, 'view_usercourse');
INSERT INTO `auth_permission` VALUES (61, 'Can add 用户收藏', 16, 'add_userfavorite');
INSERT INTO `auth_permission` VALUES (62, 'Can change 用户收藏', 16, 'change_userfavorite');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 用户收藏', 16, 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES (64, 'Can view 用户收藏', 16, 'view_userfavorite');
INSERT INTO `auth_permission` VALUES (65, 'Can add 用户消息', 17, 'add_usermessage');
INSERT INTO `auth_permission` VALUES (66, 'Can change 用户消息', 17, 'change_usermessage');
INSERT INTO `auth_permission` VALUES (67, 'Can delete 用户消息', 17, 'delete_usermessage');
INSERT INTO `auth_permission` VALUES (68, 'Can view 用户消息', 17, 'view_usermessage');
INSERT INTO `auth_permission` VALUES (69, 'Can add 城市', 18, 'add_citydict');
INSERT INTO `auth_permission` VALUES (70, 'Can change 城市', 18, 'change_citydict');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 城市', 18, 'delete_citydict');
INSERT INTO `auth_permission` VALUES (72, 'Can view 城市', 18, 'view_citydict');
INSERT INTO `auth_permission` VALUES (73, 'Can add 课程机构', 19, 'add_courseorg');
INSERT INTO `auth_permission` VALUES (74, 'Can change 课程机构', 19, 'change_courseorg');
INSERT INTO `auth_permission` VALUES (75, 'Can delete 课程机构', 19, 'delete_courseorg');
INSERT INTO `auth_permission` VALUES (76, 'Can view 课程机构', 19, 'view_courseorg');
INSERT INTO `auth_permission` VALUES (77, 'Can add 教师', 20, 'add_teacher');
INSERT INTO `auth_permission` VALUES (78, 'Can change 教师', 20, 'change_teacher');
INSERT INTO `auth_permission` VALUES (79, 'Can delete 教师', 20, 'delete_teacher');
INSERT INTO `auth_permission` VALUES (80, 'Can view 教师', 20, 'view_teacher');
INSERT INTO `auth_permission` VALUES (81, 'Can add Bookmark', 21, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (82, 'Can change Bookmark', 21, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (83, 'Can delete Bookmark', 21, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (84, 'Can view Bookmark', 21, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (85, 'Can add User Setting', 22, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (86, 'Can change User Setting', 22, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (87, 'Can delete User Setting', 22, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (88, 'Can view User Setting', 22, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (89, 'Can add User Widget', 23, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (90, 'Can change User Widget', 23, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (91, 'Can delete User Widget', 23, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (92, 'Can view User Widget', 23, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (93, 'Can add log entry', 24, 'add_log');
INSERT INTO `auth_permission` VALUES (94, 'Can change log entry', 24, 'change_log');
INSERT INTO `auth_permission` VALUES (95, 'Can delete log entry', 24, 'delete_log');
INSERT INTO `auth_permission` VALUES (96, 'Can view log entry', 24, 'view_log');
INSERT INTO `auth_permission` VALUES (97, 'Can add captcha store', 25, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (98, 'Can change captcha store', 25, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (99, 'Can delete captcha store', 25, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (100, 'Can view captcha store', 25, 'view_captchastore');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
BEGIN;
INSERT INTO `captcha_captchastore` VALUES (28, 'XLIY', 'xliy', 'b57e89f5eee3124108efa6644d4edc83264244dd', '2020-04-19 18:46:40.016662');
INSERT INTO `captcha_captchastore` VALUES (29, 'LJNE', 'ljne', 'c7adf198b0b0bb43a923bf424163b9dbe806ee50', '2020-04-19 18:46:53.410515');
INSERT INTO `captcha_captchastore` VALUES (31, 'EHYH', 'ehyh', 'd1f54b2f65ea65104573ef3b756d2d1fe08c98cf', '2020-04-19 18:47:53.399404');
INSERT INTO `captcha_captchastore` VALUES (35, 'EEPG', 'eepg', '506ecb89ae427bb333e40bc0000c0d819c9e4310', '2020-07-15 10:48:01.452365');
INSERT INTO `captcha_captchastore` VALUES (36, 'ZKRI', 'zkri', '8f1c00c23c22b1f61dfd131b17a4980862f45b04', '2020-07-15 10:48:05.701626');
INSERT INTO `captcha_captchastore` VALUES (37, 'VRAT', 'vrat', 'f37da47b6cdf2551479569b68c42a545fee4b500', '2020-07-25 14:46:11.283976');
INSERT INTO `captcha_captchastore` VALUES (38, 'KDQR', 'kdqr', '7600ca5a7f65812a246e53d51fae49e0f50a540b', '2020-07-25 14:46:12.930549');
INSERT INTO `captcha_captchastore` VALUES (39, 'BNGJ', 'bngj', 'da493ec5663bec926a0cb1d39cf0ff592f956a1d', '2020-07-25 14:46:13.372707');
INSERT INTO `captcha_captchastore` VALUES (40, 'NRZQ', 'nrzq', '98e7fe5347984fde0bb1c5514f25438b874d4109', '2020-07-25 14:46:25.209328');
INSERT INTO `captcha_captchastore` VALUES (41, 'PPWA', 'ppwa', '7d23f3075089d23375142d2d06bff09cae2191b0', '2020-07-25 14:54:06.517217');
INSERT INTO `captcha_captchastore` VALUES (42, 'NOFO', 'nofo', '7423d9c12fa523d116f204e749bef52158656717', '2020-07-25 14:54:09.859797');
INSERT INTO `captcha_captchastore` VALUES (43, 'ASKM', 'askm', '30ecad2fb507204451cce0aed428d9d46e7ed184', '2020-07-25 16:42:36.119667');
COMMIT;

-- ----------------------------
-- Table structure for courses_course
-- ----------------------------
DROP TABLE IF EXISTS `courses_course`;
CREATE TABLE `courses_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `desc` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `detail` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  `degree` varchar(2) COLLATE utf8mb4_general_ci NOT NULL,
  `learn_times` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `you_need_know` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `teacher_tell` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `category` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `tag` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_org_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_course_course_org_id_4d2c4aab_fk_organizat` (`course_org_id`),
  KEY `courses_course_teacher_id_846fa526_fk_organization_teacher_id` (`teacher_id`),
  CONSTRAINT `courses_course_course_org_id_4d2c4aab_fk_organizat` FOREIGN KEY (`course_org_id`) REFERENCES `organization_courseorg` (`id`),
  CONSTRAINT `courses_course_teacher_id_846fa526_fk_organization_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organization_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of courses_course
-- ----------------------------
BEGIN;
INSERT INTO `courses_course` VALUES (1, '1', '1', '<p>1</p>', 0, 'zj', 0, 0, 0, '一颗勤学的心是本课程必要前提', '什么都可以学到,按时交作业,不然叫家长', 'courses/2020/07/logo.jpg', 0, '后端开发', '1', '2020-07-17 23:20:00.000000', 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for courses_courseresource
-- ----------------------------
DROP TABLE IF EXISTS `courses_courseresource`;
CREATE TABLE `courses_courseresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `download` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_courseresource_course_id_5eba1332_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_courseresource_course_id_5eba1332_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of courses_courseresource
-- ----------------------------
BEGIN;
INSERT INTO `courses_courseresource` VALUES (1, '1', 'course/resource/2020/07/logo.jpg', '2020-07-17 23:24:00.000000', 1);
COMMIT;

-- ----------------------------
-- Table structure for courses_lesson
-- ----------------------------
DROP TABLE IF EXISTS `courses_lesson`;
CREATE TABLE `courses_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_lesson_course_id_16bc4882_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_lesson_course_id_16bc4882_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of courses_lesson
-- ----------------------------
BEGIN;
INSERT INTO `courses_lesson` VALUES (1, '123', '2020-07-17 23:22:00.000000', 1);
COMMIT;

-- ----------------------------
-- Table structure for courses_video
-- ----------------------------
DROP TABLE IF EXISTS `courses_video`;
CREATE TABLE `courses_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `learn_times` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` (`lesson_id`),
  CONSTRAINT `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of courses_video
-- ----------------------------
BEGIN;
INSERT INTO `courses_video` VALUES (1, 'http://blog.mtianyan.cn/', '1', 0, '2020-07-17 23:24:00.000000', 1);
COMMIT;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
BEGIN;
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (25, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (9, 'courses', 'course');
INSERT INTO `django_content_type` VALUES (10, 'courses', 'courseresource');
INSERT INTO `django_content_type` VALUES (11, 'courses', 'lesson');
INSERT INTO `django_content_type` VALUES (12, 'courses', 'video');
INSERT INTO `django_content_type` VALUES (13, 'operation', 'coursecomments');
INSERT INTO `django_content_type` VALUES (14, 'operation', 'userask');
INSERT INTO `django_content_type` VALUES (15, 'operation', 'usercourse');
INSERT INTO `django_content_type` VALUES (16, 'operation', 'userfavorite');
INSERT INTO `django_content_type` VALUES (17, 'operation', 'usermessage');
INSERT INTO `django_content_type` VALUES (18, 'organization', 'citydict');
INSERT INTO `django_content_type` VALUES (19, 'organization', 'courseorg');
INSERT INTO `django_content_type` VALUES (20, 'organization', 'teacher');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (7, 'users', 'banner');
INSERT INTO `django_content_type` VALUES (8, 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES (6, 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES (21, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (24, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (22, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (23, 'xadmin', 'userwidget');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2019-06-19 10:14:48.935080');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2019-06-19 10:14:48.957216');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2019-06-19 10:14:49.022712');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2019-06-19 10:14:49.038350');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2019-06-19 10:14:49.042815');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2019-06-19 10:14:49.047210');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2019-06-19 10:14:49.052537');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2019-06-19 10:14:49.054417');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2019-06-19 10:14:49.058539');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2019-06-19 10:14:49.063125');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2019-06-19 10:14:49.067715');
INSERT INTO `django_migrations` VALUES (12, 'users', '0001_initial', '2019-06-19 10:14:49.165920');
INSERT INTO `django_migrations` VALUES (13, 'admin', '0001_initial', '2019-06-19 10:14:49.205002');
INSERT INTO `django_migrations` VALUES (14, 'admin', '0002_logentry_remove_auto_add', '2019-06-19 10:14:49.211833');
INSERT INTO `django_migrations` VALUES (15, 'admin', '0003_logentry_add_action_flag_choices', '2019-06-19 10:14:49.218833');
INSERT INTO `django_migrations` VALUES (16, 'captcha', '0001_initial', '2019-06-19 10:14:49.228774');
INSERT INTO `django_migrations` VALUES (17, 'organization', '0001_initial', '2019-06-19 10:14:49.293587');
INSERT INTO `django_migrations` VALUES (18, 'courses', '0001_initial', '2019-06-19 10:14:49.428608');
INSERT INTO `django_migrations` VALUES (19, 'operation', '0001_initial', '2019-06-19 10:14:49.462039');
INSERT INTO `django_migrations` VALUES (20, 'operation', '0002_auto_20181128_0630', '2019-06-19 10:14:49.584781');
INSERT INTO `django_migrations` VALUES (21, 'sessions', '0001_initial', '2019-06-19 10:14:49.596388');
INSERT INTO `django_migrations` VALUES (22, 'xadmin', '0001_initial', '2019-06-19 10:14:49.702648');
INSERT INTO `django_migrations` VALUES (23, 'xadmin', '0002_log', '2019-06-19 10:14:49.750899');
INSERT INTO `django_migrations` VALUES (24, 'xadmin', '0003_auto_20160715_0100', '2019-06-19 10:14:49.775098');
INSERT INTO `django_migrations` VALUES (25, 'auth', '0010_alter_group_name_max_length', '2019-11-05 13:39:51.635135');
INSERT INTO `django_migrations` VALUES (26, 'auth', '0011_update_proxy_permissions', '2019-11-05 13:39:51.676901');
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
INSERT INTO `django_session` VALUES ('78dl8x9s9ffkedc5ix4yo10tv3wh9l8m', 'M2YyMzc5NWE4MWIxYmZkY2ViMjJmNDk0YjY1ODZkZTIxZDQ4YWQ3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NzBlYjE5MmI0ZWU5OWUyNzVhZjI0MGQ2NWVkNGVjYmJlOWM2ZjQzIiwiTElTVF9RVUVSWSI6W1sib3BlcmF0aW9uIiwidXNlcmFzayJdLCIiXX0=', '2019-10-24 17:00:36.684199');
INSERT INTO `django_session` VALUES ('8jyfebbrc4dc6uv7bzauj96au1h7p29r', 'ZDQ5ZmU4Mzk2ZDhlYmNlZWM1MzcwZTRiY2E3YTUzMjQxZTFlOGFmNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNDk4NjkxNDU3OGZmOGQ5ODFmYjA1OWMzM2FhZDE0YzA3NDc2ZTA2IiwiTElTVF9RVUVSWSI6W1siY291cnNlcyIsImNvdXJzZSJdLCIiXX0=', '2019-12-27 21:37:38.052919');
INSERT INTO `django_session` VALUES ('dga8l5gd7tgby0ge2i4k8uslsln5v9k1', 'YjA4NjYyMmNiOGFhYmVjOWZhNzU1ZmZkNDNjYjcxMGViNzdmYzhiZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NzBlYjE5MmI0ZWU5OWUyNzVhZjI0MGQ2NWVkNGVjYmJlOWM2ZjQzIiwiTElTVF9RVUVSWSI6W1sieGFkbWluIiwibG9nIl0sIiJdfQ==', '2019-07-03 15:21:44.557075');
INSERT INTO `django_session` VALUES ('e151uja329x8h96tzgcgnd3h8uqnx1fa', 'MWU1MGU4NTk3ZmY3NGVhZWVmZTY3NDJkMTNiYjNmMzUzNjY0YjZjMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImY0OTg2OTE0NTc4ZmY4ZDk4MWZiMDU5YzMzYWFkMTRjMDc0NzZlMDYifQ==', '2020-07-29 10:43:14.337010');
INSERT INTO `django_session` VALUES ('fmhrjc90oqv22zxawvh8tooo3mxs8nfo', 'NjI3NzUwZmJlZmU2MTY4MDllOTNlMWZmMmZhOTY4MzBkYTUxOTdiOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NzBlYjE5MmI0ZWU5OWUyNzVhZjI0MGQ2NWVkNGVjYmJlOWM2ZjQzIiwiTElTVF9RVUVSWSI6W1siY291cnNlcyIsImxlc3NvbiJdLCIiXX0=', '2019-11-21 11:32:28.471844');
INSERT INTO `django_session` VALUES ('fv1f02j6x1spltrxrbslivx22t1yh07c', 'Nzg0Njc4NjYyYWFmNTdkYTA5ZThkMjA4MmUxZTMyOTNmZWU1YmM3YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImY0OTg2OTE0NTc4ZmY4ZDk4MWZiMDU5YzMzYWFkMTRjMDc0NzZlMDYiLCJMSVNUX1FVRVJZIjpbWyJvcmdhbml6YXRpb24iLCJjaXR5ZGljdCJdLCIiXX0=', '2020-07-31 23:30:26.686904');
INSERT INTO `django_session` VALUES ('k07y7f251a82gyxerk1eurbj61l4ub9f', 'NTExMjVmMmE2NjlhMGFhZTE2YmM4NDI5NTljNDI2OWVjODRjMzVmYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNDk4NjkxNDU3OGZmOGQ5ODFmYjA1OWMzM2FhZDE0YzA3NDc2ZTA2IiwiTElTVF9RVUVSWSI6W1sib3JnYW5pemF0aW9uIiwiY2l0eWRpY3QiXSwiIl19', '2020-01-13 23:46:34.669024');
INSERT INTO `django_session` VALUES ('pghpcn5grk8t8ug0iwr4ihhh6g0holcb', 'N2JjMTcyNTE3MzU2MTEzNTQ2ODE1MDhmYTA3NTkyMGUyZjVmNDUxZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImY0OTg2OTE0NTc4ZmY4ZDk4MWZiMDU5YzMzYWFkMTRjMDc0NzZlMDYiLCJMSVNUX1FVRVJZIjpbWyJ1c2VycyIsImVtYWlsdmVyaWZ5cmVjb3JkIl0sIiJdfQ==', '2020-08-08 13:03:29.039789');
INSERT INTO `django_session` VALUES ('trote9qc9gnfhp3g455z4uwvw72s91jv', 'MjRkODM4M2JhODY3NzgzM2VhYzBiMjNkZDBkMmVlOTFjN2VhMjMyNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmY4ZWZkM2E5MzRkMTI3Mjk1ODBlMWUzMjU2ZTU2NGNmZGJlYTk2Iiwid2l6YXJkX3hhZG1pbnVzZXJ3aWRnZXRfYWRtaW5fd2l6YXJkX2Zvcm1fcGx1Z2luIjp7InN0ZXAiOm51bGwsInN0ZXBfZGF0YSI6e30sInN0ZXBfZmlsZXMiOnt9LCJleHRyYV9kYXRhIjp7fX0sIkxJU1RfUVVFUlkiOltbInhhZG1pbiIsInVzZXJ3aWRnZXQiXSwiIl19', '2019-07-03 10:16:08.793091');
INSERT INTO `django_session` VALUES ('xoarljbhnbah88h84gcsoi1fzl9s3gq5', 'MWU1MGU4NTk3ZmY3NGVhZWVmZTY3NDJkMTNiYjNmMzUzNjY0YjZjMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImY0OTg2OTE0NTc4ZmY4ZDk4MWZiMDU5YzMzYWFkMTRjMDc0NzZlMDYifQ==', '2020-07-29 13:30:32.247370');
COMMIT;

-- ----------------------------
-- Table structure for operation_coursecomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_coursecomments`;
CREATE TABLE `operation_coursecomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` (`course_id`),
  KEY `operation_coursecomm_user_id_f5ff70b3_fk_users_use` (`user_id`),
  CONSTRAINT `operation_coursecomm_user_id_f5ff70b3_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of operation_coursecomments
-- ----------------------------
BEGIN;
INSERT INTO `operation_coursecomments` VALUES (1, '1', '2020-07-17 23:24:00.000000', 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for operation_userask
-- ----------------------------
DROP TABLE IF EXISTS `operation_userask`;
CREATE TABLE `operation_userask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `course_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of operation_userask
-- ----------------------------
BEGIN;
INSERT INTO `operation_userask` VALUES (1, '1', '1', '1', '2020-07-17 23:25:00.000000');
COMMIT;

-- ----------------------------
-- Table structure for operation_usercourse
-- ----------------------------
DROP TABLE IF EXISTS `operation_usercourse`;
CREATE TABLE `operation_usercourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` (`course_id`),
  KEY `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of operation_usercourse
-- ----------------------------
BEGIN;
INSERT INTO `operation_usercourse` VALUES (1, '2020-07-17 23:24:00.000000', 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for operation_userfavorite
-- ----------------------------
DROP TABLE IF EXISTS `operation_userfavorite`;
CREATE TABLE `operation_userfavorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of operation_userfavorite
-- ----------------------------
BEGIN;
INSERT INTO `operation_userfavorite` VALUES (1, 0, 1, '2020-07-17 23:25:00.000000', 1);
COMMIT;

-- ----------------------------
-- Table structure for operation_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `operation_usermessage`;
CREATE TABLE `operation_usermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of operation_usermessage
-- ----------------------------
BEGIN;
INSERT INTO `operation_usermessage` VALUES (1, 2, '欢迎注册mtianyan慕课小站!! --系统自动消息', 0, '2019-09-30 12:02:05.863965');
INSERT INTO `operation_usermessage` VALUES (2, 3, '欢迎注册mtianyan慕课小站!! --系统自动消息', 0, '2019-09-30 12:06:12.920190');
INSERT INTO `operation_usermessage` VALUES (3, 4, '欢迎注册mtianyan慕课小站!! --系统自动消息', 0, '2019-09-30 12:09:40.694106');
INSERT INTO `operation_usermessage` VALUES (4, 5, '欢迎注册mtianyan慕课小站!! --系统自动消息', 0, '2020-04-19 18:38:23.359362');
INSERT INTO `operation_usermessage` VALUES (5, 6, '欢迎注册mtianyan慕课小站!! --系统自动消息', 0, '2020-04-19 18:42:00.023031');
INSERT INTO `operation_usermessage` VALUES (6, 7, '欢迎注册mtianyan慕课小站!! --系统自动消息', 0, '2020-04-19 18:43:06.747808');
INSERT INTO `operation_usermessage` VALUES (7, 8, '欢迎注册mtianyan慕课小站!! --系统自动消息', 0, '2020-04-19 18:43:29.741896');
INSERT INTO `operation_usermessage` VALUES (8, 0, '1', 1, '2020-07-17 23:25:00.000000');
COMMIT;

-- ----------------------------
-- Table structure for organization_citydict
-- ----------------------------
DROP TABLE IF EXISTS `organization_citydict`;
CREATE TABLE `organization_citydict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `desc` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of organization_citydict
-- ----------------------------
BEGIN;
INSERT INTO `organization_citydict` VALUES (1, '1', '1', '2019-10-10 16:49:00.000000');
INSERT INTO `organization_citydict` VALUES (2, '123', '1', '2019-10-10 16:49:00.000000');
COMMIT;

-- ----------------------------
-- Table structure for organization_courseorg
-- ----------------------------
DROP TABLE IF EXISTS `organization_courseorg`;
CREATE TABLE `organization_courseorg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `tag` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `students` int(11) NOT NULL,
  `course_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `city_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_courseo_city_id_4a842f85_fk_organizat` (`city_id`),
  CONSTRAINT `organization_courseo_city_id_4a842f85_fk_organizat` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of organization_courseorg
-- ----------------------------
BEGIN;
INSERT INTO `organization_courseorg` VALUES (1, '1', '12', 'pxjg', '国内名校', 0, 0, 'org/2019/12/logo.jpg', '12', 0, 0, '2019-12-13 21:36:00.000000', 1);
COMMIT;

-- ----------------------------
-- Table structure for organization_teacher
-- ----------------------------
DROP TABLE IF EXISTS `organization_teacher`;
CREATE TABLE `organization_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `work_position` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `age` int(11) NOT NULL,
  `points` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `org_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_teacher_org_id_cd000a1a_fk_organizat` (`org_id`),
  CONSTRAINT `organization_teacher_org_id_cd000a1a_fk_organizat` FOREIGN KEY (`org_id`) REFERENCES `organization_courseorg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of organization_teacher
-- ----------------------------
BEGIN;
INSERT INTO `organization_teacher` VALUES (1, '1', 0, '1', '1', 18, '1', 0, 0, 'teacher/2019/12/tiny.png', '2019-12-13 21:37:00.000000', 1);
COMMIT;

-- ----------------------------
-- Table structure for users_banner
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `url` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of users_banner
-- ----------------------------
BEGIN;
INSERT INTO `users_banner` VALUES (1, '1', 'banner/2020/07/funpy.jpeg', 'http://127.0.0.1:8000/xadmin/users/banner/add/', 100, '2020-07-17 23:25:00.000000');
COMMIT;

-- ----------------------------
-- Table structure for users_emailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifyrecord`;
CREATE TABLE `users_emailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `send_type` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of users_emailverifyrecord
-- ----------------------------
BEGIN;
INSERT INTO `users_emailverifyrecord` VALUES (7, 'HTtxzGBp6ZLoy6ym', '447742468@qq.com', 'register', '2020-04-19 18:38:23.362801');
INSERT INTO `users_emailverifyrecord` VALUES (8, 'TCpp13APpZSMK4fJ', '447742468@qq.com', 'register', '2020-04-19 18:42:00.024214');
INSERT INTO `users_emailverifyrecord` VALUES (9, 'hqYXRcwoT2WzNMm4', '447742468@qq.com', 'register', '2020-04-19 18:43:06.748567');
INSERT INTO `users_emailverifyrecord` VALUES (10, 'USBlYPGZVZjgqjvK', '447742468@qq.com', 'register', '2020-04-19 18:43:29.742519');
COMMIT;

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(6) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(11) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
BEGIN;
INSERT INTO `users_userprofile` VALUES (1, 'pbkdf2_sha256$180000$JVCj5Gn6dO7h$0yFYM5+9p++YEvyLQhCfcp3oEod5O5uanf3hHj4D2rU=', '2020-07-25 12:26:54.969312', 1, 'mtianyan', '', '', '1147727180@qq.com', 1, 1, '2019-06-19 10:15:27.250664', '', NULL, 'female', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (8, 'pbkdf2_sha256$180000$ZMlm5QOzC7mb$KtkpidLWZa1rcYNSmq3LSc2PwansazGeYbpHQ9cSzuc=', NULL, 0, '447742468@qq.com', '', '', '447742468@qq.com', 0, 0, '2020-04-19 18:43:29.651653', '', NULL, 'female', '', NULL, 'image/default.png');
COMMIT;

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `url_name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `query` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
BEGIN;
INSERT INTO `xadmin_log` VALUES (1, '2019-09-30 12:05:25.653534', '127.0.0.1', NULL, '', 'delete', '批量删除 1 个 用户信息', NULL, 1);
INSERT INTO `xadmin_log` VALUES (2, '2019-09-30 12:09:14.442590', '127.0.0.1', NULL, '', 'delete', '批量删除 1 个 用户信息', NULL, 1);
INSERT INTO `xadmin_log` VALUES (3, '2019-09-30 14:53:12.496298', '127.0.0.1', NULL, '', 'delete', '批量删除 6 个 邮箱验证码', NULL, 1);
INSERT INTO `xadmin_log` VALUES (4, '2019-10-10 16:49:53.772456', '127.0.0.1', '1', '1', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (5, '2019-12-13 21:37:17.780211', '127.0.0.1', '1', '课程机构: 1', 'create', '已添加。', 19, 1);
INSERT INTO `xadmin_log` VALUES (6, '2019-12-13 21:37:32.985382', '127.0.0.1', '1', '[课程机构: 1]的教师: 1', 'create', '已添加。', 20, 1);
INSERT INTO `xadmin_log` VALUES (7, '2020-07-17 23:21:09.348276', '127.0.0.1', '1', '11', 'create', '已添加。', 9, 1);
INSERT INTO `xadmin_log` VALUES (8, '2020-07-17 23:22:39.683478', '127.0.0.1', '1', '《11》课程的章节 >> 123', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (9, '2020-07-17 23:24:33.387227', '127.0.0.1', '1', '《11》课程的章节 >> 123章节的视频 >> 1', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (10, '2020-07-17 23:24:41.373370', '127.0.0.1', '1', '《11》课程的资源: 1', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (11, '2020-07-17 23:24:47.708790', '127.0.0.1', '1', '用户(mtianyan)对于《11》 评论 :', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (12, '2020-07-17 23:25:01.477650', '127.0.0.1', '1', '用户(mtianyan)学习了11 ', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (13, '2020-07-17 23:25:06.180683', '127.0.0.1', '1', '用户(mtianyan)收藏了1 ', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (14, '2020-07-17 23:25:10.696865', '127.0.0.1', '8', '用户(0)接收了1 ', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (15, '2020-07-17 23:25:17.541459', '127.0.0.1', '1', '用户: 1 手机号: 1', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (16, '2020-07-17 23:25:36.294968', '127.0.0.1', '1', '1(位于第100位)', 'create', '已添加。', 7, 1);
COMMIT;

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
BEGIN;
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '1', 1);
COMMIT;

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `widget_type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
BEGIN;
INSERT INTO `xadmin_userwidget` VALUES (1, 'home', 'html', '{\"id\": \"1\", \"title\": \"1\", \"content\": \"12\\r\\n\"}', 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
