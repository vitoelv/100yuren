<?php

/**
 * ECSHOP 支付宝语言文件
 * ============================================================================
 * 版权所有 (C) 2005-2007 康盛创想（北京）科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 这是一个免费开源的软件；这意味着您可以在不用于商业目的的前提下对程序代码
 * 进行修改、使用和再发布。
 * ============================================================================
 * $Author: wj $
 * $Date: 2007-10-23 10:27:06 +0800 (星期二, 23 十月 2007) $
 * $Id: alipay.php 13108 2007-10-23 02:27:06Z wj $
 */

global $_LANG;

$_LANG['alipay'] = '支付宝';
$_LANG['alipay_desc'] = '支付宝，是支付宝公司针对网上交易而特别推出的安全付款服务，其运作的实质是' .
        '以支付宝为信用中介，在买家确认收到商品前，由支付宝替买卖双方暂时保管货款的一种增值服务。' .
        '（网址：http://www.alipay.com）';
$_LANG['alipay_account'] = '支付宝帐户';
$_LANG['alipay_key'] = '交易安全校验码';
$_LANG['alipay_partner'] = '合作者身份ID';
$_LANG['pay_button'] = '立即使用支付宝支付';

$_LANG['alipay_virtual_method'] = '选择虚拟商品接口';
$_LANG['alipay_virtual_method_desc'] = '您可以选择支付时采用的接口类型，不过这和支付宝的帐号类型有关，具体情况请咨询支付宝';
$_LANG['alipay_virtual_method_range'][0] = '使用普通虚拟商品交易接口';
$_LANG['alipay_virtual_method_range'][1] = '使用即时到帐交易接口';

$_LANG['alipay_real_method'] = '选择实体商品接口';
$_LANG['alipay_real_method_desc'] = '您可以选择支付时采用的接口类型，不过这和支付宝的帐号类型有关，具体情况请咨询支付宝';
$_LANG['alipay_real_method_range'][0] = '使用普通实物商品交易接口';
$_LANG['alipay_real_method_range'][1] = '使用即时到帐交易接口';

$_LANG['is_instant'] = '是否开通即时到帐';
$_LANG['is_instant_desc'] = '即时到帐功能默认未开通，当您确认您的帐号已经开通该功再选择已开通。当你选择未开通时，所有交易使用普通实体商品接口';
$_LANG['is_instant_range'][0] = '未开通';
$_LANG['is_instant_range'][1] = '已经开通';

?>