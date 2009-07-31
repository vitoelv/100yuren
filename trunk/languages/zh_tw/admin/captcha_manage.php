<?php

/**
 * ECSHOP
 * ============================================================================
 * 版權所有 (C) 2005-2007 北京億商互動科技發展有限公司，並保留所有權利。
 * 網站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 這是一個免費開源的軟件；這意味著您可以在不用於商業目的的前提下對程序代碼
 * 進行修改、使用和再發佈。
 * ============================================================================
 * $Author: fenghl $
 * $Date: 2007-12-14 14:27:48 +0800 (星期五, 14 十二月 2007) $
 * $Id: captcha_manage.php 13864 2007-12-14 06:27:48Z fenghl $
*/

$_LANG['captcha_manage'] = '驗證碼設定';
$_LANG['captcha_note'] = '開啟驗證碼需要伺服器的GD庫支援，而您的伺服器沒有安裝GD庫。';

$_LANG['captcha_setting'] = '驗證碼設定';
$_LANG['captcha_turn_on'] = '啟用驗證碼';
$_LANG['turn_on_note'] = '圖片驗證碼可以避免惡意大量評論或送出資料，推薦打開驗證碼功能。注意: 啟用驗證碼會使得部分操作變得繁瑣，建議僅在必需時打開';
$_LANG['captcha_register'] = '新用戶註冊';
$_LANG['captcha_login'] = '用戶登入';
$_LANG['captcha_comment'] = '發表評論';
$_LANG['captcha_admin'] = '後台管理員登入';
$_LANG['captcha_login_fail'] = '登入失敗時顯示驗證碼';
$_LANG['login_fail_note'] = '選擇「是」將在用戶登入失敗 3 次後才顯示驗證碼，選擇「否」將始終在登入時顯示驗證碼。注意: 只有在啟用了用戶登入驗證碼時本設定才有效';
$_LANG['captcha_width'] = '驗證碼圖片寬度';
$_LANG['width_note'] = '驗證碼圖片的寬度，範圍在 40～145 之間';
$_LANG['captcha_height'] = '驗證碼圖片高度';
$_LANG['height_note'] = '驗證碼圖片的高度，範圍在 15～50 之間';

$_LANG['js_languages']['width_number'] = '圖片寬度請輸入數字!';
$_LANG['js_languages']['proper_width'] = '圖片寬度要在40到145之間!';
$_LANG['js_languages']['height_number'] = '圖片高度請輸入數字!';
$_LANG['js_languages']['proper_height'] = '圖片高度要在15到50之間!';

$_LANG['save_ok'] = '設定儲存成功';

?>
