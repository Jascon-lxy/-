/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : php_work

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 25/03/2022 14:57:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cinema_info
-- ----------------------------
DROP TABLE IF EXISTS `cinema_info`;
CREATE TABLE `cinema_info`  (
  `cinema_id` int(11) NOT NULL AUTO_INCREMENT,
  `cinema_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cinema_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `grade` float NULL DEFAULT NULL,
  `cinema_telephone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `latitude` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `longitude` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cinema_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cinema_info
-- ----------------------------
INSERT INTO `cinema_info` VALUES (1, '星汇时代影城（临安青山店）', '浙江省杭州市临安区临安市青山湖街道大园路123号星汇天地4楼', 8.7, '0571-61099076', '30.262296', '119.828342', '杭州市');
INSERT INTO `cinema_info` VALUES (2, '大地影院(杭州临安宝龙店)', '浙江省杭州市临安区锦北街道农林大路899号宝龙广场3层M-F3-025室', 9, '0571-63759981', '30.250401', '119.726169', '杭州市');
INSERT INTO `cinema_info` VALUES (3, '时代华纳国际影城', '浙江省杭州市临安区笤溪北路笤溪时代广场5楼(时代广场5楼)', 8.9, '0571-61093311', '30.234081', '119.69222', '杭州市');
INSERT INTO `cinema_info` VALUES (4, '完美世界影城（临安万华店）', '浙江省杭州市临安区锦城街道临安区钱王街855号万华广场4层C1', 7.8, '0571-63807665', '30.222263', '119.706228', '杭州市');
INSERT INTO `cinema_info` VALUES (5, '金逸影城(天虹购物中心)', '浙江省杭州市江干区四季青街道新塘路108号天虹购物中心B座6层606号', 9.8, '0571-86022798', '30.264985', '120.210126', '杭州市');
INSERT INTO `cinema_info` VALUES (6, '青春光线电影院', '北京市东城区滨河路乙1号雍和航星园74-76号楼', 7.9, '010-64142287', '39.951115', '116.420823', '北京市');

-- ----------------------------
-- Table structure for film_broadcast_info
-- ----------------------------
DROP TABLE IF EXISTS `film_broadcast_info`;
CREATE TABLE `film_broadcast_info`  (
  `film_broadcast_id` int(11) NOT NULL AUTO_INCREMENT,
  `film_id` int(11) NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_main_page` int(11) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`film_broadcast_id`) USING BTREE,
  INDEX `film_id`(`film_id`) USING BTREE,
  CONSTRAINT `film_id` FOREIGN KEY (`film_id`) REFERENCES `film_info` (`film_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of film_broadcast_info
-- ----------------------------
INSERT INTO `film_broadcast_info` VALUES (1, 1, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/dlam_juzhao_01.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (2, 1, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/dlam_juzhao_02.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (3, 1, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/dlam_juzhao_03.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (4, 1, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/dlam_juzhao_04.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (5, 1, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/dlam_juzhao_05.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (6, 1, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/video/dlam_video_01.mp4', 1, 1);
INSERT INTO `film_broadcast_info` VALUES (7, 1, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/video/dlam_video_02.mp4', 0, 1);
INSERT INTO `film_broadcast_info` VALUES (8, 1, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/dlam_main_page.jpg', 1, 0);
INSERT INTO `film_broadcast_info` VALUES (9, 2, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/sdyjq9_main_page.jpg', 1, 0);
INSERT INTO `film_broadcast_info` VALUES (10, 2, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/sdyjq9_juzhao_01.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (11, 2, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/sdyjq9_juzhao_02.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (12, 2, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/tlzel_juzhao_04.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (13, 2, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/tlzel_juzhao_05.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (14, 2, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/video/sdyjq9_video_01.mp4', 1, 1);
INSERT INTO `film_broadcast_info` VALUES (15, 2, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/video/sdyjq9_video_02.mp4', 0, 1);
INSERT INTO `film_broadcast_info` VALUES (16, 3, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/wywmzyq_main_page.jpg', 1, 0);
INSERT INTO `film_broadcast_info` VALUES (17, 3, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/wywmzyq_juzhao_01.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (18, 3, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/wywmzyq_juzhao_02.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (19, 3, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/wywmzyq_juzhao_03.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (20, 3, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/wywmzyq_juzhao_04.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (21, 3, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/wywmzyq_juzhao_05.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (22, 3, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/video/wywmzyq_video_01.mp4', 1, 1);
INSERT INTO `film_broadcast_info` VALUES (23, 3, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/video/wywmzyq_video_02.mp4', 0, 1);
INSERT INTO `film_broadcast_info` VALUES (24, 4, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/tnzel_main_page.jpg', 1, 0);
INSERT INTO `film_broadcast_info` VALUES (25, 4, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/wywmzyq_juzhao_01.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (26, 4, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/wywmzyq_juzhao_02.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (27, 4, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/wywmzyq_juzhao_03.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (28, 4, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/wywmzyq_juzhao_04.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (29, 4, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/wywmzyq_juzhao_05.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (30, 4, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/video/tnzel_video_01.mp4', 1, 1);
INSERT INTO `film_broadcast_info` VALUES (31, 4, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/video/tnzel_video_02.mp4', 0, 1);
INSERT INTO `film_broadcast_info` VALUES (32, 5, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/yydxd_main_page.jpg', 1, 0);
INSERT INTO `film_broadcast_info` VALUES (33, 5, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/yydxd_juzhao_01.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (34, 5, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/yydxd_juzhao_02.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (35, 5, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/yydxd_juzhao_03.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (36, 5, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/yydxd_juzhao_04.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (37, 5, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/yydxd_juzhao_05.jpg', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (38, 5, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/video/yydxd_video_01.mp4', 1, 1);
INSERT INTO `film_broadcast_info` VALUES (39, 5, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/video/yydxd_video_02.mp4', 0, 1);
INSERT INTO `film_broadcast_info` VALUES (40, 6, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/aqdhk_main_page.jpg', 1, 0);
INSERT INTO `film_broadcast_info` VALUES (41, 6, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/aqdhk_juzhao_01.png', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (42, 6, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/aqdhk_juzhao_02.png', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (43, 6, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/aqdhk_juzhao_03.png', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (44, 6, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/aqdhk_juzhao_04.png', 0, 0);
INSERT INTO `film_broadcast_info` VALUES (45, 6, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/video/aqdhk_video_01.mp4', 1, 1);
INSERT INTO `film_broadcast_info` VALUES (46, 6, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/video/aqdhk_video_02.mp4', 0, 1);
INSERT INTO `film_broadcast_info` VALUES (47, 7, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/shjz_main_page.jpg', 1, 0);
INSERT INTO `film_broadcast_info` VALUES (48, 8, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/ndhl_main_page.jpg', 1, 0);
INSERT INTO `film_broadcast_info` VALUES (49, 9, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/nhsj_main_page.jpg', 1, 0);
INSERT INTO `film_broadcast_info` VALUES (50, 10, 'https://xiaoyi-jason.oss-cn-beijing.aliyuncs.com/tpp/image/cy_main_page.jpg', 1, 0);

-- ----------------------------
-- Table structure for film_info
-- ----------------------------
DROP TABLE IF EXISTS `film_info`;
CREATE TABLE `film_info`  (
  `film_id` int(11) NOT NULL AUTO_INCREMENT,
  `film_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `play_time` datetime NULL DEFAULT NULL,
  `director` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '@符号连接',
  `actor` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `film_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `make_film_area` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `make_film_man` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `film_length` int(11) NULL DEFAULT NULL,
  `film_introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `film_play_status` int(11) NULL DEFAULT NULL,
  `film_pf` float NULL DEFAULT NULL,
  `film_want` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`film_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of film_info
-- ----------------------------
INSERT INTO `film_info` VALUES (1, '哆啦A梦：伴我同行2', '2021-05-28 08:00:00', '八木龙一,山崎贵', '水田山葵,大原惠美,嘉数由美', '动漫', '日本', '山崎贵', 96, '时隔6年，动画电影“伴我同行”系列回归，同时本片也是该系列的终章。大雄为了实现奶奶看到妻子的愿望，想坐着时光机去未来参加他的婚礼，但爱情长跑50年终于要娶到静香的大雄竟然想逃婚…', 1, 9.1, NULL);
INSERT INTO `film_info` VALUES (2, '速度与激情9', '2021-05-21 00:00:00', '林诣彬', '范·迪塞尔,米歇尔·罗德里格,泰瑞斯·吉布森,卢达·克里斯', '科幻,动作', '美国', '尼尔·H·莫瑞兹', 142, '范·迪塞尔饰演的唐老大多姆·托莱多，与莱蒂和他的儿子小布莱恩，过上了远离纷扰的平静生活。然而他们也知道，安宁之下总潜藏着危机。这一次，为了保护他所爱的人，唐老大不得不直面过去。他和伙伴们面临的是一场足以引起世界动荡的阴谋，以及一个前所未遇的一流杀手和高能车手。而这个名叫雅各布（约翰·塞纳饰）的人，恰巧是多姆遗落在外的亲弟弟。', 1, 7.5, NULL);
INSERT INTO `film_info` VALUES (3, '我要我们在一起', '2021-05-20 13:14:00', '沙漠', '屈楚萧,张婧仪,孙宁,张垚,李嘉灏', '爱情', '中国', '胡璇', 105, '你有没有爱过一个人，曾经拼了命，只为和TA在一起。十年前，差生吕钦扬当众告白凌一尧，两人从校园步入社会，为了让她幸福，他不惜以命相搏。然而金钱、房子、婚姻等现实的考验，却将两人越推越远。十年长跑，他们能否还记得曾经刻在心底的约定：我要我们在一起。电影改编自长帖《与我十年长跑的女友明天要嫁人了》。', 1, 8, NULL);
INSERT INTO `film_info` VALUES (4, '童年周恩来', '2021-06-01 00:00:00', '唐田,徐耿', '周义晟,刘柏熙,冯丽丽,赵培琳,兰岚', '历史,爱国', '中国', '李杰', 87, '本片以周恩来总理12岁以前在淮安的童年成长史为故事主线，通过生动感人的画面，向世人展示了一代伟人曲折的成长历程。', 0, NULL, 13848);
INSERT INTO `film_info` VALUES (5, '有一点动心', '2021-06-04 10:00:00', '陈嘉上,朱雪菲', '言承旭,任素汐,曹扬', '爱情', '中国', '李大雨', 94, '周启文（言承旭 饰）创立的游戏公司因旗下员工直播的“渣男”言论引起全网声讨，被迫宣告破产，他带着兄弟们去找“始作俑者”相亲APP员工讨个说法。虽然打着成为对方客户，搅黄她们生意的坏主意，但周启文却被对方女老板陈然（任素汐 饰）安排得明明白白。在不断的相亲过程中，二人逐渐卸下了对彼此的敌意和伪装，互相的了解让二人间萌生情愫。在这越来越不敢爱的时代，周启文和陈然是会就此错过，还是能抓住命运不顾一切付出真心？', 0, NULL, 6967);
INSERT INTO `film_info` VALUES (6, '爱情对话框', '2021-06-04 00:00:00', '张中亮', '盛一伦,陈米麒,王禹,王禹', '爱情', '中国', '蒋希希', 90, '在一次酒会举办的活动上，陈宇（盛一伦 饰）偶遇职业试睡师杜鹃（陈米麒 饰），两人一见钟情。因两人的工作地点不一样，从此开始了远距离的恋爱，陪伴他们爱情的生活只有手机视频和彻夜长谈。随着时间的推移，两人的矛盾逐渐累积并开始处于冷战。在众人的劝说及开导下，两人渐渐懂得了珍惜与陪伴，曾经相爱的点滴涌现的脑海中，长时间累积的思念瞬间爆发...', 0, NULL, 7874);
INSERT INTO `film_info` VALUES (7, '扫黑·决战', '2021-05-01 08:00:00', '吕聿来', '姜武,张颂文,金世佳,李倩', '犯罪,剧情,动作', '中国', '宋剑', 112, '该片是国内首部以“扫黑除恶”行动为题材、展现全国扫黑办督办案件的影视化作品，讲述某扫黑专案组组长宋一锐带领组员由一起征地案深入调查，突破层层阻挠，与幕后的黑恶势力展开激烈斗争，最终揭开腐败官员利用公职权力充当犯罪保护伞的虚伪面具，将犯罪分子绳之以法的故事。', 1, 8.8, NULL);
INSERT INTO `film_info` VALUES (8, '你的婚礼', '2021-04-30 14:00:00', '韩天', '许光汉,章若楠,丁冠森,晏紫东,郭丞', '爱情,剧情', '中国', '\r\n韩天', 115, '那个陪你穿校服的人，最后陪你走到了婚礼吗？电影《你的婚礼》讲述游泳特长生周潇齐与转校生尤咏慈长达15年的爱情故事。高中时，周潇齐（许光汉饰）对尤咏慈（章若楠饰）一见钟情，年少懵懂的纯纯爱恋，男孩默默守护，但女孩却不告而别。此后的人生，15年的爱情长跑。你的婚礼，也是我的成人礼。', 1, 7.9, NULL);
INSERT INTO `film_info` VALUES (9, '你好世界', '2021-06-11 00:00:00', '伊藤智彦', '北村匠海,松坂桃李,滨边美波,福原遥,寿美菜子', '爱情,奇幻,动画', '日本', '野崎惑', 98, '在京都居住的内向男高中生直实（北村匠海 配音）的面前，突然出现从10年后穿越而来26岁的自己（松坂桃李 配音）。未来的直实告诉他，自己不久便会与琉璃（滨边美波 配音）相爱，可是之后烟花大会时她却会因为一场事故意外离世。为了拯救爱人，16岁的直实卷入了这场现实与虚拟的记忆世界，经历了一系列超乎想象的事情。即使世界毁灭，我也想再见你一面。', 0, NULL, 181716);
INSERT INTO `film_info` VALUES (10, '超越', '2021-06-12 08:00:00', '\r\n韩博文', '郑恺,李昀锐,曹炳琨,张蓝心,张榕容,李晨', '剧情,喜剧', '中国', '甲子复', 98, '百米冠军吴添翼为解开无法战胜老飞人郝超越的心结而返乡，不料郝超越早已沉沦，逃避最爱的跑步事业，更处心积虑利用吴添翼谋利。师兄弟二人的较量从回忆中的跑道延伸进现实生活，历经误会和冲突，最终冰释前嫌并互相治愈····', 0, NULL, 216131);

-- ----------------------------
-- Table structure for film_times_info
-- ----------------------------
DROP TABLE IF EXISTS `film_times_info`;
CREATE TABLE `film_times_info`  (
  `film_times_id` int(11) NOT NULL AUTO_INCREMENT,
  `film_id` int(11) NOT NULL,
  `hall_id` int(11) NOT NULL,
  `film_date` date NULL DEFAULT NULL,
  `film_price` float NULL DEFAULT NULL,
  `film_start_time` time NULL DEFAULT NULL,
  `film_end_time` time NULL DEFAULT NULL,
  PRIMARY KEY (`film_times_id`) USING BTREE,
  INDEX `film`(`film_id`) USING BTREE,
  INDEX `hall`(`hall_id`) USING BTREE,
  CONSTRAINT `film` FOREIGN KEY (`film_id`) REFERENCES `film_info` (`film_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `hall` FOREIGN KEY (`hall_id`) REFERENCES `hall_info` (`hall_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of film_times_info
-- ----------------------------
INSERT INTO `film_times_info` VALUES (1, 1, 1, '2021-05-09', 43.9, '09:00:00', '11:15:00');
INSERT INTO `film_times_info` VALUES (2, 1, 2, '2021-05-09', 43.9, '14:00:00', '16:15:00');
INSERT INTO `film_times_info` VALUES (3, 1, 1, '2021-05-09', 43.9, '10:00:00', '12:15:00');
INSERT INTO `film_times_info` VALUES (4, 1, 1, '2021-05-09', 43.9, '15:00:00', '17:15:00');
INSERT INTO `film_times_info` VALUES (5, 2, 2, '2021-05-09', 43.9, '18:15:00', '20:30:00');
INSERT INTO `film_times_info` VALUES (6, 1, 1, '2021-05-10', 43.9, '10:00:00', '12:00:00');
INSERT INTO `film_times_info` VALUES (7, 1, 2, '2021-05-10', 43.9, '14:00:00', '17:00:00');

-- ----------------------------
-- Table structure for hall_info
-- ----------------------------
DROP TABLE IF EXISTS `hall_info`;
CREATE TABLE `hall_info`  (
  `hall_id` int(11) NOT NULL AUTO_INCREMENT,
  `hall_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cinema_id` int(11) NULL DEFAULT NULL,
  `seat_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '__aaa_aaaaa_,aaaaaaaaaaaa,\r\naaaaaa_aaaaa逗号分隔，下划线代表不能坐的位置',
  PRIMARY KEY (`hall_id`) USING BTREE,
  INDEX `cinema_id`(`cinema_id`) USING BTREE,
  CONSTRAINT `cinema_id` FOREIGN KEY (`cinema_id`) REFERENCES `cinema_info` (`cinema_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hall_info
-- ----------------------------
INSERT INTO `hall_info` VALUES (1, '1号激光影厅', 1, 'aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa');
INSERT INTO `hall_info` VALUES (2, '2号激光影厅', 1, 'aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa');
INSERT INTO `hall_info` VALUES (3, '3号激光影厅', 1, 'aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa');
INSERT INTO `hall_info` VALUES (4, '4号激光影厅', 1, 'aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa');
INSERT INTO `hall_info` VALUES (5, '5号激光影厅', 1, 'aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa');
INSERT INTO `hall_info` VALUES (6, 'VIP1号影厅', 2, 'aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa');
INSERT INTO `hall_info` VALUES (7, 'VIP2号影厅', 2, 'aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa');
INSERT INTO `hall_info` VALUES (8, 'VIP3号影厅', 2, 'aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa');
INSERT INTO `hall_info` VALUES (9, 'VIP4号影厅', 2, 'aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa');
INSERT INTO `hall_info` VALUES (10, 'VIP5号影厅', 2, 'aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa');
INSERT INTO `hall_info` VALUES (11, '一号厅', 3, 'aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa');
INSERT INTO `hall_info` VALUES (12, '二号厅', 3, 'aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa');
INSERT INTO `hall_info` VALUES (13, '三号厅', 3, 'aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa');
INSERT INTO `hall_info` VALUES (14, '四号厅', 3, 'aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa');
INSERT INTO `hall_info` VALUES (15, '五号厅', 3, 'aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa');
INSERT INTO `hall_info` VALUES (16, '1厅', 4, 'aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa');
INSERT INTO `hall_info` VALUES (17, '2厅', 4, 'aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa');
INSERT INTO `hall_info` VALUES (18, '3厅', 4, 'aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa');
INSERT INTO `hall_info` VALUES (19, '4厅', 4, 'aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa');
INSERT INTO `hall_info` VALUES (20, '5厅', 4, 'aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa,aaaaaaaa');
INSERT INTO `hall_info` VALUES (21, '1号厅', 5, 'aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaaaaaaaaaaaa');
INSERT INTO `hall_info` VALUES (22, '2号厅', 5, 'aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaaaaaaaaaaaa');
INSERT INTO `hall_info` VALUES (23, '3号厅', 5, 'aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaaaaaaaaaaaa');
INSERT INTO `hall_info` VALUES (24, '4号厅', 5, 'aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaaaaaaaaaaaa');
INSERT INTO `hall_info` VALUES (25, '5号厅', 5, 'aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaa,aaaaaaaaaaaaaaaaaaaa');

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `order_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `actual_money` float NULL DEFAULT NULL,
  `order_time` datetime NULL DEFAULT NULL,
  `film_times_id` int(11) NOT NULL,
  `quPwd` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`order_number`) USING BTREE,
  INDEX `useid`(`user_id`) USING BTREE,
  INDEX `filmTimesId`(`film_times_id`) USING BTREE,
  CONSTRAINT `filmTimesId` FOREIGN KEY (`film_times_id`) REFERENCES `film_times_info` (`film_times_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `useid` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES ('2021061510055569', 7, 175.6, '2021-06-15 16:31:57', 1, 'agrvARS6', NULL);
INSERT INTO `order_info` VALUES ('2021061548485157', 7, 43.9, '2021-06-15 20:05:20', 1, 'clBHPY19', NULL);
INSERT INTO `order_info` VALUES ('2021061548981009', 7, 43.9, '2021-06-15 20:01:04', 1, 'bvCSZ039', NULL);
INSERT INTO `order_info` VALUES ('2021061549495599', 15, 43.9, '2021-06-15 23:30:09', 1, 'glmwDHOS', NULL);
INSERT INTO `order_info` VALUES ('2021061551484910', 7, 87.8, '2021-06-15 18:43:15', 4, 'dkqzK459', NULL);
INSERT INTO `order_info` VALUES ('2021061552101515', 7, 43.9, '2021-06-15 21:32:04', 1, 'aflwCG45', NULL);
INSERT INTO `order_info` VALUES ('2021061597539710', 7, 131.7, '2021-06-15 18:43:06', 3, 'cgktwQU7', NULL);

-- ----------------------------
-- Table structure for order_item_info
-- ----------------------------
DROP TABLE IF EXISTS `order_item_info`;
CREATE TABLE `order_item_info`  (
  `order_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pos_x` int(11) NULL DEFAULT NULL,
  `pos_y` int(11) NULL DEFAULT NULL,
  `price` float NULL DEFAULT NULL,
  `film_times_id` int(11) NOT NULL,
  PRIMARY KEY (`order_item_id`) USING BTREE,
  INDEX `orderNumber`(`order_number`) USING BTREE,
  INDEX `film_times_id`(`film_times_id`) USING BTREE,
  CONSTRAINT `film_times_id` FOREIGN KEY (`film_times_id`) REFERENCES `film_times_info` (`film_times_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orderNumber` FOREIGN KEY (`order_number`) REFERENCES `order_info` (`order_number`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_item_info
-- ----------------------------
INSERT INTO `order_item_info` VALUES (4, '2021061510055569', 4, 1, 43.9, 1);
INSERT INTO `order_item_info` VALUES (5, '2021061510055569', 5, 1, 43.9, 1);
INSERT INTO `order_item_info` VALUES (6, '2021061510055569', 4, 5, 43.9, 1);
INSERT INTO `order_item_info` VALUES (7, '2021061510055569', 8, 8, 43.9, 1);
INSERT INTO `order_item_info` VALUES (8, '2021061597539710', 5, 5, 43.9, 3);
INSERT INTO `order_item_info` VALUES (9, '2021061597539710', 6, 5, 43.9, 3);
INSERT INTO `order_item_info` VALUES (15, '2021061552101515', 6, 4, 43.9, 1);
INSERT INTO `order_item_info` VALUES (16, '2021061549495599', 2, 3, 43.9, 1);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_rank` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_exp` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_pwd` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_status` int(11) NOT NULL,
  `balance` float NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, '龙翔宇', '17857308315', '男', '1', '0', 'Aa123456', 0, NULL);
INSERT INTO `user_info` VALUES (7, '小刘老师', '15967976449', '女', '1', '0', 'Aa123456', 0, NULL);
INSERT INTO `user_info` VALUES (12, '小刘老师A', '15967976447', '男', '1', '0', 'Aa123456', 0, NULL);
INSERT INTO `user_info` VALUES (13, '晓亦', '13615899789', '男', '1', '0', 'Aa123456', 0, NULL);
INSERT INTO `user_info` VALUES (14, '茅原民', '13766492312', '男', '1', '0', 'Aa123456', 0, NULL);
INSERT INTO `user_info` VALUES (15, 'xiaoyi', '17857308316', '男', '1', '0', 'Aa123456', 0, NULL);
INSERT INTO `user_info` VALUES (16, 'asdasd', '15967976334', '男', '1', '0', 'Aa123456', 0, NULL);

SET FOREIGN_KEY_CHECKS = 1;
