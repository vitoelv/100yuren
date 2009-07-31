<?php

/**
 * ECSHOP 调用日历 JS
 * ============================================================================
 * 版权所有 (C) 2005-2007 康盛创想（北京）科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 这是一个免费开源的软件；这意味着您可以在不用于商业目的的前提下对程序代码
 * 进行修改、使用和再发布。
 * ============================================================================
 * $Author: weberliu $
 * $Date: 2007-09-13 16:15:00 +0800 (星期四, 13 九月 2007) $
 * $Id: calendar.php 12056 2007-09-13 08:15:00Z weberliu $
*/

$lang = (!empty($_GET['lang'])) ? trim($_GET['lang']) : 'zh_cn';

if (!file_exists('../languages/' . $lang . '/calendar.php'))
{
    $lang = 'zh_cn';
}

header('Content-type: application/x-javascript; charset=utf-8');

include_once('../languages/' . $lang . '/calendar.php');

foreach ($_LANG['calendar_lang'] AS $cal_key => $cal_data)
{
    echo 'var ' . $cal_key . " = \"" . $cal_data . "\";\r\n";
}

include_once('./calendar/calendar.js');

?>