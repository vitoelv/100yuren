<?php

/**
 * ECSHOP 安裝程式語言檔案
 * ============================================================================
 * 版權所有 (C) 2005-2007 北京億商互動科技發展有限公司，並保留所有權利。
 * 網站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 這是一個免費開源的軟件；這意味著您可以在不用於商業目的的前提下對程式代碼
 * 進行修改、使用和再發佈。
 * ============================================================================
 * $Author: fenghl $
 * $Date: 2007-12-28 13:38:32 +0800 (星期五, 28 十二月 2007) $
 * $Id: zh_tw.php 13921 2007-12-28 05:38:32Z fenghl $
 */

/* 通用語言項 */
$_LANG['prev_step'] = '上一步：';
$_LANG['next_step'] = '下一步：';
$_LANG['copyright'] = '&copy; 2005-2007 <a href="http://www.ecshop.com" target="_blank">北京億商互動科技發展有限公司</a>。保留所有權利。';

/* 歡迎頁 */
$_LANG['welcome_title'] = '歡迎您選用ECShop網上商店管理系統！';
$_LANG['select_installer_lang'] = '界面語言：';
$_LANG['simplified_chinese'] = '簡體中文';
$_LANG['traditional_chinese'] = '繁體中文';
$_LANG['americanese'] = 'English';
$_LANG['agree_license'] = '我已仔細閱讀，並同意上述條款中的所有內容';
$_LANG['check_system_environment'] = '檢測系統環境';

/* 環境檢測頁 */
$_LANG['checking_title'] = 'ECShop安裝程式 第2步/共3步 環境檢測';
$_LANG['system_environment'] = '系統環境';
$_LANG['dir_priv_checking'] = '目錄權限檢測';
$_LANG['template_writable_checking'] = '模板可寫性檢查';
$_LANG['rename_priv_checking'] = '特定目錄修改權限檢查';
$_LANG['welcome_page'] = '歡迎頁';
$_LANG['recheck'] = '重新檢查';
$_LANG['config_system'] = '設定系統';
$_LANG['does_support_mysql'] = '是否支援MySQL';
$_LANG['support'] = '支援';
$_LANG['does_support_dld'] = '重要檔案是否完整';
$_LANG['support_dld'] = '完整';
$_LANG['support'] = '支援';
$_LANG['not_support'] = '不支援';
$_LANG['cannt_support_dwt'] = '缺少dwt檔案';
$_LANG['cannt_support_lbi'] = '缺少lib檔案';
$_LANG['cannt_support_dat'] = '缺少dat檔案';
$_LANG['php_os'] = '操作系統';
$_LANG['php_ver'] = 'PHP 版本';
$_LANG['mysql_ver'] = 'MySQL 版本';
$_LANG['gd_version'] = 'GD 版本';
$_LANG['jpeg'] = '是否支援 JPEG';
$_LANG['gif'] = '是否支援 GIF';
$_LANG['png'] = '是否支援 PNG';
$_LANG['safe_mode'] = '伺服器是否開啟安全模式';
$_LANG['safe_mode_on'] = '開啟';
$_LANG['safe_mode_off'] = '關閉';
$_LANG['can_write'] = '可寫';
$_LANG['cannt_write'] = '不可寫';
$_LANG['not_exists'] = '不存在';
$_LANG['cannt_modify'] = '不可修改';
$_LANG['all_are_writable'] = '所有模板，全部可寫';

