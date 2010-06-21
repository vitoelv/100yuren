
-- 
-- `ecs_brand`
-- 

INSERT INTO `ecs_brand` (`brand_id`, `brand_name`, `brand_logo`, `brand_desc`, `site_url`, `sort_order`) VALUES 
(1, '摩托罗拉', '', '摩托罗拉分Ｇ网手机&nbsp;&nbsp;Ｃ网手机&nbsp;', 'http://www.motorola.com.cn', 0),
(2, '诺基亚', '', '诺基亚分Ｇ网手机&nbsp;&nbsp;Ｃ网手机&nbsp;', 'http://www.nokia.com.cn/', 0),
(3, '三星', '', '', 'http://www.samsung.com.cn/', 0),
(4, '索尼爱立信', '', '', 'http://www.sonyericsson.com.cn/', 0),
(5, 'disnus', '', '', 'http://www.de68.com.cn/', 0),
(6, '飞利浦', '', '', 'http://www.philips.com.cn/', 0),
(7, 'LG', '', '', 'http://cn.wowlg.com/', 0);

-- 
-- `ecs_article`
-- 
INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`) VALUES (NULL, 4, 'ECSHOP v2.5.0 正式发布', '<h2>ECSHOP 通用电子商务平台</h2>\r\n----------------------------------------------------------------------<br />\r\nECSHOP是一款开源免费的通用电子商务平台构建软件，使用她您可以非常方便的开一个网上商店，在网上开展自己的生意。ECSHOP有如下特点：<br />\r\n<br />\r\n1、强大的模版机制<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 做网站的，做页面是一个头疼的问题。如果每次的小改动都要去改页面模版代码再上传的话，作为商家的你，一定不厌其烦。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ECSHOP 结合最流行的 Adobe Dreamweaver 软件实现了一套模版机制，让您改动模版不再需要上传，而是在后台稍稍动动手设置一下就可以了。<br />\r\n<br />\r\n2、完全开放的插件机制<br />\r\n&nbsp; <br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 支付、配送，这个是商家每天都要面对的功能，如果您现在使用的程序不够开放，那么在您想快速变更所用的支付、配送体系的时候，很可能会拖了后腿。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们根据自己的长期运营和开发经验，总结出了一套开放、简洁的插件体系，以支持不断变化的支付、配送体系的变更。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 届时，您会发现，这块事情将会解除您的忧愁，可以把精力集中在更重要的事情上。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们同时也以插件形式支持会员整合。迁入、迁出，不再烦恼。<br />\r\n<br />\r\n3、功能的 AJAX 化<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 当您发现编辑一个商品，需要敲打键盘、挪动鼠标几十下的时候，您是否想到了以后大批量修改的是一个非常恐怖的工作呢？<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ECSHOP 使用目前流行的 AJAX 技术，为您实现简洁修改，奠定了基础。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 同时在更多方面以减轻用户的劳动，提供工作的效率为宗旨，完整的实现了相关功能的 AJAX 化，由于是在底层完全支持，所以也为以后的扩展打下了基础。<br />\r\n<br />\r\n4、促销功能<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 当您把商品一一上架、却发现没有用户来关心，同样是一个头疼的问题。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 那么我们目前在提供了积分、红包、赠品等常规促销手段，更根据自身的电商经验，独家加入了更容易吸引人气的夺宝奇兵促销功能。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 把您每月做广告的费用拿出来一点点，变成您所卖的商品，通过夺宝奇兵活动吸引人气、回馈用户，我相信是一个比简单的广而告之更有效的办法。<br />\r\n<br />\r\n5、高效率的代码和执行性能<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 当你浏览自己的网站，发现速度很慢，是不是恨的要全部改成静态页面呢？<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 其实不然，根据我们长时间的开发经验，动态、静态页面在不同的用途下各擅胜场，但是在有很多个性化功能的前提下，动态的页面要比纯静态的页面好处多多，如果动态页面的 URL 静态化可以通过 REWRITE 方式实现，那么剩下就是一个效率问题。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们也认为，动态页面的瓶颈99％在数据库上，我们通过以往自己的数据库架构设计以及优化经验为基础，设计了目前的 ECSHOP 数据库结构，并通过缓存机制，实现目前的高效访问。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在不考虑网速的情况下，与纯静态页面相比，您不会感觉到丝毫的差别。我们也会在以后的开发设计中，让目前的架构更加完善、更加高效。<br />\r\n<br />\r\n6、常规功能的更完善实现<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 有些软件的功能虽然不错，但是因为对于用户不够友善，也会让人敬而远之，也往往把客户拒之门外，我们希望能够在常规的功能上，也能为您和您的客户提供更好的用户体验。<br />\r\n<br />\r\n7、代码的开源和免费的发展策略<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们认为开源是一个趋势，同时也是一个商业模式。我们也同样认为免费是一个趋势，同时也是一个商业模式。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们不是说我们不想收费，而是希望在用户能够在提高自身收入和价值的同时，能够让我们之间形成一个双赢的结局。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们认为的收费应该是以周边服务收费，而不是卖产品本身，所以在这之前我们与广泛的业界同仁进行过充分的交流，对自身是否可以实现这个想法也有一定的考证。<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为了您更好的使用ECSHOP，请阅读docs目录下面的相应文档，如果这些文档无法满足您的需要，您可以访问我们的网站获得支持：<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. 官方网站：<a href="http://www.ecshop.com">http://www.ecshop.com</a><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. 讨论社区：<a href="http://bbs.ecshop.com">http://bbs.ecshop.com</a><br />\r\n&nbsp;&nbsp;&nbsp; <br />\r\n非常感谢您在众多的软件中选择了ECShop。相信她会帮助您的事业蒸蒸日上。<br />\r\n<br />\r\n<div align="right">北京康盛创想（北京）科技有限公司</div>', '', '', '', 0, 1, 1157776924);

-- 
-- 导出表中的数据 `ecs_article_cat`
-- 

INSERT INTO `ecs_article_cat` (`cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`) VALUES (4, '站内快讯', 1, '', '', 0, 0);

-- 
-- `ecs_category`
-- 
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`) VALUES (1, '手机', '手机', '', 0, 0, '', '', 0),
(2, '欧美手机', '欧美', '欧美手机包涵摩托罗拉、诺基亚、阿尔卡特、西门子、爱立信、飞利浦、索尼爱立信、Palm、惠普、迪士尼。', 1, 0, '', '种', 0),
(3, '日韩手机', '日韩', '日韩手机包括三星 索尼 NEC 松下 三菱 三洋 普天东芝 \r\n京瓷 LG 泛泰 唯开 SK 夏普 \r\n', 1, 0, '', '台', 0);

