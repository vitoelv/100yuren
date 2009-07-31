<?php

/**
 * ECSHOP
 * ============================================================================
 * 版權所有 (C) 2005-2006 北京億商互動科技發展有限公司，並保留所有權利。
 * 網站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 這是一個免費開源的軟件；這意味著您可以在不用於商業目的的前提下對程序代碼
 * 進行修改、使用和再發佈。
 * ============================================================================
 * $Author: refly $
 * $Date: 2007-11-30 23:43:58 +0800 (星期五, 30 十一月 2007) $
 * $Id: database.php 13794 2007-11-30 15:43:58Z refly $
*/


$_LANG['db_manage']                 = '資料庫管理';
$_LANG['start_backup']              = '開始備份';
$_LANG['backup_name']               = '備份名稱';
$_LANG['backup_time']               = '備份時間';
$_LANG['backup_size']               = '備份大小';
$_LANG['restore']                   = '還原備份';
$_LANG['restore_ok']                = '還原成功';
$_LANG['download']                  = '下載';
$_LANG['restored']                  = '備份已經還原過了';
$_LANG['upload_sql']                = '上傳備份檔案';

$_LANG['table']                     = '資料表';
$_LANG['type']                      = '資料表類型';
$_LANG['rec_num']                   = '記錄數';
$_LANG['rec_size']                  = '資料';
$_LANG['rec_chip']                  = '碎片';
$_LANG['start_optimize']            = '開始進行資料表最佳化';
$_LANG['chip_count']                = '總碎片數';
$_LANG['charset']                   = '字符集';
$_LANG['status']                    = '狀態';

$_LANG['backup_type']               ='備份類型';
$_LANG['full_backup']               ='全部備份';
$_LANG['full_backup_note']          ='備份資料庫所有表';
$_LANG['stand_backup']              ='標準備份(推薦)';
$_LANG['stand_backup_note']         ='備份常用的資料表';
$_LANG['min_backup']                ='最小備份';
$_LANG['min_backup_note']           ='僅包括商品表，訂單表，用戶表';
$_LANG['custom_backup']             ='自定義備份';
$_LANG['custom_backup_note']        ='根據自行選擇備份資料表';

$_LANG['option']                    = '其他選項';
$_LANG['ext_insert']                = '使用擴展新增(Extended Insert)方式';
$_LANG['is_pack']                   = '是否將備份資料壓縮';
$_LANG['notice_is_pack']            = '壓縮能減小備份大小，但還原備份時需要先解壓備份才能上傳';
$_LANG['vol_size']                  = '分卷備份 - 檔案長度限制(kb)';
$_LANG['sql_name']                  = '備份檔案名';
$_LANG['backup_failure']            = '備份出錯';


$_LANG['sqlfile']                   = '本地sql檔案';
$_LANG['update_table_pre']          = '更改表前綴';
$_LANG['old_table_pre']             = '原表前綴';
$_LANG['new_table_pre']             = '新表前綴';
$_LANG['use_new_pre']               = '使用新表前綴';
$_LANG['notice_use_new_pre']        = '只有在還原全部備份時才可以選擇「是」，否則沒有備份的資料表將無法使用。<br />您也可以手動修改 data/config.php 中的 $prefix 變數來決定使用哪個資料表前綴';
$_LANG['upload_and_exe']            = '上傳並執行sql檔案';


/* 提示信息 */
$_LANG['fail_get_tables']           = '取得備份資料表失敗';
$_LANG['fail_open_file']            = '檔案打開失敗';
$_LANG['fail_remove']               = '檔案刪除失敗';
$_LANG['fail_get_content']          = '取得資料表內容失敗';
$_LANG['fail_upload']               = '檔案上傳失敗';
$_LANG['fail_upload_move']          = '檔案上傳移動失敗';
$_LANG['unrecognize_version']       = '不能識別備份sql的ECShop版本';
$_LANG['unrecognize_mysql_version'] = '不能識別備份sql的mysql版本';
$_LANG['mysql_version_error']       = '當前mysql版本%s與備份資料的mysql版本%s不同，你確認要匯入該備份檔案嗎?';
$_LANG['confirm_ver']               = '是，確認匯入';
$_LANG['unconfirm_ver']             = '否，取消匯入';
$_LANG['version_error']             = 'ECShop 目前版本%s與備份資料版本%s不同，備份還原失敗';
$_LANG['not_sql_file']              = '您上傳的似乎不是sql檔案，如果檔案確實是sql檔案，請將檔案擴展名改為.sql';
$_LANG['sqlfile_error']             = '您上傳的sql檔案執行出錯，備份還原失敗';
$_LANG['restore_success']           = '還原成功';
$_LANG['fail_optimize']             = '最佳化資料表 %s 失敗';
$_LANG['optimize_ok']               = '資料表最佳化成功，共清理碎片 %d';
$_LANG['restore_confirm']           = '還原資料庫會清除現有的所有內容，您確定要還原嗎？';
$_LANG['fail_import']               = '資料匯入失敗';
$_LANG['no_file']                   = '檔案不存在';
$_LANG['not_support_zip_format']    = '伺服器不支援zip格式，請將檔案解壓縮後再上傳';


/* js */
$_LANG['js_languages']['remove_confirm']         = '您確認要刪除該備份嗎？';
$_LANG['js_languages']['lang_remove']            = '移除';
$_LANG['js_languages']['lang_restore']           = '還原備份';
$_LANG['js_languages']['lang_download']          = '下載';
$_LANG['js_languages']['sql_name_not_null']      = '檔案名不能為空';
$_LANG['js_languages']['vol_size_not_null']      = '請填入備份大小';

/* 資料備份 */
$_LANG['backup_title'] = '資料備份檔 %s 成功建立，程式將自動繼續。';
$_LANG['backup_notice'] = '如果您的瀏覽器沒有自動跳頁，請點選這裏';
$_LANG['backup_success'] = '備份成功';

$_LANG['name'] = '檔案名';
$_LANG['ver'] = '版本';
$_LANG['add_time'] = '時間';
$_LANG['file_size'] = '大小';
$_LANG['empty_upload'] = '您上傳了一個空白檔案';
$_LANG['fail_write_file'] = '備份檔案 %s 無法寫入';
$_LANG['vol'] = '卷';
$_LANG['import'] = '匯入';
$_LANG['server_sql'] = '伺服器上的備份檔案';
$_LANG['submit_remove'] = '刪除';
$_LANG['remove_success'] = '刪除成功';
$_LANG['confirm_import'] = '匯入一個分卷可能導致資料不完整，是否一起匯入其他分卷資料';
$_LANG['also_continue'] = '是，我要匯入其他分卷資料';

$_LANG['dir_priv'] = '目錄 %s 的讀寫權限有以下問題：';
$_LANG['dir_not_exist'] = '目錄 %s 不存在,請手動創建';
$_LANG['cannot_read'] = '不可讀';
$_LANG['cannot_write'] = '不可寫';
$_LANG['cannot_add'] = '無法增加資料';
$_LANG['cannot_modify'] = '無法修改檔案';

$_LANG['confirm_remove'] = '你確定要刪除選取的資料嗎？';
?>