/* 系統設置 */
$_LANG['setting_title'] = 'ECShop安裝程式 第3步/共3步 設定系統';
$_LANG['db_account'] = '資料庫帳號';
$_LANG['db_port'] = '連接埠號：';
$_LANG['db_host'] = '資料庫主機：';
$_LANG['db_name'] = '資料庫名：';
$_LANG['db_user'] = '使用者名稱：';
$_LANG['db_pass'] = '密碼：';
$_LANG['go'] = '找尋資料庫..';
$_LANG['db_list'] = '已有資料庫';
$_LANG['db_prefix'] = '表前綴：';
$_LANG['admin_account'] = '管理者帳號';
$_LANG['admin_name'] = '管理者帳號：';
$_LANG['admin_password'] = '登入密碼：';
$_LANG['admin_password2'] = '密碼確認：';
$_LANG['admin_email'] = '電子郵箱：';
$_LANG['mix_options'] = '雜項';
$_LANG['select_lang_package'] = '選擇語言包：';
$_LANG['set_timezone'] = '設置時區：';
$_LANG['timezone_list'] = '時區列表';
$_LANG['disable_captcha'] = '禁用驗證碼：';
$_LANG['captcha_notice'] = '選擇此項，進入後台、發表評論無需驗證';
$_LANG['pre_goods_types'] = '預選商品類型：';
$_LANG['install_demo'] = '安裝測試資料：';
$_LANG['demo_notice'] = '選擇此項，將預設為全選預選商品類型';
$_LANG['book'] = '書';
$_LANG['music'] = '音樂';
$_LANG['movie'] = '電影';
$_LANG['mobile'] = '手機';
$_LANG['notebook'] = '筆記本電腦';
$_LANG['dc'] = '數碼相機';
$_LANG['dv'] = '數碼攝像機';
$_LANG['cosmetics'] = '化妝品';
$_LANG['install_at_once'] = '立即安裝';
$_LANG['default_friend_link'] = 'ECSHOP 網上商店管理系統';
$_LANG['monitor_title'] = '安裝程式監視器';
$_LANG['admin_user'][] = '商品列表|goods.php?act=list';
$_LANG['admin_user'][] = '訂單列表|order.php?act=list';
$_LANG['admin_user'][] = '用戶評論|comment_manage.php?act=list';
$_LANG['admin_user'][] = '會員列表|users.php?act=list';

/* 提示信息 */
$_LANG['has_locked_installer'] = '<strong>安裝程式已經被鎖定。</strong><br /><br />如果您確定要重新安裝 ECSHOP，請刪除data目錄下的 install.lock。';
$_LANG['connect_failed'] = '連接 資料庫失敗，請檢查您輸入的 資料庫帳號 是否正確。';
$_LANG['query_failed'] = '查詢 資料庫失敗，請檢查您輸入的 資料庫帳號 是否正確。';
$_LANG['select_db_failed'] = '選擇 資料庫失敗，請檢查您輸入的 資料庫名稱 是否正確。';
$_LANG['cannt_find_db'] = '無';
$_LANG['cannt_create_database'] = '無法建立資料庫';
$_LANG['password_empty_error'] = '密碼不能為空';
$_LANG['passwords_not_eq'] = '密碼不相同';
$_LANG['open_config_failed'] = '打開設定檔案失敗';
$_LANG['write_config_failed'] = '寫入設定檔案失敗';
$_LANG['create_passport_failed'] = '建立管理者帳號失敗';
$_LANG['cannt_mk_dir'] = '無法建立目錄';
$_LANG['cannt_copy_file'] = '無法複製檔案';
$_LANG['open_installlock_error'] = '無法建立install.lock檔案';
$_LANG['write_installlock_failed'] = '寫入install.lock檔案發生錯誤';
$_LANG['open_config_file_failed'] = '無法寫入 data/config.php，請檢查該檔案是否允許寫入。';
$_LANG['write_config_file_failed'] = '寫入設定檔案出錯';

$_LANG['install_done_title'] = 'ECSHOP 安裝程式 安裝成功';
$_LANG['install_error_title'] = 'ECSHOP 安裝程式 安裝失敗';
$_LANG['done'] = '恭喜您，ECSHOP 已經成功地安裝完成。<br />基於安全的考慮，請在安裝完成後刪除 install 目錄。';
$_LANG['go_to_view_my_ecshop'] = '前往 ECSHOP 首頁';
$_LANG['go_to_view_control_panel'] = '前往 ECSHOP 後台管理中心';

/* 客戶端JS語言項 */
$_LANG['js_languages']['success'] = '成功';
$_LANG['js_languages']['fail'] = '失敗';
$_LANG['js_languages']['total_num'] = '共 %s 個';
$_LANG['js_languages']['db_exists'] = '這是一個已經存在的資料庫，確定要覆蓋該資料庫嗎？';
$_LANG['js_languages']['wait_please'] = '正在安裝中，請稍候…………';
$_LANG['js_languages']['create_config_file'] = '建立設定檔............';
$_LANG['js_languages']['create_database'] = '建立資料庫............';
$_LANG['js_languages']['install_data'] = '安裝資料............';
$_LANG['js_languages']['create_admin_passport'] = '建立管理者帳號............';
$_LANG['js_languages']['do_others'] = '處理其它............';
$_LANG['js_languages']['display_detail'] = '顯示詳細資料';
$_LANG['js_languages']['hide_detail'] = '隱藏詳細資料';
$_LANG['js_languages']['has_been_stopped'] = '安裝程式已中止';

?>