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
 * $Author: fenghl $
 * $Date: 2007-12-14 14:27:48 +0800 (星期五, 14 十二月 2007) $
 * $Id: captcha_manage.php 13864 2007-12-14 06:27:48Z fenghl $
*/

$_LANG['captcha_manage'] = '验证码设置';
$_LANG['captcha_note'] = '开启验证码需要服务GD库支持，而您的服务器不支持GD。';

$_LANG['captcha_setting'] = '验证码设置';
$_LANG['captcha_turn_on'] = '启用验证码';
$_LANG['turn_on_note'] = '图片验证码可以避免恶意批量评论或提交信息，推荐打开验证码功能。注意: 启用验证码会使得部分操作变得繁琐，建议仅在必需时打开';
$_LANG['captcha_register'] = '新用户注册';
$_LANG['captcha_login'] = '用户登录';
$_LANG['captcha_comment'] = '发表评论';
$_LANG['captcha_admin'] = '后台管理员登录';
$_LANG['captcha_login_fail'] = '登录失败时显示验证码';
$_LANG['login_fail_note'] = '选择“是”将在用户登录失败 3 次后才显示验证码，选择“否”将始终在登录时显示验证码。注意: 只有在启用了用户登录验证码时本设置才有效';
$_LANG['captcha_width'] = '验证码图片宽度';
$_LANG['width_note'] = '验证码图片的宽度，范围在 40～145 之间';
$_LANG['captcha_height'] = '验证码图片高度';
$_LANG['height_note'] = '验证码图片的高度，范围在 15～50 之间';

$_LANG['js_languages']['width_number'] = '图片宽度请输入数字!';
$_LANG['js_languages']['proper_width'] = '图片宽度要在40到145之间!';
$_LANG['js_languages']['height_number'] = '图片高度请输入数字!';
$_LANG['js_languages']['proper_height'] = '图片高度要在15到50之间!';

$_LANG['save_ok'] = '设置保存成功';

?>
