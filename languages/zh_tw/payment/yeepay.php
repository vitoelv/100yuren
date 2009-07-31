<?php

/**
 * ECSHOP YeePay易寶語言文件
 * ============================================================================
 * 版權所有 (C) 2005-2007 北京億商互動科技發展有限公司，並保留所有權利。
 * 網站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 這是一個免費開源的軟件；這意味著您可以在不用於商業目的的前提下對程序代碼
 * 進行修改、使用和再發布。
 * ============================================================================
 * $Author: scottye $
 * $Date: 2007-11-30 16:00:07 +0800 (星期五, 30 十一月 2007) $
 * $Id: yeepay.php 13790 2007-11-30 08:00:07Z scottye $
 */

global $_LANG;

$_LANG['yeepay']     = 'YeePay易寶';
$_LANG['yp_desc']    = 'YeePay易寶（北京通融通信息技術有限公司）是專業從事多元化電子支付業務一站式服務的領跑者。在立足於網上支付的同時，YeePay易寶不斷創新，將互聯網、手機、固定電話整合在一個平台上，繼短信支付、手機充值之後，首家推出了YeePay易寶電話支付業務，真正實現了離線支付，為更多傳統行業搭建了電子支付的高速公路。YeePay易寶融合世界先進的電子支付文化，聚合眾多金融、電信、IT、互聯網等領域內的巨擘，旨在通過創新的支付機制，推動中國電子商務新進程。YeePay易寶致力於成為世界一流的電子支付應用和服務提供商，專注於金融增值服務和移動增值服務兩大領域，創新並推廣多元化、低成本的、安全有效的支付服務。' .
        '<form id="form1" name="form1" method="post" action="https://www.yeepay.com/selfservice/AgentService.action" target="_blank">' .
        '<input name="p0_Cmd" type="hidden" id="p0_Cmd" value="AgentRegister" />' .
        '<input name="p1_MerId" type="hidden" id="p1_MerId" value="10000383855" />' .
        '<input name="hmac" type="hidden" id="hmac" value="bd9e7b0f85bddedb105eebb136632772" />' .
        '<input type="submit" name="Submit" value="立即註冊" /></form>';
$_LANG['yp_account'] = '商戶編號';
$_LANG['yp_key']     = '商戶密鑰';
$_LANG['pay_button'] = '立即使用YeePay易寶支付';

?>