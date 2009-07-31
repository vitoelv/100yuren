<?php

/**
 * ECSHOP YeePay易宝语言文件
 * ============================================================================
 * 版权所有 (C) 2005-2007 康盛创想（北京）科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 这是一个免费开源的软件；这意味着您可以在不用于商业目的的前提下对程序代码
 * 进行修改、使用和再发布。
 * ============================================================================
 * $Author: scottye $
 * $Date: 2007-11-30 16:00:07 +0800 (星期五, 30 十一月 2007) $
 * $Id: yeepay.php 13790 2007-11-30 08:00:07Z scottye $
 */

global $_LANG;

$_LANG['yeepay']     = 'YeePay易宝';
$_LANG['yp_desc']    = 'YeePay易宝（北京通融通信息技术有限公司）是专业从事多元化电子支付业务一站式服务的领跑者。在立足于网上支付的同时，YeePay易宝不断创新，将互联网、手机、固定电话整合在一个平台上，继短信支付、手机充值之后，首家推出了YeePay易宝电话支付业务，真正实现了离线支付，为更多传统行业搭建了电子支付的高速公路。YeePay易宝融合世界先进的电子支付文化，聚合众多金融、电信、IT、互联网等领域内的巨擘，旨在通过创新的支付机制，推动中国电子商务新进程。YeePay易宝致力于成为世界一流的电子支付应用和服务提供商，专注于金融增值服务和移动增值服务两大领域，创新并推广多元化、低成本的、安全有效的支付服务。' .
        '<form id="form1" name="form1" method="post" action="https://www.yeepay.com/selfservice/AgentService.action" target="_blank">' .
        '<input name="p0_Cmd" type="hidden" id="p0_Cmd" value="AgentRegister" />' .
        '<input name="p1_MerId" type="hidden" id="p1_MerId" value="10000383855" />' .
        '<input name="hmac" type="hidden" id="hmac" value="bd9e7b0f85bddedb105eebb136632772" />' .
        '<input type="submit" name="Submit" value="立即注册" /></form>';
$_LANG['yp_account'] = '商户编号';
$_LANG['yp_key']     = '商户密钥';
$_LANG['pay_button'] = '立即使用YeePay易宝支付';
?>