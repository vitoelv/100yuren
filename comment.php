<?php

/**
 * ECSHOP 提交用户评论
 * ============================================================================
 * 版权所有 (C) 2005-2007 康盛创想（北京）科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 这是一个免费开源的软件；这意味着您可以在不用于商业目的的前提下对程序代码
 * 进行修改、使用和再发布。
 * ============================================================================
 * $Author: testyang $
 * $Date: 2008-02-01 23:40:15 +0800 (星期五, 01 二月 2008) $
 * $Id: comment.php 14122 2008-02-01 15:40:15Z testyang $
*/

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');
require(ROOT_PATH . 'includes/cls_json.php');

if (!isset($_REQUEST['cmt']) && !isset($_REQUEST['act']))
{
    /* 只有在没有提交评论内容以及没有act的情况下才跳转 */
    ecs_header("Location: ./\n");
    exit;
}

$json   = new JSON;
$result = array('error' => 0, 'message' => '', 'content' => '');

if (empty($_REQUEST['act']))
{
    /*
     * act 参数为空
     * 默认为添加评论内容
     */
    $cmt  = $json->decode($_REQUEST['cmt']);
    $cmt->page = 1;

    if (empty($cmt) || !isset($cmt->type) || !isset($cmt->id))
    {
        $result['error']   = 1;
        $result['message'] = $_LANG['invalid_comments'];
    }
    else
    {
        if ((intval($_CFG['captcha']) & CAPTCHA_COMMENT) && gd_version() > 0)
        {
            /* 检查验证码 */
            include_once('includes/cls_captcha.php');

            $validator = new captcha();
            if (!$validator->check_word($cmt->captcha))
            {
                $result['error']   = 1;
                $result['message'] = $_LANG['invalid_captcha'];
            }
            else
            {
                $factor = intval($_CFG['comment_factor']);
                if ($cmt->type == 0 && $factor > 0)
                {
                    /* 只有商品才检查评论条件 */
                    switch ($factor)
                    {
                        case COMMENT_LOGIN :
                            if ($_SESSION['user_id'] == 0)
                            {
                                $result['error']   = 1;
                                $result['message'] = $_LANG['comment_login'];
                            }
                            break;

                        case COMMENT_CUSTOM :
                            if ($_SESSION['user_id'] > 0)
                            {
                                $sql = "SELECT o.order_id FROM " . $ecs->table('order_info') . " AS o ".
                                       " WHERE user_id = '" . $_SESSION['user_id'] . "'".
                                       " AND o.order_status = '" . OS_CONFIRMED . "' ".
                                       " AND (o.pay_status = '" . PS_PAYED . "' OR o.pay_status = '" . PS_PAYING . "') ".
                                       " AND (o.shipping_status = '" . SS_SHIPPED . "' OR o.shipping_status = '" . SS_RECEIVED . "') ".
                                       " LIMIT 1";


                                 $tmp = $db->getOne($sql);
                                 if (empty($tmp))
                                 {
                                    $result['error']   = 1;
                                    $result['message'] = $_LANG['comment_custom'];
                                 }
                            }
                            else
                            {
                                $result['error'] = 1;
                                $result['message'] = $_LANG['comment_custom'];
                            }
                            break;

                        case COMMENT_BOUGHT :
                            if ($_SESSION['user_id'] > 0)
                            {
                                $sql = "SELECT o.order_id".
                                       " FROM " . $ecs->table('order_info'). " AS o, ".
                                       $ecs->table('order_goods') . " AS og ".
                                       " WHERE o.order_id = og.order_id".
                                       " AND o.user_id = '" . $_SESSION['user_id'] . "'".
                                       " AND og.goods_id = '" . $cmt->id . "'".
                                       " AND o.order_status = '" . OS_CONFIRMED . "' ".
                                       " AND (o.pay_status = '" . PS_PAYED . "' OR o.pay_status = '" . PS_PAYING . "') ".
                                       " AND (o.shipping_status = '" . SS_SHIPPED . "' OR o.shipping_status = '" . SS_RECEIVED . "') ".
                                       " LIMIT 1";
                                 $tmp = $db->getOne($sql);
                                 if (empty($tmp))
                                 {
                                    $result['error']   = 1;
                                    $result['message'] = $_LANG['comment_brought'];
                                 }
                            }
                            else
                            {
                                $result['error']   = 1;
                                $result['message'] = $_LANG['comment_brought'];
                            }
                    }
                }

                /* 无错误就保存留言 */
                if (empty($result['error']))
                {
                    add_comment($cmt);
                }
            }
        }
        else
        {
            /* 没有验证码时，用时间来限制机器人发帖或恶意发评论 */
            if (!isset($_SESSION['send_time']))
            {
                $_SESSION['send_time'] = 0;
            }

            $cur_time = gmtime();
            if (($cur_time - $_SESSION['send_time']) < 30) // 小于30秒禁止发评论
            {
                $result['error']   = 1;
                $result['message'] = $_LANG['cmt_spam_warning'];
            }
            else
            {
                $factor = intval($_CFG['comment_factor']);
                if ($cmt->type == 0 && $factor > 0)
                {
                    /* 只有商品才检查评论条件 */
                    switch ($factor)
                    {
                        case COMMENT_LOGIN :
                            if ($_SESSION['user_id'] == 0)
                            {
                                $result['error']   = 1;
                                $result['message'] = $_LANG['comment_login'];
                            }
                            break;

                        case COMMENT_CUSTOM :
                            if ($_SESSION['user_id'] > 0)
                            {
                                $sql = "SELECT o.order_id FROM " . $ecs->table('order_info') . " AS o ".
                                       " WHERE user_id = '" . $_SESSION['user_id'] . "'".
                                       " AND o.order_status = '" . OS_CONFIRMED . "' ".
                                       " AND (o.pay_status = '" . PS_PAYED . "' OR o.pay_status = '" . PS_PAYING . "') ".
                                       " AND (o.shipping_status = '" . SS_SHIPPED . "' OR o.shipping_status = '" . SS_RECEIVED . "') ".
                                       " LIMIT 1";


                                 $tmp = $db->getOne($sql);
                                 if (empty($tmp))
                                 {
                                    $result['error']   = 1;
                                    $result['message'] = $_LANG['comment_custom'];
                                 }
                            }
                            else
                            {
                                $result['error'] = 1;
                                $result['message'] = $_LANG['comment_custom'];
                            }
                            break;

                        case COMMENT_BOUGHT :
                            if ($_SESSION['user_id'] > 0)
                            {
                                $sql = "SELECT o.order_id".
                                       " FROM " . $ecs->table('order_info'). " AS o, ".
                                       $ecs->table('order_goods') . " AS og ".
                                       " WHERE o.order_id = og.order_id".
                                       " AND o.user_id = '" . $_SESSION['user_id'] . "'".
                                       " AND og.goods_id = '" . $cmt->id . "'".
                                       " AND o.order_status = '" . OS_CONFIRMED . "' ".
                                       " AND (o.pay_status = '" . PS_PAYED . "' OR o.pay_status = '" . PS_PAYING . "') ".
                                       " AND (o.shipping_status = '" . SS_SHIPPED . "' OR o.shipping_status = '" . SS_RECEIVED . "') ".
                                       " LIMIT 1";
                                 $tmp = $db->getOne($sql);
                                 if (empty($tmp))
                                 {
                                    $result['error']   = 1;
                                    $result['message'] = $_LANG['comment_brought'];
                                 }
                            }
                            else
                            {
                                $result['error']   = 1;
                                $result['message'] = $_LANG['comment_brought'];
                            }
                    }
                }
                /* 无错误就保存留言 */
                if (empty($result['error']))
                {
                    add_comment($cmt);
                    $_SESSION['send_time'] = $cur_time;
                }
            }
        }
    }
}
else
{
    /*
     * act 参数不为空
     * 默认为评论内容列表
     * 根据 _GET 创建一个静态对象
     */
    $cmt = new stdClass();
    $cmt->id   = !empty($_GET['id'])   ? intval($_GET['id'])   : 0;
    $cmt->type = !empty($_GET['type']) ? intval($_GET['type']) : 0;
    $cmt->page = !empty($_GET['page']) ? intval($_GET['page']) : 1;
}

