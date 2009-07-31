<?php
/**
 * ECSHOP 商品類型管理語言文件
 * ============================================================================
 * 版權所有 (C) 2005-2006 北京億商互動科技發展有限公司，並保留所有權利。
 * 網站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 這是一個免費開源的軟件；這意味著您可以在不用於商業目的的前提下對程序代碼
 * 進行修改、使用和再發佈。
 * ============================================================================
 * $Author: refly $
 * $Date: 2007-11-26 21:10:53 +0800 (星期一, 26 十一月 2007) $
 * $Id: attribute.php 13757 2007-11-26 13:10:53Z refly $
*/

/* 列表 */
$_LANG['by_goods_type'] = '按商品類型顯示：';
$_LANG['all_goods_type'] = '所有商品類型';

$_LANG['attr_id'] = '編號';
$_LANG['cat_id'] = '商品類型';
$_LANG['attr_name'] = '屬性名稱';
$_LANG['attr_input_type'] = '屬性值的輸入方式';
$_LANG['attr_values'] = '可選值列表';
$_LANG['attr_type'] = '購買商品時是否需要選擇該屬性的值';

$_LANG['value_attr_input_type'][ATTR_TEXT] = '手工輸入';
$_LANG['value_attr_input_type'][ATTR_OPTIONAL] = '從列表中選擇';
$_LANG['value_attr_input_type'][ATTR_TEXTAREA] = '多行文字方塊';

$_LANG['drop_confirm'] = '您確定要刪除該屬性嗎？';

/* 新增/編輯 */
$_LANG['label_attr_name'] = '屬性名稱：';
$_LANG['label_cat_id'] = '所屬商品類型：';
$_LANG['label_attr_index'] = '能否進行搜尋：';
$_LANG['label_is_linked'] = '相同屬性值的商品是否互相連結？';
$_LANG['no_index'] = '不需要搜尋';
$_LANG['keywords_index'] = '關鍵字搜尋';
$_LANG['range_index'] = '範圍搜尋';
$_LANG['note_attr_index'] = '不需要該屬性成為搜尋商品條件的情況下，請選擇不需要搜尋，需要該屬性進行關鍵字搜尋商品時選擇關鍵字搜尋，如果該屬性搜尋時希望是指定某個範圍時，選擇範圍搜尋。';
$_LANG['label_attr_input_type'] = '該屬性值的輸入方式：';
$_LANG['text'] = '手工輸入';
$_LANG['select'] = '從下面的列表中選擇（一行代表一個可選值）';
$_LANG['text_area'] = '多行文字方塊';
$_LANG['label_attr_values'] = '可選擇列表：';
$_LANG['label_attr_group'] = '屬性分組：';
$_LANG['label_attr_type'] = '屬性是否可選';
$_LANG['note_attr_type'] = '選擇「是」時，可以對商品該屬性設置多個值，同時還能對不同屬性值指定不同的價格加價，用戶購買商品時需要選定具體的屬性值。選擇「否」時，商品的該屬性值只能設置一個值，用戶只能查看該值。';

$_LANG['add_next'] = '新增下一個屬性';
$_LANG['back_list'] = '返回屬性列表';

$_LANG['add_ok'] = '新增屬性 [%s] 成功。';
$_LANG['edit_ok'] = '編輯屬性 [%s] 成功。';

/* 提示信息 */
$_LANG['name_exist'] = '該屬性名稱已存在，請您換一個名稱。';
$_LANG['drop_confirm'] = '您確定要刪除該屬性嗎？';
$_LANG['notice_drop_confirm'] = '已經有%s個商品使用該屬性，您確實要刪除該屬性嗎？';
$_LANG['name_not_null'] = '屬性名稱不能為空。';

$_LANG['no_select_arrt'] = '您沒有選擇需要刪除的商品屬性';
$_LANG['drop_ok'] = '成功刪除了 %d 個商品屬性';

$_LANG['js_languages']['name_not_null'] = '請您輸入屬性名稱。';
$_LANG['js_languages']['values_not_null'] = '請您輸入該屬性的可選值。';
$_LANG['js_languages']['cat_id_not_null'] = '請您選擇該屬性所屬的商品類型。';

?>