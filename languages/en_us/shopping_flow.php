<?php

/**
 * ECSHOP Shipping related to language
 * ============================================================================
 * All right reserved (C) 2005-2007 Beijing Yi Shang Interactive Technology
 * Development Ltd.
 * Web site: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * This is a free/open source software;it means that you can modify, use and
 * republish the program code, on the premise of that your behavior is not for
 * commercial purposes.
 * ============================================================================
 * $Author: scottye $
 * $Date: 2007-02-09 23:42:54 +0800 (Friday, 09 February 2007) $
 * $Id: shopping_flow.php 5555 2007-02-09 15:42:54Z scottye $
*/

$_LANG['flow_login_register']['username_not_null'] = 'Please enter username.';
$_LANG['flow_login_register']['username_invalid'] = 'Please enter a valid username.';
$_LANG['flow_login_register']['password_not_null'] = 'Please enter password.';
$_LANG['flow_login_register']['email_not_null'] = 'Please enter email address.';
$_LANG['flow_login_register']['email_invalid'] = 'Please enter a valid email address.';
$_LANG['flow_login_register']['password_not_same'] = 'Re-enter password.';
$_LANG['flow_login_register']['password_lt_six'] = 'Password can not be less than six characters.';

$_LANG['regist_success'] = "Congratulations! %s register successfully!";
$_LANG['login_success'] = 'Congratulations! Login successfully!';

/* Cart */
$_LANG['update_cart'] = 'Update the cart';
$_LANG['back_to_cart'] = 'Back to the cart';
$_LANG['update_cart_notice'] = 'Update successfully, please choose the gift again.';
$_LANG['direct_shopping'] = 'I don\'t plan to login, directly purchase.';
$_LANG['goods_not_exists'] = 'Sorry, the product is nonexistence.';
$_LANG['drop_goods_confirm'] = 'Are you sure remove it from the cart?';
$_LANG['goods_number_not_int'] = 'Please enter a valid number.';
$_LANG['stock_insufficiency'] = 'Sorry, the stocks of products %s only %d, you can buy %d largest.';
$_LANG['shopping_flow'] = 'Shopping flow';
$_LANG['username_exists'] = 'The username already exists, please enter another one and try it again.';
$_LANG['email_exists'] = 'The email address already exists, please enter another one and try it again.';
$_LANG['surplus_not_enough'] = 'Your balance is not enough.';
$_LANG['integral_not_enough'] = 'Your points is not enough.';
$_LANG['integral_too_much'] = "The points of your used can\'t more than %d.";
$_LANG['invalid_bonus'] = "The bonus is nonexistent.";
$_LANG['no_goods_in_cart'] = 'There is blank in your cart!';
$_LANG['not_submit_order'] = 'The order of associates have submitted, please don\'t do it again!';
$_LANG['pay_success'] = 'Paid successfully, it is imperative that we make a quick shipping for you.';
$_LANG['pay_fail'] = 'Paid failed, please contact with us timely.';
$_LANG['pay_disabled'] = 'The payment mode have disconnected.';
$_LANG['pay_invalid'] = 'The payment mode is invalid. Please contact with us timely.';
$_LANG['flow_no_shipping'] = 'Please select a shipping method!';
$_LANG['flow_no_payment'] = 'Please select a payment mode!';
$_LANG['pay_not_exist'] = 'The payment mode is nonexistence.';
$_LANG['storage_short'] = 'Out of stock';
$_LANG['subtotal'] = 'Subtotal';
$_LANG['accessories'] = 'Accessories';
$_LANG['largess'] = 'Largess';
$_LANG['your_discount'] = 'According offers <a href="activity.php"><font color=red>%s</font></a>, you can also enjoy discounts %s';
$_LANG['than_market_price'] = 'Market price is %s, you save %s (%s).';
$_LANG['discount'] = '折扣';
$_LANG['no'] = 'No';
$_LANG['not_support_virtual_goods'] = 'There is(are) virtual product(s), it is not support purchase without login, please login validly.';
$_LANG['not_support_insure'] = 'No support insurance';
$_LANG['clear_cart'] = '清空购物车';
$_LANG['drop_to_collect'] = 'Save to later';

/* 优惠活动 */
$_LANG['favourable_name'] = '活动名称：';
$_LANG['favourable_period'] = '优惠期限：';
$_LANG['favourable_range'] = '优惠范围：';
$_LANG['far_ext'][FAR_ALL] = '全部商品';
$_LANG['far_ext'][FAR_BRAND] = '以下品牌';
$_LANG['far_ext'][FAR_CATEGORY] = '以下分类';
$_LANG['far_ext'][FAR_GOODS] = '以下商品';
$_LANG['favourable_amount'] = '金额区间：';
$_LANG['favourable_type'] = '优惠方式：';
$_LANG['fat_ext'][FAT_DISCOUNT] = '享受 %d%% 的折扣';
$_LANG['fat_ext'][FAT_GOODS] = '从下面的赠品（特惠品）中选择 %d 个（0表示不限制数量）';
$_LANG['fat_ext'][FAT_PRICE] = '直接减少现金 %d';

