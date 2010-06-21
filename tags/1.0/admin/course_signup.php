<?php

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');
require_once(ROOT_PATH . "includes/fckeditor/fckeditor.php");
require_once(ROOT_PATH . 'includes/cls_image.php');

/*初始化数据交换对象 */
$exc   = new exchange($ecs->table("course_signup"), $db, 'id', 'business_type');

/* 允许上传的文件类型 */
$allow_file_types = '|GIF|JPG|PNG|BMP|SWF|DOC|XLS|PPT|MID|WAV|ZIP|RAR|PDF|CHM|RM|TXT|';

/*------------------------------------------------------ */
//-- 文章列表
/*------------------------------------------------------ */
if ($_REQUEST['act'] == 'list')
{
    /* 取得过滤条件 */
    $filter = array();
    //$smarty->assign('cat_select',  article_cat_list(0));
    $smarty->assign('ur_here',      $_LANG['03_student_list']);
    $smarty->assign('action_link',  array('text' => $_LANG['student_add'], 'href' => 'course_signup.php?act=add'));
    $smarty->assign('full_page',    1);
    $smarty->assign('filter',       $filter);

    $student_list = get_studentlist();

    $smarty->assign('student_list',    $student_list['arr']);
    $smarty->assign('filter',          $student_list['filter']);
    $smarty->assign('record_count',    $student_list['record_count']);
    $smarty->assign('page_count',      $student_list['page_count']);

    $sort_flag  = sort_flag($student_list['filter']);
    $smarty->assign($sort_flag['tag'], $sort_flag['img']);

    assign_query_info();
    $smarty->display('student_list.htm');
}

/*------------------------------------------------------ */
//-- 翻页，排序
/*------------------------------------------------------ */
elseif ($_REQUEST['act'] == 'query')
{
    //check_authz_json('article_manage');

    $student_list = get_studentlist();

    $smarty->assign('student_list',    $student_list['arr']);
    $smarty->assign('filter',          $student_list['filter']);
    $smarty->assign('record_count',    $student_list['record_count']);
    $smarty->assign('page_count',      $student_list['page_count']);

    $sort_flag  = sort_flag($student_list['filter']);
    $smarty->assign($sort_flag['tag'], $sort_flag['img']);

    make_json_result($smarty->fetch('student_list.htm'), '',
        array('filter' => $student_list['filter'], 'page_count' => $student_list['page_count']));
}

/*------------------------------------------------------ */
//-- 添加报名学员
/*------------------------------------------------------ */
if ($_REQUEST['act'] == 'add')
{
    /* 权限判断 */
    //admin_priv('article_manage');

    /*初始化*/
    $student = array();
    $student['is_open'] = 1;

    $smarty->assign('student',     $student);
    $smarty->assign('ur_here',     $_LANG['student_add']);
    $smarty->assign('action_link', array('text' => $_LANG['03_student_list'], 'href' => 'course_signup.php?act=list'));
    
    $smarty->assign('form_action', 'insert');

    assign_query_info();
    $smarty->display('student_info.htm');
}

/*------------------------------------------------------ */
//-- 添加文章
/*------------------------------------------------------ */
if ($_REQUEST['act'] == 'insert')
{
    /* 权限判断 */
    //admin_priv('article_manage');

    /*插入数据*/   
    $sql = "INSERT INTO ".$ecs->table('course_signup')."(user_name, true_name, sex, record, telephone, ".
                "mobile_phone, address, postcode, postscript, course_id, course_name, ". 
                "course_school, signup_date, status, request_ip, request_url, qq, ". 
                "business_type, email, idcardno, age, payment,admin_verify,admin_comment, aux1, ". 
                "aux2) ".
            "VALUES ('$_POST[user_name]', '$_POST[true_name]', '$_POST[sex]', '$_POST[record]', ".
                "'$_POST[telephone]', '$_POST[mobile_phone]', '$_POST[address]', '$_POST[postcode]', ".
                "'$_POST[postscript]', '$_POST[course_id]', '$_POST[course_name]', '$_POST[course_school]', ".
                "'$_POST[signup_date]', '$_POST[status]', '$_POST[request_ip]', '$_POST[request_url]', ".
                "'$_POST[qq]', '$_POST[business_type]', '$_POST[email]', '$_POST[idcardno]', ".
                "'$_POST[age]', '$_POST[payment]', '$_POST[admin_verify]', ".    
    			"'$_POST[admin_comment]', '$_POST[aux1]', ".              
                "'$_POST[aux2]')";    				
    
    $db->query($sql);

    $link[0]['text'] = $_LANG['continue_add'];
    $link[0]['href'] = 'course_signup.php?act=add';

    $link[1]['text'] = $_LANG['back_list'];
    $link[1]['href'] = 'course_signup.php?act=list';

    //admin_log($_POST['title'],'add','student');

    clear_cache_files(); // 清除相关的缓存文件

    sys_msg($_LANG['studentadd_succeed'],0, $link);
}

