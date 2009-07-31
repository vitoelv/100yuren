<?php

/**
 * ECSHOP YeePay language file
 * ============================================================================
 * All right reserved (C) 2005-2007 Beijing Yi Shang Interactive Technology 
 * Development Ltd.
 * Web site: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * This is a free/open source software；it mean that you can modify, use and 
 * republish the program code, on the premise of that your behavior is not for 
 * commercial purposes.
 * ============================================================================
 * $Author: paulgao $
 * $Date: 2007-02-05 17:51:16 +0800 (Monday, 05 February 2007) $
 * $Id: yeepay.php 5159 2007-02-05 09:51:16Z paulgao $
 */

global $_LANG;

$_LANG['yeepay']     = 'YeePay';
$_LANG['yp_desc']    = 'YeePay is a leading e-payment service provider in China. Our mission is to provide an integrated payment platform that enables any consumer or business in China to send and receive payments on Internet, mobile or telephone securely, conveniently and cost-effectively. YeePay has formed strategic partnerships with major banks and carriers. Our virtual payment network connects all the major banks, carriers and merchants, allowing online and offline users to make payments anywhere anytime, saving time and money and enhancing lifestyle. YeePay was founded in 2003 and has offices in Beijing,China and Silicon Valley. YeePay has rapidly expanded its services to a growing number of merchants and consumers. ' .
        '<form id="form1" name="form1" method="post" action="https://www.yeepay.com/selfservice/AgentService.action" target="_blank">' .
        '<input name="p0_Cmd" type="hidden" id="p0_Cmd" value="AgentRegister" />' .
        '<input name="p1_MerId" type="hidden" id="p1_MerId" value="10000383855" />' .
        '<input name="hmac" type="hidden" id="hmac" value="bd9e7b0f85bddedb105eebb136632772" />' .
        '<input type="submit" name="Submit" value="立即注册" /></form>';
$_LANG['yp_account'] = 'YeePay accounts';
$_LANG['yp_key']     = 'YeePay key';
$_LANG['pay_button'] = 'Pay in YeePay immediately';

?>