-- 
-- `ecs_goods`
-- 

INSERT INTO `ecs_goods`
(`goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`) VALUES 
(11, 2, 'ECS00200005', '迪士尼经典米奇', '+', 0, 5, '', 15, '0.088', '3216.00', '2680.00', '0.00', 0, 0, 5, '', '', '', 'images/200609/0416.jpg', 'images/200609/15.jpg', '', 1, '', 1, 1, 2680, 1157423803, 0, 0, 1, 1, 0, 0, 0, 0, 1, '', 0),
(3, 2, 'ECS00200003', 'A1200', '+', 0, 1, '', 10, '0.122', '4776.00', '3980.00', '0.00', 0, 0, 5, 'a1200', '', '<span class="title_txt_pi_none">以独到的视界，洞悉瞬息变化的世界，以灵犀的观点，阐释时尚商务的真谛，&ldquo;明&rdquo;尚品PDA - 新视界，新境界。<br />\r\n</span>', 'images/200609/78277.jpg', 'images/200609/84320.jpg', '', 1, '', 1, 1, 3980, 1157364453, 0, 0, 0, 1, 1, 0, 0, 0, 4, '', 0),
(4, 2, 'ECS00200004', ' E680g', '+', 0, 1, '', 1, '0.000', '3057.60', '2548.00', '0.00', 0, 0, 1, '', '', '<span class="title_txt_pi_none">用手机给对手一记重击！没错，此时你是《传奇世界》中的主角，主宰着联机开战的权力，地铁、马路、公园&hellip;&hellip;随时变成你的战场，因为你手中的MOTO 游戏手机&mdash;&mdash;E680g支持下载超人气网络游戏《传奇世界》、《梦幻国度》手机版△,以及多款精彩单机游戏！</span>', 'images/200609/15.jpg', 'images/200609/1781.jpg', '', 1, '', 1, 1, 2548, 1157419528, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0),
(10, 3, 'ECS00300010', 'P990c', '+', 2, 4, '', 1, '0.000', '4440.00', '3700.00', '0.00', 0, 0, 1, '', '', '', 'images/200609/3162.jpg', 'images/200609/3884.jpg', '', 1, '', 1, 1, 3700, 1157423596, 0, 0, 1, 1, 0, 0, 0, 0, 1, '', 0),
(6, 3, 'ECS00300006', 'SGH-D908', '+', 0, 3, '', 1, '0.000', '4056.00', '3380.00', '0.00', 0, 0, 1, '', '', '', 'images/200609/3992.jpg', 'images/200609/45208.jpg', '', 1, '', 1, 1, 3380, 1157420384, 0, 0, 0, 0, 0, 0, 0, 0, 4, '', 0),
(9, 3, 'ECS00300009', 'W950c', '+', 0, 4, '', 1, '0.000', '3600.00', '3000.00', '2900.00', 2006, 2006, 1, '', '', '', 'images/200609/63186.jpg', 'images/200609/71269.jpg', '', 1, '', 1, 1, 3000, 1157423478, 0, 0, 0, 0, 0, 1, 0, 0, 1, '', 0),
(8, 3, 'ECS00300008', 'SCH-F399', '+', 0, 3, '', 10, '0.080', '3108.00', '2590.00', '0.00', 0, 0, 5, 'SCH-F399,CDMA', '黑色, 锂电池,旅行充电器', '', 'images/200609/44107.jpg', 'images/200609/522.jpg', '', 1, '', 1, 1, 2590, 1157421555, 0, 0, 0, 1, 0, 0, 0, 0, 4, '', 0),
(12, 2, 'ECS00200012', 'N93', '+', 0, 2, '', 1, '0.000', '9456.00', '7880.00', '0.00', 0, 0, 1, '', '', '', 'images/200609/33106.jpg', 'images/200609/39182.jpg', '', 1, '', 1, 1, 7880, 1157424092, 0, 0, 0, 1, 0, 0, 0, 0, 1, '', 0),
(13, 2, 'ECS00200013', 'N70', '+', 0, 2, '', 1, '0.000', '4056.00', '3380.00', '0.00', 0, 0, 1, '', '', '', 'images/200609/41129.jpg', 'images/200609/48229.jpg', '', 1, '', 1, 1, 3380, 1157424188, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0),
(14, 2, 'ECS00200014', '3250', '+', 0, 2, '', 1, '0.000', '3456.00', '2880.00', '0.00', 0, 0, 1, '', '', '', 'images/200609/41192.jpg', 'images/200609/47169.jpg', '', 1, '', 1, 1, 2880, 1157424283, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0),
(15, 2, 'ECS00200015', 'S900', '+', 0, 6, '', 1, '0.000', '3216.00', '2680.00', '0.00', 0, 0, 1, '', '', '', 'images/200609/2155.jpg', 'images/200609/2789.jpg', '', 1, '', 1, 1, 2680, 1157424466, 0, 0, 1, 0, 0, 0, 0, 0, 1, '', 0),
(16, 3, 'ECS00300011', 'LGKG99', '+', 1, 7, '', 1, '0.000', '4416.00', '3680.00', '0.00', 0, 0, 1, '', '', '', 'images/200609/4396.jpg', 'images/200609/49145.jpg', '', 1, '', 1, 1, 3680, 1157424624, 0, 0, 0, 1, 0, 0, 0, 0, 1, '', 0),
(17, 3, 'ECS00300017', 'KG119', '+', 0, 7, '', 1, '0.000', '6799.20', '5666.00', '0.00', 0, 0, 1, '', '', '', 'images/200609/22100.jpg', 'images/200609/2896.jpg', '', 1, '', 1, 1, 5666, 1157424686, 0, 0, 0, 1, 0, 0, 0, 0, 1, '', 0);

