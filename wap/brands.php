<?php

/**
 * ECSHOP 品牌专区
 * ============================================================================
 * 版权所有 (C) 2005-2007 康盛创想（北京）科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 这是一个免费开源的软件；这意味着您可以在不用于商业目的的前提下对程序代码
 * 进行修改、使用和再发布。
 * ============================================================================
 * $Author: testyang $
 * $Date: 2008-01-28 18:33:06 +0800 (星期一, 28 一月 2008) $
 * $Id: brands.php 14079 2008-01-28 10:33:06Z testyang $
*/

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');

$b_id = !empty($_GET['b_id']) ? intval($_GET['b_id']) : 0;
if ($b_id <= 0)
{
    exit();
}
$brands_array = assign_brand_goods($b_id);
$smarty->assign('brands_array' , $brands_array);
$num = count($brands_array['goods']);
if ($num > 0)
{
    $page_num = '10';
    $page = !empty($_GET['page']) ? intval($_GET['page']) : 1;
    $pages = ceil($num / $page_num);
    if ($page <= 0)
    {
        $page = 1;
    }
    if ($pages == 0)
    {
        $pages = 1;
    }
    if ($page > $pages)
    {
        $page = $pages;
    }
    $i = 1;
    foreach ($brands_array['goods'] as $goods_data)
    {
        if (($i > ($page_num * ($page - 1 ))) && ($i <= ($page_num * $page)))
        {
            $price = empty($goods_info['promote_price_org']) ? $goods_data['shop_price'] : $goods_data['promote_price'];
            //$wml_data .= "<a href='goods.php?id={$goods_data['id']}'>".encode_output($goods_data['name'])."</a>[".encode_output($price)."]<br/>";
            $data[] = array('i' => $i , 'price' => encode_output($price) , 'id' => $goods_data['id'] , 'name' => encode_output($goods_data['name']));
        }
        $i++;
    }
    $smarty->assign('goods_data', $data);
    $pagebar = get_wap_pager($num, $page_num, $page, 'brands.php?b_id=' . $b_id, 'page');
    $smarty->assign('pagebar', $pagebar);
}

$brands_array = get_brands();
if (count($brands_array) > 1)
{
    foreach ($brands_array as $key => $brands_data)
    {
           $brands_array[$key]['brand_name'] =  encode_output($brands_data['brand_name']);
    }
    $smarty->assign('brand_id', $b_id);
    $smarty->assign('other_brands', $brands_array);
}

$smarty->assign('footer', get_footer());
$smarty->display('brands.wml');

?>