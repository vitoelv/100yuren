
--
-- `ecs_brand`
--

INSERT INTO `ecs_brand` (`brand_id`, `brand_name`, `brand_logo`, `brand_desc`, `site_url`, `sort_order`) VALUES (1, '摩托羅拉', '', '摩托羅拉分Ｇ網手機&nbsp;&nbsp;Ｃ網手機&nbsp;', 'http://www.motorola.com.cn', 0),
(2, '諾基亞', '', '諾基亞分Ｇ網手機&nbsp;&nbsp;Ｃ網手機&nbsp;', 'http://www.nokia.com.cn/', 0),
(3, '三星', '', '', 'http://www.samsung.com.cn/', 0),
(4, '索尼愛立信', '', '', 'http://www.sonyericsson.com.cn/', 0),
(5, 'disnus', '', '', 'http://www.de68.com.cn/', 0),
(6, '飛利浦', '', '', 'http://www.philips.com.cn/', 0),
(7, 'LG', '', '', 'http://cn.wowlg.com/', 0);

--
-- `ecs_article`
--
INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`) VALUES (NULL, 4, 'ECSHOP v2.5.0 正式發佈', '<h2>ECSHOP 通用電子商務平台</h2>\r\n----------------------------------------------------------------------<br />\r\nECSHOP是一款開源免費的通用電子商務平台構建軟件，使用她您可以非常方便的開一個網上商店，在網上開展自己的生意。ECSHOP有如下特點：<br />\r\n<br />\r\n1、強大的模版機制<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 做網站的，做頁面是一個頭疼的問題。如果每次的小改動都要去改頁面模版代碼再上傳的話，作為商家的你，一定不厭其煩。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ECSHOP 結合最流行的 Adobe Dreamweaver 軟件實現了一套模版機制，讓您改動模版不再需要上傳，而是在後台稍稍動動手設置一下就可以了。<br />\r\n<br />\r\n2、完全開放的插件機制<br />\r\n&nbsp; <br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 支付、配送，這個是商家每天都要面對的功能，如果您現在使用的程序不夠開放，那麼在您想快速變更所用的支付、配送體系的時候，很可能會拖了後腿。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我們根據自己的長期運營和開發經驗，總結出了一套開放、簡潔的插件體系，以支持不斷變化的支付、配送體系的變更。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 屆時，您會發現，這塊事情將會解除您的憂愁，可以把精力集中在更重要的事情上。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我們同時也以插件形式支持會員整合。遷入、遷出，不再煩惱。<br />\r\n<br />\r\n3、功能的 AJAX 化<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 當您發現編輯一個商品，需要敲打鍵盤、挪動鼠標幾十下的時候，您是否想到了以後大批量修改的是一個非常恐怖的工作呢？<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ECSHOP 使用目前流行的 AJAX 技術，為您實現簡潔修改，奠定了基礎。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 同時在更多方面以減輕用戶的勞動，提供工作的效率為宗旨，完整的實現了相關功能的 AJAX 化，由於是在底層完全支持，所以也為以後的擴展打下了基礎。<br />\r\n<br />\r\n4、促銷功能<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 當您把商品一一上架、卻發現沒有用戶來關心，同樣是一個頭疼的問題。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 那麼我們目前在提供了積分、紅包、贈品等常規促銷手段，更根據自身的電商經驗，獨家加入了更容易吸引人氣的奪寶奇兵促銷功能。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 把您每月做廣告的費用拿出來一點點，變成您所賣的商品，通過奪寶奇兵活動吸引人氣、回饋用戶，我相信是一個比簡單的廣而告之更有效的辦法。<br />\r\n<br />\r\n5、高效率的代碼和執行性能<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 當你瀏覽自己的網站，發現速度很慢，是不是恨的要全部改成靜態頁面呢？<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 其實不然，根據我們長時間的開發經驗，動態、靜態頁面在不同的用途下各擅勝場，但是在有很多個性化功能的前提下，動態的頁面要比純靜態的頁面好處多多，如果動態頁面的 URL 靜態化可以通過 REWRITE 方式實現，那麼剩下就是一個效率問題。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我們也認為，動態頁面的瓶頸99％在數據庫上，我們通過以往自己的數據庫架構設計以及優化經驗為基礎，設計了目前的 ECSHOP 數據庫結構，並通過緩存機制，實現目前的高效訪問。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在不考慮網速的情況下，與純靜態頁面相比，您不會感覺到絲毫的差別。我們也會在以後的開發設計中，讓目前的架構更加完善、更加高效。<br />\r\n<br />\r\n6、常規功能的更完善實現<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 有些軟件的功能雖然不錯，但是因為對於用戶不夠友善，也會讓人敬而遠之，也往往把客戶拒之門外，我們希望能夠在常規的功能上，也能為您和您的客戶提供更好的用戶體驗。<br />\r\n<br />\r\n7、代碼的開源和免費的發展策略<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我們認為開源是一個趨勢，同時也是一個商業模式。我們也同樣認為免費是一個趨勢，同時也是一個商業模式。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我們不是說我們不想收費，而是希望在用戶能夠在提高自身收入和價值的同時，能夠讓我們之間形成一個雙贏的結局。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我們認為的收費應該是以周邊服務收費，而不是賣產品本身，所以在這之前我們與廣泛的業界同仁進行過充分的交流，對自身是否可以實現這個想法也有一定的考證。<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;為了您更好的使用ECSHOP，請閱讀docs目錄下面的相應文檔，如果這些文檔無法滿足您的需要，您可以訪問我們的網站獲得支持：<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. 官方網站：<a href="http://www.ecshop.com">http://www.ecshop.com</a><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. 討論社區：<a href="http://bbs.ecshop.com">http://bbs.ecshop.com</a><br />\r\n&nbsp;&nbsp;&nbsp; <br />\r\n非常感謝您在眾多的軟件中選擇了ECShop。相信她會幫助您的事業蒸蒸日上。<br />\r\n<br />\r\n<div align="right">北京億商互動科技發展有限公司</div>', '', '', '', 0, 1, 1157776924);

--
-- 導出表中的數據 `ecs_article_cat`
--

INSERT INTO `ecs_article_cat` (`cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`) VALUES (4, '站內快訊', 1, '', '', 0, 0);

--
-- `ecs_category`
--
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`) VALUES (1, '手機', '手機', '', 0, 0, '', '', 1),
(2, '歐美手機', '歐美', '歐美手機包涵摩托羅拉、諾基亞、阿爾卡特、西門子、愛立信、飛利浦、索尼愛立信、Palm、惠普、迪士尼。', 1, 0, '', '種', 0),
(3, '日韓手機', '日韓', '日韓手機包括三星 索尼 NEC 松下 三菱 三洋 普天東芝 \r\n京瓷 LG 泛泰 唯開 SK 夏普 \r\n', 1, 0, '', '台', 0);

