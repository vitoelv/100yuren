<?php

/**
 * ECSHOP 支付寶語言文件
 * ============================================================================
 * 版權所有 (C) 2005-2007 北京億商互動科技發展有限公司，並保留所有權利。
 * 網站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 這是一個免費開源的軟件；這意味著您可以在不用於商業目的的前提下對程序代碼
 * 進行修改、使用和再發布。
 * ============================================================================
 * $Author: wj $
 * $Date: 2007-10-23 10:27:06 +0800 (星期二, 23 十月 2007) $
 * $Id: alipay.php 13108 2007-10-23 02:27:06Z wj $
 */

global $_LANG;

$_LANG['alipay']            = '支付寶';
$_LANG['alipay_desc']       = '支付寶，是支付寶公司針對網上交易而特別推出的安全付款服務，其運作的實質是' .
        '以支付寶為信用中介，在買家確認收到商品前，由支付寶替買賣雙方暫時保管貨款的一種增值服務。' .
        '（網址：http://www.alipay.com）';
$_LANG['alipay_account']    = '支付寶帳戶';
$_LANG['alipay_key']        = '交易安全校驗碼';
$_LANG['alipay_partner']    = '合作者身份ID';
$_LANG['pay_button']        = '立即使用支付寶支付';

$_LANG['alipay_virtual_method'] = '選擇虛擬商品接口';
$_LANG['alipay_virtual_method_desc'] = '您可以選擇支付時採用的接口類型，不過這和支付寶的帳號類型有關，具體情況請咨詢支付寶';
$_LANG['alipay_virtual_method_range'][0] = '使用普通虛擬商品交易接口';
$_LANG['alipay_virtual_method_range'][1] = '使用即時到帳交易接口';

$_LANG['alipay_real_method'] = '選擇實體商品接口';
$_LANG['alipay_real_method_desc'] = '您可以選擇支付時採用的接口類型，不過這和支付寶的帳號類型有關，具體情況請咨詢支付寶';
$_LANG['alipay_real_method_range'][0] = '使用普通實物商品交易接口';
$_LANG['alipay_real_method_range'][1] = '使用即時到帳交易接口';

$_LANG['is_instant'] = '是否開通即時到帳';
$_LANG['is_instant_desc'] = '即時到帳功能默認未開通，當您確認您的帳號已經開通該功再選擇已開通。當你選擇未開通時，所有交易使用普通實體商品接口';
$_LANG['is_instant_range'][0] = '未開通';
$_LANG['is_instant_range'][1] = '已經開通';

?>