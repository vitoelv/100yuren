<?php

/**
 * ECSHOP 快钱神州行支付插件
 * ============================================================================
 * 版权所有 (C) 2005-2007 康盛创想（北京）科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 这是一个免费开源的软件；这意味着您可以在不用于商业目的的前提下对程序代码
 * 进行修改、使用和再发布。
 * ============================================================================
 * $Author: zhuwenyuan $
 * $Date: 2008-02-27 17:52:08 +0800 (星期三, 27 二月 2008) $
 * $Id: shenzhou.php 14193 2008-02-27 09:52:08Z zhuwenyuan $
 */

if (!defined('IN_ECS'))
{
    die('Hacking attempt');
}

$payment_lang = ROOT_PATH . 'languages/' . $GLOBALS['_CFG']['lang'] . '/payment/shenzhou.php';

if (file_exists($payment_lang))
{
   global $_LANG;

   include_once($payment_lang);
}

/* 模块的基本信息 */
if (isset($set_modules) && $set_modules == true)
{
    $i = isset($modules) ? count($modules) : 0;

    /* 代码 */
    $modules[$i]['code']    = basename(__FILE__, '.php');

    /* 描述对应的语言项 */
    $modules[$i]['desc'] = 'shenzhou_desc';

    /* 是否支持货到付款 */
    $modules[$i]['is_cod'] = '0';

    /* 是否支持在线支付 */
    $modules[$i]['is_online'] = '1';

    /* 作者 */
    $modules[$i]['author']  = 'ECSHOP TEAM';

    /* 网址 */
    $modules[$i]['website'] = 'http://www.99bill.com';

    /* 版本号 */
    $modules[$i]['version'] = '1.0.1';

    /* 配置信息 */
    $modules[$i]['config'] = array(
        array('name' => 'shenzhou_account', 'type' => 'text', 'value' => ''),
        array('name' => 'shenzhou_key', 'type' => 'text', 'value' => ''),
    );

    return;

}

class shenzhou
{
    /**
     * 构造函数
     *
     * @access  public
     * @param
     *
     * @return void
     */

    function shenzhou()
    {
    }

    function __construct()
    {
        $this->shenzhou();
    }