/*------------------------------------------------------ */
//-- 编辑
/*------------------------------------------------------ */
if ($_REQUEST['act'] == 'edit')
{
    /* 权限判断 */
    //admin_priv('article_manage');

    /* 取文章数据 */
    $sql = "SELECT * FROM " .$ecs->table('course_signup'). " WHERE id='$_REQUEST[id]'";
    $student = $db->GetRow($sql);

    $smarty->assign('student',     $student);
    $smarty->assign('ur_here',     $_LANG['student_edit']);
    $smarty->assign('action_link', array('text' => $_LANG['03_student_list'], 'href' => 'course_signup.php?act=list&' . list_link_postfix()));
    $smarty->assign('form_action', 'update');

    assign_query_info();
    $smarty->display('student_info.htm');
}

if ($_REQUEST['act'] =='update')
{
    /* 权限判断 */
    //admin_priv('article_manage');
    if ($exc->edit("user_name='$_POST[user_name]', true_name='$_POST[true_name]', sex='$_POST[sex]', record='$_POST[record]', 
    				telephone='$_POST[telephone]',mobile_phone='$_POST[mobile_phone]', address ='$_POST[address]', 
    				postcode ='$_POST[postcode]', postscript='$_POST[postscript]', course_id ='$_POST[course_id]', 
    				course_name ='$_POST[course_name]', course_school='$_POST[course_school]', signup_date ='$_POST[signup_date]',
    				status ='$_POST[status]', request_ip='$_POST[request_ip]', request_url ='$_POST[request_url]', 
    				qq ='$_POST[qq]',business_type='$_POST[business_type]', aux1 ='$_POST[aux1]', aux2 ='$_POST[aux2]',
    				admin_verify ='$_POST[admin_verify]',admin_comment='$_POST[admin_comment]',     				 
    				email='$_POST[email]', idcardno='$_POST[idcardno]', age='$_POST[age]', payment='$_POST[payment]' ", $_POST['id']))
    {
        $link[0]['text'] = $_LANG['back_list'];
        $link[0]['href'] = 'course_signup.php?act=list&' . list_link_postfix();

        $note = sprintf($_LANG['studentedit_succeed'], stripslashes($_POST['user_name']));
        //admin_log($_POST['title'], 'edit', 'article');

        clear_cache_files();

        sys_msg($note, 0, $link);
    }
    else
    {
        die($db->error());
    }
}

/* 获得学员列表 */
function get_studentlist()
{
    $result = get_filter();
    if ($result === false)
    {
        $filter = array();
        $filter['keyword']    = empty($_REQUEST['keyword']) ? '' : trim($_REQUEST['keyword']);
        $filter['sort_by']    = empty($_REQUEST['sort_by']) ? 'a.id' : trim($_REQUEST['sort_by']);
        $filter['sort_order'] = empty($_REQUEST['sort_order']) ? 'DESC' : trim($_REQUEST['sort_order']);

        $where = '';
        if (!empty($filter['keyword']))
        {
            $where = " AND a.true_name LIKE '%" . mysql_like_quote($filter['keyword']) . "%'";
        }

        /* 学员总数 */
        $sql = 'SELECT COUNT(*) FROM ' .$GLOBALS['ecs']->table('course_signup'). ' AS a '.
               'LEFT JOIN ' .$GLOBALS['ecs']->table('goods'). ' AS ac ON ac.goods_id = a.course_id '.
               'WHERE 1 ' .$where;
        $filter['record_count'] = $GLOBALS['db']->getOne($sql);

        $filter = page_and_size($filter);

        /* 获取学员报名数据 */
        $sql = 'SELECT a.* , ac.goods_name '.
               'FROM ' .$GLOBALS['ecs']->table('course_signup'). ' AS a '.
               'LEFT JOIN ' .$GLOBALS['ecs']->table('goods'). ' AS ac ON ac.goods_id = a.course_id '.
               'WHERE 1 ' .$where. ' ORDER by '.$filter['sort_by'].' '.$filter['sort_order'];

        $filter['keyword'] = stripslashes($filter['keyword']);
        set_filter($filter, $sql);
    }
    else
    {
        $sql    = $result['sql'];
        $filter = $result['filter'];
    }
    $arr = array();
    $res = $GLOBALS['db']->selectLimit($sql, $filter['page_size'], $filter['start']);

    while ($rows = $GLOBALS['db']->fetchRow($res))
    {
        $rows['date'] = local_date($GLOBALS['_CFG']['time_format'], $rows['signup_time']);

        $arr[] = $rows;
    }
    return array('arr' => $arr, 'filter' => $filter, 'page_count' => $filter['page_count'], 'record_count' => $filter['record_count']);
}


?>