-- 
-- `ecs_goods_attr`
-- 

INSERT INTO `ecs_goods_attr` (`goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price`) VALUES (1, 6, 57, 'GSM/850/900/1800/1900MHz,支持GPRS/EDGE', '0'),
(2, 8, 57, 'CDMA', '0'),
(3, 8, 58, ' 1X', '0'),
(4, 8, 60, '翻盖', '0'),
(5, 8, 61, '65536色TFT显示屛分辨率为128×160', '0'),
(6, 8, 62, '65536色STN显示屛分辨率为96×96', '0'),
(7, 8, 63, '65536色', '0'),
(8, 8, 65, '88', '0'),
(9, 8, 66, '45', '0'),
(10, 8, 67, '19.5', '0'),
(11, 3, 57, 'GSM', '0'),
(12, 3, 58, 'GSM/850/900/1800/1900MHz,支持GPRS', '0'),
(13, 3, 60, '翻盖', '0'),
(14, 3, 61, '262144色', '0'),
(15, 3, 63, '240×320', '0'),
(16, 3, 65, '95.7', '0'),
(17, 3, 66, '51.7', '0'),
(18, 3, 67, '21.5', '0'),
(19, 3, 68, 'TFT', '0'),
(20, 3, 69, '8MB', '0'),
(21, 3, 70, 'Linux', '0'),
(22, 3, 71, '270－420分钟', '0'),
(23, 3, 72, '160－200小时', '0'),
(24, 3, 73, '锂电池,旅行充电器,耳机,', '0'),
(25, 3, 74, 'WAP 2.0', '0'),
(26, 3, 77, '随机软件光盘,数据传输线   (手写笔，手机套，腰夹，两张CD光盘，128M闪存卡)', '0'),
(27, 3, 78, '40和弦', '0');

