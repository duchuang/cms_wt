/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : wt

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2015-03-18 11:08:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `wt_about`
-- ----------------------------
DROP TABLE IF EXISTS `wt_about`;
CREATE TABLE `wt_about` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of wt_about
-- ----------------------------

-- ----------------------------
-- Table structure for `wt_about_data`
-- ----------------------------
DROP TABLE IF EXISTS `wt_about_data`;
CREATE TABLE `wt_about_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of wt_about_data
-- ----------------------------

-- ----------------------------
-- Table structure for `wt_access`
-- ----------------------------
DROP TABLE IF EXISTS `wt_access`;
CREATE TABLE `wt_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `app` varchar(20) NOT NULL COMMENT '模块',
  `controller` varchar(20) NOT NULL COMMENT '控制器',
  `action` varchar(20) NOT NULL COMMENT '方法',
  `status` tinyint(4) DEFAULT '0' COMMENT '是否有效',
  KEY `role_id` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='角色权限表';

-- ----------------------------
-- Records of wt_access
-- ----------------------------

-- ----------------------------
-- Table structure for `wt_admin_panel`
-- ----------------------------
DROP TABLE IF EXISTS `wt_admin_panel`;
CREATE TABLE `wt_admin_panel` (
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '菜单ID',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `name` char(32) NOT NULL COMMENT '菜单名',
  `url` char(255) NOT NULL COMMENT '菜单地址',
  UNIQUE KEY `userid` (`mid`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='常用菜单';

-- ----------------------------
-- Records of wt_admin_panel
-- ----------------------------

-- ----------------------------
-- Table structure for `wt_articles`
-- ----------------------------
DROP TABLE IF EXISTS `wt_articles`;
CREATE TABLE `wt_articles` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of wt_articles
-- ----------------------------
INSERT INTO `wt_articles` VALUES ('6', '2', '0', '关于2015年清明节法规课课程安排的通知！', '', '', '', '', '广大学员朋友，大家好： 鉴于本周清明节放假，法规课程安排暂时调整，本期平日法规课调整为4月7日（周二）开课，上课时间为4月7、8、9日三个半天。', '0', '/index.php/Index/show/catid/6.html', '0', '99', '1', '0', 'admin', '1430477259', '1430477259', '0', '0', '0', '0', '0', '0');
INSERT INTO `wt_articles` VALUES ('7', '2', '0', '“温暖学车季”第四季——团团圆圆闹元宵！', '', '', '', '', '花初放，香自藏；花灯上，谜自忙；黄昏树梢手牵牢，花好月圆人兴旺。亲爱的朋友们，元宵节来临之际，北京公交驾校温情推出：“团团圆圆闹元宵，元宵节猜灯谜，公交驾校送好礼“活动，借此活动祝您：事事如意，家人平安吉祥，元宵快乐！ 此次猜灯谜活动自3月5日起开始，所有关注“北京公交驾校”官方微信号，成功答对所有问题者均有机会获得北京公交驾校限量纪念版精美礼品一份！（共40名获奖名额）活动详情如下：活动整体时间：201...', '0', '/index.php/Index/show/catid/7.html', '0', '99', '1', '0', 'admin', '1430477305', '1430477305', '0', '0', '0', '0', '0', '0');
INSERT INTO `wt_articles` VALUES ('8', '2', '0', '微信公众号变更的通知', '', '', '', '', '亲爱的车蜜们： 2015年为了以更好为大家服务，原微信号“北京公交驾校”将在近期停止使用。公交驾校全新认证微信公众号为&quot;北京市公交驾校&quot;也将正式投入使用。 感谢亲爱的蜜们一直以来的关注和支持，我们将投入更大的热情、真诚和努力为您做得更好。 亲们在微信中添加公众号处搜索“北京市公交驾校”或是直接输入微信号“bj-gjjx”找到我们，更有二维码直接扫码进行关注。 现在新的微信号还有“幸运之神”大转盘的有奖活动...', '0', '/index.php/Index/show/catid/8.html', '0', '99', '1', '0', 'admin', '1430477338', '1430477338', '0', '0', '0', '0', '0', '0');
INSERT INTO `wt_articles` VALUES ('9', '2', '0', '2014年中秋节放假的通知', '', '', '', '', '亲爱的学员朋友们：现将我校2014年中秋节放假时间安排如下：9月8日（周一）全校放假一天，其中大门口报名中心和招生部呼叫中心正常上班，9月9日（周二）恢复正常。报名热线：83701668特此通知，请大家相互转告。     大连万通驾校有限公司      2014年8月28日', '0', '/index.php/Index/show/catid/9.html', '0', '99', '1', '0', 'admin', '1430477401', '1430477401', '0', '0', '0', '0', '0', '0');
INSERT INTO `wt_articles` VALUES ('10', '2', '0', '安全文明驾驶技术微分享', '', '/d/file/content/2015/05/55435a7d17929.jpg', '', '', '2013年新修订的《机动车驾驶证申领和使用规定》的施行，一直以来备受社会各界的广泛关注，《新规》中：理论课时增加、科目考试更严格、交通处罚措施更为严厉，这充分说明国家对新驾驶员驾驶技术的高度重视。一时间“扣分”、“罚款”成为社会上热议的话题。如何参与交通？成为人人必须考虑的问题。 3月15日一早，百余名市民通过电话报名、微博报名等方式齐聚公交驾校，参加2015公交驾校大型安全驾驶技术分享活动。从活动现场的讲解...', '0', '/index.php/Index/show/catid/10.html', '0', '99', '1', '0', 'admin', '1430477436', '1430477436', '0', '0', '0', '0', '0', '0');
INSERT INTO `wt_articles` VALUES ('11', '2', '0', '关于成立万通驾校营销、客服两大中心的通知', '', '', '', '', '亲爱的学员您好： 公交驾校营销、客服两大中心，将于2015年正式启用，报名咨询请您致电83701668。学车过程中的约考、训练等问题请您致电60265577（早6：50点至晚21：00点），客服人员将竭诚为您服务。                                             北京市公交汽车驾驶学校有限公司                                               2015年3月12日', '0', '/index.php/Index/show/catid/11.html', '0', '99', '1', '0', 'admin', '1430477497', '1430477497', '0', '0', '0', '0', '0', '0');
INSERT INTO `wt_articles` VALUES ('12', '2', '0', '全国中小学生安全教育日活动', '', 'http://www.gjjx.com.cn/sites/default/files/upload/201503/201503261756469951.JPG', '', '', '今年3月30日，是第二十个全国中小学生安全教育日。主题是“强化安全意识，提升安全素养”。北京公交驾校作为大型国有企业始终以培养合格驾驶员，共创首都和谐交通为己任，身为“行业代表”、“质量A级单位”、“用户满意企业”、“中国驾驶行业十大影响力品牌”和“文明诚信、优质服务”示范单位，始终致力于举办、参加各类公益事业，为实现伟大中国梦尽企业的一份力。本次活动公交驾校为切实开展好安全教育日主题教育活动，使学生...', '0', '/index.php/Index/show/catid/12.html', '0', '99', '1', '0', 'admin', '1430477576', '1430477576', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `wt_articles_data`
-- ----------------------------
DROP TABLE IF EXISTS `wt_articles_data`;
CREATE TABLE `wt_articles_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of wt_articles_data
-- ----------------------------
INSERT INTO `wt_articles_data` VALUES ('1', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 6px 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: 16px;\">外地驾驶证转入北京首先应符合以下条件：</span><br style=\"margin: 0px; padding: 0px;\"/><span style=\"margin: 0px; padding: 0px; font-size: 16px;\">不能有未处理完毕的违法行为；</span><br style=\"margin: 0px; padding: 0px;\"/><span style=\"margin: 0px; padding: 0px; font-size: 16px;\">驾驶证必须是在有效期内，而且真实合法有效。</span><br style=\"margin: 0px; padding: 0px;\"/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 6px 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-size: 16px;\">符合条件情况下，申请人持外地驾驶证、身份证明、白色背景一寸彩色照片带两张，到任意车管分所和车管站办理。</span></p><p><br/></p>', '2', '10000', '', '0', '1', '');
INSERT INTO `wt_articles_data` VALUES ('2', '<p>测试</p>', '2', '10000', '', '0', '1', '');
INSERT INTO `wt_articles_data` VALUES ('3', '<p>cs</p>', '2', '10000', '', '0', '1', '');
INSERT INTO `wt_articles_data` VALUES ('7', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">花初放，香自藏；花灯上，谜自忙；黄昏树梢手牵牢，花好月圆人兴旺。亲爱的朋友们，元宵节来临之际，北京公交驾校温情推出：“团团圆圆闹元宵，元宵节猜灯谜，公交驾校送好礼“活动，借此活动祝您：事事如意，家人平安吉祥，元宵快乐！</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp; 此次猜灯谜活动自3月5日起开始，所有关注“北京公交驾校”官方微信号，成功答对所有问题者均有机会获得北京公交驾校限量纪念版精美礼品一份！（共40名获奖名额）</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">活动详情如下：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">活动整体时间：2015年3月5日至2015年3月31日</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">灯谜发布时间：2015年3月5日</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">活动答题时间：2015年3月5日——12日</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">获奖名单发布时间：2015年3月13日</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">活动兑奖时间：2015年3月13日——31日</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">部分精美奖品如下：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 公交驾校纪念版扑克牌</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 公交驾校纪念版修甲6件套</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 公交驾校纪念版磨砂玻璃杯</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 公交驾校纪念版豪华签字笔等精美礼品</span><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">活动玩法：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 请关注“北京公交驾校”官方微信号，公交驾校“温暖学车季第四季——团团圆圆闹元宵！元宵节猜灯谜，公交驾校送好礼！</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><br/></p><ul class=\" list-paddingleft-2\"><li><p><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 兑奖流程如下：</span></p></li><li><p><span style=\"font-size: 16px;\"><br/></span><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;凭获奖本人手机登陆获奖微信号码，到我校A座207室领取精美礼品（工作日）。</span></p></li><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 小伙伴们，还在犹豫什么？就是现在，来关注北京公交驾校微信公众号，我们一起团团圆圆闹元宵喽！</span></p></ul><p><br/></p>', '2', '10000', '', '0', '1', '');
INSERT INTO `wt_articles_data` VALUES ('6', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp;广大学员朋友，大家好：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp; 鉴于本周清明节放假，法规课程安排暂时调整，本期平日法规课调整为4月7日（周二）开课，上课时间为4月7、8、9日三个半天。</span></p><p><br/></p>', '2', '10000', '', '0', '1', '');
INSERT INTO `wt_articles_data` VALUES ('8', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">亲爱的车蜜们：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp; 2015年为了以更好为大家服务，原微信号“北京公交驾校”将在近期停止使用。公交驾校全新认证微信公众号为&quot;北京市公交驾校&quot;也将正式投入使用。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp; 感谢亲爱的蜜们一直以来的关注和支持，我们将投入更大的热情、真诚和努力为您做得更好。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp; 亲们在微信中添加公众号处搜索“北京市公交驾校”或是直接输入微信号“bj-gjjx”找到我们，更有二维码直接扫码进行关注。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp;&nbsp; &nbsp;现在新的微信号还有“幸运之神”大转盘的有奖活动，快去关注和参与吧。</span></p><p><br/></p>', '2', '10000', '', '0', '1', '');
INSERT INTO `wt_articles_data` VALUES ('9', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">亲爱的学员朋友们：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">现将我校2014年中秋节放假时间安排如下：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">9月8日（周一）全校放假一天，其中大门口报名中心和招生部呼叫中心正常上班，9月9日（周二）恢复正常。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">报名热线：83701668</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">特此通知，请大家相互转告。</span></p><p style=\"text-align:center;margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;大连万通驾校有限公司</span></p><p style=\"text-align:center;margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2014年8月28日</span></p><p><br/></p>', '2', '10000', '', '0', '1', '');
INSERT INTO `wt_articles_data` VALUES ('10', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">2013年新修订的《机动车驾驶证申领和使用规定》的施行，一直以来备受社会各界的广泛关注，《新规》中：理论课时增加、科目考试更严格、交通处罚措施更为严厉，这充分说明国家对新驾驶员驾驶技术的高度重视。一时间“扣分”、“罚款”成为社会上热议的话题。如何参与交通？成为人人必须考虑的问题。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp; 3月15日一早，百余名市民通过电话报名、微博报名等方式齐聚公交驾校，参加2015公交驾校大型安全驾驶技术分享活动。从活动现场的讲解与体验，学习更多交通安全知识，化解交通法规疑惑；了解汽车驾驶技能，培养自由驾车乐趣。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\"><img width=\"600\" height=\"400\" align=\"middle\" alt=\"\" src=\"/d/file/content/2015/05/55435a7d17929.jpg\" style=\"margin: auto; padding: 0px; display: block; max-width: 590px;\"/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px; background-color: rgb(192, 192, 192);\">一、交通法规深入人心</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp; 在活动的主会场，参与者们通过公交驾校优秀法陪老师的生动讲解，将文明交通礼仪牢记心中，现场还有多种互动答题，在这种寓教于乐中，大家都收获着属于自己那份驾驶成果。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\"><img align=\"middle\" alt=\"\" src=\"/d/file/content/2015/05/55435a7e9cd67.jpg\" style=\"margin: auto; padding: 0px; display: block; max-width: 590px;\"/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\"><img align=\"middle\" alt=\"\" src=\"/d/file/content/2015/05/55435a7ff2236.jpg\" style=\"margin: auto; padding: 0px; display: block; max-width: 590px;\"/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px; background-color: rgb(192, 192, 192);\">二、实际操作环环相扣</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp; 让参与者通过实际对车辆的驾驶，从中发现自己平时驾驶操作中的一些错误行为，或是一些容易让人忽略的细节，并且对驾驶技能上加以指点，使得参与者在以后对车辆驾驶上也可以游刃有余。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp; 在更换轮胎等PK环节上，参与者们更是兴致勃勃，在公交驾校专业的指导下，参与者们由最初的惊慌失措，手忙脚乱，到后来有条不紊，平稳对待车辆一切突发问题。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\"><img align=\"middle\" alt=\"\" src=\"/d/file/content/2015/05/55435a8135a39.jpg\" style=\"margin: auto; padding: 0px; display: block; max-width: 590px;\"/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\"><img align=\"middle\" alt=\"\" src=\"/d/file/content/2015/05/55435a82338fa.jpg\" style=\"margin: auto; padding: 0px; display: block; max-width: 590px;\"/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px; background-color: rgb(192, 192, 192);\">三、寓教于乐还享优惠</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp; 公交驾校李伟校长表示：希望通过这次分享活动后，所有参与者都能对交通法规有个全新的认识；安全意识有个新的提高；对驾驶的兴趣由此产生；面对生活更加自信；精神面貌更加阳光。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp; 据悉，当天参加活动的参与者不仅可以全程免费体验驾驶乐趣，更享有精美纪念品。在参与PK环节中获胜的佼佼者更享有价值300元不等的学车优惠。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\"><img align=\"middle\" alt=\"\" src=\"/d/file/content/2015/05/55435a835712b.jpg\" style=\"margin: auto; padding: 0px; display: block; max-width: 590px;\"/></span></p><p><br/></p>', '2', '10000', '', '0', '1', '');
INSERT INTO `wt_articles_data` VALUES ('11', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">亲爱的学员您好：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp; 公交驾校营销、客服两大中心，将于2015年正式启用，报名咨询请您致电83701668。学车过程中的约考、训练等问题请您致电60265577（早6：50点至晚21：00点），客服人员将竭诚为您服务。</span></p><p style=\"text-align:center;margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 北京市公交汽车驾驶学校有限公司</span></p><p style=\"text-align:center;margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2015年3月12日</span></p><p><br/></p>', '2', '10000', '', '0', '1', '');
INSERT INTO `wt_articles_data` VALUES ('12', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">今年3月30日，是第二十个全国中小学生安全教育日。主题是“强化安全意识，提升安全素养”。北京公交驾校作为大型国有企业始终以培养合格驾驶员，共创首都和谐交通为己任，身为“行业代表”、“质量A级单位”、“用户满意企业”、“中国驾驶行业十大影响力品牌”和“文明诚信、优质服务”示范单位，始终致力于举办、参加各类公益事业，为实现伟大中国梦尽企业的一份力。本次活动公交驾校为切实开展好安全教育日主题教育活动，使学生在参与活动的过程中，树立交通安全意识，掌握交通安全知识，提高自护自救能力，增强学生的安全防范意识，提高突发事件能力，在原有公交驾校“青少年交通安全训练营”的基础之上经过深入研究与创新，带来更加贴近学生生活的“新版青少年交通安全训练营”</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp; 据专业道路安全机构统计，道路交通事故是儿童的主要伤害死亡原因之一。以2010年为例，我国每年因道路交通事故，1~6岁儿童死亡人数为1841人;而针对13~20岁青少年 的数据则更为惊人，有4167名青少年因交通事故死亡。按照数量统计，是欧洲的2.5倍、美国的2.6倍。(数据来源《中华人民共和国道路交通事故统计年报(2010年度)》)</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp; 此次石景山苹果园二小的小同学们来到北京公交驾校参加新版“青少年交通安全训练营”，小朋友们先进行了全新的“交通安全小讲堂”学习交通安全知识，新的“交通安全小讲堂”利用事故案例、动画短片、课堂互动与“交通警察手势”、“交通标志标识”、“常见交通安全注意事项”等内容相互结合，更加寓教于乐贴近同学们的日常生活，让小朋友们在日常生活中，上下学、外出游玩、过马路、骑自行车、坐私家车、坐公共汽车等容易出现交通安全问题的环节上能够真正的注意到“交通安全法规”的重要性，通过重点事故案例讲解互动问答，强化小同学们日常生活中交通安全意识避免小朋友出现交通事故。石景山苹果园二小的小朋友们在本次新版“青少年交通安全训练营”的课堂上非常活跃，目不转睛的观看事故案例与各个环节的动画短片，一起和资深授课教师做交通警察手势、一起积极的抢答问题，在“交通安全小讲堂”环节后小同学们观看了生动活泼的“交通安全小影院”的交通安全动画电影，并开心的制作手工汽车。在”交通安全小影院“学习后小朋友们来到了驾校的模拟教室，学校的资深老师们手把手的教授小朋友们如何驾驶模拟机，让小朋友们第一次亲身体验驾驶的感觉，在模拟路况中小朋友们实际了解到了交通安全知识环节时老师所讲的很多交通标志标识，让小朋友对汽车驾驶和交通安全等都有了深入的了解。最后，小朋友们还参观了公交驾校“现代化园林式的大型训练场”。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp; 小朋友们在半天的“青少年交通安全训练营”活动中逐渐的了解到遵守交通法规的重要性、争先恐后的要做交通安全小天使，回到家里还要监督爸爸妈妈，活动在一片欢声笑语中结束。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp; 道路安全意识的缺乏让多少家庭后悔莫及？如何加强青少年对道路安全知识的认知能力，真正了解到各种信号、标志及标线的作用。北京公交驾校“青少年交通安全训练营”活动。将现实中道路安全搬进了课堂，生动的老师讲解，逼真的模拟环境，交警的真人演示，诚挚邀请北京各大中小学校学生参加，增强青少年的交通安全意识，提高大家的自我保护能力。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">青少年交通安全训练营热线010-83701668</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\">以下为此次活动的图片记录：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\"><img alt=\"\" align=\"middle\" src=\"http://www.gjjx.com.cn/sites/default/files/upload/201503/201503261756469951.JPG\" width=\"600\" height=\"400\" style=\"margin: auto; padding: 0px; display: block; max-width: 590px;\"/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\"><img alt=\"\" align=\"middle\" src=\"http://www.gjjx.com.cn/sites/default/files/upload/201503/201503261757104603.JPG\" width=\"600\" height=\"400\" style=\"margin: auto; padding: 0px; display: block; max-width: 590px;\"/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\"><img alt=\"\" align=\"middle\" src=\"/d/file/content/2015/05/55435b1d0775d.jpg\" width=\"600\" height=\"400\" style=\"margin: auto; padding: 0px; display: block; max-width: 590px;\"/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\"><img alt=\"\" align=\"middle\" src=\"http://www.gjjx.com.cn/sites/default/files/upload/201503/201503261757504029.JPG\" width=\"600\" height=\"400\" style=\"margin: auto; padding: 0px; display: block; max-width: 590px;\"/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\"><img alt=\"\" align=\"middle\" src=\"http://www.gjjx.com.cn/sites/default/files/upload/201503/201503261758115822.JPG\" width=\"600\" height=\"400\" style=\"margin: auto; padding: 0px; display: block; max-width: 590px;\"/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-size: 16px;\"><img alt=\"\" align=\"middle\" src=\"http://www.gjjx.com.cn/sites/default/files/upload/201503/201503261758306049.JPG\" width=\"600\" height=\"400\" style=\"margin: auto; padding: 0px; display: block; max-width: 590px;\"/></span></p><p><br/></p>', '2', '10000', '', '0', '1', '');

-- ----------------------------
-- Table structure for `wt_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `wt_attachment`;
CREATE TABLE `wt_attachment` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '附件ID',
  `module` char(15) NOT NULL COMMENT '模块名称',
  `catid` smallint(5) NOT NULL COMMENT '栏目ID',
  `filename` char(50) NOT NULL COMMENT '上传附件名称',
  `filepath` char(200) NOT NULL COMMENT '附件路径',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '附件大小',
  `fileext` char(10) NOT NULL COMMENT '附件扩展名',
  `isimage` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为图片 1为图片',
  `isthumb` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为缩略图 1为缩略图',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上传用户ID',
  `isadmin` tinyint(1) NOT NULL COMMENT '是否后台用户上传',
  `uploadtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `uploadip` char(15) NOT NULL COMMENT '上传ip',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '附件使用状态',
  `authcode` char(32) NOT NULL COMMENT '附件路径MD5值',
  PRIMARY KEY (`aid`),
  KEY `authcode` (`authcode`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wt_attachment
-- ----------------------------
INSERT INTO `wt_attachment` VALUES ('4', 'content', '8', 'cx.png', 'content/2015/04/5540aebfa5c48.png', '2662', 'png', '1', '0', '1', '1', '1430302399', '0.0.0.0', '1', '71b473bf41f5c7f233a1f6dbef36a0ea');
INSERT INTO `wt_attachment` VALUES ('2', 'content', '1', 'a.jpg', 'content/2015/04/5538d67bed544.jpg', '7724', 'jpg', '1', '0', '1', '1', '1429788283', '210.30.49.103', '0', 'd6825124087fa02f24b43f19d80315b0');
INSERT INTO `wt_attachment` VALUES ('3', 'content', '3', 'a02946bca8764fada1fcf47e1262efe5_94x119.jpg', 'content/2015/03/551227dc9d768.jpg', '9802', 'jpg', '1', '0', '1', '1', '1427253212', '0.0.0.0', '1', 'd55fa79287fe7247a3dc7f53ba712e66');
INSERT INTO `wt_attachment` VALUES ('5', 'content', '8', 'ks.png', 'content/2015/04/5540aedb956e3.png', '1449', 'png', '1', '0', '1', '1', '1430302427', '0.0.0.0', '1', 'a4a7f4932f97331f6148cb874ae8e6d2');
INSERT INTO `wt_attachment` VALUES ('6', 'content', '8', 'yy.png', 'content/2015/04/5540aef26c09f.png', '998', 'png', '1', '0', '1', '1', '1430302450', '0.0.0.0', '1', '1192a267cae4010659db79b4122d0068');
INSERT INTO `wt_attachment` VALUES ('7', 'content', '8', 'da.png', 'content/2015/04/5540af0b4f07f.png', '1125', 'png', '1', '0', '1', '1', '1430302475', '0.0.0.0', '1', 'e8da516ecf5c250a95d6e487f025a454');
INSERT INTO `wt_attachment` VALUES ('8', 'content', '8', 'tt.png', 'content/2015/04/5540af22eb75a.png', '2036', 'png', '1', '0', '1', '1', '1430302498', '0.0.0.0', '1', '7571373216f80bfd44875b2d3adf9383');
INSERT INTO `wt_attachment` VALUES ('9', 'content', '8', 'bm.png', 'content/2015/04/5540af444bee5.png', '2631', 'png', '1', '0', '1', '1', '1430302532', '0.0.0.0', '1', '03c2185e78c51fb503522196c6761a1e');
INSERT INTO `wt_attachment` VALUES ('10', 'content', '3', '6B9DB3EC1672587BD646F9D11558DA71.png', 'content/2015/04/5540b08c4daea.png', '39301', 'png', '1', '0', '1', '1', '1430302860', '192.168.2.3', '0', '4530481da4c73673d50a0ee583454f1f');
INSERT INTO `wt_attachment` VALUES ('11', 'content', '3', '2FD1ACF88111F29A5D44B5C99C9140CB.png', 'content/2015/04/5540bf5915454.png', '32968', 'png', '1', '0', '1', '1', '1430306649', '192.168.2.3', '0', 'bb5d16a5410628e8d1bd66dcff0a1772');
INSERT INTO `wt_attachment` VALUES ('12', 'content', '3', '2FD1ACF88111F29A5D44B5C99C9140CB.png', 'content/2015/04/5540bfa60985b.png', '32968', 'png', '1', '0', '1', '1', '1430306726', '192.168.2.3', '0', '554d89857d8f8f8592c26ea31137bf18');
INSERT INTO `wt_attachment` VALUES ('13', 'content', '3', '6B9DB3EC1672587BD646F9D11558DA71.png', 'content/2015/04/5540c03338579.png', '39301', 'png', '1', '0', '1', '1', '1430306867', '192.168.2.3', '0', 'ee18b4ed352291217210b2d4dbfbe260');
INSERT INTO `wt_attachment` VALUES ('14', 'content', '3', '6B9DB3EC1672587BD646F9D11558DA71.png', 'content/2015/04/5540c04e01ad2.png', '39301', 'png', '1', '0', '1', '1', '1430306893', '192.168.2.3', '0', 'd7d46f005bbb7e5de00e9db5ccafe360');
INSERT INTO `wt_attachment` VALUES ('15', 'content', '3', '6B9DB3EC1672587BD646F9D11558DA71.png', 'content/2015/04/5540c099f332e.png', '39301', 'png', '1', '0', '1', '1', '1430306969', '192.168.2.3', '0', '70bc351ecb1750e6e9f6b84369302674');
INSERT INTO `wt_attachment` VALUES ('16', 'content', '3', '6B9DB3EC1672587BD646F9D11558DA71.png', 'content/2015/04/5540c0abe5db5.png', '39301', 'png', '1', '0', '1', '1', '1430306987', '192.168.2.3', '0', 'f34609cd720910d637553648b2d57e4e');
INSERT INTO `wt_attachment` VALUES ('17', 'content', '3', '6B9DB3EC1672587BD646F9D11558DA71.png', 'content/2015/04/5540c0e27b38f.png', '39301', 'png', '1', '0', '1', '1', '1430307042', '192.168.2.3', '0', 'eaa5565686f2264b4b98092753cbeecc');
INSERT INTO `wt_attachment` VALUES ('18', 'content', '3', '2FD1ACF88111F29A5D44B5C99C9140CB.png', 'content/2015/04/5540c13c29728.png', '32968', 'png', '1', '0', '1', '1', '1430307132', '192.168.2.3', '0', '5affc584d6785ebec45565a7ed429515');
INSERT INTO `wt_attachment` VALUES ('19', 'content', '3', '6B9DB3EC1672587BD646F9D11558DA71.png', 'content/2015/04/5540c36e247d7.png', '39301', 'png', '1', '0', '1', '1', '1430307694', '192.168.2.3', '0', 'faad7ef1be159682ac7d8ed107b1dfc0');
INSERT INTO `wt_attachment` VALUES ('20', 'content', '3', '2FD1ACF88111F29A5D44B5C99C9140CB.png', 'content/2015/04/5540cd84498eb.png', '32968', 'png', '1', '0', '1', '1', '1430310276', '192.168.2.3', '0', 'ca8fcb89e18755541c003dfae1f011f5');
INSERT INTO `wt_attachment` VALUES ('21', 'content', '3', '6B9DB3EC1672587BD646F9D11558DA71.png', 'content/2015/04/5540cdc5f2aa0.png', '39301', 'png', '1', '0', '1', '1', '1430310341', '192.168.2.3', '0', 'b137b750db55948944a63af488516c7a');
INSERT INTO `wt_attachment` VALUES ('22', 'content', '3', '2FD1ACF88111F29A5D44B5C99C9140CB.png', 'content/2015/04/5540cdd621faa.png', '32968', 'png', '1', '0', '1', '1', '1430310358', '192.168.2.3', '0', '587e8d72377f651308aae7cf4b7bd6e1');
INSERT INTO `wt_attachment` VALUES ('23', 'content', '3', '6B9DB3EC1672587BD646F9D11558DA71.png', 'content/2015/04/5540ce7237353.png', '39301', 'png', '1', '0', '1', '1', '1430310514', '192.168.2.3', '0', '507271d966e1c4d1d4a358e4348676f5');
INSERT INTO `wt_attachment` VALUES ('24', 'content', '3', '6B9DB3EC1672587BD646F9D11558DA71.png', 'content/2015/04/5540cecd69ac4.png', '39301', 'png', '1', '0', '1', '1', '1430310605', '192.168.2.3', '0', '2ea23e637c1155e53eb0260e4c033718');
INSERT INTO `wt_attachment` VALUES ('25', 'content', '3', '2FD1ACF88111F29A5D44B5C99C9140CB.png', 'content/2015/04/5540cfc566d28.png', '32968', 'png', '1', '0', '1', '1', '1430310853', '192.168.2.3', '0', '72f308b0f8da50f2f815e31a1d123b01');
INSERT INTO `wt_attachment` VALUES ('26', 'content', '3', '6B9DB3EC1672587BD646F9D11558DA71.png', 'content/2015/04/5540d0212aacf.png', '39301', 'png', '1', '0', '1', '1', '1430310945', '192.168.2.3', '0', '4c2db2ae7358eeab6f91076b72657796');
INSERT INTO `wt_attachment` VALUES ('27', 'content', '3', '6B9DB3EC1672587BD646F9D11558DA71.png', 'content/2015/04/5540d05de6248.png', '39301', 'png', '1', '0', '1', '1', '1430311005', '192.168.2.3', '0', '81ed59ba976df5f368090a4c8789bfb2');
INSERT INTO `wt_attachment` VALUES ('28', 'content', '3', '6B9DB3EC1672587BD646F9D11558DA71.png', 'content/2015/04/5540d08153bd7.png', '39301', 'png', '1', '0', '1', '1', '1430311041', '192.168.2.3', '0', '468f59d42536f960d5c42fe68d1b7dae');
INSERT INTO `wt_attachment` VALUES ('29', 'content', '3', '6B9DB3EC1672587BD646F9D11558DA71.png', 'content/2015/04/5540d107e8314.png', '39301', 'png', '1', '0', '1', '1', '1430311175', '192.168.2.3', '0', '0b81bbbef71ff6816fa6052b8dd02c16');
INSERT INTO `wt_attachment` VALUES ('30', 'content', '3', '6B9DB3EC1672587BD646F9D11558DA71.png', 'content/2015/04/5540d42497701.png', '39301', 'png', '1', '0', '1', '1', '1430311972', '192.168.2.3', '0', '84b30a4605130e1aa12f8fc11cba5839');
INSERT INTO `wt_attachment` VALUES ('31', 'content', '3', '2FD1ACF88111F29A5D44B5C99C9140CB.png', 'content/2015/04/5541acd993d3a.png', '32968', 'png', '1', '0', '1', '1', '1430367449', '192.168.2.3', '0', '4222a64fa5c1233af152fb5727fbfc24');
INSERT INTO `wt_attachment` VALUES ('32', 'content', '3', '6B9DB3EC1672587BD646F9D11558DA71.png', 'content/2015/04/5541ad6447f29.png', '39301', 'png', '1', '0', '1', '1', '1430367588', '192.168.2.3', '0', '6324af3a080c62d0ccd88f1dd230613c');
INSERT INTO `wt_attachment` VALUES ('33', 'content', '3', '6B9DB3EC1672587BD646F9D11558DA71.png', 'content/2015/04/5541ae429bfdf.png', '39301', 'png', '1', '0', '1', '1', '1430367810', '192.168.2.3', '0', '4b7e2544c44b84f322ee0aa2ab38c7ac');
INSERT INTO `wt_attachment` VALUES ('34', 'content', '3', '6B9DB3EC1672587BD646F9D11558DA71.png', 'content/2015/04/5541ae6993ef7.png', '39301', 'png', '1', '0', '1', '1', '1430367849', '192.168.2.3', '0', '54d07658f5d6fc616e09c99cfaca5099');
INSERT INTO `wt_attachment` VALUES ('35', 'content', '3', '6B9DB3EC1672587BD646F9D11558DA71.png', 'content/2015/04/5541ae9ccbdb2.png', '39301', 'png', '1', '0', '1', '1', '1430367900', '192.168.2.3', '0', '34dbd3a90214ee3fe25caf7d66020e60');
INSERT INTO `wt_attachment` VALUES ('36', 'content', '3', '6B9DB3EC1672587BD646F9D11558DA71.png', 'content/2015/04/5541aedcc504c.png', '39301', 'png', '1', '0', '1', '1', '1430367964', '192.168.2.3', '0', '2100ae50744d5eb6b4882a6ad89c81d7');
INSERT INTO `wt_attachment` VALUES ('37', 'content', '3', '6B9DB3EC1672587BD646F9D11558DA71.png', 'content/2015/04/5541b186d7fb6.png', '39301', 'png', '1', '0', '1', '1', '1430368646', '192.168.2.3', '0', 'deede1571bbc689af684783c699a200e');
INSERT INTO `wt_attachment` VALUES ('38', 'content', '3', 'wantong1.jpg', 'content/2015/04/5541c3140cc12.jpg', '20045', 'jpg', '1', '0', '1', '1', '1430373139', '192.168.2.3', '0', '64570724b6a01384840a6fdd22baf8b6');
INSERT INTO `wt_attachment` VALUES ('39', 'content', '3', 'wantong1.jpg', 'content/2015/04/5541c3cf44e18.jpg', '20045', 'jpg', '1', '0', '1', '1', '1430373327', '192.168.2.3', '0', '8a24b0e7c786f6bfea6c49e114dd5f81');
INSERT INTO `wt_attachment` VALUES ('40', 'content', '3', 'wantong1.jpg', 'content/2015/04/5541c483c6224.jpg', '20045', 'jpg', '1', '0', '1', '1', '1430373507', '192.168.2.3', '0', 'b743517d88017ce2bdf32023f1eb3264');
INSERT INTO `wt_attachment` VALUES ('41', 'content', '3', 'wantong2.jpg', 'content/2015/04/5541c49decb8c.jpg', '21669', 'jpg', '1', '0', '1', '1', '1430373533', '192.168.2.3', '0', 'c380806a938c574ad01e5b9c33456a77');
INSERT INTO `wt_attachment` VALUES ('42', 'content', '3', 'wantong3.jpg', 'content/2015/04/5541c4bb2643c.jpg', '13059', 'jpg', '1', '0', '1', '1', '1430373563', '192.168.2.3', '0', '42e58cbcf28d6515096004c8c6aa36e5');
INSERT INTO `wt_attachment` VALUES ('43', 'content', '1', '89125342604e0c63800adb7296a058ae_179x121.jpg', 'content/2015/05/554359564dc9e.jpg', '6324', 'jpg', '1', '0', '1', '1', '1430477142', '192.168.2.2', '1', '3d784dd4f67d3e7c14c3f298aea58186');
INSERT INTO `wt_attachment` VALUES ('44', 'content', '2', '201503161647385049.jpg', 'content/2015/05/55435a7d17929.jpg', '50376', 'jpg', '1', '0', '0', '1', '1430477437', '192.168.2.2', '1', 'fbe542e43ffaf986ea797876c9647408');
INSERT INTO `wt_attachment` VALUES ('45', 'content', '2', '201503161648072819.jpg', 'content/2015/05/55435a7e9cd67.jpg', '108979', 'jpg', '1', '0', '0', '1', '1430477437', '192.168.2.2', '1', '8ea49cf2f0c0a7b601c8b34d0defbfb8');
INSERT INTO `wt_attachment` VALUES ('46', 'content', '2', '201503161648249439.jpg', 'content/2015/05/55435a7ff2236.jpg', '46953', 'jpg', '1', '0', '0', '1', '1430477437', '192.168.2.2', '1', '3b54d78ae9b8c9377e082f92839308e0');
INSERT INTO `wt_attachment` VALUES ('47', 'content', '2', '201503161648514663.jpg', 'content/2015/05/55435a8135a39.jpg', '95158', 'jpg', '1', '0', '0', '1', '1430477437', '192.168.2.2', '1', '9ea222c83a3b7d12e51c2a69b341a99d');
INSERT INTO `wt_attachment` VALUES ('48', 'content', '2', '201503161649012293.jpg', 'content/2015/05/55435a82338fa.jpg', '117816', 'jpg', '1', '0', '0', '1', '1430477437', '192.168.2.2', '1', '4561adcb106cbe21b524eb9f2e91056f');
INSERT INTO `wt_attachment` VALUES ('49', 'content', '2', '201503161649141271.JPG', 'content/2015/05/55435a835712b.jpg', '45092', 'jpg', '1', '0', '0', '1', '1430477437', '192.168.2.2', '1', '0fb979e5f5f67b7ca9da895d96308018');
INSERT INTO `wt_attachment` VALUES ('50', 'content', '2', '201503261757319405.JPG', 'content/2015/05/55435b1d0775d.jpg', '1358675', 'jpg', '1', '0', '0', '1', '1430477576', '192.168.2.2', '1', '013e3554c4ea9fd6a786c1e511b23930');
INSERT INTO `wt_attachment` VALUES ('51', 'content', '1', '89125342604e0c63800adb7296a058ae_179x121.jpg', 'content/2015/05/55435c62b2cd9.jpg', '6324', 'jpg', '1', '0', '1', '1', '1430477922', '192.168.2.2', '0', 'a6aec4e9f473e518aee93c2806557433');
INSERT INTO `wt_attachment` VALUES ('52', 'content', '1', '89125342604e0c63800adb7296a058ae_179x121.jpg', 'content/2015/05/55435ce184813.jpg', '6324', 'jpg', '1', '0', '1', '1', '1430478049', '192.168.2.2', '1', '033a13df4e3b814c5176aeac5b180dda');
INSERT INTO `wt_attachment` VALUES ('53', 'content', '1', '89dfc1a6cb519f55c4ac75b1a613cc5b_299x202.jpg', 'content/2015/05/55435d1c3978b.jpg', '15023', 'jpg', '1', '0', '1', '1', '1430478108', '192.168.2.2', '1', 'bef3965862b5f3df4dc4ece7cf3bd448');
INSERT INTO `wt_attachment` VALUES ('54', 'content', '1', '89dfc1a6cb519f55c4ac75b1a613cc5b_299x202.jpg', 'content/2015/05/55435d72766d8.jpg', '15023', 'jpg', '1', '0', '1', '1', '1430478194', '192.168.2.2', '1', '3f92263e0733b48d71729ba91707b316');
INSERT INTO `wt_attachment` VALUES ('55', 'content', '3', '37d2ecb4a3d39088da0833e55add65a8_94x119.jpg', 'content/2015/05/55435e969c593.jpg', '2141', 'jpg', '1', '0', '1', '1', '1430478486', '192.168.2.2', '1', '9c721c70ca6bed4c19cdfd959c9ee98d');
INSERT INTO `wt_attachment` VALUES ('56', 'content', '3', '4d22eb915c62b41f2564c7c55564372b_94x119.jpg', 'content/2015/05/55435f10f0fca.jpg', '8402', 'jpg', '1', '0', '1', '1', '1430478608', '192.168.2.2', '1', '45e2935af0d01c8147ada86d0e71597a');
INSERT INTO `wt_attachment` VALUES ('57', 'content', '3', '79401ba2ad6597c1a0ecdfbfb147c61e_94x119.jpg', 'content/2015/05/55435f51acd7b.jpg', '8813', 'jpg', '1', '0', '1', '1', '1430478673', '192.168.2.2', '1', '9a456a081e3580bc177d1b3564c288d4');
INSERT INTO `wt_attachment` VALUES ('58', 'content', '3', '52bfdfcd97d43d259879ea02fde2fca3_94x119.jpg', 'content/2015/05/55435f8123cea.jpg', '9446', 'jpg', '1', '0', '1', '1', '1430478721', '192.168.2.2', '1', '7cdc6a8f17e2eec53924ac4c639b85d6');
INSERT INTO `wt_attachment` VALUES ('59', 'content', '3', '95aaa3a7c4444777ae87c4cc42bac0da_94x119.jpg', 'content/2015/05/55435fb415727.jpg', '18319', 'jpg', '1', '0', '1', '1', '1430478771', '192.168.2.2', '1', '0a22e006fa0f8ff0672742f8f1da410b');
INSERT INTO `wt_attachment` VALUES ('60', 'content', '3', 'b2117e9c611ae6ff3ca4fc82a6992239_94x119.jpg', 'content/2015/05/55435fe46a344.jpg', '9113', 'jpg', '1', '0', '1', '1', '1430478820', '192.168.2.2', '1', '6e38a6d58310992f09c5201cead683c3');
INSERT INTO `wt_attachment` VALUES ('61', 'content', '3', '42ef73bd68a07075a7cbc0c44e91e668_94x119.jpg', 'content/2015/05/5543602c16d37.jpg', '8314', 'jpg', '1', '0', '1', '1', '1430478892', '192.168.2.2', '1', '5d390b3f0e993eeb10c02637e37d99e2');
INSERT INTO `wt_attachment` VALUES ('62', 'contents', '12', '5541c49decb8c.jpg', 'contents/2015/05/5544988fa9728.jpg', '1377413', 'jpg', '1', '0', '1', '1', '1430558863', '192.168.2.2', '1', 'fbd69733912fd72d812a28ca3029bb9a');

-- ----------------------------
-- Table structure for `wt_attachment_index`
-- ----------------------------
DROP TABLE IF EXISTS `wt_attachment_index`;
CREATE TABLE `wt_attachment_index` (
  `keyid` char(30) NOT NULL COMMENT '关联id',
  `aid` char(10) NOT NULL COMMENT '附件ID',
  KEY `keyid` (`keyid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件关系表';

-- ----------------------------
-- Records of wt_attachment_index
-- ----------------------------
INSERT INTO `wt_attachment_index` VALUES ('c-1-1', '1');
INSERT INTO `wt_attachment_index` VALUES ('c-1-', '0');
INSERT INTO `wt_attachment_index` VALUES ('c-3-', '3');
INSERT INTO `wt_attachment_index` VALUES ('c-8-', '4');
INSERT INTO `wt_attachment_index` VALUES ('c-8-', '5');
INSERT INTO `wt_attachment_index` VALUES ('c-8-', '6');
INSERT INTO `wt_attachment_index` VALUES ('c-8-', '7');
INSERT INTO `wt_attachment_index` VALUES ('c-8-', '8');
INSERT INTO `wt_attachment_index` VALUES ('c-8-', '9');
INSERT INTO `wt_attachment_index` VALUES ('c-1-', '43');
INSERT INTO `wt_attachment_index` VALUES ('c-2-10', '44');
INSERT INTO `wt_attachment_index` VALUES ('c-2-10', '45');
INSERT INTO `wt_attachment_index` VALUES ('c-2-10', '46');
INSERT INTO `wt_attachment_index` VALUES ('c-2-10', '47');
INSERT INTO `wt_attachment_index` VALUES ('c-2-10', '48');
INSERT INTO `wt_attachment_index` VALUES ('c-2-10', '49');
INSERT INTO `wt_attachment_index` VALUES ('c-2-12', '50');
INSERT INTO `wt_attachment_index` VALUES ('c-1-', '52');
INSERT INTO `wt_attachment_index` VALUES ('c-1-', '53');
INSERT INTO `wt_attachment_index` VALUES ('c-1-', '54');
INSERT INTO `wt_attachment_index` VALUES ('c-3-', '55');
INSERT INTO `wt_attachment_index` VALUES ('c-3-', '56');
INSERT INTO `wt_attachment_index` VALUES ('c-3-', '57');
INSERT INTO `wt_attachment_index` VALUES ('c-3-5', '58');
INSERT INTO `wt_attachment_index` VALUES ('c-3-6', '59');
INSERT INTO `wt_attachment_index` VALUES ('c-3-7', '60');
INSERT INTO `wt_attachment_index` VALUES ('c-3-8', '61');
INSERT INTO `wt_attachment_index` VALUES ('catid-12', '62');

-- ----------------------------
-- Table structure for `wt_behavior`
-- ----------------------------
DROP TABLE IF EXISTS `wt_behavior`;
CREATE TABLE `wt_behavior` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` char(30) NOT NULL COMMENT '行为唯一标识',
  `title` char(80) NOT NULL DEFAULT '' COMMENT '行为说明',
  `remark` char(140) NOT NULL DEFAULT '' COMMENT '行为描述',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-控制器，2-视图',
  `status` tinyint(2) NOT NULL COMMENT '状态（0：禁用，1：正常）',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否系统',
  `module` char(20) NOT NULL COMMENT '所属模块',
  `datetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='系统行为表';

-- ----------------------------
-- Records of wt_behavior
-- ----------------------------
INSERT INTO `wt_behavior` VALUES ('1', 'app_init', '应用初始化标签位', '应用初始化标签位', '1', '1', '1', '', '1381021393');
INSERT INTO `wt_behavior` VALUES ('2', 'path_info', 'PATH_INFO检测标签位', 'PATH_INFO检测标签位', '1', '1', '1', '', '1381021411');
INSERT INTO `wt_behavior` VALUES ('3', 'app_begin', '应用开始标签位', '应用开始标签位', '1', '1', '1', '', '1381021424');
INSERT INTO `wt_behavior` VALUES ('4', 'action_name', '操作方法名标签位', '操作方法名标签位', '1', '1', '1', '', '1381021437');
INSERT INTO `wt_behavior` VALUES ('5', 'action_begin', '控制器开始标签位', '控制器开始标签位', '1', '1', '1', '', '1381021450');
INSERT INTO `wt_behavior` VALUES ('6', 'view_begin', '视图输出开始标签位', '视图输出开始标签位', '1', '1', '1', '', '1381021463');
INSERT INTO `wt_behavior` VALUES ('7', 'view_parse', '视图解析标签位', '视图解析标签位', '1', '1', '1', '', '1381021476');
INSERT INTO `wt_behavior` VALUES ('8', 'template_filter', '模板内容解析标签位', '模板内容解析标签位', '1', '1', '1', '', '1381021488');
INSERT INTO `wt_behavior` VALUES ('9', 'view_filter', '视图输出过滤标签位', '视图输出过滤标签位', '1', '1', '1', '', '1381021621');
INSERT INTO `wt_behavior` VALUES ('10', 'view_end', '视图输出结束标签位', '视图输出结束标签位', '1', '1', '1', '', '1381021631');
INSERT INTO `wt_behavior` VALUES ('11', 'action_end', '控制器结束标签位', '控制器结束标签位', '1', '1', '1', '', '1381021642');
INSERT INTO `wt_behavior` VALUES ('12', 'app_end', '应用结束标签位', '应用结束标签位', '1', '1', '1', '', '1381021654');
INSERT INTO `wt_behavior` VALUES ('13', 'appframe_rbac_init', '后台权限控制', '后台权限控制', '1', '1', '1', '', '1381023560');

-- ----------------------------
-- Table structure for `wt_behavior_log`
-- ----------------------------
DROP TABLE IF EXISTS `wt_behavior_log`;
CREATE TABLE `wt_behavior_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ruleid` int(10) NOT NULL COMMENT '行为ID',
  `guid` char(50) NOT NULL COMMENT '标识',
  `create_time` int(10) NOT NULL COMMENT '执行行为的时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='行为日志';

-- ----------------------------
-- Records of wt_behavior_log
-- ----------------------------

-- ----------------------------
-- Table structure for `wt_behavior_rule`
-- ----------------------------
DROP TABLE IF EXISTS `wt_behavior_rule`;
CREATE TABLE `wt_behavior_rule` (
  `ruleid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `behaviorid` int(11) NOT NULL COMMENT '行为id',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否系统',
  `module` char(20) NOT NULL COMMENT '规则所属模块',
  `addons` char(20) NOT NULL COMMENT '规则所属插件',
  `rule` text NOT NULL COMMENT '行为规则',
  `listorder` tinyint(3) NOT NULL DEFAULT '0' COMMENT '排序',
  `datetime` int(10) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`ruleid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='行为规则表';

-- ----------------------------
-- Records of wt_behavior_rule
-- ----------------------------
INSERT INTO `wt_behavior_rule` VALUES ('1', '1', '1', '', '', 'phpfile:BuildLiteBehavior', '0', '1381021954');
INSERT INTO `wt_behavior_rule` VALUES ('2', '3', '1', '', '', 'phpfile:ReadHtmlCacheBehavior', '0', '1381021954');
INSERT INTO `wt_behavior_rule` VALUES ('3', '12', '1', '', '', 'phpfile:ShowPageTraceBehavior', '0', '1381021954');
INSERT INTO `wt_behavior_rule` VALUES ('4', '7', '1', '', '', 'phpfile:ParseTemplateBehavior', '0', '1381021954');
INSERT INTO `wt_behavior_rule` VALUES ('5', '8', '1', '', '', 'phpfile:ContentReplaceBehavior', '0', '1381021954');
INSERT INTO `wt_behavior_rule` VALUES ('6', '9', '1', '', '', 'phpfile:WriteHtmlCacheBehavior', '0', '1381021954');
INSERT INTO `wt_behavior_rule` VALUES ('7', '1', '1', '', '', 'phpfile:AppInitBehavior|module:Common', '0', '1381021954');
INSERT INTO `wt_behavior_rule` VALUES ('8', '3', '1', '', '', 'phpfile:AppBeginBehavior|module:Common', '0', '1381021954');
INSERT INTO `wt_behavior_rule` VALUES ('9', '6', '1', '', '', 'phpfile:ViewBeginBehavior|module:Common', '0', '1381021954');

-- ----------------------------
-- Table structure for `wt_cache`
-- ----------------------------
DROP TABLE IF EXISTS `wt_cache`;
CREATE TABLE `wt_cache` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `key` char(100) NOT NULL COMMENT '缓存key值',
  `name` char(100) NOT NULL COMMENT '名称',
  `module` char(20) NOT NULL COMMENT '模块名称',
  `model` char(30) NOT NULL COMMENT '模型名称',
  `action` char(30) NOT NULL COMMENT '方法名',
  `param` char(255) NOT NULL COMMENT '参数',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否系统',
  PRIMARY KEY (`id`),
  KEY `ckey` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='缓存更新列队';

-- ----------------------------
-- Records of wt_cache
-- ----------------------------
INSERT INTO `wt_cache` VALUES ('1', 'Config', '网站配置', '', 'Config', 'config_cache', '', '1');
INSERT INTO `wt_cache` VALUES ('2', 'Module', '可用模块列表', '', 'Module', 'module_cache', '', '1');
INSERT INTO `wt_cache` VALUES ('3', 'Behavior', '行为列表', '', 'Behavior', 'behavior_cache', '', '1');
INSERT INTO `wt_cache` VALUES ('4', 'Menu', '后台菜单', 'Admin', 'Menu', 'menu_cache', '', '0');
INSERT INTO `wt_cache` VALUES ('5', 'Category', '栏目索引', 'Content', 'Category', 'category_cache', '', '0');
INSERT INTO `wt_cache` VALUES ('6', 'Model', '模型列表', 'Content', 'Model', 'model_cache', '', '0');
INSERT INTO `wt_cache` VALUES ('7', 'Urlrules', 'URL规则', 'Content', 'Urlrule', 'urlrule_cache', '', '0');
INSERT INTO `wt_cache` VALUES ('8', 'ModelField', '模型字段', 'Content', 'ModelField', 'model_field_cache', '', '0');
INSERT INTO `wt_cache` VALUES ('9', 'Position', '推荐位', 'Content', 'Position', 'position_cache', '', '0');

-- ----------------------------
-- Table structure for `wt_caochs`
-- ----------------------------
DROP TABLE IF EXISTS `wt_caochs`;
CREATE TABLE `wt_caochs` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of wt_caochs
-- ----------------------------
INSERT INTO `wt_caochs` VALUES ('1', '3', '0', '教练', '', '/d/file/content/2015/03/551227dc9d768.jpg', '', '', '0', '/index.php?a=shows&catid=3&id=1', '0', '99', '1', '0', 'admin', '1429879609', '1429879609', '0', '0', '0', '0', '0', '0');
INSERT INTO `wt_caochs` VALUES ('2', '3', '0', '杜闯', '', '/d/file/content/2015/05/55435e969c593.jpg', '', '', '0', '/index.php?a=shows&catid=3&id=2', '0', '99', '1', '0', 'admin', '1430478469', '1430478469', '0', '0', '0', '0', '0', '0');
INSERT INTO `wt_caochs` VALUES ('3', '3', '0', '土豪', '', '/d/file/content/2015/05/55435f10f0fca.jpg', '', '', '0', '/index.php?a=shows&catid=3&id=3', '0', '99', '1', '0', 'admin', '1430478594', '1430478594', '0', '0', '0', '0', '0', '0');
INSERT INTO `wt_caochs` VALUES ('4', '3', '0', '别林林', '', '/d/file/content/2015/05/55435f51acd7b.jpg', '', '', '0', '/index.php?a=shows&catid=3&id=4', '0', '99', '1', '0', 'admin', '1430478658', '1430478658', '0', '0', '0', '0', '0', '0');
INSERT INTO `wt_caochs` VALUES ('5', '3', '0', '王博', '', '/d/file/content/2015/05/55435f8123cea.jpg', '', '', '0', '/index.php?a=shows&catid=3&id=5', '0', '99', '1', '0', 'admin', '1430478724', '1430478724', '0', '0', '0', '0', '0', '0');
INSERT INTO `wt_caochs` VALUES ('6', '3', '0', '浩哥', '', '/d/file/content/2015/05/55435fb415727.jpg', '', '', '0', '/index.php?a=shows&catid=3&id=6', '0', '99', '1', '0', 'admin', '1430478774', '1430478774', '0', '0', '0', '0', '0', '0');
INSERT INTO `wt_caochs` VALUES ('7', '3', '0', '山羊', '', '/d/file/content/2015/05/55435fe46a344.jpg', '', '', '0', '/index.php?a=shows&catid=3&id=7', '0', '99', '1', '0', 'admin', '1430478834', '1430478834', '0', '0', '0', '0', '0', '0');
INSERT INTO `wt_caochs` VALUES ('8', '3', '0', '张宇晋', '', '/d/file/content/2015/05/5543602c16d37.jpg', '', '', '0', '/index.php?a=shows&catid=3&id=8', '0', '99', '1', '0', 'admin', '1430478895', '1430478895', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `wt_caochs_data`
-- ----------------------------
DROP TABLE IF EXISTS `wt_caochs_data`;
CREATE TABLE `wt_caochs_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `caoch_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `caoch_qq` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `caoch_msg` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(10) unsigned NOT NULL DEFAULT '0',
  `very` int(10) unsigned NOT NULL DEFAULT '0',
  `good` int(10) unsigned NOT NULL DEFAULT '0',
  `general` int(10) unsigned NOT NULL DEFAULT '0',
  `poor` int(10) unsigned NOT NULL DEFAULT '0',
  `very_poor` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of wt_caochs_data
-- ----------------------------
INSERT INTO `wt_caochs_data` VALUES ('1', '0', '0', '', '0', '1', '', '李贵发', '88888888', '开车开快 爱闯红灯', '1', '55', '1', '80', '5', '0');
INSERT INTO `wt_caochs_data` VALUES ('2', '0', '0', '', '0', '1', '', '杜闯', '12345678', '马路杀手，见一个杀群', '2147483647', '0', '1', '4', '0', '5');
INSERT INTO `wt_caochs_data` VALUES ('3', '0', '0', '', '0', '1', '', '土豪', '2345678', '我就是土豪', '12345678', '0', '0', '0', '0', '3');
INSERT INTO `wt_caochs_data` VALUES ('4', '0', '0', '', '0', '1', '', '别林林', '3424239842', '我姓不别，听过没', '324234535', '0', '0', '0', '0', '5');
INSERT INTO `wt_caochs_data` VALUES ('5', '0', '0', '', '0', '1', '', '王博', '346764565', '我姓王，名博，没有字', '465686798', '0', '0', '0', '0', '3');
INSERT INTO `wt_caochs_data` VALUES ('6', '0', '0', '', '0', '1', '', '浩哥', '47239482390', '我是浩哥', '2147483647', '0', '0', '0', '0', '0');
INSERT INTO `wt_caochs_data` VALUES ('7', '0', '0', '', '0', '1', '', '山羊', '4564575678', '我是山羊', '436547567', '0', '0', '0', '4', '4');
INSERT INTO `wt_caochs_data` VALUES ('8', '0', '0', '', '0', '1', '', '张宇晋', '3243546456', '我是山西人', '546546765', '0', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for `wt_category`
-- ----------------------------
DROP TABLE IF EXISTS `wt_category`;
CREATE TABLE `wt_category` (
  `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '栏目ID',
  `module` varchar(15) NOT NULL COMMENT '所属模块',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '类别',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `domain` varchar(200) DEFAULT NULL COMMENT '栏目绑定域名',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `arrparentid` varchar(255) NOT NULL COMMENT '所有父ID',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否存在子栏目，1存在',
  `arrchildid` mediumtext NOT NULL COMMENT '所有子栏目ID',
  `catname` varchar(30) NOT NULL COMMENT '栏目名称',
  `image` varchar(100) NOT NULL COMMENT '栏目图片',
  `description` mediumtext NOT NULL COMMENT '栏目描述',
  `parentdir` varchar(100) NOT NULL COMMENT '父目录',
  `catdir` varchar(30) NOT NULL COMMENT '栏目目录',
  `url` varchar(100) NOT NULL COMMENT '链接地址',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '栏目点击数',
  `setting` mediumtext NOT NULL COMMENT '相关配置信息',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `sethtml` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否生成静态',
  `letter` varchar(30) NOT NULL COMMENT '栏目拼音',
  PRIMARY KEY (`catid`),
  KEY `module` (`module`,`parentid`,`listorder`,`catid`),
  KEY `siteid` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wt_category
-- ----------------------------
INSERT INTO `wt_category` VALUES ('1', 'content', '0', '1', '', '0', '0', '0', '1', '班型信息', '', '', '', 'model_car', '/index.php?a=lists&catid=1', '0', 'a:11:{s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:17:\"category_template\";s:12:\"category.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}', '1', '1', '0', 'banxingxinxi');
INSERT INTO `wt_category` VALUES ('2', 'content', '0', '2', '', '0', '0', '0', '2', '驾校资讯', '', '', '', 'news', '/news/2.shtml', '0', 'a:13:{s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"1\";s:9:\"repagenum\";s:1:\"1\";s:14:\"content_ishtml\";s:1:\"1\";s:15:\"category_ruleid\";s:1:\"5\";s:11:\"show_ruleid\";s:2:\"17\";}', '3', '0', '1', 'jiaxiaozixun');
INSERT INTO `wt_category` VALUES ('3', 'content', '0', '4', '', '0', '0', '0', '3', '教练简介', '', '', '', 'model_coach', '/index.php?a=lists&catid=3', '0', 'a:14:{s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:17:\"category_template\";s:12:\"category.php\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}', '2', '1', '0', 'jiaolianjianjie');
INSERT INTO `wt_category` VALUES ('4', 'content', '0', '3', '', '0', '0', '0', '4', '主导航', '', '', '', 'model_main_menu', '/index.php?a=lists&catid=4', '0', 'a:14:{s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:17:\"category_template\";s:12:\"category.php\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}', '4', '1', '0', 'zhudaohang');
INSERT INTO `wt_category` VALUES ('10', 'content', '0', '11', '', '0', '', '1', '', '关于万通', '', '', '', 'about', '', '0', 'a:14:{s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:17:\"category_template\";s:12:\"category.php\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}', '0', '1', '0', 'guanyuwantong');
INSERT INTO `wt_category` VALUES ('11', 'content', '1', '0', '', '10', '', '0', '', '驾校概况', '', '', '', 'survey', '', '0', 'a:7:{s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:8:\"page.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}', '0', '1', '0', 'jiaxiaogaikuang');
INSERT INTO `wt_category` VALUES ('12', 'content', '1', '0', '', '10', '', '0', '', '驾校风采', '', '', '', 'style', '', '0', 'a:7:{s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:8:\"page.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}', '0', '1', '0', 'jiaxiaofengcai');
INSERT INTO `wt_category` VALUES ('8', 'content', '0', '3', '', '0', '0', '0', '8', '侧导航', '', '', '', 'siderMneu', '/index.php?a=lists&catid=8', '0', 'a:14:{s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:17:\"category_template\";s:12:\"category.php\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}', '0', '1', '0', 'cedaohang');
INSERT INTO `wt_category` VALUES ('13', 'content', '1', '0', '', '10', '', '0', '', '企业文化', '', '', '', 'culture', '', '0', 'a:7:{s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:8:\"page.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}', '0', '1', '0', 'qiyewenhua');
INSERT INTO `wt_category` VALUES ('14', 'content', '1', '0', '', '10', '', '0', '', '招贤纳士', '', '', '', 'recruitment', '', '0', 'a:7:{s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:8:\"page.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}', '0', '1', '0', 'zhaoxiannashi');
INSERT INTO `wt_category` VALUES ('15', 'content', '1', '0', '', '10', '', '0', '', '联系我们', '', '', '', 'contact', '', '0', 'a:7:{s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:8:\"page.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}', '0', '1', '0', 'lianxiwomen');
INSERT INTO `wt_category` VALUES ('16', 'content', '0', '12', '', '0', '', '1', '', '指南', '', '', '', 'guide', '', '0', 'a:14:{s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:17:\"category_template\";s:12:\"category.php\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}', '0', '1', '0', 'zhinan');
INSERT INTO `wt_category` VALUES ('17', 'content', '1', '0', '', '16', '', '0', '', '学车指南', '', '', '', 'learn', '', '0', 'a:7:{s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:8:\"page.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}', '0', '1', '0', 'xuechezhinan');
INSERT INTO `wt_category` VALUES ('18', 'content', '1', '0', '', '16', '', '0', '', '考试指南', '', '', '', 'examination', '', '0', 'a:7:{s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:8:\"page.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}', '0', '1', '0', 'kaoshizhinan');

-- ----------------------------
-- Table structure for `wt_category_field`
-- ----------------------------
DROP TABLE IF EXISTS `wt_category_field`;
CREATE TABLE `wt_category_field` (
  `fid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `catid` smallint(5) DEFAULT NULL COMMENT '栏目ID',
  `fieldname` varchar(30) NOT NULL COMMENT '字段名',
  `type` varchar(10) NOT NULL COMMENT '类型,input',
  `setting` mediumtext NOT NULL COMMENT '其他',
  `createtime` int(10) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目扩展字段列表';

-- ----------------------------
-- Records of wt_category_field
-- ----------------------------

-- ----------------------------
-- Table structure for `wt_category_priv`
-- ----------------------------
DROP TABLE IF EXISTS `wt_category_priv`;
CREATE TABLE `wt_category_priv` (
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `roleid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '角色或者组ID',
  `is_admin` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为管理员 1、管理员',
  `action` char(30) NOT NULL COMMENT '动作',
  KEY `catid` (`catid`,`roleid`,`is_admin`,`action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目权限表';

-- ----------------------------
-- Records of wt_category_priv
-- ----------------------------

-- ----------------------------
-- Table structure for `wt_companymsg`
-- ----------------------------
DROP TABLE IF EXISTS `wt_companymsg`;
CREATE TABLE `wt_companymsg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wt_companymsg
-- ----------------------------
INSERT INTO `wt_companymsg` VALUES ('1', '张校长', '姓名');
INSERT INTO `wt_companymsg` VALUES ('2', '4004124', '电话');
INSERT INTO `wt_companymsg` VALUES ('3', '18842656222', '手机');
INSERT INTO `wt_companymsg` VALUES ('4', '1865@qq.com', '邮箱');
INSERT INTO `wt_companymsg` VALUES ('5', '大连中山区大黑山和平路103恫90号', '地址');
INSERT INTO `wt_companymsg` VALUES ('6', '身份证,军人证', '证件类型');
INSERT INTO `wt_companymsg` VALUES ('7', '大连万通驾校', '公司名称');
INSERT INTO `wt_companymsg` VALUES ('8', '万通驾校始建于1953年，现隶属于北京巴士传媒股份有限公司。于2001年12月通过ISO9001：2000质量管理体系认证。2004年3月改制后更名为北京市公交汽车驾驶学校有限公司。1993年公交驾校筹资5千余万元，在大兴区黄村镇狼垡地区建成了占地700余亩，环境优美、设施完备、科目齐全的现代化驾驶员培训基地。', '公司简介');
INSERT INTO `wt_companymsg` VALUES ('9', '/d/file/content/2015/04/5541c483c6224.jpg', '主页背景图1');
INSERT INTO `wt_companymsg` VALUES ('10', '/d/file/content/2015/04/5541c49decb8c.jpg', '主页背景图2');
INSERT INTO `wt_companymsg` VALUES ('11', '/d/file/content/2015/04/5541c4bb2643c.jpg', '主页背景图3');
INSERT INTO `wt_companymsg` VALUES ('12', '1048229044,543553257,23456789', '客服QQ');
INSERT INTO `wt_companymsg` VALUES ('13', '1', '1');
INSERT INTO `wt_companymsg` VALUES ('14', '11', '11');
INSERT INTO `wt_companymsg` VALUES ('15', 'ddd', 'ddd');

-- ----------------------------
-- Table structure for `wt_companyusers`
-- ----------------------------
DROP TABLE IF EXISTS `wt_companyusers`;
CREATE TABLE `wt_companyusers` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT '0',
  `QQ` int(11) DEFAULT '0',
  `sex` varchar(11) DEFAULT '0',
  `content` text,
  `isHandle` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wt_companyusers
-- ----------------------------
INSERT INTO `wt_companyusers` VALUES ('1', '大连工业大学', '李贵发', '18840848462', '1048229044', '男', '哈哈', '0');
INSERT INTO `wt_companyusers` VALUES ('2', '大连工业大学', '李贵发', '18840848462', '1048229044', '男', '哈哈', '0');
INSERT INTO `wt_companyusers` VALUES ('3', '大连工业大学', '李贵发', '18840848462', '1048229044', '男', '哈哈', '1');

-- ----------------------------
-- Table structure for `wt_config`
-- ----------------------------
DROP TABLE IF EXISTS `wt_config`;
CREATE TABLE `wt_config` (
  `id` smallint(8) unsigned NOT NULL AUTO_INCREMENT,
  `varname` varchar(20) NOT NULL DEFAULT '',
  `info` varchar(100) NOT NULL DEFAULT '',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `varname` (`varname`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='网站配置表';

-- ----------------------------
-- Records of wt_config
-- ----------------------------
INSERT INTO `wt_config` VALUES ('1', 'sitename', '网站名称', '1', '大连万通驾校');
INSERT INTO `wt_config` VALUES ('2', 'siteurl', '网站网址', '1', '/');
INSERT INTO `wt_config` VALUES ('3', 'sitefileurl', '附件地址', '1', '/d/file/');
INSERT INTO `wt_config` VALUES ('4', 'siteemail', '站点邮箱', '1', '10488229044@qq.com');
INSERT INTO `wt_config` VALUES ('6', 'siteinfo', '网站介绍', '1', '大连万通驾校,大连第一驾校，大连最好的驾校');
INSERT INTO `wt_config` VALUES ('7', 'sitekeywords', '网站关键字', '1', '大连万通驾校,大连,驾校,万通,万通驾校');
INSERT INTO `wt_config` VALUES ('8', 'uploadmaxsize', '允许上传附件大小', '1', '20240');
INSERT INTO `wt_config` VALUES ('9', 'uploadallowext', '允许上传附件类型', '1', 'jpg|jpeg|gif|bmp|png|doc|docx|xls|xlsx|ppt|pptx|pdf|txt|rar|zip|swf');
INSERT INTO `wt_config` VALUES ('10', 'qtuploadmaxsize', '前台允许上传附件大小', '1', '200');
INSERT INTO `wt_config` VALUES ('11', 'qtuploadallowext', '前台允许上传附件类型', '1', 'jpg|jpeg|gif');
INSERT INTO `wt_config` VALUES ('12', 'watermarkenable', '是否开启图片水印', '1', '1');
INSERT INTO `wt_config` VALUES ('13', 'watermarkminwidth', '水印-宽', '1', '300');
INSERT INTO `wt_config` VALUES ('14', 'watermarkminheight', '水印-高', '1', '100');
INSERT INTO `wt_config` VALUES ('15', 'watermarkimg', '水印图片', '1', '/statics/images/mark_bai.png');
INSERT INTO `wt_config` VALUES ('16', 'watermarkpct', '水印透明度', '1', '80');
INSERT INTO `wt_config` VALUES ('17', 'watermarkquality', 'JPEG 水印质量', '1', '85');
INSERT INTO `wt_config` VALUES ('18', 'watermarkpos', '水印位置', '1', '7');
INSERT INTO `wt_config` VALUES ('19', 'theme', '主题风格', '1', 'Default');
INSERT INTO `wt_config` VALUES ('20', 'ftpstatus', 'FTP上传', '1', '0');
INSERT INTO `wt_config` VALUES ('21', 'ftpuser', 'FTP用户名', '1', '');
INSERT INTO `wt_config` VALUES ('22', 'ftppassword', 'FTP密码', '1', '');
INSERT INTO `wt_config` VALUES ('23', 'ftphost', 'FTP服务器地址', '1', '');
INSERT INTO `wt_config` VALUES ('24', 'ftpport', 'FTP服务器端口', '1', '21');
INSERT INTO `wt_config` VALUES ('25', 'ftppasv', 'FTP是否开启被动模式', '1', '1');
INSERT INTO `wt_config` VALUES ('26', 'ftpssl', 'FTP是否使用SSL连接', '1', '0');
INSERT INTO `wt_config` VALUES ('27', 'ftptimeout', 'FTP超时时间', '1', '10');
INSERT INTO `wt_config` VALUES ('28', 'ftpuppat', 'FTP上传目录', '1', '/');
INSERT INTO `wt_config` VALUES ('29', 'mail_type', '邮件发送模式', '1', '1');
INSERT INTO `wt_config` VALUES ('30', 'mail_server', '邮件服务器', '1', 'smtp.qq.com');
INSERT INTO `wt_config` VALUES ('31', 'mail_port', '邮件发送端口', '1', '25');
INSERT INTO `wt_config` VALUES ('32', 'mail_from', '发件人地址', '1', 'admin@abc3210.com');
INSERT INTO `wt_config` VALUES ('33', 'mail_auth', '密码验证', '1', '1');
INSERT INTO `wt_config` VALUES ('34', 'mail_user', '邮箱用户名', '1', '');
INSERT INTO `wt_config` VALUES ('35', 'mail_password', '邮箱密码', '1', '');
INSERT INTO `wt_config` VALUES ('36', 'mail_fname', '发件人名称', '1', 'ShuipFCMS管理员');
INSERT INTO `wt_config` VALUES ('37', 'domainaccess', '指定域名访问', '1', '0');
INSERT INTO `wt_config` VALUES ('38', 'generate', '是否生成首页', '1', '1');
INSERT INTO `wt_config` VALUES ('39', 'index_urlruleid', '首页URL规则', '1', '11');
INSERT INTO `wt_config` VALUES ('40', 'indextp', '首页模板', '1', 'index.php');
INSERT INTO `wt_config` VALUES ('41', 'tagurl', 'TagURL规则', '1', '8');
INSERT INTO `wt_config` VALUES ('42', 'checkcode_type', '验证码类型', '1', '0');
INSERT INTO `wt_config` VALUES ('43', 'attachment_driver', '附件驱动', '1', 'Local');

-- ----------------------------
-- Table structure for `wt_config_field`
-- ----------------------------
DROP TABLE IF EXISTS `wt_config_field`;
CREATE TABLE `wt_config_field` (
  `fid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `fieldname` varchar(30) NOT NULL COMMENT '字段名',
  `type` varchar(10) NOT NULL COMMENT '类型,input',
  `setting` mediumtext NOT NULL COMMENT '其他',
  `createtime` int(10) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='网站配置，扩展字段列表';

-- ----------------------------
-- Records of wt_config_field
-- ----------------------------

-- ----------------------------
-- Table structure for `wt_customlist`
-- ----------------------------
DROP TABLE IF EXISTS `wt_customlist`;
CREATE TABLE `wt_customlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自定义列表ID',
  `url` char(100) NOT NULL COMMENT '访问地址',
  `name` varchar(60) NOT NULL COMMENT '列表标题',
  `title` varchar(120) NOT NULL COMMENT '网页标题',
  `keywords` varchar(40) NOT NULL COMMENT '网页关键字',
  `description` text NOT NULL COMMENT '页面简介',
  `totalsql` text NOT NULL COMMENT '数据统计SQL',
  `listsql` text NOT NULL COMMENT '数据查询SQL',
  `lencord` int(11) NOT NULL DEFAULT '0' COMMENT '每页显示',
  `urlruleid` int(11) NOT NULL COMMENT 'URL规则ID',
  `urlrule` varchar(120) NOT NULL COMMENT 'URL规则',
  `template` mediumtext NOT NULL COMMENT '模板',
  `listpath` varchar(60) NOT NULL COMMENT '列表模板文件',
  `createtime` int(10) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='自定义列表';

-- ----------------------------
-- Records of wt_customlist
-- ----------------------------

-- ----------------------------
-- Table structure for `wt_customtemp`
-- ----------------------------
DROP TABLE IF EXISTS `wt_customtemp`;
CREATE TABLE `wt_customtemp` (
  `tempid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '模板ID',
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT '模板名称',
  `tempname` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '模板完整文件名',
  `temppath` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT '模板生成路径',
  `temptext` mediumtext CHARACTER SET utf8 NOT NULL COMMENT '模板内容',
  PRIMARY KEY (`tempid`),
  KEY `tempname` (`tempname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='自定义模板表';

-- ----------------------------
-- Records of wt_customtemp
-- ----------------------------

-- ----------------------------
-- Table structure for `wt_fields`
-- ----------------------------
DROP TABLE IF EXISTS `wt_fields`;
CREATE TABLE `wt_fields` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL DEFAULT '',
  `processe` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- ----------------------------
-- Records of wt_fields
-- ----------------------------
INSERT INTO `wt_fields` VALUES ('1', '211402199405143233', '杜闯', '科目一：80');

-- ----------------------------
-- Table structure for `wt_guide`
-- ----------------------------
DROP TABLE IF EXISTS `wt_guide`;
CREATE TABLE `wt_guide` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of wt_guide
-- ----------------------------

-- ----------------------------
-- Table structure for `wt_guide_data`
-- ----------------------------
DROP TABLE IF EXISTS `wt_guide_data`;
CREATE TABLE `wt_guide_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of wt_guide_data
-- ----------------------------

-- ----------------------------
-- Table structure for `wt_locking`
-- ----------------------------
DROP TABLE IF EXISTS `wt_locking`;
CREATE TABLE `wt_locking` (
  `userid` int(11) NOT NULL COMMENT '用户ID',
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `catid` smallint(5) NOT NULL COMMENT '栏目ID',
  `id` mediumint(8) NOT NULL COMMENT '信息ID',
  `locktime` int(10) NOT NULL COMMENT '锁定时间',
  KEY `userid` (`userid`),
  KEY `onlinetime` (`locktime`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='信息锁定';

-- ----------------------------
-- Records of wt_locking
-- ----------------------------
INSERT INTO `wt_locking` VALUES ('1', 'admin', '8', '13', '1430549222');
INSERT INTO `wt_locking` VALUES ('1', 'admin', '8', '14', '1430549229');

-- ----------------------------
-- Table structure for `wt_loginlog`
-- ----------------------------
DROP TABLE IF EXISTS `wt_loginlog`;
CREATE TABLE `wt_loginlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `username` char(30) NOT NULL COMMENT '登录帐号',
  `logintime` int(10) NOT NULL COMMENT '登录时间戳',
  `loginip` char(20) NOT NULL COMMENT '登录IP',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态,1为登录成功，0为登录失败',
  `password` varchar(30) NOT NULL DEFAULT '' COMMENT '尝试错误密码',
  `info` varchar(255) NOT NULL COMMENT '其他说明',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='后台登陆日志表';

-- ----------------------------
-- Records of wt_loginlog
-- ----------------------------
INSERT INTO `wt_loginlog` VALUES ('1', 'admin', '1429756352', '210.30.49.103', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('2', 'admin', '1429773779', '210.30.49.103', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('3', 'admin', '1429777971', '210.30.49.103', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('4', 'admin', '1429836199', '210.30.49.103', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('5', 'admin', '1429873339', '210.30.49.103', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('6', 'admin', '1429877519', '210.30.49.103', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('7', 'admin', '1429883468', '210.30.62.23', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('8', 'admin', '1429883988', '210.30.62.23', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('9', 'admin', '1427252879', '0.0.0.0', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('10', 'admin', '1429948391', '192.168.2.3', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('11', 'admin', '1429948413', '192.168.2.3', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('12', 'admin', '1427280021', '192.168.2.3', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('13', 'admin', '1427282164', '192.168.2.3', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('14', 'admin', '1430016336', '192.168.2.3', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('15', 'admin', '1430017038', '0.0.0.0', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('16', 'admin', '1430022482', '192.168.2.3', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('17', 'admin', '1430035477', '192.168.2.3', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('18', 'admin', '1430036206', '192.168.2.3', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('19', 'admin', '1430037473', '0.0.0.0', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('20', 'admin', '1430197617', '0.0.0.0', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('21', 'admin', '1430301748', '0.0.0.0', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('22', 'admin', '1430301888', '192.168.2.3', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('23', 'admin', '1430306570', '192.168.2.3', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('24', 'admin', '1430309251', '0.0.0.0', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('25', 'admin', '1430309316', '0.0.0.0', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('26', 'admin', '1430310014', '0.0.0.0', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('27', 'admin', '1430310218', '192.168.2.3', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('28', 'admin', '1430366954', '192.168.2.3', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('29', 'admin', '1430371455', '0.0.0.0', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('30', 'admin', '1430371716', '192.168.2.3', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('31', 'admin', '1430392787', '192.168.2.3', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('32', 'admin', '1430398834', '192.168.2.3', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('33', 'admin', '1430458124', '192.168.2.3', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('34', 'admin', '1430459491', '192.168.2.2', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('35', 'admin', '1430476789', '192.168.2.3', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('36', 'admin', '1430477121', '192.168.2.2', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('37', 'admin', '1430478809', '192.168.2.2', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('38', 'admin', '1430485171', '0.0.0.0', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('39', 'admin', '1430536578', '192.168.2.3', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('40', 'admin', '1430540877', '0.0.0.0', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('41', 'admin', '1430543269', '192.168.2.3', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('42', 'admin', '1430557614', '192.168.2.2', '1', '密码保密', '用户名登录');
INSERT INTO `wt_loginlog` VALUES ('43', 'admin', '1430569323', '192.168.2.3', '1', '密码保密', '用户名登录');

-- ----------------------------
-- Table structure for `wt_menu`
-- ----------------------------
DROP TABLE IF EXISTS `wt_menu`;
CREATE TABLE `wt_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '上级菜单',
  `app` char(20) NOT NULL COMMENT '应用标识',
  `controller` char(20) NOT NULL COMMENT '控制键',
  `action` char(20) NOT NULL COMMENT '方法',
  `parameter` char(255) NOT NULL COMMENT '附加参数',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序ID',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Records of wt_menu
-- ----------------------------
INSERT INTO `wt_menu` VALUES ('1', '缓存更新', '0', 'Admin', 'Index', 'cache', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('2', '我的面板', '0', 'Admin', 'Config', 'index', '', '0', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('3', '设置', '0', 'Admin', 'Config', 'index', '', '0', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('4', '个人信息', '2', 'Admin', 'Adminmanage', 'myinfo', '', '0', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('5', '修改个人信息', '4', 'Admin', 'Adminmanage', 'myinfo', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('6', '修改密码', '4', 'Admin', 'Adminmanage', 'chanpass', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('7', '系统设置', '3', 'Admin', 'Config', 'index', '', '0', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('8', '站点配置', '7', 'Admin', 'Config', 'index', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('9', '邮箱配置', '8', 'Admin', 'Config', 'mail', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('10', '附件配置', '8', 'Admin', 'Config', 'attach', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('11', '高级配置', '8', 'Admin', 'Config', 'addition', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('12', '扩展配置', '8', 'Admin', 'Config', 'extend', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('13', '行为管理', '7', 'Admin', 'Behavior', 'index', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('14', '行为日志', '13', 'Admin', 'Behavior', 'logs', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('15', '编辑行为', '13', 'Admin', 'Behavior', 'edit', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('16', '删除行为', '13', 'Admin', 'Behavior', 'delete', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('17', '后台菜单管理', '7', 'Admin', 'Menu', 'index', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('18', '添加菜单', '17', 'Admin', 'Menu', 'add', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('19', '修改', '17', 'Admin', 'Menu', 'edit', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('20', '删除', '17', 'Admin', 'Menu', 'delete', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('21', '管理员设置', '3', 'Admin', 'Management', 'index', '', '0', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('22', '管理员管理', '21', 'Admin', 'Management', 'manager', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('23', '添加管理员', '22', 'Admin', 'Management', 'adminadd', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('24', '编辑管理信息', '22', 'Admin', 'Management', 'edit', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('25', '删除管理员', '22', 'Admin', 'Management', 'delete', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('26', '角色管理', '21', 'Admin', 'Rbac', 'rolemanage', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('27', '添加角色', '26', 'Admin', 'Rbac', 'roleadd', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('28', '删除角色', '26', 'Admin', 'Rbac', 'roledelete', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('29', '角色编辑', '26', 'Admin', 'Rbac', 'roleedit', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('30', '角色授权', '26', 'Admin', 'Rbac', 'authorize', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('31', '日志管理', '3', 'Admin', 'Logs', 'index', '', '0', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('32', '后台登陆日志', '31', 'Admin', 'Logs', 'loginlog', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('33', '后台操作日志', '31', 'Admin', 'Logs', 'index', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('34', '删除一个月前的登陆日志', '32', 'Admin', 'Logs', 'deleteloginlog', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('35', '删除一个月前的操作日志', '33', 'Admin', 'Logs', 'deletelog', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('36', '添加行为', '13', 'Admin', 'Behavior', 'add', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('117', '客户留言', '44', 'Content', 'Message', 'index', '', '0', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('118', '未处理', '117', 'Content', 'Message', 'processe', '', '0', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('119', '已处理', '117', 'Content', 'Message', 'processed', '', '0', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('120', '档案管理', '44', 'Content', 'FieldsManage', 'index', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('121', '预约管理', '44', 'Content', 'OrderManage', 'index', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('44', '内容', '0', 'Content', 'Index', 'index', '', '0', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('45', '内容管理', '44', 'Content', 'Content', 'index', '', '0', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('46', '内容相关设置', '44', 'Content', 'Category', 'index', '', '0', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('47', '栏目列表', '46', 'Content', 'Category', 'index', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('48', '添加栏目', '47', 'Content', 'Category', 'add', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('49', '添加单页', '47', 'Content', 'Category', 'singlepage', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('50', '添加外部链接栏目', '47', 'Content', 'Category', 'wadd', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('51', '编辑栏目', '47', 'Content', 'Category', 'edit', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('52', '删除栏目', '47', 'Content', 'Category', 'delete', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('53', '栏目属性转换', '47', 'Content', 'Category', 'categoryshux', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('54', '模型管理', '46', 'Content', 'Models', 'index', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('55', '创建新模型', '54', 'Content', 'Models', 'add', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('56', '删除模型', '54', 'Content', 'Models', 'delete', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('57', '编辑模型', '54', 'Content', 'Models', 'edit', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('58', '模型禁用', '54', 'Content', 'Models', 'disabled', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('59', '模型导入', '54', 'Content', 'Models', 'import', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('60', '字段管理', '54', 'Content', 'Field', 'index', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('61', '字段修改', '60', 'Content', 'Field', 'edit', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('62', '字段删除', '60', 'Content', 'Field', 'delete', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('63', '字段状态', '60', 'Content', 'Field', 'disabled', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('64', '模型预览', '60', 'Content', 'Field', 'priview', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('65', '管理内容', '45', 'Content', 'Content', 'index', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('66', '附件管理', '45', 'Attachment', 'Atadmin', 'index', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('67', '删除', '66', 'Attachment', 'Atadmin', 'delete', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('68', '发布管理', '44', 'Content', 'Createhtml', 'index', '', '0', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('69', '批量更新栏目页', '68', 'Content', 'Createhtml', 'category', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('70', '生成首页', '68', 'Content', 'Createhtml', 'index', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('71', '批量更新URL', '68', 'Content', 'Createhtml', 'update_urls', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('72', '批量更新内容页', '68', 'Content', 'Createhtml', 'update_show', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('73', '刷新自定义页面', '68', 'Template', 'Custompage', 'createhtml', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('74', 'URL规则管理', '46', 'Content', 'Urlrule', 'index', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('75', '添加规则', '74', 'Content', 'Urlrule', 'add', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('76', '编辑', '74', 'Content', 'Urlrule', 'edit', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('77', '删除', '74', 'Content', 'Urlrule', 'delete', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('78', '推荐位管理', '46', 'Content', 'Position', 'index', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('79', '信息管理', '78', 'Content', 'Position', 'item', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('80', '添加推荐位', '78', 'Content', 'Position', 'add', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('81', '修改推荐位', '78', 'Content', 'Position', 'edit', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('82', '删除推荐位', '78', 'Content', 'Position', 'delete', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('83', '信息编辑', '79', 'Content', 'Position', 'item_manage', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('84', '信息排序', '79', 'Content', 'Position', 'item_listorder', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('85', '数据重建', '78', 'Content', 'Position', 'rebuilding', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('86', 'Tags管理', '45', 'Content', 'Tags', 'index', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('87', '修改', '86', 'Content', 'Tags', 'edit', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('88', '删除', '86', 'Content', 'Tags', 'delete', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('89', 'Tags数据重建', '86', 'Content', 'Tags', 'create', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('90', '界面', '0', 'Template', 'Style', 'index', '', '0', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('91', '模板管理', '90', 'Template', 'Style', 'index', '', '0', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('92', '模板风格', '91', 'Template', 'Style', 'index', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('93', '添加模板页', '92', 'Template', 'Style', 'add', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('94', '删除模板', '92', 'Template', 'Style', 'delete', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('95', '修改模板', '92', 'Template', 'Style', 'edit', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('96', '主题管理', '91', 'Template', 'Theme', 'index', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('97', '主题更换', '96', 'Template', 'Theme', 'chose', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('98', '自定义页面', '90', 'Template', 'Custompage', 'index', '', '0', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('99', '自定义页面', '98', 'Template', 'Custompage', 'index', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('100', '添加自定义页面', '99', 'Template', 'Custompage', 'add', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('101', '删除自定义页面', '99', 'Template', 'Custompage', 'delete', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('102', '编辑自定义页面', '99', 'Template', 'Custompage', 'edit', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('103', '自定义列表', '98', 'Template', 'Customlist', 'index', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('104', '添加列表', '103', 'Template', 'Customlist', 'add', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('105', '删除列表', '103', 'Template', 'Customlist', 'delete', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('106', '编辑列表', '103', 'Template', 'Customlist', 'edit', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('107', '生成列表', '103', 'Template', 'Customlist', 'generate', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('122', '学员管理', '44', 'Content', 'StudentManage', 'index', '', '1', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('112', '栏目授权', '26', 'Admin', 'Rbac', 'setting_cat_priv', '', '1', '0', '', '0');
INSERT INTO `wt_menu` VALUES ('113', '报名管理', '44', 'Content', 'Registration', 'index', '', '0', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('114', '待处理', '113', 'Content', 'Registration', 'processe', '', '0', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('115', '已处理', '113', 'Content', 'Registration', 'processed', '', '0', '1', '', '0');
INSERT INTO `wt_menu` VALUES ('116', '公司信息', '44', 'Content', 'CompanyMsg', 'index', '', '0', '1', '', '0');

-- ----------------------------
-- Table structure for `wt_menus`
-- ----------------------------
DROP TABLE IF EXISTS `wt_menus`;
CREATE TABLE `wt_menus` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  `en_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url_cust` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of wt_menus
-- ----------------------------
INSERT INTO `wt_menus` VALUES ('1', '4', '0', '首页', '', '', '', '', 'asdas', '0', '/index.php?a=shows&catid=4&id=1', '0', '99', '1', '0', 'admin', '1429879148', '1429879148', '0', '0', '0', '0', '0', '0', 'HOME', '/index.php/Index/index.html');
INSERT INTO `wt_menus` VALUES ('2', '4', '0', '关于万通', '', '', '', '', 'qweqw', '0', '/index.php?a=shows&catid=4&id=2', '0', '99', '1', '0', 'admin', '1429879532', '1429879532', '0', '0', '0', '0', '0', '0', 'ABOUT', '/index.php/Index/about.html');
INSERT INTO `wt_menus` VALUES ('3', '4', '0', '教练信息', '', '', '', '', 'qw', '0', '/index.php?a=shows&catid=4&id=3', '0', '99', '1', '0', 'admin', '1429879615', '1429879615', '0', '0', '0', '0', '0', '0', 'CAOCHS', '/index.php/Index/caochs/page/1.html');
INSERT INTO `wt_menus` VALUES ('4', '4', '0', '班型信息', '', '', '', '', 'www', '0', '/index.php?a=shows&catid=4&id=4', '0', '99', '1', '0', 'admin', '1430037998', '1430037998', '0', '0', '0', '0', '0', '0', 'SHUTTLES', '/index.php/Index/regularbus.html');
INSERT INTO `wt_menus` VALUES ('5', '4', '0', '学车指南', '', '', '', '', 'www', '0', '/index.php?a=shows&catid=4&id=5', '0', '99', '1', '0', 'admin', '1430038126', '1430038126', '0', '0', '0', '0', '0', '0', 'GUIDE', '/index.php/Index/guide/catid/17.html');
INSERT INTO `wt_menus` VALUES ('6', '4', '0', '联系我们', '', '', '', '', 'www', '0', '/index.php?a=shows&catid=4&id=6', '0', '99', '1', '0', 'admin', '1430038204', '1430038204', '0', '0', '0', '0', '0', '0', 'CONTACT', 'javascript:Contact();');
INSERT INTO `wt_menus` VALUES ('7', '4', '0', '留言中心', '', '', '', '', 'www', '0', '/index.php?a=shows&catid=4&id=7', '0', '99', '1', '0', 'admin', '1430038256', '1430038256', '0', '0', '0', '0', '0', '0', 'MESSAGE', '/index.php/Index/message.html');
INSERT INTO `wt_menus` VALUES ('8', '4', '0', '论坛', '', '', '', '', 'www', '0', '/index.php?a=shows&catid=4&id=8', '0', '99', '1', '0', 'admin', '1430038718', '1430038718', '0', '0', '0', '0', '0', '0', 'BBS', 'http://www.dlwtjx.com');
INSERT INTO `wt_menus` VALUES ('9', '8', '0', '点我报名', '', '/d/file/content/2015/04/5540af444bee5.png', '', '', 'www', '0', '/index.php?a=shows&catid=8&id=9', '0', '99', '1', '0', 'admin', '1430041836', '1430041836', '0', '0', '0', '0', '0', '0', 'bm', '/index.php/Index/registration.html');
INSERT INTO `wt_menus` VALUES ('10', '8', '0', '团体报名', '', '/d/file/content/2015/04/5540af22eb75a.png', '', '', 'www', '0', '/index.php?a=shows&catid=8&id=10', '0', '99', '1', '0', 'admin', '1430042137', '1430042137', '0', '0', '0', '0', '0', '0', 'tt', '/index.php/Index/group.html');
INSERT INTO `wt_menus` VALUES ('11', '8', '0', '学车档案', '', '/d/file/content/2015/04/5540af0b4f07f.png', '', '', 'www', '0', '/index.php?a=shows&catid=8&id=11', '0', '99', '1', '0', 'admin', '1430302142', '1430302142', '0', '0', '0', '0', '0', '0', 'da', '/index.php/Index/fieldsmanage.html');
INSERT INTO `wt_menus` VALUES ('12', '8', '0', '预约训练', '', '/d/file/content/2015/04/5540aef26c09f.png', '', '', 'www', '0', '/index.php?a=shows&catid=8&id=12', '0', '99', '1', '0', 'admin', '1430302226', '1430302226', '0', '0', '0', '0', '0', '0', 'yy', '/index.php/Index/appointment.html');
INSERT INTO `wt_menus` VALUES ('13', '8', '0', '教练点评', '', '/d/file/content/2015/04/5540aedb956e3.png', '', '', 'www', '0', '/index.php?a=shows&catid=8&id=13', '0', '99', '1', '0', 'admin', '1430302255', '1430302255', '0', '0', '0', '0', '0', '0', 'pl', '/index.php/Index/evaluate/page/1.html');
INSERT INTO `wt_menus` VALUES ('14', '8', '0', '考试指南', '', '/d/file/content/2015/04/5540aebfa5c48.png', '', '', 'www', '0', '/index.php?a=shows&catid=8&id=14', '0', '99', '1', '0', 'admin', '1430302301', '1430302301', '0', '0', '0', '0', '0', '0', 'zn', '/index.php/Index/guide/catid/18.html');

-- ----------------------------
-- Table structure for `wt_menus_data`
-- ----------------------------
DROP TABLE IF EXISTS `wt_menus_data`;
CREATE TABLE `wt_menus_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of wt_menus_data
-- ----------------------------
INSERT INTO `wt_menus_data` VALUES ('1', '<p>asdas</p>', '2', '10000', '', '0', '1', '');
INSERT INTO `wt_menus_data` VALUES ('2', '<p>qweqw</p>', '2', '10000', '', '0', '1', '');
INSERT INTO `wt_menus_data` VALUES ('3', '<p>qw</p>', '2', '10000', '', '0', '1', '');
INSERT INTO `wt_menus_data` VALUES ('4', '<p>www</p>', '2', '10000', '', '0', '1', '');
INSERT INTO `wt_menus_data` VALUES ('5', '<p>www</p>', '2', '10000', '', '0', '1', '');
INSERT INTO `wt_menus_data` VALUES ('6', '<p>www</p>', '2', '10000', '', '0', '1', '');
INSERT INTO `wt_menus_data` VALUES ('7', '<p>www</p>', '2', '10000', '', '0', '1', '');
INSERT INTO `wt_menus_data` VALUES ('8', '<p>www</p>', '2', '10000', '', '0', '1', '');
INSERT INTO `wt_menus_data` VALUES ('9', '<p>www</p>', '2', '10000', '', '0', '1', '');
INSERT INTO `wt_menus_data` VALUES ('10', '<p>www</p>', '2', '10000', '', '0', '1', '');
INSERT INTO `wt_menus_data` VALUES ('11', '<p>www</p>', '2', '10000', '', '0', '1', '');
INSERT INTO `wt_menus_data` VALUES ('12', '<p>www</p>', '2', '10000', '', '0', '1', '');
INSERT INTO `wt_menus_data` VALUES ('13', '<p>www</p>', '2', '10000', '', '0', '1', '');
INSERT INTO `wt_menus_data` VALUES ('14', '<p>www</p>', '2', '10000', '', '0', '1', '');

-- ----------------------------
-- Table structure for `wt_message`
-- ----------------------------
DROP TABLE IF EXISTS `wt_message`;
CREATE TABLE `wt_message` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of wt_message
-- ----------------------------

-- ----------------------------
-- Table structure for `wt_message_data`
-- ----------------------------
DROP TABLE IF EXISTS `wt_message_data`;
CREATE TABLE `wt_message_data` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `infotitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `isHandle` int(10) unsigned NOT NULL DEFAULT '0',
  `reply` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of wt_message_data
-- ----------------------------
INSERT INTO `wt_message_data` VALUES ('1', '1', '1', '1888888888', '1', '1', '1', '0', '哪里好');
INSERT INTO `wt_message_data` VALUES ('2', '1', '111', '111', '1', '111', '111', '1', '1111');
INSERT INTO `wt_message_data` VALUES ('3', '1', '111', '111', '1', '111', '111', '1', '11111');
INSERT INTO `wt_message_data` VALUES ('4', '1', '111', '111', '1', '111', '111', '1', '');
INSERT INTO `wt_message_data` VALUES ('5', '1', '111', '111', '1', '111', '111', '0', '111111111111111');
INSERT INTO `wt_message_data` VALUES ('6', '1', '杜闯', '1888888888', '1', '我是杜闯', '我是杜闯!我是名人', '0', '');
INSERT INTO `wt_message_data` VALUES ('7', '1', '杜闯', '11111111', '建议', '杜闯哈哈哈', '独创哈哈', '0', '');

-- ----------------------------
-- Table structure for `wt_model`
-- ----------------------------
DROP TABLE IF EXISTS `wt_model`;
CREATE TABLE `wt_model` (
  `modelid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL COMMENT '模型名称',
  `description` char(100) NOT NULL COMMENT '描述',
  `tablename` char(20) NOT NULL COMMENT '表名',
  `setting` text NOT NULL COMMENT '配置信息',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `items` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '信息数',
  `enablesearch` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启全站搜索',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用 1禁用',
  `default_style` char(30) NOT NULL COMMENT '风格',
  `category_template` char(30) NOT NULL COMMENT '栏目模板',
  `list_template` char(30) NOT NULL COMMENT '列表模板',
  `show_template` char(30) NOT NULL COMMENT '内容模板',
  `js_template` varchar(30) NOT NULL COMMENT 'JS模板',
  `sort` tinyint(3) NOT NULL COMMENT '排序',
  `type` tinyint(1) NOT NULL COMMENT '模块标识',
  PRIMARY KEY (`modelid`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wt_model
-- ----------------------------
INSERT INTO `wt_model` VALUES ('1', '班型', '', 'shuttles', '', '1429775247', '0', '1', '0', '', '', '', '', '', '0', '0');
INSERT INTO `wt_model` VALUES ('2', '文章', '', 'articles', '', '1429836418', '0', '1', '0', '', '', '', '', '', '0', '0');
INSERT INTO `wt_model` VALUES ('3', '导航菜单', '', 'menus', '', '1429875007', '0', '1', '0', '', '', '', '', '', '0', '0');
INSERT INTO `wt_model` VALUES ('4', '教练模型', '', 'caochs', '', '1429875128', '0', '1', '0', '', '', '', '', '', '0', '0');
INSERT INTO `wt_model` VALUES ('9', '客户留言', '', 'message', '', '1430371499', '0', '1', '0', '', '', '', '', '', '0', '0');
INSERT INTO `wt_model` VALUES ('11', '关于万通', '', 'about', '', '1430460065', '0', '1', '0', '', '', '', '', '', '0', '0');
INSERT INTO `wt_model` VALUES ('8', '报名用户', '', 'users', '', '1427262234', '0', '1', '0', '', '', '', '', '', '0', '0');
INSERT INTO `wt_model` VALUES ('12', '指南', '', 'guide', '', '1430463094', '0', '1', '0', '', '', '', '', '', '0', '0');

-- ----------------------------
-- Table structure for `wt_model_field`
-- ----------------------------
DROP TABLE IF EXISTS `wt_model_field`;
CREATE TABLE `wt_model_field` (
  `fieldid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `field` varchar(20) NOT NULL COMMENT '字段名',
  `name` varchar(30) NOT NULL COMMENT '别名',
  `tips` text NOT NULL COMMENT '字段提示',
  `css` varchar(30) NOT NULL COMMENT '表单样式',
  `minlength` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最小值',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大值',
  `pattern` varchar(255) NOT NULL COMMENT '数据校验正则',
  `errortips` varchar(255) NOT NULL COMMENT '数据校验未通过的提示信息',
  `formtype` varchar(20) NOT NULL COMMENT '字段类型',
  `setting` mediumtext NOT NULL,
  `formattribute` varchar(255) NOT NULL,
  `unsetgroupids` varchar(255) NOT NULL,
  `unsetroleids` varchar(255) NOT NULL,
  `iscore` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否内部字段 1是',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否系统字段 1 是',
  `isunique` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '值唯一',
  `isbase` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '作为基本信息',
  `issearch` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '作为搜索条件',
  `isadd` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '在前台投稿中显示',
  `isfulltext` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '作为全站搜索信息',
  `isposition` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否入库到推荐位',
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1 禁用 0启用',
  `isomnipotent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldid`),
  KEY `modelid` (`modelid`,`disabled`),
  KEY `field` (`field`,`modelid`)
) ENGINE=MyISAM AUTO_INCREMENT=288 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wt_model_field
-- ----------------------------
INSERT INTO `wt_model_field` VALUES ('1', '1', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `wt_model_field` VALUES ('2', '1', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '0', '0');
INSERT INTO `wt_model_field` VALUES ('3', '1', 'islink', '转向链接', '', '', '0', '0', '', '', 'islink', '', '', '', '', '0', '1', '0', '0', '0', '1', '0', '0', '17', '0', '0');
INSERT INTO `wt_model_field` VALUES ('4', '1', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '0', '0');
INSERT INTO `wt_model_field` VALUES ('5', '1', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '0', '0');
INSERT INTO `wt_model_field` VALUES ('6', '1', 'pages', '分页方式', '', '', '0', '0', '', '', 'pages', '', '', '-99', '-99', '0', '0', '0', '1', '0', '0', '0', '0', '9', '0', '0');
INSERT INTO `wt_model_field` VALUES ('7', '1', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `wt_model_field` VALUES ('8', '1', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `wt_model_field` VALUES ('9', '1', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `wt_model_field` VALUES ('10', '1', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `wt_model_field` VALUES ('11', '1', 'relation', '相关文章', '', '', '0', '255', '', '', 'omnipotent', 'a:4:{s:8:\"formtext\";s:464:\"<input type=\"hidden\" name=\"info[relation]\" id=\"relation\" value=\"{FIELD_VALUE}\" style=\"50\" >\n<ul class=\"list-dot\" id=\"relation_text\">\n</ul>\n<input type=\"button\" value=\"添加相关\" onClick=\"omnipotent(\'selectid\',GV.DIMAUB+\'index.php?a=public_relationlist&m=Content&g=Content&modelid={MODELID}\',\'添加相关文章\',1)\" class=\"btn\">\n<span class=\"edit_content\">\n  <input type=\"button\" value=\"显示已有\" onClick=\"show_relation({MODELID},{ID})\" class=\"btn\">\n</span>\";s:9:\"fieldtype\";s:7:\"varchar\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '0', '0', '0', '1', '0', '8', '0', '0');
INSERT INTO `wt_model_field` VALUES ('12', '1', 'thumb', '缩略图', '', '', '0', '100', '', '', 'image', 'a:9:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:14:\"upload_maxsize\";s:4:\"1024\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `wt_model_field` VALUES ('13', '1', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `wt_model_field` VALUES ('14', '1', 'typeid', '类别', '', '', '0', '0', '', '', 'typeid', 'a:2:{s:9:\"minnumber\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '1', '1', '0', '0', '2', '0', '0');
INSERT INTO `wt_model_field` VALUES ('15', '1', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `wt_model_field` VALUES ('16', '1', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '0', '0');
INSERT INTO `wt_model_field` VALUES ('17', '1', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '0', '0');
INSERT INTO `wt_model_field` VALUES ('18', '1', 'description', '摘要', '', '', '0', '255', '', '', 'textarea', 'a:4:{s:5:\"width\";s:2:\"98\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `wt_model_field` VALUES ('19', '1', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `wt_model_field` VALUES ('20', '1', 'content', '内容', '<style type=\"text/css\">.content_attr{ border:1px solid #CCC; padding:5px 8px; background:#FFC; margin-top:6px}</style><div class=\"content_attr\"><label><input name=\"add_introduce\" type=\"checkbox\"  value=\"1\" checked>是否截取内容</label><input type=\"text\" name=\"introcude_length\" value=\"200\" size=\"3\">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value=\"1\" checked>是否获取内容第</label><input type=\"text\" name=\"auto_thumb_no\" value=\"1\" size=\"2\" class=\"\">张图片作为标题图片\r\n</div>', '', '1', '999999', '', '内容不能为空', 'editor', 'a:6:{s:7:\"toolbar\";s:4:\"full\";s:12:\"defaultvalue\";s:0:\"\";s:13:\"enablekeylink\";s:1:\"1\";s:10:\"replacenum\";s:1:\"2\";s:9:\"link_mode\";s:1:\"0\";s:15:\"enablesaveimage\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '6', '0', '0');
INSERT INTO `wt_model_field` VALUES ('21', '1', 'price', '价格', '', '', '0', '99999', '/^[0-9.-]+$/', '输入格式：数字', 'number', 'a:9:{s:9:\"minnumber\";s:0:\"\";s:9:\"maxnumber\";s:0:\"\";s:13:\"decimaldigits\";s:1:\"2\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('22', '1', 'sale_price', '优惠价格', '', '', '0', '99999', '/^[0-9.-]+$/', '', 'number', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('23', '1', 'models_car', '车型', '', '', '0', '0', '', '', 'box', 'a:11:{s:7:\"options\";s:51:\"小型汽车|小型汽车\n大型汽车|大型汽车\";s:7:\"boxtype\";s:6:\"select\";s:9:\"fieldtype\";s:7:\"varchar\";s:5:\"width\";s:0:\"\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"outputtype\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('24', '1', 'auto_car', '自动手动挡', '', '', '0', '0', '', '', 'box', 'a:11:{s:7:\"options\";s:23:\"手动挡|1\n自动挡|2\";s:7:\"boxtype\";s:6:\"select\";s:9:\"fieldtype\";s:7:\"varchar\";s:5:\"width\";s:0:\"\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"outputtype\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('25', '1', 'Characteristic', '特点', '', '', '0', '200', '', '', 'text', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('26', '1', 'Introduction', '介绍', '', '', '0', '300', '', '', 'text', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('27', '2', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `wt_model_field` VALUES ('28', '2', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '0', '0');
INSERT INTO `wt_model_field` VALUES ('29', '2', 'islink', '转向链接', '', '', '0', '0', '', '', 'islink', '', '', '', '', '0', '1', '0', '0', '0', '1', '0', '0', '17', '0', '0');
INSERT INTO `wt_model_field` VALUES ('30', '2', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '0', '0');
INSERT INTO `wt_model_field` VALUES ('31', '2', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '0', '0');
INSERT INTO `wt_model_field` VALUES ('32', '2', 'pages', '分页方式', '', '', '0', '0', '', '', 'pages', '', '', '-99', '-99', '0', '0', '0', '1', '0', '0', '0', '0', '9', '0', '0');
INSERT INTO `wt_model_field` VALUES ('33', '2', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:5:{s:9:\"fieldtype\";s:4:\"date\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `wt_model_field` VALUES ('34', '2', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `wt_model_field` VALUES ('35', '2', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `wt_model_field` VALUES ('36', '2', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `wt_model_field` VALUES ('37', '2', 'relation', '相关文章', '', '', '0', '255', '', '', 'omnipotent', 'a:4:{s:8:\"formtext\";s:464:\"<input type=\"hidden\" name=\"info[relation]\" id=\"relation\" value=\"{FIELD_VALUE}\" style=\"50\" >\n<ul class=\"list-dot\" id=\"relation_text\">\n</ul>\n<input type=\"button\" value=\"添加相关\" onClick=\"omnipotent(\'selectid\',GV.DIMAUB+\'index.php?a=public_relationlist&m=Content&g=Content&modelid={MODELID}\',\'添加相关文章\',1)\" class=\"btn\">\n<span class=\"edit_content\">\n  <input type=\"button\" value=\"显示已有\" onClick=\"show_relation({MODELID},{ID})\" class=\"btn\">\n</span>\";s:9:\"fieldtype\";s:7:\"varchar\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '0', '0', '0', '1', '0', '8', '0', '0');
INSERT INTO `wt_model_field` VALUES ('38', '2', 'thumb', '缩略图', '', '', '0', '100', '', '', 'image', 'a:9:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:14:\"upload_maxsize\";s:4:\"1024\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `wt_model_field` VALUES ('39', '2', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `wt_model_field` VALUES ('40', '2', 'typeid', '类别', '', '', '0', '0', '', '', 'typeid', 'a:2:{s:9:\"minnumber\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '1', '1', '0', '0', '2', '0', '0');
INSERT INTO `wt_model_field` VALUES ('41', '2', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `wt_model_field` VALUES ('42', '2', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '0', '0');
INSERT INTO `wt_model_field` VALUES ('43', '2', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '0', '0');
INSERT INTO `wt_model_field` VALUES ('44', '2', 'description', '摘要', '', '', '0', '255', '', '', 'textarea', 'a:4:{s:5:\"width\";s:2:\"98\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `wt_model_field` VALUES ('45', '2', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:5:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:5:\"Y-m-d\";s:11:\"defaulttype\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `wt_model_field` VALUES ('46', '2', 'content', '内容', '<style type=\"text/css\">.content_attr{ border:1px solid #CCC; padding:5px 8px; background:#FFC; margin-top:6px}</style><div class=\"content_attr\"><label><input name=\"add_introduce\" type=\"checkbox\"  value=\"1\" checked>是否截取内容</label><input type=\"text\" name=\"introcude_length\" value=\"200\" size=\"3\">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value=\"1\" checked>是否获取内容第</label><input type=\"text\" name=\"auto_thumb_no\" value=\"1\" size=\"2\" class=\"\">张图片作为标题图片\r\n</div>', '', '1', '999999', '', '内容不能为空', 'editor', 'a:6:{s:7:\"toolbar\";s:4:\"full\";s:12:\"defaultvalue\";s:0:\"\";s:13:\"enablekeylink\";s:1:\"1\";s:10:\"replacenum\";s:1:\"2\";s:9:\"link_mode\";s:1:\"0\";s:15:\"enablesaveimage\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '6', '0', '0');
INSERT INTO `wt_model_field` VALUES ('47', '1', 'train_time', '训练时间', '', '', '0', '0', '/^[0-9a-z]+$/i', '', 'text', 'a:5:{s:6:\"format\";s:12:\"Y-m-d Ah:i:s\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('48', '3', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `wt_model_field` VALUES ('49', '3', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '0', '0');
INSERT INTO `wt_model_field` VALUES ('50', '3', 'islink', '转向链接', '', '', '0', '0', '', '', 'islink', '', '', '', '', '0', '1', '0', '0', '0', '1', '0', '0', '17', '0', '0');
INSERT INTO `wt_model_field` VALUES ('51', '3', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '0', '0');
INSERT INTO `wt_model_field` VALUES ('52', '3', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '0', '0');
INSERT INTO `wt_model_field` VALUES ('53', '3', 'pages', '分页方式', '', '', '0', '0', '', '', 'pages', '', '', '-99', '-99', '0', '0', '0', '1', '0', '0', '0', '0', '9', '0', '0');
INSERT INTO `wt_model_field` VALUES ('54', '3', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `wt_model_field` VALUES ('55', '3', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `wt_model_field` VALUES ('56', '3', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `wt_model_field` VALUES ('57', '3', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `wt_model_field` VALUES ('58', '3', 'relation', '相关文章', '', '', '0', '255', '', '', 'omnipotent', 'a:4:{s:8:\"formtext\";s:464:\"<input type=\"hidden\" name=\"info[relation]\" id=\"relation\" value=\"{FIELD_VALUE}\" style=\"50\" >\n<ul class=\"list-dot\" id=\"relation_text\">\n</ul>\n<input type=\"button\" value=\"添加相关\" onClick=\"omnipotent(\'selectid\',GV.DIMAUB+\'index.php?a=public_relationlist&m=Content&g=Content&modelid={MODELID}\',\'添加相关文章\',1)\" class=\"btn\">\n<span class=\"edit_content\">\n  <input type=\"button\" value=\"显示已有\" onClick=\"show_relation({MODELID},{ID})\" class=\"btn\">\n</span>\";s:9:\"fieldtype\";s:7:\"varchar\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '0', '0', '0', '1', '0', '8', '0', '0');
INSERT INTO `wt_model_field` VALUES ('59', '3', 'thumb', '缩略图', '', '', '0', '100', '', '', 'image', 'a:9:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:14:\"upload_maxsize\";s:4:\"1024\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `wt_model_field` VALUES ('60', '3', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `wt_model_field` VALUES ('61', '3', 'typeid', '类别', '', '', '0', '0', '', '', 'typeid', 'a:2:{s:9:\"minnumber\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '1', '1', '0', '0', '2', '0', '0');
INSERT INTO `wt_model_field` VALUES ('62', '3', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `wt_model_field` VALUES ('63', '3', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '0', '0');
INSERT INTO `wt_model_field` VALUES ('64', '3', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '0', '0');
INSERT INTO `wt_model_field` VALUES ('65', '3', 'description', '摘要', '', '', '0', '255', '', '', 'textarea', 'a:4:{s:5:\"width\";s:2:\"98\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `wt_model_field` VALUES ('66', '3', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `wt_model_field` VALUES ('67', '3', 'content', '内容', '<style type=\"text/css\">.content_attr{ border:1px solid #CCC; padding:5px 8px; background:#FFC; margin-top:6px}</style><div class=\"content_attr\"><label><input name=\"add_introduce\" type=\"checkbox\"  value=\"1\" checked>是否截取内容</label><input type=\"text\" name=\"introcude_length\" value=\"200\" size=\"3\">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value=\"1\" checked>是否获取内容第</label><input type=\"text\" name=\"auto_thumb_no\" value=\"1\" size=\"2\" class=\"\">张图片作为标题图片\r\n</div>', '', '1', '999999', '', '内容不能为空', 'editor', 'a:6:{s:7:\"toolbar\";s:4:\"full\";s:12:\"defaultvalue\";s:0:\"\";s:13:\"enablekeylink\";s:1:\"1\";s:10:\"replacenum\";s:1:\"2\";s:9:\"link_mode\";s:1:\"0\";s:15:\"enablesaveimage\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '6', '0', '0');
INSERT INTO `wt_model_field` VALUES ('68', '4', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '1', '0');
INSERT INTO `wt_model_field` VALUES ('69', '4', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '1', '0');
INSERT INTO `wt_model_field` VALUES ('70', '4', 'islink', '转向链接', '', '', '0', '0', '', '', 'islink', '', '', '', '', '0', '1', '0', '0', '0', '1', '0', '0', '17', '0', '0');
INSERT INTO `wt_model_field` VALUES ('71', '4', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '1', '0');
INSERT INTO `wt_model_field` VALUES ('72', '4', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '1', '0');
INSERT INTO `wt_model_field` VALUES ('73', '4', 'pages', '分页方式', '', '', '0', '0', '', '', 'pages', '', '', '-99', '-99', '0', '0', '0', '1', '0', '0', '0', '0', '9', '1', '0');
INSERT INTO `wt_model_field` VALUES ('74', '4', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '1', '0');
INSERT INTO `wt_model_field` VALUES ('75', '4', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `wt_model_field` VALUES ('76', '4', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `wt_model_field` VALUES ('77', '4', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `wt_model_field` VALUES ('78', '4', 'relation', '相关文章', '', '', '0', '255', '', '', 'omnipotent', 'a:4:{s:8:\"formtext\";s:464:\"<input type=\"hidden\" name=\"info[relation]\" id=\"relation\" value=\"{FIELD_VALUE}\" style=\"50\" >\n<ul class=\"list-dot\" id=\"relation_text\">\n</ul>\n<input type=\"button\" value=\"添加相关\" onClick=\"omnipotent(\'selectid\',GV.DIMAUB+\'index.php?a=public_relationlist&m=Content&g=Content&modelid={MODELID}\',\'添加相关文章\',1)\" class=\"btn\">\n<span class=\"edit_content\">\n  <input type=\"button\" value=\"显示已有\" onClick=\"show_relation({MODELID},{ID})\" class=\"btn\">\n</span>\";s:9:\"fieldtype\";s:7:\"varchar\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '0', '0', '0', '1', '0', '8', '1', '0');
INSERT INTO `wt_model_field` VALUES ('79', '4', 'thumb', '缩略图', '', '', '0', '100', '', '', 'image', 'a:9:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:14:\"upload_maxsize\";s:4:\"1024\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `wt_model_field` VALUES ('80', '4', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `wt_model_field` VALUES ('81', '4', 'typeid', '类别', '', '', '0', '0', '', '', 'typeid', 'a:2:{s:9:\"minnumber\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '1', '1', '0', '0', '2', '0', '0');
INSERT INTO `wt_model_field` VALUES ('82', '4', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `wt_model_field` VALUES ('83', '4', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '1', '0');
INSERT INTO `wt_model_field` VALUES ('84', '4', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '1', '0');
INSERT INTO `wt_model_field` VALUES ('271', '12', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `wt_model_field` VALUES ('86', '4', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `wt_model_field` VALUES ('200', '9', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `wt_model_field` VALUES ('198', '9', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `wt_model_field` VALUES ('199', '9', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `wt_model_field` VALUES ('196', '9', 'pages', '分页方式', '', '', '0', '0', '', '', 'pages', '', '', '-99', '-99', '0', '0', '0', '1', '0', '0', '0', '0', '9', '0', '0');
INSERT INTO `wt_model_field` VALUES ('197', '9', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `wt_model_field` VALUES ('88', '3', 'en_title', '英文标题', '', '', '0', '0', '[A-Z]{1,10}', '格式：1-10个大写字母', 'text', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('89', '3', 'url_cust', '链接', '', '', '0', '0', '', '', 'text', 'a:7:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('90', '4', 'caoch_name', '教练姓名', '', '', '0', '0', '', '', 'text', 'a:7:{s:4:\"size\";s:2:\"70\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('91', '4', 'caoch_qq', 'QQ', '', '', '0', '0', '/^[0-9]{5,20}$/', '', 'text', 'a:7:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('92', '4', 'caoch_msg', '教练简介', '', '', '0', '0', '', '', 'textarea', 'a:9:{s:5:\"width\";s:3:\"100\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('191', '9', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `wt_model_field` VALUES ('192', '9', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '0', '0');
INSERT INTO `wt_model_field` VALUES ('193', '9', 'islink', '转向链接', '', '', '0', '0', '', '', 'islink', '', '', '', '', '0', '1', '0', '0', '0', '1', '0', '0', '17', '0', '0');
INSERT INTO `wt_model_field` VALUES ('194', '9', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '1', '0');
INSERT INTO `wt_model_field` VALUES ('195', '9', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '0', '0');
INSERT INTO `wt_model_field` VALUES ('190', '4', 'phone', '教练电话', '', '', '0', '0', '/^(1)[0-9]{10}$/', '', 'number', 'a:9:{s:9:\"minnumber\";s:1:\"1\";s:9:\"maxnumber\";s:0:\"\";s:13:\"decimaldigits\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('189', '8', 'isHandle', '是否处理', '', '', '0', '0', '', '', 'number', 'a:9:{s:9:\"minnumber\";s:1:\"1\";s:9:\"maxnumber\";s:0:\"\";s:13:\"decimaldigits\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '0', '1', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('188', '8', 'message', '留言', '', '', '0', '0', '', '', 'text', 'a:7:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('182', '8', 'papersId', '证件号', '', '', '0', '0', '', '', 'text', 'a:7:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('183', '8', 'type', '班型类别', '', '', '0', '0', '', '', 'number', 'a:9:{s:9:\"minnumber\";s:1:\"1\";s:9:\"maxnumber\";s:0:\"\";s:13:\"decimaldigits\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '0', '1', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('184', '8', 'isLocal', '是否本地户口', '', '', '0', '0', '', '', 'number', 'a:9:{s:9:\"minnumber\";s:1:\"1\";s:9:\"maxnumber\";s:0:\"\";s:13:\"decimaldigits\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '0', '1', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('185', '8', 'isShack', '是否有暂住证', '', '', '0', '0', '', '', 'number', 'a:9:{s:9:\"minnumber\";s:1:\"1\";s:9:\"maxnumber\";s:0:\"\";s:13:\"decimaldigits\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '0', '1', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('267', '12', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '0', '0');
INSERT INTO `wt_model_field` VALUES ('268', '12', 'pages', '分页方式', '', '', '0', '0', '', '', 'pages', '', '', '-99', '-99', '0', '0', '0', '1', '0', '0', '0', '0', '9', '0', '0');
INSERT INTO `wt_model_field` VALUES ('263', '12', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `wt_model_field` VALUES ('264', '12', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '0', '0');
INSERT INTO `wt_model_field` VALUES ('265', '12', 'islink', '转向链接', '', '', '0', '0', '', '', 'islink', '', '', '', '', '0', '1', '0', '0', '0', '1', '0', '0', '17', '0', '0');
INSERT INTO `wt_model_field` VALUES ('266', '12', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '0', '0');
INSERT INTO `wt_model_field` VALUES ('262', '11', 'content', '内容', '<style type=\"text/css\">.content_attr{ border:1px solid #CCC; padding:5px 8px; background:#FFC; margin-top:6px}</style><div class=\"content_attr\"><label><input name=\"add_introduce\" type=\"checkbox\"  value=\"1\" checked>是否截取内容</label><input type=\"text\" name=\"introcude_length\" value=\"200\" size=\"3\">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value=\"1\" checked>是否获取内容第</label><input type=\"text\" name=\"auto_thumb_no\" value=\"1\" size=\"2\" class=\"\">张图片作为标题图片\r\n</div>', '', '1', '999999', '', '内容不能为空', 'editor', 'a:6:{s:7:\"toolbar\";s:4:\"full\";s:12:\"defaultvalue\";s:0:\"\";s:13:\"enablekeylink\";s:1:\"1\";s:10:\"replacenum\";s:1:\"2\";s:9:\"link_mode\";s:1:\"0\";s:15:\"enablesaveimage\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '6', '0', '0');
INSERT INTO `wt_model_field` VALUES ('260', '11', 'description', '摘要', '', '', '0', '255', '', '', 'textarea', 'a:4:{s:5:\"width\";s:2:\"98\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `wt_model_field` VALUES ('261', '11', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `wt_model_field` VALUES ('259', '11', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '0', '0');
INSERT INTO `wt_model_field` VALUES ('258', '11', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '0', '0');
INSERT INTO `wt_model_field` VALUES ('256', '11', 'typeid', '类别', '', '', '0', '0', '', '', 'typeid', 'a:2:{s:9:\"minnumber\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '1', '1', '0', '0', '2', '0', '0');
INSERT INTO `wt_model_field` VALUES ('257', '11', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `wt_model_field` VALUES ('255', '11', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `wt_model_field` VALUES ('246', '11', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '0', '0');
INSERT INTO `wt_model_field` VALUES ('247', '11', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '0', '0');
INSERT INTO `wt_model_field` VALUES ('248', '11', 'pages', '分页方式', '', '', '0', '0', '', '', 'pages', '', '', '-99', '-99', '0', '0', '0', '1', '0', '0', '0', '0', '9', '0', '0');
INSERT INTO `wt_model_field` VALUES ('249', '11', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `wt_model_field` VALUES ('250', '11', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `wt_model_field` VALUES ('251', '11', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `wt_model_field` VALUES ('252', '11', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `wt_model_field` VALUES ('253', '11', 'relation', '相关文章', '', '', '0', '255', '', '', 'omnipotent', 'a:4:{s:8:\"formtext\";s:464:\"<input type=\"hidden\" name=\"info[relation]\" id=\"relation\" value=\"{FIELD_VALUE}\" style=\"50\" >\n<ul class=\"list-dot\" id=\"relation_text\">\n</ul>\n<input type=\"button\" value=\"添加相关\" onClick=\"omnipotent(\'selectid\',GV.DIMAUB+\'index.php?a=public_relationlist&m=Content&g=Content&modelid={MODELID}\',\'添加相关文章\',1)\" class=\"btn\">\n<span class=\"edit_content\">\n  <input type=\"button\" value=\"显示已有\" onClick=\"show_relation({MODELID},{ID})\" class=\"btn\">\n</span>\";s:9:\"fieldtype\";s:7:\"varchar\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '0', '0', '0', '1', '0', '8', '0', '0');
INSERT INTO `wt_model_field` VALUES ('216', '9', 'isHandle', '是否处理', '', '', '0', '0', '', '', 'number', 'a:9:{s:9:\"minnumber\";s:1:\"1\";s:9:\"maxnumber\";s:0:\"\";s:13:\"decimaldigits\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('215', '9', 'body', '留言内容', '', '', '0', '0', '', '', 'textarea', 'a:9:{s:5:\"width\";s:3:\"100\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('213', '9', 'type', '反馈类型', '', '', '0', '0', '', '', 'text', 'a:7:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('214', '9', 'infotitle', '信息标题', '', '', '0', '0', '', '', 'text', 'a:7:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('212', '9', 'phone', '联系方式', '', '', '0', '0', '', '', 'number', 'a:9:{s:9:\"minnumber\";s:1:\"1\";s:9:\"maxnumber\";s:0:\"\";s:13:\"decimaldigits\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('211', '9', 'name', '客户姓名', '', '', '0', '0', '', '', 'text', 'a:7:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('254', '11', 'thumb', '缩略图', '', '', '0', '100', '', '', 'image', 'a:9:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:14:\"upload_maxsize\";s:4:\"1024\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `wt_model_field` VALUES ('205', '9', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `wt_model_field` VALUES ('206', '9', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '0', '0');
INSERT INTO `wt_model_field` VALUES ('207', '9', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '0', '0');
INSERT INTO `wt_model_field` VALUES ('270', '12', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `wt_model_field` VALUES ('209', '9', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `wt_model_field` VALUES ('203', '9', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `wt_model_field` VALUES ('269', '12', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `wt_model_field` VALUES ('217', '9', 'reply', '回复', '', '', '0', '0', '', '', 'textarea', 'a:9:{s:5:\"width\";s:3:\"100\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('202', '9', 'thumb', '缩略图', '', '', '0', '100', '', '', 'image', 'a:9:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:14:\"upload_maxsize\";s:4:\"1024\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `wt_model_field` VALUES ('245', '11', 'islink', '转向链接', '', '', '0', '0', '', '', 'islink', '', '', '', '', '0', '1', '0', '0', '0', '1', '0', '0', '17', '0', '0');
INSERT INTO `wt_model_field` VALUES ('244', '11', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '0', '0');
INSERT INTO `wt_model_field` VALUES ('243', '11', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `wt_model_field` VALUES ('157', '8', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `wt_model_field` VALUES ('158', '8', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '0', '0');
INSERT INTO `wt_model_field` VALUES ('159', '8', 'islink', '转向链接', '', '', '0', '0', '', '', 'islink', '', '', '', '', '0', '1', '0', '0', '0', '1', '0', '0', '17', '0', '0');
INSERT INTO `wt_model_field` VALUES ('160', '8', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '0', '0');
INSERT INTO `wt_model_field` VALUES ('161', '8', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '0', '0');
INSERT INTO `wt_model_field` VALUES ('162', '8', 'pages', '分页方式', '', '', '0', '0', '', '', 'pages', '', '', '-99', '-99', '0', '0', '0', '1', '0', '0', '0', '0', '9', '0', '0');
INSERT INTO `wt_model_field` VALUES ('163', '8', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `wt_model_field` VALUES ('164', '8', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `wt_model_field` VALUES ('165', '8', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `wt_model_field` VALUES ('166', '8', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `wt_model_field` VALUES ('167', '8', 'relation', '相关文章', '', '', '0', '255', '', '', 'omnipotent', 'a:4:{s:8:\"formtext\";s:464:\"<input type=\"hidden\" name=\"info[relation]\" id=\"relation\" value=\"{FIELD_VALUE}\" style=\"50\" >\n<ul class=\"list-dot\" id=\"relation_text\">\n</ul>\n<input type=\"button\" value=\"添加相关\" onClick=\"omnipotent(\'selectid\',GV.DIMAUB+\'index.php?a=public_relationlist&m=Content&g=Content&modelid={MODELID}\',\'添加相关文章\',1)\" class=\"btn\">\n<span class=\"edit_content\">\n  <input type=\"button\" value=\"显示已有\" onClick=\"show_relation({MODELID},{ID})\" class=\"btn\">\n</span>\";s:9:\"fieldtype\";s:7:\"varchar\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '0', '0', '0', '1', '0', '8', '0', '0');
INSERT INTO `wt_model_field` VALUES ('168', '8', 'thumb', '缩略图', '', '', '0', '100', '', '', 'image', 'a:9:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:14:\"upload_maxsize\";s:4:\"1024\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `wt_model_field` VALUES ('169', '8', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `wt_model_field` VALUES ('170', '8', 'typeid', '类别', '', '', '0', '0', '', '', 'typeid', 'a:2:{s:9:\"minnumber\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '1', '1', '0', '0', '2', '0', '0');
INSERT INTO `wt_model_field` VALUES ('171', '8', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `wt_model_field` VALUES ('172', '8', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '0', '0');
INSERT INTO `wt_model_field` VALUES ('173', '8', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '0', '0');
INSERT INTO `wt_model_field` VALUES ('174', '8', 'description', '摘要', '', '', '0', '255', '', '', 'textarea', 'a:4:{s:5:\"width\";s:2:\"98\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `wt_model_field` VALUES ('175', '8', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `wt_model_field` VALUES ('176', '8', 'content', '内容', '<style type=\"text/css\">.content_attr{ border:1px solid #CCC; padding:5px 8px; background:#FFC; margin-top:6px}</style><div class=\"content_attr\"><label><input name=\"add_introduce\" type=\"checkbox\"  value=\"1\" checked>是否截取内容</label><input type=\"text\" name=\"introcude_length\" value=\"200\" size=\"3\">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value=\"1\" checked>是否获取内容第</label><input type=\"text\" name=\"auto_thumb_no\" value=\"1\" size=\"2\" class=\"\">张图片作为标题图片\r\n</div>', '', '1', '999999', '', '内容不能为空', 'editor', 'a:6:{s:7:\"toolbar\";s:4:\"full\";s:12:\"defaultvalue\";s:0:\"\";s:13:\"enablekeylink\";s:1:\"1\";s:10:\"replacenum\";s:1:\"2\";s:9:\"link_mode\";s:1:\"0\";s:15:\"enablesaveimage\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '6', '0', '0');
INSERT INTO `wt_model_field` VALUES ('177', '8', 'name', '姓名', '', '', '0', '0', '', '', 'text', 'a:7:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('178', '8', 'phone', '手机', '', '', '0', '0', '/^(1)[0-9]{10}$/', '', 'number', 'a:9:{s:9:\"minnumber\";s:1:\"1\";s:9:\"maxnumber\";s:0:\"\";s:13:\"decimaldigits\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '0', '1', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('179', '8', 'QQ', 'QQ', '', '', '0', '0', '/^[0-9]{5,20}$/', '', 'number', 'a:9:{s:9:\"minnumber\";s:1:\"1\";s:9:\"maxnumber\";s:0:\"\";s:13:\"decimaldigits\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '0', '1', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('180', '8', 'sex', '性别', '', '', '0', '0', '', '', 'text', 'a:7:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('181', '8', 'papers', '证件类别', '', '', '0', '0', '', '', 'text', 'a:7:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('272', '12', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `wt_model_field` VALUES ('273', '12', 'relation', '相关文章', '', '', '0', '255', '', '', 'omnipotent', 'a:4:{s:8:\"formtext\";s:464:\"<input type=\"hidden\" name=\"info[relation]\" id=\"relation\" value=\"{FIELD_VALUE}\" style=\"50\" >\n<ul class=\"list-dot\" id=\"relation_text\">\n</ul>\n<input type=\"button\" value=\"添加相关\" onClick=\"omnipotent(\'selectid\',GV.DIMAUB+\'index.php?a=public_relationlist&m=Content&g=Content&modelid={MODELID}\',\'添加相关文章\',1)\" class=\"btn\">\n<span class=\"edit_content\">\n  <input type=\"button\" value=\"显示已有\" onClick=\"show_relation({MODELID},{ID})\" class=\"btn\">\n</span>\";s:9:\"fieldtype\";s:7:\"varchar\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '0', '0', '0', '1', '0', '8', '0', '0');
INSERT INTO `wt_model_field` VALUES ('274', '12', 'thumb', '缩略图', '', '', '0', '100', '', '', 'image', 'a:9:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:14:\"upload_maxsize\";s:4:\"1024\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `wt_model_field` VALUES ('275', '12', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `wt_model_field` VALUES ('276', '12', 'typeid', '类别', '', '', '0', '0', '', '', 'typeid', 'a:2:{s:9:\"minnumber\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '1', '1', '0', '0', '2', '0', '0');
INSERT INTO `wt_model_field` VALUES ('277', '12', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `wt_model_field` VALUES ('278', '12', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '0', '0');
INSERT INTO `wt_model_field` VALUES ('279', '12', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '0', '0');
INSERT INTO `wt_model_field` VALUES ('280', '12', 'description', '摘要', '', '', '0', '255', '', '', 'textarea', 'a:4:{s:5:\"width\";s:2:\"98\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `wt_model_field` VALUES ('281', '12', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `wt_model_field` VALUES ('282', '12', 'content', '内容', '<style type=\"text/css\">.content_attr{ border:1px solid #CCC; padding:5px 8px; background:#FFC; margin-top:6px}</style><div class=\"content_attr\"><label><input name=\"add_introduce\" type=\"checkbox\"  value=\"1\" checked>是否截取内容</label><input type=\"text\" name=\"introcude_length\" value=\"200\" size=\"3\">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value=\"1\" checked>是否获取内容第</label><input type=\"text\" name=\"auto_thumb_no\" value=\"1\" size=\"2\" class=\"\">张图片作为标题图片\r\n</div>', '', '1', '999999', '', '内容不能为空', 'editor', 'a:6:{s:7:\"toolbar\";s:4:\"full\";s:12:\"defaultvalue\";s:0:\"\";s:13:\"enablekeylink\";s:1:\"1\";s:10:\"replacenum\";s:1:\"2\";s:9:\"link_mode\";s:1:\"0\";s:15:\"enablesaveimage\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '6', '0', '0');
INSERT INTO `wt_model_field` VALUES ('283', '4', 'very', '非常好', '', '', '0', '0', '', '', 'number', 'a:9:{s:9:\"minnumber\";s:1:\"1\";s:9:\"maxnumber\";s:0:\"\";s:13:\"decimaldigits\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('284', '4', 'good', '好', '', '', '0', '0', '', '', 'number', 'a:9:{s:9:\"minnumber\";s:1:\"1\";s:9:\"maxnumber\";s:0:\"\";s:13:\"decimaldigits\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('285', '4', 'general', '一般', '', '', '0', '0', '', '', 'number', 'a:9:{s:9:\"minnumber\";s:1:\"1\";s:9:\"maxnumber\";s:0:\"\";s:13:\"decimaldigits\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('286', '4', 'poor', '差', '', '', '0', '0', '', '', 'number', 'a:9:{s:9:\"minnumber\";s:1:\"1\";s:9:\"maxnumber\";s:0:\"\";s:13:\"decimaldigits\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `wt_model_field` VALUES ('287', '4', 'very_poor', '非常差', '', '', '0', '0', '', '', 'number', 'a:9:{s:9:\"minnumber\";s:1:\"1\";s:9:\"maxnumber\";s:0:\"\";s:13:\"decimaldigits\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `wt_module`
-- ----------------------------
DROP TABLE IF EXISTS `wt_module`;
CREATE TABLE `wt_module` (
  `module` varchar(15) NOT NULL COMMENT '模块',
  `modulename` varchar(20) NOT NULL COMMENT '模块名称',
  `sign` varchar(255) NOT NULL COMMENT '签名',
  `iscore` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '内置模块',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否可用',
  `version` varchar(50) NOT NULL DEFAULT '' COMMENT '版本',
  `setting` mediumtext NOT NULL COMMENT '设置信息',
  `installtime` int(10) NOT NULL COMMENT '安装时间',
  `updatetime` int(10) NOT NULL COMMENT '更新时间',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`module`),
  KEY `sign` (`sign`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='已安装模块列表';

-- ----------------------------
-- Records of wt_module
-- ----------------------------

-- ----------------------------
-- Table structure for `wt_operationlog`
-- ----------------------------
DROP TABLE IF EXISTS `wt_operationlog`;
CREATE TABLE `wt_operationlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `uid` smallint(6) NOT NULL COMMENT '操作帐号ID',
  `time` int(10) NOT NULL COMMENT '操作时间',
  `ip` char(20) NOT NULL DEFAULT '' COMMENT 'IP',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态,0错误提示，1为正确提示',
  `info` text NOT NULL COMMENT '其他说明',
  `get` varchar(255) NOT NULL COMMENT 'get数据',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `username` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=776 DEFAULT CHARSET=utf8 COMMENT='后台操作日志表';

-- ----------------------------
-- Records of wt_operationlog
-- ----------------------------
INSERT INTO `wt_operationlog` VALUES ('1', '1', '1429756457', '210.30.49.103', '1', '提示语：保存成功！<br/>模块：Template,控制器：Style,方法：add<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?g=Template&m=Style&a=add&dir=Default-Content-');
INSERT INTO `wt_operationlog` VALUES ('2', '1', '1429756471', '210.30.49.103', '1', '提示语：更新成功！<br/>模块：Template,控制器：Theme,方法：chose<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?g=Template&m=Theme&menuid=96');
INSERT INTO `wt_operationlog` VALUES ('3', '1', '1429756774', '210.30.49.103', '0', '提示语：主题未改变！<br/>模块：Template,控制器：Theme,方法：chose<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?g=Template&m=Theme&menuid=96');
INSERT INTO `wt_operationlog` VALUES ('4', '1', '1429756792', '210.30.49.103', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache');
INSERT INTO `wt_operationlog` VALUES ('5', '1', '1429756793', '210.30.49.103', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site');
INSERT INTO `wt_operationlog` VALUES ('6', '1', '1429756794', '210.30.49.103', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `wt_operationlog` VALUES ('7', '1', '1429756797', '210.30.49.103', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `wt_operationlog` VALUES ('8', '1', '1429756798', '210.30.49.103', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=1');
INSERT INTO `wt_operationlog` VALUES ('9', '1', '1429756798', '210.30.49.103', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=2');
INSERT INTO `wt_operationlog` VALUES ('10', '1', '1429756799', '210.30.49.103', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=3');
INSERT INTO `wt_operationlog` VALUES ('11', '1', '1429756800', '210.30.49.103', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=4');
INSERT INTO `wt_operationlog` VALUES ('12', '1', '1429756800', '210.30.49.103', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=5');
INSERT INTO `wt_operationlog` VALUES ('13', '1', '1429756801', '210.30.49.103', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=6');
INSERT INTO `wt_operationlog` VALUES ('14', '1', '1429756801', '210.30.49.103', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=7');
INSERT INTO `wt_operationlog` VALUES ('15', '1', '1429756802', '210.30.49.103', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=8');
INSERT INTO `wt_operationlog` VALUES ('16', '1', '1429756803', '210.30.49.103', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=9');
INSERT INTO `wt_operationlog` VALUES ('17', '1', '1429773802', '210.30.49.103', '0', '提示语：主题未改变！<br/>模块：Template,控制器：Theme,方法：chose<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?g=Template&m=Theme&menuid=96');
INSERT INTO `wt_operationlog` VALUES ('18', '1', '1429773950', '210.30.49.103', '0', '提示语：主题未改变！<br/>模块：Template,控制器：Theme,方法：chose<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?g=Template&m=Theme');
INSERT INTO `wt_operationlog` VALUES ('19', '1', '1429773962', '210.30.49.103', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache');
INSERT INTO `wt_operationlog` VALUES ('20', '1', '1429773963', '210.30.49.103', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site');
INSERT INTO `wt_operationlog` VALUES ('21', '1', '1429773964', '210.30.49.103', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `wt_operationlog` VALUES ('22', '1', '1429773967', '210.30.49.103', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `wt_operationlog` VALUES ('23', '1', '1429773967', '210.30.49.103', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=1');
INSERT INTO `wt_operationlog` VALUES ('24', '1', '1429773967', '210.30.49.103', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=2');
INSERT INTO `wt_operationlog` VALUES ('25', '1', '1429773968', '210.30.49.103', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=3');
INSERT INTO `wt_operationlog` VALUES ('26', '1', '1429773968', '210.30.49.103', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=4');
INSERT INTO `wt_operationlog` VALUES ('27', '1', '1429773969', '210.30.49.103', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=5');
INSERT INTO `wt_operationlog` VALUES ('28', '1', '1429773969', '210.30.49.103', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=6');
INSERT INTO `wt_operationlog` VALUES ('29', '1', '1429773970', '210.30.49.103', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=7');
INSERT INTO `wt_operationlog` VALUES ('30', '1', '1429773970', '210.30.49.103', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=8');
INSERT INTO `wt_operationlog` VALUES ('31', '1', '1429773970', '210.30.49.103', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=9');
INSERT INTO `wt_operationlog` VALUES ('32', '1', '1429773981', '210.30.49.103', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache');
INSERT INTO `wt_operationlog` VALUES ('33', '1', '1429773985', '210.30.49.103', '1', '提示语：站点日志清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache');
INSERT INTO `wt_operationlog` VALUES ('34', '1', '1429774006', '210.30.49.103', '1', '提示语：更新成功！<br/>模块：Template,控制器：Theme,方法：chose<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?g=Template&m=Theme&menuid=96');
INSERT INTO `wt_operationlog` VALUES ('35', '1', '1429774012', '210.30.49.103', '1', '提示语：更新成功！<br/>模块：Template,控制器：Theme,方法：chose<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?g=Template&m=Theme&menuid=96');
INSERT INTO `wt_operationlog` VALUES ('36', '1', '1429774434', '210.30.49.103', '1', '提示语：更新成功！<br/>模块：Template,控制器：Theme,方法：chose<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?g=Template&m=Theme&menuid=96');
INSERT INTO `wt_operationlog` VALUES ('37', '1', '1429775247', '210.30.49.103', '1', '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Models&a=add&menuid=54');
INSERT INTO `wt_operationlog` VALUES ('38', '1', '1429775521', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&a=add&modelid=1');
INSERT INTO `wt_operationlog` VALUES ('39', '1', '1429775676', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&a=add&modelid=1');
INSERT INTO `wt_operationlog` VALUES ('40', '1', '1429775812', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&a=add&modelid=1');
INSERT INTO `wt_operationlog` VALUES ('41', '1', '1429775982', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('42', '1', '1429775991', '210.30.49.103', '1', '提示语：栏目总数:<font color=\"#FF0000\">1</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Category');
INSERT INTO `wt_operationlog` VALUES ('43', '1', '1429775991', '210.30.49.103', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Category&a=public_cache');
INSERT INTO `wt_operationlog` VALUES ('44', '1', '1429776002', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('45', '1', '1429776387', '210.30.49.103', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=edit&catid=1');
INSERT INTO `wt_operationlog` VALUES ('46', '1', '1429776400', '210.30.49.103', '1', '提示语：栏目属性转换成功！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Category');
INSERT INTO `wt_operationlog` VALUES ('47', '1', '1429776491', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&a=add&modelid=1');
INSERT INTO `wt_operationlog` VALUES ('48', '1', '1429776609', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Content&a=add&catid=1');
INSERT INTO `wt_operationlog` VALUES ('49', '1', '1429779283', '210.30.49.103', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache');
INSERT INTO `wt_operationlog` VALUES ('50', '1', '1429779285', '210.30.49.103', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site');
INSERT INTO `wt_operationlog` VALUES ('51', '1', '1429779286', '210.30.49.103', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `wt_operationlog` VALUES ('52', '1', '1429779288', '210.30.49.103', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `wt_operationlog` VALUES ('53', '1', '1429779288', '210.30.49.103', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=1');
INSERT INTO `wt_operationlog` VALUES ('54', '1', '1429779289', '210.30.49.103', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=2');
INSERT INTO `wt_operationlog` VALUES ('55', '1', '1429779290', '210.30.49.103', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=3');
INSERT INTO `wt_operationlog` VALUES ('56', '1', '1429779291', '210.30.49.103', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=4');
INSERT INTO `wt_operationlog` VALUES ('57', '1', '1429779291', '210.30.49.103', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=5');
INSERT INTO `wt_operationlog` VALUES ('58', '1', '1429779292', '210.30.49.103', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=6');
INSERT INTO `wt_operationlog` VALUES ('59', '1', '1429779293', '210.30.49.103', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=7');
INSERT INTO `wt_operationlog` VALUES ('60', '1', '1429779294', '210.30.49.103', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=8');
INSERT INTO `wt_operationlog` VALUES ('61', '1', '1429779294', '210.30.49.103', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=9');
INSERT INTO `wt_operationlog` VALUES ('62', '1', '1429788289', '210.30.49.103', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Content&a=edit&catid=1&id=1');
INSERT INTO `wt_operationlog` VALUES ('63', '1', '1429788299', '210.30.49.103', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache');
INSERT INTO `wt_operationlog` VALUES ('64', '1', '1429788299', '210.30.49.103', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site');
INSERT INTO `wt_operationlog` VALUES ('65', '1', '1429788301', '210.30.49.103', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `wt_operationlog` VALUES ('66', '1', '1429788306', '210.30.49.103', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `wt_operationlog` VALUES ('67', '1', '1429788307', '210.30.49.103', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=1');
INSERT INTO `wt_operationlog` VALUES ('68', '1', '1429788309', '210.30.49.103', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=2');
INSERT INTO `wt_operationlog` VALUES ('69', '1', '1429788310', '210.30.49.103', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=3');
INSERT INTO `wt_operationlog` VALUES ('70', '1', '1429788311', '210.30.49.103', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=4');
INSERT INTO `wt_operationlog` VALUES ('71', '1', '1429788312', '210.30.49.103', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=5');
INSERT INTO `wt_operationlog` VALUES ('72', '1', '1429788313', '210.30.49.103', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=6');
INSERT INTO `wt_operationlog` VALUES ('73', '1', '1429788314', '210.30.49.103', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=7');
INSERT INTO `wt_operationlog` VALUES ('74', '1', '1429788315', '210.30.49.103', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=8');
INSERT INTO `wt_operationlog` VALUES ('75', '1', '1429788316', '210.30.49.103', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=9');
INSERT INTO `wt_operationlog` VALUES ('76', '1', '1429789293', '210.30.49.103', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&a=edit&fieldid=21&modelid=1');
INSERT INTO `wt_operationlog` VALUES ('77', '1', '1429789934', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('78', '1', '1429790394', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('79', '1', '1429791105', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('80', '1', '1429791421', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('81', '1', '1429793412', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('82', '1', '1429793727', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('83', '1', '1429794865', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&a=add&modelid=1');
INSERT INTO `wt_operationlog` VALUES ('84', '1', '1429794935', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&a=add&modelid=1');
INSERT INTO `wt_operationlog` VALUES ('85', '1', '1429795436', '210.30.49.103', '1', '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=category&menuid=69');
INSERT INTO `wt_operationlog` VALUES ('86', '1', '1429795438', '210.30.49.103', '1', '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=category');
INSERT INTO `wt_operationlog` VALUES ('87', '1', '1429795438', '210.30.49.103', '1', '提示语：更新完成！<br/>模块：Template,控制器：Custompage,方法：createhtml<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php');
INSERT INTO `wt_operationlog` VALUES ('88', '1', '1429795541', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('89', '1', '1429795592', '210.30.49.103', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Content&a=edit&catid=1&id=1');
INSERT INTO `wt_operationlog` VALUES ('90', '1', '1429795623', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('91', '1', '1429796775', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('92', '1', '1429797012', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('93', '1', '1429836219', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('94', '1', '1429836418', '210.30.49.103', '1', '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Models&a=add&menuid=54');
INSERT INTO `wt_operationlog` VALUES ('95', '1', '1429836449', '210.30.49.103', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&a=edit&fieldid=45&modelid=2');
INSERT INTO `wt_operationlog` VALUES ('96', '1', '1429836525', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('97', '1', '1429836568', '210.30.49.103', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Category,方法：index<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('98', '1', '1429836579', '210.30.49.103', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Category,方法：index<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('99', '1', '1429836687', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Content&a=add&catid=2');
INSERT INTO `wt_operationlog` VALUES ('100', '1', '1429837994', '210.30.49.103', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Urlrule&menuid=74');
INSERT INTO `wt_operationlog` VALUES ('101', '1', '1429837997', '210.30.49.103', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Urlrule');
INSERT INTO `wt_operationlog` VALUES ('102', '1', '1429838001', '210.30.49.103', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Urlrule');
INSERT INTO `wt_operationlog` VALUES ('103', '1', '1429838004', '210.30.49.103', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Urlrule');
INSERT INTO `wt_operationlog` VALUES ('104', '1', '1429838007', '210.30.49.103', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Urlrule');
INSERT INTO `wt_operationlog` VALUES ('105', '1', '1429838010', '210.30.49.103', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Urlrule');
INSERT INTO `wt_operationlog` VALUES ('106', '1', '1429838018', '210.30.49.103', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Urlrule');
INSERT INTO `wt_operationlog` VALUES ('107', '1', '1429838021', '210.30.49.103', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Urlrule');
INSERT INTO `wt_operationlog` VALUES ('108', '1', '1429838024', '210.30.49.103', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Urlrule');
INSERT INTO `wt_operationlog` VALUES ('109', '1', '1429838027', '210.30.49.103', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Urlrule');
INSERT INTO `wt_operationlog` VALUES ('110', '1', '1429838030', '210.30.49.103', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Urlrule');
INSERT INTO `wt_operationlog` VALUES ('111', '1', '1429838033', '210.30.49.103', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Urlrule');
INSERT INTO `wt_operationlog` VALUES ('112', '1', '1429838036', '210.30.49.103', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Urlrule');
INSERT INTO `wt_operationlog` VALUES ('113', '1', '1429838038', '210.30.49.103', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Urlrule');
INSERT INTO `wt_operationlog` VALUES ('114', '1', '1429838040', '210.30.49.103', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Urlrule');
INSERT INTO `wt_operationlog` VALUES ('115', '1', '1429838043', '210.30.49.103', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Urlrule');
INSERT INTO `wt_operationlog` VALUES ('116', '1', '1429838110', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Urlrule,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Urlrule&a=add&menuid=74');
INSERT INTO `wt_operationlog` VALUES ('117', '1', '1429838233', '210.30.49.103', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=edit&catid=2');
INSERT INTO `wt_operationlog` VALUES ('118', '1', '1429838249', '210.30.49.103', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache');
INSERT INTO `wt_operationlog` VALUES ('119', '1', '1429838250', '210.30.49.103', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site');
INSERT INTO `wt_operationlog` VALUES ('120', '1', '1429838251', '210.30.49.103', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `wt_operationlog` VALUES ('121', '1', '1429838254', '210.30.49.103', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `wt_operationlog` VALUES ('122', '1', '1429838255', '210.30.49.103', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=1');
INSERT INTO `wt_operationlog` VALUES ('123', '1', '1429838256', '210.30.49.103', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=2');
INSERT INTO `wt_operationlog` VALUES ('124', '1', '1429838257', '210.30.49.103', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=3');
INSERT INTO `wt_operationlog` VALUES ('125', '1', '1429838257', '210.30.49.103', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=4');
INSERT INTO `wt_operationlog` VALUES ('126', '1', '1429838258', '210.30.49.103', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=5');
INSERT INTO `wt_operationlog` VALUES ('127', '1', '1429838259', '210.30.49.103', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=6');
INSERT INTO `wt_operationlog` VALUES ('128', '1', '1429838260', '210.30.49.103', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=7');
INSERT INTO `wt_operationlog` VALUES ('129', '1', '1429838261', '210.30.49.103', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=8');
INSERT INTO `wt_operationlog` VALUES ('130', '1', '1429838261', '210.30.49.103', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=9');
INSERT INTO `wt_operationlog` VALUES ('131', '1', '1429838305', '210.30.49.103', '0', '提示语：您没有勾选信息！<br/>模块：Content,控制器：Createhtml,方法：batch_show<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Content&a=classlist&catid=2');
INSERT INTO `wt_operationlog` VALUES ('132', '1', '1429873348', '210.30.49.103', '1', '提示语：更新完成！<br/>模块：Template,控制器：Custompage,方法：createhtml<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php');
INSERT INTO `wt_operationlog` VALUES ('133', '1', '1429873352', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('134', '1', '1429873858', '210.30.49.103', '1', '提示语：更新完成！<br/>模块：Template,控制器：Custompage,方法：createhtml<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php');
INSERT INTO `wt_operationlog` VALUES ('135', '1', '1429873863', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('136', '1', '1429874013', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&a=add&modelid=1');
INSERT INTO `wt_operationlog` VALUES ('137', '1', '1429874278', '210.30.49.103', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&a=edit&fieldid=47&modelid=1');
INSERT INTO `wt_operationlog` VALUES ('138', '1', '1429874350', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Content&a=add&catid=1');
INSERT INTO `wt_operationlog` VALUES ('139', '1', '1429875007', '210.30.49.103', '1', '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Models&a=add&menuid=54');
INSERT INTO `wt_operationlog` VALUES ('140', '1', '1429875128', '210.30.49.103', '1', '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Models&a=add&menuid=54');
INSERT INTO `wt_operationlog` VALUES ('141', '1', '1429875130', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&a=add&modelid=3');
INSERT INTO `wt_operationlog` VALUES ('142', '1', '1429875239', '210.30.49.103', '0', '提示语：该字段已经存在！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&a=add&modelid=3');
INSERT INTO `wt_operationlog` VALUES ('143', '1', '1429875252', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('144', '1', '1429875257', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('145', '1', '1429875312', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('146', '1', '1429875315', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('147', '1', '1429875317', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('148', '1', '1429875353', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('149', '1', '1429875361', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('150', '1', '1429875452', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('151', '1', '1429875480', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('152', '1', '1429875533', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('153', '1', '1429875561', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('154', '1', '1429875571', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('155', '1', '1429875586', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('156', '1', '1429875636', '210.30.49.103', '1', '提示语：模型修改成功！<br/>模块：Content,控制器：Models,方法：edit<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Models&a=edit&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('157', '1', '1429875664', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('158', '1', '1429875679', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('159', '1', '1429875726', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('160', '1', '1429875741', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('161', '1', '1429875757', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('162', '1', '1429875784', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Urlrule,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Urlrule&a=add&menuid=74');
INSERT INTO `wt_operationlog` VALUES ('163', '1', '1429875832', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('164', '1', '1429875842', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('165', '1', '1429875853', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('166', '1', '1429875870', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('167', '1', '1429875874', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('168', '1', '1429875875', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('169', '1', '1429875929', '210.30.49.103', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache');
INSERT INTO `wt_operationlog` VALUES ('170', '1', '1429875930', '210.30.49.103', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site');
INSERT INTO `wt_operationlog` VALUES ('171', '1', '1429875931', '210.30.49.103', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `wt_operationlog` VALUES ('172', '1', '1429875933', '210.30.49.103', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `wt_operationlog` VALUES ('173', '1', '1429875934', '210.30.49.103', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=1');
INSERT INTO `wt_operationlog` VALUES ('174', '1', '1429875935', '210.30.49.103', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=2');
INSERT INTO `wt_operationlog` VALUES ('175', '1', '1429875936', '210.30.49.103', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=3');
INSERT INTO `wt_operationlog` VALUES ('176', '1', '1429875937', '210.30.49.103', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=4');
INSERT INTO `wt_operationlog` VALUES ('177', '1', '1429875938', '210.30.49.103', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=5');
INSERT INTO `wt_operationlog` VALUES ('178', '1', '1429875939', '210.30.49.103', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=6');
INSERT INTO `wt_operationlog` VALUES ('179', '1', '1429875939', '210.30.49.103', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=7');
INSERT INTO `wt_operationlog` VALUES ('180', '1', '1429875940', '210.30.49.103', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=8');
INSERT INTO `wt_operationlog` VALUES ('181', '1', '1429875941', '210.30.49.103', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=9');
INSERT INTO `wt_operationlog` VALUES ('182', '1', '1429875958', '210.30.49.103', '1', '提示语：更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?a=update_urls&m=Createhtml&g=Content&modelid=3');
INSERT INTO `wt_operationlog` VALUES ('183', '1', '1429876032', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('184', '1', '1429876633', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('185', '1', '1429877374', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('186', '1', '1429877375', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('187', '1', '1429877393', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('188', '1', '1429877437', '210.30.49.103', '1', '提示语：开始更新 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=update_urls&menuid=71');
INSERT INTO `wt_operationlog` VALUES ('189', '1', '1429877438', '210.30.49.103', '1', '提示语：开始更新 ..驾校资讯 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=update_urls');
INSERT INTO `wt_operationlog` VALUES ('190', '1', '1429877439', '210.30.49.103', '1', '提示语：开始更新 ..班型信息 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1');
INSERT INTO `wt_operationlog` VALUES ('191', '1', '1429877439', '210.30.49.103', '1', '提示语：更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=1');
INSERT INTO `wt_operationlog` VALUES ('192', '1', '1429877446', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('193', '1', '1429877449', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('194', '1', '1429877451', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('195', '1', '1429877458', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('196', '1', '1429877557', '210.30.49.103', '0', '提示语：该栏目下已经存在数据，无法转换！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Category&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('197', '1', '1429877562', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('198', '1', '1429877568', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('199', '1', '1429877589', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('200', '1', '1429877627', '210.30.49.103', '1', '提示语：修改成功！<br/>模块：Content,控制器：Urlrule,方法：edit<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Urlrule&a=edit&urlruleid=2');
INSERT INTO `wt_operationlog` VALUES ('201', '1', '1429877632', '210.30.49.103', '0', '提示语：栏目URL规则没有设置！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('202', '1', '1429878725', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('203', '1', '1429878760', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('204', '1', '1429878820', '210.30.49.103', '1', '提示语：栏目属性转换成功！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Category&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('205', '1', '1429878823', '210.30.49.103', '1', '提示语：栏目属性转换成功！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Category&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('206', '1', '1429878920', '210.30.49.103', '1', '提示语：模型修改成功！<br/>模块：Content,控制器：Models,方法：edit<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Models&a=edit&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('207', '1', '1429878949', '210.30.49.103', '1', '提示语：栏目总数:<font color=\"#FF0000\">4</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Category&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('208', '1', '1429878950', '210.30.49.103', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Category&a=public_cache');
INSERT INTO `wt_operationlog` VALUES ('209', '1', '1429879043', '210.30.49.103', '0', '提示语：字段类型不能为空！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&a=add&modelid=3');
INSERT INTO `wt_operationlog` VALUES ('210', '1', '1429879054', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&a=add&modelid=3');
INSERT INTO `wt_operationlog` VALUES ('211', '1', '1429879059', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&a=add&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('212', '1', '1429879098', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&a=add&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('213', '1', '1429879148', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Content&a=add&catid=4');
INSERT INTO `wt_operationlog` VALUES ('214', '1', '1429879151', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&a=add&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('215', '1', '1429879179', '210.30.49.103', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('216', '1', '1429879220', '210.30.49.103', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Field&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('217', '1', '1429879231', '210.30.49.103', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Field&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('218', '1', '1429879235', '210.30.49.103', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Field&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('219', '1', '1429879241', '210.30.49.103', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('220', '1', '1429879283', '210.30.49.103', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Field&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('221', '1', '1429879297', '210.30.49.103', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Field&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('222', '1', '1429879304', '210.30.49.103', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Field&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('223', '1', '1429879310', '210.30.49.103', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Field&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('224', '1', '1429879316', '210.30.49.103', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Field&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('225', '1', '1429879338', '210.30.49.103', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Field&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('226', '1', '1429879345', '210.30.49.103', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Field&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('227', '1', '1429879352', '210.30.49.103', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Field&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('228', '1', '1429879437', '210.30.49.103', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&a=edit&fieldid=90&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('229', '1', '1429879532', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Content&a=add&catid=4');
INSERT INTO `wt_operationlog` VALUES ('230', '1', '1429879536', '210.30.49.103', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&a=edit&fieldid=91&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('231', '1', '1429879564', '210.30.49.103', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache');
INSERT INTO `wt_operationlog` VALUES ('232', '1', '1429879565', '210.30.49.103', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site');
INSERT INTO `wt_operationlog` VALUES ('233', '1', '1429879565', '210.30.49.103', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `wt_operationlog` VALUES ('234', '1', '1429879569', '210.30.49.103', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `wt_operationlog` VALUES ('235', '1', '1429879571', '210.30.49.103', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=1');
INSERT INTO `wt_operationlog` VALUES ('236', '1', '1429879572', '210.30.49.103', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=2');
INSERT INTO `wt_operationlog` VALUES ('237', '1', '1429879573', '210.30.49.103', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=3');
INSERT INTO `wt_operationlog` VALUES ('238', '1', '1429879574', '210.30.49.103', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=4');
INSERT INTO `wt_operationlog` VALUES ('239', '1', '1429879574', '210.30.49.103', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=5');
INSERT INTO `wt_operationlog` VALUES ('240', '1', '1429879575', '210.30.49.103', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=6');
INSERT INTO `wt_operationlog` VALUES ('241', '1', '1429879576', '210.30.49.103', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=7');
INSERT INTO `wt_operationlog` VALUES ('242', '1', '1429879577', '210.30.49.103', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=8');
INSERT INTO `wt_operationlog` VALUES ('243', '1', '1429879577', '210.30.49.103', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php?a=cache&type=site&stop=9');
INSERT INTO `wt_operationlog` VALUES ('244', '1', '1429879609', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Content&a=add&catid=3');
INSERT INTO `wt_operationlog` VALUES ('245', '1', '1429879615', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Content&a=add&catid=4');
INSERT INTO `wt_operationlog` VALUES ('246', '1', '1429880934', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('247', '1', '1429881090', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('248', '1', '1429883153', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('249', '1', '1429883269', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('250', '1', '1429883477', '210.30.62.23', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('251', '1', '1429883546', '210.30.62.23', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('252', '1', '1429883616', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('253', '1', '1429883854', '210.30.62.23', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('254', '1', '1429883874', '210.30.62.23', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('255', '1', '1429883903', '210.30.62.23', '0', '提示语：系统关闭了首页生成静态！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('256', '1', '1429883995', '210.30.62.23', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('257', '1', '1429884064', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('258', '1', '1429884190', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('259', '1', '1429884273', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('260', '1', '1429884875', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('261', '1', '1429886161', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('262', '1', '1429886190', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('263', '1', '1429886490', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('264', '1', '1429886810', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('265', '1', '1429886876', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('266', '1', '1429887046', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('267', '1', '1429887142', '210.30.49.103', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&a=edit&fieldid=90&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('268', '1', '1429887152', '210.30.49.103', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&a=edit&fieldid=91&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('269', '1', '1429887162', '210.30.49.103', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&a=edit&fieldid=92&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('270', '1', '1429887219', '210.30.49.103', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Field&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('271', '1', '1429887237', '210.30.49.103', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Field&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('272', '1', '1429887266', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('273', '1', '1429887917', '210.30.49.103', '1', '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Models&a=add&menuid=54');
INSERT INTO `wt_operationlog` VALUES ('274', '1', '1429887950', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('275', '1', '1429887993', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Content&a=add&catid=5');
INSERT INTO `wt_operationlog` VALUES ('276', '1', '1429888737', '210.30.49.103', '1', '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=category&menuid=69');
INSERT INTO `wt_operationlog` VALUES ('277', '1', '1429888746', '210.30.49.103', '1', '提示语：开始更新 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=update_urls&menuid=71');
INSERT INTO `wt_operationlog` VALUES ('278', '1', '1429888747', '210.30.49.103', '1', '提示语：开始更新 ..驾校资讯 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=update_urls');
INSERT INTO `wt_operationlog` VALUES ('279', '1', '1429888747', '210.30.49.103', '1', '提示语：开始更新 ..教练简介 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1');
INSERT INTO `wt_operationlog` VALUES ('280', '1', '1429888748', '210.30.49.103', '1', '提示语：开始更新 ..主导航 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=1');
INSERT INTO `wt_operationlog` VALUES ('281', '1', '1429888748', '210.30.49.103', '1', '提示语：开始更新 ..关于驾校 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=2');
INSERT INTO `wt_operationlog` VALUES ('282', '1', '1429888749', '210.30.49.103', '1', '提示语：开始更新 ..班型信息 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=3');
INSERT INTO `wt_operationlog` VALUES ('283', '1', '1429888749', '210.30.49.103', '1', '提示语：更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=4');
INSERT INTO `wt_operationlog` VALUES ('284', '1', '1429888755', '210.30.49.103', '1', '提示语：开始更新 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=update_show&menuid=72');
INSERT INTO `wt_operationlog` VALUES ('285', '1', '1429888757', '210.30.49.103', '1', '提示语：更新完成！<br/>模块：Template,控制器：Custompage,方法：createhtml<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php');
INSERT INTO `wt_operationlog` VALUES ('286', '1', '1429901902', '210.30.49.103', '1', '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Models&a=add&menuid=54');
INSERT INTO `wt_operationlog` VALUES ('287', '1', '1429901988', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('288', '1', '1429902476', '210.30.49.103', '1', '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Models&a=add&menuid=54');
INSERT INTO `wt_operationlog` VALUES ('289', '1', '1429902502', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('290', '1', '1429902594', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&a=add&modelid=7');
INSERT INTO `wt_operationlog` VALUES ('291', '1', '1429902639', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&a=add&modelid=7');
INSERT INTO `wt_operationlog` VALUES ('292', '1', '1429902683', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&a=add&modelid=7');
INSERT INTO `wt_operationlog` VALUES ('293', '1', '1429902997', '210.30.49.103', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://210.30.62.23:8099/index.php?m=Field&a=add&modelid=7');
INSERT INTO `wt_operationlog` VALUES ('294', '1', '1429903232', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('295', '1', '1429903279', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('296', '1', '1429903329', '210.30.49.103', '0', '提示语：系统关闭了首页生成静态！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('297', '1', '1429903476', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('298', '1', '1429903491', '210.30.49.103', '1', '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=category&menuid=69');
INSERT INTO `wt_operationlog` VALUES ('299', '1', '1429903504', '210.30.49.103', '1', '提示语：开始更新 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=update_urls&menuid=71');
INSERT INTO `wt_operationlog` VALUES ('300', '1', '1429903504', '210.30.49.103', '1', '提示语：开始更新 ..驾校资讯 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=update_urls');
INSERT INTO `wt_operationlog` VALUES ('301', '1', '1429903505', '210.30.49.103', '1', '提示语：开始更新 ..教练简介 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1');
INSERT INTO `wt_operationlog` VALUES ('302', '1', '1429903505', '210.30.49.103', '1', '提示语：开始更新 ..主导航 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=1');
INSERT INTO `wt_operationlog` VALUES ('303', '1', '1429903505', '210.30.49.103', '1', '提示语：开始更新 ..关于驾校 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=2');
INSERT INTO `wt_operationlog` VALUES ('304', '1', '1429903506', '210.30.49.103', '1', '提示语：开始更新 ..学车指南 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=3');
INSERT INTO `wt_operationlog` VALUES ('305', '1', '1429903506', '210.30.49.103', '1', '提示语：开始更新 ..留言中心 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=4');
INSERT INTO `wt_operationlog` VALUES ('306', '1', '1429903507', '210.30.49.103', '1', '提示语：开始更新 ..班型信息 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=5');
INSERT INTO `wt_operationlog` VALUES ('307', '1', '1429903507', '210.30.49.103', '1', '提示语：更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=6');
INSERT INTO `wt_operationlog` VALUES ('308', '1', '1429903511', '210.30.49.103', '1', '提示语：更新完成！<br/>模块：Template,控制器：Custompage,方法：createhtml<br/>请求方式：GET', 'http://210.30.62.23:8099/admin.php');
INSERT INTO `wt_operationlog` VALUES ('309', '1', '1429903826', '210.30.49.103', '1', '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=category&menuid=69');
INSERT INTO `wt_operationlog` VALUES ('310', '1', '1429903883', '210.30.49.103', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('311', '1', '1429904198', '210.30.49.103', '1', '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?a=category&m=Createhtml&g=Content&modelid=1');
INSERT INTO `wt_operationlog` VALUES ('312', '1', '1429904198', '210.30.49.103', '1', '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=category');
INSERT INTO `wt_operationlog` VALUES ('313', '1', '1429904230', '210.30.49.103', '1', '提示语：开始更新 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：POST', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=update_urls&menuid=71');
INSERT INTO `wt_operationlog` VALUES ('314', '1', '1429904231', '210.30.49.103', '1', '提示语：开始更新 ..班型信息 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=update_urls');
INSERT INTO `wt_operationlog` VALUES ('315', '1', '1429904231', '210.30.49.103', '1', '提示语：更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://210.30.62.23:8099/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1');
INSERT INTO `wt_operationlog` VALUES ('316', '1', '1427253216', '0.0.0.0', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=edit&catid=3&id=1');
INSERT INTO `wt_operationlog` VALUES ('317', '1', '1427253846', '0.0.0.0', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=edit&fieldid=33&modelid=2');
INSERT INTO `wt_operationlog` VALUES ('318', '1', '1427254099', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Urlrule,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Urlrule&a=add&menuid=74');
INSERT INTO `wt_operationlog` VALUES ('319', '1', '1427254682', '0.0.0.0', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Category&a=edit&catid=2');
INSERT INTO `wt_operationlog` VALUES ('320', '1', '1427259675', '0.0.0.0', '0', '提示语：你还没有安装插件模块，无法使用插件商店！<br/>模块：Admin,控制器：Addonshop,方法：index<br/>请求方式：GET', 'http://localhost:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('321', '1', '1427259721', '0.0.0.0', '0', '提示语：云平台帐号不能为空！请进入网站设置->高级配置中进行配置。提示：配置完记得 更新缓存 ！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_1<br/>请求方式：Ajax', 'http://localhost:5555/admin.php?m=Moduleshop&a=install&sign=912b7e22bd9d86dddb1d460ca90581eb');
INSERT INTO `wt_operationlog` VALUES ('322', '1', '1427259968', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/admin.php?m=Menu&a=add&parentid=44');
INSERT INTO `wt_operationlog` VALUES ('323', '1', '1427260046', '0.0.0.0', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://localhost:5555/admin.php?a=cache');
INSERT INTO `wt_operationlog` VALUES ('324', '1', '1427260052', '0.0.0.0', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://localhost:5555/admin.php?a=cache');
INSERT INTO `wt_operationlog` VALUES ('325', '1', '1427260054', '0.0.0.0', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://localhost:5555/admin.php?a=cache&type=site');
INSERT INTO `wt_operationlog` VALUES ('326', '1', '1427260055', '0.0.0.0', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://localhost:5555/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `wt_operationlog` VALUES ('327', '1', '1427260058', '0.0.0.0', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://localhost:5555/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `wt_operationlog` VALUES ('328', '1', '1427260060', '0.0.0.0', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://localhost:5555/admin.php?a=cache&type=site&stop=1');
INSERT INTO `wt_operationlog` VALUES ('329', '1', '1427260061', '0.0.0.0', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://localhost:5555/admin.php?a=cache&type=site&stop=2');
INSERT INTO `wt_operationlog` VALUES ('330', '1', '1427260063', '0.0.0.0', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://localhost:5555/admin.php?a=cache&type=site&stop=3');
INSERT INTO `wt_operationlog` VALUES ('331', '1', '1427260064', '0.0.0.0', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://localhost:5555/admin.php?a=cache&type=site&stop=4');
INSERT INTO `wt_operationlog` VALUES ('332', '1', '1427260065', '0.0.0.0', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://localhost:5555/admin.php?a=cache&type=site&stop=5');
INSERT INTO `wt_operationlog` VALUES ('333', '1', '1427260066', '0.0.0.0', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://localhost:5555/admin.php?a=cache&type=site&stop=6');
INSERT INTO `wt_operationlog` VALUES ('334', '1', '1427260068', '0.0.0.0', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://localhost:5555/admin.php?a=cache&type=site&stop=7');
INSERT INTO `wt_operationlog` VALUES ('335', '1', '1427260069', '0.0.0.0', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://localhost:5555/admin.php?a=cache&type=site&stop=8');
INSERT INTO `wt_operationlog` VALUES ('336', '1', '1427260070', '0.0.0.0', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://localhost:5555/admin.php?a=cache&type=site&stop=9');
INSERT INTO `wt_operationlog` VALUES ('337', '1', '1427261150', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/admin.php?m=Menu&a=add&parentid=113');
INSERT INTO `wt_operationlog` VALUES ('338', '1', '1427261205', '0.0.0.0', '0', '提示语：菜单名称不能为空！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/admin.php?m=Menu&a=add&parentid=113');
INSERT INTO `wt_operationlog` VALUES ('339', '1', '1427261214', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/admin.php?m=Menu&a=add&parentid=113');
INSERT INTO `wt_operationlog` VALUES ('340', '1', '1427261280', '0.0.0.0', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/admin.php?m=Menu&a=edit&id=114');
INSERT INTO `wt_operationlog` VALUES ('341', '1', '1427261301', '0.0.0.0', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/admin.php?m=Menu&a=edit&id=115');
INSERT INTO `wt_operationlog` VALUES ('342', '1', '1427261338', '0.0.0.0', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/admin.php?m=Menu&a=edit&id=114');
INSERT INTO `wt_operationlog` VALUES ('343', '1', '1427261362', '0.0.0.0', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/admin.php?m=Menu&a=edit&id=115');
INSERT INTO `wt_operationlog` VALUES ('344', '1', '1427261373', '0.0.0.0', '0', '提示语：该页面不存在！<br/>模块：Content,控制器：Registration,方法：processed<br/>请求方式：GET', 'http://localhost:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('345', '1', '1427261442', '0.0.0.0', '0', '提示语：该页面不存在！<br/>模块：Content,控制器：Registration,方法：processed<br/>请求方式：GET', 'http://localhost:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('346', '1', '1427261451', '0.0.0.0', '0', '提示语：该页面不存在！<br/>模块：Content,控制器：Registration,方法：processed<br/>请求方式：GET', 'http://localhost:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('347', '1', '1427261481', '0.0.0.0', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/admin.php?m=Menu&a=edit&id=114');
INSERT INTO `wt_operationlog` VALUES ('348', '1', '1427261492', '0.0.0.0', '0', '提示语：该页面不存在！<br/>模块：Content,控制器：Registration,方法：processed<br/>请求方式：GET', 'http://localhost:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('349', '1', '1427262235', '0.0.0.0', '1', '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Models&a=add&menuid=54');
INSERT INTO `wt_operationlog` VALUES ('350', '1', '1427262276', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=8');
INSERT INTO `wt_operationlog` VALUES ('351', '1', '1427262320', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=8');
INSERT INTO `wt_operationlog` VALUES ('352', '1', '1427262339', '0.0.0.0', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=edit&fieldid=177&modelid=8');
INSERT INTO `wt_operationlog` VALUES ('353', '1', '1427262359', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=8');
INSERT INTO `wt_operationlog` VALUES ('354', '1', '1429948400', '192.168.2.3', '0', '提示语：该页面不存在！<br/>模块：Content,控制器：Registration,方法：processed<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('355', '1', '1429948964', '192.168.2.3', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('356', '1', '1429949740', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/admin.php?m=Menu&a=add&parentid=65');
INSERT INTO `wt_operationlog` VALUES ('357', '1', '1429949777', '192.168.2.3', '1', '提示语：更新完成！<br/>模块：Template,控制器：Custompage,方法：createhtml<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('358', '1', '1429949844', '192.168.2.3', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/admin.php?m=Menu&a=edit&id=116');
INSERT INTO `wt_operationlog` VALUES ('359', '1', '1429950344', '192.168.2.3', '0', '提示语：该页面不存在！<br/>模块：Content,控制器：Registration,方法：processed<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('360', '1', '1429950344', '192.168.2.3', '0', '提示语：该页面不存在！<br/>模块：Content,控制器：CompanyMsg,方法：index<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('361', '1', '1429950349', '192.168.2.3', '0', '提示语：该页面不存在！<br/>模块：Content,控制器：Registration,方法：processed<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('362', '1', '1429950712', '192.168.2.3', '1', '提示语：更新完成！<br/>模块：Template,控制器：Custompage,方法：createhtml<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('363', '1', '1429950931', '192.168.2.3', '0', '提示语：该页面不存在！<br/>模块：Content,控制器：CompanyMsg,方法：index<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('364', '1', '1429950939', '192.168.2.3', '0', '提示语：该页面不存在！<br/>模块：Content,控制器：CompanyMsg,方法：index<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('365', '1', '1429950969', '192.168.2.3', '0', '提示语：该页面不存在！<br/>模块：Content,控制器：CompanyMsg,方法：index<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('366', '1', '1429950972', '192.168.2.3', '0', '提示语：该页面不存在！<br/>模块：Content,控制器：CompanyMsg,方法：index<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('367', '1', '1429950977', '192.168.2.3', '0', '提示语：该页面不存在！<br/>模块：Content,控制器：CompanyMsg,方法：index<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('368', '1', '1429950994', '192.168.2.3', '1', '提示语：更新完成！<br/>模块：Template,控制器：Custompage,方法：createhtml<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('369', '1', '1429950996', '192.168.2.3', '0', '提示语：该页面不存在！<br/>模块：Content,控制器：CompanyMsg,方法：index<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('370', '1', '1427273196', '192.168.2.3', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php?a=cache');
INSERT INTO `wt_operationlog` VALUES ('371', '1', '1427273197', '192.168.2.3', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php?a=cache&type=site');
INSERT INTO `wt_operationlog` VALUES ('372', '1', '1427273199', '192.168.2.3', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `wt_operationlog` VALUES ('373', '1', '1427273200', '192.168.2.3', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `wt_operationlog` VALUES ('374', '1', '1427273200', '192.168.2.3', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `wt_operationlog` VALUES ('375', '1', '1427273201', '192.168.2.3', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `wt_operationlog` VALUES ('376', '1', '1427273201', '192.168.2.3', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php?a=cache&type=site&stop=1');
INSERT INTO `wt_operationlog` VALUES ('377', '1', '1427273202', '192.168.2.3', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php?a=cache&type=site&stop=2');
INSERT INTO `wt_operationlog` VALUES ('378', '1', '1427273203', '192.168.2.3', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php?a=cache&type=site&stop=3');
INSERT INTO `wt_operationlog` VALUES ('379', '1', '1427273203', '192.168.2.3', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php?a=cache&type=site&stop=4');
INSERT INTO `wt_operationlog` VALUES ('380', '1', '1427273204', '192.168.2.3', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php?a=cache&type=site&stop=5');
INSERT INTO `wt_operationlog` VALUES ('381', '1', '1427273205', '192.168.2.3', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php?a=cache&type=site&stop=6');
INSERT INTO `wt_operationlog` VALUES ('382', '1', '1427273206', '192.168.2.3', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php?a=cache&type=site&stop=7');
INSERT INTO `wt_operationlog` VALUES ('383', '1', '1427273207', '192.168.2.3', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php?a=cache&type=site&stop=8');
INSERT INTO `wt_operationlog` VALUES ('384', '1', '1427273207', '192.168.2.3', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php?a=cache&type=site&stop=9');
INSERT INTO `wt_operationlog` VALUES ('385', '1', '1427273341', '0.0.0.0', '0', '提示语：该菜单下还有子菜单，无法删除！<br/>模块：Admin,控制器：Menu,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/admin.php?m=Menu&menuid=17');
INSERT INTO `wt_operationlog` VALUES ('386', '1', '1427273346', '0.0.0.0', '0', '提示语：该菜单下还有子菜单，无法删除！<br/>模块：Admin,控制器：Menu,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/admin.php?m=Menu&menuid=17');
INSERT INTO `wt_operationlog` VALUES ('387', '1', '1427273350', '0.0.0.0', '1', '提示语：删除菜单成功！<br/>模块：Admin,控制器：Menu,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/admin.php?m=Menu&menuid=17');
INSERT INTO `wt_operationlog` VALUES ('388', '1', '1427273365', '0.0.0.0', '1', '提示语：删除菜单成功！<br/>模块：Admin,控制器：Menu,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/admin.php?m=Menu&menuid=17');
INSERT INTO `wt_operationlog` VALUES ('389', '1', '1427273372', '0.0.0.0', '1', '提示语：删除菜单成功！<br/>模块：Admin,控制器：Menu,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/admin.php?m=Menu&menuid=17');
INSERT INTO `wt_operationlog` VALUES ('390', '1', '1427273382', '0.0.0.0', '1', '提示语：删除菜单成功！<br/>模块：Admin,控制器：Menu,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/admin.php?m=Menu&menuid=17');
INSERT INTO `wt_operationlog` VALUES ('391', '1', '1427273390', '0.0.0.0', '1', '提示语：删除菜单成功！<br/>模块：Admin,控制器：Menu,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/admin.php?m=Menu&menuid=17');
INSERT INTO `wt_operationlog` VALUES ('392', '1', '1427273412', '0.0.0.0', '1', '提示语：删除菜单成功！<br/>模块：Admin,控制器：Menu,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/admin.php?m=Menu&menuid=17');
INSERT INTO `wt_operationlog` VALUES ('393', '1', '1427273421', '0.0.0.0', '1', '提示语：删除菜单成功！<br/>模块：Admin,控制器：Menu,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/admin.php?m=Menu&menuid=17');
INSERT INTO `wt_operationlog` VALUES ('394', '1', '1427273430', '0.0.0.0', '1', '提示语：删除菜单成功！<br/>模块：Admin,控制器：Menu,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/admin.php?m=Menu&menuid=17');
INSERT INTO `wt_operationlog` VALUES ('395', '1', '1427273441', '0.0.0.0', '0', '提示语：该菜单下还有子菜单，无法删除！<br/>模块：Admin,控制器：Menu,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/admin.php?m=Menu&menuid=17');
INSERT INTO `wt_operationlog` VALUES ('396', '1', '1427273448', '0.0.0.0', '1', '提示语：删除菜单成功！<br/>模块：Admin,控制器：Menu,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/admin.php?m=Menu&menuid=17');
INSERT INTO `wt_operationlog` VALUES ('397', '1', '1427273459', '0.0.0.0', '1', '提示语：删除菜单成功！<br/>模块：Admin,控制器：Menu,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/admin.php?m=Menu&menuid=17');
INSERT INTO `wt_operationlog` VALUES ('398', '1', '1427273467', '0.0.0.0', '1', '提示语：删除菜单成功！<br/>模块：Admin,控制器：Menu,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/admin.php?m=Menu&menuid=17');
INSERT INTO `wt_operationlog` VALUES ('399', '1', '1427273568', '192.168.2.3', '1', '提示语：更新完成！<br/>模块：Template,控制器：Custompage,方法：createhtml<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('400', '1', '1427273571', '192.168.2.3', '0', '提示语：该页面不存在！<br/>模块：Content,控制器：Registration,方法：processed<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('401', '1', '1427280021', '192.168.2.3', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://192.168.2.2:5555/admin.php?m=Public&a=login');
INSERT INTO `wt_operationlog` VALUES ('402', '1', '1427281675', '192.168.2.3', '0', '提示语：该页面不存在！<br/>模块：Content,控制器：Registration,方法：processed<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('403', '1', '1427282095', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=8');
INSERT INTO `wt_operationlog` VALUES ('404', '1', '1427282152', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=8');
INSERT INTO `wt_operationlog` VALUES ('405', '0', '1427282156', '192.168.2.3', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://192.168.2.2:5555/admin.php?m=Public&a=login');
INSERT INTO `wt_operationlog` VALUES ('406', '1', '1427282209', '0.0.0.0', '0', '提示语：该模型已经在使用中，请删除栏目后再进行删除！<br/>模块：Content,控制器：Models,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Models&menuid=54');
INSERT INTO `wt_operationlog` VALUES ('407', '1', '1427282215', '0.0.0.0', '0', '提示语：该模型已经在使用中，请删除栏目后再进行删除！<br/>模块：Content,控制器：Models,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Models&menuid=54');
INSERT INTO `wt_operationlog` VALUES ('408', '1', '1427282223', '0.0.0.0', '0', '提示语：该模型已经在使用中，请删除栏目后再进行删除！<br/>模块：Content,控制器：Models,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Models&menuid=54');
INSERT INTO `wt_operationlog` VALUES ('409', '1', '1427282236', '0.0.0.0', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Category&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('410', '1', '1427282238', '0.0.0.0', '1', '提示语：栏目总数:<font color=\"#FF0000\">6</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://localhost:5555/index.php?m=Category&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('411', '1', '1427282240', '0.0.0.0', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://localhost:5555/index.php?m=Category&a=public_cache');
INSERT INTO `wt_operationlog` VALUES ('412', '1', '1427282246', '0.0.0.0', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Category');
INSERT INTO `wt_operationlog` VALUES ('413', '1', '1427282246', '0.0.0.0', '1', '提示语：栏目总数:<font color=\"#FF0000\">5</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://localhost:5555/index.php?m=Category');
INSERT INTO `wt_operationlog` VALUES ('414', '1', '1427282247', '0.0.0.0', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://localhost:5555/index.php?m=Category&a=public_cache');
INSERT INTO `wt_operationlog` VALUES ('415', '1', '1427282254', '0.0.0.0', '0', '提示语：栏目删除失败，错误原因可能是栏目下存在信息，无法删除！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Category');
INSERT INTO `wt_operationlog` VALUES ('416', '1', '1427282276', '0.0.0.0', '0', '提示语：栏目删除失败，错误原因可能是栏目下存在信息，无法删除！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Category&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('417', '1', '1427282291', '0.0.0.0', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=classlist&catid=5');
INSERT INTO `wt_operationlog` VALUES ('418', '1', '1427282297', '0.0.0.0', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Category&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('419', '1', '1427282297', '0.0.0.0', '1', '提示语：栏目总数:<font color=\"#FF0000\">4</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://localhost:5555/index.php?m=Category&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('420', '1', '1427282299', '0.0.0.0', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://localhost:5555/index.php?m=Category&a=public_cache');
INSERT INTO `wt_operationlog` VALUES ('421', '1', '1427282352', '0.0.0.0', '1', '提示语：删除成功！<br/>模块：Content,控制器：Models,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Models&menuid=54');
INSERT INTO `wt_operationlog` VALUES ('422', '1', '1427282356', '0.0.0.0', '1', '提示语：删除成功！<br/>模块：Content,控制器：Models,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Models');
INSERT INTO `wt_operationlog` VALUES ('423', '1', '1427282360', '0.0.0.0', '1', '提示语：删除成功！<br/>模块：Content,控制器：Models,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Models');
INSERT INTO `wt_operationlog` VALUES ('424', '1', '1427282494', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=8');
INSERT INTO `wt_operationlog` VALUES ('425', '1', '1427282576', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=8');
INSERT INTO `wt_operationlog` VALUES ('426', '1', '1427282720', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=8');
INSERT INTO `wt_operationlog` VALUES ('427', '1', '1429961787', '192.168.2.3', '0', '提示语：该页面不存在！<br/>模块：Content,控制器：Registration,方法：processed<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('428', '1', '1429961804', '192.168.2.3', '1', '提示语：更新完成！<br/>模块：Template,控制器：Custompage,方法：createhtml<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('429', '1', '1429962127', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=8');
INSERT INTO `wt_operationlog` VALUES ('430', '1', '1429962146', '0.0.0.0', '0', '提示语：字段类型不能为空！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=8');
INSERT INTO `wt_operationlog` VALUES ('431', '1', '1429962154', '0.0.0.0', '0', '提示语：该字段已经存在！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=8');
INSERT INTO `wt_operationlog` VALUES ('432', '1', '1429962439', '192.168.2.3', '0', '提示语：该栏目不存在！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&menuid=116');
INSERT INTO `wt_operationlog` VALUES ('433', '1', '1429962957', '0.0.0.0', '0', '提示语：该字段已经存在！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=8');
INSERT INTO `wt_operationlog` VALUES ('434', '1', '1429963061', '0.0.0.0', '0', '提示语：该字段已经存在！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=8');
INSERT INTO `wt_operationlog` VALUES ('435', '1', '1429963073', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=8');
INSERT INTO `wt_operationlog` VALUES ('436', '1', '1429963807', '192.168.2.3', '0', '提示语：栏目添加失败！<br/>模块：Content,控制器：CompanyMsg,方法：add<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&menuid=116');
INSERT INTO `wt_operationlog` VALUES ('437', '1', '1429963836', '192.168.2.3', '0', '提示语：栏目添加失败！<br/>模块：Content,控制器：CompanyMsg,方法：add<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&menuid=116');
INSERT INTO `wt_operationlog` VALUES ('438', '1', '1429963872', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：CompanyMsg,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=add&');
INSERT INTO `wt_operationlog` VALUES ('439', '1', '1429963887', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：CompanyMsg,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=add&');
INSERT INTO `wt_operationlog` VALUES ('440', '1', '1429964220', '0.0.0.0', '0', '提示语：该页面不存在！<br/>模块：Content,控制器：Registration,方法：processed<br/>请求方式：GET', 'http://localhost:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('441', '1', '1429964286', '0.0.0.0', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=edit&fieldid=186&modelid=8');
INSERT INTO `wt_operationlog` VALUES ('442', '1', '1429964416', '0.0.0.0', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&modelid=8');
INSERT INTO `wt_operationlog` VALUES ('443', '1', '1429964436', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=8');
INSERT INTO `wt_operationlog` VALUES ('444', '1', '1429964467', '0.0.0.0', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&modelid=8');
INSERT INTO `wt_operationlog` VALUES ('445', '1', '1429964505', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=8');
INSERT INTO `wt_operationlog` VALUES ('446', '1', '1429964599', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：CompanyMsg,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=add&');
INSERT INTO `wt_operationlog` VALUES ('447', '1', '1429964623', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：CompanyMsg,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=add&');
INSERT INTO `wt_operationlog` VALUES ('448', '1', '1429964628', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：CompanyMsg,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=add&');
INSERT INTO `wt_operationlog` VALUES ('449', '1', '1429964644', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=8');
INSERT INTO `wt_operationlog` VALUES ('450', '1', '1429964660', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：CompanyMsg,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=add&');
INSERT INTO `wt_operationlog` VALUES ('451', '1', '1429964665', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：CompanyMsg,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=add&');
INSERT INTO `wt_operationlog` VALUES ('452', '1', '1429964714', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=1');
INSERT INTO `wt_operationlog` VALUES ('453', '1', '1429964722', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：CompanyMsg,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=add&');
INSERT INTO `wt_operationlog` VALUES ('454', '1', '1429964811', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：CompanyMsg,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=add&');
INSERT INTO `wt_operationlog` VALUES ('455', '1', '1429967004', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：CompanyMsg,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=add&');
INSERT INTO `wt_operationlog` VALUES ('456', '1', '1430017101', '0.0.0.0', '1', '提示语：<br/>模块：Content,控制器：Registration,方法：handle<br/>请求方式：POST', 'http://localhost:5555/index.php?m=Registration&a=processe&menuid=114');
INSERT INTO `wt_operationlog` VALUES ('457', '1', '1430017299', '192.168.2.3', '0', '提示语：该页面不存在！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&menuid=116');
INSERT INTO `wt_operationlog` VALUES ('458', '1', '1430017340', '192.168.2.3', '0', '提示语：该栏目不存在！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&menuid=116');
INSERT INTO `wt_operationlog` VALUES ('459', '1', '1430017457', '0.0.0.0', '1', '提示语：<br/>模块：Content,控制器：Registration,方法：handle<br/>请求方式：POST', 'http://localhost:5555/index.php?m=Registration&a=processe&menuid=114');
INSERT INTO `wt_operationlog` VALUES ('460', '1', '1430017607', '192.168.2.3', '0', '提示语：该栏目不存在！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&menuid=116');
INSERT INTO `wt_operationlog` VALUES ('461', '1', '1430017654', '192.168.2.3', '0', '提示语：该栏目不存在！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&menuid=116');
INSERT INTO `wt_operationlog` VALUES ('462', '1', '1430017699', '192.168.2.3', '0', '提示语：该栏目不存在！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&menuid=116');
INSERT INTO `wt_operationlog` VALUES ('463', '1', '1430021643', '0.0.0.0', '1', '提示语：<br/>模块：Content,控制器：Registration,方法：handle<br/>请求方式：POST', 'http://localhost:5555/index.php?m=Registration&a=processe&menuid=114');
INSERT INTO `wt_operationlog` VALUES ('464', '1', '1430022401', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：CompanyMsg,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=CompanyMsg&a=add&');
INSERT INTO `wt_operationlog` VALUES ('465', '1', '1430024215', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&menuid=116');
INSERT INTO `wt_operationlog` VALUES ('466', '1', '1430024264', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&menuid=116');
INSERT INTO `wt_operationlog` VALUES ('467', '1', '1430024335', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&menuid=116');
INSERT INTO `wt_operationlog` VALUES ('468', '1', '1430024530', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=5');
INSERT INTO `wt_operationlog` VALUES ('469', '1', '1430024648', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&menuid=116');
INSERT INTO `wt_operationlog` VALUES ('470', '1', '1430024660', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=CompanyMsg');
INSERT INTO `wt_operationlog` VALUES ('471', '1', '1430024788', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&menuid=116');
INSERT INTO `wt_operationlog` VALUES ('472', '1', '1430036051', '192.168.2.3', '0', '提示语：<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=5');
INSERT INTO `wt_operationlog` VALUES ('473', '1', '1430036227', '192.168.2.3', '0', '提示语：<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=1');
INSERT INTO `wt_operationlog` VALUES ('474', '1', '1430036306', '192.168.2.3', '0', '提示语：<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=1');
INSERT INTO `wt_operationlog` VALUES ('475', '1', '1430036390', '192.168.2.3', '0', '提示语：<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=1');
INSERT INTO `wt_operationlog` VALUES ('476', '1', '1430036473', '192.168.2.3', '0', '提示语：<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=1');
INSERT INTO `wt_operationlog` VALUES ('477', '1', '1430036538', '192.168.2.3', '0', '提示语：<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=1');
INSERT INTO `wt_operationlog` VALUES ('478', '1', '1430036572', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=1');
INSERT INTO `wt_operationlog` VALUES ('479', '1', '1430036645', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=1');
INSERT INTO `wt_operationlog` VALUES ('480', '1', '1430036653', '192.168.2.3', '0', '提示语：<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=1');
INSERT INTO `wt_operationlog` VALUES ('481', '1', '1430036655', '192.168.2.3', '0', '提示语：<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=1');
INSERT INTO `wt_operationlog` VALUES ('482', '1', '1430036656', '192.168.2.3', '0', '提示语：<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=1');
INSERT INTO `wt_operationlog` VALUES ('483', '1', '1430036656', '192.168.2.3', '0', '提示语：<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=1');
INSERT INTO `wt_operationlog` VALUES ('484', '1', '1430036659', '192.168.2.3', '0', '提示语：<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=1');
INSERT INTO `wt_operationlog` VALUES ('485', '1', '1430036669', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=1');
INSERT INTO `wt_operationlog` VALUES ('486', '1', '1430036674', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=1');
INSERT INTO `wt_operationlog` VALUES ('487', '1', '1430036744', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=1');
INSERT INTO `wt_operationlog` VALUES ('488', '1', '1430036774', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=2');
INSERT INTO `wt_operationlog` VALUES ('489', '1', '1430036791', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=3');
INSERT INTO `wt_operationlog` VALUES ('490', '1', '1430036815', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=4');
INSERT INTO `wt_operationlog` VALUES ('491', '1', '1430036843', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=5');
INSERT INTO `wt_operationlog` VALUES ('492', '1', '1430036887', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=6');
INSERT INTO `wt_operationlog` VALUES ('493', '1', '1430036952', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：CompanyMsg,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=add&');
INSERT INTO `wt_operationlog` VALUES ('494', '1', '1430037061', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=5');
INSERT INTO `wt_operationlog` VALUES ('495', '1', '1430037304', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：CompanyMsg,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=add&');
INSERT INTO `wt_operationlog` VALUES ('496', '1', '1430037520', '192.168.2.3', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('497', '1', '1430037625', '0.0.0.0', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=edit&catid=4&id=2');
INSERT INTO `wt_operationlog` VALUES ('498', '1', '1430037729', '0.0.0.0', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=edit&catid=4&id=3');
INSERT INTO `wt_operationlog` VALUES ('499', '1', '1430037826', '192.168.2.3', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('500', '1', '1430037998', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=add&catid=4');
INSERT INTO `wt_operationlog` VALUES ('501', '1', '1430038100', '192.168.2.3', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('502', '1', '1430038126', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=add&catid=4');
INSERT INTO `wt_operationlog` VALUES ('503', '1', '1430038150', '192.168.2.3', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('504', '1', '1430038205', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=add&catid=4');
INSERT INTO `wt_operationlog` VALUES ('505', '1', '1430038257', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=add&catid=4');
INSERT INTO `wt_operationlog` VALUES ('506', '1', '1430038718', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=add&catid=4');
INSERT INTO `wt_operationlog` VALUES ('507', '1', '1430039353', '0.0.0.0', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=edit&catid=4&id=4');
INSERT INTO `wt_operationlog` VALUES ('508', '1', '1430039376', '192.168.2.3', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Field&a=edit&fieldid=23&modelid=1');
INSERT INTO `wt_operationlog` VALUES ('509', '1', '1430039433', '192.168.2.3', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Field&a=edit&fieldid=23&modelid=1');
INSERT INTO `wt_operationlog` VALUES ('510', '1', '1430040057', '192.168.2.3', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Field&a=edit&fieldid=23&modelid=1');
INSERT INTO `wt_operationlog` VALUES ('511', '1', '1430040563', '192.168.2.3', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Field&a=edit&fieldid=23&modelid=1');
INSERT INTO `wt_operationlog` VALUES ('512', '1', '1430040672', '192.168.2.3', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Field&a=edit&fieldid=24&modelid=1');
INSERT INTO `wt_operationlog` VALUES ('513', '1', '1430040693', '192.168.2.3', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=classlist&catid=1');
INSERT INTO `wt_operationlog` VALUES ('514', '1', '1430040696', '192.168.2.3', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=classlist&catid=1');
INSERT INTO `wt_operationlog` VALUES ('515', '1', '1430040698', '192.168.2.3', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=classlist&catid=1');
INSERT INTO `wt_operationlog` VALUES ('516', '1', '1430040754', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=1');
INSERT INTO `wt_operationlog` VALUES ('517', '1', '1430040783', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=1');
INSERT INTO `wt_operationlog` VALUES ('518', '1', '1430040833', '192.168.2.3', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('519', '1', '1430041383', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=1');
INSERT INTO `wt_operationlog` VALUES ('520', '1', '1430041393', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=1');
INSERT INTO `wt_operationlog` VALUES ('521', '1', '1430041403', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=1');
INSERT INTO `wt_operationlog` VALUES ('522', '1', '1430041419', '192.168.2.3', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=classlist&catid=1');
INSERT INTO `wt_operationlog` VALUES ('523', '1', '1430041454', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=1');
INSERT INTO `wt_operationlog` VALUES ('524', '1', '1430041521', '192.168.2.3', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('525', '1', '1430041741', '0.0.0.0', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Category,方法：index<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Category&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('526', '1', '1430041782', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('527', '1', '1430041836', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=add&catid=8');
INSERT INTO `wt_operationlog` VALUES ('528', '1', '1430042137', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=add&catid=8');
INSERT INTO `wt_operationlog` VALUES ('529', '1', '1430048414', '192.168.2.3', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('530', '1', '1430048572', '192.168.2.3', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('531', '1', '1430048843', '192.168.2.3', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('532', '1', '1430049155', '192.168.2.3', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('533', '0', '1430301729', '0.0.0.0', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://localhost:5555/admin.php?m=Public&a=login');
INSERT INTO `wt_operationlog` VALUES ('534', '1', '1430301909', '0.0.0.0', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://localhost:5555/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('535', '1', '1430301966', '0.0.0.0', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://localhost:5555/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('536', '1', '1430302143', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=add&catid=8');
INSERT INTO `wt_operationlog` VALUES ('537', '1', '1430302224', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Public,方法：changyong<br/>请求方式：Ajax', 'http://192.168.2.2:5555/admin.php?m=Public&a=changyong');
INSERT INTO `wt_operationlog` VALUES ('538', '1', '1430302226', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=add&catid=8');
INSERT INTO `wt_operationlog` VALUES ('539', '1', '1430302255', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=add&catid=8');
INSERT INTO `wt_operationlog` VALUES ('540', '1', '1430302301', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=add&catid=8');
INSERT INTO `wt_operationlog` VALUES ('541', '1', '1430302405', '0.0.0.0', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=edit&catid=8&id=14');
INSERT INTO `wt_operationlog` VALUES ('542', '1', '1430302432', '0.0.0.0', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=edit&catid=8&id=13');
INSERT INTO `wt_operationlog` VALUES ('543', '1', '1430302454', '0.0.0.0', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=edit&catid=8&id=12');
INSERT INTO `wt_operationlog` VALUES ('544', '1', '1430302478', '0.0.0.0', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=edit&catid=8&id=11');
INSERT INTO `wt_operationlog` VALUES ('545', '1', '1430302513', '0.0.0.0', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=edit&catid=8&id=10');
INSERT INTO `wt_operationlog` VALUES ('546', '1', '1430302536', '0.0.0.0', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=edit&catid=8&id=9');
INSERT INTO `wt_operationlog` VALUES ('547', '1', '1430302885', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：CompanyMsg,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=add&');
INSERT INTO `wt_operationlog` VALUES ('548', '1', '1430303418', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('549', '1', '1430303491', '0.0.0.0', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=edit&fieldid=92&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('550', '1', '1430303512', '0.0.0.0', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=edit&catid=3&id=1');
INSERT INTO `wt_operationlog` VALUES ('551', '1', '1430303686', '0.0.0.0', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=edit&catid=4&id=3');
INSERT INTO `wt_operationlog` VALUES ('552', '1', '1430305985', '192.168.2.3', '0', '提示语：栏目不存在！<br/>模块：Content,控制器：Content,方法：public_imagescrop<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=add');
INSERT INTO `wt_operationlog` VALUES ('553', '1', '1430306100', '192.168.2.3', '0', '提示语：栏目不存在！<br/>模块：Content,控制器：Content,方法：public_imagescrop<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=add&');
INSERT INTO `wt_operationlog` VALUES ('554', '0', '1430306563', '192.168.2.3', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://192.168.2.2:5555/admin.php?m=Public&a=login');
INSERT INTO `wt_operationlog` VALUES ('555', '1', '1430306871', '192.168.2.3', '0', '提示语：栏目不存在！<br/>模块：Content,控制器：Content,方法：public_imagescrop<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=add&');
INSERT INTO `wt_operationlog` VALUES ('556', '1', '1430306895', '192.168.2.3', '0', '提示语：栏目不存在！<br/>模块：Content,控制器：Content,方法：public_imagescrop<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=add&');
INSERT INTO `wt_operationlog` VALUES ('557', '0', '1430309242', '0.0.0.0', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://localhost:5555/admin.php?m=Public&a=login');
INSERT INTO `wt_operationlog` VALUES ('558', '0', '1430309306', '0.0.0.0', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://localhost:5555/admin.php?m=Public&a=login');
INSERT INTO `wt_operationlog` VALUES ('559', '1', '1430368615', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：CompanyMsg,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=add&');
INSERT INTO `wt_operationlog` VALUES ('560', '1', '1430368649', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：CompanyMsg,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=add&');
INSERT INTO `wt_operationlog` VALUES ('561', '1', '1430371057', '192.168.2.3', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('562', '1', '1430371434', '192.168.2.3', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('563', '1', '1430371499', '0.0.0.0', '1', '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Models&a=add&menuid=54');
INSERT INTO `wt_operationlog` VALUES ('564', '1', '1430371590', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=9');
INSERT INTO `wt_operationlog` VALUES ('565', '1', '1430371619', '0.0.0.0', '0', '提示语：字段类型不能为空！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=9');
INSERT INTO `wt_operationlog` VALUES ('566', '1', '1430371629', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=9');
INSERT INTO `wt_operationlog` VALUES ('567', '1', '1430371656', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=9');
INSERT INTO `wt_operationlog` VALUES ('568', '1', '1430371684', '0.0.0.0', '0', '提示语：字段名只支持英文！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=9');
INSERT INTO `wt_operationlog` VALUES ('569', '1', '1430371693', '0.0.0.0', '0', '提示语：该字段名称/类型不允许添加！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=9');
INSERT INTO `wt_operationlog` VALUES ('570', '1', '1430371704', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=9');
INSERT INTO `wt_operationlog` VALUES ('571', '1', '1430371730', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=9');
INSERT INTO `wt_operationlog` VALUES ('572', '1', '1430371794', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/admin.php?m=Menu&a=add&parentid=44');
INSERT INTO `wt_operationlog` VALUES ('573', '1', '1430371818', '192.168.2.3', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('574', '1', '1430371919', '192.168.2.3', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('575', '1', '1430372343', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/admin.php?m=Menu&a=add&parentid=117');
INSERT INTO `wt_operationlog` VALUES ('576', '1', '1430372396', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/admin.php?m=Menu&a=add&parentid=117');
INSERT INTO `wt_operationlog` VALUES ('577', '1', '1430373274', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=9');
INSERT INTO `wt_operationlog` VALUES ('578', '1', '1430373486', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=1');
INSERT INTO `wt_operationlog` VALUES ('579', '1', '1430373516', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=9');
INSERT INTO `wt_operationlog` VALUES ('580', '1', '1430373543', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=10');
INSERT INTO `wt_operationlog` VALUES ('581', '1', '1430373571', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=11');
INSERT INTO `wt_operationlog` VALUES ('582', '1', '1430373627', '192.168.2.3', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('583', '1', '1430373673', '192.168.2.3', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('584', '1', '1430373744', '192.168.2.3', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('585', '1', '1430376930', '0.0.0.0', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&modelid=9');
INSERT INTO `wt_operationlog` VALUES ('586', '1', '1430377060', '0.0.0.0', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://localhost:5555/index.php?m=Field&modelid=9');
INSERT INTO `wt_operationlog` VALUES ('587', '1', '1430377069', '0.0.0.0', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&modelid=9');
INSERT INTO `wt_operationlog` VALUES ('588', '1', '1430377093', '0.0.0.0', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&modelid=9');
INSERT INTO `wt_operationlog` VALUES ('589', '1', '1430377110', '0.0.0.0', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&modelid=9');
INSERT INTO `wt_operationlog` VALUES ('590', '1', '1430380650', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=edit&catid=8&id=13');
INSERT INTO `wt_operationlog` VALUES ('591', '1', '1430380715', '0.0.0.0', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=edit&catid=4&id=8');
INSERT INTO `wt_operationlog` VALUES ('592', '1', '1430381108', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?g=Admin&m=Menu&a=add&parentid=44');
INSERT INTO `wt_operationlog` VALUES ('593', '1', '1430393106', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=edit&catid=8&id=11');
INSERT INTO `wt_operationlog` VALUES ('594', '1', '1430393202', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=edit&catid=8&id=11');
INSERT INTO `wt_operationlog` VALUES ('595', '1', '1430393207', '192.168.2.3', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('596', '1', '1430393393', '192.168.2.3', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('597', '1', '1430393400', '192.168.2.3', '1', '提示语：开始更新 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml&a=update_urls&menuid=71');
INSERT INTO `wt_operationlog` VALUES ('598', '1', '1430393400', '192.168.2.3', '1', '提示语：开始更新 ..侧导航 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=Createhtml&a=update_urls');
INSERT INTO `wt_operationlog` VALUES ('599', '1', '1430393401', '192.168.2.3', '1', '提示语：更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1');
INSERT INTO `wt_operationlog` VALUES ('600', '1', '1430393940', '0.0.0.0', '1', '提示语：<br/>模块：Content,控制器：Registration,方法：handle<br/>请求方式：POST', 'http://localhost:5555/index.php?m=Message&a=processe&menuid=118');
INSERT INTO `wt_operationlog` VALUES ('601', '1', '1430393948', '0.0.0.0', '1', '提示语：<br/>模块：Content,控制器：Registration,方法：handle<br/>请求方式：POST', 'http://localhost:5555/index.php?m=Message&a=processe&menuid=118');
INSERT INTO `wt_operationlog` VALUES ('602', '1', '1430394496', '0.0.0.0', '0', '提示语：该栏目不存在！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/index.php/Message/reply.html');
INSERT INTO `wt_operationlog` VALUES ('603', '1', '1430394922', '192.168.2.3', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/admin.php?m=Menu&a=edit&id=120');
INSERT INTO `wt_operationlog` VALUES ('604', '1', '1430395002', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=9');
INSERT INTO `wt_operationlog` VALUES ('605', '1', '1430395576', '0.0.0.0', '1', '提示语：回复成功！<br/>模块：Content,控制器：Message,方法：replyIn<br/>请求方式：Ajax', 'http://localhost:5555/index.php/Message/reply/id/1.html');
INSERT INTO `wt_operationlog` VALUES ('606', '1', '1430395683', '0.0.0.0', '1', '提示语：回复成功！<br/>模块：Content,控制器：Message,方法：replyIn<br/>请求方式：POST', 'http://localhost:5555/index.php/Message/reply/id/1.html');
INSERT INTO `wt_operationlog` VALUES ('607', '1', '1430395849', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=1');
INSERT INTO `wt_operationlog` VALUES ('608', '1', '1430395942', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=1');
INSERT INTO `wt_operationlog` VALUES ('609', '1', '1430395963', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=1');
INSERT INTO `wt_operationlog` VALUES ('610', '1', '1430396088', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：CompanyMsg,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=FieldsManage&a=add');
INSERT INTO `wt_operationlog` VALUES ('611', '1', '1430397833', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：CompanyMsg,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=FieldsManage&a=add&');
INSERT INTO `wt_operationlog` VALUES ('612', '1', '1430397840', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：CompanyMsg,方法：add<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=FieldsManage&a=add&');
INSERT INTO `wt_operationlog` VALUES ('613', '1', '1430397904', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：FieldsManage,方法：add<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=FieldsManage&a=add&');
INSERT INTO `wt_operationlog` VALUES ('614', '1', '1430398817', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Public,方法：changyong<br/>请求方式：Ajax', 'http://192.168.2.2:5555/admin.php?m=Public&a=changyong');
INSERT INTO `wt_operationlog` VALUES ('615', '1', '1430458217', '192.168.2.3', '0', '提示语：添加失败！<br/>模块：Content,控制器：FieldsManage,方法：add<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=FieldsManage&menuid=120');
INSERT INTO `wt_operationlog` VALUES ('616', '1', '1430458219', '192.168.2.3', '0', '提示语：添加失败！<br/>模块：Content,控制器：FieldsManage,方法：add<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=FieldsManage&a=add&');
INSERT INTO `wt_operationlog` VALUES ('617', '1', '1430458221', '192.168.2.3', '0', '提示语：添加失败！<br/>模块：Content,控制器：FieldsManage,方法：add<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=FieldsManage&a=add');
INSERT INTO `wt_operationlog` VALUES ('618', '1', '1430458223', '192.168.2.3', '0', '提示语：添加失败！<br/>模块：Content,控制器：FieldsManage,方法：add<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=FieldsManage&menuid=120');
INSERT INTO `wt_operationlog` VALUES ('619', '1', '1430458722', '192.168.2.3', '0', '提示语：添加失败！<br/>模块：Content,控制器：FieldsManage,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=FieldsManage&a=add&');
INSERT INTO `wt_operationlog` VALUES ('620', '1', '1430458820', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：FieldsManage,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=FieldsManage&a=add&');
INSERT INTO `wt_operationlog` VALUES ('621', '1', '1430458988', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：FieldsManage,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=FieldsManage&a=add&');
INSERT INTO `wt_operationlog` VALUES ('622', '1', '1430459001', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：FieldsManage,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=FieldsManage&a=add&');
INSERT INTO `wt_operationlog` VALUES ('623', '1', '1430459535', '192.168.2.2', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('624', '1', '1430459575', '192.168.2.2', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Category&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('625', '1', '1430459576', '192.168.2.2', '1', '提示语：栏目总数:<font color=\"#FF0000\">5</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=Category&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('626', '1', '1430459577', '192.168.2.2', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=Category&a=public_cache');
INSERT INTO `wt_operationlog` VALUES ('627', '1', '1430459597', '192.168.2.2', '1', '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Models&a=add&menuid=54');
INSERT INTO `wt_operationlog` VALUES ('628', '1', '1430459623', '192.168.2.2', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Field&modelid=10');
INSERT INTO `wt_operationlog` VALUES ('629', '1', '1430459715', '192.168.2.2', '0', '提示语：字段类型不能为空！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Field&a=add&modelid=10');
INSERT INTO `wt_operationlog` VALUES ('630', '1', '1430459722', '192.168.2.2', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Field&a=add&modelid=10');
INSERT INTO `wt_operationlog` VALUES ('631', '1', '1430459783', '192.168.2.2', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Field&a=add&modelid=10');
INSERT INTO `wt_operationlog` VALUES ('632', '1', '1430459795', '192.168.2.2', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Field&a=edit&fieldid=238&modelid=10');
INSERT INTO `wt_operationlog` VALUES ('633', '1', '1430459828', '192.168.2.2', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Field&a=add&modelid=10');
INSERT INTO `wt_operationlog` VALUES ('634', '1', '1430459909', '192.168.2.2', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Field&a=add&modelid=10');
INSERT INTO `wt_operationlog` VALUES ('635', '1', '1430459944', '192.168.2.3', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('636', '1', '1430459950', '192.168.2.2', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Field&a=add&modelid=10');
INSERT INTO `wt_operationlog` VALUES ('637', '1', '1430460023', '192.168.2.3', '1', '提示语：更新完成！<br/>模块：Template,控制器：Custompage,方法：createhtml<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('638', '1', '1430460051', '192.168.2.2', '1', '提示语：删除成功！<br/>模块：Content,控制器：Models,方法：delete<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Models&menuid=54');
INSERT INTO `wt_operationlog` VALUES ('639', '1', '1430460065', '192.168.2.2', '1', '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Models&a=add&menuid=54');
INSERT INTO `wt_operationlog` VALUES ('640', '1', '1430460104', '192.168.2.2', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('641', '1', '1430460157', '192.168.2.2', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('642', '1', '1430460208', '192.168.2.2', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('643', '1', '1430460236', '192.168.2.2', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('644', '1', '1430460279', '192.168.2.2', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('645', '1', '1430460310', '192.168.2.2', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('646', '1', '1430460337', '192.168.2.2', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Category&a=edit&catid=15');
INSERT INTO `wt_operationlog` VALUES ('647', '1', '1430461051', '192.168.2.2', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=11');
INSERT INTO `wt_operationlog` VALUES ('648', '1', '1430461497', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=15');
INSERT INTO `wt_operationlog` VALUES ('649', '1', '1430461909', '192.168.2.3', '1', '提示语：更新完成！<br/>模块：Template,控制器：Custompage,方法：createhtml<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('650', '1', '1430461914', '192.168.2.3', '1', '提示语：开始更新 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml&a=update_urls&menuid=71');
INSERT INTO `wt_operationlog` VALUES ('651', '1', '1430461915', '192.168.2.3', '1', '提示语：开始更新 ..侧导航 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=Createhtml&a=update_urls');
INSERT INTO `wt_operationlog` VALUES ('652', '1', '1430461916', '192.168.2.3', '1', '提示语：开始更新 ..班型信息 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1');
INSERT INTO `wt_operationlog` VALUES ('653', '1', '1430461916', '192.168.2.3', '1', '提示语：开始更新 ..教练简介 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=1');
INSERT INTO `wt_operationlog` VALUES ('654', '1', '1430461917', '192.168.2.3', '1', '提示语：开始更新 ..驾校资讯 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=2');
INSERT INTO `wt_operationlog` VALUES ('655', '1', '1430461917', '192.168.2.3', '1', '提示语：开始更新 ..主导航 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=3');
INSERT INTO `wt_operationlog` VALUES ('656', '1', '1430461918', '192.168.2.3', '1', '提示语：更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=4');
INSERT INTO `wt_operationlog` VALUES ('657', '1', '1430461922', '192.168.2.3', '1', '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml&a=category&menuid=69');
INSERT INTO `wt_operationlog` VALUES ('658', '1', '1430462003', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=14');
INSERT INTO `wt_operationlog` VALUES ('659', '1', '1430462353', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=14');
INSERT INTO `wt_operationlog` VALUES ('660', '1', '1430462378', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=14');
INSERT INTO `wt_operationlog` VALUES ('661', '1', '1430462730', '192.168.2.2', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=12');
INSERT INTO `wt_operationlog` VALUES ('662', '1', '1430462758', '192.168.2.2', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=13');
INSERT INTO `wt_operationlog` VALUES ('663', '1', '1430462791', '192.168.2.2', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=14');
INSERT INTO `wt_operationlog` VALUES ('664', '1', '1430462813', '192.168.2.2', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=15');
INSERT INTO `wt_operationlog` VALUES ('665', '1', '1430463094', '192.168.2.2', '1', '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Models&a=add&menuid=54');
INSERT INTO `wt_operationlog` VALUES ('666', '1', '1430463124', '192.168.2.2', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Category&a=add&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('667', '1', '1430463169', '192.168.2.2', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('668', '1', '1430463202', '192.168.2.2', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `wt_operationlog` VALUES ('669', '1', '1430463268', '192.168.2.2', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=edit&catid=4&id=5');
INSERT INTO `wt_operationlog` VALUES ('670', '1', '1430463342', '192.168.2.2', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=17');
INSERT INTO `wt_operationlog` VALUES ('671', '1', '1430463494', '192.168.2.2', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=edit&catid=8&id=14');
INSERT INTO `wt_operationlog` VALUES ('672', '1', '1430463530', '192.168.2.2', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=18');
INSERT INTO `wt_operationlog` VALUES ('673', '1', '1430463650', '192.168.2.3', '1', '提示语：删除成功！<br/>模块：Content,控制器：FieldsManage,方法：delete<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=FieldsManage&menuid=120');
INSERT INTO `wt_operationlog` VALUES ('674', '1', '1430463665', '192.168.2.3', '1', '提示语：删除成功！<br/>模块：Content,控制器：FieldsManage,方法：delete<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=FieldsManage&menuid=120');
INSERT INTO `wt_operationlog` VALUES ('675', '1', '1430465006', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=15');
INSERT INTO `wt_operationlog` VALUES ('676', '1', '1430465255', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：FieldsManage,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=FieldsManage&a=edit&id=2');
INSERT INTO `wt_operationlog` VALUES ('677', '1', '1430465451', '192.168.2.3', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('678', '1', '1430466068', '192.168.2.3', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('679', '1', '1430466408', '192.168.2.3', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('680', '1', '1430466892', '192.168.2.2', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=12');
INSERT INTO `wt_operationlog` VALUES ('681', '1', '1430476031', '192.168.2.2', '1', '提示语：修改成功！<br/>模块：Content,控制器：CompanyMsg,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=CompanyMsg&a=edit&id=12');
INSERT INTO `wt_operationlog` VALUES ('682', '1', '1430476828', '192.168.2.3', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml&menuid=70');
INSERT INTO `wt_operationlog` VALUES ('683', '1', '1430476854', '192.168.2.3', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('684', '1', '1430477023', '192.168.2.3', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml');
INSERT INTO `wt_operationlog` VALUES ('685', '1', '1430477030', '192.168.2.3', '1', '提示语：开始更新 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：POST', 'http://192.168.2.2:5555/index.php?m=Createhtml&a=update_urls&menuid=71');
INSERT INTO `wt_operationlog` VALUES ('686', '1', '1430477030', '192.168.2.3', '1', '提示语：开始更新 ..侧导航 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=Createhtml&a=update_urls');
INSERT INTO `wt_operationlog` VALUES ('687', '1', '1430477031', '192.168.2.3', '1', '提示语：更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://192.168.2.2:5555/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1');
INSERT INTO `wt_operationlog` VALUES ('688', '1', '1430477036', '192.168.2.3', '1', '提示语：更新完成！<br/>模块：Template,控制器：Custompage,方法：createhtml<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('689', '1', '1430477146', '192.168.2.2', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=edit&catid=1&id=9');
INSERT INTO `wt_operationlog` VALUES ('690', '1', '1430477202', '192.168.2.2', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=classlist&catid=2');
INSERT INTO `wt_operationlog` VALUES ('691', '1', '1430477275', '192.168.2.2', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=classlist&catid=2');
INSERT INTO `wt_operationlog` VALUES ('692', '1', '1430477904', '192.168.2.2', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=edit&catid=1&id=8');
INSERT INTO `wt_operationlog` VALUES ('693', '1', '1430477925', '192.168.2.2', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=edit&catid=1&id=8');
INSERT INTO `wt_operationlog` VALUES ('694', '1', '1430477988', '192.168.2.2', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=edit&catid=1&id=7');
INSERT INTO `wt_operationlog` VALUES ('695', '1', '1430478053', '192.168.2.2', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=edit&catid=1&id=7');
INSERT INTO `wt_operationlog` VALUES ('696', '1', '1430478089', '192.168.2.2', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=edit&catid=1&id=6');
INSERT INTO `wt_operationlog` VALUES ('697', '1', '1430478111', '192.168.2.2', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=edit&catid=1&id=6');
INSERT INTO `wt_operationlog` VALUES ('698', '1', '1430478169', '192.168.2.2', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=edit&catid=1&id=4');
INSERT INTO `wt_operationlog` VALUES ('699', '1', '1430478198', '192.168.2.2', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=edit&catid=1&id=4');
INSERT INTO `wt_operationlog` VALUES ('700', '1', '1430478469', '192.168.2.2', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=3');
INSERT INTO `wt_operationlog` VALUES ('701', '1', '1430478490', '192.168.2.2', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=edit&catid=3&id=2');
INSERT INTO `wt_operationlog` VALUES ('702', '1', '1430478594', '192.168.2.2', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=3');
INSERT INTO `wt_operationlog` VALUES ('703', '1', '1430478612', '192.168.2.2', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=edit&catid=3&id=3');
INSERT INTO `wt_operationlog` VALUES ('704', '1', '1430478658', '192.168.2.2', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=3');
INSERT INTO `wt_operationlog` VALUES ('705', '1', '1430478677', '192.168.2.2', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=edit&catid=3&id=4');
INSERT INTO `wt_operationlog` VALUES ('706', '1', '1430478724', '192.168.2.2', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=3');
INSERT INTO `wt_operationlog` VALUES ('707', '1', '1430478774', '192.168.2.2', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=3');
INSERT INTO `wt_operationlog` VALUES ('708', '1', '1430478835', '192.168.2.2', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=3');
INSERT INTO `wt_operationlog` VALUES ('709', '1', '1430478895', '192.168.2.2', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=3');
INSERT INTO `wt_operationlog` VALUES ('710', '1', '1430479677', '192.168.2.2', '1', '提示语：修改成功！<br/>模块：Content,控制器：Urlrule,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Urlrule&a=edit&urlruleid=17');
INSERT INTO `wt_operationlog` VALUES ('711', '1', '1430479786', '192.168.2.2', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=classlist&catid=2');
INSERT INTO `wt_operationlog` VALUES ('712', '1', '1430485273', '0.0.0.0', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=edit&catid=4&id=6');
INSERT INTO `wt_operationlog` VALUES ('713', '1', '1430485365', '0.0.0.0', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=edit&catid=4&id=6');
INSERT INTO `wt_operationlog` VALUES ('714', '1', '1430540952', '0.0.0.0', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=edit&catid=8&id=13');
INSERT INTO `wt_operationlog` VALUES ('715', '1', '1430541854', '0.0.0.0', '0', '提示语：字段名只支持英文！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('716', '1', '1430541867', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('717', '1', '1430541890', '0.0.0.0', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=edit&fieldid=283&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('718', '1', '1430541916', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('719', '1', '1430541962', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('720', '1', '1430542014', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('721', '1', '1430542054', '0.0.0.0', '0', '提示语：字段类型不能为空！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('722', '1', '1430542065', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Field&a=add&modelid=4');
INSERT INTO `wt_operationlog` VALUES ('723', '1', '1430543652', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/admin.php?m=Menu&a=add&parentid=44');
INSERT INTO `wt_operationlog` VALUES ('724', '1', '1430545324', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/admin.php?m=Menu&a=add&parentid=44');
INSERT INTO `wt_operationlog` VALUES ('725', '1', '1430545409', '192.168.2.3', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/admin.php?m=Menu&a=edit&id=122');
INSERT INTO `wt_operationlog` VALUES ('726', '1', '1430547114', '192.168.2.3', '0', '提示语：添加失败！<br/>模块：Content,控制器：StudentManage,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&a=add&');
INSERT INTO `wt_operationlog` VALUES ('727', '1', '1430547371', '192.168.2.3', '0', '提示语：添加失败！<br/>模块：Content,控制器：StudentManage,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&a=add&');
INSERT INTO `wt_operationlog` VALUES ('728', '1', '1430547402', '192.168.2.3', '0', '提示语：添加失败！<br/>模块：Content,控制器：StudentManage,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&a=add&');
INSERT INTO `wt_operationlog` VALUES ('729', '1', '1430547406', '192.168.2.3', '0', '提示语：添加失败！<br/>模块：Content,控制器：StudentManage,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&a=add&');
INSERT INTO `wt_operationlog` VALUES ('730', '1', '1430547508', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：StudentManage,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&a=add&');
INSERT INTO `wt_operationlog` VALUES ('731', '1', '1430547602', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：StudentManage,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&a=add&');
INSERT INTO `wt_operationlog` VALUES ('732', '1', '1430547713', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：StudentManage,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&a=add&');
INSERT INTO `wt_operationlog` VALUES ('733', '1', '1430547741', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：StudentManage,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&a=add&');
INSERT INTO `wt_operationlog` VALUES ('734', '1', '1430547798', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：StudentManage,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&a=add&');
INSERT INTO `wt_operationlog` VALUES ('735', '1', '1430547816', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：StudentManage,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&a=add&');
INSERT INTO `wt_operationlog` VALUES ('736', '1', '1430547839', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：StudentManage,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&a=add&');
INSERT INTO `wt_operationlog` VALUES ('737', '1', '1430547877', '192.168.2.3', '1', '提示语：删除成功！<br/>模块：Content,控制器：StudentManage,方法：delete<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&menuid=122');
INSERT INTO `wt_operationlog` VALUES ('738', '1', '1430547880', '192.168.2.3', '1', '提示语：删除成功！<br/>模块：Content,控制器：StudentManage,方法：delete<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&menuid=122');
INSERT INTO `wt_operationlog` VALUES ('739', '1', '1430547950', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：StudentManage,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&a=edit&id=3');
INSERT INTO `wt_operationlog` VALUES ('740', '1', '1430547964', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：StudentManage,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&a=edit&id=4');
INSERT INTO `wt_operationlog` VALUES ('741', '1', '1430547977', '192.168.2.3', '1', '提示语：删除成功！<br/>模块：Content,控制器：StudentManage,方法：delete<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&menuid=122');
INSERT INTO `wt_operationlog` VALUES ('742', '1', '1430547980', '192.168.2.3', '1', '提示语：删除成功！<br/>模块：Content,控制器：StudentManage,方法：delete<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&menuid=122');
INSERT INTO `wt_operationlog` VALUES ('743', '1', '1430547982', '192.168.2.3', '1', '提示语：删除成功！<br/>模块：Content,控制器：StudentManage,方法：delete<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&menuid=122');
INSERT INTO `wt_operationlog` VALUES ('744', '1', '1430547984', '192.168.2.3', '1', '提示语：删除成功！<br/>模块：Content,控制器：StudentManage,方法：delete<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&menuid=122');
INSERT INTO `wt_operationlog` VALUES ('745', '1', '1430547987', '192.168.2.3', '1', '提示语：删除成功！<br/>模块：Content,控制器：StudentManage,方法：delete<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&menuid=122');
INSERT INTO `wt_operationlog` VALUES ('746', '1', '1430548034', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：StudentManage,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&a=add&');
INSERT INTO `wt_operationlog` VALUES ('747', '1', '1430548096', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：StudentManage,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&a=add&');
INSERT INTO `wt_operationlog` VALUES ('748', '1', '1430548137', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：StudentManage,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&a=add&');
INSERT INTO `wt_operationlog` VALUES ('749', '1', '1430548180', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：StudentManage,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&a=add&');
INSERT INTO `wt_operationlog` VALUES ('750', '1', '1430548192', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：StudentManage,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&a=add&');
INSERT INTO `wt_operationlog` VALUES ('751', '1', '1430548308', '192.168.2.3', '1', '提示语：删除成功！<br/>模块：Content,控制器：StudentManage,方法：delete<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage');
INSERT INTO `wt_operationlog` VALUES ('752', '1', '1430548310', '192.168.2.3', '0', '提示语：删除失败！<br/>模块：Content,控制器：StudentManage,方法：delete<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage');
INSERT INTO `wt_operationlog` VALUES ('753', '1', '1430548354', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：StudentManage,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&a=add&');
INSERT INTO `wt_operationlog` VALUES ('754', '1', '1430548501', '192.168.2.3', '1', '提示语：添加成功！<br/>模块：Content,控制器：StudentManage,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&a=add&');
INSERT INTO `wt_operationlog` VALUES ('755', '1', '1430548518', '192.168.2.3', '1', '提示语：删除成功！<br/>模块：Content,控制器：StudentManage,方法：delete<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=StudentManage&menuid=122');
INSERT INTO `wt_operationlog` VALUES ('756', '1', '1430548554', '192.168.2.3', '1', '提示语：修改成功！<br/>模块：Content,控制器：FieldsManage,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=FieldsManage&a=edit&id=1');
INSERT INTO `wt_operationlog` VALUES ('757', '1', '1430548590', '192.168.2.3', '1', '提示语：删除成功！<br/>模块：Content,控制器：FieldsManage,方法：delete<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=FieldsManage&menuid=120');
INSERT INTO `wt_operationlog` VALUES ('758', '1', '1430549224', '0.0.0.0', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://localhost:5555/index.php?m=Content&a=edit&catid=8&id=13');
INSERT INTO `wt_operationlog` VALUES ('759', '1', '1430549900', '192.168.2.3', '1', '提示语：更新完成！<br/>模块：Template,控制器：Custompage,方法：createhtml<br/>请求方式：GET', 'http://192.168.2.2:5555/admin.php');
INSERT INTO `wt_operationlog` VALUES ('760', '1', '1430551842', '0.0.0.0', '1', '提示语：<br/>模块：Content,控制器：Registration,方法：handle_company<br/>请求方式：POST', 'http://localhost:5555/index.php?m=Registration&a=processe&menuid=114');
INSERT INTO `wt_operationlog` VALUES ('761', '1', '1430557639', '192.168.2.2', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=17');
INSERT INTO `wt_operationlog` VALUES ('762', '1', '1430558039', '192.168.2.2', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=18');
INSERT INTO `wt_operationlog` VALUES ('763', '1', '1430558172', '192.168.2.2', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=18');
INSERT INTO `wt_operationlog` VALUES ('764', '1', '1430558307', '192.168.2.2', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=18');
INSERT INTO `wt_operationlog` VALUES ('765', '1', '1430558345', '192.168.2.2', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=18');
INSERT INTO `wt_operationlog` VALUES ('766', '1', '1430558492', '192.168.2.2', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=11');
INSERT INTO `wt_operationlog` VALUES ('767', '1', '1430558637', '192.168.2.2', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=13');
INSERT INTO `wt_operationlog` VALUES ('768', '1', '1430558687', '192.168.2.2', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=14');
INSERT INTO `wt_operationlog` VALUES ('769', '1', '1430558737', '192.168.2.2', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=15');
INSERT INTO `wt_operationlog` VALUES ('770', '1', '1430558982', '192.168.2.2', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=12');
INSERT INTO `wt_operationlog` VALUES ('771', '1', '1430559073', '192.168.2.2', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=12');
INSERT INTO `wt_operationlog` VALUES ('772', '1', '1430559220', '192.168.2.2', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=13');
INSERT INTO `wt_operationlog` VALUES ('773', '1', '1430559247', '192.168.2.2', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=14');
INSERT INTO `wt_operationlog` VALUES ('774', '1', '1430559263', '192.168.2.2', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Content&a=add&catid=15');
INSERT INTO `wt_operationlog` VALUES ('775', '1', '1430570777', '192.168.2.3', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://192.168.2.2:5555/index.php?m=Field&a=edit&fieldid=23&modelid=1');

-- ----------------------------
-- Table structure for `wt_ordermanage`
-- ----------------------------
DROP TABLE IF EXISTS `wt_ordermanage`;
CREATE TABLE `wt_ordermanage` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `coachname` varchar(255) DEFAULT NULL,
  `studentId` bigint(20) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wt_ordermanage
-- ----------------------------
INSERT INTO `wt_ordermanage` VALUES ('1', '7', '7', '7', null, '');

-- ----------------------------
-- Table structure for `wt_page`
-- ----------------------------
DROP TABLE IF EXISTS `wt_page`;
CREATE TABLE `wt_page` (
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `title` varchar(160) NOT NULL COMMENT '标题',
  `style` varchar(24) NOT NULL COMMENT '样式',
  `keywords` varchar(40) NOT NULL COMMENT '关键字',
  `content` text NOT NULL COMMENT '内容',
  `template` varchar(30) NOT NULL,
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`catid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='单页内容表';

-- ----------------------------
-- Records of wt_page
-- ----------------------------
INSERT INTO `wt_page` VALUES ('11', 'survey', '', '', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><strong><span style=\"font-size: 24px;\">驾校概况</span></strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"text-indent: 2em;\">公交驾校始建于1953年，现隶属于北京巴士传媒股份有限公司。于2001年12月通过ISO9001：2000质量管理体系认证。2004年3月改制后更名为北京市公交汽车驾驶学校有限公司。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\">公交驾校于1993年在大兴区黄村镇狼垡地区建成了占地700亩、环境优美、设施完备、科目齐全，可同时容纳千余部教练车训练、考试，场校合一的大型国有现代化星级驾校。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\">公交教练场距四环路世界公园出口不到3公里，离五环路狼垡出口仅1公里。多条公交车到达，交通便利。另有五十余部空调班车，每天十几条线路多次往返接送学员。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\">公交驾校秉承诚信经营、服务社会的宗旨，本着以人为本的精神，用心服务、精心施教，尽最大努力为学员提供方便、快捷的驾驶培训服务。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\">公交驾校驾校现有各类教练车700余部，包括金龙大型客车、手动挡桑塔纳、自动挡尼桑阳光小型客车等，并精心设计了多种培训方式，供各界不同需求的顾客选择。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\">公交驾校招生中心及各城区百余处报名点提供就近报名、上门服务等一费到底的一条龙式消费服务，是北京市质量协会推荐的“行业代表”、“质量A级单位”、“用户满意企业”、“中国驾驶行业十大影响力品牌”和“文明诚信、优质服务”示范单位。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\">公交驾校报名点分布广泛，可供学员自由选择报名方式，五环内驾校还可以提供免费的上门服务，免除学员奔波之苦。是北京市质量协会推荐的“行业代表”和“守信企业”。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\">公交驾校教练员均是通过统一理论考试，口述考试和实操考试取得合格成绩的优秀教练。公交驾校以技术打造品牌形象，所有教练员工资导入星级等级工资。“微笑服务”、“朋友式”的教学模式让学员深刻体会到我们的教学承诺——不仅享受服务，更能学到技术。 崭新的教练车每天都在等待区恭候学员的到来。拿本后的学员还可以免费体验由公交驾校全程俱乐部提供的免费上路热身短途拉练活动，使学员的开车技术得到彻底的巩固。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\">公交驾校为残疾人士学车设置了专用设施，面向残疾人士采取方便、快捷的一对一服务模式，极大的满足了残疾人士的需求。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; color: rgb(51, 51, 51); text-indent: 2em; line-height: 24px; font-family: 微软雅黑; font-size: 12px; white-space: normal;\">公交驾校在社会各界的大力支持下，全校员工将以优质规范的全新服务提升品牌形象，保持在驾校行业中的名校地位，为首都人民的出行做出更大的贡献。</p><p><br/></p>', '', '1430461051');
INSERT INTO `wt_page` VALUES ('12', 'style', '', '', '<p><strong><span style=\"font-size: 24px;\">&nbsp;</span></strong></p><p><strong><span style=\"font-size: 24px;\">&nbsp;驾校风采</span></strong></p><p><strong><span style=\"font-size: 24px;\"><br/></span></strong></p><p><strong><span style=\"font-size: 24px;\"><img src=\"/d/file/contents/2015/05/5544988fa9728.jpg\" title=\"5541c49decb8c.jpg\" alt=\"5541c49decb8c.jpg\" width=\"822\" height=\"665\" style=\"width: 822px; height: 665px;\"/></span></strong></p>', '', '1430462730');
INSERT INTO `wt_page` VALUES ('13', 'culture', '', '', '<p><strong><span style=\"font-size: 24px;\">&nbsp;</span></strong></p><p><strong><span style=\"font-size: 24px;\">&nbsp;企业文化</span></strong></p><p><strong><span style=\"font-size: 24px;\"><br/></span></strong></p><table><tbody><tr class=\"firstRow\"><td width=\"811\" valign=\"top\"><br/></td></tr></tbody></table><table id=\"table8\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr class=\"firstRow\"><td align=\"left\" valign=\"top\"><p><span style=\"font-size: 12px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;\">【企业使命】 培育合格驾驶员，共创首都和谐交通。</span></p><p style=\"color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-size: 12px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;\">【注释】合格驾驶员是首都和谐交通的基本元素。</span></p><p style=\"padding-left: 48px; color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-size: 12px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;\">合格驾驶员 — 良好的交通意识、熟练的驾驶技术、冷静的分析能力。</span></p><p style=\"padding-left: 48px; color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-size: 12px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;\">培育合格驾驶员 — 机动车驾驶员培训企业为首都和谐交通承担的历史使命。</span></p></td></tr></tbody></table><p><br/></p><table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr class=\"firstRow\"><td colspan=\"2\" align=\"right\" height=\"20\" style=\"border-bottom-style: dotted; border-bottom-color: rgb(186, 186, 186);\"><br/></td></tr></tbody></table><table id=\"table8\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr class=\"firstRow\"><td align=\"left\" valign=\"top\"><p><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">【经营理念】以人为本，服务社会，诚信经营，共创和谐。</span></p><p style=\"color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">【注释】以人为本 — 顾客满意是企业追求的目标，企业要先有满意的员工，满意的员工才能服务好每名顾客，才能赢取顾客满意，满意</span></p><p style=\"padding-left: 48px; color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">的顾客给企业带来持续的收益，企业的发展才是恒久的。</span></p><p style=\"padding-left: 48px; color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">服务社会 — 企业要做强，必须定位于服务社会，珍惜社会提供给企业的既有资源，只有很好地服务于社会，社会才会增加对企</span></p><p style=\"padding-left: 48px; color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">业的信用等级，从而让企业占有更多的社会资源，做更大的事情，这就是企业从强到大的基本道路。</span></p></td></tr></tbody></table><table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr class=\"firstRow\"><td colspan=\"2\" align=\"right\" height=\"20\" style=\"border-bottom-style: dotted; border-bottom-color: rgb(186, 186, 186);\"><br/></td></tr></tbody></table><table id=\"table8\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr class=\"firstRow\"><td align=\"left\" valign=\"top\"><p><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">【服务理念】用心服务每名顾客。</span></p><p style=\"color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">【注释】用心服务是用力服务的提升，员工一次做对每件事的前提。</span></p><p style=\"padding-left: 48px; color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">用心服务 — 站在顾客的角度考虑顾客的需求，用心处理好每一件事，最大程度让每名顾客达到满意和理解。企业每名员工以及</span></p><p style=\"padding-left: 48px; color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">每个服务环节都能做到用心服务每名顾客，是在标准化服务的基础上满足顾客个性需求的人性化服务的提升，是服务的最高境</span></p><p style=\"padding-left: 48px; color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">界，也是企业核心竞争实力的最佳体现。</span></p></td></tr></tbody></table><table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr class=\"firstRow\"><td colspan=\"2\" align=\"right\" height=\"20\" style=\"border-bottom-style: dotted; border-bottom-color: rgb(186, 186, 186);\"><br/></td></tr></tbody></table><table id=\"table8\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr class=\"firstRow\"><td align=\"left\" valign=\"top\"><p><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">【质量方针】高效管理，规范教学，优质服务。</span></p><p style=\"color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">【注释】高效管理 — 充分利用和开发硬、软件资源，按顾客要求持续改进质量管理体系的有效性，规范和强化本公司培训及相关服务的</span></p><p style=\"padding-left: 48px; color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">高效化管理。</span></p><p style=\"padding-left: 48px; color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">规范教学 — 依据适用的法律法规和本公司《教学培训大纲》，以系统和透明的方式，提供规范化、高质量的驾驶培训服务。</span></p><p style=\"padding-left: 48px; color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">优质服务 —— 牢固树立顾客、质量意识，依据本公司质量管理体系标准和《服务环境...</span></p></td></tr></tbody></table><table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr class=\"firstRow\"><td colspan=\"2\" align=\"right\" height=\"20\" style=\"border-bottom-style: dotted; border-bottom-color: rgb(186, 186, 186);\"><br/></td></tr></tbody></table><table id=\"table8\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr class=\"firstRow\"><td align=\"left\" valign=\"top\"><p><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">【质量目标】“桩考”合格率≥98%； “路考”合格率≥90%； 顾客满意率≥95%；重大责任事故为零。</span></p><p style=\"color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">【注释】质量目标是我校依据GB/T19001-2000 idt ISO 9001:2000标准的要求，结合行业特点和本单位的办学能力而确定的，是</span></p><p style=\"padding-left: 48px; color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">体现我校教学水平、服务水平、安全生产水平的量化指标。</span></p></td></tr></tbody></table><table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr class=\"firstRow\"><td colspan=\"2\" align=\"right\" height=\"20\" style=\"border-bottom-style: dotted; border-bottom-color: rgb(186, 186, 186);\"><br/></td></tr></tbody></table><table id=\"table8\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr class=\"firstRow\"><td align=\"left\" valign=\"top\"><p><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">【员工价值】只有企业兴旺，才有自我价值；只有企业发展，才有自我存在；只有自我奉献，才有更大收获；</span></p><p style=\"padding-left: 84px; color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">只有自我拼搏，才有人生快乐。</span></p><p style=\"color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">【注释】员工的价值在企业的发展中展现，企业的价值凝聚着员工的奉献。</span></p></td></tr></tbody></table><table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr class=\"firstRow\"><td colspan=\"2\" align=\"right\" height=\"20\" style=\"border-bottom-style: dotted; border-bottom-color: rgb(186, 186, 186);\"><br/></td></tr></tbody></table><table id=\"table8\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr class=\"firstRow\"><td align=\"left\" valign=\"top\"><p><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">【职业道德】文明服务，诚实守信，勤勉敬业，遵纪守法，团结协作。</span></p><p style=\"color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">【注释】文明服务 — 文明服务要求企业为顾客提供舒适、安全的消费环境，服务人员行为举止、言辞谈吐、衣着服饰，应适度有节，规</span></p><p style=\"padding-left: 48px; color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">范标准；态度温和、礼貌，服务周到、体贴。文明服务的观念贯彻服务的全过程。</span></p><p style=\"padding-left: 48px; color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">诚实守信 — 言行一致，表里如一，真实好善，实事求是，讲究信用。诚实是守信的思想基础，守信是诚实的外在表现。</span></p><p style=\"padding-left: 48px; color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">勤勉敬业 — 勤勉即勤奋，敬业就是尊重所从事的职业。</span></p></td></tr></tbody></table><table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr class=\"firstRow\"><td colspan=\"2\" align=\"right\" height=\"20\" style=\"border-bottom-style: dotted; border-bottom-color: rgb(186, 186, 186);\"><br/></td></tr></tbody></table><table id=\"table8\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr class=\"firstRow\"><td align=\"left\" valign=\"top\"><p><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">【校训】诚信、敬业、进取、和谐。</span></p><p style=\"color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">【注释】诚信 — 无信不立，未来企业发展的结果。企业经营基本原则：讲诚信才有生命力，才能提高信誉度，以真诚赢得信誉度，以经</span></p><p style=\"padding-left: 48px; color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">营保证效益。责任重于泰山，诚信高于生命。</span></p><p style=\"padding-left: 48px; color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">敬业 — 如果每名员工都能勤勉求实，为驾校的发展尽心、尽责、尽力，驾校的事业就能尽善、尽美达到品牌卓越，事业辉煌。</span></p><p style=\"padding-left: 48px; color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">敬业顾客，献身事业的生活态度，也是提高思想素质，学习好更广泛知识，增强工作能力水平的源泉。</span></p></td></tr></tbody></table><table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr class=\"firstRow\"><td colspan=\"2\" align=\"right\" height=\"20\" style=\"border-bottom-style: dotted; border-bottom-color: rgb(186, 186, 186);\"><br/></td></tr></tbody></table><table id=\"table8\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr class=\"firstRow\"><td align=\"left\" valign=\"top\"><p><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">【质量追求】用心服务 精心施教</span></p><p style=\"color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">【注释】服务与教学是当前驾驶员培训行业的两个同等重要的核心工作，两者相辅相成，互为促进，缺一不可。用心服务和精心施教是服</span></p><p style=\"padding-left: 48px; color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">务和教学的最高标准。用心服务是精心施教的前提和根本保障，精心施教是用心服务的具体体现。用心服务，精心施教是我校在</span></p><p style=\"padding-left: 48px; color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">发展中为了不断完善自我、超越自我而不懈的追求。</span></p></td></tr></tbody></table><table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr class=\"firstRow\"><td colspan=\"2\" align=\"right\" height=\"20\" style=\"border-bottom-style: dotted; border-bottom-color: rgb(186, 186, 186);\"><br/></td></tr></tbody></table><table id=\"table8\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr class=\"firstRow\"><td align=\"left\" valign=\"top\"><p><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">【教学承诺】不仅考取驾照 更能学到技术</span></p><p style=\"color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">【注释】公交驾校作为公共交通行业驾驶员的培训基地半个世纪以来，在汽车驾驶专业领域，积淀了丰厚的实践和教学经验。结合新形</span></p><p style=\"padding-left: 48px; color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">势、新发展、新法规、新需求，我们的教学训练日益彰显出合理、规范、实效、实用的特点。科学设计，环环相扣的培训课程，</span></p><p style=\"padding-left: 48px; color: rgb(51, 51, 51); line-height: 24px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">为实现您考取驾证，学到技术，安全一生的愿望提供切实的保障。</span></p></td></tr></tbody></table><p><br/></p>', '', '1430462758');
INSERT INTO `wt_page` VALUES ('14', 'recruitment', '', '', '<p><strong><span style=\"font-size: 24px;\">&nbsp;招贤纳士</span></strong><br/></p><p><br/></p><table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\"><tbody><tr class=\"firstRow\"><th align=\"left\" style=\"line-height: 30px; border-bottom-color: rgb(222, 222, 222); color: rgb(68, 68, 68); padding-top: 0px; padding-bottom: 0px; background: rgb(240, 240, 240);\">职位</th><th align=\"center\" style=\"line-height: 30px; border-bottom-color: rgb(222, 222, 222); color: rgb(68, 68, 68); padding-top: 0px; padding-bottom: 0px; background: rgb(240, 240, 240);\">人数</th><th align=\"center\" style=\"line-height: 30px; border-bottom-color: rgb(222, 222, 222); color: rgb(68, 68, 68); padding-top: 0px; padding-bottom: 0px; background: rgb(240, 240, 240);\">发布时间</th><th align=\"center\" style=\"line-height: 30px; border-bottom-color: rgb(222, 222, 222); color: rgb(68, 68, 68); padding-top: 0px; padding-bottom: 0px; background: rgb(240, 240, 240);\">查看详细</th></tr><tr><td align=\"left\" style=\"line-height: 33px; border-bottom-color: rgb(222, 222, 222); color: rgb(0, 0, 0); padding-top: 0px; padding-bottom: 0px;\"><a href=\"http://www.gjjx.com.cn/content/Jobs/10\" title=\"大专院校校园代理\" style=\"color: rgb(51, 51, 51); text-decoration: underline; outline: none; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">大专院校校园代理</span></a></td><td align=\"center\" style=\"line-height: 33px; border-bottom-color: rgb(222, 222, 222); color: rgb(0, 0, 0); padding-top: 0px; padding-bottom: 0px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">不限</span></td><td align=\"center\" style=\"line-height: 33px; border-bottom-color: rgb(222, 222, 222); color: rgb(102, 102, 102); padding-top: 0px; padding-bottom: 0px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">2013-10-21</span></td><td align=\"center\" style=\"line-height: 33px; border-bottom-color: rgb(222, 222, 222); color: rgb(0, 0, 0); padding-top: 0px; padding-bottom: 0px;\"><a href=\"http://www.gjjx.com.cn/content/Jobs/10?title=%E5%A4%A7%E4%B8%93%E9%99%A2%E6%A0%A1%E6%A0%A1%E5%9B%AD%E4%BB%A3%E7%90%86\" style=\"color: rgb(51, 51, 51); text-decoration: underline; outline: none; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">查看详细</span></a></td></tr><tr><td align=\"left\" style=\"line-height: 33px; border-bottom-color: rgb(222, 222, 222); color: rgb(0, 0, 0); padding-top: 0px; padding-bottom: 0px;\"><a href=\"http://www.gjjx.com.cn/content/Jobs/9\" title=\"教练员\" style=\"color: rgb(51, 51, 51); text-decoration: underline; outline: none; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">教练员</span></a></td><td align=\"center\" style=\"line-height: 33px; border-bottom-color: rgb(222, 222, 222); color: rgb(0, 0, 0); padding-top: 0px; padding-bottom: 0px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">不限</span></td><td align=\"center\" style=\"line-height: 33px; border-bottom-color: rgb(222, 222, 222); color: rgb(102, 102, 102); padding-top: 0px; padding-bottom: 0px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">2013-08-25</span></td><td align=\"center\" style=\"line-height: 33px; border-bottom-color: rgb(222, 222, 222); color: rgb(0, 0, 0); padding-top: 0px; padding-bottom: 0px;\"><a href=\"http://www.gjjx.com.cn/content/Jobs/9?title=%E6%95%99%E7%BB%83%E5%91%98\" style=\"color: rgb(51, 51, 51); text-decoration: underline; outline: none; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">查看详细</span></a></td></tr><tr><td align=\"left\" style=\"line-height: 33px; border-bottom-color: rgb(222, 222, 222); color: rgb(0, 0, 0); padding-top: 0px; padding-bottom: 0px;\"><a href=\"http://www.gjjx.com.cn/content/Jobs/5\" title=\"班车司机\" style=\"color: rgb(51, 51, 51); text-decoration: underline; outline: none; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">班车司机</span></a></td><td align=\"center\" style=\"line-height: 33px; border-bottom-color: rgb(222, 222, 222); color: rgb(0, 0, 0); padding-top: 0px; padding-bottom: 0px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">不限</span></td><td align=\"center\" style=\"line-height: 33px; border-bottom-color: rgb(222, 222, 222); color: rgb(102, 102, 102); padding-top: 0px; padding-bottom: 0px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">2013-08-22</span></td><td align=\"center\" style=\"line-height: 33px; border-bottom-color: rgb(222, 222, 222); color: rgb(0, 0, 0); padding-top: 0px; padding-bottom: 0px;\"><a href=\"http://www.gjjx.com.cn/content/Jobs/5?title=%E7%8F%AD%E8%BD%A6%E5%8F%B8%E6%9C%BA\" style=\"color: rgb(51, 51, 51); text-decoration: underline; outline: none; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\"><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">查看详细</span></a></td></tr></tbody></table><p><br/></p>', '', '1430462791');
INSERT INTO `wt_page` VALUES ('15', 'contact', '', '', '<p>&nbsp;<strong><span style=\"font-size: 24px;\"> 联系我们</span></strong><br/></p><p><br/></p><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">电话：4004124</span></p></li><li><p><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">手机：18842656222</span></p></li><li><p><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">邮箱：1865@qq.com</span></p></li><li><p><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 12px;\">地址：大连中山区大黑山和平路103恫90号</span></p></li></ul><p><br/></p>', '', '1430462812');
INSERT INTO `wt_page` VALUES ('17', '学车指南', '', '', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">★ 学员报名须知：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;1、本市户口：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本人身份证正反面复印件、四张一寸白底彩照（本人戴眼镜需交戴眼镜照片）、学费等；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：增驾的学员还需提供驾驶证正、副证复印件；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;2、外省市户口：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本人身份证正反面复印件、暂住证复印件（有效期为一年）、四张一寸白底彩照（本人戴眼镜需交戴眼镜照片）、学费等；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：增驾的学员还需提供驾驶证正副证复印件，是外省市驾驶证需先到车管所办理外转京手续（代办暂住证需多交2张照片和一张身份证正、反面复印件）；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;3、现役军人报名：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;团级以上政治部、政治处或直属工作处（并注明属团级以上单位）开据的证明信；四张一寸白底彩照（本人戴眼镜需交戴眼镜照片）；军官证（文职干部证、士兵证）复印件；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;4、相应学费（现金、支票或刷卡）；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;5、增驾学员报名时需提供驾驶证正、副证复印件一张。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">★ 关于暂住证的相关规定？</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;1、暂住证有效期必须为一年，并且在有效期内；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;2、暂住证姓名、性别、出生日期、原籍地址、身份证号必须与身份证一致，现住地址应超过10个汉字（北京市xx区）；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;3、首页派出所钢印、派出所印章要求清楚；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;4、身份证应与暂住证信息完全一致。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">★ 用临时身份证是否可以报名学车？</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;在有效期范围内可以报名，但临时身份证一般有效期只有3个月，为不影响学员正常训练及考试，请尽快办理正式身份证。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">★ 在外地有驾驶证的人员如何报名？</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;注销原有驾驶证或办理外转京后（只限E、F、D、C2）才可在北京申请学习小型客车驾驶证或增加小型客车驾驶证。已过有效期，且不能恢复的，需注销原驾驶证后报名。注：驾驶证不满一年的不可以办理增加。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">★ 报名增驾须具备哪些条件？</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;1、持本人身份证正反面复印件、驾驶证（正、副证）复印件（在有效期内）4张一寸白底彩照（本人戴眼镜需交戴眼镜照片）；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;2、申请增驾A1车型，已取得驾驶B1或B2准驾车型资格五年以上，取得A2准驾资格2年以上，并在申请前最近连续五个记分周期内没有记满12分，年龄为26周岁至49周岁零10个月；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;3、申请增驾A3车型，年龄应在20周岁至49周岁零10个月，所持驾驶证满一年；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;4、申请增驾C1车型，要求已取得的驾驶证（D、F、M、N、P）准驾资格为一年以上，身份证与驾驶证信息一致，年龄为18-69周岁零10个月；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;5、外省学员可以申请增驾，但最高只能申请增驾C1。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">★ 有下列情形之一的，不得申请大型客车、牵引车、中型客车、大型货车准驾车型：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;1、发生交通事故造成人员死亡，承担同等以上责任的；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;2、醉酒后驾驶机动车的；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;3、被吊销或者撤销机动车驾驶证未满十年的。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">★ 学车最大年龄是多大？</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;北京市交管局规定申请驾驶证最大学车的年龄是69周岁零10个月。增驾年龄应在20周岁至49周岁零10个月。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">★ 学员报名的身体条件？</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;1、身高：申请大型客车、牵引车、城市公交车、大型货车、无轨电视力表4.9以上；车准驾车型的，身高为155厘米以上。申请中型客车准驾车型的，身高为150厘米以上；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;2、视力：申请大型客车、牵引车、城市公交车、中型客车、大型货车、无轨电车或者有轨电车准驾车型的，两眼裸视力或者矫正视力达到对数视力表5.0以上。申请其他准驾车型的，两眼裸视力或者矫正视力达到对数视力表4.9以上；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;3、辨色力：无红绿色盲；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;4、听力：两耳分别距音叉50厘米能辨别声源方向。有听力障碍但佩戴助听设备能够达到以上条件的，可以申请小型汽车、小型自动挡汽车准驾车型的机动车驾驶证；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;5、上肢：双手拇指健全，每只手其他手指必须有三指健全，肢体和手指运动功能正常。但手指末节残缺或者右手拇指缺失的，可以申请小型汽车、小型自动挡汽车、低速载货汽车、三轮汽车准驾车型的机动车驾驶证；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;6、下肢：双下肢健全且运动功能正常，不等长度不得大于5厘米。但左下肢缺失或者丧失运动功能的，可以申请小型自动挡汽车准驾车型的机动车驾驶证。右下肢、双下肢缺失或者丧失运动功能但能够自主坐立的，可以申请残疾人专用小型自动挡载客汽车准驾车型的机动车驾驶证；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;7、躯干、颈部：无运动功能障碍。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">★ 有下列情形之一的，不得申请机动车驾驶证：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;1、有器质性心脏病、癫痫病、美尼尔氏症、眩晕症、癔病、震颤麻痹、精神病、痴呆以及影响肢体活动的神经系统疾病等妨碍安全驾驶疾病的；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;2、三年内有吸食、注射毒品行为或者解除强制隔离戒毒措施未满三年，或者长期服用依赖性精神药品成瘾尚未戒除的；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;3、造成交通事故后逃逸构成犯罪的；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;4、饮酒后或者醉酒驾驶机动车发生重大交通事故构成犯罪的；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;5、醉酒驾驶机动车或者饮酒后驾驶营运机动车依法被吊销机动车驾驶证未满五年的；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;6、醉酒驾驶营运机动车依法被吊销机动车驾驶证未满十年的；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;7、因其他情形依法被吊销机动车驾驶证未满二年的；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;8、驾驶许可依法被撤销未满三年的；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;9、法律、行政法规规定的其他情形。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;未取得机动车驾驶证驾驶机动车，有第一款第五项至第七项行为之一的，在规定期限内不得申请机动车驾驶证。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">★ 身体有残缺（上肢、下肢、听力、视力）去哪体检？</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;听力问题需要到北京博爱医院，其他问题需要到北京市体检中心。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">★ 在外地有驾驶证的人员如何报名？</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;注销原有驾驶证或办理外转京后（只限E、F、D、C2）才可在北京申请学习小型客车驾驶证或增加小型客车驾驶证。已过有效期，且不能恢复的，需注销原驾驶证后报名。注：驾驶证不满一年的不可以办理增加。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">★ 现役军人学车证明信样式：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\"><span style=\"font-family: 微软雅黑; font-size: 16px;\"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 证&nbsp;&nbsp;&nbsp; 明</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">北京市车辆管理所：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 兹有我部干部XXX，男（女），XXXX年XX月XX日，军官证（文职干部证）编号为X字第XXXXXXXX号，现住北京市XX区XX街道XX楼XX单元XX室。该同志前来贵处办理有关事宜，请予办理为盼。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 此致</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 敬礼！</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><br/><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; XXXXXX部队政治部（处）【盖章】</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; XXXX年XX月XX日</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;★ 委托报名书样式：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 委 托 报 名 书</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">委托人：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">性别：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">身份证号：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">被委托人：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">性别：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">身份证号：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">电话：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp; 本人因工作繁忙,不能亲自办理学车报名的相关手续，特委托______作为我的合法代理人，全权代表我办理相关事项，对委托人在办理上述事项过程中所签署的有关文件,我均予以认可，并承担相应的法律责任。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">委托人：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 月&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 日</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal;\"><span style=\"font-family: &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0); font-size: 14px;\">&nbsp;&nbsp;&nbsp; 注：委托期限：自签字之日起至成功报名后自行终止</span></p><p><br/></p>', '', '1430463342');
INSERT INTO `wt_page` VALUES ('18', '考试指南', '', '', '<h1 id=\"Content\" style=\"margin: 0px 12px; padding: 10px; font-size: 14px; line-height: 28px; font-weight: 100; color: rgb(39, 42, 48); font-family: 微软雅黑; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        驾照科目考试最主要是需要考生上车不要慌，准备工作放心上。\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        <strong style=\"margin: 0px; padding: 0px; font-size: 16px;\">考试起点</strong>\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        一调(调座椅、后视镜)、二系(安全带)、三拨(转向灯);\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        指纹验证不能忘，指纹验过想一想;\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        细听语音起好步，起步千万莫紧张。\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        <strong style=\"margin: 0px; padding: 0px; font-size: 16px;\">倒车入库</strong>\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        <a href=\"http://xcsp.jsyks.com/72cb72.htm\" style=\"margin: 0px; padding: 0px; text-decoration: none; outline: none; color: rgb(49, 101, 255);\">倒车入库</a>要做好，离合半连，速不高;\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        多看左(右)后视镜，倒车更要靠技巧;\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        中途停车很不妙 ，停车还须重新考。\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        倒车入库难点：中间不能停顿，彻底否定了电子桩考试中，原地打死方向，对杆辨认标识的做法。\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        1、将车停在车位线旁1.5米处。\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        2、当车尾处于差不多两个车位宽度的边线时，方向盘打满，往后倒车。\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        3、感觉车头正时，方向盘马上回正倒车。\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        学车论坛建议：在准备入库之前，允许稍微停顿一小会，考生可借此机会由后视镜观察车库边线，决定倒车时方向盘的角度。\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        <strong style=\"margin: 0px; padding: 0px; font-size: 16px;\">侧方停车</strong>\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        侧方停车有新规，角度把握靠目测;\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        倒车镜里看白线，一次将车放库间;\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        中途不得把车停，起步别忘转向灯。\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        <strong style=\"margin: 0px; padding: 0px; font-size: 16px;\">坡道定点停车与起步</strong>\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        两条标线有标准， 30、50要分清;\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        30扣10分，50杀得很，车轮、前杠(前保险杠)要停稳;\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        停车、溜坡是大忌，手刹、油门要到位;\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        转向不能忘，起步不宜长，超时就是帮倒忙。\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        坡道定点停车和起步：当听到口令时，先轻带刹车，打右转向灯，看右后视镜，往右打方向，等到车头的中间线压到边线时，往左打方向，等车头重点离边线距离10厘米时，回正并保持边线距离，等目标到时，车刹停，拉紧手制动。\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        起步：换一档，开左方向等，按喇叭，拉紧手制动，松刹车，慢抬离合器，等抬到车头往上抬时，轻加油门，松手制动，起步。\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        通过要求：机动车驾驶人应通过视觉和感觉及时判断坡道的坡度、长短及路宽等道路情况，采取恰当操作方法，控制车辆平稳停车和起步。做到转向正确，换挡迅速，方向、制动、离合器三者配合准确协调。\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        操作要领：首先车亮右方灯，踩下离合器，踩下刹车，松开油门，落下手刹，挂空档，松开离合，松开刹车，车辆处于停车状态;其次准备坡道起步。车亮左方灯，踩下离合器，挂1档，踩下油门，慢慢松开离合器，放手刹，车辆行驶。\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        <strong style=\"margin: 0px; padding: 0px; font-size: 16px;\">直角转弯</strong>\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        一次通过车不停，选中路线好行走;\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        车道边线不能碰，碰轧“合格”必落空。\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        <strong style=\"margin: 0px; padding: 0px; font-size: 16px;\">曲线行驶</strong>\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        乱打方向必致命，速度平稳把舵定;\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        行车不能中途停，车轮离线你最顺。\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        曲线行驶秘招：在进入左湾前，车辆靠右走，用车左前角一直压着右边线走，等到要换右弯时，方向回正，进入右弯，用车的右前角一直压着左边线走，等完全走出了曲线，方向再回正。在进入右弯前，车辆靠左走，用车右前角一直压着左边线走，等到要换左弯时，方向回正，进入左弯，用车的左前角一直压着右边线走，等完全走出了曲线，方向再回正。\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        驾驶技巧：考场其实就是一条“S”形道路，只是路宽仅3.5米。一要保持全程一档行驶，打方向不可过急。二是驶向右弯到时，右轮贴着其右边路牙，反之亦然。\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        <strong style=\"margin: 0px; padding: 0px; font-size: 16px;\"><span style=\"margin: 0px; padding: 0px; color: rgb(204, 0, 0);\">驾照科目三路考技巧分享</span></strong>\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        <strong style=\"margin: 0px; padding: 0px; font-size: 16px;\">窄路掉头</strong>\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        三进二退，把头掉，靠右行驶最重要;\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        5min是时限，不能停车记心间。\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        <strong style=\"margin: 0px; padding: 0px; font-size: 16px;\">湿滑路面</strong>\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        湿滑路面有两点：方向平稳速度减，低挡匀速排危险。\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        <strong style=\"margin: 0px; padding: 0px; font-size: 16px;\">模拟隧道</strong>\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        减速进入隧道前，认清标志最为先;\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        灯光、喇叭齐上阵，行车还要按规办;\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        鸣号、关灯出隧道，项目完成把手翘。\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        考试完毕等佳讯，静听电脑提示音：\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        <strong style=\"margin: 0px; padding: 0px; font-size: 16px;\">终点</strong>\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        “恭喜您考试合格”不要骄，下一科目还要考;\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        “考试不合格”不要燥，抓紧苦练再上道;\r\n    </p>\r\n    <p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-indent: 2em;\">\r\n        离开考场要礼貌，心系“安全”领驾照。\r\n    </p>\r\n</h1>\r\n<p>\r\n    <br/>\r\n</p>', '', '1430463529');

-- ----------------------------
-- Table structure for `wt_position`
-- ----------------------------
DROP TABLE IF EXISTS `wt_position`;
CREATE TABLE `wt_position` (
  `posid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '推荐位id',
  `modelid` char(30) DEFAULT '0' COMMENT '模型id',
  `catid` char(30) DEFAULT '0' COMMENT '栏目id',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '推荐位名称',
  `maxnum` smallint(5) NOT NULL DEFAULT '20' COMMENT '最大存储数据量',
  `extention` char(100) DEFAULT NULL,
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`posid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='推荐位';

-- ----------------------------
-- Records of wt_position
-- ----------------------------

-- ----------------------------
-- Table structure for `wt_position_data`
-- ----------------------------
DROP TABLE IF EXISTS `wt_position_data`;
CREATE TABLE `wt_position_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'ID',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `posid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '推荐位ID',
  `module` char(20) DEFAULT NULL COMMENT '模型',
  `modelid` smallint(6) unsigned DEFAULT '0' COMMENT '模型ID',
  `thumb` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有缩略图',
  `data` mediumtext COMMENT '数据信息',
  `listorder` mediumint(8) DEFAULT '0' COMMENT '排序',
  `expiration` int(10) NOT NULL,
  `extention` char(30) DEFAULT NULL,
  `synedit` tinyint(1) DEFAULT '0' COMMENT '是否同步编辑',
  KEY `posid` (`posid`),
  KEY `listorder` (`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='推荐位数据表';

-- ----------------------------
-- Records of wt_position_data
-- ----------------------------

-- ----------------------------
-- Table structure for `wt_role`
-- ----------------------------
DROP TABLE IF EXISTS `wt_role`;
CREATE TABLE `wt_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '角色名称',
  `parentid` smallint(6) NOT NULL COMMENT '父角色ID',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL COMMENT '更新时间',
  `listorder` int(3) NOT NULL DEFAULT '0' COMMENT '排序字段',
  PRIMARY KEY (`id`),
  KEY `parentId` (`parentid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色信息列表';

-- ----------------------------
-- Records of wt_role
-- ----------------------------
INSERT INTO `wt_role` VALUES ('1', '超级管理员', '0', '1', '拥有网站最高管理员权限！', '1329633709', '1329633709', '0');
INSERT INTO `wt_role` VALUES ('2', '站点管理员', '1', '1', '站点管理员', '1329633722', '1399780945', '0');
INSERT INTO `wt_role` VALUES ('3', '发布人员', '2', '1', '发布人员', '1329633733', '1399798954', '0');

-- ----------------------------
-- Table structure for `wt_shuttles`
-- ----------------------------
DROP TABLE IF EXISTS `wt_shuttles`;
CREATE TABLE `wt_shuttles` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of wt_shuttles
-- ----------------------------
INSERT INTO `wt_shuttles` VALUES ('4', '1', '0', 'C2 全周预约班', '', '/d/file/content/2015/05/55435d72766d8.jpg', '', '', 'sd', '0', '', '0', '99', '1', '0', 'admin', '1430040754', '1430040754', '0', '0', '0', '0', '0', '0');
INSERT INTO `wt_shuttles` VALUES ('9', '1', '0', 'C1 全周预约班', '', '/d/file/content/2015/05/554359564dc9e.jpg', '', '', '22', '0', '', '0', '99', '1', '0', 'admin', '1430041454', '1430041454', '0', '0', '0', '0', '0', '0');
INSERT INTO `wt_shuttles` VALUES ('6', '1', '0', 'C2 商务班', '', '/d/file/content/2015/05/55435d1c3978b.jpg', '11', '', '11', '0', '', '0', '99', '1', '0', 'admin', '1430041383', '1430041383', '0', '0', '0', '0', '0', '0');
INSERT INTO `wt_shuttles` VALUES ('7', '1', '0', 'C1 快速实战班', '', '/d/file/content/2015/05/55435ce184813.jpg', '11', '', '11', '0', '', '0', '99', '1', '0', 'admin', '1430041393', '1430041393', '0', '0', '0', '0', '0', '0');
INSERT INTO `wt_shuttles` VALUES ('8', '1', '0', 'C1 平日预约班', '', '/d/file/content/2015/05/55435c62b2cd9.jpg', '', '', '1', '0', '', '0', '99', '1', '0', 'admin', '1430041403', '1430041403', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `wt_shuttles_data`
-- ----------------------------
DROP TABLE IF EXISTS `wt_shuttles_data`;
CREATE TABLE `wt_shuttles_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `price` float unsigned NOT NULL DEFAULT '0',
  `sale_price` int(10) unsigned NOT NULL DEFAULT '0',
  `models_car` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `auto_car` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Characteristic` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Introduction` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `train_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of wt_shuttles_data
-- ----------------------------
INSERT INTO `wt_shuttles_data` VALUES ('4', '<p>asd</p>', '2', '10000', '', '0', '1', '', '5400', '5400', '小型汽车', '1', '一对一教学，周一至周日训练，上车后可预约未来7日内的训练', '一对一教学，周一至周日训练，上车后可预约未来7日内的训练', '周一到周五');
INSERT INTO `wt_shuttles_data` VALUES ('9', '<p>2</p>', '2', '10000', '', '0', '1', '', '5200', '0', '小型汽车', '1', '全周7:00--21:00', '全周7:00--21:00', '全周7:00--21:00');
INSERT INTO `wt_shuttles_data` VALUES ('6', '<p>1</p>', '2', '10000', '', '0', '1', '', '8800', '8200', '小型汽车', '1', '独家推出全程一对一专人指导，感受专人服务的尊贵品', '独家推出全程一对一专人指导，感受专人服务的尊贵品', '全周7:00--21:00');
INSERT INTO `wt_shuttles_data` VALUES ('7', '<p>11</p>', '2', '10000', '', '0', '1', '', '5000', '5000', '小型汽车', '1', '特点：一对一教学，周一至周日连续训练，限45周岁以下报名', '特点：一对一教学，周一至周日连续训练，限45周岁以下报名', '周一至周日7:00--17:00');
INSERT INTO `wt_shuttles_data` VALUES ('8', '<p>111</p>', '2', '10000', '', '0', '1', '', '5000', '5000', '小型汽车', '1', '一对一教学，周一至周五训练，上车后可预约未来7日内的训练', '一对一教学，周一至周五训练，上车后可预约未来7日内的训练', '周一至周五7:00--21:00');

-- ----------------------------
-- Table structure for `wt_student`
-- ----------------------------
DROP TABLE IF EXISTS `wt_student`;
CREATE TABLE `wt_student` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `paperId` varchar(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wt_student
-- ----------------------------
INSERT INTO `wt_student` VALUES ('14', '211402199405143233', '杜闯', '18842656255');

-- ----------------------------
-- Table structure for `wt_tags`
-- ----------------------------
DROP TABLE IF EXISTS `wt_tags`;
CREATE TABLE `wt_tags` (
  `tagid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'tagID',
  `tag` char(20) NOT NULL COMMENT 'tag名称',
  `style` char(5) NOT NULL COMMENT '附加状态码',
  `usetimes` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '信息总数',
  `lastusetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后使用时间',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `lasthittime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最近访问时间',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`tagid`),
  UNIQUE KEY `tag` (`tag`),
  KEY `usetimes` (`usetimes`,`listorder`),
  KEY `hits` (`hits`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='tags主表';

-- ----------------------------
-- Records of wt_tags
-- ----------------------------
INSERT INTO `wt_tags` VALUES ('1', '11', '', '0', '1429964713', '0', '1429964713', '0');

-- ----------------------------
-- Table structure for `wt_tags_content`
-- ----------------------------
DROP TABLE IF EXISTS `wt_tags_content`;
CREATE TABLE `wt_tags_content` (
  `tag` char(20) NOT NULL COMMENT 'tag名称',
  `url` varchar(255) DEFAULT NULL COMMENT '信息地址',
  `title` varchar(80) DEFAULT NULL COMMENT '标题',
  `modelid` tinyint(3) unsigned NOT NULL COMMENT '模型ID',
  `contentid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '信息ID',
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目ID',
  `updatetime` int(11) unsigned NOT NULL COMMENT '更新时间',
  KEY `modelid` (`modelid`,`contentid`),
  KEY `tag` (`tag`(10))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='tags数据表';

-- ----------------------------
-- Records of wt_tags_content
-- ----------------------------

-- ----------------------------
-- Table structure for `wt_terms`
-- ----------------------------
DROP TABLE IF EXISTS `wt_terms`;
CREATE TABLE `wt_terms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `parentid` smallint(5) NOT NULL COMMENT '父ID',
  `name` varchar(200) NOT NULL DEFAULT '' COMMENT '分类名称',
  `module` varchar(200) NOT NULL DEFAULT '' COMMENT '所属模块',
  `setting` mediumtext NOT NULL COMMENT '相关配置信息',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `module` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of wt_terms
-- ----------------------------

-- ----------------------------
-- Table structure for `wt_urlrule`
-- ----------------------------
DROP TABLE IF EXISTS `wt_urlrule`;
CREATE TABLE `wt_urlrule` (
  `urlruleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id',
  `module` varchar(15) NOT NULL COMMENT '所属模块',
  `file` varchar(20) NOT NULL COMMENT '所属文件',
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '生成静态规则 1 静态',
  `urlrule` varchar(255) NOT NULL COMMENT 'url规则',
  `example` varchar(255) NOT NULL COMMENT '示例',
  PRIMARY KEY (`urlruleid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wt_urlrule
-- ----------------------------
INSERT INTO `wt_urlrule` VALUES ('1', 'content', 'category', '0', 'index.php?a=lists&catid={$catid}|index.php?a=lists&catid={$catid}&page={$page}', '动态：index.php?a=lists&catid=1&page=1');
INSERT INTO `wt_urlrule` VALUES ('2', 'content', 'category', '1', '{$categorydir}{$catdir}/index.shtml|{$categorydir}{$catdir}/index_{$page}.shtml', '静态：news/china/1000.shtml');
INSERT INTO `wt_urlrule` VALUES ('3', 'content', 'show', '1', '{$year}/{$catdir}_{$month}/{$id}.shtml|{$year}/{$catdir}_{$month}/{$id}_{$page}.shtml', '静态：2010/catdir_07/1_2.shtml');
INSERT INTO `wt_urlrule` VALUES ('4', 'content', 'show', '0', 'index.php?a=shows&catid={$catid}&id={$id}|index.php?a=shows&catid={$catid}&id={$id}&page={$page}', '动态：index.php?m=Index&a=shows&catid=1&id=1');
INSERT INTO `wt_urlrule` VALUES ('5', 'content', 'category', '1', 'news/{$catid}.shtml|news/{$catid}-{$page}.shtml', '静态：news/1.shtml');
INSERT INTO `wt_urlrule` VALUES ('6', 'content', 'category', '0', 'list-{$catid}.html|list-{$catid}-{$page}.html', '伪静态：list-1-1.html');
INSERT INTO `wt_urlrule` VALUES ('7', 'content', 'tags', '0', 'index.php?a=tags&amp;tagid={$tagid}|index.php?a=tags&amp;tagid={$tagid}&amp;page={$page}', '动态：index.php?a=tags&amp;tagid=1');
INSERT INTO `wt_urlrule` VALUES ('8', 'content', 'tags', '0', 'index.php?a=tags&amp;tag={$tag}|/index.php?a=tags&amp;tag={$tag}&amp;page={$page}', '动态：index.php?a=tags&amp;tag=标签');
INSERT INTO `wt_urlrule` VALUES ('9', 'content', 'tags', '0', 'tag-{$tag}.html|tag-{$tag}-{$page}.html', '伪静态：tag-标签.html');
INSERT INTO `wt_urlrule` VALUES ('10', 'content', 'tags', '0', 'tag-{$tagid}.html|tag-{$tagid}-{$page}.html', '伪静态：tag-1.html');
INSERT INTO `wt_urlrule` VALUES ('11', 'content', 'index', '1', 'index.html|index_{$page}.html', '静态：index_2.html');
INSERT INTO `wt_urlrule` VALUES ('12', 'content', 'index', '0', 'index.html|index_{$page}.html', '伪静态：index_2.html');
INSERT INTO `wt_urlrule` VALUES ('13', 'content', 'index', '0', 'index.php|index.php?page={$page}', '动态：index.php?page=2');
INSERT INTO `wt_urlrule` VALUES ('14', 'content', 'category', '1', 'download.shtml|download_{$page}.shtml', '静态：download.shtml');
INSERT INTO `wt_urlrule` VALUES ('15', 'content', 'show', '1', '{$categorydir}{$id}.shtml|{$categorydir}{$id}_{$page}.shtml', '静态：/父栏目/1.shtml');
INSERT INTO `wt_urlrule` VALUES ('16', 'content', 'show', '1', '{$catdir}/{$id}.shtml|{$catdir}/{$id}_{$page}.shtml', '示例：/栏目/1.html');
INSERT INTO `wt_urlrule` VALUES ('17', 'content', 'show', '1', '/index.php/Index/show/catid/{$id}.html', '/index.php/Index/show/catid/1.html');

-- ----------------------------
-- Table structure for `wt_user`
-- ----------------------------
DROP TABLE IF EXISTS `wt_user`;
CREATE TABLE `wt_user` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL COMMENT '用户名',
  `nickname` varchar(50) NOT NULL COMMENT '昵称/姓名',
  `password` char(32) NOT NULL COMMENT '密码',
  `bind_account` varchar(50) NOT NULL COMMENT '绑定帐户',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上次登录时间',
  `last_login_ip` varchar(40) NOT NULL COMMENT '上次登录IP',
  `verify` varchar(32) NOT NULL COMMENT '证验码',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `role_id` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '对应角色ID',
  `info` text NOT NULL COMMENT '信息',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='后台用户表';

-- ----------------------------
-- Records of wt_user
-- ----------------------------
INSERT INTO `wt_user` VALUES ('1', 'admin', '未知', '7d42afb80ca816422fb37de9cc6f5853', '', '1430569323', '192.168.2.3', 'NpDbAT', 'admin@abc3210.com', '备注信息', '1429707542', '1429707542', '1', '1', '');

-- ----------------------------
-- Table structure for `wt_users`
-- ----------------------------
DROP TABLE IF EXISTS `wt_users`;
CREATE TABLE `wt_users` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(18) COLLATE utf8_unicode_ci DEFAULT '0',
  `QQ` int(10) unsigned NOT NULL DEFAULT '0',
  `sex` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `papers` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `papersId` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  `isLocal` int(10) unsigned NOT NULL DEFAULT '0',
  `isShack` int(10) unsigned NOT NULL DEFAULT '0',
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `isHandle` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of wt_users
-- ----------------------------
INSERT INTO `wt_users` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '11', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '', '0', '0', '', '', '', '0', '0', '0', '', '1');
INSERT INTO `wt_users` VALUES ('2', '0', '0', '', '', '', '', '', '', '0', '', '0', '1', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '李贵发', '2147483647', '1048229044', '男', '身份证', '520201199305083610', '1', '1', '1', '111', '1');
INSERT INTO `wt_users` VALUES ('3', '0', '0', '', '', '', '', '', '', '0', '', '0', '1', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '杜闯', '2147483647', '1048229044', '男', '身份证', '520201199305083610', '1', '1', '1', '哈哈', '0');

-- ----------------------------
-- Table structure for `wt_users_data`
-- ----------------------------
DROP TABLE IF EXISTS `wt_users_data`;
CREATE TABLE `wt_users_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of wt_users_data
-- ----------------------------