if ($result['error'] == 0)
{
    $comments = assign_comment($cmt->id, $cmt->type, $cmt->page);

    $smarty->assign('comment_type', $cmt->type);
    $smarty->assign('id',           $cmt->id);
    $smarty->assign('username',     $_SESSION['user_name']);
    $smarty->assign('email',        $_SESSION['email']);
    $smarty->assign('comments',     $comments['comments']);
    $smarty->assign('pager',        $comments['pager']);

    /* 验证码相关设置 */
    if ((intval($_CFG['captcha']) & CAPTCHA_COMMENT) && gd_version() > 0)
    {
        $smarty->assign('enabled_captcha', 1);
        $smarty->assign('rand', mt_rand());
    }

    $result['message'] = $_CFG['comment_check'] ? $_LANG['cmt_submit_wait'] : $_LANG['cmt_submit_done'];
    $result['content'] = $smarty->fetch("library/comments_list.lbi");
}

echo $json->encode($result);

/*------------------------------------------------------ */
//-- PRIVATE FUNCTION
/*------------------------------------------------------ */

/**
 * 添加评论内容
 *
 * @access  public
 * @param   object  $cmt
 * @return  void
 */
function add_comment($cmt)
{
    /* 评论是否需要审核 */
    $status = 1 - $GLOBALS['_CFG']['comment_check'];

    $user_id = empty($_SESSION['user_id']) ? 0 : $_SESSION['user_id'];
    $email = empty($cmt->email) ? $_SESSION['email'] : trim($cmt->email);
    $user_name = empty($cmt->username) ? $_SESSION['user_name'] : trim($cmt->username);

    /* 保存评论内容 */
    $sql = "INSERT INTO " .$GLOBALS['ecs']->table('comment'). " ".
                "(comment_type, id_value, email, user_name, content, comment_rank, add_time, ip_address, status, parent_id, user_id".
            ") VALUES (".
                "'" .$cmt->type. "', '" .$cmt->id. "', '$email', '$user_name', ".
                "'" .$cmt->content."', '".$cmt->rank."', ".gmtime().", '".real_ip()."', '$status', '0', '$user_id')";

    clear_cache_files('comments_list.lbi');

    return $GLOBALS['db']->query($sql);
}

?>