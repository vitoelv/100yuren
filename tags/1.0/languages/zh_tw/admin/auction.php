<?php

/**
 * ECSHOP 管理中心拍賣活動語言文件
 * ============================================================================
 * 版權所有 (C) 2005-2007 北京億商互動科技發展有限公司，並保留所有權利。
 * 網站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 這是一個免費開源的軟件；這意味著您可以在不用於商業目的的前提下對程序代碼
 * 進行修改、使用和再發佈。
 * ============================================================================
 * $Author: fenghl $
 * $Date: 2007-12-10 11:02:15 +0800 (星期一, 10 十二月 2007) $
 * $Id: auction.php 13847 2007-12-10 03:02:15Z fenghl $
 */

/* menu */
$_LANG['auction_list'] = '拍賣活動列表';
$_LANG['add_auction'] = '新增拍賣活動';
$_LANG['edit_auction'] = '編輯拍賣活動';
$_LANG['auction_log'] = '拍賣活動出價記錄';
$_LANG['continue_add_auction'] = '繼續新增拍賣活動';
$_LANG['back_auction_list'] = '返回拍賣活動列表';
$_LANG['add_auction_ok'] = '新增拍賣活動成功';
$_LANG['edit_auction_ok'] = '編輯拍賣活動成功';
$_LANG['settle_deposit_ok'] = '處理凍結的保證金成功';

/* list */
$_LANG['act_is_going'] = '僅顯示進行中的活動';
$_LANG['act_name'] = '拍賣活動名稱';
$_LANG['goods_name'] = '商品名稱';
$_LANG['start_time'] = '開始時間';
$_LANG['end_time'] = '結束時間';
$_LANG['deposit'] = '保證金';
$_LANG['start_price'] = '起標價';
$_LANG['end_price'] = '直接購買價';
$_LANG['amplitude'] = '加價幅度';
$_LANG['auction_not_exist'] = '您要操作的拍賣活動不存在';
$_LANG['auction_cannot_remove'] = '該拍賣活動已經有人出價，不能刪除';
$_LANG['js_languages']['batch_drop_confirm'] = '您確實要刪除選取的拍賣活動嗎？';
$_LANG['batch_drop_ok'] = '操作完成（已經有人出價的拍賣活動不能刪除）';
$_LANG['no_record_selected'] = '沒有選擇記錄';

/* info */
$_LANG['label_act_name'] = '拍賣活動名稱：';
$_LANG['notice_act_name'] = '如果留空，取拍賣商品的名稱（該名稱僅用於後台，前台不會顯示）';
$_LANG['label_act_desc'] = '拍賣活動描述：';
$_LANG['label_search_goods'] = '根據商品編號、名稱或貨號搜尋商品';
$_LANG['label_goods_name'] = '拍賣商品名稱：';
$_LANG['label_start_time'] = '拍賣開始時間：';
$_LANG['label_end_time'] = '拍賣結束時間：';
$_LANG['label_status'] = '當前狀態：';
$_LANG['label_start_price'] = '起標價：';
$_LANG['label_end_price'] = '直接購買價：';
$_LANG['label_amplitude'] = '加價幅度：';
$_LANG['label_deposit'] = '保證金：';
$_LANG['bid_user_count'] = '已有 %s 個買家出價';
$_LANG['settle_frozen_money'] = '怎樣處理買家的凍結資金？';
$_LANG['unfreeze'] = '解凍保證金';
$_LANG['deduct'] = '扣除保證金';
$_LANG['invalid_status'] = '當前狀態不正確';
$_LANG['no_deposit'] = '沒有保證金需要處理';
$_LANG['unfreeze_auction_deposit'] = '解凍拍賣活動的保證金：%s';
$_LANG['deduct_auction_deposit'] = '扣除拍賣活動的保證金：%s';

$_LANG['auction_status'][PRE_START] = '未開始';
$_LANG['auction_status'][UNDER_WAY] = '進行中';
$_LANG['auction_status'][FINISHED] = '已結束';
$_LANG['auction_status'][SETTLED] = '已結束';

$_LANG['pls_search_goods'] = '請先搜尋商品';
$_LANG['search_result_empty'] = '沒有找到商品，請重新搜尋';

$_LANG['pls_select_goods'] = '請選擇拍賣商品';
$_LANG['goods_not_exist'] = '您要拍賣的商品不存在';

$_LANG['js_languages']['start_price_not_number'] = '起標價格式不正確（數字）';
$_LANG['js_languages']['end_price_not_number'] = '直接購買價格式不正確（數字）';
$_LANG['js_languages']['end_gt_start'] = '一口價應該大於起拍價';
$_LANG['js_languages']['amplitude_not_number'] = '加價幅度格式不正確（數字）';
$_LANG['js_languages']['deposit_not_number'] = '保證金格式不正確（數字）';
$_LANG['js_languages']['start_lt_end'] = '拍賣開始時間不能大於結束時間';

/* log */
$_LANG['bid_user'] = '買家';
$_LANG['bid_price'] = '出價';
$_LANG['bid_time'] = '時間';
$_LANG['status'] = '狀態';

?>