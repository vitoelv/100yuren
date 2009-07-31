<?php

/**
 * ECSHOP 投票管理
 * ============================================================================
 * 版權所有 (C) 2005-2006 北京億商互動科技發展有限公司，並保留所有權利。
 * 網站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 這是一個免費開源的軟件；這意味著您可以在不用於商業目的的前提下對程序代碼
 * 進行修改、使用和再發佈。
 * ============================================================================
 * $Author: refly $
 * $Date: 2007-11-26 21:10:53 +0800 (星期一, 26 十一月 2007) $
 * $Id: virtual_card.php 13757 2007-11-26 13:10:53Z refly $
*/

/*------------------------------------------------------ */
//-- 卡片信息
/*------------------------------------------------------ */
$_LANG['virtual_card_list'] = '虛擬卡列表';
$_LANG['lab_goods_name'] = '商品名稱';
$_LANG['replenish'] = '補貨';
$_LANG['lab_card_id'] = '編號';
$_LANG['lab_card_sn'] = '卡片序號';
$_LANG['lab_card_password'] = '卡片密碼';
$_LANG['lab_end_date'] = '截至使用日期';
$_LANG['lab_is_saled'] = '是否已出售';
$_LANG['lab_order_sn'] = '訂單號';
$_LANG['action_success'] = '操作成功';
$_LANG['action_fail'] = '操作失敗';
$_LANG['card'] = '卡片列表';

$_LANG['batch_card_add'] = '批次新增補貨';

$_LANG['separator'] = '分隔符號';
$_LANG['uploadfile'] = '上傳檔案';
$_LANG['sql_error'] = '第 %s 筆資料錯誤：<br /> ';

/* 提示信息 */
$_LANG['replenish_no_goods_id'] = '缺少商品ID參數，無法進行補貨操作';
$_LANG['replenish_no_get_goods_name'] = '商品ID參數有誤，無法獲取商品名';
$_LANG['drop_card_success'] = '該記錄已成功刪除';
$_LANG['batch_drop'] = '批量刪除';
$_LANG['drop_card_confirm'] = '你確定要刪除該記錄嗎？';
$_LANG['card_sn_exist'] = '卡片序號 %s 已經存在，請重新輸入';
$_LANG['go_list'] = '返回補貨列表';
$_LANG['continue_add'] = '繼續補貨';
$_LANG['uploadfile_fail'] = '文件上傳失敗';
$_LANG['batch_card_add_ok'] = '已成功新增了 %s 條補貨信息';

$_LANG['js_languages']['no_card_sn'] = '卡片序號和卡片密碼不能都為空。';
$_LANG['js_languages']['separator_not_null'] = '分隔符號不能為空。';
$_LANG['js_languages']['uploadfile_not_null'] = '請選擇要上傳的文件。';

$_LANG['use_help'] = '使用說明：' .
        '<ol>' .
          '<li>上傳文件應為CSV文件<br />' .
              '每行按卡片序號 卡片密碼 使用截至日期 順序填寫，中間可使用，；等分隔。不支持空格分隔數據<br />'.
          '<li>密碼，和截至日期可以為空，截至日期使用2006-11-6或2006/11/6等格式均可'.
          '<li>文件中最好不要出現中文，以免出現亂碼</li>' .
        '</ol>';

/*------------------------------------------------------ */
//-- 改變加密串
/*------------------------------------------------------ */

$_LANG['virtual_card_change'] = '更改加密串';
$_LANG['user_guide'] = '使用說明：' .
        '<ol>' .
          '<li>上傳文件應為CSV文件<br />' .
              'CSV文件第一列為卡片序號；第二列為卡片密碼；第三列為使用截至日期。<br />'.
              '(用EXCEL創建csv文件方法：在EXCEL中按卡號、卡片密碼、截至日期的順序填寫數據，完成後直接保存為csv文件即可)'.
          '<li>密碼，和截至日期可以為空，截至日期格式為2006-11-6或2006/11/6'.
          '<li>卡號、卡片密碼、截至日期中不要使用中文</li>' .
        '</ol>';
$_LANG['label_old_string'] = '原加密串';
$_LANG['label_new_string'] = '新加密串';

$_LANG['invalid_old_string'] = '原加密串不正確';
$_LANG['invalid_new_string'] = '新加密串不正確';
$_LANG['change_key_ok'] = '更改加密串成功';
$_LANG['same_string'] = '新加密串跟原加密串相同';

$_LANG['update_log'] = '更新記錄';
$_LANG['old_stat'] = '總共有記錄 %s 條。已使用新串加密的記錄有 %s 條，使用原串加密（待更新）的記錄有 %s 條，使用未知串加密的記錄有 %s 條。';
$_LANG['new_stat'] = '<strong>更新完畢</strong>，現在使用新串加密的記錄有 %s 條，使用未知串加密的記錄有 %s 條。';
$_LANG['update_error'] = '更新過程中出錯：%s';
$_LANG['js_languages']['updating_info'] = '<strong>正在更新</strong>（每次 100 條記錄）';
$_LANG['js_languages']['updated_info'] = '<strong>已更新</strong> <span id=\"updated\">0</span> 條記錄。';

?>