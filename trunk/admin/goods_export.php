<?php

/**
 * ECSHOP
 * ============================================================================
 * 版权所有 (C) 2005-2007 康盛创想（北京）科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 这是一个免费开源的软件；这意味着您可以在不用于商业目的的前提下对程序代码
 * 进行修改、使用和再发布。
 * ============================================================================
 * @author:     wj                 <wjzhangq@126.com>
 * @version:    v2.x
 * ---------------------------------------------
 * $Author: fenghl $
 * $Date: 2008-02-27 14:59:53 +0800 (星期三, 27 二月 2008) $
 * $Id: goods_export.php 14190 2008-02-27 06:59:53Z fenghl $
*/

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');

if ($_REQUEST['act'] == 'goods_export')
{
    $smarty->assign('ur_here',             $_LANG['export_taobao']);
    $smarty->assign('cat_list', cat_list());
    assign_query_info();
    $smarty->display('goods_export.htm');
}

elseif ($_REQUEST['act'] == 'act_export_taobao')
{
    /* 检查权限 */
    admin_priv('goods_manage');
    include_once('includes/cls_phpzip.php');
    $zip = new PHPZip;

    if (empty ($_POST['cat_id']))
    {
        $children = '';
    }
    else
    {
        $children =  ' AND ' . get_children(intval($_POST['cat_id']));
    }


    $post_express = floatval($_POST['post_express']);
    $express = floatval($_POST['express']);
    $ems = floatval($_POST['ems']);

    $shop_province = '""';
    $shop_city = '""';
    if ($_CFG['shop_province'] || $_CFG['shop_city'])
    {
        $sql = "SELECT region_id,  region_name FROM " . $ecs->table('region') . " WHERE region_id IN ('$_CFG[shop_province]',  '$_CFG[shop_city]')";
        $arr = $db->getAll($sql);

        if ($arr)
        {
            if (count($arr) == 1)
            {
                if ($arr[0]['region_id'] == $_CFG['shop_province'])
                {
                    $shop_province = '"' . $arr[0]['region_name'] . '"' ;
                }
                else
                {
                    $shop_city = '"' . $arr[0]['region_name'] . '"' ;
                }
            }
            else
            {
                if ($arr[0]['region_id'] == $_CFG['shop_province'])
                {
                    $shop_province = '"' . $arr[0]['region_name'] . '"' ;
                    $shop_city = '"' . $arr[1]['region_name'] . '"';
                }
                else
                {
                    $shop_province = '"' . $arr[1]['region_name'] . '"' ;
                    $shop_city = '"' . $arr[0]['region_name'] . '"';
                }
            }
        }
    }

    $sql = "SELECT g.goods_id, g.goods_name, g.shop_price, g.goods_number, g.goods_desc, g.goods_img ".
    " FROM " . $ecs->table('goods') . " AS g ".
    " WHERE g.is_delete = 0 " . $children ;

    $res = $db->query($sql);

    /* csv文件数组 */
    $goods_value = array('goods_name'=>'""', 'goods_class'=>0, 'shop_class'=>0, 'new_level'=>5, 'province'=>$shop_province, 'city'=>$shop_city, 'sell_type'=>'"b"', 'shop_price'=>0, 'add_price'=>0, 'goods_number'=>0, 'die_day'=>14, 'load_type'=>1, 'post_express'=>$post_express, 'ems'=>$ems, 'express'=>$express, 'pay_type'=>2, 'allow_alipay'=>1, 'invoice'=>0, 'repair'=>0, 'resend'=>1, 'is_store'=>0, 'window'=>0, 'add_time'=>'"1980-1-1  0:00:00"', 'story'=>'""', 'goods_desc'=>'""', 'goods_img'=>'""', 'goods_attr'=>'""', 'group_buy'=>0, 'group_buy_num'=>0, 'template'=>0, 'discount'=>0, 'modify_time'=>'""', 'upload_status'=>100, 'img_status'=>1);

    $content = implode("\t", $_LANG['taobao']) . "\n";

    while ($row = $db->fetchRow($res))
    {
        $goods_value['goods_name'] = '"' . $row['goods_name'] . '"';
        $goods_value['shop_price'] = $row['shop_price'];
        $goods_value['goods_number'] = $row['goods_number'];
        $goods_value['goods_desc'] = '"' . str_replace('"', '""', str_replace('src="', 'src="http://' . $_SERVER['SERVER_NAME'], $row['goods_desc'])) . '"';
        $goods_value['goods_img'] = '"' . $row['goods_img'] . '"';

        $content .= implode("\t", $goods_value) . "\n";

        /* 压缩图片 */
        if (!empty($row['goods_img']) && is_file(ROOT_PATH . $row['goods_img']))
        {
            $zip->add_file(file_get_contents(ROOT_PATH . $row['goods_img']), $row['goods_img']);
        }
    }

    $zip->add_file("\xFF\xFE" . utf82u2($content), 'goods_list.csv');

    header("Content-Disposition: attachment; filename=goods_list.zip");
    header("Content-Type: application/unknown");
    die($zip->file());
}
/* 从淘宝导入数据 */
elseif ($_REQUEST['act'] == 'import_taobao')
{
    $smarty->display('import_taobao.htm');
}
elseif($_REQUEST['act'] == 'act_export_ecshop')
{
    /* 检查权限 */
    admin_priv('goods_manage');

    include_once('includes/cls_phpzip.php');
    $zip = new PHPZip;

    if (empty ($_POST['cat_id']))
    {
        $children = '';
    }
    else
    {
        $children =  ' AND ' . get_children(intval($_POST['cat_id']));
    }

    $sql = "SELECT g.*, b.brand_name as brandname " .
           " FROM " . $ecs->table('goods') . " AS g LEFT JOIN " . $ecs->table('brand') . " AS b " .
           "ON g.brand_id = b.brand_id" .
           " WHERE g.is_delete = 0 " . $children ;

    $res = $db->query($sql);

    /* csv文件数组 */
    $goods_value = array();
    $goods_value['goods_name'] = '""';
    $goods_value['goods_sn'] = '""';
    $goods_value['brand_name'] = '""';
    $goods_value['market_price'] = 0;
    $goods_value['shop_price'] = 0;
    $goods_value['integral'] = 0;
    $goods_value['original_img'] = '""';
    $goods_value['goods_img'] = '""';
    $goods_value['goods_thumb'] = '""';
    $goods_value['keywords'] = '""';
    $goods_value['goods_brief'] = '""';
    $goods_value['goods_desc'] = '""';
    $goods_value['goods_weight'] = 0;
    $goods_value['goods_number'] = 0;
    $goods_value['warn_number'] = 0;
    $goods_value['is_best'] = 0;
    $goods_value['is_new'] = 0;
    $goods_value['is_hot'] = 0;
    $goods_value['is_on_sale'] = 1;
    $goods_value['is_alone_sale'] = 1;
    $goods_value['is_real'] = 1;

    $content = '"' . implode('","', $_LANG['ecshop']) . "\"\n";

    while ($row = $db->fetchRow($res))
    {
        $goods_value['goods_name'] = '"' . $row['goods_name'] . '"';
        $goods_value['brand_name'] = $row['brandname'];
        $goods_value['market_price'] = $row['market_price'];
        $goods_value['shop_price'] = $row['shop_price'];
        $goods_value['integral'] = $row['integral'];
        $goods_value['original_img'] = $row['original_img'];
        $goods_value['keywords'] = '"' . $row['keywords'] . '"';
        $goods_value['goods_brief'] = '"' . $row['goods_brief'] . '"';
        $goods_value['goods_desc'] = '"' . str_replace('"', '""', str_replace('src="', 'src="http://' . $_SERVER['SERVER_NAME'], $row['goods_desc'])) . '"';
        $goods_value['goods_weight'] = $row['goods_weight'];
        $goods_value['goods_number'] = $row['goods_number'];
        $goods_value['warn_number'] = $row['warn_number'];
        $goods_value['is_best'] = $row['is_best'];
        $goods_value['is_new'] = $row['is_new'];
        $goods_value['is_hot'] = $row['is_hot'];
        $goods_value['is_on_sale'] = $row['is_on_sale'];
        $goods_value['is_alone_sale'] = $row['is_alone_sale'];
        $goods_value['is_real'] = $row['is_real'];

        $content .= implode(",", $goods_value) . "\n";

        /* 压缩图片 */
        if (!empty($row['original_img']) && is_file(ROOT_PATH . $row['original_img']))
        {
            $zip->add_file(file_get_contents(ROOT_PATH . $row['original_img']), $row['original_img']);
        }
    }
    $charset = empty($_POST['charset']) ? 'UTF8' : trim($_POST['charset']);

    $zip->add_file(ecs_iconv('UTF8', $charset, $content), 'goods_list.csv');

    header("Content-Disposition: attachment; filename=goods_list.zip");
    header("Content-Type: application/unknown");
    die($zip->file());
}