   /**
     * 生成支付代码
     * @param   array   $order  订单信息
     * @param   array   $payment    支付方式信息
     */
    function get_code($order, $payment)
    {
        $merchantAcctId   = trim($payment['shenzhou_account']);                 //快钱神州行账号 不可空
        $key              = trim($payment['shenzhou_key']);                     //密钥 不可空
        $inputCharset     = 1;                                               //字符集 默认1=utf-8
        $bgUrl            = '';
        $pageUrl          = $GLOBALS['ecs']->url() . 'respond.php';
        $version          = 'v2.0';
        $language         = 1;
        $signType         = 1;                                               //签名类型 不可空 固定值 1:md5
        $payerName        = '';
        $payerContactType = '';
        $payerContact     = '';
        $orderId          = $order['log_id'];                                //商户订单号 不可空
        $orderAmount      = $order['order_amount'] * 100;                    //商户订单金额 不可空
        $payType          = '00';                                            //支付方式 不可空
        $cardNumber       = '';
        $cardPwd          = '';
        $fullAmountFlag   = '0';
        $orderTime        = local_date('YmdHis', $order['add_time']);        //商户订单提交时间 不可空 14位
        $productName      = '';
        $productNum       = '';
        $productId        = '';
        $productDesc      = '';
        $ext1             = 'shenzhou';
        $ext2             = 'ecshop';

        /* 生成加密签名串 请务必按照如下顺序和规则组成加密串！*/
        $signMsgVal = $this->appendParam($signMsgVal, "inputCharset", $inputCharset);
        $signMsgVal = $this->appendParam($signMsgVal, "bgUrl", $bgUrl);
        $signMsgVal = $this->appendParam($signMsgVal, "pageUrl", $pageUrl);
        $signMsgVal = $this->appendParam($signMsgVal, "version", $version);
        $signMsgVal = $this->appendParam($signMsgVal, "language", $language);
        $signMsgVal = $this->appendParam($signMsgVal, "signType", $signType);
        $signMsgVal = $this->appendParam($signMsgVal, "merchantAcctId", $merchantAcctId);
        $signMsgVal = $this->appendParam($signMsgVal, "payerName", urlencode($payerName));
        $signMsgVal = $this->appendParam($signMsgVal, "payerContactType", $payerContactType);
        $signMsgVal = $this->appendParam($signMsgVal, "payerContact", $payerContact);
        $signMsgVal = $this->appendParam($signMsgVal, "orderId", $orderId);
        $signMsgVal = $this->appendParam($signMsgVal, "orderAmount", $orderAmount);
        $signMsgVal = $this->appendParam($signMsgVal, "payType", $payType);
        $signMsgVal = $this->appendParam($signMsgVal, "cardNumber", $cardNumber);
        $signMsgVal = $this->appendParam($signMsgVal, "cardPwd", $cardPwd);
        $signMsgVal = $this->appendParam($signMsgVal, "fullAmountFlag", $fullAmountFlag);
        $signMsgVal = $this->appendParam($signMsgVal, "orderTime", $orderTime);
        $signMsgVal = $this->appendParam($signMsgVal, "productName", urlencode($productName));
        $signMsgVal = $this->appendParam($signMsgVal, "productNum", $productNum);
        $signMsgVal = $this->appendParam($signMsgVal, "productId", $productId);
        $signMsgVal = $this->appendParam($signMsgVal, "productDesc", urlencode($productDesc));
        $signMsgVal = $this->appendParam($signMsgVal, "ext1", urlencode($ext1));
        $signMsgVal = $this->appendParam($signMsgVal, "ext2", urlencode($ext2));
        $signMsgVal = $this->appendParam($signMsgVal, "key", $key);
        $signMsg    = strtoupper(md5($signMsgVal));    ////安全校验域 不可空

        $def_url  = '<br /><form name="kqPay" style="text-align:center;" method="post"'.
        'action="https://www.99bill.com/szxgateway/recvMerchantInfoAction.htm">';
        $def_url .= "<input type= 'hidden' name='inputCharset' value='" . $inputCharset . "' />";
        $def_url .= "<input type='hidden' name='bgUrl' value='" . $bgUrl . "' />";
        $def_url .= "<input type='hidden' name='pageUrl' value='" . $pageUrl . "' />";
        $def_url .= "<input type='hidden' name='version' value='" . $version . "' />";
        $def_url .= "<input type='hidden' name='language' value='" . $language . "' />";
        $def_url .= "<input type='hidden' name='signType' value='" . $signType . "' />";
        $def_url .= "<input type='hidden' name='merchantAcctId' value='" . $merchantAcctId . "' />";
        $def_url .= "<input type='hidden' name='payerName' value='" . $payerName . "' />";
        $def_url .= "<input type='hidden' name='payerContactType' value='" . $payerContactType . "' />";
        $def_url .= "<input type='hidden' name='payerContact' value='" . $payerContac . "' />";
        $def_url .= "<input type='hidden' name='orderId' value='" . $orderId . "' />";
        $def_url .= "<input type='hidden' name='orderAmount' value='" . $orderAmount . "' />";
        $def_url .= "<input type='hidden' name='payType' value='" . $payType . "' />";
        $def_url .= "<input type='hidden' name='cardNumber' value='" . $cardNumber . "' />";
        $def_url .= "<input type='hidden' name='cardPwd' value='" . $cardPwd . "' />";
        $def_url .= "<input type='hidden' name='fullAmountFlag' value='" .$fullAmountFlag ."' />";
        $def_url .= "<input type='hidden' name='orderTime' value='" . $orderTime . "' />";
        $def_url .= "<input type='hidden' name='productName' value='" . urlencode($productName) . "' />";
        $def_url .= "<input type='hidden' name='productNum' value='" . $productNum . "' />";
        $def_url .= "<input type='hidden' name='productId' value='" . $productId . "' />";
        $def_url .= "<input type='hidden' name='productDesc' value='" . urlencode($productDesc) . "' />";
        $def_url .= "<input type='hidden' name='ext1' value='" . urlencode($ext1) . "' />";
        $def_url .= "<input type='hidden' name='ext2' value='" . urlencode($ext2) . "' />";
        $def_url .= "<input type='hidden' name='signMsg' value='" . $signMsg ."' />";
        $def_url .= "<input type='submit' name='submit' value='".$GLOBALS['_LANG']['pay_button']."' />";
        $def_url .= "</form><br />";

        return $def_url;
    }

