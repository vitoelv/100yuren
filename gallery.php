<?php

/**
 * ECSHOP 商品相册
 * ============================================================================
 * 版权所有 (C) 2005-2007 康盛创想（北京）科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 这是一个免费开源的软件；这意味着您可以在不用于商业目的的前提下对程序代码
 * 进行修改、使用和再发布。
 * ============================================================================
 * $Author: testyang $
 * $Date: 2008-02-01 23:40:15 +0800 (星期五, 01 二月 2008) $
 * $Id: gallery.php 14122 2008-02-01 15:40:15Z testyang $
*/

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');

/* 参数 */
$_REQUEST['id']  = isset($_REQUEST['id'])  ? intval($_REQUEST['id'])  : 0; // 商品编号
$_REQUEST['img'] = isset($_REQUEST['img']) ? intval($_REQUEST['img']) : 0; // 图片编号

/* 获得商品名称 */
$sql = 'SELECT goods_name FROM ' . $ecs->table('goods') . "WHERE goods_id = '$_REQUEST[id]'";
$goods_name = $db->getOne($sql);

/* 如果该商品不存在，返回首页 */
if ($goods_name === false)
{
    ecs_header("Location: ./\n");

    exit;
}

/* 获得所有的图片 */
$sql = 'SELECT img_id, img_desc, thumb_url, img_url'.
       ' FROM ' .$ecs->table('goods_gallery').
       " WHERE goods_id = '$_REQUEST[id]' ORDER BY img_id";
$img_list = $db->getAll($sql);

$img_count = count($img_list);
if ($img_count == 0)
{
    /* 如果没有图片，返回商品详情页 */
    ecs_header('Location: goods.php?id=' . $_REQUEST['id'] . "\n");
    exit;
}
else
{
    /* 找到当前商品图片 */
    $current_key = 0;
    foreach ($img_list AS $key => $img)
    {
        if ($img['img_id'] == $_REQUEST['img'])
        {
            $current_key = $key;

            break;
        }
    }
}

$gallery = array(
    'goods_id'   => $_REQUEST['id'],
    'goods_name' => $goods_name,
    'img_id'     => $img_list[$current_key]['img_id'],
    'img_desc'   => $img_list[$current_key]['img_desc'],
    'img_url'    => $img_list[$current_key]['img_url']
);

/* 前一个和后一个图片 */
$prev_key = $current_key     > 0          ? $current_key - 1 : 0;
$next_key = $current_key + 1 < $img_count ? $current_key + 1 : $img_count - 1;

$smarty->assign('prev_img', $img_list[$prev_key]['img_id']);
$smarty->assign('next_img', $img_list[$next_key]['img_id']);
$smarty->assign('gallery',  $gallery);
$smarty->assign('thumbs',   $img_list);

$smarty->display('gallery.dwt');

?>