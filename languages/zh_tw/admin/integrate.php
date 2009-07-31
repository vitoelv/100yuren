<?php

/**
 * ECSHOP 管理中心會員資料整合外掛管理程序語言文件
 * ============================================================================
 * 版權所有 (C) 2005-2006 康盛創想（北京）科技有限公司，並保留所有權利。
 * 網站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 這是一個免費開源的軟件；這意味著您可以在不用於商業目的的前提下對程序代碼
 * 進行修改、使用和再發佈。
 * ============================================================================
 * $Author: refly $
 * $Date: 2007-11-30 23:40:25 +0800 (星期五, 30 十一月 2007) $
 * $Id: integrate.php 13793 2007-11-30 15:40:25Z refly $
*/

$_LANG['integrate_name'] = '名稱';
$_LANG['integrate_version'] = '版本';
$_LANG['integrate_author'] = '作者';

/* 外掛列表 */
$_LANG['update_success'] = '設定會員資料整合外掛已經成功。';
$_LANG['install_confirm'] = '您確定要安裝該會員資料整合外掛嗎？';
$_LANG['need_not_setup'] = '當您採用ECSHOP會員系統時，無須進行設定。';
$_LANG['different_domain'] = '您設定的整合對像和 ECSHOP 不在同一網址下。<br />您將只能共享該系統的會員資料，但無法實現同時登入。';
$_LANG['points_set'] = '積點兌換設定';
$_LANG['view_user_list'] = '檢視論壇用戶';
$_LANG['view_install_log'] = '檢視安裝紀錄';

$_LANG['integrate_setup'] = '設定會員資料整合外掛';
$_LANG['continue_sync'] = '繼續同步會員資料';
$_LANG['go_userslist'] = '返回會員帳號列表';

/* 查看安裝紀錄 */
$_LANG['lost_install_log'] = '未找到安裝紀錄';
$_LANG['empty_install_log'] = '安裝紀錄為空';

/* 表單相關語言項 */
$_LANG['db_notice'] = '點選「<font color="#000000">下一步</font>」將引導你到將商店帳號資料同步到整合論壇。如果不需同步資料請點選「<font color="#000000">直接儲存設定資料</font>」';

$_LANG['lable_db_host'] = '資料庫伺服器主機名：';
$_LANG['lable_db_name'] = '資料庫名：';
$_LANG['lable_db_chartset'] = '資料庫字符集：';
$_LANG['lable_is_latin1'] = '是否為latin1編碼';
$_LANG['lable_db_user'] = '資料庫帳號：';
$_LANG['lable_db_pass'] = '資料庫密碼：';
$_LANG['lable_prefix'] = '資料表前綴：';
$_LANG['lable_url'] = '被整合系統的完整網址：';
/* 表單相關語言項(discus5x) */
$_LANG['cookie_prefix']          = 'COOKIE前綴：';
$_LANG['cookie_salt']          = 'COOKIE加密串：';
$_LANG['button_next'] = '下一步';
$_LANG['button_force_save_config'] = '直接儲存設定資料';
$_LANG['save_confirm'] = '您確定要直接儲存設定資料嗎？';
$_LANG['button_save_config'] = '儲存設定資料';

$_LANG['error_db_msg'] = '資料庫地址、帳號或密碼不正確';
$_LANG['error_table_exist'] = '整合論壇關鍵資料表不存在，你填寫的資料有誤';
$_LANG['error_db_exist'] = '資料庫不存在';

$_LANG['notice_latin1'] = '該選項填寫錯誤時將可能到導致中文用戶名無法使用';
$_LANG['error_not_latin1'] = '整合數據庫檢測到不是latin1編碼！請重新選擇';
$_LANG['error_is_latin1'] = '整合數據庫檢測到是lantin1編碼！請重新選擇';
$_LANG['invalid_db_charset'] = '整合數據庫檢測到是%s 字符集，而非%s 字符集';
$_LANG['error_latin1'] = '你填寫的整合信息會導致嚴重錯誤，無法完成整合';


/* 檢查同名用戶 */
$_LANG['conflict_username_check'] = '檢查商店用戶是否和整合論壇用戶有重複名稱';
$_LANG['check_notice'] = '本頁將檢測商店已有用戶和論壇用戶是否有同名，點選「開始檢查前」，請為商店同名用戶選擇一個預設處理方法';
$_LANG['default_method'] = '如果檢測出商店有同名用戶，請為這些用戶選擇一個預設處理方法';
$_LANG['shop_user_total'] = '商店共有 %s 個用戶待檢查';
$_LANG['lable_size'] = '每次檢查用戶個數';
$_LANG['start_check'] = '開始檢查';
$_LANG['next'] = '下一步';
$_LANG['checking'] = '正在檢查...(請不要關閉瀏覽器)';
$_LANG['notice'] = '已經檢查 %s / %s ';
$_LANG['check_complete'] = '檢查完成';

