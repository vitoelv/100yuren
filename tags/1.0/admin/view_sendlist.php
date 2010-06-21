<?php

/**
 * ECSHOP 程序说明
 * ===========================================================
 * 版权所有 (C) 2005-2007 康盛创想（北京）科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com
 * ----------------------------------------------------------
 * 这是一个免费开源的软件；这意味着您可以在不用于商业目的的前提下对程序代码
 * 进行修改、使用和再发布。
 * ==========================================================
 * $Author: testyang $
 * $Date: 2008-01-28 18:33:06 +0800 (星期一, 28 一月 2008) $
 * $Id: view_sendlist.php 14079 2008-01-28 10:33:06Z testyang $
 */

define('IN_ECS', true);
require(dirname(__FILE__) . '/includes/init.php');
admin_priv('view_sendlist');
if ($_REQUEST['act'] == 'list')
{
    $listdb = get_sendlist();
    $smarty->assign('ur_here',      $_LANG['view_sendlist']);
    $smarty->assign('full_page',  1);

    $smarty->assign('listdb',      $listdb['listdb']);
    $smarty->assign('filter',       $listdb['filter']);
    $smarty->assign('record_count', $listdb['record_count']);
    $smarty->assign('page_count',   $listdb['page_count']);

    assign_query_info();
    $smarty->display('view_sendlist.htm');
}
elseif ($_REQUEST['act'] == 'query')
{
    $listdb = get_sendlist();
    $smarty->assign('listdb',      $listdb['listdb']);
    $smarty->assign('filter',       $listdb['filter']);
    $smarty->assign('record_count', $listdb['record_count']);
    $smarty->assign('page_count',   $listdb['page_count']);

    $sort_flag  = sort_flag($listdb['filter']);
    $smarty->assign($sort_flag['tag'], $sort_flag['img']);

    make_json_result($smarty->fetch('view_sendlist.htm'), '', array('filter' => $listdb['filter'], 'page_count' => $listdb['page_count']));
}
elseif ($_REQUEST['act'] == 'del')
{
    $id = (int)$_REQUEST['id'];
    $sql = "DELETE FROM " . $GLOBALS['ecs']->table('email_sendlist') . " WHERE id = '$id' LIMIT 1";
    $db->query($sql);
    $links[] = array('text' => $_LANG['view_sendlist'], 'href' => 'view_sendlist.php?act=list');
    sys_msg($_LANG['del_ok'], 0, $links);
}

/*------------------------------------------------------ */
//-- 批量删除
/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'batch_remove')
{
    /* 检查权限 */
    if (isset($_POST['checkboxes']))
    {
        $sql = "DELETE FROM " . $ecs->table('email_sendlist') . " WHERE id " . db_create_in($_POST['checkboxes']);
        $db->query($sql);

        $links[] = array('text' => $_LANG['view_sendlist'], 'href' => 'view_sendlist.php?act=list');
        sys_msg($_LANG['del_ok'], 0, $links);
    }
    else
    {
        $links[] = array('text' => $_LANG['view_sendlist'], 'href' => 'view_sendlist.php?act=list');
        sys_msg($_LANG['no_select'], 0, $links);
    }
}

function get_sendlist()
{
    $result = get_filter();
    if ($result === false)
    {
        $filter['sort_by']      = empty($_REQUEST['sort_by']) ? 'pri' : trim($_REQUEST['sort_by']);
        $filter['sort_order']   = empty($_REQUEST['sort_order']) ? 'DESC' : trim($_REQUEST['sort_order']);

        $sql = "SELECT count(*) FROM " . $GLOBALS['ecs']->table('email_sendlist') . " e LEFT JOIN " . $GLOBALS['ecs']->table('mail_templates') . " m ON e.template_id = m.template_id";
        $filter['record_count'] = $GLOBALS['db']->getOne($sql);

        /* 分页大小 */
        $filter = page_and_size($filter);

        /* 查询 */
        $sql = "SELECT e.id, e.email, e.pri, e.error, FROM_UNIXTIME(e.last_send) AS last_send, m.template_subject, m.type FROM " . $GLOBALS['ecs']->table('email_sendlist') . " e LEFT JOIN " . $GLOBALS['ecs']->table('mail_templates') . " m ON e.template_id = m.template_id" .
            " ORDER by " . $filter['sort_by'] . ' ' . $filter['sort_order'] .
           " LIMIT " . $filter['start'] . ",$filter[page_size]";
        set_filter($filter, $sql);
    }
    else
    {
        $sql    = $result['sql'];
        $filter = $result['filter'];
    }

    $listdb = $GLOBALS['db']->getAll($sql);

    $arr = array('listdb' => $listdb, 'filter' => $filter, 'page_count' => $filter['page_count'], 'record_count' => $filter['record_count']);

    return $arr;
}
?>