<?php

/**
 * ECSHOP 會員帳號管理語言文件
 * ============================================================================
 * 版權所有 (C) 2005-2006 北京億商互動科技發展有限公司，並保留所有權利。
 * 網站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 這是一個免費開源的軟件；這意味著您可以在不用於商業目的的前提下對程序代碼
 * 進行修改、使用和再發佈。
 * ============================================================================
 * $Author: fenghl $
 * $Date: 2007-12-07 10:46:27 +0800 (星期五, 07 十二月 2007) $
 * $Id: users.php 13825 2007-12-07 02:46:27Z fenghl $
*/
/* 列表頁面 */
$_LANG['label_user_name'] = '會員名稱';
$_LANG['label_pay_points_gt'] = '會員積點大於';
$_LANG['label_pay_points_lt'] = '會員積點小於';
$_LANG['label_rank_name'] = '會員等級';
$_LANG['all_option'] = '所有等級';

$_LANG['view_order'] = '檢視訂單';
$_LANG['view_deposit'] = '檢視消費明細';
$_LANG['username'] = '會員名稱';
$_LANG['email'] = '郵件地址';
$_LANG['reg_date'] = '註冊日期';
$_LANG['button_remove'] = '刪除會員';
$_LANG['users_edit'] = '編輯會員帳號';
$_LANG['goto_list'] = '返回會員帳號列表';
$_LANG['username_empty'] = '會員名稱不能為空！';

/* 表單相關語言項 */
$_LANG['password'] = '登入密碼';
$_LANG['confirm_password'] = '確認密碼';
$_LANG['question'] = '密碼提示問題';
$_LANG['answer'] = '密碼提示問題答案';
$_LANG['gender'] = '性別';
$_LANG['birthday'] = '出生日期';
$_LANG['sex'][0] = '保密';
$_LANG['sex'][1] = '男';
$_LANG['sex'][2] = '女';
$_LANG['pay_points'] = '消費積點';
$_LANG['rank_points'] = '等級積點';
$_LANG['user_money'] = '可用資金';
$_LANG['frozen_money'] = '凍結資金';
$_LANG['credit_line'] = '信用額度';
$_LANG['label_pay_points'] = '消費積點';
$_LANG['label_rank_points'] = '等級積點';
$_LANG['label_user_money'] = '帳戶餘額';
$_LANG['user_rank'] = '會員等級';
$_LANG['not_special_rank'] = '非特殊等級';
$_LANG['view_detail_account'] = '檢視明細';
$_LANG['parent_user'] = '推薦人';
$_LANG['parent_remove'] = '脫離推薦關係';

$_LANG['msn'] = 'MSN';
$_LANG['qq'] = 'QQ';
$_LANG['home_phone'] = '家庭電話';
$_LANG['office_phone'] = '辦公電話';
$_LANG['mobile_phone'] = '手機';

$_LANG['notice_pay_points'] = '消費積點是一種站內貨幣，允許會員在購物時付款一定比例的積點。';
$_LANG['notice_rank_points'] = '等級積點是一種累計的積點，系統根據該積點來判定會員的會員等級。';
$_LANG['notice_user_money'] = '會員在站內預留下的金額';

/* 提示資料 */
$_LANG['username_exists'] = '已經存在一個相同的會員名。';
$_LANG['email_exists'] = '該電子郵件已經有人使用。';
$_LANG['edit_user_failed'] = '修改會員資料失敗。';
$_LANG['invalid_email'] = '輸入了非法的郵件地址。';
$_LANG['update_success'] = '編輯會員資料已經成功。';
$_LANG['remove_confirm'] = '您確定要刪除該會員帳號嗎？';
$_LANG['remove_order_confirm'] = '該會員帳號已經有訂單存在，刪除該會員帳號的同時將清除訂單資料。<br />您確定要刪除嗎？';
$_LANG['remove_order'] = '是，我確定要刪除會員帳號及其訂單資料';
$_LANG['remove_cancel'] = '不，我不想刪除該會員帳號了。';
$_LANG['remove_success'] = '會員帳號 %s 已經刪除成功。';
$_LANG['add_success'] = '會員帳號 %s 已經新增成功。';
$_LANG['batch_remove_success'] = '已經成功刪除了 %d 個會員帳號。';
$_LANG['no_select_user'] = '您沒有選擇任何要刪除的會員！';
$_LANG['register_points'] = '註冊送積點';

/* 地址列表 */
$_LANG['address_list'] = '收貨地址';
$_LANG['consignee'] = '收貨人';
$_LANG['address'] = '地址';
$_LANG['link'] = '聯繫方式';
$_LANG['other'] = '其他';
$_LANG['tel'] = '電話';
$_LANG['mobile'] = '手機';
$_LANG['best_time'] = '最佳送貨時間';
$_LANG['sign_building'] = '標誌建築';


/* JS 語言項 */
$_LANG['js_languages']['no_username'] = '沒有輸入會員名。';
$_LANG['js_languages']['invalid_email'] = '沒有輸入電子郵件地址或者輸入了一個無效的電子郵件。';
$_LANG['js_languages']['no_password'] = '沒有輸入登入密碼。';
$_LANG['js_languages']['no_confirm_password'] = '沒有輸入確認密碼。';
$_LANG['js_languages']['password_not_same'] = '輸入的密碼和確認密碼不一致。';
$_LANG['js_languages']['invalid_pay_points'] = '消費積點數不是一個整數。';
$_LANG['js_languages']['invalid_rank_points'] = '等級積點數不是一個整數。';
?>
