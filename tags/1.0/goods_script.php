<?php

/**
 * ECSHOP 生成商品列表
 * ============================================================================
 * 版权所有 (C) 2005-2007 康盛创想（北京）科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 这是一个免费开源的软件；这意味着您可以在不用于商业目的的前提下对程序代码
 * 进行修改、使用和再发布。
 * ============================================================================
 * $Author: testyang $
 * $Date: 2008-01-28 18:33:06 +0800 (星期一, 28 一月 2008) $
 * $Id: goods_script.php 14079 2008-01-28 10:33:06Z testyang $
 */

define('IN_ECS', true);
define('INIT_NO_USERS', true);

require(dirname(__FILE__) . '/includes/init.php');

if ((DEBUG_MODE & 2) != 2)
{
    $smarty->caching = true;
}

$charset = empty($_GET['charset']) ? 'UTF8' : $_GET['charset'];
header('content-type: application/x-javascript; charset=' . ($charset == 'UTF8' ? 'utf-8' : $charset));

/*------------------------------------------------------ */
//-- 判断是否存在缓存，如果存在则调用缓存，反之读取相应内容
/*------------------------------------------------------ */
/* 缓存编号 */
$cache_id = sprintf('%X', crc32($_SERVER['QUERY_STRING']));

$tpl = ROOT_PATH . 'data/goods_script.html';
if (!$smarty->is_cached($tpl, $cache_id))
{
    $time = gmtime();
    /* 根据参数生成查询语句 */
    if (empty($_GET['type']))
    {
        $goods_url = $ecs->url() . 'affiche.php?ad_id=-1&amp;from=' . urlencode(@$_GET['sitename']) . '&amp;goods_id=';

        $sql  = 'SELECT goods_id, goods_name, market_price, goods_thumb, RAND() AS rnd, ' .
                    "IF(is_promote = 1 AND '$time' >= promote_start_date AND ".
                    "'$time' <= promote_end_date, promote_price, shop_price) AS goods_price " .
                'FROM ' . $ecs->table('goods') . ' AS g ' .
                "WHERE is_delete = '0' AND is_on_sale = '1' AND is_alone_sale = '1' ";
        if (!empty($_GET['cat_id']))
        {
            $sql .= ' AND ' . get_children(intval($_GET['cat_id']));
        }
        if (!empty($_GET['brand_id']))
        {
            $sql .= " AND brand_id = '" . intval($_GET['brand_id']) . "'";
        }
        if (!empty($_GET['intro_type']))
        {
            $_GET['intro_type'] = trim($_GET['intro_type']);

            if ($_GET['intro_type'] == 'is_best' || $_GET['intro_type'] == 'is_new' || $_GET['intro_type'] == 'is_hot' || $_GET['intro_type'] == 'is_promote' || $_GET['intro_type'] == 'is_random')
            {
                if ($_GET['intro_type'] == 'is_random')
                {
                    $sql .= ' ORDER BY rnd';
                }
                else
                {
                    $sql .= " AND " . $_GET['intro_type'] . " = 1 ORDER BY add_time DESC";
                    if ($_GET['intro_type'] == 'is_promote')
                    {
                        $sql  .= " AND promote_start_date <= '$time' AND promote_end_date >= '$time'";
                    }
                }
            }
        }
    }
    elseif ($_GET['type'] == 'collection')
    {
        $uid = (int)$_GET['u'];
        $goods_url = $ecs->url() . "goods.php?u=$uid&id=";
        $sql = "SELECT g.goods_id, g.goods_name, g.market_price, g.goods_thumb, IF(g.is_promote = 1 AND '$time' >= g.promote_start_date AND ".
           "'$time' <= g.promote_end_date, g.promote_price, g.shop_price) AS goods_price FROM " . $ecs->table('goods') . " g LEFT JOIN " . $ecs->table('collect_goods') . " c ON g.goods_id = c.goods_id " .
               " WHERE c.user_id = '$uid'";
    }
    $sql .= " LIMIT " . (!empty($_GET['goods_num']) ? intval($_GET['goods_num']) : 10);
    $res = $db->query($sql);

    $goods_list = array();
    while ($goods = $db->fetchRow($res))
    {
        // 转换编码
        $goods['goods_price'] = price_format($goods['goods_price']);
        if ($charset != 'UTF8')
        {
            $goods['goods_name']  = ecs_iconv('UTF8', $charset, htmlentities($goods['goods_name'], ENT_QUOTES, 'UTF-8'));
            $goods['goods_price'] = ecs_iconv('UTF8', $charset, $goods['goods_price']);
        }
        $goods_list[] = $goods;
    }
    $smarty->assign('goods_list', $goods_list);

    /* 排列方式 */
    $arrange = empty($_GET['arrange']) || !in_array($_GET['arrange'], array('h', 'v')) ? 'h' : $_GET['arrange'];
    $smarty->assign('arrange', $arrange);

    /* 是否需要图片 */
    $need_image = empty($_GET['need_image']) || $_GET['need_image'] == 'true' ? 1 : 0;
    $smarty->assign('need_image', $need_image);

    /* 图片大小 */
    $smarty->assign('thumb_width', intval($_CFG['thumb_width']));
    $smarty->assign('thumb_height', intval($_CFG['thumb_height']));

    /* 网站根目录 */
    $smarty->assign('url', $ecs->url());

    /* 商品页面连接 */
    $smarty->assign('goods_url', $goods_url);
}
$output = $smarty->fetch($tpl, $cache_id);
$output = str_replace("\r", '', $output);
$output = str_replace("\n", '', $output);

echo "document.write('$output');";

?>
