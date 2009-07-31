<?php

/**
 * ECSHOP 快钱插件
 * ============================================================================
 * 版权所有 (C) 2005-2007 康盛创想（北京）科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 这是一个免费开源的软件；这意味着您可以在不用于商业目的的前提下对程序代码
 * 进行修改、使用和再发布。
 * ============================================================================
 * $Author: zhuwenyuan $
 * $Date: 2008-02-21 18:05:16 +0800 (星期四, 21 二月 2008) $
 * $Id: kuaiqian.php 14173 2008-02-21 10:05:16Z zhuwenyuan $
 */

if (!defined('IN_ECS'))
{
    die('Hacking attempt');
}

$payment_lang = ROOT_PATH . 'languages/' . $GLOBALS['_CFG']['lang'] . '/payment/kuaiqian.php';

if (file_exists($payment_lang))
{
    global $_LANG;

    include_once($payment_lang);
}

/**
 * 模块信息
 */
if (isset($set_modules) && $set_modules == true)
{
    $i = isset($modules) ? count($modules) : 0;

    /* 代码 */
    $modules[$i]['code']    = basename(__FILE__, '.php');

    /* 描述对应的语言项 */
    $modules[$i]['desc'] = 'kuaiqian_desc';

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
        array('name' => 'kq_account', 'type' => 'text', 'value' => ''),
        array('name' => 'kq_key', 'type' => 'text', 'value' => ''),
    );

    return;

}

class kuaiqian
{
    /**
     * 构造函数
     *
     * @access  public
     * @param
     *
     * @return void
     */

    function kuaiqian()
    {
    }

    function __construct()
    {
        $this->kuaiqian();
    }

   /**
     * 生成支付代码
     * @param   array   $order  订单信息
     * @param   array   $payment    支付方式信息
     */
   function get_code($order, $payment)
   {

           $merchantAcctId   = trim($payment['kq_account']);                 //人民币账号 不可空
           $key              = trim($payment['kq_key']);
           $inputCharset     = 1;                                                //字符集 默认1=utf-8
           $pageUrl          = return_url(basename(__FILE__, '.php'));
           $version          = 'v2.0';
           $language         = 1;
           $signType         = 1;                                                //签名类型 不可空 固定值 1:md5
           $payerName        = '';
           $payerContactType = '';
           $payerContact     = '';
           $orderId          = $order['log_id'];                                    //商户订单号 不可空
           $orderAmount      = $order['order_amount'] * 100;                        //商户订单金额 不可空
           $orderTime        = local_date('YmdHis', $order['add_time']);            //商户订单提交时间 不可空 14位
           $productName      = '';
           $productNum       = '';
           $productId        = '';
           $productDesc      = '';
           $ext1             = '';
           $ext2             = '';
           $payType          = '00';                                                //支付方式 不可空
           $bankId           = '';
           $redoFlag         = '0';
           $pid              = '';

        /* 生成加密签名串 请务必按照如下顺序和规则组成加密串！*/
        $signMsgVal = $this->appendParam($signMsgVal, "inputCharset", $inputCharset);
        $signMsgVal = $this->appendParam($signMsgVal, "pageUrl", $pageUrl);
        $signMsgVal = $this->appendParam($signMsgVal, "bgUrl", $bgUrl);
        $signMsgVal = $this->appendParam($signMsgVal, "version", $version);
        $signMsgVal = $this->appendParam($signMsgVal, "language", $language);
        $signMsgVal = $this->appendParam($signMsgVal, "signType", $signType);
        $signMsgVal = $this->appendParam($signMsgVal, "merchantAcctId", $merchantAcctId);
        $signMsgVal = $this->appendParam($signMsgVal, "payerName", $payerName);
        $signMsgVal = $this->appendParam($signMsgVal, "payerContactType", $payerContactType);
        $signMsgVal = $this->appendParam($signMsgVal, "payerContact", $payerContact);
        $signMsgVal = $this->appendParam($signMsgVal, "orderId", $orderId);
        $signMsgVal = $this->appendParam($signMsgVal, "orderAmount", $orderAmount);
        $signMsgVal = $this->appendParam($signMsgVal, "orderTime", $orderTime);
        $signMsgVal = $this->appendParam($signMsgVal, "productName", $productName);
        $signMsgVal = $this->appendParam($signMsgVal, "productNum", $productNum);
        $signMsgVal = $this->appendParam($signMsgVal, "productId", $productId);
        $signMsgVal = $this->appendParam($signMsgVal, "productDesc", $productDesc);
        $signMsgVal = $this->appendParam($signMsgVal, "ext1", $ext1);
        $signMsgVal = $this->appendParam($signMsgVal, "ext2", $ext2);
        $signMsgVal = $this->appendParam($signMsgVal, "payType", $payType);
        $signMsgVal = $this->appendParam($signMsgVal, "bankId", $bankId);
        $signMsgVal = $this->appendParam($signMsgVal, "redoFlag", $redoFlag);
        $signMsgVal = $this->appendParam($signMsgVal, "pid", $pid);
        $signMsgVal = $this->appendParam($signMsgVal, "key", $key);
        $signMsg    = strtoupper(md5($signMsgVal));    //签名字符串 不可空


        $def_url  = '<br /><form name="kqPay" style="text-align:center;" method="post" action="https://www.99bill.com/gateway/recvMerchantInfoAction.htm">';
        $def_url .= "<input type='hidden' name='inputCharset' value='" . $inputCharset . "' />";
        $def_url .= "<input type='hidden' name='bgUrl' value='" . $bgUrl . "' />";
        $def_url .= "<input type='hidden' name='pageUrl' value='" . $pageUrl . "' />";
        $def_url .= "<input type='hidden' name='version' value='" . $version . "' />";
        $def_url .= "<input type='hidden' name='language' value='" . $language . "' />";
        $def_url .= "<input type='hidden' name='signType' value='" . $signType . "' />";
        $def_url .= "<input type='hidden' name='signMsg' value='" . $signMsg . "' />";
        $def_url .= "<input type='hidden' name='merchantAcctId' value='" . $merchantAcctId . "' />";
        $def_url .= "<input type='hidden' name='payerName' value='" . $payerName . "' />";
        $def_url .= "<input type='hidden' name='payerContactType' value='" . $payerContactType . "' />";
        $def_url .= "<input type='hidden' name='payerContact' value='" . $payerContac . "' />";
        $def_url .= "<input type='hidden' name='orderId' value='" . $orderId . "' />";
        $def_url .= "<input type='hidden' name='orderAmount' value='" . $orderAmount . "' />";
        $def_url .= "<input type='hidden' name='orderTime' value='" . $orderTime . "' />";
        $def_url .= "<input type='hidden' name='productName' value='" . $productName . "' />";
        $def_url .= "<input type='hidden' name='payType' value='" . $payType . "' />";
        $def_url .= "<input type='hidden' name='productNum' value='" . $productNum . "' />";
        $def_url .= "<input type='hidden' name='productId' value='" . $productId . "' />";
        $def_url .= "<input type='hidden' name='productDesc' value='" . $productDesc . "' />";
        $def_url .= "<input type='hidden' name='ext1' value='" . $ext1 . "' />";
        $def_url .= "<input type='hidden' name='ext2' value='" . $ext2 . "' />";
        $def_url .= "<input type='hidden' name='bankId' value='" . $bankId . "' />";
        $def_url .= "<input type='hidden' name='redoFlag' value='" . $redoFlag ."' />";
        $def_url .= "<input type='hidden' name='pid' value='" . $pid . "' />";
        $def_url .= "<input type='submit' name='submit' value='" . $GLOBALS['_LANG']['pay_button'] . "' />";
        $def_url .= "</form><br />";

        return $def_url;
    }