    /**
     * 响应操作
     */
    function respond()
    {
        $payment    = get_payment(basename(__FILE__, '.php'));
        $merchantAcctId  = $payment['shenzhou_account'];                 //收款帐号 不可空
        $key             = $payment['shenzhou_key'];

        $_merchantAcctId = trim($_REQUEST['merchantAcctId']);     //接收的收款帐号
        $payResult       = trim($_REQUEST['payResult']);

        $version         = trim($_REQUEST['version']);
        $language        = trim($_REQUEST['language']);
        $signType        = trim($_REQUEST['signType']);
        $payType         = trim($_REQUEST['payType']);            //20代表神州行卡密直接支付；22代表快钱账户神州行余额支付
        $cardNumber      = trim($_REQUEST['cardNumber']);
        $cardPwd         = trim($_REQUEST['cardPwd']);
        $orderId         = trim($_REQUEST['orderId']);            //订单号
        $orderTime       = trim($_REQUEST['orderTime']);
        $orderAmount     = trim($_REQUEST['orderAmount']);
        $dealId          = trim($_REQUEST['dealId']);             //获取该交易在快钱的交易号
        $ext1            = trim($_REQUEST['ext1']);
        $ext2            = trim($_REQUEST['ext2']);
        $payAmount       = trim($_REQUEST['payAmount']);          //获取实际支付金额
        $billOrderTime   = trim($_REQUEST['billOrderTime']);
        $payResult       = trim($_REQUEST['payResult']);         //10代表支付成功； 11代表支付失败
        $signType        = trim($_REQUEST['signType']);
        $signMsg         = trim($_REQUEST['signMsg']);

        //生成加密串。必须保持如下顺序。
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal, "merchantAcctId", $merchantAcctId);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal, "version", $version);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal, "language", $language);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal, "payType", $payType);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal, "cardNumber", $cardNumber);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal, "cardPwd", $cardPwd);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal, "orderId", $orderId);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal, "orderAmount", $orderAmount);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal, "dealId", $dealId);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal, "orderTime", $orderTime);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal, "ext1", $ext1);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal, "ext2", $ext2);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal, "payAmount", $payAmount);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal, "billOrderTime", $billOrderTime);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal, "payResult", $payResult);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal, "signType", $signType);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal, "key", $key);
        $merchantSignMsg    = md5($merchantSignMsgVal);

        //首先对获得的商户号进行比对
        if ($_merchantAcctId != $merchantAcctId)
        {
            //'商户号错误';
            return false;
        }

        if (strtoupper($signMsg) == strtoupper($merchantSignMsg))
        {
            if ($payResult == 10)  //有成功支付的结果返回10
            {
                order_paid($orderId);

                return true;
            }
            elseif ($payResult == 11  && $payAmount > 0)
            {
                $sql = "SELECT order_amount FROM " . $GLOBALS['ecs']->table('order_info') ."WHERE order_id = '$orderId'";
                $get_order_amount = $GLOBALS['db']->getOne($sql);
                if ($get_order_amount == $payAmount && $get_order_amount == $orderAmount) //检查订单金额、实际支付金额和订单是否相等
                {
                    order_paid($orderId);

                    return true;
                }
                elseif ($get_order_amount == $orderAmount && $payAmount > 0) //订单金额相等 实际支付金额 > 0的情况
                {
                    $surplus_amount = $get_order_amount - $payAmount;        //计算订单剩余金额
                    $sql = 'UPDATE' . $GLOBALS['ecs']->table('order_info') . "SET `money_paid` = (money_paid  + '$payAmount')," .
                        " order_amount = (order_amount - '$payAmount') WHERE order_id = '$orderId'";
                    $result = $GLOBALS['db']->query($sql);
                    $sql = 'UPDATE' . $GLOBALS['ecs']->table('order_info') . "SET `order_status` ='" . OS_CONFIRMED . "' WHERE order_id = '$orderId'";
                    $result = $GLOBALS['db']->query($sql);
                    //order_paid($orderId, PS_UNPAYED);
                    //'订单金额小于0';
                    return false;
                }
                else
                {
                    //'订单金额不相等';
                    return false;
                }
            }
            else
            {
                //'实际支付金额不能小于0';
                return false;
            }
        }
        else
        {
            //'签名校对错误';
            return false;
        }
    }

    /**
     * 将变量值不为空的参数组成字符串
     * @param   string   $strs  参数字符串
     * @param   string   $key   参数键名
     * @param   string   $val   参数键对应值
    */
    function appendParam($strs,$key,$val)
    {
        if($strs != "")
        {
            if($val != "")
            {
                $strs .= '&' . $key . '=' . $val;
            }
        }
        else
        {
            if($val != "")
            {
                $strs = $key . '=' . $val;
            }
        }

        return $strs;
    }
}

?>