<?php

/**
 * ECSHOP 管理中心權限管理模塊語言文件
 * ============================================================================
 * 版權所有 (C) 2005-2006 北京億商互動科技發展有限公司，並保留所有權利。
 * 網站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 這是一個免費開源的軟件；這意味著您可以在不用於商業目的的前提下對程序代碼
 * 進行修改、使用和再發佈。
 * ============================================================================
 * $Author: refly $
 * $Date: 2007-11-26 21:10:53 +0800 (星期一, 26 十一月 2007) $
 * $Id: privilege.php 13757 2007-11-26 13:10:53Z refly $
*/

/* 字段資料 */
$_LANG['user_id'] = '編號';
$_LANG['user_name'] = '使用者名稱';
$_LANG['email'] = 'Email地址';
$_LANG['password'] = '密  碼';
$_LANG['join_time'] = '加入時間';
$_LANG['last_time'] = '最後登入時間';
$_LANG['last_ip'] = '最後使用的IP';
$_LANG['action_list'] = '操作權限';
$_LANG['nav_list'] = '導覽列';
$_LANG['language'] = '使用的語言';

$_LANG['allot_priv'] = '分派權限';
$_LANG['allot_list'] = '權限列表';
$_LANG['go_allot_priv'] = '設定管理者權限';

$_LANG['view_log'] = '查看紀錄';

$_LANG['back_home'] = '返回首頁';
$_LANG['forget_pwd'] = '您忘記了密碼嗎?';
$_LANG['get_new_pwd'] = '找回管理者密碼';
$_LANG['pwd_confirm'] = '確認密碼';
$_LANG['new_password'] = '新密碼';
$_LANG['old_password'] = '舊密碼';
$_LANG['agency'] = '負責的辦事處';
$_LANG['self_nav'] = '個人導覽';
$_LANG['all_menus'] = '所有選單';
$_LANG['add_nav'] = '增加';
$_LANG['remove_nav'] = '移除';
$_LANG['move_up'] = '上移';
$_LANG['move_down'] = '下移';
$_LANG['continue_add'] = '繼續新增管理員';
$_LANG['back_list'] = '返回管理員列表';

$_LANG['admin_edit'] = '編輯管理者';
$_LANG['edit_pwd'] = '修改密碼';

$_LANG['back_admin_list'] = '返回管理員列表';

/* 提示資料 */
$_LANG['js_languages']['user_name_empty'] = '管理者使用者名稱不能為空!';
$_LANG['js_languages']['password_invaild'] = '密碼必須同時包含字母及數字且長度不能小於6!';
$_LANG['js_languages']['email_empty'] = 'Email地址不能為空!';
$_LANG['js_languages']['email_error'] = 'Email地址格式不正確!';
$_LANG['js_languages']['password_error'] = '兩次輸入的密碼不一致!';
$_LANG['js_languages']['captcha_empty'] = '您沒有輸入驗證碼!';
$_LANG['action_succeed'] = '操作成功!';
$_LANG['edit_profile_succeed'] = '您已經成功的修改了個人帳號資料!';
$_LANG['edit_password_succeed'] = '您已經成功的修改了密碼，因此您必須重新登入!';
$_LANG['user_name_exist'] = '該管理者已經存在!';
$_LANG['email_exist'] = 'Email地址已經存在!';
$_LANG['captcha_error'] = '您輸入的驗證碼不正確。';
$_LANG['login_faild'] = '您輸入的帳號資料不正確。';
$_LANG['user_name_drop'] = '已被成功刪除!';
$_LANG['pwd_error'] = '輸入的舊密碼錯誤!';
$_LANG['old_password_empty'] = '如果要修改密碼,必須先輸入你的舊密碼!';
$_LANG['edit_admininfo_error'] = '只能編輯自己的個人資料!';
$_LANG['edit_admininfo_cannot'] = '您不能對此管理者的權限進行任何操作!';
$_LANG['edit_remove_cannot'] = '您不能刪除demo這個管理者!';
$_LANG['remove_cannot'] = '此管理者您不能進行刪除操作!';

$_LANG['modif_info'] = '編輯個人資料';
$_LANG['edit_navi'] = '設定個人導覽';

/* 幫助資料 */
$_LANG['password_notic'] = '如果要修改密碼,請先填寫舊密碼,如留空,密碼保持不變';
$_LANG['email_notic'] = '輸入管理者的Email郵箱,必須為Email格式';
$_LANG['confirm_notic'] = '輸入管理者的確認密碼,兩次輸入必須一致';

/* 登入表單 */
$_LANG['label_username'] = '管理者姓名：';
$_LANG['label_password'] = '管理者密碼：';
$_LANG['label_captcha'] = '驗證碼：';
$_LANG['click_for_another'] = '看不清楚？點此更換另一個驗證碼。';
$_LANG['signin_now'] = '進入管理中心';
$_LANG['remember'] = '在這台電腦上記住我。';
?>