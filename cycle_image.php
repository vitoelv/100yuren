<?php

/**
 * ECSHOP 轮播图片程序
 * ============================================================================
 * 版权所有 (C) 2005-2007 康盛创想（北京）科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 这是一个免费开源的软件；这意味着您可以在不用于商业目的的前提下对程序代码
 * 进行修改、使用和再发布。
 * ============================================================================
 * $Author: testyang $
 * $Date: 2008-01-28 18:33:06 +0800 (星期一, 28 一月 2008) $
 * $Id: cycle_image.php 14079 2008-01-28 10:33:06Z testyang $
*/

define('IN_ECS', true);
define('INIT_NO_USERS', true);
define('INIT_NO_SMARTY', true);

require(dirname(__FILE__) . '/includes/init.php');

header('Content-Type: application/xml; charset=utf-8');
header('Cache-Control: no-cache, must-revalidate');
header('Expires: Thu, 27 Mar 1975 07:38:00 GMT');
header('Last-Modified: ' . date('r'));
header('Pragma: no-cache');

if (file_exists(ROOT_PATH . 'data/cycle_image.xml'))
{
    echo file_get_contents(ROOT_PATH . 'data/cycle_image.xml');
}
else
{
    echo '<?xml version="1.0" encoding="utf-8"?><bcaster><item item_url="images/200609/05.jpg" link="http://www.ecshop.com" /></bcaster>';
}
?>