-- 
-- `ecs_goods_gallery`
-- 

INSERT INTO `ecs_goods_gallery` (`img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`) VALUES (2, 1, 'images/200609/2285.jpg', '', 'images/200609/21100.jpg'),
(3, 2, '', '', ''),
(4, 3, 'images/200609/82358.jpg', '', 'images/200609/82214.jpg'),
(5, 4, 'images/200609/37179.jpg', '', 'images/200609/37176.jpg'),
(6, 5, 'images/200609/66292.jpg', '', 'images/200609/66209.jpg'),
(7, 6, 'images/200609/39128.gif', '', 'images/200609/3992.jpg'),
(8, 7, 'images/200609/91200.jpg', '', 'images/200609/922.jpg'),
(9, 8, 'images/200609/45218.gif', '', 'images/200609/44107.jpg'),
(10, 9, 'images/200609/65307.gif', '', 'images/200609/63186.jpg'),
(11, 10, 'images/200609/1538.gif', '', 'images/200609/1449.jpg'),
(12, 11, 'images/200609/0515.gif', '', 'images/200609/0416.jpg'),
(13, 12, 'images/200609/34146.gif', '', 'images/200609/33106.jpg'),
(14, 13, 'images/200609/4298.gif', '', 'images/200609/41129.jpg'),
(15, 14, 'images/200609/41139.gif', '', 'images/200609/41192.jpg'),
(16, 15, 'images/200609/2179.gif', '', 'images/200609/2155.jpg'),
(17, 16, 'images/200609/43161.gif', '', 'images/200609/4396.jpg'),
(18, 17, 'images/200609/2244.gif', '', 'images/200609/22100.jpg');

-- 
-- `ecs_payment`
-- 

INSERT INTO `ecs_payment` (`pay_id`, `pay_code`, `pay_name`, `pay_desc`, `pay_order`, `pay_config`, `enabled`, `is_cod`) VALUES (1, 'cod', '货到付款', '一手交钱、一手交货', 0, 'a:0:{}', 1, 1),
(2, 'post', '邮局汇款', '收件人：×××；地址：×××；邮编：×××', 0, 'a:0:{}', 1, 0),
(3, 'bank', '银行汇款/转帐', '收款银行：×××；收款人：×××；收款帐户：×××', 0, 'a:0:{}', 1, 0);

-- 
-- `ecs_shipping`
-- 

INSERT INTO `ecs_shipping` (`shipping_id`, `shipping_code`, `shipping_name`, `shipping_desc`, `support_cod`, `enabled`) VALUES (1, 'flat', '市内快递', '固定运费的配送方式内容', 1, 1),
(2, 'post_express', '邮政快递包裹', '邮政快递包裹的描述内容。', 0, 1),
(3, 'cac', '上门取货', '买家自己到网店实体店取货', 1, 1),
(4, 'ems', 'EMS 国内邮政特快专递', 'EMS 国内邮政特快专递描述内容', 0, 1);

INSERT INTO `ecs_area_region` (`shipping_area_id`, `region_id`) VALUES (1, 1),
(2, 1),
(3, 1),
(4, 1);

-- 
-- `ecs_shipping_area`
-- 

INSERT INTO `ecs_shipping_area` (`shipping_area_id`, `shipping_area_name`, `shipping_id`, `configure`) VALUES (1, '北京四环内', 1, 'a:2:{i:0;a:2:{s:4:"name";s:8:"base_fee";s:5:"value";s:2:"10";}i:1;a:2:{s:4:"name";s:10:"free_money";s:5:"value";s:1:"0";}}'),
(2, '所有地区', 2, 'a:4:{i:0;a:2:{s:4:"name";s:8:"base_fee";s:5:"value";s:1:"5";}i:1;a:2:{s:4:"name";s:9:"step_fee1";s:5:"value";s:1:"2";}i:2;a:2:{s:4:"name";s:9:"step_fee2";s:5:"value";s:1:"1";}i:3;a:2:{s:4:"name";s:10:"free_money";s:5:"value";s:1:"0";}}'),
(3, '北京', 3, 'a:1:{i:0;a:2:{s:4:"name";s:10:"free_money";s:5:"value";s:2:"15";}}'),
(4, '中国', 4, 'a:3:{i:0;a:2:{s:4:"name";s:8:"base_fee";s:5:"value";s:2:"20";}i:1;a:2:{s:4:"name";s:8:"step_fee";s:5:"value";s:2:"15";}i:2;a:2:{s:4:"name";s:10:"free_money";s:5:"value";s:1:"0";}}');