--
-- `ecs_goods`
--
INSERT INTO `ecs_goods`
(`goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`) VALUES
(11, 2, 'ECS00200005', '迪士尼經典米奇', '+', 0, 5, '', 15, '0.088', '3216.00', '2680.00', '0.00', 0, 0, 5, '', '', '', 'images/200609/0416.jpg', 'images/200609/15.jpg', '', 1, '', 1, 1, 2680, 1157423803, 0, 0, 1, 1, 0, 0, 0, 0, 1, '', 0),
(3, 2, 'ECS00200003', 'A1200', '+', 0, 1, '', 10, '0.122', '4776.00', '3980.00', '0.00', 0, 0, 5, 'a1200', '', '<span class="title_txt_pi_none">以獨到的視界，洞悉瞬息變化的世界，以靈犀的觀點，闡釋時尚商務的真諦，&ldquo;明&rdquo;尚品PDA - 新視界，新境界。<br />\r\n</span>', 'images/200609/78277.jpg', 'images/200609/84320.jpg', '', 1, '', 1, 1, 3980, 1157364453, 0, 0, 0, 1, 1, 0, 0, 0, 4,'', 0),
(4, 2, 'ECS00200004', ' E680g', '+', 0, 1, '', 1, '0.000', '3057.60', '2548.00', '0.00', 0, 0, 1, '', '', '<span class="title_txt_pi_none">用手機給對手一記重擊！沒錯，此時你是《傳奇世界》中的主角，主宰著聯機開戰的權力，地鐵、馬路、公園&hellip;&hellip;隨時變成你的戰場，因為你手中的MOTO 遊戲手機&mdash;&mdash;E680g支持下載超人氣網絡遊戲《傳奇世界》、《夢幻國度》手機版△,以及多款精彩單機遊戲！</span>', 'images/200609/15.jpg', 'images/200609/1781.jpg', '', 1, '', 1, 1, 2548, 1157419528, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0),
(10, 3, 'ECS00300010', 'P990c', '+', 2, 4, '', 1, '0.000', '4440.00', '3700.00', '0.00', 0, 0, 1, '', '', '', 'images/200609/3162.jpg', 'images/200609/3884.jpg', '', 1, '', 1, 1, 3700, 1157423596, 0, 0, 1, 1, 0, 0, 0, 0, 1, '', 0),
(6, 3, 'ECS00300006', 'SGH-D908', '+', 0, 3, '', 1, '0.000', '4056.00', '3380.00', '0.00', 0, 0, 1, '', '', '', 'images/200609/3992.jpg', 'images/200609/45208.jpg', '', 1, '', 1, 1, 3380, 1157420384, 0, 0, 0, 0, 0, 0, 0, 0, 4, '', 0),
(9, 3, 'ECS00300009', 'W950c', '+', 0, 4, '', 1, '0.000', '3600.00', '3000.00', '2900.00', 2006, 2006, 1, '', '', '', 'images/200609/63186.jpg', 'images/200609/71269.jpg', '', 1, '', 1, 1, 3000, 1157423478, 0, 0, 0, 0, 0, 1, 0, 0, 1, '', 0),
(8, 3, 'ECS00300008', 'SCH-F399', '+', 0, 3, '', 10, '0.080', '3108.00', '2590.00', '0.00', 0, 0, 5, 'SCH-F399,CDMA', '黑色, 鋰電池,旅行充電器', '', 'images/200609/44107.jpg', 'images/200609/522.jpg', '', 1, '', 1, 1, 2590, 1157421555, 0, 0, 0, 1, 0, 0, 0, 0, 4, '', 0),
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
(4, 8, 60, '翻蓋', '0'),
(5, 8, 61, '65536色TFT顯示屏分辨率為128×160', '0'),
(6, 8, 62, '65536色STN顯示屏分辨率為96×96', '0'),
(7, 8, 63, '65536色', '0'),
(8, 8, 65, '88', '0'),
(9, 8, 66, '45', '0'),
(10, 8, 67, '19.5', '0'),
(11, 3, 57, 'GSM', '0'),
(12, 3, 58, 'GSM/850/900/1800/1900MHz,支持GPRS', '0'),
(13, 3, 60, '翻蓋', '0'),
(14, 3, 61, '262144色', '0'),
(15, 3, 63, '240×320', '0'),
(16, 3, 65, '95.7', '0'),
(17, 3, 66, '51.7', '0'),
(18, 3, 67, '21.5', '0'),
(19, 3, 68, 'TFT', '0'),
(20, 3, 69, '8MB', '0'),
(21, 3, 70, 'Linux', '0'),
(22, 3, 71, '270－420分鐘', '0'),
(23, 3, 72, '160－200小時', '0'),
(24, 3, 73, '鋰電池,旅行充電器,耳機,', '0'),
(25, 3, 74, 'WAP 2.0', '0'),
(26, 3, 77, '隨機軟件光盤,數據傳輸線   (手寫筆，手機套，腰夾，兩張CD光盤，128M閃存卡)', '0'),
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