$_LANG['favourable_not_exist'] = '您要加入购物车的优惠活动不存在';
$_LANG['favourable_not_available'] = '您不能享受该优惠';
$_LANG['favourable_used'] = '该优惠活动已加入购物车了';
$_LANG['pls_select_gift'] = '请选择赠品（特惠品）';
$_LANG['gift_count_exceed'] = '您选择的赠品（特惠品）数量超过上限了';
$_LANG['gift_in_cart'] = '您选择的赠品（特惠品）已经在购物车中了：%s';

/* Register/Login */
$_LANG['forthwith_login'] = 'Login';
$_LANG['forthwith_register'] = 'Register';
$_LANG['signin_failed'] = 'Soory, login failure, please check your username and password.';
$_LANG['gift_remainder'] = '说明：在您登录或注册后，请到购物车页面重新选择赠品。';

/* Information of consignee */
$_LANG['flow_js']['consignee_not_null'] = 'Please enter name of consignee!';
$_LANG['flow_js']['country_not_null'] = 'Please select a country of consignee!';
$_LANG['flow_js']['province_not_null'] = 'Please select a province of consignee!';
$_LANG['flow_js']['city_not_null'] = 'Please select a city of consignee!';
$_LANG['flow_js']['district_not_null'] = 'Please select a district of consignee!';
$_LANG['flow_js']['invalid_email'] = 'Please enter a valid email address.';
$_LANG['flow_js']['address_not_null'] = 'Please enter an address!';
$_LANG['flow_js']['tele_not_null'] = 'Please enter a phone number!';
$_LANG['flow_js']['shipping_not_null'] = 'Please select a shipping method!';
$_LANG['flow_js']['payment_not_null'] = 'Please select a payment mode!';
$_LANG['flow_js']['goodsattr_style'] = 1;
$_LANG['flow_js']['tele_invaild'] = '电话号码不有效的号码';
$_LANG['flow_js']['zip_not_num'] = '邮政编码只能填写数字';
$_LANG['flow_js']['mobile_invaild'] = '手机号码不是合法号码';

$_LANG['new_consignee_address'] = 'New consignee address';
$_LANG['consignee_address'] = 'Address';
$_LANG['consignee_name'] = 'Name';
$_LANG['country_province'] = 'Shipping region';
$_LANG['please_select'] = 'Please select';
$_LANG['city_district'] = 'City/District';
$_LANG['email_address'] = 'Email';
$_LANG['detailed_address'] = 'Address';
$_LANG['postalcode'] = 'Postalcode';
$_LANG['phone'] = 'Phone';
$_LANG['mobile'] = 'Mobile';
$_LANG['backup_phone'] = 'Mobile';
$_LANG['sign_building'] = 'Sign building';
$_LANG['deliver_goods_time'] = 'Optimal shipping time';
$_LANG['default'] = 'Default';
$_LANG['default_address'] = 'Default address';
$_LANG['confirm_submit'] = 'Submit';
$_LANG['confirm_edit'] = 'Submit';
$_LANG['country'] = 'Country';
$_LANG['province'] = 'Province';
$_LANG['city'] = 'City';
$_LANG['area'] = 'Area';
$_LANG['consignee_add'] = 'Add a new consignee.';
$_LANG['shipping_address'] = 'Shipping according to this address.';
$_LANG['address_amount'] = 'The place of receipt should be less than three.';
$_LANG['not_fount_consignee'] = 'Sorry, the place of receipt is nonexistence.';

/*------------------------------------------------------ */
//-- Submit the order
/*------------------------------------------------------ */

$_LANG['goods_amount_not_enough'] = '您购买的商品没有达到本店的最低限购金额 %s ，不能提交订单。';
$_LANG['balance_not_enough'] = '您的余额不足以支付整个订单，请选择其他支付方式';
$_LANG['select_shipping'] = 'Your select shipping method is';
$_LANG['select_payment'] = 'Your select payment mode is';
$_LANG['order_amount'] = 'Your order money is';
$_LANG['remember_order_number'] = 'Thanks for your shopping! Your order have submitted, please remember your order numbers.';
$_LANG['back_home'] = '<a href="index.php">Back to home</a>';
$_LANG['goto_user_center'] = '<a href="user.php">Member center</a>';
$_LANG['order_submit_back'] = 'You can %s or go to %s';

$_LANG['order_placed_sms'] = "You has a new order.Consignee:%s Phone:%s";
$_LANG['sms_paid'] = 'Paid';

$_LANG['notice_gb_order_amount'] = '(Remarks: If associates with insurance, the insurance and corresponding pay need to be paid in first payment.)';

$_LANG['pay_order'] = 'pay order %s';
$_LANG['validate_bonus'] = '验证红包';
$_LANG['input_bonus_no'] = '或者输入红包序列号';
$_LANG['select_bonus'] = '选择已有红包';
$_LANG['bonus_sn_error'] = '该红包序列号不正确';
$_LANG['bonus_min_amount_error'] = '订单商品金额没有达到使用该红包的最低金额 %s';
$_LANG['bonus_is_ok'] = '该红包序列号可以使用，可以抵扣 %s';

?>
