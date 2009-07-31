<?php

/**
 * 到付运费插件 FPD(freight payable at destination)
 * ============================================================================
 * 版权所有 (C) 2005-2007 康盛创想（北京）科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 这是一个免费开源的软件；这意味着您可以在不用于商业目的的前提下对程序代码
 * 进行修改、使用和再发布。
 * ============================================================================
 * $Author: weberliu $
 * $Date: 2007-09-13 16:15:00 +0800 (星期四, 13 九月 2007) $
 * $Id: fpd.php 12056 2007-09-13 08:15:00Z weberliu $
 */

if (!defined('IN_ECS'))
{
    die('Hacking attempt');
}

$shipping_lang = ROOT_PATH.'languages/' .$GLOBALS['_CFG']['lang']. '/shipping/fpd.php';
if (file_exists($shipping_lang))
{
    global $_LANG;
    include_once($shipping_lang);
}

/* 模块的基本信息 */
if (isset($set_modules) && $set_modules == TRUE)
{
    $i = (isset($modules)) ? count($modules) : 0;

    /* 配送方式插件的代码必须和文件名保持一致 */
    $modules[$i]['code']    = 'fpd';

    $modules[$i]['version'] = '1.0.0';

    /* 配送方式的描述 */
    $modules[$i]['desc']    = 'fpd_desc';

    /* 配送方式是否支持货到付款 */
    $modules[$i]['cod']     = false;

    /* 插件的作者 */
    $modules[$i]['author']  = 'ECSHOP TEAM';

    /* 插件作者的官方网站 */
    $modules[$i]['website'] = 'http://www.ecshop.com';

    /* 配送接口需要的参数 */
    $modules[$i]['configure'] = array();

    return;
}

class fpd
{
    /*------------------------------------------------------ */
    //-- PUBLIC ATTRIBUTEs
    /*------------------------------------------------------ */

    /**
     * 配置信息
     */
    var $configure;

    /*------------------------------------------------------ */
    //-- PUBLIC METHODs
    /*------------------------------------------------------ */

    /**
     * 构造函数
     *
     * @param: $configure[array]    配送方式的参数的数组
     *
     * @return null
     */
    function fpd($cfg=array())
    {
    }

    /**
     * 计算订单的配送费用的函数
     *
     * @param   float   $goods_weight   商品重量
     * @param   float   $goods_amount   商品金额
     * @return  decimal
     */
    function calculate($goods_weight, $goods_amount)
    {
        return 0;
    }

    /**
     * 查询发货状态
     * 该配送方式不支持查询发货状态
     *
     * @access  public
     * @param   string  $invoice_sn     发货单号
     * @return  string
     */
    function query($invoice_sn)
    {
        return $invoice_sn;
    }
}

?>