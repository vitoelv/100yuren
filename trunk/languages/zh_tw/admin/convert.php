<?php

/**
 * ECSHOP 轉換程序語言文件
 * ============================================================================
 * 版權所有 (C) 2005-2006 北京億商互動科技發展有限公司，並保留所有權利。
 * 網站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 這是一個免費開源的軟件；這意味著您可以在不用於商業目的的前提下對程序代碼
 * 進行修改、使用和再發佈。
 * ============================================================================
 * $Author: refly $
 * $Date: 2007-11-26 21:10:53 +0800 (星期一, 26 十一月 2007) $
 * $Id: convert.php 13757 2007-11-26 13:10:53Z refly $
 */

$_LANG['confirm_convert']       = '注意：執行轉換程式將會使現有資料消失，請您三思而行！！！';
$_LANG['backup_data']           = '如果現有資料對您可能還有價值，請您先做好備份。';
$_LANG['backup']                = '現在就去備份';
$_LANG['select_system']         = '請選擇您要轉換的系統：';
$_LANG['note_select_system']    = '（如果您是台灣的使用者，您可以到<a href="http://bbs.ecshop.tw" target="_blank"><strong>台灣技術支援論壇</strong></a>尋求幫助）';
$_LANG['select_charset']        = '請選擇您要轉換的系統使用的字符集：';
$_LANG['note_select_charset']   = '（如果你的系統使用的不是 UTF-8 編碼，轉換可能需要較長時間）';
$_LANG['dir_notes']             = '請注意原商店的根目錄路徑請使用相對於admin目錄的路徑。<br />例如：原商店的目錄在根目錄下的shop，而ecshop放在根目錄下，則該路徑為 ../shop';
$_LANG['your_config']           = '請設定原系統的設定資料：';
$_LANG['your_host']             = '主機名稱或地址：';
$_LANG['your_user']             = '登入帳號：';
$_LANG['your_pass']             = '登入密碼：';
$_LANG['your_db']               = '資料庫名稱：';
$_LANG['your_prefix']           = '資料庫表前綴：';
$_LANG['your_path']             = '原商店根目錄：';
$_LANG['convert']               = '轉換資料';
$_LANG['remark']                = '備註：';
$_LANG['remark_info']           = '<ul>' .
        '<li>對於特價的商品，您需要編輯其原價（本店售價）和促銷期；</li>' .
        '<li>請重新設定浮水印；</li>' .
        '<li>請重新設定廣告；</li>' .
        '<li>請重新設定配送方式；</li>' .
        '<li>請重新設定付款方式；</li>' .
        '<li>請把原來不屬於底層分類的商品轉移到底層分類；</li>' .
        '</ul>';

$_LANG['connect_db_error']      = '無法連接資料庫，請檢查設定資料。';
$_LANG['table_error']           = '缺少必需的資料表 %s ，請檢查設定資料。';
$_LANG['dir_error']             = '缺少必需的目錄 %s ，請檢查設定資料。';
$_LANG['dir_not_readable']      = '目錄不可讀 %s';
$_LANG['dir_not_writable']      = '目錄不可寫 %s';
$_LANG['file_not_readable']     = '文件不可讀 %s';
$_LANG['js_languages']['check_your_db']     = '正在檢查您的系統的資料庫...';
$_LANG['js_languages']['act_ok']            = '恭喜您，操作成功！';

$_LANG['js_languages']['no_system']         = '沒有可用的轉換程式';
$_LANG['js_languages']['host_not_null']     = '主機名稱或地址不能為空';
$_LANG['js_languages']['db_not_null']       = '資料庫名稱不能為空';
$_LANG['js_languages']['user_not_null']     = '登入帳號不能為空';
$_LANG['js_languages']['path_not_null']     = '原商店根目錄不能為空';
?>