elseif ($_REQUEST['act'] == 'act_export_paipai')
{
    /* 检查权限 */
    admin_priv('goods_manage');
    include_once('includes/cls_phpzip.php');
    $zip = new PHPZip;

    if (empty ($_POST['cat_id']))
    {
        $children = '';
    }
    else
    {
        $children =  ' AND ' . get_children(intval($_POST['cat_id']));
    }


    $post_express = floatval($_POST['post_express']);
    $express = floatval($_POST['express']);
    if ($post_express < 0)
    {
        $post_express = 10;
    }
    if ($express < 0)
    {
        $express = 20;
    }

    $shop_province = '""';
    $shop_city = '""';
    if ($_CFG['shop_province'] || $_CFG['shop_city'])
    {
        $sql = "SELECT region_id,  region_name FROM " . $ecs->table('region') . " WHERE region_id IN ('$_CFG[shop_province]',  '$_CFG[shop_city]')";
        $arr = $db->getAll($sql);

        if ($arr)
        {
            if (count($arr) == 1)
            {
                if ($arr[0]['region_id'] == $_CFG['shop_province'])
                {
                    $shop_province = '"' . $arr[0]['region_name'] . '"' ;
                }
                else
                {
                    $shop_city = '"' . $arr[0]['region_name'] . '"' ;
                }
            }
            else
            {
                if ($arr[0]['region_id'] == $_CFG['shop_province'])
                {
                    $shop_province = '"' . $arr[0]['region_name'] . '"' ;
                    $shop_city = '"' . $arr[1]['region_name'] . '"';
                }
                else
                {
                    $shop_province = '"' . $arr[1]['region_name'] . '"' ;
                    $shop_city = '"' . $arr[0]['region_name'] . '"';
                }
            }
        }
    }

    $sql = "SELECT g.goods_id, g.goods_name, g.shop_price, g.goods_number, g.goods_desc, g.goods_img ".
    " FROM " . $ecs->table('goods') . " AS g ".
    " WHERE g.is_delete = 0 " . $children ;

    $res = $db->query($sql);


    $goods_value = array();
    $goods_value['id'] = -1;
    $goods_value['tree_node_id'] = -1;
    $goods_value['old_tree_node_id'] = -1;
    $goods_value['title'] = '""';
    $goods_value['id_in_web'] = '""';
    $goods_value['auctionType'] = '"b"';
    $goods_value['category'] = 0;
    $goods_value['shopCategoryId'] = '""';
    $goods_value['pictURL'] = '""';
    $goods_value['quantity'] = 0;
    $goods_value['duration'] = 14;
    $goods_value['startDate'] = '""';
    $goods_value['stuffStatus'] = 5;
    $goods_value['price'] = 0;
    $goods_value['increment'] = 0;
    $goods_value['prov'] = $shop_province;
    $goods_value['city'] = $shop_city;
    $goods_value['shippingOption'] = 1;
    $goods_value['ordinaryPostFee'] = $post_express;
    $goods_value['fastPostFee'] = $express;
    $goods_value['paymentOption'] = 5;
    $goods_value['haveInvoice'] = 0;
    $goods_value['haveGuarantee'] = 0;
    $goods_value['secureTradeAgree'] = 1;
    $goods_value['autoRepost'] = 1;
    $goods_value['shopWindow'] = 0;
    $goods_value['failed_reason'] = '""';
    $goods_value['pic_size'] = 0;
    $goods_value['pic_filename'] = '""';
    $goods_value['pic'] = '""';
    $goods_value['description'] = '""';
    $goods_value['story'] = '""';
    $goods_value['putStore'] = 0;
    $goods_value['pic_width'] = 80;
    $goods_value['pic_height'] = 80;
    $goods_value['skin'] = 0;
    $goods_value['prop'] = '""';


    $content = '"' . implode('","', $_LANG['paipai']) . "\"\n";

    while ($row = $db->fetchRow($res))
    {
        $goods_value['title'] = '"' . $row['goods_name'] . '"';
        $goods_value['price'] = $row['shop_price'];
        $goods_value['quantity'] = $row['goods_number'];
        $goods_value['description'] = '"' . str_replace('"', '""', str_replace('src="', 'src="http://' . $_SERVER['SERVER_NAME'], $row['goods_desc'])) . '"';
        $goods_value['pic_filename'] = '"' . $row['goods_img'] . '"';

        $content .= implode(",", $goods_value) . "\n";

        /* 压缩图片 */
        if (!empty($row['goods_img']) && is_file(ROOT_PATH . $row['goods_img']))
        {
            $zip->add_file(file_get_contents(ROOT_PATH . $row['goods_img']), $row['goods_img']);
        }
    }

    $zip->add_file(ecs_iconv('UTF8', 'GB2312', $content), 'goods_list.csv');

    header("Content-Disposition: attachment; filename=goods_list.zip");
    header("Content-Type: application/unknown");
    die($zip->file());
}
/* 从拍拍网导入数据 */
elseif ($_REQUEST['act'] == 'import_paipai')
{
    $smarty->display('import_paipai.htm');
}


