<?php

/**
 * ECSHOP 易宝推荐
 * ============================================================================
 * 版权所有 (C) 2005-2007 康盛创想（北京）科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 这是一个免费开源的软件；这意味着您可以在不用于商业目的的前提下对程序代码
 * 进行修改、使用和再发布。
 * ============================================================================
 * $Author: testyang $
 * $Date: 2008-02-01 23:40:15 +0800 (星期五, 01 二月 2008) $
 * $Id: ebao_commend.php 14122 2008-02-01 15:40:15Z testyang $
 */

define('IN_ECS', true);
require(dirname(__FILE__) . '/includes/init.php');
require('includes/lib_goods.php');

if ($_REQUEST['act'] == 'list')
{
    $smarty->assign('action_link',  array('text' => $_LANG['ebao_commend'], 'href' => 'ebao_commend.php?act=select'));
    $smarty->assign('ur_here', $_LANG['ebao_list']);
    $smarty->assign('cat_list',     cat_list(0, 0));
    $smarty->assign('brand_list',   get_brand_list());
    $smarty->assign('intro_list',   get_intro_list());
    $smarty->assign('lang',         $_LANG);
    $smarty->assign('record_count', '20');
    $smarty->assign('page_count',   '5');
    $smarty->assign('full_page',    1);

    /* 显示商品列表页面 */
    assign_query_info();
    $smarty->display('ebao_list.htm');
}
elseif ($_REQUEST['act'] == 'add')
{

}
elseif ($_REQUEST['act'] == 'select')
{

    /* 取得分类列表 */
    $smarty->assign('cat_list', cat_list());

    /* 取得品牌列表 */
    $smarty->assign('brand_list', get_brand_list());

    /* 参数赋值 */
    $ur_here = $_LANG['ebao_commend'];
    $smarty->assign('ur_here', $ur_here);

    /* 显示模板 */
    assign_query_info();
    $smarty->display('ebao_select.htm');
}
elseif ($_REQUEST['act'] == 'insert')
{
    $url = 'ebao_commend.php?act=list';

    ecs_header("Location: $url\n");
}
elseif ($_REQUEST['act'] == 'remove')
{

}
elseif ($_REQUEST['edit_name'] && $_REQUEST['name'])
{

}
elseif ($_REQUEST['act'] == 'get_goods')
{
    $filter = &new stdclass;

    $filter->cat_id = intval($_GET['cat_id']);
    $filter->brand_id = intval($_GET['brand_id']);
    $filter->keyword = $_GET['searchkey'];
    $filter->real_goods = -1;
    $arr = get_goods_list($filter);

    make_json_result($arr);
}

?>