<?php

/**
 * ECSHOP RSS Feed 生成程序
 * ============================================================================
 * 版权所有 (C) 2005-2007 康盛创想（北京）科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 这是一个免费开源的软件；这意味着您可以在不用于商业目的的前提下对程序代码
 * 进行修改、使用和再发布。
 * ============================================================================
 * $Author: testyang $
 * $Date: 2008-01-28 19:27:47 +0800 (星期一, 28 一月 2008) $
 * $Id: feed.php 14080 2008-01-28 11:27:47Z testyang $
*/

define('IN_ECS', true);
define('INIT_NO_USERS', true);
define('INIT_NO_SMARTY', true);

require(dirname(__FILE__) . '/includes/init.php');
require(ROOT_PATH . 'includes/cls_rss.php');

header('Content-Type: application/xml; charset=utf-8');
header('Cache-Control: no-cache, must-revalidate');
header('Expires: Fri, 14 Mar 1980 20:53:00 GMT');
header('Last-Modified: ' . date('r'));
header('Pragma: no-cache');

$ver = isset($_REQUEST['ver']) ? $_REQUEST['ver'] : '2.00';
$cat = isset($_REQUEST['cat']) ? ' AND ' . get_children(intval($_REQUEST['cat'])) : '';
$brd = isset($_REQUEST['brand']) ? ' AND g.brand_id=' . intval($_REQUEST['brand']) . ' ' : '';
$uri = $ecs->url();

$rss = new RSSBuilder('utf-8', $uri, $_CFG['shop_name'], $_CFG['shop_desc'], $uri . 'animated_favicon.gif');
$rss->addDCdata('', 'http://www.ecshop.com', date('r'));

$in_cat = $cat > 0 ? ' AND ' . get_children($cat) : '';

$sql = 'SELECT c.cat_name, g.goods_id, g.goods_name, g.goods_brief, g.last_update ' .
        'FROM ' . $ecs->table('category') . ' AS c, ' . $ecs->table('goods') . ' AS g ' .
        'WHERE c.cat_id = g.cat_id AND g.is_delete = 0 AND g.is_alone_sale = 1 ' . $brd . $cat .
        'ORDER BY g.goods_id DESC LIMIT 20';
$res = $db->query($sql);

if ($res !== false)
{
    while ($row = $db->fetchRow($res))
    {
        $item_url = build_uri('goods', array('gid' => $row['goods_id']), $row['goods_name']);
        $about    = $uri . $item_url;
        $title    = htmlspecialchars($row['goods_name']);
        $link     = $uri . $item_url . '&amp;from=rss';
        $desc     = htmlspecialchars($row['goods_brief']);
        $subject  = htmlspecialchars($row['cat_name']);
        $date     = local_date($_CFG['timezone'], $row['last_update']);

        $rss->addItem($about, $title, $link, $desc, $subject, $date);
    }

    $rss->outputRSS($ver);
}

?>