/**
 *
 *
 * @access  public
 * @param
 *
 * @return void
 */
function utf82u2($str)
{
    $len = strlen($str);
    $start = 0;
    $result = '';

    if ($len == 0)
    {
        return $result;
    }

    while ($start < $len)
    {
        $num = ord($str{$start});
        if ($num < 127)
        {
            $result .= chr($num) . chr($num >> 8);
            $start += 1;
        }
        else
        {
            if ($num < 192)
            {
                /* 无效字节 */
                $start ++;
            }
            elseif ($num < 224)
            {
                if ($start + 1 <  $len)
                {
                    $num = (ord($str{$start}) & 0x3f) << 6;
                    $num += ord($str{$start+1}) & 0x3f;
                    $result .=   chr($num & 0xff) . chr($num >> 8) ;
                }
                $start += 2;
            }
            elseif ($num < 240)
            {
                if ($start + 2 <  $len)
                {
                    $num = (ord($str{$start}) & 0x1f) << 12;
                    $num += (ord($str{$start+1}) & 0x3f) << 6;
                    $num += ord($str{$start+2}) & 0x3f;

                    $result .=   chr($num & 0xff) . chr($num >> 8) ;
                }
                $start += 3;
            }
            elseif ($num < 248)
            {

                if ($start + 3 <  $len)
                {
                    $num = (ord($str{$start}) & 0x0f) << 18;
                    $num += (ord($str{$start+1}) & 0x3f) << 12;
                    $num += (ord($str{$start+2}) & 0x3f) << 6;
                    $num += ord($str{$start+3}) & 0x3f;
                    $result .= chr($num & 0xff) . chr($num >> 8) . chr($num >>16);
                }
                $start += 4;
            }
            elseif ($num < 252)
            {
                if ($start + 4 <  $len)
                {
                    /* 不做处理 */
                }
                $start += 5;
            }
            else
            {
                if ($start + 5 <  $len)
                {
                    /* 不做处理 */
                }
                $start += 6;
            }
        }

    }

    return $result;
}

?>