/* 同名用戶處理 */
$_LANG['conflict_username_modify'] = '商店同名用戶列表';
$_LANG['modify_notice'] = '以下列出了所有商店與論壇的同名用戶及處理方法。如果您已確認所有操作，請點選「開始整合」；您對同名用戶的操作的更改需要點選按鈕「儲存本頁更改」才能生效。';
$_LANG['page_default_method'] = '本頁面中同名用戶預設處理方法';
$_LANG['lable_rename'] = '商店同名用戶加後綴';
$_LANG['lable_delete'] = '刪除商店的同名用戶及相關資料';
$_LANG['lable_ignore'] = '保留商店同名用戶，論壇同名用戶視為同一用戶';
$_LANG['short_rename'] = '商店用戶改名為';
$_LANG['short_delete'] = '刪除商店用戶';
$_LANG['short_ignore'] = '保留商店用戶';
$_LANG['user_name'] = '商店用戶名';
$_LANG['email'] = 'email';
$_LANG['reg_date'] = '註冊日期';
$_LANG['all_user'] = '所有商店同名用戶';
$_LANG['error_user'] = '需要重新選擇操作的商店用戶';
$_LANG['rename_user'] = '需要改名的商店用戶';
$_LANG['delete_user'] = '需要刪除的商店用戶';
$_LANG['ignore_user'] = '需要保留的商店用戶';

$_LANG['submit_modify'] = '儲存本頁變更';
$_LANG['button_confirm_next'] = '開始整合';


/* 用戶同步 */
$_LANG['user_sync'] = '同步商店資料到論壇，並完成整合';
$_LANG['button_pre'] = '上一步';
$_LANG['task_name'] = '任務名';
$_LANG['task_status'] = '任務狀態';
$_LANG['task_del'] = '%s 個商店用戶數待刪除';
$_LANG['task_rename'] = '%s 個商店用戶需要改名';
$_LANG['task_sync'] = '%s 個商店用戶需要同步到論壇';
$_LANG['task_save'] = '儲存設定資料，並完成整合';
$_LANG['task_uncomplete'] = '未完成';
$_LANG['task_run'] = '執行中 (%s / %s)';
$_LANG['task_complete'] = '已完成';
$_LANG['start_task'] = '開始任務';
$_LANG['sync_status'] = '已經同步 %s / %s';
$_LANG['sync_size'] = '每次處理用戶數量';

$_LANG['sync_ok'] = '恭喜您。整合成功';

$_LANG['save_ok'] = '儲存成功';


/* 積點設定 */
$_LANG['no_points'] = '沒有檢測到論壇有可以兌換的積點';
$_LANG['bbs'] = '論壇';
$_LANG['shop_pay_points'] = '商店消費積點';
$_LANG['shop_rank_points'] = '商店等級積點';
$_LANG['add_rule'] = '新增規則';
$_LANG['modify'] = '修改';
$_LANG['rule_name'] = '兌換規則';
$_LANG['rule_rate'] = '兌換比例';


/* JS語言項 */
$_LANG['js_languages']['no_host'] = '資料庫伺服器主機名不能為空。';
$_LANG['js_languages']['no_user'] = '資料庫帳號不能為空。';
$_LANG['js_languages']['no_name'] = '資料庫名不能為空。';
$_LANG['js_languages']['no_integrate_url'] = '請輸入整合對象的完整網址';
$_LANG['js_languages']['install_confirm'] = '請不要在系統運行中隨意的更換整合對象。\r\n您確定要安裝該會員資料整合外掛嗎？';
$_LANG['js_languages']['num_invalid'] = '同步資料的記錄數不是一個整數';
$_LANG['js_languages']['start_invalid'] = '同步資料的起始位置不是一個整數';
$_LANG['js_languages']['sync_confirm'] = '同步會員資料會將目標資料表重建。請在執行同步之前備份好您的資料。\r\n您確定要開始同步會員資料嗎？';

$_LANG['cookie_prefix_notice'] = 'UTF8版本的cookie前綴預設為xnW_，GB2312/GBK版本的cookie前綴預設為KD9_。';

$_LANG['js_languages']['no_method'] = '請選擇一種預設處理方法';

?>