INSERT INTO `ecs_payment` (`pay_id`, `pay_code`, `pay_name`, `pay_desc`, `pay_order`, `pay_config`, `enabled`, `is_cod`) VALUES (1, 'cod', '貨到付款', '一手交錢、一手交貨', 0, 'a:0:{}', 1, 1),
(2, 'post', '郵局匯款', '收件人：×××；地址：×××；郵編：×××', 0, 'a:0:{}', 1, 0),
(3, 'bank', '銀行匯款/轉帳', '收款銀行：×××；收款人：×××；收款帳戶：×××', 0, 'a:0:{}', 1, 0);

--
-- `ecs_shipping`
--

INSERT INTO `ecs_shipping` (`shipping_id`, `shipping_code`, `shipping_name`, `shipping_desc`, `support_cod`, `enabled`) VALUES (1, 'flat', '市內快遞', '固定運費的配送方式內容', 1, 1),
(2, 'post_express', '郵政快遞包裹', '郵政快遞包裹的描述內容。', 0, 1),
(3, 'cac', '上門取貨', '買家自己到網店實體店取貨', 1, 1),
(4, 'ems', 'EMS 國內郵政特快專遞', 'EMS 國內郵政特快專遞描述內容', 0, 1);

INSERT INTO `ecs_area_region` (`shipping_area_id`, `region_id`) VALUES (1, 1),
(2, 1),
(3, 1),
(4, 1);

--
-- `ecs_shipping_area`
--

INSERT INTO `ecs_shipping_area` (`shipping_area_id`, `shipping_area_name`, `shipping_id`, `configure`) VALUES (1, '北京四環內', 1, 'a:2:{i:0;a:2:{s:4:"name";s:8:"base_fee";s:5:"value";s:2:"10";}i:1;a:2:{s:4:"name";s:10:"free_money";s:5:"value";s:1:"0";}}'),
(2, '所有地區', 2, 'a:4:{i:0;a:2:{s:4:"name";s:8:"base_fee";s:5:"value";s:1:"5";}i:1;a:2:{s:4:"name";s:9:"step_fee1";s:5:"value";s:1:"2";}i:2;a:2:{s:4:"name";s:9:"step_fee2";s:5:"value";s:1:"1";}i:3;a:2:{s:4:"name";s:10:"free_money";s:5:"value";s:1:"0";}}'),
(3, '北京', 3, 'a:1:{i:0;a:2:{s:4:"name";s:10:"free_money";s:5:"value";s:2:"15";}}'),
(4, '中國', 4, 'a:3:{i:0;a:2:{s:4:"name";s:8:"base_fee";s:5:"value";s:2:"20";}i:1;a:2:{s:4:"name";s:8:"step_fee";s:5:"value";s:2:"15";}i:2;a:2:{s:4:"name";s:10:"free_money";s:5:"value";s:1:"0";}}');
