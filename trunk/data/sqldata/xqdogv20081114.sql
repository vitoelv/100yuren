-- ecshop v2.x SQL Dump Program
-- http://www.iastudy.com
-- 
-- DATE : 2008-11-14 10:45:06
-- MYSQL SERVER VERSION : 4.1.20
-- PHP VERSION : 4.4.4
-- ECShop VERSION : v2.5.1
-- Vol : 1
DROP TABLE IF EXISTS `IA_account_log`;
CREATE TABLE `IA_account_log` (
  `log_id` mediumint(8) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `user_money` decimal(10,2) NOT NULL default '0.00',
  `frozen_money` decimal(10,2) NOT NULL default '0.00',
  `rank_points` mediumint(9) NOT NULL default '0',
  `pay_points` mediumint(9) NOT NULL default '0',
  `change_time` int(10) unsigned NOT NULL default '0',
  `change_desc` varchar(255) NOT NULL default '',
  `change_type` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`log_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_ad`;
CREATE TABLE `IA_ad` (
  `ad_id` smallint(5) unsigned NOT NULL auto_increment,
  `position_id` smallint(5) unsigned NOT NULL default '0',
  `media_type` tinyint(3) unsigned NOT NULL default '0',
  `ad_name` varchar(60) NOT NULL default '',
  `ad_link` varchar(255) NOT NULL default '',
  `ad_code` text NOT NULL,
  `start_time` int(11) NOT NULL default '0',
  `end_time` int(11) NOT NULL default '0',
  `link_man` varchar(60) NOT NULL default '',
  `link_email` varchar(60) NOT NULL default '',
  `link_phone` varchar(60) NOT NULL default '',
  `click_count` mediumint(8) unsigned NOT NULL default '0',
  `enabled` tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (`ad_id`),
  KEY `position_id` (`position_id`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_ad_position`;
CREATE TABLE `IA_ad_position` (
  `position_id` tinyint(3) unsigned NOT NULL auto_increment,
  `position_name` varchar(60) NOT NULL default '',
  `ad_width` smallint(5) unsigned NOT NULL default '0',
  `ad_height` smallint(5) unsigned NOT NULL default '0',
  `position_desc` varchar(255) NOT NULL default '',
  `position_style` text NOT NULL,
  PRIMARY KEY  (`position_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_admin_action`;
CREATE TABLE `IA_admin_action` (
  `action_id` tinyint(3) unsigned NOT NULL auto_increment,
  `parent_id` tinyint(3) unsigned NOT NULL default '0',
  `action_code` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`action_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('1', '0', 'goods');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('2', '0', 'cms_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('3', '0', 'users_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('4', '0', 'priv_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('5', '0', 'sys_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('6', '0', 'order_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('7', '0', 'promotion');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('8', '0', 'email');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('21', '1', 'goods_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('22', '1', 'remove_back');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('23', '1', 'cat_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('24', '1', 'cat_drop');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('25', '1', 'attr_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('26', '1', 'brand_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('27', '1', 'comment_priv');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('84', '1', 'tag_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('30', '2', 'article_cat');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('31', '2', 'article_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('32', '2', 'shopinfo_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('33', '2', 'shophelp_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('34', '2', 'vote_priv');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('35', '7', 'topic_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('74', '4', 'template_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('73', '3', 'feedback_priv');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('38', '3', 'integrate_users');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('39', '3', 'sync_users');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('40', '3', 'users_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('41', '3', 'users_drop');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('42', '3', 'user_rank');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('85', '3', 'surplus_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('43', '4', 'admin_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('44', '4', 'admin_drop');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('45', '4', 'allot_priv');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('46', '4', 'logs_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('47', '4', 'logs_drop');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('48', '5', 'shop_config');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('49', '5', 'ship_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('50', '5', 'payment');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('51', '5', 'shiparea_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('52', '5', 'area_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('53', '6', 'order_os_edit');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('54', '6', 'order_ps_edit');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('55', '6', 'order_ss_edit');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('56', '6', 'order_edit');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('57', '6', 'order_view');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('58', '6', 'order_view_finished');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('59', '6', 'repay_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('60', '6', 'booking');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('61', '6', 'sale_order_stats');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('62', '6', 'client_flow_stats');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('78', '7', 'snatch_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('83', '7', 'ad_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('80', '7', 'gift_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('81', '7', 'card_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('70', '1', 'goods_type');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('82', '7', 'pack');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('79', '7', 'bonus_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('75', '5', 'friendlink');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('76', '5', 'db_backup');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('77', '5', 'db_renew');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('86', '4', 'agency_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('87', '3', 'account_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('88', '5', 'flash_manage');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('89', '5', 'navigator');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('90', '7', 'auction');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('91', '7', 'group_by');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('92', '7', 'favourable');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('93', '7', 'whole_sale');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('94', '1', 'goods_auto');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('95', '2', 'article_auto');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('96', '5', 'cron');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('97', '5', 'affiliate');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('98', '5', 'affiliate_ck');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('99', '8', 'attention_list');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('100', '8', 'email_list');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('101', '8', 'magazine_list');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('102', '8', 'view_sendlist');
INSERT INTO `IA_admin_action` ( `action_id`, `parent_id`, `action_code` ) VALUES  ('103', '1', 'virualcard');
DROP TABLE IF EXISTS `IA_admin_log`;
CREATE TABLE `IA_admin_log` (
  `log_id` int(10) unsigned NOT NULL auto_increment,
  `log_time` int(10) unsigned NOT NULL default '0',
  `user_id` tinyint(3) unsigned NOT NULL default '0',
  `log_info` varchar(255) NOT NULL default '',
  `ip_address` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`log_id`),
  KEY `log_time` (`log_time`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('1', '1225944204', '1', '编辑权限管理: vitoelv', '221.223.47.48');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('2', '1226259383', '2', '编辑商店设置:', '124.42.38.34');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('3', '1226279097', '1', '编辑属性: 作者', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('4', '1226279107', '1', '编辑属性: 课程编号', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('5', '1226279110', '1', '编辑属性: 出版日期', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('6', '1226279116', '1', '编辑属性: 出版社', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('7', '1226279122', '1', '编辑属性: 图书装订', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('8', '1226279195', '1', '编辑属性: 授课学校', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('9', '1226279198', '1', '编辑属性: 出版社', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('10', '1226279210', '1', '编辑属性: 授课学校1', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('11', '1226279213', '1', '编辑属性: 授课学校', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('12', '1226279258', '1', '编辑属性: 课程名称', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('13', '1226279277', '1', '编辑属性: 开课日期', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('14', '1226279290', '1', '编辑属性: 招生对象', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('15', '1226279304', '1', '编辑属性: 课程目标', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('16', '1226279330', '1', '编辑属性: 教学条件', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('17', '1226279360', '1', '编辑属性: 价格', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('18', '1226279376', '1', '编辑属性: 助学积分', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('19', '1226279378', '1', '编辑属性: 印张', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('20', '1226279388', '1', '编辑属性: 上课时间', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('21', '1226279398', '1', '编辑属性: 上课地点', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('22', '1226279420', '1', '编辑属性: 交通路线', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('23', '1226279440', '1', '编辑属性: 教学条件', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('24', '1226279518', '1', '添加商品分类: 计算机(IT)', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('25', '1226279543', '1', '添加商品分类: 外语', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('26', '1226279562', '1', '添加商品分类: 成教', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('27', '1226279581', '1', '添加商品分类: 自考', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('28', '1226279594', '1', '添加商品分类: 在职研', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('29', '1226279614', '1', '添加商品分类: 专业培训', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('30', '1226279628', '1', '添加商品分类: 出国', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('31', '1226282661', '1', '添加品牌管理: 金同方学校', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('32', '1226282832', '1', '添加品牌管理: 金世纪', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('33', '1226283282', '1', '添加商品: PHP网站开发就业课程', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('34', '1226283567', '1', '编辑商店设置:', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('35', '1226283979', '1', '添加商品: 网络工程就业班', '221.223.83.212');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('36', '1226376157', '1', '编辑商品: 网络工程就业班', '123.117.86.66');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('37', '1226376459', '1', '添加商品分类: 平面/网页设计', '123.117.86.66');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('38', '1226376530', '1', '添加商品分类: 软件开发/编程', '123.117.86.66');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('39', '1226376600', '1', '编辑商品分类: 软件开发/软件工程', '123.117.86.66');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('40', '1226376750', '1', '添加商品分类: 网络/通信', '123.117.86.66');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('41', '1226376780', '1', '编辑商品分类: 网络/通信', '123.117.86.66');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('42', '1226376795', '1', '编辑商品: 网络工程就业班', '123.117.86.66');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('43', '1226376814', '1', '编辑商品: PHP网站开发就业课程', '123.117.86.66');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('44', '1226376874', '1', '添加商品: 计算机高级工程师就业班', '123.117.86.66');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('45', '1226376982', '1', '添加商品: JAVA软件开发工程师', '123.117.86.66');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('46', '1226377059', '1', '编辑商品: JAVA软件开发工程师', '123.117.86.66');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('47', '1226377089', '1', '编辑商品: JAVA软件开发工程师', '123.117.86.66');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('48', '1226378084', '1', '添加: PHP', '123.117.86.66');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('49', '1226378100', '1', '添加: 软件开发', '123.117.86.66');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('50', '1226378111', '1', '编辑: 软件开发', '123.117.86.66');
INSERT INTO `IA_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('51', '1226378122', '1', '添加: 软件开发', '123.117.86.66');
DROP TABLE IF EXISTS `IA_admin_message`;
CREATE TABLE `IA_admin_message` (
  `message_id` smallint(5) unsigned NOT NULL auto_increment,
  `sender_id` tinyint(3) unsigned NOT NULL default '0',
  `receiver_id` tinyint(3) unsigned NOT NULL default '0',
  `sent_time` int(11) unsigned NOT NULL default '0',
  `read_time` int(11) unsigned NOT NULL default '0',
  `readed` tinyint(1) unsigned NOT NULL default '0',
  `deleted` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(150) NOT NULL default '',
  `message` text NOT NULL,
  PRIMARY KEY  (`message_id`),
  KEY `sender_id` (`sender_id`,`receiver_id`),
  KEY `receiver_id` (`receiver_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_admin_user`;
CREATE TABLE `IA_admin_user` (
  `user_id` smallint(5) unsigned NOT NULL auto_increment,
  `user_name` varchar(60) NOT NULL default '',
  `email` varchar(60) NOT NULL default '',
  `password` varchar(32) NOT NULL default '',
  `add_time` int(11) NOT NULL default '0',
  `last_login` int(11) NOT NULL default '0',
  `last_ip` varchar(15) NOT NULL default '',
  `action_list` text NOT NULL,
  `nav_list` text NOT NULL,
  `lang_type` varchar(50) NOT NULL default '',
  `agency_id` smallint(5) unsigned NOT NULL default '0',
  `todolist` longtext,
  PRIMARY KEY  (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `IA_admin_user` ( `user_id`, `user_name`, `email`, `password`, `add_time`, `last_login`, `last_ip`, `action_list`, `nav_list`, `lang_type`, `agency_id`, `todolist` ) VALUES  ('1', 'vitoe', 'vitoelv@163.com', '1ade77fc0871a1602273b57cafba01eb', '1225937832', '1226601878', '124.42.38.34', 'all', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list', '', '0', '');
INSERT INTO `IA_admin_user` ( `user_id`, `user_name`, `email`, `password`, `add_time`, `last_login`, `last_ip`, `action_list`, `nav_list`, `lang_type`, `agency_id`, `todolist` ) VALUES  ('2', 'vitoelv', 'vitoelv@gmail.com', 'e8364d468447a930dfa9eefb5b68cf5c', '1225944194', '1226259303', '124.42.38.34', 'goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto,feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,template_manage,admin_manage,admin_drop,allot_priv,logs_manage,logs_drop,agency_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,db_backup,db_renew,flash_manage,navigator,cron,affiliate,affiliate_ck,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,topic_manage,snatch_manage,ad_manage,gift_manage,card_manage,pack,bonus_manage,auction,group_by,favourable,whole_sale,attention_list,email_list,magazine_list,view_sendlist', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list', '', '0', '');
DROP TABLE IF EXISTS `IA_adsense`;
CREATE TABLE `IA_adsense` (
  `from_ad` smallint(5) NOT NULL default '0',
  `referer` varchar(255) NOT NULL default '',
  `clicks` int(10) unsigned NOT NULL default '0',
  KEY `from_ad` (`from_ad`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_affiliate_log`;
CREATE TABLE `IA_affiliate_log` (
  `log_id` mediumint(8) NOT NULL auto_increment,
  `order_id` mediumint(8) NOT NULL default '0',
  `time` int(10) NOT NULL default '0',
  `user_id` mediumint(8) NOT NULL default '0',
  `user_name` varchar(60) default NULL,
  `money` decimal(10,2) NOT NULL default '0.00',
  `point` int(10) NOT NULL default '0',
  `separate_type` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_agency`;
CREATE TABLE `IA_agency` (
  `agency_id` smallint(5) unsigned NOT NULL auto_increment,
  `agency_name` varchar(255) NOT NULL default '',
  `agency_desc` text NOT NULL,
  PRIMARY KEY  (`agency_id`),
  KEY `agency_name` (`agency_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_area_region`;
CREATE TABLE `IA_area_region` (
  `shipping_area_id` smallint(5) unsigned NOT NULL default '0',
  `region_id` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`shipping_area_id`,`region_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_article`;
CREATE TABLE `IA_article` (
  `article_id` mediumint(8) unsigned NOT NULL auto_increment,
  `cat_id` smallint(5) NOT NULL default '0',
  `title` varchar(150) NOT NULL default '',
  `content` longtext NOT NULL,
  `author` varchar(30) NOT NULL default '',
  `author_email` varchar(60) NOT NULL default '',
  `keywords` varchar(255) NOT NULL default '',
  `article_type` tinyint(1) unsigned NOT NULL default '2',
  `is_open` tinyint(1) unsigned NOT NULL default '1',
  `add_time` int(10) unsigned NOT NULL default '0',
  `file_url` varchar(255) NOT NULL default '',
  `open_type` tinyint(1) unsigned NOT NULL default '0',
  `link` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`article_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `IA_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link` ) VALUES  ('1', '2', '免责条款', '', '', '', '', '0', '1', '0', '', '0', '');
INSERT INTO `IA_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link` ) VALUES  ('2', '2', '隐私保护', '', '', '', '', '0', '1', '0', '', '0', '');
INSERT INTO `IA_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link` ) VALUES  ('3', '2', '咨询热点', '', '', '', '', '0', '1', '0', '', '0', '');
INSERT INTO `IA_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link` ) VALUES  ('4', '2', '联系我们', '', '', '', '', '0', '1', '0', '', '0', '');
INSERT INTO `IA_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link` ) VALUES  ('5', '2', '公司简介', '', '', '', '', '0', '1', '0', '', '0', '');
INSERT INTO `IA_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link` ) VALUES  ('6', '-1', '用户协议', '', '', '', '', '0', '1', '0', '', '0', '');
DROP TABLE IF EXISTS `IA_article_cat`;
CREATE TABLE `IA_article_cat` (
  `cat_id` smallint(5) NOT NULL auto_increment,
  `cat_name` varchar(255) NOT NULL default '',
  `cat_type` tinyint(1) unsigned NOT NULL default '1',
  `keywords` varchar(255) NOT NULL default '',
  `cat_desc` varchar(255) NOT NULL default '',
  `sort_order` tinyint(3) unsigned NOT NULL default '0',
  `show_in_nav` tinyint(1) unsigned NOT NULL default '0',
  `parent_id` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`cat_id`),
  KEY `cat_type` (`cat_type`),
  KEY `sort_order` (`sort_order`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `IA_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('1', '系统分类', '2', '', '系统保留分类', '0', '0', '0');
INSERT INTO `IA_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('2', '网店信息', '3', '', '网店信息分类', '0', '0', '1');
INSERT INTO `IA_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('3', '网店帮助分类', '4', '', '网店帮助分类', '0', '0', '1');
DROP TABLE IF EXISTS `IA_attribute`;
CREATE TABLE `IA_attribute` (
  `attr_id` smallint(5) unsigned NOT NULL auto_increment,
  `cat_id` smallint(5) unsigned NOT NULL default '0',
  `attr_name` varchar(60) NOT NULL default '',
  `attr_input_type` tinyint(1) unsigned NOT NULL default '1',
  `attr_type` tinyint(1) unsigned NOT NULL default '1',
  `attr_values` text NOT NULL,
  `attr_index` tinyint(1) unsigned NOT NULL default '0',
  `sort_order` tinyint(3) unsigned NOT NULL default '0',
  `is_linked` tinyint(1) unsigned NOT NULL default '0',
  `attr_group` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`attr_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `IA_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('1', '1', '课程名称', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `IA_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('2', '1', '授课学校', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `IA_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('3', '1', '课程编号', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `IA_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('4', '1', '开课日期', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `IA_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('5', '1', '招生对象', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `IA_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('6', '1', '课程目标', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `IA_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('7', '1', '教学条件', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `IA_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('8', '1', '价格', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `IA_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('9', '1', '助学积分', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `IA_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('10', '1', '上课时间', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `IA_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('11', '1', '上课地点', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `IA_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('12', '1', '交通路线', '0', '0', '', '0', '0', '0', '0');
DROP TABLE IF EXISTS `IA_auction_log`;
CREATE TABLE `IA_auction_log` (
  `log_id` mediumint(8) unsigned NOT NULL auto_increment,
  `act_id` mediumint(8) unsigned NOT NULL default '0',
  `bid_user` mediumint(8) unsigned NOT NULL default '0',
  `bid_price` decimal(10,2) unsigned NOT NULL default '0.00',
  `bid_time` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`log_id`),
  KEY `act_id` (`act_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_auto_manage`;
CREATE TABLE `IA_auto_manage` (
  `item_id` mediumint(8) NOT NULL default '0',
  `type` varchar(10) NOT NULL default '',
  `starttime` int(10) NOT NULL default '0',
  `endtime` int(10) NOT NULL default '0',
  PRIMARY KEY  (`item_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_bonus_type`;
CREATE TABLE `IA_bonus_type` (
  `type_id` smallint(5) unsigned NOT NULL auto_increment,
  `type_name` varchar(60) NOT NULL default '',
  `type_money` decimal(10,2) NOT NULL default '0.00',
  `send_type` tinyint(3) unsigned NOT NULL default '0',
  `min_amount` decimal(10,2) unsigned NOT NULL default '0.00',
  `max_amount` decimal(10,2) unsigned NOT NULL default '0.00',
  `send_start_date` int(11) NOT NULL default '0',
  `send_end_date` int(11) NOT NULL default '0',
  `use_start_date` int(11) NOT NULL default '0',
  `use_end_date` int(11) NOT NULL default '0',
  `min_goods_amount` decimal(10,2) unsigned NOT NULL default '0.00',
  PRIMARY KEY  (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_booking_goods`;
CREATE TABLE `IA_booking_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `email` varchar(60) NOT NULL default '',
  `link_man` varchar(60) NOT NULL default '',
  `tel` varchar(60) NOT NULL default '',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_desc` varchar(255) NOT NULL default '',
  `goods_number` smallint(5) unsigned NOT NULL default '0',
  `booking_time` int(10) unsigned NOT NULL default '0',
  `is_dispose` tinyint(1) unsigned NOT NULL default '0',
  `dispose_user` varchar(30) NOT NULL default '',
  `dispose_time` int(10) unsigned NOT NULL default '0',
  `dispose_note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`rec_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_brand`;
CREATE TABLE `IA_brand` (
  `brand_id` smallint(5) unsigned NOT NULL auto_increment,
  `brand_name` varchar(60) NOT NULL default '',
  `brand_logo` varchar(80) NOT NULL default '',
  `brand_desc` text NOT NULL,
  `site_url` varchar(255) NOT NULL default '',
  `sort_order` tinyint(3) unsigned NOT NULL default '0',
  `is_show` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`brand_id`),
  KEY `is_show` (`is_show`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `IA_brand` ( `brand_id`, `brand_name`, `brand_logo`, `brand_desc`, `site_url`, `sort_order`, `is_show` ) VALUES  ('1', '金同方学校', '1226282661274374670.jpg', '金同方计算机学校是经教委批准成立的正规、合法、专业培训学校（京教社字第F91039），交通便利，学习气氛非常浓厚。拥有各级专职教师200余名，高档PC机1000余台，苹果机50余台。拥有十多所分校遍布京城，并与知名出版社出版了多种自编教材，面向全国发行，得到了广大求学者及社会各界的青睐；建立了一支高素质、高学历的师资队伍；形成、完善了一套科学、高效、易学的教学体系。自建校以来，为社会各界培养了八十余万名各级计算机专业人才，以过硬的教学质量赢得了广大求学者及社会各界的称赞，树立了良好的信誉品牌，成为众多求学者的首选学校。', 'http://www.iastudy.com', '0', '1');
INSERT INTO `IA_brand` ( `brand_id`, `brand_name`, `brand_logo`, `brand_desc`, `site_url`, `sort_order`, `is_show` ) VALUES  ('2', '金世纪', '1226282832260583715.gif', '金世纪是来自北京的权威教育机构，1996年初经国家教育部门批准（京教社F91150）成立，是一所集计算机、外语、财会、文秘、企业管理、成人教育为一体的专业学校。 \r\n　　 金世纪学校教育总部设在中国教育、政治、文化的中心--首都北京。学校目前在北京、河北、吉林、内蒙、辽宁、大连、贵州、黑龙江、河南等地建立了六十多家分校，并与Microsoft、Adobe、Macromedia、Discreet等国际厂商建立了广泛的教育合作伙伴关系，同时获得国家劳动和社会保障部、国家信息化计算机教育认证项目。形成了完善的考核认证、就业上岗体系，为用户提供全面技术培训，并取得了显著成效。 \r\n　　 金世纪教育将以优异的教学质量、权威的认证考核、广泛的连锁体系，把我国的教育培训事业推向新的高度。', 'http://www.iastudy.com', '0', '1');
DROP TABLE IF EXISTS `IA_card`;
CREATE TABLE `IA_card` (
  `card_id` tinyint(3) unsigned NOT NULL auto_increment,
  `card_name` varchar(120) NOT NULL default '',
  `card_img` varchar(255) NOT NULL default '',
  `card_fee` decimal(6,2) unsigned NOT NULL default '0.00',
  `free_money` decimal(6,2) unsigned NOT NULL default '0.00',
  `card_desc` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`card_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_cart`;
CREATE TABLE `IA_cart` (
  `rec_id` mediumint(8) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `session_id` varchar(32) character set utf8 collate utf8_bin NOT NULL default '',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_sn` varchar(60) NOT NULL default '',
  `goods_name` varchar(120) NOT NULL default '',
  `market_price` decimal(10,2) unsigned NOT NULL default '0.00',
  `goods_price` decimal(10,2) NOT NULL default '0.00',
  `goods_number` smallint(5) unsigned NOT NULL default '0',
  `goods_attr` text NOT NULL,
  `is_real` tinyint(1) unsigned NOT NULL default '0',
  `extension_code` varchar(30) NOT NULL default '',
  `parent_id` mediumint(8) unsigned NOT NULL default '0',
  `rec_type` tinyint(1) unsigned NOT NULL default '0',
  `is_gift` smallint(5) unsigned NOT NULL default '0',
  `can_handsel` tinyint(3) unsigned NOT NULL default '0',
  `goods_attr_id` mediumint(8) NOT NULL default '0',
  PRIMARY KEY  (`rec_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `IA_cart` ( `rec_id`, `user_id`, `session_id`, `goods_id`, `goods_sn`, `goods_name`, `market_price`, `goods_price`, `goods_number`, `goods_attr`, `is_real`, `extension_code`, `parent_id`, `rec_type`, `is_gift`, `can_handsel`, `goods_attr_id` ) VALUES  ('1', '0', '2dca4a46756117b3f24163af06f8ec47', '1', 'JTF-PHP-001', 'PHP网站开发就业课程', '7440.00', '5600.00', '1', '', '1', '', '0', '0', '0', '0', '0');
DROP TABLE IF EXISTS `IA_category`;
CREATE TABLE `IA_category` (
  `cat_id` smallint(5) unsigned NOT NULL auto_increment,
  `cat_name` varchar(90) NOT NULL default '',
  `keywords` varchar(255) NOT NULL default '',
  `cat_desc` varchar(255) NOT NULL default '',
  `parent_id` smallint(5) unsigned NOT NULL default '0',
  `sort_order` tinyint(1) unsigned NOT NULL default '0',
  `template_file` varchar(50) NOT NULL default '',
  `measure_unit` varchar(15) NOT NULL default '',
  `show_in_nav` tinyint(1) NOT NULL default '0',
  `style` varchar(150) NOT NULL default '',
  `is_show` tinyint(1) unsigned NOT NULL default '1',
  `grade` tinyint(4) NOT NULL default '0',
  `filter_attr` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`cat_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `IA_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('1', '计算机(IT)', '计算机(IT)', '', '0', '0', '', '', '1', '', '1', '0', '1');
INSERT INTO `IA_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('2', '外语', '外语', '', '0', '0', '', '', '1', '', '1', '0', '0');
INSERT INTO `IA_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('3', '成教', '成教', '', '0', '0', '', '', '1', '', '1', '0', '0');
INSERT INTO `IA_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('4', '自考', '自考', '', '0', '0', '', '', '1', '', '1', '0', '0');
INSERT INTO `IA_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('5', '在职研', '在职研', '', '0', '0', '', '', '1', '', '1', '0', '0');
INSERT INTO `IA_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('6', '专业培训', '专业培训', '', '0', '0', '', '', '1', '', '1', '0', '0');
INSERT INTO `IA_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('7', '出国', '出国', '', '0', '0', '', '', '1', '', '1', '0', '0');
INSERT INTO `IA_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('8', '平面/网页设计', '平面设计，网页设计', '平面设计和网页设计', '1', '0', '', '', '0', '', '1', '0', '1');
INSERT INTO `IA_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('9', '软件开发/软件工程', '软件开发，计算机程序设计，软件编程，软件工程', '软件开发,软件编程和计算机程序设计以及软件工程', '1', '0', '', '', '0', '', '1', '0', '1');
INSERT INTO `IA_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('10', '网络/通信', '计算机网络，通信技术', '计算机网络，通信技术', '1', '0', '', '', '0', '', '1', '0', '1');
DROP TABLE IF EXISTS `IA_collect_goods`;
CREATE TABLE `IA_collect_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `add_time` int(11) unsigned NOT NULL default '0',
  `is_attention` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`rec_id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`),
  KEY `is_attention` (`is_attention`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_comment`;
CREATE TABLE `IA_comment` (
  `comment_id` int(10) unsigned NOT NULL auto_increment,
  `comment_type` tinyint(3) unsigned NOT NULL default '0',
  `id_value` mediumint(8) unsigned NOT NULL default '0',
  `email` varchar(60) NOT NULL default '',
  `user_name` varchar(60) NOT NULL default '',
  `content` text NOT NULL,
  `comment_rank` tinyint(1) unsigned NOT NULL default '0',
  `add_time` int(10) unsigned NOT NULL default '0',
  `ip_address` varchar(15) NOT NULL default '',
  `status` tinyint(3) unsigned NOT NULL default '0',
  `parent_id` int(10) unsigned NOT NULL default '0',
  `user_id` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`comment_id`),
  KEY `parent_id` (`parent_id`),
  KEY `id_value` (`id_value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_crons`;
CREATE TABLE `IA_crons` (
  `cron_id` tinyint(3) unsigned NOT NULL auto_increment,
  `cron_code` varchar(20) NOT NULL default '',
  `cron_name` varchar(120) NOT NULL default '',
  `cron_desc` text,
  `cron_order` tinyint(3) unsigned NOT NULL default '0',
  `cron_config` text NOT NULL,
  `thistime` int(10) NOT NULL default '0',
  `nextime` int(10) NOT NULL default '0',
  `day` tinyint(2) NOT NULL default '0',
  `week` char(1) NOT NULL default '',
  `hour` varchar(2) NOT NULL default '',
  `minute` varchar(255) NOT NULL default '',
  `enable` tinyint(1) NOT NULL default '1',
  `run_once` tinyint(1) NOT NULL default '0',
  `allow_ip` varchar(100) NOT NULL default '',
  `alow_files` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`cron_id`),
  KEY `nextime` (`nextime`),
  KEY `enable` (`enable`),
  KEY `cron_code` (`cron_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_email_list`;
CREATE TABLE `IA_email_list` (
  `id` mediumint(8) NOT NULL auto_increment,
  `email` varchar(60) NOT NULL default '',
  `stat` tinyint(1) NOT NULL default '0',
  `hash` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_email_sendlist`;
CREATE TABLE `IA_email_sendlist` (
  `id` mediumint(8) NOT NULL auto_increment,
  `email` varchar(100) NOT NULL default '',
  `template_id` mediumint(8) NOT NULL default '0',
  `email_content` text NOT NULL,
  `error` tinyint(1) NOT NULL default '0',
  `pri` tinyint(10) NOT NULL default '0',
  `last_send` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_error_log`;
CREATE TABLE `IA_error_log` (
  `id` int(10) NOT NULL auto_increment,
  `info` varchar(255) NOT NULL default '',
  `file` varchar(100) NOT NULL default '',
  `time` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_favourable_activity`;
CREATE TABLE `IA_favourable_activity` (
  `act_id` smallint(5) unsigned NOT NULL auto_increment,
  `act_name` varchar(255) NOT NULL default '',
  `start_time` int(10) unsigned NOT NULL default '0',
  `end_time` int(10) unsigned NOT NULL default '0',
  `user_rank` varchar(255) NOT NULL default '',
  `act_range` tinyint(3) unsigned NOT NULL default '0',
  `act_range_ext` varchar(255) NOT NULL default '',
  `min_amount` decimal(10,2) unsigned NOT NULL default '0.00',
  `max_amount` decimal(10,2) unsigned NOT NULL default '0.00',
  `act_type` tinyint(3) unsigned NOT NULL default '0',
  `act_type_ext` decimal(10,2) unsigned NOT NULL default '0.00',
  `gift` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`act_id`),
  KEY `act_name` (`act_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_feedback`;
CREATE TABLE `IA_feedback` (
  `msg_id` mediumint(8) unsigned NOT NULL auto_increment,
  `parent_id` mediumint(8) unsigned NOT NULL default '0',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `user_name` varchar(60) NOT NULL default '',
  `user_email` varchar(60) NOT NULL default '',
  `msg_title` varchar(200) NOT NULL default '',
  `msg_type` tinyint(1) unsigned NOT NULL default '0',
  `msg_content` text NOT NULL,
  `msg_time` int(10) unsigned NOT NULL default '0',
  `message_img` varchar(255) NOT NULL default '0',
  `order_id` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`msg_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_friend_link`;
CREATE TABLE `IA_friend_link` (
  `link_id` smallint(5) unsigned NOT NULL auto_increment,
  `link_name` varchar(255) NOT NULL default '',
  `link_url` varchar(255) NOT NULL default '',
  `link_logo` varchar(255) NOT NULL default '',
  `show_order` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`link_id`),
  KEY `show_order` (`show_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `IA_friend_link` ( `link_id`, `link_name`, `link_url`, `link_logo`, `show_order` ) VALUES  ('1', 'ECSHOP 网上商店管理系统', 'http://www.ecshop.com/', 'http://www.ecshop.com/images/logo/ecshop_logo.gif', '0');
DROP TABLE IF EXISTS `IA_goods`;
CREATE TABLE `IA_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL auto_increment,
  `cat_id` smallint(5) unsigned NOT NULL default '0',
  `goods_sn` varchar(60) NOT NULL default '',
  `goods_name` varchar(120) NOT NULL default '',
  `goods_name_style` varchar(60) NOT NULL default '+',
  `click_count` int(10) unsigned NOT NULL default '0',
  `brand_id` smallint(5) unsigned NOT NULL default '0',
  `provider_name` varchar(100) NOT NULL default '',
  `goods_number` smallint(5) unsigned NOT NULL default '0',
  `goods_weight` decimal(10,3) unsigned NOT NULL default '0.000',
  `market_price` decimal(10,2) unsigned NOT NULL default '0.00',
  `shop_price` decimal(10,2) unsigned NOT NULL default '0.00',
  `promote_price` decimal(10,2) unsigned NOT NULL default '0.00',
  `promote_start_date` int(11) unsigned NOT NULL default '0',
  `promote_end_date` int(11) unsigned NOT NULL default '0',
  `warn_number` tinyint(3) unsigned NOT NULL default '1',
  `keywords` varchar(255) NOT NULL default '',
  `goods_brief` varchar(255) NOT NULL default '',
  `goods_desc` text NOT NULL,
  `goods_thumb` varchar(255) NOT NULL default '',
  `goods_img` varchar(255) NOT NULL default '',
  `original_img` varchar(255) NOT NULL default '',
  `is_real` tinyint(3) unsigned NOT NULL default '1',
  `extension_code` varchar(30) NOT NULL default '',
  `is_on_sale` tinyint(1) unsigned NOT NULL default '1',
  `is_alone_sale` tinyint(1) unsigned NOT NULL default '1',
  `integral` int(10) unsigned NOT NULL default '0',
  `add_time` int(10) unsigned NOT NULL default '0',
  `sort_order` smallint(4) unsigned NOT NULL default '0',
  `is_delete` tinyint(1) unsigned NOT NULL default '0',
  `is_best` tinyint(1) unsigned NOT NULL default '0',
  `is_new` tinyint(1) unsigned NOT NULL default '0',
  `is_hot` tinyint(1) unsigned NOT NULL default '0',
  `is_promote` tinyint(1) unsigned NOT NULL default '0',
  `bonus_type_id` tinyint(3) unsigned NOT NULL default '0',
  `last_update` int(10) unsigned NOT NULL default '0',
  `goods_type` smallint(5) unsigned NOT NULL default '0',
  `seller_note` varchar(255) NOT NULL default '',
  `give_integral` int(11) NOT NULL default '-1',
  PRIMARY KEY  (`goods_id`),
  KEY `goods_sn` (`goods_sn`),
  KEY `cat_id` (`cat_id`),
  KEY `last_update` (`last_update`),
  KEY `brand_id` (`brand_id`),
  KEY `goods_weight` (`goods_weight`),
  KEY `promote_end_date` (`promote_end_date`),
  KEY `promote_start_date` (`promote_start_date`),
  KEY `goods_number` (`goods_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `IA_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral` ) VALUES  ('1', '9', 'JTF-PHP-001', 'PHP网站开发就业课程', '+', '4', '1', '', '1', '0.000', '7440.00', '6200.00', '5600.00', '1226217600', '1228809600', '1', '', '', '<p><font size=\"2\"><strong>学习目标：</strong>&nbsp;通过本课程的学习，学员能够使用PHP+MySql技术开发各种动态网站应用系统，能够完成聊天室、论坛、新闻系统等信息管理系统的程序编写工作，掌握各类网站的各自特点和开发要领，能够胜任PHP网站程序的开发，管理和维护的工作。<br />\r\n具体目标：<br />\r\n&nbsp;1、能够应用PHP技术开发出各种动态网站应用系统，能够完成聊天室，论坛，新闻系统等信息管理系统的程序开发。<br />\r\n&nbsp;2、能够熟练安装配置调试MySql数据库服务器，能够独立完成数据库的管理维护工作以及PHP操作MySQL数据库等;<br />\r\n&nbsp;3、掌握Linux的常用命令，Linux下的DHCP,DNS,FTP,SAMBA,APACHE等服务器的配置和服务器搭建等<br />\r\n&nbsp;4、掌握网站开发的基本流程和技巧，学会需求分析，能够根据用户的需求策划、建设、推广网站。<br />\r\n5、亲自参与PHP实训目程序设计与开发，快速提升PHP开发经验。<br />\r\n<br />\r\n<strong>课程内容简介</strong></font></p>\r\n<table bordercolor=\"#000000\" cellspacing=\"2\" cellpadding=\"3\" width=\"100%\" bgcolor=\"#ffffff\" border=\"1\" heihgt=\"\">\r\n    <tbody>\r\n        <tr>\r\n            <td>序号</td>\r\n            <td>&nbsp;课程名称</td>\r\n            <td>&nbsp;课程内容简介</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;1</td>\r\n            <td>&nbsp;基础知识与html</td>\r\n            <td>&nbsp;网络编程介绍、静动态网页、开发语言介绍、html常用标签</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;2</td>\r\n            <td>&nbsp;div+css</td>\r\n            <td>&nbsp;网页和网站的制作流程、网页表现与结构的分离、DIV与CSS结合的优势、层叠样式表css基本结构与用法、可视化格式模型、对链接应用样式、对列表应用样式和创建导航条、DIV门户网站页面布局。</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;3</td>\r\n            <td>&nbsp;Javascript</td>\r\n            <td>&nbsp;JavaScript 语法基础与核心语言对象，JavaScript中的浏览器对象与处理表单和表单元素事件变量、函数、对象、DHTML、浏览器对象。</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;4</td>\r\n            <td>&nbsp;PHP环境搭建</td>\r\n            <td>&nbsp;Windows下的环境搭建apache2、php5、mysql5环境；Zend Studio的安装、配置，项目管理及应用，编译及分析，断点与调试、堆栈及缓冲区、跳入跳出。</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;5</td>\r\n            <td>&nbsp;PHP语言编程</td>\r\n            <td>&nbsp;PHP语言简介，与其他语言的对比； PHP语言的数据类型、基本语法、常用内部函数、变量常量及其作用域；数组以及数组函数；正则表达式;php的内置常量变量；程序流程控制语句，用户定义函数参数的传递；PHP高级技术：文件系统、会话控制、异常处理、面向对象、典型类库应用、ADODB类库、Smarty模板及其他模板技术等。</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;6</td>\r\n            <td>&nbsp;MySql数据库</td>\r\n            <td>&nbsp;Mysql简介，软件的安装，配置和调试，服务的启动和停止数据库的维护，包括在命令行和图形化环境下对数据库、表、查询、关系的管理，对数据的增、删、改、查等实用操作数据库的优化、备份、恢复的操作，数据库用户以及其权限的管理、PHP操作MySQL数据库。</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;7</td>\r\n            <td>&nbsp;Linux系统</td>\r\n            <td>&nbsp;Linux 基础操作及常用指令、Linux及配套软件的安装、启动和权限、用户管理和文件系统管理文件查找、备份和自动化、进程的管理和控制；服务器的搭建:ＤＮＳ、ＦＴＰ、ＳＡＭＢＡ、Apache; 如何在linux系统下用apache服务器搭建一个网站系统。</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;8</td>\r\n            <td>&nbsp;Ajax技术</td>\r\n            <td>&nbsp;XML的概述 异步传输概念及流程等</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;9</td>\r\n            <td>&nbsp;项目实战</td>\r\n            <td>&nbsp;网站设计的需求分析，整体策划、服务器部署、编码调试、实际测试；网站安全的管理；掌握各类网站的特点，完成网站实训项目从分析到运营推广的全部工作。</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p><strong>通过本课程的学习，学员能够具备如下能力:</strong>&nbsp;1.独立的需求分析能力.<br />\r\n&nbsp;2.网站总体设计,推广能力<br />\r\n&nbsp;3.代码编写能力.<br />\r\n&nbsp;4.服务器架设排错能力.<br />\r\n&nbsp;5.数据库管理能力.<br />\r\n<strong>具体岗位如下：</strong>&nbsp;1、PHP网站开发工程师；PHP网站管理员、mysql数据库管理员；PHP网站设计师;各企事业单位网站的策划、制作、维护；各广告公司网站设计师、网站开发工程师.</p>', '', '', '', '1', '', '1', '1', '0', '1226283282', '0', '0', '1', '0', '0', '1', '0', '1226376814', '1', '', '-1');
INSERT INTO `IA_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral` ) VALUES  ('2', '10', 'ECS000002', '网络工程就业班', '+', '2', '2', '', '1', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '1', '1', '0', '1226283979', '0', '0', '0', '0', '0', '0', '0', '1226376795', '1', '', '-1');
INSERT INTO `IA_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral` ) VALUES  ('3', '9', 'ECS000003', '计算机高级工程师就业班', '+', '0', '1', '', '1', '0.000', '16800.00', '14000.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '1', '1', '0', '1226376874', '0', '0', '0', '0', '0', '0', '0', '1226376874', '1', '', '-1');
INSERT INTO `IA_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral` ) VALUES  ('4', '9', 'JTF-JAVA-001', 'JAVA软件开发工程师', '+', '1', '1', '', '1', '0.000', '12360.00', '10300.00', '9800.00', '1226304000', '1228896000', '1', '', '', '<p><strong>第一学期：</strong> 14&nbsp; 周<br />\r\n<strong>学习目标:</strong>&nbsp;&nbsp;本课程学习完成之后，成为一名熟练操作数据库并可以基于数据的Java应用程序的高级程序员，Java的软件工程师、JSP web开发工程师，可承担java高级程序设计及电子商务开发工作。<br />\r\n具体目标如下：<br />\r\n1.&nbsp;熟练掌握Java跨平台的原理，JAVA的分类，JAVA面向对象类的实现，异常处理，AWT与SWING组件与布局管理，多线程，APPLET的使用，SQL&nbsp; Server数据库设计和实现等；<br />\r\n2.&nbsp;掌握软件编程规范，软件集成开发环境，面向对象的分析与设计方法；<br />\r\n3.&nbsp;掌握JSP执行过程，Servlet技术的应用，数据库技术的应用，标签语言，JSP在实际项目开发中的应用；<br />\r\n4.&nbsp;熟练掌握JDK， eclipse和MyEclipse，sqlserver，apache-tomcat的安装、配置和使用,熟练运用JDBC进行数据库连接；<br />\r\n5.&nbsp;亲自参与企业级实际项目程序设计与开发，快速提升软件开发经验。<br />\r\n<strong>第一学期课程：</strong></p>\r\n<p>\r\n<table bordercolor=\"#000000\" cellspacing=\"2\" cellpadding=\"3\" width=\"100%\" bgcolor=\"#ffffff\" border=\"1\" heihgt=\"\">\r\n    <tbody>\r\n        <tr>\r\n            <td>&nbsp;序号</td>\r\n            <td>&nbsp;课程名称</td>\r\n            <td>&nbsp;课程内容简介</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;1</td>\r\n            <td>&nbsp;JAVA程序设计</td>\r\n            <td>&nbsp;Java基础:数据类型，运算符表达式，JAVA条件流程控制语句; JAVA面向对象编程: 类，内部类，对象，类的继承，抽象类，接口，包，数组，String类，StringBuffer类，JAVA语言编码规范等; JAVA图形界面设计,多线程,JAVA网络通信技术,APPLET的使用，项目程序设计实践。</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;2</td>\r\n            <td>&nbsp;SQL Server数据库</td>\r\n            <td>&nbsp;熟练掌握SQL Server企业管理器的基本操作，SQL Server数据库表管理，数据查询，T-SQL编程，数据库的设计，事务、索引和视图，存储过程，触发器，SQL Server数据管理等。</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;3</td>\r\n            <td>&nbsp;HTML及Javascript</td>\r\n            <td>&nbsp;基本标记与超链接，在 HTML 文档中插入图像，使用表，使用层，在 HTML 文档中插入多媒体，使用表单和框架与样式表，JavaScript 语法基础与核心语言对象，JavaScript中的浏览器对象与处理表单和表单元素事件。</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;4</td>\r\n            <td>&nbsp;软件集成开发环境</td>\r\n            <td>&nbsp;Eclipse，apache-tomcat服务器和MyEclipse的安装、配置和使用。</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;5</td>\r\n            <td>&nbsp;JSP web开发</td>\r\n            <td>&nbsp;JSP 页面的各种构成元素，JSP页面的执行过程，JSP 脚本元素的组成及语法，JSP 指令的组成及语法，分页技术，上传技术，jsp网站实例开发等</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;6</td>\r\n            <td>&nbsp;Servlet核心技术</td>\r\n            <td>&nbsp;Servlet 基础语法，Servlet 的生命周期，Servlet间通信，Servlet异常，过滤器Filter，会话和监听等</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;7</td>\r\n            <td>&nbsp;WEB框架的使用</td>\r\n            <td>&nbsp;掌握 Model I体系结构 ，掌握 Model II体系结构 ，掌握 MVC 应用程序</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;8</td>\r\n            <td>&nbsp;Java技术综合应用</td>\r\n            <td>&nbsp;基于JAVA、JSP、SERVLET 、JAVABEAN、JDBC的应用实训</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;9</td>\r\n            <td>&nbsp;实战项目</td>\r\n            <td>&nbsp;信息管理系统，基于JSP开发的企业网站系统等实训项目</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>\r\n<p><strong>在第一学期结束后，要求学员能够达到以下就业目标：</strong>&nbsp;1.&nbsp;使用JAVA技术进行简单的C/S架构应用系统开发<br />\r\n&nbsp;2.&nbsp;使用JSP和Servlet进行B/S架构商务企业开发<br />\r\n&nbsp;3.&nbsp;SQL数据库开发</p>\r\n<p><strong>具体岗位如下：</strong><br />\r\n&nbsp;1.&nbsp;&nbsp; JAVA程序员，企业网站开发,各种商务网站开发；<br />\r\n&nbsp;2.&nbsp; 企业级的管理信息系统开发和维护人员。</p>\r\n<p><br />\r\n<strong>第二学期： 14&nbsp; 周</strong><br />\r\n<strong>学习目标:</strong><br />\r\n本课程学习完成之后，成为一名熟练操作数据库并可以基于数据库的JAVA软件开发工程师，J2EE系统工程师，Oracle数据库管理，软件架构设计师，Linux操作系统管理员，可承担J2EE系统工程师及大型电子商务开发工作。<br />\r\n具体目标如下：<br />\r\n1.&nbsp;掌握Linux 基础操作及常用指令、Linux及配套软件的安装、启动和权限、用户管理和文件系统管理文件查找、备份和自动化、进程;系统优化，内核设置等;<br />\r\n2.&nbsp;掌握Web配置文件，Struts配置文件，Spring配置文件，控制器；WebLogic Server的安装与配置；<br />\r\n3.&nbsp;Java对象持久化技术，Java代理机制与AOP入门，Spring提供的IOC初步内容，Rose建模工具的使用，OOAD UML 用例图，对象图、类图<br />\r\n4.&nbsp;熟练掌握Oracler大型企业数据库基本操作以及数据库设计和实现等;<br />\r\n5.&nbsp;亲自参与企业级实际项目程序设计与开发，快速提升软件开发经验。<br />\r\n<br />\r\n<br />\r\n<strong>第二学期课程：</strong></p>\r\n<p>\r\n<table bordercolor=\"#000000\" cellspacing=\"2\" cellpadding=\"3\" width=\"100%\" bgcolor=\"#ffffff\" border=\"1\" heihgt=\"\">\r\n    <tbody>\r\n        <tr>\r\n            <td>&nbsp;序号</td>\r\n            <td>&nbsp;课程名称</td>\r\n            <td>&nbsp;课程内容简介</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;1</td>\r\n            <td>&nbsp;Linux系统</td>\r\n            <td>&nbsp;Linux 基础操作及常用指令、Linux及配套软件的安装、启动和权限、用户管理和文件系统管理文件查找、备份和自动化、进程的管理和控制；Linux开发环境；</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;2</td>\r\n            <td>&nbsp;面向对象的分析与设计UML</td>\r\n            <td>&nbsp;OOAD UML 用例图，对象图、类图，动态模型、构件与部署，了解常用的 UML 绘图工具，掌握rose建模工具的使用，UML建模工具及在软件开发中的应用等</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;3</td>\r\n            <td>&nbsp;Struts开发模型</td>\r\n            <td>&nbsp;掌握Struts框架的基本应用，配置文件，控制器，Struts视图组件，Struts标签库，Struts国际化 ，Validator验证框架，Struts与Apache的通用日志包等</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;4</td>\r\n            <td>&nbsp;Hibernate应用开发</td>\r\n            <td>&nbsp;创建Hibernate应用，域对象在持久化层的状态，Hibernate检索策略和方式，Hibernate与Struts集成，映射一对多关联关系，Hibernate的检索策略和检索方式等</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;5</td>\r\n            <td>&nbsp;Spring应用开发</td>\r\n            <td>&nbsp;Java代理机制与AOP入门，切入点的三种类型，Bean注入的三种形式，属性设定、自动绑定、集合对象注入，Bean的生命周期等</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;6</td>\r\n            <td>&nbsp;WebLogic Server</td>\r\n            <td>&nbsp;WebLogic Server的安装与配置、 高级管理，分布式体系结构和WebLogic体系结构，WebLogic Server中的JDBC，WebLogic Server中的会话Bean开发，WebLogic Server下的Servlet开发等</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;7</td>\r\n            <td>&nbsp;Oracle数据库设计和实现</td>\r\n            <td>&nbsp;Oracle 的安装和卸载，数据库和表的创建及操作，数据库的查询和子查询，oracle的常用的SQL函数，掌握视图的用法，PL/SQL介绍，存储过程和触发器，系统的安全管理、序列、锁和表分区，数据库的备份和恢复等</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;8</td>\r\n            <td>&nbsp;实战项目</td>\r\n            <td>&nbsp;根据SUN、Oracle等知名IT企业对软件人才市场的要求，确定相应的实训项目</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>\r\n<p><strong>在第二学期结束后，要求学员能够达到以下就业目标：</strong><br />\r\n1.&nbsp;运用J2EE框架技术实现J2EE企业级应用开发和部署<br />\r\n2.&nbsp;Oracle数据库的维护、管理和应用</p>\r\n<p><strong>具体岗位如下：</strong><br />\r\n1.&nbsp;JAVA工程师，J2EE系统工程师<br />\r\n2.&nbsp;Oracle数据开发工程师，软件架构设计师<br />\r\n3.&nbsp;LINUX操作系统管理员、软件项目经理</p>', '', '', '', '1', '', '1', '1', '0', '1226376982', '0', '0', '1', '1', '1', '1', '0', '1226377089', '1', '', '-1');
DROP TABLE IF EXISTS `IA_goods_activity`;
CREATE TABLE `IA_goods_activity` (
  `act_id` mediumint(8) unsigned NOT NULL auto_increment,
  `act_name` varchar(255) NOT NULL default '',
  `act_desc` text NOT NULL,
  `act_type` tinyint(3) unsigned NOT NULL default '0',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_name` varchar(255) NOT NULL default '',
  `start_time` int(10) unsigned NOT NULL default '0',
  `end_time` int(10) unsigned NOT NULL default '0',
  `is_finished` tinyint(3) unsigned NOT NULL default '0',
  `ext_info` text NOT NULL,
  PRIMARY KEY  (`act_id`),
  KEY `act_name` (`act_name`,`act_type`,`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_goods_article`;
CREATE TABLE `IA_goods_article` (
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `article_id` mediumint(8) unsigned NOT NULL default '0',
  `admin_id` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`goods_id`,`article_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_goods_attr`;
CREATE TABLE `IA_goods_attr` (
  `goods_attr_id` int(10) unsigned NOT NULL auto_increment,
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `attr_id` smallint(5) unsigned NOT NULL default '0',
  `attr_value` text NOT NULL,
  `attr_price` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`goods_attr_id`),
  KEY `goods_id` (`goods_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `IA_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('1', '1', '1', 'PHP网站开发就业课程', '0');
INSERT INTO `IA_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('2', '1', '2', '北京金同方学校', '0');
INSERT INTO `IA_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('3', '1', '3', 'JTF-PHP-001', '0');
INSERT INTO `IA_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('4', '1', '4', '随到随学 5个月的学习', '0');
INSERT INTO `IA_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('5', '1', '5', '年龄35岁以下，高中以上（大专以上优先）学历，对网络编程感兴趣者。', '0');
INSERT INTO `IA_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('6', '2', '1', '网络工程就业班', '0');
INSERT INTO `IA_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('7', '2', '2', '北京金同方计算机学校', '0');
INSERT INTO `IA_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('8', '2', '3', 'JTF-WLGC-001', '0');
INSERT INTO `IA_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('9', '2', '4', '随到随学 10周', '0');
INSERT INTO `IA_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('10', '2', '5', '年龄35岁以下，高中以上（大专以上优先）学历，对网站后台技术和网络工程感兴趣者。', '0');
DROP TABLE IF EXISTS `IA_goods_cat`;
CREATE TABLE `IA_goods_cat` (
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `cat_id` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`goods_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_goods_gallery`;
CREATE TABLE `IA_goods_gallery` (
  `img_id` mediumint(8) unsigned NOT NULL auto_increment,
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `img_url` varchar(255) NOT NULL default '',
  `img_desc` varchar(255) NOT NULL default '',
  `thumb_url` varchar(255) NOT NULL default '',
  `img_original` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`img_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_goods_type`;
CREATE TABLE `IA_goods_type` (
  `cat_id` smallint(5) unsigned NOT NULL auto_increment,
  `cat_name` varchar(60) NOT NULL default '',
  `enabled` tinyint(1) unsigned NOT NULL default '1',
  `attr_group` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `IA_goods_type` ( `cat_id`, `cat_name`, `enabled`, `attr_group` ) VALUES  ('1', '计算机(IT)', '1', '');
INSERT INTO `IA_goods_type` ( `cat_id`, `cat_name`, `enabled`, `attr_group` ) VALUES  ('2', '外语', '1', '');
INSERT INTO `IA_goods_type` ( `cat_id`, `cat_name`, `enabled`, `attr_group` ) VALUES  ('3', '成教', '1', '');
INSERT INTO `IA_goods_type` ( `cat_id`, `cat_name`, `enabled`, `attr_group` ) VALUES  ('4', '自考', '1', '');
INSERT INTO `IA_goods_type` ( `cat_id`, `cat_name`, `enabled`, `attr_group` ) VALUES  ('5', '在职研', '1', '');
INSERT INTO `IA_goods_type` ( `cat_id`, `cat_name`, `enabled`, `attr_group` ) VALUES  ('6', '专业培训', '1', '');
INSERT INTO `IA_goods_type` ( `cat_id`, `cat_name`, `enabled`, `attr_group` ) VALUES  ('7', '出国', '1', '');
DROP TABLE IF EXISTS `IA_group_goods`;
CREATE TABLE `IA_group_goods` (
  `parent_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_price` decimal(10,2) unsigned NOT NULL default '0.00',
  `admin_id` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`parent_id`,`goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_keywords`;
CREATE TABLE `IA_keywords` (
  `date` date NOT NULL default '0000-00-00',
  `searchengine` varchar(20) NOT NULL default '',
  `keyword` varchar(90) NOT NULL default '',
  `count` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`date`,`searchengine`,`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_link_goods`;
CREATE TABLE `IA_link_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `link_goods_id` mediumint(8) unsigned NOT NULL default '0',
  `is_double` tinyint(1) unsigned NOT NULL default '0',
  `admin_id` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`goods_id`,`link_goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_mail_templates`;
CREATE TABLE `IA_mail_templates` (
  `template_id` tinyint(1) unsigned NOT NULL auto_increment,
  `template_code` varchar(30) NOT NULL default '',
  `is_html` tinyint(1) unsigned NOT NULL default '0',
  `template_subject` varchar(200) NOT NULL default '',
  `template_content` text NOT NULL,
  `last_modify` int(10) unsigned NOT NULL default '0',
  `last_send` int(10) unsigned NOT NULL default '0',
  `type` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`template_id`),
  UNIQUE KEY `template_code` (`template_code`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `IA_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('1', 'send_password', '1', '密码找回', '{$user_name}您好！<br>\n<br>\n您已经进行了密码重置的操作，请点击以下链接(或者复制到您的浏览器):<br>\n<br>\n<a href=\"{$reset_email}\" target=\"_blank\">{$reset_email}</a><br>\n<br>\n以确认您的新密码重置操作！<br>\n<br>\n{$shop_name}<br>\n{$send_date}', '1194824789', '0', 'template');
INSERT INTO `IA_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('2', 'order_confirm', '0', '订单确认通知', '亲爱的{$order.consignee}，你好！ \n\n我们已经收到您于 {$order.formated_add_time} 提交的订单，该订单编号为：{$order.order_sn} 请记住这个编号以便日后的查询。\n\n{$shop_name}\n{$sent_date}\n\n\n', '1158226370', '0', 'template');
INSERT INTO `IA_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('3', 'deliver_notice', '1', '发货通知', '亲爱的{$order.consignee}。你好！</br></br>\n\n您的订单{$order.order_sn}已于{$send_time}按照您预定的配送方式给您发货了。</br>\n</br>\n{if $order.invoice_no}发货单号是{$order.invoice_no}。</br>{/if}\n</br>\n在您收到货物之后请点击下面的链接确认您已经收到货物：</br>\n<a href=\"{$confirm_url}\" target=\"_blank\">{$confirm_url}</a></br></br>\n如果您还没有收到货物可以点击以下链接给我们留言：</br></br>\n<a href=\"{$send_msg_url}\" target=\"_blank\">{$send_msg_url}</a></br>\n<br>\n再次感谢您对我们的支持。欢迎您的再次光临。 <br>\n<br>\n{$shop_name} </br>\n{$send_date}', '1194823291', '0', 'template');
INSERT INTO `IA_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('4', 'order_cancel', '0', '订单取消', '亲爱的{$order.consignee}，你好！ \n\n您的编号为：{$order.order_sn}的订单已取消。\n\n{$shop_name}\n{$send_date}', '1156491130', '0', 'template');
INSERT INTO `IA_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('5', 'order_invalid', '0', '订单无效', '亲爱的{$order.consignee}，你好！\n\n您的编号为：{$order.order_sn}的订单无效。\n\n{$shop_name}\n{$send_date}', '1156491164', '0', 'template');
INSERT INTO `IA_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('6', 'send_bonus', '0', '发红包', '亲爱的{$user_name}您好！\n\n恭喜您获得了{$count}个红包，金额{if $count > 1}分别{/if}为{$money}\n\n{$shop_name}\n{$send_date}\n', '1156491184', '0', 'template');
INSERT INTO `IA_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('7', 'group_buy', '1', '团购商品', '亲爱的{$consignee}，您好！<br>\n<br>\n您于{$order_time}在本店参加团购商品活动，所购买的商品名称为：{$goods_name}，数量：{$goods_number}，订单号为：{$order_sn}，订单金额为：{$order_amount}<br>\n<br>\n此团购商品现在已到结束日期，并达到最低价格，您现在可以对该订单付款。<br>\n<br>\n请点击下面的链接：<br>\n<a href=\"{$shop_url}\" target=\"_blank\">{$shop_url}</a><br>\n<br>\n请尽快登录到用户中心，查看您的订单详情信息。 <br>\n<br>\n{$shop_name} <br>\n<br>\n{$send_date}', '1194824668', '0', 'template');
INSERT INTO `IA_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('8', 'register_validate', '1', '邮件验证', '{$user_name}您好！<br><br>\r\n\r\n这封邮件是 {$shop_name} 发送的。你收到这封邮件是为了验证你注册邮件地址是否有效。如果您已经通过验证了，请忽略这封邮件。<br>\r\n请点击以下链接(或者复制到您的浏览器)来验证你的邮件地址:<br>\r\n<a href=\"{$validate_email}\" target=\"_blank\">{$validate_email}</a><br><br>\r\n\r\n{$shop_name}<br>\r\n{$send_date}', '1162201031', '0', 'template');
INSERT INTO `IA_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('9', 'virtual_card', '0', '虚拟卡片', '亲爱的{$order.consignee}\r\n你好！您的订单{$order.order_sn}中{$goods.goods_name} 商品的详细信息如下:\r\n{foreach from=$virtual_card item=card}\r\n{if $card.card_sn}卡号：{$card.card_sn}{/if}{if $card.card_password}卡片密码：{$card.card_password}{/if}{if $card.end_date}截至日期：{$card.end_date}{/if}\r\n{/foreach}\r\n再次感谢您对我们的支持。欢迎您的再次光临。\r\n\r\n{$shop_name} \r\n{$send_date}', '1162201031', '0', 'template');
INSERT INTO `IA_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('10', 'attention_list', '0', '关注商品', '亲爱的{$user_name}您好~\n\n您关注的商品 : {$goods_name} 最近已经更新,请您查看最新的商品信息\n\n{$goods_url}\r\n\r\n{$shop_name} \r\n{$send_date}', '1183851073', '0', 'template');
INSERT INTO `IA_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('11', 'remind_of_new_order', '0', '新订单通知', '亲爱的店长，您好：\n   快来看看吧，又有新订单了。订单金额为{$order.order_amount}，收货人是{$order.consignee}，地址是{$order.address}，电话是{$order.tel} {$order.mobile}。\n\n               系统提醒\n               {$send_date}', '1196239170', '0', 'template');
DROP TABLE IF EXISTS `IA_member_price`;
CREATE TABLE `IA_member_price` (
  `price_id` mediumint(8) unsigned NOT NULL auto_increment,
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `user_rank` tinyint(3) NOT NULL default '0',
  `user_price` decimal(10,2) NOT NULL default '0.00',
  PRIMARY KEY  (`price_id`),
  KEY `goods_id` (`goods_id`,`user_rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_nav`;
CREATE TABLE `IA_nav` (
  `id` mediumint(8) NOT NULL auto_increment,
  `ctype` varchar(10) default NULL,
  `cid` smallint(5) unsigned default NULL,
  `name` varchar(255) NOT NULL default '',
  `ifshow` tinyint(1) NOT NULL default '0',
  `vieworder` tinyint(1) NOT NULL default '0',
  `opennew` tinyint(1) NOT NULL default '0',
  `url` varchar(255) NOT NULL default '',
  `type` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `type` (`type`),
  KEY `ifshow` (`ifshow`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `IA_nav` ( `id`, `ctype`, `cid`, `name`, `ifshow`, `vieworder`, `opennew`, `url`, `type` ) VALUES  ('1', '', '', '用户中心', '1', '1', '0', 'user.php', 'top');
INSERT INTO `IA_nav` ( `id`, `ctype`, `cid`, `name`, `ifshow`, `vieworder`, `opennew`, `url`, `type` ) VALUES  ('2', '', '', '选购中心', '1', '2', '0', 'pick_out.php', 'top');
INSERT INTO `IA_nav` ( `id`, `ctype`, `cid`, `name`, `ifshow`, `vieworder`, `opennew`, `url`, `type` ) VALUES  ('3', '', '', '查看购物车', '1', '0', '0', 'flow.php', 'top');
INSERT INTO `IA_nav` ( `id`, `ctype`, `cid`, `name`, `ifshow`, `vieworder`, `opennew`, `url`, `type` ) VALUES  ('4', '', '', '团购商品', '1', '3', '0', 'group_buy.php', 'top');
INSERT INTO `IA_nav` ( `id`, `ctype`, `cid`, `name`, `ifshow`, `vieworder`, `opennew`, `url`, `type` ) VALUES  ('5', '', '', '夺宝奇兵', '1', '4', '0', 'snatch.php', 'top');
INSERT INTO `IA_nav` ( `id`, `ctype`, `cid`, `name`, `ifshow`, `vieworder`, `opennew`, `url`, `type` ) VALUES  ('6', '', '', '标签云', '1', '5', '6', 'tag_cloud.php', 'top');
INSERT INTO `IA_nav` ( `id`, `ctype`, `cid`, `name`, `ifshow`, `vieworder`, `opennew`, `url`, `type` ) VALUES  ('7', '', '', '免责条款', '1', '1', '0', 'article.php?id=1', 'bottom');
INSERT INTO `IA_nav` ( `id`, `ctype`, `cid`, `name`, `ifshow`, `vieworder`, `opennew`, `url`, `type` ) VALUES  ('8', '', '', '隐私保护', '1', '2', '0', 'article.php?id=2', 'bottom');
INSERT INTO `IA_nav` ( `id`, `ctype`, `cid`, `name`, `ifshow`, `vieworder`, `opennew`, `url`, `type` ) VALUES  ('9', '', '', '咨询热点', '1', '3', '0', 'article.php?id=3', 'bottom');
INSERT INTO `IA_nav` ( `id`, `ctype`, `cid`, `name`, `ifshow`, `vieworder`, `opennew`, `url`, `type` ) VALUES  ('10', '', '', '联系我们', '1', '4', '0', 'article.php?id=4', 'bottom');
INSERT INTO `IA_nav` ( `id`, `ctype`, `cid`, `name`, `ifshow`, `vieworder`, `opennew`, `url`, `type` ) VALUES  ('11', '', '', '公司简介', '1', '5', '0', 'article.php?id=5', 'bottom');
INSERT INTO `IA_nav` ( `id`, `ctype`, `cid`, `name`, `ifshow`, `vieworder`, `opennew`, `url`, `type` ) VALUES  ('12', '', '', '批发方案', '1', '6', '0', 'wholesale.php', 'bottom');
INSERT INTO `IA_nav` ( `id`, `ctype`, `cid`, `name`, `ifshow`, `vieworder`, `opennew`, `url`, `type` ) VALUES  ('13', '', '', '优惠活动', '1', '7', '0', 'activity.php', 'top');
INSERT INTO `IA_nav` ( `id`, `ctype`, `cid`, `name`, `ifshow`, `vieworder`, `opennew`, `url`, `type` ) VALUES  ('14', '', '', '配送方式', '1', '7', '0', 'myship.php', 'bottom');
INSERT INTO `IA_nav` ( `id`, `ctype`, `cid`, `name`, `ifshow`, `vieworder`, `opennew`, `url`, `type` ) VALUES  ('15', 'c', '1', '计算机(IT)', '1', '2', '0', 'category.php?id=1', 'middle');
INSERT INTO `IA_nav` ( `id`, `ctype`, `cid`, `name`, `ifshow`, `vieworder`, `opennew`, `url`, `type` ) VALUES  ('16', 'c', '2', '外语', '1', '4', '0', 'category.php?id=2', 'middle');
INSERT INTO `IA_nav` ( `id`, `ctype`, `cid`, `name`, `ifshow`, `vieworder`, `opennew`, `url`, `type` ) VALUES  ('17', 'c', '3', '成教', '1', '6', '0', 'category.php?id=3', 'middle');
INSERT INTO `IA_nav` ( `id`, `ctype`, `cid`, `name`, `ifshow`, `vieworder`, `opennew`, `url`, `type` ) VALUES  ('18', 'c', '4', '自考', '1', '8', '0', 'category.php?id=4', 'middle');
INSERT INTO `IA_nav` ( `id`, `ctype`, `cid`, `name`, `ifshow`, `vieworder`, `opennew`, `url`, `type` ) VALUES  ('19', 'c', '5', '在职研', '1', '10', '0', 'category.php?id=5', 'middle');
INSERT INTO `IA_nav` ( `id`, `ctype`, `cid`, `name`, `ifshow`, `vieworder`, `opennew`, `url`, `type` ) VALUES  ('20', 'c', '6', '专业培训', '1', '12', '0', 'category.php?id=6', 'middle');
INSERT INTO `IA_nav` ( `id`, `ctype`, `cid`, `name`, `ifshow`, `vieworder`, `opennew`, `url`, `type` ) VALUES  ('21', 'c', '7', '出国', '1', '14', '0', 'category.php?id=7', 'middle');
DROP TABLE IF EXISTS `IA_order_action`;
CREATE TABLE `IA_order_action` (
  `action_id` mediumint(8) unsigned NOT NULL auto_increment,
  `order_id` mediumint(8) unsigned NOT NULL default '0',
  `action_user` varchar(30) NOT NULL default '',
  `order_status` tinyint(1) unsigned NOT NULL default '0',
  `shipping_status` tinyint(1) unsigned NOT NULL default '0',
  `pay_status` tinyint(1) unsigned NOT NULL default '0',
  `action_note` varchar(255) NOT NULL default '',
  `log_time` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`action_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_order_goods`;
CREATE TABLE `IA_order_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL auto_increment,
  `order_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_name` varchar(120) NOT NULL default '',
  `goods_sn` varchar(60) NOT NULL default '',
  `goods_number` smallint(5) unsigned NOT NULL default '1',
  `market_price` decimal(10,2) NOT NULL default '0.00',
  `goods_price` decimal(10,2) NOT NULL default '0.00',
  `goods_attr` text NOT NULL,
  `send_number` smallint(5) unsigned NOT NULL default '0',
  `is_real` tinyint(1) unsigned NOT NULL default '0',
  `extension_code` varchar(30) NOT NULL default '',
  `parent_id` mediumint(8) unsigned NOT NULL default '0',
  `is_gift` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`rec_id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_order_info`;
CREATE TABLE `IA_order_info` (
  `order_id` mediumint(8) unsigned NOT NULL auto_increment,
  `order_sn` varchar(20) NOT NULL default '',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `order_status` tinyint(1) unsigned NOT NULL default '0',
  `shipping_status` tinyint(1) unsigned NOT NULL default '0',
  `pay_status` tinyint(1) unsigned NOT NULL default '0',
  `consignee` varchar(60) NOT NULL default '',
  `country` smallint(5) unsigned NOT NULL default '0',
  `province` smallint(5) unsigned NOT NULL default '0',
  `city` smallint(5) unsigned NOT NULL default '0',
  `district` smallint(5) unsigned NOT NULL default '0',
  `address` varchar(255) NOT NULL default '',
  `zipcode` varchar(60) NOT NULL default '',
  `tel` varchar(60) NOT NULL default '',
  `mobile` varchar(60) NOT NULL default '',
  `email` varchar(60) NOT NULL default '',
  `best_time` varchar(120) NOT NULL default '',
  `sign_building` varchar(120) NOT NULL default '',
  `postscript` varchar(255) NOT NULL default '',
  `shipping_id` tinyint(3) NOT NULL default '0',
  `shipping_name` varchar(120) NOT NULL default '',
  `pay_id` tinyint(3) NOT NULL default '0',
  `pay_name` varchar(120) NOT NULL default '',
  `how_oos` varchar(120) NOT NULL default '',
  `how_surplus` varchar(120) NOT NULL default '',
  `pack_name` varchar(120) NOT NULL default '',
  `card_name` varchar(120) NOT NULL default '',
  `card_message` varchar(255) NOT NULL default '',
  `inv_payee` varchar(120) NOT NULL default '',
  `inv_content` varchar(120) NOT NULL default '',
  `goods_amount` decimal(10,2) NOT NULL default '0.00',
  `shipping_fee` decimal(10,2) NOT NULL default '0.00',
  `insure_fee` decimal(10,2) NOT NULL default '0.00',
  `pay_fee` decimal(10,2) NOT NULL default '0.00',
  `pack_fee` decimal(10,2) NOT NULL default '0.00',
  `card_fee` decimal(10,2) NOT NULL default '0.00',
  `money_paid` decimal(10,2) NOT NULL default '0.00',
  `surplus` decimal(10,2) NOT NULL default '0.00',
  `integral` int(10) unsigned NOT NULL default '0',
  `integral_money` decimal(10,2) NOT NULL default '0.00',
  `bonus` decimal(10,2) NOT NULL default '0.00',
  `order_amount` decimal(10,2) NOT NULL default '0.00',
  `from_ad` smallint(5) NOT NULL default '0',
  `referer` varchar(255) NOT NULL default '',
  `add_time` int(10) unsigned NOT NULL default '0',
  `confirm_time` int(10) unsigned NOT NULL default '0',
  `pay_time` int(10) unsigned NOT NULL default '0',
  `shipping_time` int(10) unsigned NOT NULL default '0',
  `pack_id` tinyint(3) unsigned NOT NULL default '0',
  `card_id` tinyint(3) unsigned NOT NULL default '0',
  `bonus_id` smallint(5) unsigned NOT NULL default '0',
  `invoice_no` varchar(50) NOT NULL default '',
  `extension_code` varchar(30) NOT NULL default '',
  `extension_id` mediumint(8) unsigned NOT NULL default '0',
  `to_buyer` varchar(255) NOT NULL default '',
  `pay_note` varchar(255) NOT NULL default '',
  `agency_id` smallint(5) unsigned NOT NULL default '0',
  `inv_type` varchar(60) NOT NULL default '',
  `tax` decimal(10,2) NOT NULL default '0.00',
  `is_separate` tinyint(1) NOT NULL default '0',
  `parent_id` mediumint(8) unsigned NOT NULL default '0',
  `discount` decimal(10,2) NOT NULL default '0.00',
  PRIMARY KEY  (`order_id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `user_id` (`user_id`),
  KEY `order_status` (`order_status`),
  KEY `shipping_status` (`shipping_status`),
  KEY `pay_status` (`pay_status`),
  KEY `shipping_id` (`shipping_id`),
  KEY `pay_id` (`pay_id`),
  KEY `extension_code` (`extension_code`,`extension_id`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_pack`;
CREATE TABLE `IA_pack` (
  `pack_id` tinyint(3) unsigned NOT NULL auto_increment,
  `pack_name` varchar(120) NOT NULL default '',
  `pack_img` varchar(255) NOT NULL default '',
  `pack_fee` smallint(5) unsigned NOT NULL default '0',
  `free_money` smallint(5) unsigned NOT NULL default '0',
  `pack_desc` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`pack_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_pay_log`;
CREATE TABLE `IA_pay_log` (
  `log_id` int(10) unsigned NOT NULL auto_increment,
  `order_id` mediumint(8) unsigned NOT NULL default '0',
  `order_amount` decimal(10,2) unsigned NOT NULL default '0.00',
  `order_type` tinyint(1) unsigned NOT NULL default '0',
  `is_paid` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_payment`;
CREATE TABLE `IA_payment` (
  `pay_id` tinyint(3) unsigned NOT NULL auto_increment,
  `pay_code` varchar(20) NOT NULL default '',
  `pay_name` varchar(120) NOT NULL default '',
  `pay_fee` varchar(10) NOT NULL default '0',
  `pay_desc` text NOT NULL,
  `pay_order` tinyint(3) unsigned NOT NULL default '0',
  `pay_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL default '0',
  `is_cod` tinyint(1) unsigned NOT NULL default '0',
  `is_online` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`pay_id`),
  UNIQUE KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_plugins`;
CREATE TABLE `IA_plugins` (
  `code` varchar(30) NOT NULL default '',
  `version` varchar(10) NOT NULL default '',
  `library` varchar(255) NOT NULL default '',
  `assign` tinyint(1) unsigned NOT NULL default '0',
  `install_date` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_region`;
CREATE TABLE `IA_region` (
  `region_id` smallint(5) unsigned NOT NULL auto_increment,
  `parent_id` smallint(5) unsigned NOT NULL default '0',
  `region_name` varchar(120) NOT NULL default '',
  `region_type` tinyint(1) NOT NULL default '2',
  `agency_id` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`region_id`),
  KEY `parent_id` (`parent_id`),
  KEY `region_type` (`region_type`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1', '0', '中国', '0', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2', '1', '北京', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3', '1', '天津', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('4', '1', '河北', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('5', '1', '山西', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('6', '1', '内蒙古', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('7', '1', '辽宁', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('8', '1', '吉林', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('9', '1', '黑龙江', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('10', '1', '上海', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('11', '1', '江苏', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('12', '1', '浙江', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('13', '1', '安徽', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('14', '1', '福建', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('15', '1', '江西', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('16', '1', '山东', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('17', '1', '河南', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('18', '1', '湖北', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('19', '1', '湖南', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('20', '1', '广东', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('21', '1', '广西', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('22', '1', '海南', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('23', '1', '重庆', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('24', '1', '四川', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('25', '1', '贵州', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('26', '1', '云南', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('27', '1', '西藏', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('28', '1', '陕西', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('29', '1', '甘肃', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('30', '1', '青海', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('31', '1', '宁夏', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('32', '1', '新疆', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('33', '1', '香港', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('34', '1', '台湾', '1', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('35', '2', '北京', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('36', '3', '天津', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('37', '4', '石家庄', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('38', '4', '唐山', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('39', '4', '秦皇岛', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('40', '4', '邯郸', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('41', '4', '邢台', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('42', '4', '保定', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('43', '4', '张家口', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('44', '4', '承德', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('45', '4', '沧州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('46', '4', '廊坊', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('47', '4', '衡水', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('48', '5', '太原', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('49', '5', '大同', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('50', '5', '阳泉', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('51', '5', '长治', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('52', '5', '晋城', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('53', '5', '朔州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('54', '5', '晋中', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('55', '5', '运城', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('56', '5', '忻州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('57', '5', '临汾', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('58', '5', '吕梁', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('59', '5', '侯马', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('60', '5', '五台山', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('61', '5', '离石', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('62', '6', '呼和浩特', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('63', '6', '包头', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('64', '6', '乌海', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('65', '6', '赤峰', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('66', '6', '通辽', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('67', '6', '鄂尔多斯', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('68', '6', '呼伦贝尔', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('69', '6', '巴彦淖尔市', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('70', '6', '乌兰察布市', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('71', '6', '兴安盟', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('72', '6', '锡林郭勒盟', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('73', '6', '阿拉善盟', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('74', '7', '沈阳', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('75', '7', '大连', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('76', '7', '鞍山', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('77', '7', '抚顺', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('78', '7', '本溪', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('79', '7', '丹东', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('80', '7', '锦州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('81', '7', '营口', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('82', '7', '阜新', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('83', '7', '辽阳', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('84', '7', '盘锦', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('85', '7', '铁岭', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('86', '7', '朝阳', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('87', '7', '葫芦岛市', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('88', '8', '长春', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('89', '8', '吉林', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('90', '8', '四平', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('91', '8', '辽源', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('92', '8', '通化', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('93', '8', '白山', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('94', '8', '松原', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('95', '8', '白城', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('96', '8', '延边', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('97', '9', '哈尔滨', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('98', '9', '齐齐哈尔', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('99', '9', '鸡西', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('100', '9', '鹤岗', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('101', '9', '双鸭山', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('102', '9', '大庆', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('103', '9', '伊春', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('104', '9', '佳木斯', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('105', '9', '七台河', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('106', '9', '牡丹江', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('107', '9', '黑河', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('108', '9', '绥化', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('109', '9', '大兴安岭', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('110', '10', '上海', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('111', '11', '南京', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('112', '11', '无锡', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('113', '11', '徐州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('114', '11', '常州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('115', '11', '苏州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('116', '11', '南通', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('117', '11', '连云港', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('118', '11', '淮安', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('119', '11', '盐城', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('120', '11', '扬州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('121', '11', '镇江', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('122', '11', '泰州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('123', '11', '宿迁', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('124', '12', '杭州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('125', '12', '宁波', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('126', '12', '温州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('127', '12', '嘉兴', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('128', '12', '湖州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('129', '12', '绍兴', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('130', '12', '金华', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('131', '12', '衢州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('132', '12', '舟山', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('133', '12', '台州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('134', '12', '丽水', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('135', '13', '合肥', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('136', '13', '芜湖', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('137', '13', '蚌埠', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('138', '13', '淮南', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('139', '13', '马鞍山', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('140', '13', '淮北', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('141', '13', '铜陵', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('142', '13', '安庆', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('143', '13', '黄山', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('144', '13', '滁州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('145', '13', '阜阳', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('146', '13', '宿州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('147', '13', '巢湖', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('148', '13', '六安', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('149', '13', '亳州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('150', '13', '池州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('151', '13', '宣城', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('152', '14', '福州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('153', '14', '厦门', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('154', '14', '莆田', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('155', '14', '三明', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('156', '14', '泉州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('157', '14', '漳州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('158', '14', '南平', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('159', '14', '龙岩', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('160', '14', '宁德', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('161', '15', '南昌', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('162', '15', '景德镇', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('163', '15', '萍乡', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('164', '15', '九江', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('165', '15', '新余', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('166', '15', '鹰潭', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('167', '15', '赣州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('168', '15', '吉安', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('169', '15', '宜春', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('170', '15', '抚州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('171', '15', '上饶', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('172', '16', '济南', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('173', '16', '青岛', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('174', '16', '淄博', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('175', '16', '枣庄', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('176', '16', '东营', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('177', '16', '烟台', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('178', '16', '潍坊', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('179', '16', '济宁', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('180', '16', '泰安', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('181', '16', '威海', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('182', '16', '日照', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('183', '16', '莱芜', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('184', '16', '临沂', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('185', '16', '德州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('186', '16', '聊城', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('187', '16', '滨州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('188', '16', '荷泽', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('189', '17', '郑州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('190', '17', '开封', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('191', '17', '洛阳', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('192', '17', '平顶山', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('193', '17', '焦作', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('194', '17', '鹤壁', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('195', '17', '新乡', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('196', '17', '安阳', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('197', '17', '濮阳', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('198', '17', '许昌', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('199', '17', '漯河', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('200', '17', '三门峡', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('201', '17', '南阳', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('202', '17', '商丘', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('203', '17', '信阳', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('204', '17', '周口', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('205', '17', '驻马店', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('206', '18', '武汉', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('207', '18', '黄石', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('208', '18', '襄樊', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('209', '18', '十堰', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('210', '18', '荆州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('211', '18', '宜昌', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('212', '18', '荆门', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('213', '18', '鄂州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('214', '18', '孝感', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('215', '18', '黄冈', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('216', '18', '咸宁', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('217', '18', '随州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('218', '18', '恩施', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('219', '19', '长沙', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('220', '19', '株洲', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('221', '19', '湘潭', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('222', '19', '衡阳', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('223', '19', '邵阳', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('224', '19', '岳阳', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('225', '19', '常德', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('226', '19', '张家界', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('227', '19', '益阳', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('228', '19', '郴州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('229', '19', '永州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('230', '19', '怀化', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('231', '19', '娄底', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('232', '19', '湘西', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('233', '20', '广州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('234', '20', '深圳', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('235', '20', '珠海', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('236', '20', '汕头', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('237', '20', '韶关', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('238', '20', '佛山', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('239', '20', '江门', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('240', '20', '湛江', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('241', '20', '茂名', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('242', '20', '肇庆', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('243', '20', '惠州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('244', '20', '梅州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('245', '20', '汕尾', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('246', '20', '河源', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('247', '20', '阳江', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('248', '20', '清远', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('249', '20', '东莞', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('250', '20', '中山', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('251', '20', '潮州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('252', '20', '揭阳', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('253', '20', '云浮', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('254', '21', '南宁', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('255', '21', '柳州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('256', '21', '桂林', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('257', '21', '梧州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('258', '21', '北海', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('259', '21', '防城港', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('260', '21', '钦州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('261', '21', '贵港', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('262', '21', '玉林', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('263', '21', '百色', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('264', '21', '贺州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('265', '21', '河池', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('266', '21', '来宾', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('267', '21', '崇左', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('268', '22', '海口', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('269', '22', '三亚', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('270', '22', '其他', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('271', '23', '重庆', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('272', '24', '成都', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('273', '24', '自贡', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('274', '24', '攀枝花', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('275', '24', '泸州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('276', '24', '德阳', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('277', '24', '绵阳', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('278', '24', '广元', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('279', '24', '遂宁', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('280', '24', '内江', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('281', '24', '乐山', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('282', '24', '南充', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('283', '24', '宜宾', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('284', '24', '广安', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('285', '24', '达州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('286', '24', '眉山', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('287', '24', '雅安', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('288', '24', '巴中', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('289', '24', '资阳', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('290', '24', '阿坝', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('291', '24', '甘孜', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('292', '24', '凉山', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('293', '25', '贵阳', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('294', '25', '六盘水', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('295', '25', '遵义', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('296', '25', '安顺', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('297', '25', '铜仁', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('298', '25', '毕节', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('299', '25', '黔西南', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('300', '25', '黔东南', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('301', '25', '黔南', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('302', '26', '昆明', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('303', '26', '曲靖', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('304', '26', '玉溪', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('305', '26', '保山', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('306', '26', '昭通', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('307', '26', '丽江', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('308', '26', '思茅', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('309', '26', '临沧', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('310', '26', '文山', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('311', '26', '红河', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('312', '26', '西双版纳', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('313', '26', '楚雄', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('314', '26', '大理', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('315', '26', '德宏', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('316', '26', '怒江', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('317', '26', '迪庆', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('318', '27', '拉萨', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('319', '27', '昌都', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('320', '27', '山南', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('321', '27', '日喀则', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('322', '27', '那曲', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('323', '27', '阿里', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('324', '27', '林芝', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('325', '28', '西安', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('326', '28', '铜川', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('327', '28', '宝鸡', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('328', '28', '咸阳', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('329', '28', '渭南', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('330', '28', '延安', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('331', '28', '汉中', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('332', '28', '榆林', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('333', '28', '安康', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('334', '28', '商洛', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('335', '29', '兰州', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('336', '29', '嘉峪关', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('337', '29', '金昌', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('338', '29', '白银', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('339', '29', '天水', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('340', '29', '武威', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('341', '29', '张掖', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('342', '29', '平凉', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('343', '29', '酒泉', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('344', '29', '庆阳', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('345', '29', '定西', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('346', '29', '陇南', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('347', '29', '临夏', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('348', '29', '甘南', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('349', '30', '西宁', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('350', '30', '海东', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('351', '30', '海北', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('352', '30', '黄南', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('353', '30', '海南', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('354', '30', '果洛', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('355', '30', '玉树', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('356', '30', '海西', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('357', '31', '银川', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('358', '31', '石嘴山', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('359', '31', '吴忠', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('360', '31', '固原', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('361', '31', '中卫市', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('362', '32', '乌鲁木齐', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('363', '32', '克拉玛依', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('364', '32', '吐露番', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('365', '32', '哈密', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('366', '32', '和田', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('367', '32', '阿克苏地区', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('368', '32', '喀什', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('369', '32', '克孜勒苏', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('370', '32', '巴音郭楞', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('371', '32', '昌吉', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('372', '32', '博尔塔拉', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('373', '32', '伊犁', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('374', '32', '塔城', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('375', '32', '阿勒泰', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('376', '33', '中西区', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('377', '33', '东区', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('378', '33', '九龙城区', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('379', '33', '观塘区', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('380', '33', '南区', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('381', '33', '深水埗区', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('382', '33', '黄大仙区', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('383', '33', '湾仔区', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('384', '33', '油尖旺区', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('385', '33', '离岛区', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('386', '33', '葵青区', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('387', '33', '北区', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('388', '33', '西贡区', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('389', '33', '沙田区', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('390', '33', '屯门区', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('391', '33', '大埔区', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('392', '33', '荃湾区', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('393', '33', '元朗区', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('394', '34', '台北市', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('395', '34', '高雄市', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('396', '34', '基隆市', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('397', '34', '台中市', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('398', '34', '台南市', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('399', '34', '新竹市', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('400', '34', '嘉义市', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('401', '34', '台北县', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('402', '34', '宜兰县', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('403', '34', '桃园县', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('404', '34', '新竹县', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('405', '34', '苗栗县', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('406', '34', '台中县', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('407', '34', '彰化县', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('408', '34', '南投县', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('409', '34', '云林县', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('410', '34', '嘉义县', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('411', '34', '台南县', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('412', '34', '高雄县', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('413', '34', '屏东县', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('414', '34', '澎湖县', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('415', '34', '台东县', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('416', '34', '花莲县', '2', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('417', '35', '三环以内包括亚运村', '3', '0');
INSERT INTO `IA_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('418', '35', '三环外四环内', '3', '0');
DROP TABLE IF EXISTS `IA_searchengine`;
CREATE TABLE `IA_searchengine` (
  `date` date NOT NULL default '0000-00-00',
  `searchengine` varchar(20) NOT NULL default '',
  `count` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`date`,`searchengine`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `IA_searchengine` ( `date`, `searchengine`, `count` ) VALUES  ('2008-11-11', 'YAHOO', '2');
DROP TABLE IF EXISTS `IA_shipping`;
CREATE TABLE `IA_shipping` (
  `shipping_id` tinyint(3) unsigned NOT NULL auto_increment,
  `shipping_code` varchar(20) NOT NULL default '',
  `shipping_name` varchar(120) NOT NULL default '',
  `shipping_desc` varchar(255) NOT NULL default '',
  `insure` varchar(10) NOT NULL default '0',
  `support_cod` tinyint(1) unsigned NOT NULL default '0',
  `enabled` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`shipping_id`),
  KEY `shipping_code` (`shipping_code`,`enabled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_shipping_area`;
CREATE TABLE `IA_shipping_area` (
  `shipping_area_id` smallint(5) unsigned NOT NULL auto_increment,
  `shipping_area_name` varchar(150) NOT NULL default '',
  `shipping_id` tinyint(3) unsigned NOT NULL default '0',
  `configure` text NOT NULL,
  PRIMARY KEY  (`shipping_area_id`),
  KEY `shipping_id` (`shipping_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_shop_config`;
CREATE TABLE `IA_shop_config` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `parent_id` smallint(5) unsigned NOT NULL default '0',
  `code` varchar(30) NOT NULL default '',
  `type` varchar(10) NOT NULL default '',
  `store_range` varchar(255) NOT NULL default '',
  `store_dir` varchar(255) NOT NULL default '',
  `value` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('1', '0', 'shop_info', 'group', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('2', '0', 'basic', 'group', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('3', '0', 'display', 'group', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('4', '0', 'shopping_flow', 'group', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('5', '0', 'smtp', 'group', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('6', '0', 'hidden', 'hidden', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('7', '0', 'goods', 'group', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('8', '0', 'sms', 'group', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('9', '0', 'wap', 'group', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('101', '1', 'shop_name', 'text', '', '', '我爱学习网', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('102', '1', 'shop_title', 'text', '', '', '我爱学习网', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('103', '1', 'shop_desc', 'text', '', '', '提供计算机，外语，成考自考，在职研究生，专业培训，出国资讯等各类服务', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('104', '1', 'shop_keywords', 'text', '', '', '学习，培训', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('105', '1', 'shop_country', 'manual', '', '', '1', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('106', '1', 'shop_province', 'manual', '', '', '2', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('107', '1', 'shop_city', 'manual', '', '', '35', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('108', '1', 'shop_address', 'text', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('109', '1', 'qq', 'text', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('110', '1', 'ww', 'text', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('111', '1', 'skype', 'text', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('112', '1', 'ym', 'text', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('113', '1', 'msn', 'text', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('114', '1', 'service_email', 'text', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('115', '1', 'service_phone', 'text', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('116', '1', 'shop_closed', 'select', '0,1', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('117', '1', 'close_comment', 'textarea', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('118', '1', 'shop_logo', 'file', '', '../themes/{$template}/images/', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('120', '1', 'user_notice', 'textarea', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('121', '1', 'shop_notice', 'textarea', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('201', '2', 'lang', 'manual', '', '', 'zh_cn', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('202', '2', 'icp_number', 'text', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('203', '2', 'icp_file', 'file', '', '../cert/', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('204', '2', 'watermark', 'file', '', '../images/', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('205', '2', 'watermark_place', 'select', '0,1,2,3,4,5', '', '1', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('206', '2', 'watermark_alpha', 'text', '', '', '65', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('207', '2', 'use_storage', 'select', '1,0', '', '1', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('208', '2', 'market_price_rate', 'text', '', '', '1.2', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('209', '2', 'rewrite', 'select', '0,1,2', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('210', '2', 'integral_name', 'text', '', '', '积分', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('211', '2', 'integral_scale', 'text', '', '', '100', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('212', '2', 'integral_percent', 'text', '', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('213', '2', 'sn_prefix', 'text', '', '', 'ECS', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('214', '2', 'comment_check', 'select', '0,1', '', '1', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('215', '2', 'no_picture', 'file', '', '../images/', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('218', '2', 'stats_code', 'textarea', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('219', '2', 'cache_time', 'text', '', '', '3600', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('220', '2', 'register_points', 'text', '', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('221', '2', 'enable_gzip', 'select', '0,1', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('222', '2', 'top10_time', 'select', '0,1,2,3,4', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('223', '2', 'timezone', 'options', '-12,-11,-10,-9,-8,-7,-6,-5,-4,-3.5,-3,-2,-1,0,1,2,3,3.5,4,4.5,5,5.5,5.75,6,6.5,7,8,9,9.5,10,11,12', '', '8', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('224', '2', 'upload_size_limit', 'options', 'default,0,64,128,256,512,1024,2048,4096', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('226', '2', 'cron_method', 'select', '0,1', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('227', '2', 'comment_factor', 'select', '0,1,2,3', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('228', '2', 'enable_order_check', 'select', '0,1', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('229', '2', 'default_storage', 'text', '', '', '1', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('230', '2', 'bgcolor', 'text', '', '', '#FFFFFF', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('231', '2', 'visit_stats', 'select', 'on,off', '', 'on', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('301', '3', 'date_format', 'text', '', '', 'Y-m-d', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('302', '3', 'time_format', 'text', '', '', 'Y-m-d H:i:s', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('303', '3', 'currency_format', 'text', '', '', '￥%s元', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('304', '3', 'thumb_width', 'text', '', '', '100', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('305', '3', 'thumb_height', 'text', '', '', '100', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('306', '3', 'image_width', 'text', '', '', '200', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('307', '3', 'image_height', 'text', '', '', '200', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('312', '3', 'top_number', 'text', '', '', '10', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('313', '3', 'history_number', 'text', '', '', '5', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('314', '3', 'comments_number', 'text', '', '', '5', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('315', '3', 'bought_goods', 'text', '', '', '3', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('316', '3', 'article_number', 'text', '', '', '4', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('317', '3', 'goods_name_length', 'text', '', '', '10', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('318', '3', 'price_format', 'select', '0,1,2,3,4,5', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('319', '3', 'page_size', 'text', '', '', '10', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('320', '3', 'sort_order_type', 'select', '0,1,2', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('321', '3', 'sort_order_method', 'select', '0,1', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('322', '3', 'show_order_type', 'select', '0,1,2', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('323', '3', 'attr_related_number', 'text', '', '', '5', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('324', '3', 'goods_gallery_number', 'text', '', '', '5', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('325', '3', 'article_title_length', 'text', '', '', '18', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('326', '3', 'name_of_region_1', 'text', '', '', '国家', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('327', '3', 'name_of_region_2', 'text', '', '', '省', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('328', '3', 'name_of_region_3', 'text', '', '', '市', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('329', '3', 'name_of_region_4', 'text', '', '', '区', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('330', '3', 'search_keywords', 'text', '', '', '', '0');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('332', '3', 'related_goods_number', 'text', '', '', '4', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('333', '3', 'help_open', 'select', '0,1', '', '1', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('401', '4', 'can_invoice', 'select', '1,0', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('402', '4', 'use_integral', 'select', '1,0', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('403', '4', 'use_bonus', 'select', '1,0', '', '1', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('404', '4', 'use_surplus', 'select', '1,0', '', '1', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('405', '4', 'use_how_oos', 'select', '1,0', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('406', '4', 'send_confirm_email', 'select', '1,0', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('407', '4', 'send_ship_email', 'select', '1,0', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('408', '4', 'send_cancel_email', 'select', '1,0', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('409', '4', 'send_invalid_email', 'select', '1,0', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('410', '4', 'order_pay_note', 'select', '1,0', '', '1', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('411', '4', 'order_unpay_note', 'select', '1,0', '', '1', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('412', '4', 'order_ship_note', 'select', '1,0', '', '1', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('413', '4', 'order_receive_note', 'select', '1,0', '', '1', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('414', '4', 'order_unship_note', 'select', '1,0', '', '1', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('415', '4', 'order_return_note', 'select', '1,0', '', '1', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('416', '4', 'order_invalid_note', 'select', '1,0', '', '1', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('417', '4', 'order_cancel_note', 'select', '1,0', '', '1', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('418', '4', 'invoice_content', 'textarea', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('419', '4', 'anonymous_buy', 'select', '1,0', '', '1', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('420', '4', 'min_goods_amount', 'text', '', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('421', '4', 'one_step_buy', 'select', '1,0', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('422', '4', 'invoice_type', 'manual', '', '', 'a:2:{s:4:\"type\";a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}s:4:\"rate\";a:3:{i:0;d:0;i:1;d:0;i:2;d:0;}}', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('423', '4', 'stock_dec_time', 'select', '1,0', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('424', '4', 'cart_confirm', 'options', '1,2,3,4', '', '3', '0');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('501', '5', 'smtp_host', 'text', '', '', 'localhost', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('502', '5', 'smtp_port', 'text', '', '', '25', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('503', '5', 'smtp_user', 'text', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('504', '5', 'smtp_pass', 'password', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('505', '5', 'smtp_mail', 'text', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('506', '5', 'mail_charset', 'select', 'UTF8,GB2312,BIG5', '', 'UTF8', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('507', '5', 'mail_service', 'select', '0,1', '', '0', '0');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('601', '6', 'integrate_code', 'hidden', '', '', 'ecshop', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('602', '6', 'integrate_config', 'hidden', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('603', '6', 'hash_code', 'hidden', '', '', '761d0df5c189cb421199c24b8bb353fb', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('604', '6', 'template', 'hidden', '', '', 'eachnet', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('605', '6', 'install_date', 'hidden', '', '', '1225966634', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('606', '6', 'ecs_version', 'hidden', '', '', 'v2.5.1', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('607', '6', 'sms_user_name', 'hidden', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('608', '6', 'sms_password', 'hidden', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('609', '6', 'sms_auth_str', 'hidden', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('610', '6', 'sms_domain', 'hidden', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('611', '6', 'sms_count', 'hidden', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('612', '6', 'sms_total_money', 'hidden', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('613', '6', 'sms_balance', 'hidden', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('614', '6', 'sms_last_request', 'hidden', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('616', '6', 'affiliate', 'hidden', '', '', 'a:3:{s:6:\"config\";a:7:{s:6:\"expire\";d:24;s:11:\"expire_unit\";s:4:\"hour\";s:11:\"separate_by\";i:0;s:15:\"level_point_all\";s:2:\"5%\";s:15:\"level_money_all\";s:2:\"1%\";s:18:\"level_register_all\";i:2;s:17:\"level_register_up\";i:60;}s:4:\"item\";a:4:{i:0;a:2:{s:11:\"level_point\";s:3:\"60%\";s:11:\"level_money\";s:3:\"60%\";}i:1;a:2:{s:11:\"level_point\";s:3:\"30%\";s:11:\"level_money\";s:3:\"30%\";}i:2;a:2:{s:11:\"level_point\";s:2:\"7%\";s:11:\"level_money\";s:2:\"7%\";}i:3;a:2:{s:11:\"level_point\";s:2:\"3%\";s:11:\"level_money\";s:2:\"3%\";}}s:2:\"on\";i:0;}', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('617', '6', 'captcha', 'hidden', '', '', '12', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('618', '6', 'captcha_width', 'hidden', '', '', '100', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('619', '6', 'captcha_height', 'hidden', '', '', '20', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('620', '6', 'sitemap', 'hidden', '', '', 'a:6:{s:19:\"homepage_changefreq\";s:6:\"hourly\";s:17:\"homepage_priority\";s:3:\"0.9\";s:19:\"category_changefreq\";s:6:\"hourly\";s:17:\"category_priority\";s:3:\"0.8\";s:18:\"content_changefreq\";s:6:\"weekly\";s:16:\"content_priority\";s:3:\"0.7\";}', '0');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('621', '6', 'points_rule', 'hidden', '', '', '', '0');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('701', '7', 'show_goodssn', 'select', '1,0', '', '1', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('702', '7', 'show_brand', 'select', '1,0', '', '1', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('703', '7', 'show_goodsweight', 'select', '1,0', '', '1', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('704', '7', 'show_goodsnumber', 'select', '1,0', '', '1', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('705', '7', 'show_addtime', 'select', '1,0', '', '1', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('706', '7', 'goodsattr_style', 'select', '1,0', '', '1', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('707', '7', 'show_marketprice', 'select', '1,0', '', '1', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('801', '8', 'sms_shop_mobile', 'text', '', '', '', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('802', '8', 'sms_order_placed', 'select', '1,0', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('803', '8', 'sms_order_payed', 'select', '1,0', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('804', '8', 'sms_order_shipped', 'select', '1,0', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('901', '9', 'wap_config', 'select', '1,0', '', '0', '1');
INSERT INTO `IA_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('902', '9', 'wap_logo', 'file', '', '../images/', '', '1');
DROP TABLE IF EXISTS `IA_snatch_log`;
CREATE TABLE `IA_snatch_log` (
  `log_id` mediumint(8) unsigned NOT NULL auto_increment,
  `snatch_id` tinyint(3) unsigned NOT NULL default '0',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `bid_price` decimal(10,2) NOT NULL default '0.00',
  `bid_time` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`log_id`),
  KEY `snatch_id` (`snatch_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_stats`;
CREATE TABLE `IA_stats` (
  `access_time` int(10) unsigned NOT NULL default '0',
  `ip_address` varchar(15) NOT NULL default '',
  `visit_times` smallint(5) unsigned NOT NULL default '1',
  `browser` varchar(60) NOT NULL default '',
  `system` varchar(20) NOT NULL default '',
  `language` varchar(20) NOT NULL default '',
  `area` varchar(30) NOT NULL default '',
  `referer_domain` varchar(100) NOT NULL default '',
  `referer_path` varchar(200) NOT NULL default '',
  `access_url` varchar(255) NOT NULL default '',
  KEY `access_time` (`access_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `IA_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1225937838', '221.223.47.48', '1', 'Internet Explorer 7.0', 'Windows XP', 'en-us', '北京市', 'http://m4056.s1.changw.com', '/install/index.php?lang=zh_cn&step=done', '/index.php');
INSERT INTO `IA_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1226010553', '221.223.84.21', '2', 'Internet Explorer 7.0', 'Windows XP', 'en-us', '北京市', '', '', '/index.php');
INSERT INTO `IA_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1226021744', '221.223.84.21', '1', 'Internet Explorer 6.0', 'Windows XP', 'zh-cn', '北京市', '', '', '/index.php');
INSERT INTO `IA_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1226029230', '221.223.84.21', '3', 'Internet Explorer 7.0', 'Windows XP', 'en-us', '北京市', '', '', '/index.php');
INSERT INTO `IA_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1226100777', '124.42.38.34', '1', 'Internet Explorer 7.0', 'Windows XP', 'en-us', '北京市', '', '', '/index.php');
INSERT INTO `IA_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1226259149', '124.42.38.34', '1', 'FireFox 3.0.2', 'Linux', 'en-us,en', '北京市', '', '', '/index.php');
INSERT INTO `IA_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1226277032', '221.223.83.212', '1', 'FireFox 3.0.3', 'Windows XP', 'zh-cn,zh', '北京市', '', '', '/index.php');
INSERT INTO `IA_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1226278502', '221.223.83.212', '2', 'Internet Explorer 7.0', 'Windows XP', 'en-us', '北京市', '', '', '/index.php');
INSERT INTO `IA_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1226283303', '221.223.83.212', '3', 'Internet Explorer 7.0', 'Windows XP', 'en-us', '北京市', 'http://www.iastudy.com', '/category.php?id=7', '/index.php');
INSERT INTO `IA_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1226292176', '222.130.158.79', '2', 'FireFox 3.0.3', 'Windows XP', 'zh-cn,zh', '北京市', '', '', '/index.php');
INSERT INTO `IA_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1226329828', '64.246.161.42', '1', 'Unknow browser', 'Unknown', 'en-us,fr-be', '美国', 'http://whois.domaintools.com', '/iastudy.com', '/index.php');
INSERT INTO `IA_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1226340282', '65.189.195.73', '1', 'Internet Explorer 7.0', 'Windows XP', 'en-us', '美国', '', '', '/index.php');
INSERT INTO `IA_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1226375833', '123.117.86.66', '4', 'Internet Explorer 7.0', 'Windows XP', 'en-us', '北京市', '', '', '/index.php');
INSERT INTO `IA_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1226378128', '123.117.86.66', '5', 'Internet Explorer 7.0', 'Windows XP', 'en-us', '北京市', 'http://www.iastudy.com', '/index.php', '/category.php');
INSERT INTO `IA_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1226379939', '123.117.86.66', '6', 'Internet Explorer 7.0', 'Windows XP', 'en-us', '北京市', 'http://www.iastudy.com', '/category.php?id=1', '/category.php');
INSERT INTO `IA_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1226450126', '124.42.38.34', '1', 'Internet Explorer 7.0', 'Windows XP', 'en-us', '北京市', '', '', '/index.php');
INSERT INTO `IA_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1226451270', '221.223.80.190', '1', 'Internet Explorer 7.0', 'Windows XP', 'zh-cn', '北京市', '', '', '/index.php');
INSERT INTO `IA_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1226601874', '124.42.38.34', '7', 'Internet Explorer 7.0', 'Windows XP', 'en-us', '北京市', '', '', '/index.php');
DROP TABLE IF EXISTS `IA_tag`;
CREATE TABLE `IA_tag` (
  `tag_id` mediumint(8) NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `tag_words` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`tag_id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `IA_tag` ( `tag_id`, `user_id`, `goods_id`, `tag_words` ) VALUES  ('1', '0', '1', 'PHP');
INSERT INTO `IA_tag` ( `tag_id`, `user_id`, `goods_id`, `tag_words` ) VALUES  ('2', '0', '1', '软件开发');
INSERT INTO `IA_tag` ( `tag_id`, `user_id`, `goods_id`, `tag_words` ) VALUES  ('3', '0', '4', '软件开发');
DROP TABLE IF EXISTS `IA_template`;
CREATE TABLE `IA_template` (
  `filename` varchar(30) NOT NULL default '',
  `region` varchar(40) NOT NULL default '',
  `library` varchar(40) NOT NULL default '',
  `sort_order` tinyint(1) unsigned NOT NULL default '0',
  `id` smallint(5) unsigned NOT NULL default '0',
  `number` tinyint(1) unsigned NOT NULL default '5',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `theme` varchar(60) NOT NULL default '',
  `remarks` varchar(30) NOT NULL default '',
  KEY `filename` (`filename`,`region`),
  KEY `theme` (`theme`),
  KEY `remarks` (`remarks`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_topic`;
CREATE TABLE `IA_topic` (
  `topic_id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '''''',
  `intro` text NOT NULL,
  `start_time` int(11) NOT NULL default '0',
  `end_time` int(10) NOT NULL default '0',
  `data` text NOT NULL,
  `template` varchar(255) NOT NULL default '''''',
  `css` text NOT NULL,
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_user_account`;
CREATE TABLE `IA_user_account` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `admin_user` varchar(255) NOT NULL default '',
  `amount` decimal(10,2) NOT NULL default '0.00',
  `add_time` int(10) NOT NULL default '0',
  `paid_time` int(10) NOT NULL default '0',
  `admin_note` varchar(255) NOT NULL default '',
  `user_note` varchar(255) NOT NULL default '',
  `process_type` tinyint(1) NOT NULL default '0',
  `payment` varchar(90) NOT NULL default '',
  `is_paid` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`),
  KEY `is_paid` (`is_paid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_user_address`;
CREATE TABLE `IA_user_address` (
  `address_id` mediumint(8) unsigned NOT NULL auto_increment,
  `address_name` varchar(50) NOT NULL default '',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `consignee` varchar(60) NOT NULL default '',
  `email` varchar(60) NOT NULL default '',
  `country` smallint(5) NOT NULL default '0',
  `province` smallint(5) NOT NULL default '0',
  `city` smallint(5) NOT NULL default '0',
  `district` smallint(5) NOT NULL default '0',
  `address` varchar(120) NOT NULL default '',
  `zipcode` varchar(60) NOT NULL default '',
  `tel` varchar(60) NOT NULL default '',
  `mobile` varchar(60) NOT NULL default '',
  `sign_building` varchar(120) NOT NULL default '',
  `best_time` varchar(120) NOT NULL default '',
  PRIMARY KEY  (`address_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_user_bonus`;
CREATE TABLE `IA_user_bonus` (
  `bonus_id` mediumint(8) unsigned NOT NULL auto_increment,
  `bonus_type_id` tinyint(3) unsigned NOT NULL default '0',
  `bonus_sn` bigint(20) unsigned NOT NULL default '0',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `used_time` int(10) unsigned NOT NULL default '0',
  `order_id` mediumint(8) unsigned NOT NULL default '0',
  `emailed` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`bonus_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_user_rank`;
CREATE TABLE `IA_user_rank` (
  `rank_id` tinyint(3) unsigned NOT NULL auto_increment,
  `rank_name` varchar(30) NOT NULL default '',
  `min_points` int(10) unsigned NOT NULL default '0',
  `max_points` int(10) unsigned NOT NULL default '0',
  `discount` tinyint(3) unsigned NOT NULL default '0',
  `show_price` tinyint(1) unsigned NOT NULL default '1',
  `special_rank` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`rank_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `IA_user_rank` ( `rank_id`, `rank_name`, `min_points`, `max_points`, `discount`, `show_price`, `special_rank` ) VALUES  ('1', '注册用户', '0', '10000', '100', '1', '0');
DROP TABLE IF EXISTS `IA_users`;
CREATE TABLE `IA_users` (
  `user_id` mediumint(8) unsigned NOT NULL auto_increment,
  `email` varchar(60) NOT NULL default '',
  `user_name` varchar(60) NOT NULL default '',
  `password` varchar(32) NOT NULL default '',
  `question` varchar(255) NOT NULL default '',
  `answer` varchar(255) NOT NULL default '',
  `sex` tinyint(1) unsigned NOT NULL default '0',
  `birthday` date NOT NULL default '0000-00-00',
  `user_money` decimal(10,2) NOT NULL default '0.00',
  `frozen_money` decimal(10,2) NOT NULL default '0.00',
  `pay_points` int(10) unsigned NOT NULL default '0',
  `rank_points` int(10) unsigned NOT NULL default '0',
  `address_id` mediumint(8) unsigned NOT NULL default '0',
  `reg_time` int(10) unsigned NOT NULL default '0',
  `last_login` int(11) unsigned NOT NULL default '0',
  `last_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `last_ip` varchar(15) NOT NULL default '',
  `visit_count` smallint(5) unsigned NOT NULL default '0',
  `user_rank` tinyint(3) unsigned NOT NULL default '0',
  `is_special` tinyint(3) unsigned NOT NULL default '0',
  `salt` varchar(10) NOT NULL default '0',
  `parent_id` mediumint(9) NOT NULL default '0',
  `flag` tinyint(3) unsigned NOT NULL default '0',
  `alias` varchar(60) NOT NULL default '',
  `msn` varchar(60) NOT NULL default '',
  `qq` varchar(20) NOT NULL default '',
  `office_phone` varchar(20) NOT NULL default '',
  `home_phone` varchar(20) NOT NULL default '',
  `mobile_phone` varchar(20) NOT NULL default '',
  `is_validated` tinyint(3) unsigned NOT NULL default '0',
  `credit_line` decimal(10,2) unsigned NOT NULL default '0.00',
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `email` (`email`),
  KEY `parent_id` (`parent_id`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_virtual_card`;
CREATE TABLE `IA_virtual_card` (
  `card_id` mediumint(8) NOT NULL auto_increment,
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `card_sn` varchar(60) NOT NULL default '',
  `card_password` varchar(60) NOT NULL default '',
  `add_date` int(11) NOT NULL default '0',
  `end_date` int(11) NOT NULL default '0',
  `is_saled` tinyint(1) NOT NULL default '0',
  `order_sn` varchar(20) NOT NULL default '',
  `crc32` int(11) NOT NULL default '0',
  PRIMARY KEY  (`card_id`),
  KEY `goods_id` (`goods_id`),
  KEY `car_sn` (`card_sn`),
  KEY `is_saled` (`is_saled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_vote`;
CREATE TABLE `IA_vote` (
  `vote_id` smallint(5) unsigned NOT NULL auto_increment,
  `vote_name` varchar(250) NOT NULL default '',
  `start_time` int(11) unsigned NOT NULL default '0',
  `end_time` int(11) unsigned NOT NULL default '0',
  `can_multi` tinyint(1) unsigned NOT NULL default '0',
  `vote_count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_vote_log`;
CREATE TABLE `IA_vote_log` (
  `log_id` mediumint(8) unsigned NOT NULL auto_increment,
  `vote_id` smallint(5) unsigned NOT NULL default '0',
  `ip_address` varchar(15) NOT NULL default '',
  `vote_time` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`log_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_vote_option`;
CREATE TABLE `IA_vote_option` (
  `option_id` smallint(5) unsigned NOT NULL auto_increment,
  `vote_id` smallint(5) unsigned NOT NULL default '0',
  `option_name` varchar(250) NOT NULL default '',
  `option_count` int(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`option_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `IA_wholesale`;
CREATE TABLE `IA_wholesale` (
  `act_id` mediumint(8) unsigned NOT NULL auto_increment,
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_name` varchar(255) NOT NULL default '',
  `rank_ids` varchar(255) NOT NULL default '',
  `prices` text NOT NULL,
  `enabled` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`act_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
-- END ecshop v2.x SQL Dump Program 