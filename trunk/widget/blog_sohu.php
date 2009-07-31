<?php

/**
 * ECSHOP SOHU BLOG widget
 * ============================================================================
 * 版权所有 (C) 2005-2007 康盛创想（北京）科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 这是一个免费开源的软件；这意味着您可以在不用于商业目的的前提下对程序代码
 * 进行修改、使用和再发布。
 * ============================================================================
 * $Author: testyang $
 * $Date: 2008-02-22 16:13:56 +0800 (星期五, 22 二月 2008) $
 * $Id: blog_sohu.php 14182 2008-02-22 08:13:56Z testyang $
*/

define('IN_ECS', true);
define('INIT_NO_USERS', true);
define('INIT_NO_SMARTY', true);
require(dirname(dirname(__FILE__)) . '/includes/init.php');
include_once(ROOT_PATH . 'includes/cls_json.php');

$num = !empty($_GET['num']) ? intval($_GET['num']) : 10;
if ($num <= 0 || $num > 10)
{
    $num = 10;
}
$json = new JSON;
$result = $db->getAll("SELECT goods_id, goods_name, shop_price, promote_price, promote_start_date, promote_end_date, goods_brief, goods_thumb FROM " . $ecs->table('goods') . " WHERE is_on_sale = 1 AND is_alone_sale = 1 AND is_delete = 0 ORDER BY rand() LIMIT 0, $num");
$idx = 0;
$content['domain'] = 'http://' . $_SERVER['SERVER_NAME'];
//$content['domain'] .= substr($_SERVER['REQUEST_URI'], 0 , strrpos($_SERVER['REQUEST_URI'], '/widget')) . '/';
$goods = array();
foreach ($result as $row)
{
    if ($row['promote_price'] > 0)
    {
        $promote_price = bargain_price($row['promote_price'], $row['promote_start_date'], $row['promote_end_date']);
        $goods[$idx]['promote_price'] = $promote_price > 0 ? price_format($promote_price) : '';
    }
    else
    {
        $goods[$idx]['promote_price'] = '';
    }
    $goods[$idx]['goods_id'] = $row['goods_id'];
    $goods[$idx]['goods_name'] = $row['goods_name'];
    $goods[$idx]['shop_price'] = price_format($row['shop_price']);
    $goods[$idx]['goods_brief'] = $row['goods_brief'];
    $goods[$idx]['goods_thumb'] = empty($row['goods_thumb']) ? $GLOBALS['_CFG']['no_picture'] : $row['goods_thumb'];
    $idx++;
}
$content['goods'] = $goods;
die($json->encode($content));

?>