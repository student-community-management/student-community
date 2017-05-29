/*
Navicat MySQL Data Transfer

Source Server         : chenyh
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : student_community

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-05-29 16:17:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for against_reply_discuss
-- ----------------------------
DROP TABLE IF EXISTS `against_reply_discuss`;
CREATE TABLE `against_reply_discuss` (
  `stu_id` int(11) NOT NULL,
  `reply_discuss_id` int(11) NOT NULL,
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`stu_id`,`reply_discuss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='踩讨论';

-- ----------------------------
-- Records of against_reply_discuss
-- ----------------------------
INSERT INTO `against_reply_discuss` VALUES ('10002', '6', '2017-04-24 20:15:06');

-- ----------------------------
-- Table structure for attention_discuss
-- ----------------------------
DROP TABLE IF EXISTS `attention_discuss`;
CREATE TABLE `attention_discuss` (
  `stu_id` int(11) NOT NULL,
  `discuss_id` int(11) NOT NULL,
  PRIMARY KEY (`stu_id`,`discuss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='关注讨论';

-- ----------------------------
-- Records of attention_discuss
-- ----------------------------
INSERT INTO `attention_discuss` VALUES ('10001', '1');
INSERT INTO `attention_discuss` VALUES ('10002', '1');
INSERT INTO `attention_discuss` VALUES ('10002', '13');
INSERT INTO `attention_discuss` VALUES ('10002', '23');
INSERT INTO `attention_discuss` VALUES ('10002', '24');
INSERT INTO `attention_discuss` VALUES ('10002', '27');
INSERT INTO `attention_discuss` VALUES ('10002', '30');
INSERT INTO `attention_discuss` VALUES ('10002', '32');
INSERT INTO `attention_discuss` VALUES ('10002', '33');
INSERT INTO `attention_discuss` VALUES ('10002', '34');
INSERT INTO `attention_discuss` VALUES ('10002', '35');
INSERT INTO `attention_discuss` VALUES ('10002', '36');
INSERT INTO `attention_discuss` VALUES ('10003', '3');
INSERT INTO `attention_discuss` VALUES ('10003', '4');
INSERT INTO `attention_discuss` VALUES ('10003', '5');
INSERT INTO `attention_discuss` VALUES ('10003', '12');
INSERT INTO `attention_discuss` VALUES ('10003', '21');
INSERT INTO `attention_discuss` VALUES ('10003', '36');
INSERT INTO `attention_discuss` VALUES ('10005', '15');
INSERT INTO `attention_discuss` VALUES ('10005', '16');
INSERT INTO `attention_discuss` VALUES ('10005', '17');
INSERT INTO `attention_discuss` VALUES ('10005', '18');
INSERT INTO `attention_discuss` VALUES ('10006', '5');
INSERT INTO `attention_discuss` VALUES ('10006', '6');
INSERT INTO `attention_discuss` VALUES ('10006', '13');
INSERT INTO `attention_discuss` VALUES ('10011', '7');
INSERT INTO `attention_discuss` VALUES ('10011', '8');
INSERT INTO `attention_discuss` VALUES ('10011', '9');
INSERT INTO `attention_discuss` VALUES ('10011', '10');
INSERT INTO `attention_discuss` VALUES ('10017', '19');

-- ----------------------------
-- Table structure for classes
-- ----------------------------
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes` (
  `classes_id` int(11) NOT NULL AUTO_INCREMENT,
  `grade` int(11) NOT NULL COMMENT '班级',
  `classes` varchar(255) NOT NULL,
  `years` date DEFAULT NULL,
  PRIMARY KEY (`classes_id`),
  UNIQUE KEY `unique` (`classes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classes
-- ----------------------------
INSERT INTO `classes` VALUES ('1', '1', '一班', '2015-09-01');
INSERT INTO `classes` VALUES ('2', '0', '二班', '2016-09-01');
INSERT INTO `classes` VALUES ('3', '2', '四班', '2014-09-01');
INSERT INTO `classes` VALUES ('4', '1', '二班', '2015-09-01');
INSERT INTO `classes` VALUES ('5', '9', '三班', '2007-09-01');
INSERT INTO `classes` VALUES ('6', '0', '一班', '2016-09-01');
INSERT INTO `classes` VALUES ('7', '0', '三班', '2016-09-01');
INSERT INTO `classes` VALUES ('8', '0', '四班', '2016-09-01');
INSERT INTO `classes` VALUES ('9', '0', '五班', '2016-09-01');
INSERT INTO `classes` VALUES ('10', '1', '二班', '2015-09-01');

-- ----------------------------
-- Table structure for community
-- ----------------------------
DROP TABLE IF EXISTS `community`;
CREATE TABLE `community` (
  `community_id` int(11) NOT NULL AUTO_INCREMENT,
  `community_name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT 'nophoto.jpg',
  PRIMARY KEY (`community_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='社团\r\n\r\n\r\n\r\n\r\n\r\n\r\n';

-- ----------------------------
-- Records of community
-- ----------------------------
INSERT INTO `community` VALUES ('2', '学习部', '592e634e-8171-4f92-b730-3d300bd1cfd1.jpg');
INSERT INTO `community` VALUES ('4', '舞蹈部', '00365c8b-fd61-4257-b14a-e65b2e54ec46.jpg');
INSERT INTO `community` VALUES ('5', '品茶部', '603c628e-08a5-42ce-acee-dde85271b41e.jpg');
INSERT INTO `community` VALUES ('8', '测试', 'd9a36449-3025-455f-9628-346f8911fca9.jpg');
INSERT INTO `community` VALUES ('9', '登上部', '47b49d74-2471-45d7-a160-9c91baf3ff89.jpg');
INSERT INTO `community` VALUES ('10', '大学部', '0d9307ac-4d76-4168-bb1c-390d0c6ddce6.jpg');

-- ----------------------------
-- Table structure for community_role
-- ----------------------------
DROP TABLE IF EXISTS `community_role`;
CREATE TABLE `community_role` (
  `community_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`community_role_id`),
  UNIQUE KEY `community_id` (`community_id`,`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of community_role
-- ----------------------------
INSERT INTO `community_role` VALUES ('3', '2', '1');
INSERT INTO `community_role` VALUES ('4', '2', '2');
INSERT INTO `community_role` VALUES ('7', '4', '1');
INSERT INTO `community_role` VALUES ('8', '4', '2');
INSERT INTO `community_role` VALUES ('9', '5', '1');
INSERT INTO `community_role` VALUES ('10', '5', '2');
INSERT INTO `community_role` VALUES ('13', '8', '1');
INSERT INTO `community_role` VALUES ('14', '8', '2');
INSERT INTO `community_role` VALUES ('15', '9', '1');
INSERT INTO `community_role` VALUES ('16', '9', '2');
INSERT INTO `community_role` VALUES ('17', '10', '1');
INSERT INTO `community_role` VALUES ('18', '10', '2');

-- ----------------------------
-- Table structure for discuss
-- ----------------------------
DROP TABLE IF EXISTS `discuss`;
CREATE TABLE `discuss` (
  `discuss_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) DEFAULT NULL,
  `discuss_title` varchar(255) DEFAULT NULL,
  `discuss_content` text COMMENT '讨论内容',
  `discuss_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '讨论发布时间',
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`discuss_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='讨论';

-- ----------------------------
-- Records of discuss
-- ----------------------------
INSERT INTO `discuss` VALUES ('1', '10002', '什么型号的耳机值得入手', '最近想入手一千元左右的耳机,大家有什么建议么?', '2017-05-21 14:39:25', '1');
INSERT INTO `discuss` VALUES ('2', '10002', '程序员适合什么配置的电脑', '我是一个初学者希望大家推荐一款台式电脑,修改过了,我真的修改了', '2017-05-21 14:39:23', '1');
INSERT INTO `discuss` VALUES ('3', '10003', '和程序员谈恋爱是什么体验', '大家快来说一说', '2017-04-12 19:58:01', '1');
INSERT INTO `discuss` VALUES ('4', '10003', '你所知道的很暖心的故事有哪些', null, '2017-04-12 19:58:37', '1');
INSERT INTO `discuss` VALUES ('5', '10003', '你觉得知乎是一个怎样的社区', '大家快来说一说', '2017-04-16 16:35:53', '1');
INSERT INTO `discuss` VALUES ('6', '10006', '北上广生活到底有多难', '请过来人来说一说', '2017-04-17 13:48:08', '1');
INSERT INTO `discuss` VALUES ('7', '10006', '赌博每次输的时候，都把赌本翻倍，能保证必胜吗？', null, '2017-04-17 13:50:31', '1');
INSERT INTO `discuss` VALUES ('8', '10011', 'cs本科生怎样扎实打好计算机体系知识的基础？', null, '2017-04-16 13:16:32', '1');
INSERT INTO `discuss` VALUES ('9', '10011', '如何看待人民的名义全集样片泄露事件？', null, '2017-04-16 13:16:41', '1');
INSERT INTO `discuss` VALUES ('10', '10011', '星际译王的作者胡正是个怎样的人？', '他开发开源软件，免费发放。他信佛声称自己已修成正果，他在自己的网站上自称菩萨号召别人供养，说供养他会获得福报。 金刚经不是说修成正果的人从来不会认为自己已经成佛成菩萨了吗？他是否着相了？', '2017-04-16 13:23:08', '1');
INSERT INTO `discuss` VALUES ('11', '10011', '多长时间能学会.net 并找到工作？', '首先介绍一自己，2年半软件开发经验。以前在北京的一个企业多平台开发部门工作。基本上就是做linux c的应用编程，也做过android部分的工作。因为该公司是软硬结合的工作，我们部门虽然叫多平台，其实做的最多的都是产品的检测软件，也就是说没有什么大项目经验。去年年底因为家庭原因，内心生出要离开北京的想法。意愿就是有这么大的力量，自从有了该想法以后，工作就不在状态上了。终于于今年年初辞职了，部门经理再三挽留，最终还提出涨工资，但是很难跟自己内心作斗争。最终还是离开了。回到石家庄找工作才发现基本上都是.NET和java。关于.NET只是做过一些产品的简单升级软件，就是收发数据重写FLASH那种工具。如今发展石家庄都是需要两年以上工作经验的.NET开发经验。面试几家单位无果，心生抑郁。这个时候部门经理听说我还在待业，果断来石家庄找了我，并邀请我回去。问题是我在他手低下工作这两年，他从来都是一个月就要换一点技术方向，linux不让用c写了，让用scheme（一中小众需要，非常难用），还让用erlang，用couchdb啥的。反正一些别人不用的小众技术。所以现在找工作特别难。如今站在分叉口上不知道如何是好，是继续回北京在他手底下工作，还是自己学学.NET或者JAVA往一个方向发展。因为一直求职无果，所以一直怀疑自己能力。之前工作也是，他怎么安排我怎么做，他又一直搞新东西，也没精力自己钻研，可能好控制也是他想要我回去的原因吧，这两年有人因为不接受哪些冷门技术不断离职。如今到了27这个年纪确实为自己考虑很多，回去的话怕自己迟早要继续出来求职。目前想自己学习2个月.net或者java在找工作，专心学习一方面，深入进去，但是又怕两个月完全达不到求职的程度，所以最近状态很差，特来知乎解惑。', '2017-04-16 13:23:12', '1');
INSERT INTO `discuss` VALUES ('13', '10003', '入门豪华轿车如何选，宝马1系还是奥迪A3？', '小弟在魔都当射鸡湿一枚，主要用途就是上下班代步和接送女友，落地最好能控制在25w以内吧，目前看下来就是宝马1系、奥迪A3可选，奔驰CLA有点超出预算，A级的三厢据说离上市还有段时间。宝马1系一直有关注，新的奥迪A3好像也快上市了，这俩车咋选呢？或者有没有其他选择呢？', '2017-04-16 13:32:43', '1');
INSERT INTO `discuss` VALUES ('14', '10006', '普通985出身，在工作中面对北清科的优秀人才，如何摆平心态和他们共事，认识彼此的差距，学习他们的优点？', '曾经在中学时有很多很厉害的同学，但上大学后大家逐渐分层。四年下来能力和眼界已经不在一个平台之上。现在在工作中接触过一些北清科的同事，发现尤其在科研和技术岗位，占据高层位置的几乎都是北清科的人，而且越往高走这种现象越明显。刚开始并不觉得彼此有很大不同，但长期深入合作之后才发觉他们只是习惯性的谦虚而已，真实实力远超表现出来的水平。无论是做事习惯还是分析解决问题的能力，有时候深深感到一种无力感，仿佛又回到了高中按成绩排高下的那种无奈。人和人的竞争在走出学校之后依然会长期存在，而且是以更多元更全面的方式来比拼实力。当然，也有少数能力出众者，一直在突破自己所在平台的局限，一步步跨入更高层次的平台，甚至超越了北清科大部分停留下来的人。作为普通985毕业生，如何能摆脱这种局限心态，向那些厉害的人逐渐靠拢，甚至超越？', '2017-04-17 13:47:38', '1');
INSERT INTO `discuss` VALUES ('15', '10002', '有哪些翻译是原本错误的，但却最终成为了大众认可的主流？', '', '2017-04-16 13:33:28', '1');
INSERT INTO `discuss` VALUES ('16', '10005', '叙利亚毒气攻击事件，是反对派为获得西方武力支持而造假吗？', null, '2017-04-16 13:34:00', '1');
INSERT INTO `discuss` VALUES ('17', '10005', '为什么日本韩国要去汉字化？', null, '2017-04-17 13:47:23', '1');
INSERT INTO `discuss` VALUES ('18', '10005', '中国在他国印象里是怎么样的?', '感觉我生活在一堵墙里面。', '2017-04-17 13:47:25', '1');
INSERT INTO `discuss` VALUES ('19', '10005', '网上有哪些味道很棒的糕点、零食？或者其他女孩子喜欢吃的隐藏的很深的神店？', '嘛 鉴于求零食的问题 从被歪楼成兄妹大会 现在又有向招亲大会的趋势发展。。。。。。我还是补充一句吧，其实我有喜欢的人，虽然不喜欢我 233333 ，不过说实话还是挺想小鳗鱼的，这个问题也有想找些可以买给她的零食的想法。。。嘛，不多说了， 不过还是欢迎大家来讨论好吃的，也希望和大家成为朋友。就这样～', '2017-04-17 13:47:27', '1');
INSERT INTO `discuss` VALUES ('20', '10017', ' GoLang不需要Rakefile/Makefile，是如何实现交叉编译的？如在X86上生成MIPS的可执行。', null, '2017-04-16 15:11:27', '1');
INSERT INTO `discuss` VALUES ('21', '10031', '吃饭要吃七分饱，有什么科学依据吗？是不是因为“饱”的感觉传递需要一定的时间，觉得七分饱的时候，其实已经吃到了十分的东西了？', null, '2017-04-16 15:14:38', '1');
INSERT INTO `discuss` VALUES ('22', '10003', '论现金流的重要性？', null, '2017-04-17 13:45:10', '1');
INSERT INTO `discuss` VALUES ('23', '10003', '天蝎座的本质是什么？', null, '2017-04-16 15:15:45', '1');
INSERT INTO `discuss` VALUES ('24', '10003', '天蝎和水瓶的相似点有哪些？', '天蝎和水瓶都是把自己保护在壳里面的人。也不会为了谁，为了什么解释太多，因为TA们觉得自己本身就是那样，为什么要解释？你理解，TA感谢。你不理解，那也没啥。TA过得还是TA自己的生活，和任何人都无关！！', '2017-04-17 13:45:05', '1');
INSERT INTO `discuss` VALUES ('25', '10002', '西藏是一个什么样的地方呢', '大家快来和我说一说', '2017-04-28 15:16:13', '1');
INSERT INTO `discuss` VALUES ('27', '10002', 'Googler', 'google is good', '2017-05-22 12:58:43', '1');

-- ----------------------------
-- Table structure for lock_disscuss
-- ----------------------------
DROP TABLE IF EXISTS `lock_disscuss`;
CREATE TABLE `lock_disscuss` (
  `lock_discuss_id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) DEFAULT NULL,
  `discuss_id` int(11) DEFAULT NULL,
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`lock_discuss_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lock_disscuss
-- ----------------------------
INSERT INTO `lock_disscuss` VALUES ('15', '由于您违反了社区规定,所以将您锁定,您可以修改提问后向我们提交我们重新审核', '1', '2017-05-21 14:34:09', '1');
INSERT INTO `lock_disscuss` VALUES ('16', '由于您违反了社区规定,所以将您锁定,您可以修改提问后向我们提交我们重新审核', '2', '2017-05-18 23:30:28', '1');
INSERT INTO `lock_disscuss` VALUES ('17', '您提交的解锁请求没有通过', '2', '2017-05-21 14:39:10', '1');
INSERT INTO `lock_disscuss` VALUES ('18', '由于您违反了社区规定,所以将您锁定,您可以修改提问后向我们提交我们重新审核', '37', '2017-05-19 08:13:40', '1');
INSERT INTO `lock_disscuss` VALUES ('19', '信息不符合', '37', '2017-05-19 08:14:46', '0');
INSERT INTO `lock_disscuss` VALUES ('20', '由于您违反了社区规定,所以将您锁定,您可以修改提问后向我们提交我们重新审核', '1', '2017-05-21 14:34:09', '1');
INSERT INTO `lock_disscuss` VALUES ('21', '由于您违反了社区规定,所以将您锁定,您可以修改提问后向我们提交我们重新审核', '1', '2017-05-21 14:38:56', '1');
INSERT INTO `lock_disscuss` VALUES ('22', '由于您违反了社区规定,所以将您锁定,您可以修改提问后向我们提交我们重新审核', '1', '2017-05-21 14:38:56', '1');
INSERT INTO `lock_disscuss` VALUES ('23', '由于您违反了社区规定,所以将您锁定,您可以修改提问后向我们提交我们重新审核', '2', '2017-05-21 14:39:10', '1');
INSERT INTO `lock_disscuss` VALUES ('24', '由于您违反了社区规定,所以将您锁定,您可以修改提问后向我们提交我们重新审核', '36', '2017-05-21 14:40:12', '0');
INSERT INTO `lock_disscuss` VALUES ('25', '由于您违反了社区规定,所以将您锁定,您可以修改提问后向我们提交我们重新审核', '35', '2017-05-21 14:42:11', '1');
INSERT INTO `lock_disscuss` VALUES ('26', '由于您违反了社区规定,所以将您锁定,您可以修改提问后向我们提交我们重新审核', '35', '2017-05-21 14:43:17', '0');
INSERT INTO `lock_disscuss` VALUES ('27', '由于您违反了社区规定,所以将您锁定,您可以修改提问后向我们提交我们重新审核', '34', '2017-05-21 14:55:11', '0');
INSERT INTO `lock_disscuss` VALUES ('28', '由于您违反了社区规定,所以将您锁定,您可以修改提问后向我们提交我们重新审核', '32', '2017-05-21 14:58:10', '0');
INSERT INTO `lock_disscuss` VALUES ('29', '由于您违反了社区规定,所以将您锁定,您可以修改提问后向我们提交我们重新审核', '31', '2017-05-21 15:19:28', '0');
INSERT INTO `lock_disscuss` VALUES ('30', '你被锁定', '28', '2017-05-22 14:33:39', '1');
INSERT INTO `lock_disscuss` VALUES ('31', '由于您违反了社区规定,所以将您锁定,您可以修改提问后向我们提交我们重新审核', '28', '2017-05-22 14:35:03', '0');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `manager_id` int(11) NOT NULL AUTO_INCREMENT,
  `manager_pwd` varchar(255) DEFAULT NULL,
  `manager_name` varchar(255) DEFAULT NULL,
  `mgr_role_id` int(11) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10009 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('10000', 'admin', '超级管理员', '1');
INSERT INTO `manager` VALUES ('10001', '123123', 'simple', '6');
INSERT INTO `manager` VALUES ('10005', '123123', '小小', '5');
INSERT INTO `manager` VALUES ('10006', '456456', '简书', '7');
INSERT INTO `manager` VALUES ('10007', '456456', '如何', '8');
INSERT INTO `manager` VALUES ('10008', '123456', '大哥', '9');

-- ----------------------------
-- Table structure for mgr_role
-- ----------------------------
DROP TABLE IF EXISTS `mgr_role`;
CREATE TABLE `mgr_role` (
  `mgr_role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员的角色',
  `mgr_role_name` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT '1' COMMENT '权限的等级对应的增删改查',
  PRIMARY KEY (`mgr_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='管理员角色';

-- ----------------------------
-- Records of mgr_role
-- ----------------------------
INSERT INTO `mgr_role` VALUES ('1', '社区管理员', '4');
INSERT INTO `mgr_role` VALUES ('5', '二级学生管理员', '2');
INSERT INTO `mgr_role` VALUES ('6', '一级学生管理员', '1');
INSERT INTO `mgr_role` VALUES ('7', '三级管理员', '3');
INSERT INTO `mgr_role` VALUES ('8', '四级管理员', '4');
INSERT INTO `mgr_role` VALUES ('9', '无机', '1');

-- ----------------------------
-- Table structure for mgr_role_submenu
-- ----------------------------
DROP TABLE IF EXISTS `mgr_role_submenu`;
CREATE TABLE `mgr_role_submenu` (
  `mgr_role_id` int(11) NOT NULL,
  `submenu_id` int(11) NOT NULL COMMENT '管理员和子菜单',
  PRIMARY KEY (`mgr_role_id`,`submenu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mgr_role_submenu
-- ----------------------------
INSERT INTO `mgr_role_submenu` VALUES ('1', '10001');
INSERT INTO `mgr_role_submenu` VALUES ('1', '10002');
INSERT INTO `mgr_role_submenu` VALUES ('1', '10003');
INSERT INTO `mgr_role_submenu` VALUES ('1', '10004');
INSERT INTO `mgr_role_submenu` VALUES ('1', '10005');
INSERT INTO `mgr_role_submenu` VALUES ('1', '10006');
INSERT INTO `mgr_role_submenu` VALUES ('2', '10002');
INSERT INTO `mgr_role_submenu` VALUES ('2', '10003');
INSERT INTO `mgr_role_submenu` VALUES ('2', '10004');
INSERT INTO `mgr_role_submenu` VALUES ('5', '10001');
INSERT INTO `mgr_role_submenu` VALUES ('5', '10002');
INSERT INTO `mgr_role_submenu` VALUES ('5', '10003');
INSERT INTO `mgr_role_submenu` VALUES ('5', '10004');
INSERT INTO `mgr_role_submenu` VALUES ('5', '10005');
INSERT INTO `mgr_role_submenu` VALUES ('5', '10006');
INSERT INTO `mgr_role_submenu` VALUES ('6', '10001');
INSERT INTO `mgr_role_submenu` VALUES ('7', '10001');
INSERT INTO `mgr_role_submenu` VALUES ('7', '10002');
INSERT INTO `mgr_role_submenu` VALUES ('7', '10003');
INSERT INTO `mgr_role_submenu` VALUES ('7', '10004');
INSERT INTO `mgr_role_submenu` VALUES ('7', '10006');
INSERT INTO `mgr_role_submenu` VALUES ('9', '10001');
INSERT INTO `mgr_role_submenu` VALUES ('9', '10002');
INSERT INTO `mgr_role_submenu` VALUES ('9', '10003');
INSERT INTO `mgr_role_submenu` VALUES ('9', '10004');

-- ----------------------------
-- Table structure for parent_menu
-- ----------------------------
DROP TABLE IF EXISTS `parent_menu`;
CREATE TABLE `parent_menu` (
  `parent_menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '父级菜单',
  `parent_menu_name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `parent_menu_ids` int(11) DEFAULT NULL,
  PRIMARY KEY (`parent_menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parent_menu
-- ----------------------------
INSERT INTO `parent_menu` VALUES ('1', '学生管理', null, null);
INSERT INTO `parent_menu` VALUES ('2', '社团管理', null, null);
INSERT INTO `parent_menu` VALUES ('3', '社区管理', null, null);
INSERT INTO `parent_menu` VALUES ('4', '权限管理', null, null);
INSERT INTO `parent_menu` VALUES ('5', '管理人员管理', null, null);

-- ----------------------------
-- Table structure for praise_reply_discuss
-- ----------------------------
DROP TABLE IF EXISTS `praise_reply_discuss`;
CREATE TABLE `praise_reply_discuss` (
  `stu_id` int(11) NOT NULL,
  `reply_discuss_id` int(11) NOT NULL,
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`stu_id`,`reply_discuss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of praise_reply_discuss
-- ----------------------------
INSERT INTO `praise_reply_discuss` VALUES ('10001', '1', '2017-04-22 11:22:51');
INSERT INTO `praise_reply_discuss` VALUES ('10001', '2', '2017-04-22 11:22:53');
INSERT INTO `praise_reply_discuss` VALUES ('10001', '5', '2017-04-22 11:19:53');
INSERT INTO `praise_reply_discuss` VALUES ('10002', '2', '2017-04-26 09:59:45');
INSERT INTO `praise_reply_discuss` VALUES ('10002', '5', '2017-04-22 11:17:28');
INSERT INTO `praise_reply_discuss` VALUES ('10002', '6', '2017-04-28 15:42:10');
INSERT INTO `praise_reply_discuss` VALUES ('10002', '7', '2017-04-28 15:42:07');
INSERT INTO `praise_reply_discuss` VALUES ('10071', '69', '2017-05-22 14:28:37');
INSERT INTO `praise_reply_discuss` VALUES ('10072', '69', '2017-05-22 14:29:57');

-- ----------------------------
-- Table structure for reply_discuss
-- ----------------------------
DROP TABLE IF EXISTS `reply_discuss`;
CREATE TABLE `reply_discuss` (
  `reply_discuss_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) DEFAULT NULL,
  `discuss_id` int(11) DEFAULT NULL,
  `content` text,
  `reply_to_reply` int(255) DEFAULT NULL,
  `reply_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '回复时间',
  PRIMARY KEY (`reply_discuss_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply_discuss
-- ----------------------------
INSERT INTO `reply_discuss` VALUES ('1', '10002', '1', '我推荐FM-895', null, '2017-04-14 16:20:03');
INSERT INTO `reply_discuss` VALUES ('2', '10003', '1', '我推荐漫步者M78系列的耳机', null, '2017-04-14 16:29:58');
INSERT INTO `reply_discuss` VALUES ('3', '10006', '1', '我推荐完事契约的系类耳机', null, '2017-04-14 16:30:24');
INSERT INTO `reply_discuss` VALUES ('4', '10003', '2', 'I7-7700HQ', null, '2017-04-17 15:00:36');
INSERT INTO `reply_discuss` VALUES ('5', '10002', '2', 'I7-7700K', null, '2017-04-17 15:00:55');
INSERT INTO `reply_discuss` VALUES ('6', '10001', '2', 'GTX-1080TI', null, '2017-04-17 15:01:12');
INSERT INTO `reply_discuss` VALUES ('7', '10005', '2', '神舟战神系列电脑', null, '2017-04-17 15:02:10');
INSERT INTO `reply_discuss` VALUES ('9', '10005', '1', '我就想看看<b>加粗的部分</b>', null, '2017-04-24 14:19:35');
INSERT INTO `reply_discuss` VALUES ('17', '10002', '1', '当你在穿越灵的另一百年', null, '2017-04-25 10:22:18');
INSERT INTO `reply_discuss` VALUES ('18', '10002', '22', '当然这是十分重要的', null, '2017-04-25 14:19:27');
INSERT INTO `reply_discuss` VALUES ('20', '10002', null, '我赞同你的说法', '1', '2017-04-26 20:06:25');
INSERT INTO `reply_discuss` VALUES ('21', '10002', null, '爱意在夜里偷偷翻墙', '1', '2017-04-27 10:15:16');
INSERT INTO `reply_discuss` VALUES ('22', '10002', null, '这由是一个测试,我就问你你服不服', '1', '2017-04-27 14:24:25');
INSERT INTO `reply_discuss` VALUES ('23', '10002', null, '这是一条神奇的天路诶诶诶诶', '1', '2017-04-27 14:24:53');
INSERT INTO `reply_discuss` VALUES ('24', '10002', null, '环境规划', '17', '2017-04-27 14:33:44');
INSERT INTO `reply_discuss` VALUES ('25', '10002', null, '这个是真的不错', '2', '2017-04-27 16:07:03');
INSERT INTO `reply_discuss` VALUES ('26', '10002', null, '我是来凑回复的', '1', '2017-04-27 18:30:34');
INSERT INTO `reply_discuss` VALUES ('27', '10002', null, '我就问你气不气', '1', '2017-04-27 18:30:43');
INSERT INTO `reply_discuss` VALUES ('28', '10002', null, '我就是来蹭回复的啊', '1', '2017-04-27 18:30:52');
INSERT INTO `reply_discuss` VALUES ('29', '10002', null, '我是来蹭回复的', '1', '2017-04-27 18:31:02');
INSERT INTO `reply_discuss` VALUES ('30', '10002', null, '我是来蹭回复的', '1', '2017-04-27 18:31:04');
INSERT INTO `reply_discuss` VALUES ('31', '10002', null, '我是来蹭回复的', '1', '2017-04-27 18:31:06');
INSERT INTO `reply_discuss` VALUES ('32', '10002', null, '我是来蹭回复的', '1', '2017-04-27 18:31:08');
INSERT INTO `reply_discuss` VALUES ('33', '10002', null, '我是来蹭回复的', '1', '2017-04-27 18:31:10');
INSERT INTO `reply_discuss` VALUES ('34', '10002', null, '我是来蹭回复的', '1', '2017-04-27 18:31:12');
INSERT INTO `reply_discuss` VALUES ('35', '10002', null, '我是来蹭回复的', '1', '2017-04-27 18:31:13');
INSERT INTO `reply_discuss` VALUES ('36', '10002', null, '我是来蹭回复的', '1', '2017-04-27 18:31:15');
INSERT INTO `reply_discuss` VALUES ('37', '10002', null, '我是来蹭回复的', '1', '2017-04-27 18:31:16');
INSERT INTO `reply_discuss` VALUES ('38', '10002', null, '我是来蹭回复的1', '1', '2017-04-27 18:31:28');
INSERT INTO `reply_discuss` VALUES ('39', '10002', null, '我是来蹭回复的2', '1', '2017-04-27 18:31:32');
INSERT INTO `reply_discuss` VALUES ('40', '10002', null, '我是来蹭回复的23', '1', '2017-04-27 18:31:47');
INSERT INTO `reply_discuss` VALUES ('41', '10002', null, '我是来蹭回复的4', '1', '2017-04-27 18:31:54');
INSERT INTO `reply_discuss` VALUES ('42', '10002', null, '我是来蹭回复的5', '1', '2017-04-27 18:31:56');
INSERT INTO `reply_discuss` VALUES ('43', '10002', null, '我是来蹭回复的6', '1', '2017-04-27 18:31:59');
INSERT INTO `reply_discuss` VALUES ('44', '10002', null, '我是来蹭回复的7', '1', '2017-04-27 18:32:04');
INSERT INTO `reply_discuss` VALUES ('45', '10002', '14', '要谦虚谦虚,谦虚', null, '2017-04-27 20:22:42');
INSERT INTO `reply_discuss` VALUES ('46', '10002', null, '自此你', '2', '2017-04-28 14:42:34');
INSERT INTO `reply_discuss` VALUES ('49', '10002', null, '美滋滋', '9', '2017-04-28 16:06:24');
INSERT INTO `reply_discuss` VALUES ('50', '10002', '24', '脾气都很好', null, '2017-05-09 15:42:10');
INSERT INTO `reply_discuss` VALUES ('52', '10002', '5', '我觉得知乎是一个很不错的社区', null, '2017-05-15 09:01:28');
INSERT INTO `reply_discuss` VALUES ('55', '10002', '12', 'fgd&nbsp;', null, '2017-05-18 10:35:57');
INSERT INTO `reply_discuss` VALUES ('56', '10002', '12', 'dfsg&nbsp;', null, '2017-05-18 10:37:00');
INSERT INTO `reply_discuss` VALUES ('57', '10002', '29', 'asdf dasd fasdf', null, '2017-05-18 10:43:11');
INSERT INTO `reply_discuss` VALUES ('58', '10002', '29', 'asdf fas dsd', null, '2017-05-18 10:43:15');
INSERT INTO `reply_discuss` VALUES ('66', '10002', '36', '我就是想来测试一发', null, '2017-05-21 14:39:46');
INSERT INTO `reply_discuss` VALUES ('67', '10002', '25', '西藏在我国的西南部是个不错的地方', null, '2017-05-22 08:17:51');
INSERT INTO `reply_discuss` VALUES ('68', '10002', '25', '你好有', null, '2017-05-22 12:54:53');

-- ----------------------------
-- Table structure for report_discuss
-- ----------------------------
DROP TABLE IF EXISTS `report_discuss`;
CREATE TABLE `report_discuss` (
  `report_discuss_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) DEFAULT NULL,
  `discuss_id` int(11) DEFAULT NULL,
  `message` text,
  `report_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '举报时间',
  `status` int(11) DEFAULT '0' COMMENT '举报的处理状态',
  PRIMARY KEY (`report_discuss_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report_discuss
-- ----------------------------
INSERT INTO `report_discuss` VALUES ('2', '10002', '1', '这是不友善评论啊', '2017-05-21 14:30:47', '1');
INSERT INTO `report_discuss` VALUES ('3', '10002', '2', '这是我的一个测额是', '2017-05-21 14:38:15', '1');
INSERT INTO `report_discuss` VALUES ('4', '10003', '1', '这是测试', '2017-05-21 14:30:47', '1');
INSERT INTO `report_discuss` VALUES ('6', '10002', '37', '这是一个混子', '2017-05-19 07:56:14', '1');
INSERT INTO `report_discuss` VALUES ('7', '10002', '37', '这是我的第二次举报', '2017-05-19 08:05:42', '1');
INSERT INTO `report_discuss` VALUES ('8', '10002', '37', '我就是想举报', '2017-05-19 08:14:25', '1');
INSERT INTO `report_discuss` VALUES ('9', '10002', '37', 'sdf', '2017-05-19 08:14:46', '1');
INSERT INTO `report_discuss` VALUES ('10', '10002', '36', '双方的撒啊', '2017-05-21 14:40:12', '1');
INSERT INTO `report_discuss` VALUES ('11', '10002', '35', 'sdfg的', '2017-05-21 14:41:27', '1');
INSERT INTO `report_discuss` VALUES ('12', '10002', '35', '二是如果为人格侮辱', '2017-05-21 14:41:45', '1');
INSERT INTO `report_discuss` VALUES ('13', '10002', '35', '阿什顿飞任务父', '2017-05-21 14:43:02', '1');
INSERT INTO `report_discuss` VALUES ('14', '10002', '35', '围绕提高', '2017-05-21 14:43:17', '1');
INSERT INTO `report_discuss` VALUES ('15', '10002', '34', '策划师sdfads', '2017-05-21 14:55:11', '1');
INSERT INTO `report_discuss` VALUES ('16', '10002', '32', '测试珊瑚', '2017-05-21 14:58:10', '1');
INSERT INTO `report_discuss` VALUES ('17', '10002', '31', '删除了', '2017-05-21 15:19:28', '1');
INSERT INTO `report_discuss` VALUES ('18', '10002', '25', '详细信息不符合啊', '2017-05-22 08:41:59', '0');
INSERT INTO `report_discuss` VALUES ('19', '10072', '28', '你别急', '2017-05-22 14:32:46', '1');
INSERT INTO `report_discuss` VALUES ('20', '10003', '28', '又一次', '2017-05-22 14:32:46', '1');
INSERT INTO `report_discuss` VALUES ('21', '10071', '28', '二', '2017-05-22 14:35:03', '1');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_pwd` varchar(255) DEFAULT '123123',
  `stu_name` varchar(255) DEFAULT NULL,
  `stu_sex` bit(1) DEFAULT NULL,
  `stu_birthday` date DEFAULT NULL,
  `classes_id` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT 'nophoto.png',
  `introduce` varchar(255) DEFAULT NULL COMMENT '个人介绍,个性签名',
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10074 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('10001', '123123', '鹏鹏', '', '1996-09-06', '1', 'nophoto.png', '的');
INSERT INTO `student` VALUES ('10002', '456456', '漫漫', '\0', '1998-02-23', '2', '395e1826-770f-40e5-b905-5eee38c2b2e2.jpg', '速度发货顺丰很舒服');
INSERT INTO `student` VALUES ('10003', '456456', '浩浩', '', '1996-09-13', '2', 'ab36057d-16d8-46bf-8966-607d969ee139.gif', null);
INSERT INTO `student` VALUES ('10004', '123123', '妮妮', '\0', '2017-04-03', '1', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10005', '123123', 'ss', '', '1993-04-03', '1', 'nophoto.png', '的风格萨芬个');
INSERT INTO `student` VALUES ('10006', '456456', 'shadowsocks', '', '1995-01-01', '3', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10007', '123123', '娜美', '\0', '2005-04-04', '1', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10009', '123123', '紫萱', '\0', '2009-06-03', '1', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10010', '123123', 'github', '', '1995-12-30', '6', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10011', '123123', 'java', '\0', '2005-04-05', '5', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10012', '123123', 'C#', '', '2001-12-20', '5', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10013', '123123', 'npm', '\0', '1998-02-23', '1', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10014', '123123', 'node.js', '\0', '1999-01-12', '2', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10015', '123123', 'simple', '', '1996-02-04', '3', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10017', '123123', 'into a corner', '', '2014-04-07', '9', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10018', '123123', 'corner', '\0', '2017-03-07', '2', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10032', '123123', '静', '\0', '2012-04-02', '10', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10034', '123123', '你好', '\0', '2017-04-03', '1', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10037', '123123', '毛毛', '\0', '2017-04-03', '1', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10038', '123123', '路飞', '\0', '2012-04-02', '1', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10039', '123123', '妮妮', '\0', '2012-04-03', '1', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10042', '123123', '打开面板', '\0', '2012-04-02', '1', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10047', '123123', '蚊子', '', '2014-04-16', '6', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10049', '123123', '昭昭', '\0', '1992-05-01', '1', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10050', '123123', '浩', '\0', '1996-09-13', '1', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10052', '123123', 'shadowsocks', '\0', '1995-01-01', '1', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10054', '123123', 'perfact', '', '2013-04-08', '7', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10055', '123123', 'neon', '', '2017-04-02', '7', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10057', '123123', '你好', '\0', '2017-04-03', '9', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10068', '123123', '曹毅博', '\0', '2017-04-11', '2', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10069', '123123', '鼓风机', '\0', '2017-05-02', '2', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10070', '123123', 'simplea', '', '2017-05-02', '1', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10071', '456456', '大美女', '\0', '2017-05-21', '1', 'nophoto.png', null);
INSERT INTO `student` VALUES ('10072', '456456', '大哥', '', '2017-05-22', '3', '9745ee8f-ffa3-471c-91d5-08ae0b8d89e9.jpg', '1111');
INSERT INTO `student` VALUES ('10073', '123123', '大神', '\0', '2017-05-21', '1', 'nophoto.png', null);

-- ----------------------------
-- Table structure for stu_community
-- ----------------------------
DROP TABLE IF EXISTS `stu_community`;
CREATE TABLE `stu_community` (
  `stu_id` int(11) NOT NULL COMMENT '学生id',
  `community_id` int(11) NOT NULL,
  PRIMARY KEY (`stu_id`,`community_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu_community
-- ----------------------------
INSERT INTO `stu_community` VALUES ('10002', '2');
INSERT INTO `stu_community` VALUES ('10002', '4');
INSERT INTO `stu_community` VALUES ('10003', '1');
INSERT INTO `stu_community` VALUES ('10003', '2');
INSERT INTO `stu_community` VALUES ('10004', '4');
INSERT INTO `stu_community` VALUES ('10005', '4');
INSERT INTO `stu_community` VALUES ('10006', '4');
INSERT INTO `stu_community` VALUES ('10007', '4');
INSERT INTO `stu_community` VALUES ('10008', '4');
INSERT INTO `stu_community` VALUES ('10010', '4');
INSERT INTO `stu_community` VALUES ('10012', '9');
INSERT INTO `stu_community` VALUES ('10017', '4');
INSERT INTO `stu_community` VALUES ('10050', '8');
INSERT INTO `stu_community` VALUES ('10072', '10');

-- ----------------------------
-- Table structure for stu_community_role
-- ----------------------------
DROP TABLE IF EXISTS `stu_community_role`;
CREATE TABLE `stu_community_role` (
  `stu_id` int(11) NOT NULL,
  `community_role_id` int(11) NOT NULL,
  PRIMARY KEY (`stu_id`,`community_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu_community_role
-- ----------------------------
INSERT INTO `stu_community_role` VALUES ('10001', '3');
INSERT INTO `stu_community_role` VALUES ('10002', '7');
INSERT INTO `stu_community_role` VALUES ('10009', '9');
INSERT INTO `stu_community_role` VALUES ('10012', '15');
INSERT INTO `stu_community_role` VALUES ('10050', '13');
INSERT INTO `stu_community_role` VALUES ('10072', '17');

-- ----------------------------
-- Table structure for stu_comm_request
-- ----------------------------
DROP TABLE IF EXISTS `stu_comm_request`;
CREATE TABLE `stu_comm_request` (
  `stu_id` int(11) DEFAULT NULL,
  `comm_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='这是学生请求加入社团的的表';

-- ----------------------------
-- Records of stu_comm_request
-- ----------------------------
INSERT INTO `stu_comm_request` VALUES ('10017', '2', '0');
INSERT INTO `stu_comm_request` VALUES ('10019', '4', '1');
INSERT INTO `stu_comm_request` VALUES ('10017', '4', '1');
INSERT INTO `stu_comm_request` VALUES ('10018', '4', '1');
INSERT INTO `stu_comm_request` VALUES ('10002', '5', '0');
INSERT INTO `stu_comm_request` VALUES ('10003', '4', '1');
INSERT INTO `stu_comm_request` VALUES ('10010', '3', '0');
INSERT INTO `stu_comm_request` VALUES ('10010', '4', '1');
INSERT INTO `stu_comm_request` VALUES ('10002', '8', '0');
INSERT INTO `stu_comm_request` VALUES ('10071', '10', '1');
INSERT INTO `stu_comm_request` VALUES ('10006', '10', '1');
INSERT INTO `stu_comm_request` VALUES ('10006', '10', '1');

-- ----------------------------
-- Table structure for stu_role
-- ----------------------------
DROP TABLE IF EXISTS `stu_role`;
CREATE TABLE `stu_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu_role
-- ----------------------------
INSERT INTO `stu_role` VALUES ('1', '社团团长');
INSERT INTO `stu_role` VALUES ('2', '社团管理员');

-- ----------------------------
-- Table structure for submenu
-- ----------------------------
DROP TABLE IF EXISTS `submenu`;
CREATE TABLE `submenu` (
  `submenu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '子菜单',
  `submenu_name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `parent_menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`submenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10007 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of submenu
-- ----------------------------
INSERT INTO `submenu` VALUES ('10001', '学生管理', '/student-community/jsps/back/stu-list.jsp', '1');
INSERT INTO `submenu` VALUES ('10002', '社团管理', '/student-community/jsps/back/community-list.jsp', '2');
INSERT INTO `submenu` VALUES ('10003', '被举报的讨论', '/student-community/jsps/back/reportDiscuss-list.jsp', '3');
INSERT INTO `submenu` VALUES ('10004', '申请解锁的讨论', '/student-community/jsps/back/unlockDiscuss-list.jsp', '3');
INSERT INTO `submenu` VALUES ('10005', '权限配置', '/student-community/jsps/back/role-list.jsp', '4');
INSERT INTO `submenu` VALUES ('10006', '管理人员管理', '/student-community/jsps/back/mgr-list.jsp', '5');

-- ----------------------------
-- Table structure for unlock_discuss_request
-- ----------------------------
DROP TABLE IF EXISTS `unlock_discuss_request`;
CREATE TABLE `unlock_discuss_request` (
  `unlock_discuss_id` int(11) NOT NULL AUTO_INCREMENT,
  `discuss_id` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT '讨论已经更改,请求审核',
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0' COMMENT '处理状态,0未处理,1已处理',
  PRIMARY KEY (`unlock_discuss_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of unlock_discuss_request
-- ----------------------------
INSERT INTO `unlock_discuss_request` VALUES ('1', '1', '我已经修改过了请求解封', '2017-05-15 11:16:13', '1');
INSERT INTO `unlock_discuss_request` VALUES ('2', '2', '我真的已经修改过了请求通过', '2017-05-18 23:30:57', '1');
INSERT INTO `unlock_discuss_request` VALUES ('3', '1', '讨论已经更改,请求审核', '2017-05-19 08:13:56', '1');
INSERT INTO `unlock_discuss_request` VALUES ('5', '2', '修改修改修改修改', '2017-05-18 23:30:57', '1');
INSERT INTO `unlock_discuss_request` VALUES ('6', '2', '', '2017-05-19 08:13:56', '1');
INSERT INTO `unlock_discuss_request` VALUES ('7', '37', '我这次真的认真修改了', '2017-05-19 08:13:56', '1');
INSERT INTO `unlock_discuss_request` VALUES ('8', '1', '', '2017-05-21 14:34:22', '1');
INSERT INTO `unlock_discuss_request` VALUES ('9', '1', '', '2017-05-21 14:39:25', '1');
INSERT INTO `unlock_discuss_request` VALUES ('10', '2', '我已经修改过了', '2017-05-21 14:39:23', '1');
INSERT INTO `unlock_discuss_request` VALUES ('11', '35', '', '2017-05-21 14:42:48', '1');
INSERT INTO `unlock_discuss_request` VALUES ('12', '28', '解锁吧', '2017-05-22 14:34:06', '1');