    /**
     * 响应操作
     */
    function respond()
    {
        $payment         = get_payment($_GET['code']);
        $merchantAcctId  = $payment['kq_account'];                 //人民币账号 不可空
        $key             = $payment['kq_key'];
        $_merchantAcctId = trim($_REQUEST['merchantAcctId']);
        $payResult       = trim($_REQUEST['payResult']);
        $version         = trim($_REQUEST['version']);
        $language        = trim($_REQUEST['language']);
        $signType        = trim($_REQUEST['signType']);
        $payType         = trim($_REQUEST['payType']);
        $bankId          = trim($_REQUEST['bankId']);
        $orderId         = trim($_REQUEST['orderId']);
        $orderTime       = trim($_REQUEST['orderTime']);
        $orderAmount     = trim($_REQUEST['orderAmount']);
        $dealId          = trim($_REQUEST['dealId']);
        $bankDealId      = trim($_REQUEST['bankDealId']);
        $dealTime        = trim($_REQUEST['dealTime']);
        $payAmount       = trim($_REQUEST['payAmount']);
        $fee             = trim($_REQUEST['fee']);
        $ext1            = trim($_REQUEST['ext1']);
        $ext2            = trim($_REQUEST['ext2']);
        $errCode         = trim($_REQUEST['errCode']);
        $signMsg         = trim($_REQUEST['signMsg']);

           //生成加密串。必须保持如下顺序。
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal,"merchantAcctId",$merchantAcctId);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal,"version",$version);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal,"language",$language);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal,"signType",$signType);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal,"payType",$payType);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal,"bankId",$bankId);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal,"orderId",$orderId);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal,"orderTime",$orderTime);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal,"orderAmount",$orderAmount);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal,"dealId",$dealId);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal,"bankDealId",$bankDealId);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal,"dealTime",$dealTime);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal,"payAmount",$payAmount);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal,"fee",$fee);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal,"ext1",$ext1);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal,"ext2",$ext2);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal,"payResult",$payResult);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal,"errCode",$errCode);
        $merchantSignMsgVal = $this->appendParam($merchantSignMsgVal,"key",$key);
        $merchantSignMsg    = md5($merchantSignMsgVal);

        //首先对获得的商户号进行比对
        if ($_merchantAcctId != $merchantAcctId)
        {
            //商户号错误
            return false;
        }

        if (strtoupper($signMsg) == strtoupper($merchantSignMsg))
        {
            if ($pay_result == 10 || $pay_result == 00)
            {
                order_paid($order_id);

                return true;
            }
            else
            {
                return false;
            }

        }
        else
        {
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
            if($key != '' && $val != '')
            {
                $strs .= '&' . $key . '=' . $val;
            }
        }
        else
        {
            if($val != '')
            {
                $strs = $key . '=' . $val;
            }
        }
            return $strs;
    }

}

?>