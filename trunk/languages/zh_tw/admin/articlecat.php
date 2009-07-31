<?php

/**
 * ECSHOP 文章分類管理程序語言文件
 * ============================================================================
 * 版權所有 (C) 2005-2006 北京億商互動科技發展有限公司，並保留所有權利。
 * 網站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 這是一個免費開源的軟件；這意味著您可以在不用於商業目的的前提下對程序代碼
 * 進行修改、使用和再發佈。
 * ============================================================================
 * $Author: refly $
 * $Date: 2007-11-26 21:10:53 +0800 (星期一, 26 十一月 2007) $
 * $Id: articlecat.php 13757 2007-11-26 13:10:53Z refly $
*/

$_LANG['cat_name']              = '文章分類名稱';
$_LANG['type']                  = '分類類型';
$_LANG['cat_keywords']          = '關鍵字';
$_LANG['type_name'][COMMON_CAT] = '普通分類';
$_LANG['type_name'][SYSTEM_CAT] = '系統分類';
$_LANG['type_name'][INFO_CAT]   = '商店資料';
$_LANG['type_name'][UPHELP_CAT] = '說明分類';
$_LANG['type_name'][HELP_CAT]   = '商店說明';
$_LANG['cat_desc']              = '描述';
$_LANG['show_in_nav']           = '是否顯示在導覽列';

$_LANG['parent_cat']         = '上層分類';
$_LANG['cat_top']            = '頂層分類';
$_LANG['not_allow_add']      = '你所選的分類不能新增子分類';
$_LANG['not_allow_remove']   = '系統保留分類，不能刪除';
$_LANG['is_fullcat']         = '該分類下還有子分類，請先刪除其子分類';

$_LANG['isopen']            = '顯示';
$_LANG['isclose']           = '不顯示';
$_LANG['add_article']       = '發表文章';

$_LANG['articlecat_edit']   = '文章分類編輯';



/* 提示信息 */
$_LANG['catname_exist']    = '分類名稱 %s 已經存在';
$_LANG['parent_id_err']    = '分類名稱 %s 的父分類不能设置成本身或本身的子分類';
$_LANG['back_list']        = '返回分類列表';
$_LANG['continue_add']     = '繼續新增新分類';
$_LANG['catadd_succed']    = '已成功新增';
$_LANG['catedit_succed']   = '分類 %s 編輯成功';
$_LANG['back_list']        = '返回分類列表';
$_LANG['continue_add']     = '繼續新增分類';
$_LANG['no_catname']       = '請填入分類名';
$_LANG['edit_fail']        = '編輯失敗';
$_LANG['enter_int']        = '請輸入一個整數';
$_LANG['not_emptycat']     = '分類下還有文章，不允許刪除非空分類';

/*幫助信息*/
$_LANG['notice_keywords']     ='關鍵字為選填項，其目的在於方便外部搜尋引擎搜尋';
$_LANG['notice_isopen']       ='該文章分類是否顯示在前台的主導覽列中。';


/*JS 語言項*/
$_LANG['js_languages']['no_catname']            = '沒有輸入分類的名稱';
$_LANG['js_languages']['sys_hold']              = '系統保留分類，無法新增子分類';
$_LANG['js_languages']['remove_confirm']        = '您確定要刪除選取的分類嗎？';
?>