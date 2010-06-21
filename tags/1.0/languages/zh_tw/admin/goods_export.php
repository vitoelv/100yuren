<?php

/**
 * ECSHOP 商品匯出管理
 * ============================================================================
 * 版權所有 (C) 2005-2006 北京億商互動科技發展有限公司，並保留所有權利。
 * 網站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 這是一個免費開源的軟件；這意味著您可以在不用於商業目的的前提下對程序代碼
 * 進行修改、使用和再發佈。
 * ============================================================================
 * $Author: fenghl $
 * $Date: 2008-02-19 08:49:06 +0800 (星期二, 19 二月 2008) $
 * $Id: goods_export.php 14147 2008-02-19 00:49:06Z fenghl $
*/


$_LANG['export_taobao'] = '匯出淘寶助理支援資料格式';
$_LANG['good_cat'] = '商品分類';
$_LANG['select_please'] = '請選擇要匯出的分類';
$_LANG['select_charset'] = '請選擇要導出的編碼';

$_LANG['goods_class'] = '寶貝欄目ID';
$_LANG['tabobao_shipping'] = '淘寶配送';
$_LANG['post_express'] = '平郵價格';
$_LANG['express'] = '快遞價格';
$_LANG['ems'] = 'EMS價格';
$_LANG['notice_goods_class'] = '寶貝欄目ID為淘寶分類的ID，如若不確定，請填寫0';

$_LANG['post_express_not_null'] = '平郵價格必須大於0';
$_LANG['express_not_null'] = '快遞價格必須大於0';
$_LANG['ems_not_null'] = 'EMS價格必須大於0';


/* 淘寶 */
$_LANG['taobao']['goods_name'] = '寶貝名稱';
$_LANG['taobao']['goods_class'] = '寶貝類目';
$_LANG['taobao']['shop_class'] = '店舖類目';
$_LANG['taobao']['new_level'] = '新舊程度';
$_LANG['taobao']['province'] = '省';
$_LANG['taobao']['city'] = '城市';
$_LANG['taobao']['sell_type'] = '出售方式';
$_LANG['taobao']['shop_price'] = '寶貝價格';
$_LANG['taobao']['add_price'] = '加價幅度';
$_LANG['taobao']['goods_number'] = '寶貝數量';
$_LANG['taobao']['die_day'] = '有效期';
$_LANG['taobao']['load_type'] = '運費承擔';
$_LANG['taobao']['post_express'] = '平郵';
$_LANG['taobao']['ems'] = 'EMS';
$_LANG['taobao']['express'] = '快遞';
$_LANG['taobao']['pay_type'] = '付款方式';
$_LANG['taobao']['allow_alipay'] = '付款寶';
$_LANG['taobao']['invoice'] = '發票';
$_LANG['taobao']['repair'] = '保修';
$_LANG['taobao']['resend'] = '自動重發';
$_LANG['taobao']['is_store'] = '放入倉庫';
$_LANG['taobao']['window'] = '櫥窗推薦';
$_LANG['taobao']['add_time'] = '發佈時間';
$_LANG['taobao']['story'] = '心情故事';
$_LANG['taobao']['goods_desc'] = '寶貝描述';
$_LANG['taobao']['goods_img'] = '寶貝圖片';
$_LANG['taobao']['goods_attr'] = '寶貝屬性';
$_LANG['taobao']['group_buy'] = '團購價';
$_LANG['taobao']['group_buy_num'] = '最小團購件數';
$_LANG['taobao']['template'] = '郵費模版ID';
$_LANG['taobao']['discount'] = '會員打折';
$_LANG['taobao']['modify_time'] = '修改時間';
$_LANG['taobao']['upload_status'] = '上傳狀態';
$_LANG['taobao']['img_status'] = '圖片狀態';

