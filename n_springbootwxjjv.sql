/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : no265_springbootwxjjv

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 27/05/2024 22:23:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'upload/1651301006721.png');
INSERT INTO `config` VALUES (2, 'picture2', 'upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'upload/picture3.jpg');

-- ----------------------------
-- Table structure for discusskechengxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discusskechengxinxi`;
CREATE TABLE `discusskechengxinxi`  (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `refid` BIGINT(20) NOT NULL COMMENT '关联表id',
  `userid` BIGINT(20) NOT NULL COMMENT '用户id',
  `nickname` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 1651300892568 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程信息评论表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of discusskechengxinxi
-- ----------------------------
INSERT INTO `discusskechengxinxi` VALUES (121, '2022-04-30 14:26:53', 1, 1, '用户名1', '评论内容1', '回复内容1');
INSERT INTO `discusskechengxinxi` VALUES (122, '2022-04-30 14:26:53', 2, 2, '用户名2', '评论内容2', '回复内容2');
INSERT INTO `discusskechengxinxi` VALUES (123, '2022-04-30 14:26:53', 3, 3, '用户名3', '评论内容3', '回复内容3');
INSERT INTO `discusskechengxinxi` VALUES (124, '2022-04-30 14:26:53', 4, 4, '用户名4', '评论内容4', '回复内容4');
INSERT INTO `discusskechengxinxi` VALUES (125, '2022-04-30 14:26:53', 5, 5, '用户名5', '评论内容5', '回复内容5');
INSERT INTO `discusskechengxinxi` VALUES (126, '2022-04-30 14:26:53', 6, 6, '用户名6', '评论内容6', '回复内容6');
INSERT INTO `discusskechengxinxi` VALUES (1651300892567, '2022-04-30 14:41:32', 36, 1651300851049, '11', '这里是评论教师课程的地方', '这里是回复学生评论的地方');

-- ----------------------------
-- Table structure for forum
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum`  (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `title` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '帖子标题',
  `content` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '帖子内容',
  `parentid` BIGINT(20) NULL DEFAULT NULL COMMENT '父节点id',
  `userid` BIGINT(20) NOT NULL COMMENT '用户id',
  `username` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `isdone` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 1651300920895 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '校园论坛' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES (91, '2022-04-30 14:26:53', '帖子标题1', '帖子内容1', 0, 1, '用户名1', '开放');
INSERT INTO `forum` VALUES (92, '2022-04-30 14:26:53', '帖子标题2', '帖子内容2', 0, 2, '用户名2', '开放');
INSERT INTO `forum` VALUES (93, '2022-04-30 14:26:53', '帖子标题3', '帖子内容3', 0, 3, '用户名3', '开放');
INSERT INTO `forum` VALUES (94, '2022-04-30 14:26:53', '帖子标题4', '帖子内容4', 0, 4, '用户名4', '开放');
INSERT INTO `forum` VALUES (95, '2022-04-30 14:26:53', '帖子标题5', '帖子内容5', 0, 5, '用户名5', '开放');
INSERT INTO `forum` VALUES (96, '2022-04-30 14:26:53', '帖子标题6', '帖子内容6', 0, 6, '用户名6', '开放');
INSERT INTO `forum` VALUES (1651300920894, '2022-04-30 14:42:00', '这里是发布交流论坛的地方', '<p>这里输入交流的内容</p>', 0, 1651300851049, '11', '开放');

-- ----------------------------
-- Table structure for jiaoshi
-- ----------------------------
DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE `jiaoshi`  (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gonghao` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工号',
  `mima` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `jiaoshixingming` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '教师姓名',
  `xingbie` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `youxiang` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `lianxishouji` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系手机',
  `xiangpian` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相片',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `gonghao`(`gonghao`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 1651300963360 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '教师' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jiaoshi
-- ----------------------------
INSERT INTO `jiaoshi` VALUES (21, '2022-04-30 14:26:53', '工号1', '123456', '教师姓名1', '男', '773890001@qq.com', '13823888881', 'upload/jiaoshi_xiangpian1.jpg');
INSERT INTO `jiaoshi` VALUES (22, '2022-04-30 14:26:53', '工号2', '123456', '教师姓名2', '男', '773890002@qq.com', '13823888882', 'upload/jiaoshi_xiangpian2.jpg');
INSERT INTO `jiaoshi` VALUES (23, '2022-04-30 14:26:53', '工号3', '123456', '教师姓名3', '男', '773890003@qq.com', '13823888883', 'upload/jiaoshi_xiangpian3.jpg');
INSERT INTO `jiaoshi` VALUES (24, '2022-04-30 14:26:53', '工号4', '123456', '教师姓名4', '男', '773890004@qq.com', '13823888884', 'upload/jiaoshi_xiangpian4.jpg');
INSERT INTO `jiaoshi` VALUES (25, '2022-04-30 14:26:53', '工号5', '123456', '教师姓名5', '男', '773890005@qq.com', '13823888885', 'upload/jiaoshi_xiangpian5.jpg');
INSERT INTO `jiaoshi` VALUES (26, '2022-04-30 14:26:53', '工号6', '123456', '教师姓名6', '男', '773890006@qq.com', '13823888886', 'upload/jiaoshi_xiangpian6.jpg');
INSERT INTO `jiaoshi` VALUES (1651300963359, '2022-04-30 14:42:43', 'teacher', '123456', '李四', '女', '133@163.com', '13333333333', 'upload/1651301080078.jpeg');

-- ----------------------------
-- Table structure for kechengfenlei
-- ----------------------------
DROP TABLE IF EXISTS `kechengfenlei`;
CREATE TABLE `kechengfenlei`  (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `kechengfenlei` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程分类',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 1651300988406 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程分类' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kechengfenlei
-- ----------------------------
INSERT INTO `kechengfenlei` VALUES (41, '2022-04-30 14:26:53', '课程分类1');
INSERT INTO `kechengfenlei` VALUES (42, '2022-04-30 14:26:53', '课程分类2');
INSERT INTO `kechengfenlei` VALUES (43, '2022-04-30 14:26:53', '课程分类3');
INSERT INTO `kechengfenlei` VALUES (44, '2022-04-30 14:26:53', '课程分类4');
INSERT INTO `kechengfenlei` VALUES (45, '2022-04-30 14:26:53', '课程分类5');
INSERT INTO `kechengfenlei` VALUES (46, '2022-04-30 14:26:53', '课程分类6');
INSERT INTO `kechengfenlei` VALUES (1651300988405, '2022-04-30 14:43:07', '外语类');

-- ----------------------------
-- Table structure for kechengxinxi
-- ----------------------------
DROP TABLE IF EXISTS `kechengxinxi`;
CREATE TABLE `kechengxinxi`  (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `kechengmingcheng` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程名称',
  `kechengfengmian` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程封面',
  `kechengfenlei` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程分类',
  `shangkeshijian` DATETIME(0) NULL DEFAULT NULL COMMENT '上课时间',
  `shangkedidian` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上课地点',
  `kechengjianjie` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '课程简介',
  `kechengneirong` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '课程内容',
  `gonghao` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `faburiqi` DATE NULL DEFAULT NULL COMMENT '发布日期',
  `sfsh` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 1651301134817 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kechengxinxi
-- ----------------------------
INSERT INTO `kechengxinxi` VALUES (31, '2022-04-30 14:26:53', '课程名称1', 'upload/kechengxinxi_kechengfengmian1.jpg', '课程分类1', '2022-04-30 14:26:53', '上课地点1', '课程简介1', '课程内容1', '工号1', '教师姓名1', '2022-04-30', '是', '');
INSERT INTO `kechengxinxi` VALUES (32, '2022-04-30 14:26:53', '课程名称2', 'upload/kechengxinxi_kechengfengmian2.jpg', '课程分类2', '2022-04-30 14:26:53', '上课地点2', '课程简介2', '课程内容2', '工号2', '教师姓名2', '2022-04-30', '是', '');
INSERT INTO `kechengxinxi` VALUES (33, '2022-04-30 14:26:53', '课程名称3', 'upload/kechengxinxi_kechengfengmian3.jpg', '课程分类3', '2022-04-30 14:26:53', '上课地点3', '课程简介3', '课程内容3', '工号3', '教师姓名3', '2022-04-30', '是', '');
INSERT INTO `kechengxinxi` VALUES (34, '2022-04-30 14:26:53', '课程名称4', 'upload/kechengxinxi_kechengfengmian4.jpg', '课程分类4', '2022-04-30 14:26:53', '上课地点4', '课程简介4', '课程内容4', '工号4', '教师姓名4', '2022-04-30', '是', '');
INSERT INTO `kechengxinxi` VALUES (35, '2022-04-30 14:26:53', '课程名称5', 'upload/kechengxinxi_kechengfengmian5.jpg', '课程分类5', '2022-04-30 14:26:53', '上课地点5', '课程简介5', '课程内容5', '工号5', '教师姓名5', '2022-04-30', '是', '');
INSERT INTO `kechengxinxi` VALUES (36, '2022-04-30 14:26:53', '课程名称6', 'upload/kechengxinxi_kechengfengmian6.jpg', '课程分类6', '2022-04-30 14:26:53', '上课地点6', '课程简介6', '课程内容6', '工号6', '教师姓名6', '2022-04-30', '是', '');
INSERT INTO `kechengxinxi` VALUES (1651301134816, '2022-04-30 14:45:33', '某某课程', 'upload/1651301101013.png', '外语类', '2022-05-02 02:02:02', '某某地点', '这里输入课程的简介', '<p>这里输入课程的内容</p><p>还可以适当的插入图片</p><p><img src=\"http://localhost:8080/springbootwxjjv/upload/1651301132838.jpg\"></p>', '22', '李四', '2022-04-30', '是', '这里是审核教师发布的课程信息的地方');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `title` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `introduction` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `picture` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 1651301058262 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '校园公告' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (113, '2022-04-30 14:26:53', '挫折路上，坚持常在心间', '回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。', 'upload/news_picture3.jpg', '<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');
INSERT INTO `news` VALUES (114, '2022-04-30 14:26:53', '挫折是另一个生命的开端', '当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。', 'upload/news_picture4.jpg', '<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>');
INSERT INTO `news` VALUES (115, '2022-04-30 14:26:53', '你要去相信，没有到不了的明天', '有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。', 'upload/news_picture5.jpg', '<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>');
INSERT INTO `news` VALUES (116, '2022-04-30 14:26:53', '离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端', '无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。', 'upload/news_picture6.jpg', '<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>');
INSERT INTO `news` VALUES (1651301058261, '2022-04-30 14:44:17', '这里是发布公告信息的地方', '这里输入公告的简介', 'upload/1651301028651.jpg', '<p>这里输入公告的内容</p><p>还可以适当的插入图片</p><p><img src=\"http://localhost:8080/springbootwxjjv/upload/1651301056555.jpg\"></p>');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `userid` BIGINT(20) NOT NULL COMMENT '用户id',
  `refid` BIGINT(20) NULL DEFAULT NULL COMMENT '收藏id',
  `tablename` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏名称',
  `picture` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏图片',
  `type` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 1716819568066 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1716819568065, '2024-05-27 22:19:27', 1651300851049, 32, 'kechengxinxi', '课程名称2', 'upload/kechengxinxi_kechengfengmian2.jpg', '1', NULL);

-- ----------------------------
-- Table structure for tijiaozuoye
-- ----------------------------
DROP TABLE IF EXISTS `tijiaozuoye`;
CREATE TABLE `tijiaozuoye`  (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `kechengmingcheng` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `zuoyemingcheng` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作业名称',
  `gonghao` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `tijiaoshijian` DATETIME(0) NULL DEFAULT NULL COMMENT '提交时间',
  `tijiaoneirong` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '提交内容',
  `xuehao` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `xueshengxingming` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `crossuserid` BIGINT(20) NULL DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` BIGINT(20) NULL DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 1651301266670 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '提交作业' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tijiaozuoye
-- ----------------------------
INSERT INTO `tijiaozuoye` VALUES (71, '2022-04-30 14:26:53', '课程名称1', '作业名称1', '工号1', '教师姓名1', '2022-04-30 14:26:53', '', '学号1', '学生姓名1', 1, 1);
INSERT INTO `tijiaozuoye` VALUES (72, '2022-04-30 14:26:53', '课程名称2', '作业名称2', '工号2', '教师姓名2', '2022-04-30 14:26:53', '', '学号2', '学生姓名2', 2, 2);
INSERT INTO `tijiaozuoye` VALUES (73, '2022-04-30 14:26:53', '课程名称3', '作业名称3', '工号3', '教师姓名3', '2022-04-30 14:26:53', '', '学号3', '学生姓名3', 3, 3);
INSERT INTO `tijiaozuoye` VALUES (74, '2022-04-30 14:26:53', '课程名称4', '作业名称4', '工号4', '教师姓名4', '2022-04-30 14:26:53', '', '学号4', '学生姓名4', 4, 4);
INSERT INTO `tijiaozuoye` VALUES (75, '2022-04-30 14:26:53', '课程名称5', '作业名称5', '工号5', '教师姓名5', '2022-04-30 14:26:53', '', '学号5', '学生姓名5', 5, 5);
INSERT INTO `tijiaozuoye` VALUES (76, '2022-04-30 14:26:53', '课程名称6', '作业名称6', '工号6', '教师姓名6', '2022-04-30 14:26:53', '', '学号6', '学生姓名6', 6, 6);
INSERT INTO `tijiaozuoye` VALUES (1651301266669, '2022-04-30 14:47:46', '课程名称6', '某某作业', '工号6', '教师姓名6', '2022-04-30 14:47:56', 'upload/1651301264973.docx', '11', '张三', 1651300851049, 1651301222129);

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` BIGINT(20) NOT NULL COMMENT '用户id',
  `username` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  `expiratedtime` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1651300851049, '11', 'xuesheng', '学生', 'lu44zlzsjly5nf8s5xq9xufqf6j5r2qm', '2022-04-30 14:40:56', '2024-05-27 23:18:51');
INSERT INTO `token` VALUES (2, 1, 'abo', 'users', '管理员', 'oqxk32lwq2o7f2y83u8w37pu4hfcvi27', '2022-04-30 14:42:50', '2024-05-27 23:19:43');
INSERT INTO `token` VALUES (3, 1651300963359, '22', 'jiaoshi', '教师', 'd45m9zp6aqm7047ym7b8yg3hed8szu6c', '2022-04-30 14:44:28', '2022-04-30 15:44:29');
INSERT INTO `token` VALUES (4, 26, '工号6', 'jiaoshi', '教师', 'dby5abtj8qerr543isy2boab1rhiclav', '2022-04-30 14:46:17', '2022-04-30 15:48:06');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '123456', '管理员', '2022-04-30 14:26:53');

-- ----------------------------
-- Table structure for xuankexinxi
-- ----------------------------
DROP TABLE IF EXISTS `xuankexinxi`;
CREATE TABLE `xuankexinxi`  (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `kechengmingcheng` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `kechengfenlei` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程分类',
  `shangkeshijian` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上课时间',
  `shangkedidian` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上课地点',
  `gonghao` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `xuankeshijian` DATETIME(0) NULL DEFAULT NULL COMMENT '选课时间',
  `xuankebeizhu` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '选课备注',
  `xuehao` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `xueshengxingming` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `crossuserid` BIGINT(20) NULL DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` BIGINT(20) NULL DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 1651300902615 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '选课信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xuankexinxi
-- ----------------------------
INSERT INTO `xuankexinxi` VALUES (51, '2022-04-30 14:26:53', '课程名称1', '课程分类1', '上课时间1', '上课地点1', '工号1', '教师姓名1', '2022-04-30 14:26:53', '选课备注1', '学号1', '学生姓名1', 1, 1, '是', '');
INSERT INTO `xuankexinxi` VALUES (52, '2022-04-30 14:26:53', '课程名称2', '课程分类2', '上课时间2', '上课地点2', '工号2', '教师姓名2', '2022-04-30 14:26:53', '选课备注2', '学号2', '学生姓名2', 2, 2, '是', '');
INSERT INTO `xuankexinxi` VALUES (53, '2022-04-30 14:26:53', '课程名称3', '课程分类3', '上课时间3', '上课地点3', '工号3', '教师姓名3', '2022-04-30 14:26:53', '选课备注3', '学号3', '学生姓名3', 3, 3, '是', '');
INSERT INTO `xuankexinxi` VALUES (54, '2022-04-30 14:26:53', '课程名称4', '课程分类4', '上课时间4', '上课地点4', '工号4', '教师姓名4', '2022-04-30 14:26:53', '选课备注4', '学号4', '学生姓名4', 4, 4, '是', '');
INSERT INTO `xuankexinxi` VALUES (55, '2022-04-30 14:26:53', '课程名称5', '课程分类5', '上课时间5', '上课地点5', '工号5', '教师姓名5', '2022-04-30 14:26:53', '选课备注5', '学号5', '学生姓名5', 5, 5, '是', '');
INSERT INTO `xuankexinxi` VALUES (56, '2022-04-30 14:26:53', '课程名称6', '课程分类6', '上课时间6', '上课地点6', '工号6', '教师姓名6', '2022-04-30 14:26:53', '选课备注6', '学号6', '学生姓名6', 6, 6, '是', '');
INSERT INTO `xuankexinxi` VALUES (1651300902614, '2022-04-30 14:41:41', '课程名称6', '课程分类6', '2022-04-30 14:26:53', '上课地点6', '工号6', '教师姓名6', '2022-04-30 14:41:58', '这里是学生选课的地方', '11', '张三', 1651300851049, 36, '是', '这里是审核学生的选课信息的地方');

-- ----------------------------
-- Table structure for xuesheng
-- ----------------------------
DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE `xuesheng`  (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `xuehao` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `mima` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `xueshengxingming` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生姓名',
  `xingbie` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `youxiang` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `shoujihaoma` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `xiangpian` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相片',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `xuehao`(`xuehao`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 1651300851050 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xuesheng
-- ----------------------------
INSERT INTO `xuesheng` VALUES (11, '2022-04-30 14:26:53', '学号1', '123456', '学生姓名1', '男', '773890001@qq.com', '13823888881', 'upload/xuesheng_xiangpian1.jpg');
INSERT INTO `xuesheng` VALUES (12, '2022-04-30 14:26:53', '学号2', '123456', '学生姓名2', '男', '773890002@qq.com', '13823888882', 'upload/xuesheng_xiangpian2.jpg');
INSERT INTO `xuesheng` VALUES (13, '2022-04-30 14:26:53', '学号3', '123456', '学生姓名3', '男', '773890003@qq.com', '13823888883', 'upload/xuesheng_xiangpian3.jpg');
INSERT INTO `xuesheng` VALUES (14, '2022-04-30 14:26:53', '学号4', '123456', '学生姓名4', '男', '773890004@qq.com', '13823888884', 'upload/xuesheng_xiangpian4.jpg');
INSERT INTO `xuesheng` VALUES (15, '2022-04-30 14:26:53', '学号5', '123456', '学生姓名5', '男', '773890005@qq.com', '13823888885', 'upload/xuesheng_xiangpian5.jpg');
INSERT INTO `xuesheng` VALUES (16, '2022-04-30 14:26:53', '学号6', '123456', '学生姓名6', '男', '773890006@qq.com', '13823888886', 'upload/xuesheng_xiangpian6.jpg');
INSERT INTO `xuesheng` VALUES (1651300851049, '2022-04-30 14:40:51', 'student', '123456', '张三', '男', '131@163.com', '13111111111', 'upload/1651300867454.jpg');

-- ----------------------------
-- Table structure for xueshengchengji
-- ----------------------------
DROP TABLE IF EXISTS `xueshengchengji`;
CREATE TABLE `xueshengchengji`  (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `kechengmingcheng` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `chengjimingcheng` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '成绩名称',
  `fenshu` INT(11) NOT NULL COMMENT '分数',
  `pingjiajianyi` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评价建议',
  `gonghao` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `fasongriqi` DATETIME(0) NULL DEFAULT NULL COMMENT '发送日期',
  `xuehao` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `xueshengxingming` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 1651301243928 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生成绩' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xueshengchengji
-- ----------------------------
INSERT INTO `xueshengchengji` VALUES (81, '2022-04-30 14:26:53', '课程名称1', '成绩名称1', 1, '评价建议1', '工号1', '教师姓名1', '2022-04-30 14:26:53', '学号1', '学生姓名1');
INSERT INTO `xueshengchengji` VALUES (82, '2022-04-30 14:26:53', '课程名称2', '成绩名称2', 2, '评价建议2', '工号2', '教师姓名2', '2022-04-30 14:26:53', '学号2', '学生姓名2');
INSERT INTO `xueshengchengji` VALUES (83, '2022-04-30 14:26:53', '课程名称3', '成绩名称3', 3, '评价建议3', '工号3', '教师姓名3', '2022-04-30 14:26:53', '学号3', '学生姓名3');
INSERT INTO `xueshengchengji` VALUES (84, '2022-04-30 14:26:53', '课程名称4', '成绩名称4', 4, '评价建议4', '工号4', '教师姓名4', '2022-04-30 14:26:53', '学号4', '学生姓名4');
INSERT INTO `xueshengchengji` VALUES (85, '2022-04-30 14:26:53', '课程名称5', '成绩名称5', 5, '评价建议5', '工号5', '教师姓名5', '2022-04-30 14:26:53', '学号5', '学生姓名5');
INSERT INTO `xueshengchengji` VALUES (86, '2022-04-30 14:26:53', '课程名称6', '成绩名称6', 6, '评价建议6', '工号6', '教师姓名6', '2022-04-30 14:26:53', '学号6', '学生姓名6');
INSERT INTO `xueshengchengji` VALUES (1651301243927, '2022-04-30 14:47:23', '课程名称6', '某某成绩', 59, '这里是发布成绩的地方', '工号6', '教师姓名6', '2022-04-30 14:47:31', '11', '张三');

-- ----------------------------
-- Table structure for zuoyexinxi
-- ----------------------------
DROP TABLE IF EXISTS `zuoyexinxi`;
CREATE TABLE `zuoyexinxi`  (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `kechengmingcheng` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `zuoyemingcheng` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作业名称',
  `zuoyeneirong` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '作业内容',
  `gonghao` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `faburiqi` DATE NULL DEFAULT NULL COMMENT '发布日期',
  `xuehao` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `xueshengxingming` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 1651301222130 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '作业信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of zuoyexinxi
-- ----------------------------
INSERT INTO `zuoyexinxi` VALUES (61, '2022-04-30 14:26:53', '课程名称1', '作业名称1', '作业内容1', '工号1', '教师姓名1', '2022-04-30', '学号1', '学生姓名1');
INSERT INTO `zuoyexinxi` VALUES (62, '2022-04-30 14:26:53', '课程名称2', '作业名称2', '作业内容2', '工号2', '教师姓名2', '2022-04-30', '学号2', '学生姓名2');
INSERT INTO `zuoyexinxi` VALUES (63, '2022-04-30 14:26:53', '课程名称3', '作业名称3', '作业内容3', '工号3', '教师姓名3', '2022-04-30', '学号3', '学生姓名3');
INSERT INTO `zuoyexinxi` VALUES (64, '2022-04-30 14:26:53', '课程名称4', '作业名称4', '作业内容4', '工号4', '教师姓名4', '2022-04-30', '学号4', '学生姓名4');
INSERT INTO `zuoyexinxi` VALUES (65, '2022-04-30 14:26:53', '课程名称5', '作业名称5', '作业内容5', '工号5', '教师姓名5', '2022-04-30', '学号5', '学生姓名5');
INSERT INTO `zuoyexinxi` VALUES (66, '2022-04-30 14:26:53', '课程名称6', '作业名称6', '作业内容6', '工号6', '教师姓名6', '2022-04-30', '学号6', '学生姓名6');
INSERT INTO `zuoyexinxi` VALUES (1651301222129, '2022-04-30 14:47:01', '课程名称6', '某某作业', '这里是发布作业的地方', '工号6', '教师姓名6', '2022-04-30', '11', '张三');

SET FOREIGN_KEY_CHECKS = 1;
