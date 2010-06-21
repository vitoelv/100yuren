<?php

/**
 * ECSHOP 商品大量上傳、修改語言檔案
 * ============================================================================
 * 版權所有 (C) 2005-2006 北京億商互動科技發展有限公司，並保留所有權利。
 * 網站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 這是一個免費開源的軟件；這意味著您可以在不用於商業目的的前提下對程序代碼
 * 進行修改、使用和再發佈。
 * ============================================================================
 * $Author: refly $
 * $Date: 2007-11-30 23:40:25 +0800 (星期五, 30 十一月 2007) $
 * $Id: goods_batch.php 13793 2007-11-30 15:40:25Z refly $
 */

$_LANG['select_method'] = '選擇商品的方式：';
$_LANG['by_cat'] = '根據商品分類、品牌';
$_LANG['by_sn'] = '根據商品貨號';
$_LANG['select_cat'] = '選擇商品分類：';
$_LANG['select_brand'] = '選擇商品品牌：';
$_LANG['goods_list'] = '商品列表：';
$_LANG['src_list'] = '待選列表：';
$_LANG['dest_list'] = '已選取列表：';
$_LANG['input_sn'] = '輸入商品貨號：<br />（每行一個）';
$_LANG['edit_method'] = '編輯方式：';
$_LANG['edit_each'] = '逐一編輯';
$_LANG['edit_all'] = '大量編輯';
$_LANG['go_edit'] = '進入編輯';

$_LANG['notice_edit'] = '會員價格為-1表示會員價格將根據會員等級折扣比例計算';

$_LANG['goods_class'] = '商品類別';
$_LANG['g_class'][G_REAL] = '實體商品';
$_LANG['g_class'][G_CARD] = '虛擬卡';


$_LANG['goods_name'] = '商品名稱';
$_LANG['market_price'] = '市場價格';
$_LANG['shop_price'] = '本店價格';
$_LANG['integral'] = '積點購買';
$_LANG['give_integral'] = '贈送積點';
$_LANG['goods_number'] = '庫存';
$_LANG['brand'] = '品牌';

$_LANG['batch_edit_ok'] = '大量修改成功';

$_LANG['goods_cat'] = '所屬分類：';
$_LANG['csv_file'] = '上傳大量csv檔案：';
$_LANG['notice_file'] = '（CSV檔案中一次上傳商品數量最好不要超過1000，CSV檔案大小最好不要超過500K.）';
$_LANG['file_charset'] = '檔案編碼：';
$_LANG['download_file'] = '下載大量CSV檔案（%s）';
$_LANG['use_help'] = '使用說明：' .
        '<ol>' .
          '<li>根據使用習慣，下載對應語言的csv檔案，例如中國內地用戶下載簡體中文語言的檔案，港台用戶下載繁體語言的檔案；</li>' .
          '<li>填寫csv檔案，可以使用excel或純文字編輯器打開csv檔案；<br />' .
              '碰到「是否精品」之類，填寫數字0或者1，0代表「否」，1代表「是」；<br />' .
              '商品圖片和商品縮圖請填寫包含路徑的圖片檔案名，其中路徑是相對於 [根目錄]/images/ 的路徑，例如圖片路徑為[根目錄]/images/200610/abc.jpg，只要填寫 200610/abc.jpg 即可；<br />' .
          '<li>將填寫的商品圖片和商品縮圖上傳到相應目錄，例如：[根目錄]/images/200610/；</li>' .
          '<li>選擇所上傳商品的分類以及檔案編碼，上傳csv檔案</li>' .
        '</ol>';

$_LANG['js_languages']['please_select_goods'] = '請您選擇商品';
$_LANG['js_languages']['please_input_sn'] = '請您輸入商品貨號';
$_LANG['js_languages']['goods_cat_not_leaf'] = '請選擇底層分類';
$_LANG['js_languages']['please_select_cat'] = '請您選擇所屬分類';
$_LANG['js_languages']['please_upload_file'] = '請您上傳大量csv檔案';

// 大量上傳商品的字段
$_LANG['upload_goods']['goods_name'] = '商品名稱';
$_LANG['upload_goods']['goods_sn'] = '商品貨號';
$_LANG['upload_goods']['brand_name'] = '商品品牌';   // 需要轉換成brand_id
$_LANG['upload_goods']['market_price'] = '市場售價';
$_LANG['upload_goods']['shop_price'] = '本店售價';
$_LANG['upload_goods']['integral'] = '積點購買額度';
$_LANG['upload_goods']['original_img'] = '商品原始圖';
$_LANG['upload_goods']['goods_img'] = '商品圖片';
$_LANG['upload_goods']['goods_thumb'] = '商品縮圖';
$_LANG['upload_goods']['keywords'] = '商品關鍵詞';
$_LANG['upload_goods']['goods_brief'] = '簡單描述';
$_LANG['upload_goods']['goods_desc'] = '詳細描述';
$_LANG['upload_goods']['goods_weight'] = '商品重量（kg）';
$_LANG['upload_goods']['goods_number'] = '庫存數量';
$_LANG['upload_goods']['warn_number'] = '庫存警告數量';
$_LANG['upload_goods']['is_best'] = '是否精品';
$_LANG['upload_goods']['is_new'] = '是否新品';
$_LANG['upload_goods']['is_hot'] = '是否熱賣';
$_LANG['upload_goods']['is_on_sale'] = '是否上架';
$_LANG['upload_goods']['is_alone_sale'] = '能否作為普通商品銷售';
$_LANG['upload_goods']['is_real'] = '是否實體商品';

$_LANG['batch_upload_ok'] = '大量上傳成功';
$_LANG['goods_upload_confirm'] = '大量上傳確認';
?>