$_LANG['export_paipai'] = '匯出到拍拍助理支援資料格式';
$_LANG['paipai']['id'] = 'id';
$_LANG['paipai']['tree_node_id'] = 'tree_node_id';
$_LANG['paipai']['old_tree_node_id'] = 'old_tree_node_id';
$_LANG['paipai']['title'] = 'title';
$_LANG['paipai']['id_in_web'] = 'id_in_web';
$_LANG['paipai']['auctionType'] = 'auctionType';
$_LANG['paipai']['category'] = 'category';
$_LANG['paipai']['shopCategoryId'] = 'shopCategoryId';
$_LANG['paipai']['pictURL'] = 'pictURL';
$_LANG['paipai']['quantity'] = 'quantity';
$_LANG['paipai']['duration'] = 'duration';
$_LANG['paipai']['startDate'] = 'startDate';
$_LANG['paipai']['stuffStatus'] = 'stuffStatus';
$_LANG['paipai']['price'] = 'price';
$_LANG['paipai']['increment'] = 'increment';
$_LANG['paipai']['prov'] = 'prov';
$_LANG['paipai']['city'] = 'city';
$_LANG['paipai']['shippingOption'] = 'shippingOption';
$_LANG['paipai']['ordinaryPostFee'] = 'ordinaryPostFee';
$_LANG['paipai']['fastPostFee'] = 'fastPostFee';
$_LANG['paipai']['paymentOption'] = 'paymentOption';
$_LANG['paipai']['haveInvoice'] = 'haveInvoice';
$_LANG['paipai']['haveGuarantee'] = 'haveGuarantee';
$_LANG['paipai']['secureTradeAgree'] = 'secureTradeAgree';
$_LANG['paipai']['autoRepost'] = 'autoRepost';
$_LANG['paipai']['shopWindow'] = 'shopWindow';
$_LANG['paipai']['failed_reason'] = 'failed_reason';
$_LANG['paipai']['pic_size'] = 'pic_size';
$_LANG['paipai']['pic_filename'] = 'pic_filename';
$_LANG['paipai']['pic'] = 'pic';
$_LANG['paipai']['description'] = 'description';
$_LANG['paipai']['story'] = 'story';
$_LANG['paipai']['putStore'] = 'putStore';
$_LANG['paipai']['pic_width'] = 'pic_width';
$_LANG['paipai']['pic_height'] = 'pic_height';
$_LANG['paipai']['skin'] = 'skin';
$_LANG['paipai']['prop'] = 'prop';
	
$_LANG['export_ecshop'] = '導出到ECShop數據格式';
$_LANG['ecshop']['goods_name'] = '商品名稱';
$_LANG['ecshop']['goods_sn'] = '商品貨號';
$_LANG['ecshop']['brand_name'] = '商品品牌';
$_LANG['ecshop']['market_price'] = '市場售價';
$_LANG['ecshop']['shop_price'] = '本店售價';
$_LANG['ecshop']['integral'] = '積分購買額度';
$_LANG['ecshop']['original_img'] = '商品原始圖';
$_LANG['ecshop']['goods_img'] = '商品圖片';
$_LANG['ecshop']['goods_thumb'] = '商品縮略圖';
$_LANG['ecshop']['keywords'] = '商品關鍵詞';
$_LANG['ecshop']['goods_brief'] = '簡單描述';
$_LANG['ecshop']['goods_desc'] = '詳細描述';
$_LANG['ecshop']['goods_weight'] = '商品重量（kg）';
$_LANG['ecshop']['goods_number'] = '庫存數量';
$_LANG['ecshop']['warn_number'] = '庫存警告數量';
$_LANG['ecshop']['is_best'] = '是否精品';
$_LANG['ecshop']['is_new'] = '是否新品';
$_LANG['ecshop']['is_hot'] = '是否熱銷';
$_LANG['ecshop']['is_on_sale'] = '是否上架';
$_LANG['ecshop']['is_alone_sale'] = '能否作為普通商品銷售';
$_LANG['ecshop']['is_real'] = '是否實體商品';


?>
