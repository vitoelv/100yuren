<?php

/**
 * ECSHOP 安装程序 之 控制器
 * ============================================================================
 * 版权所有 (C) 2005-2007 康盛创想（北京）科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 这是一个免费开源的软件；这意味着您可以在不用于商业目的的前提下对程序代码
 * 进行修改、使用和再发布。
 * ============================================================================
 * $Author: luhengqi $
 * $Date: 2007-02-12 14:56:05 +0800 (星期一, 12 二月 2007) $
 * $Id: index.php 5721 2007-02-12 06:56:05Z luhengqi $
 */

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');

/* 初始化语言变量 */
$installer_lang = isset($_REQUEST['lang']) ? trim($_REQUEST['lang']) : 'zh_cn';

if ($installer_lang != 'zh_cn' && $installer_lang != 'zh_tw' && $installer_lang != 'en_us')
{
    $installer_lang = 'zh_cn';
}

/* 加载安装程序所使用的语言包 */
$installer_lang_package_path = ROOT_PATH . 'install/languages/' . $installer_lang . '.php';
if (file_exists($installer_lang_package_path))
{
    include_once($installer_lang_package_path);
    $smarty->assign('lang', $_LANG);
}
else
{
    die('Can\'t find language package!');
}

/* 初始化流程控制变量 */
$step = isset($_REQUEST['step']) ? $_REQUEST['step'] : 'welcome';
if (file_exists(ROOT_PATH . 'data/install.lock'))
{
    $step = 'error';
    $err->add($_LANG['has_locked_installer']);

    if (isset($_REQUEST['IS_AJAX_REQUEST'])
            && $_REQUEST['IS_AJAX_REQUEST'] === 'yes')
    {
        die(implode(',', $err->get_all()));
    }
}

switch ($step)
{
case 'welcome' :
    $smarty->assign('installer_lang', $installer_lang);
    $smarty->display('welcome.php');

    break;

case 'check' :
    include_once(ROOT_PATH . 'install/includes/lib_env_checker.php');
    include_once(ROOT_PATH . 'install/includes/checking_dirs.php');

    $dir_checking = check_dirs_priv($checking_dirs);

    $templates_root = array(
        'dwt' => ROOT_PATH . 'themes/default/',
        'lbi' => ROOT_PATH . 'themes/default/library/');
    $template_checking = check_templates_priv($templates_root);

    $rename_priv = check_rename_priv();

    $disabled = '';
    if ($dir_checking['result'] === 'ERROR'
            || !empty($template_checking)
            || !empty($rename_priv)
            || !function_exists('mysql_connect'))
    {
        $disabled = 'disabled="true"';
    }

    $has_unwritable_tpl = 'yes';
    if (empty($template_checking))
    {
        $template_checking = $_LANG['all_are_writable'];
        $has_unwritable_tpl = 'no';
    }

    $smarty->assign('installer_lang', $installer_lang);
    $smarty->assign('system_info', get_system_info());
    $smarty->assign('dir_checking', $dir_checking['detail']);
    $smarty->assign('has_unwritable_tpl', $has_unwritable_tpl);
    $smarty->assign('template_checking', $template_checking);
    $smarty->assign('rename_priv', $rename_priv);
    $smarty->assign('disabled', $disabled);
    $smarty->display('checking.php');

    break;

case 'setting_ui' :
    $prefix = 'ecs_';
    if (file_exists(ROOT_PATH . 'install/data/inc_goods_type_' . $installer_lang . '.php'))
    {
        include_once(ROOT_PATH . 'install/data/inc_goods_type_' . $installer_lang . '.php');
    }
    else
    {
        include_once(ROOT_PATH . 'install/data/inc_goods_type_zh_cn.php');
    }

    $goods_types = array();
    foreach ($attributes AS $key=>$val)
    {
        $goods_types[$key] = $_LANG[$key];
    }

    if (!has_supported_gd())
    {
        $checked = 'checked="checked"';
        $disabled = 'disabled="true"';
    }
    else
    {
        $checked = '';
        $disabled = '';
    }

    $show_timezone = PHP_VERSION >= '5.1' ? 'yes' : 'no';

    $smarty->assign('installer_lang', $installer_lang);
    $smarty->assign('checked', $checked);
    $smarty->assign('disabled', $disabled);
    $smarty->assign('goods_types', $goods_types);
    $smarty->assign('show_timezone', $show_timezone);
    $smarty->assign('local_timezone', get_local_timezone());
    $smarty->assign('timezones', get_timezone_list($installer_lang));
    $smarty->display('setting.php');

    break;

case 'get_db_list' :
    $db_host    = isset($_POST['db_host']) ? trim($_POST['db_host']) : '';
    $db_port    = isset($_POST['db_port']) ? trim($_POST['db_port']) : '';
    $db_user    = isset($_POST['db_user']) ? trim($_POST['db_user']) : '';
    $db_pass    = isset($_POST['db_pass']) ? trim($_POST['db_pass']) : '';

    include_once(ROOT_PATH . 'includes/cls_json.php');
    $json = new JSON();

    $databases  = get_db_list($db_host, $db_port, $db_user, $db_pass);
    if ($databases === false)
    {
        echo $json->encode(implode(',', $err->get_all()));
    }
    else
    {
        $result = array('msg'=> 'OK', 'list'=>implode(',', $databases));
        echo $json->encode($result);
    }

    break;

case 'create_config_file' :
    $db_host    = isset($_POST['db_host'])      ?   trim($_POST['db_host']) : '';
    $db_port    = isset($_POST['db_port'])      ?   trim($_POST['db_port']) : '';
    $db_user    = isset($_POST['db_user'])      ?   trim($_POST['db_user']) : '';
    $db_pass    = isset($_POST['db_pass'])      ?   trim($_POST['db_pass']) : '';
    $db_name    = isset($_POST['db_name'])      ?   trim($_POST['db_name']) : '';
    $prefix     = isset($_POST['db_prefix'])    ?   trim($_POST['db_prefix']) : '';
    $timezone   = isset($_POST['timezone'])     ?   trim($_POST['timezone']) : 'Asia/Shanghai';

    $result = create_config_file($db_host, $db_port, $db_user, $db_pass, $db_name, $prefix,  $timezone);
    if ($result === false)
    {
        echo implode(',', $err->get_all());
    }
    else
    {
        echo 'OK';
    }

    break;

case 'create_database' :
    $db_host    = isset($_POST['db_host'])      ?   trim($_POST['db_host']) : '';
    $db_port    = isset($_POST['db_port'])      ?   trim($_POST['db_port']) : '';
    $db_user    = isset($_POST['db_user'])      ?   trim($_POST['db_user']) : '';
    $db_pass    = isset($_POST['db_pass'])      ?   trim($_POST['db_pass']) : '';
    $db_name    = isset($_POST['db_name'])      ?   trim($_POST['db_name']) : '';

    $result = create_database($db_host, $db_port, $db_user, $db_pass, $db_name);
    if ($result === false)
    {
        echo implode(',', $err->get_all());
    }
    else
    {
        echo 'OK';
    }

    break;

case 'install_base_data' :
    $system_lang = isset($_POST['system_lang']) ? $_POST['system_lang'] : 'zh_cn';

    if (file_exists(ROOT_PATH . 'install/data/data_' . $system_lang . '.sql'))
    {
        $data_path = ROOT_PATH . 'install/data/data_' . $system_lang . '.sql';
    }
    else
    {
        $data_path = ROOT_PATH . 'install/data/data_zh_cn.sql';
    }

    $sql_files = array(
        ROOT_PATH . 'install/data/structure.sql',
        $data_path
    );

    $result = install_data($sql_files);

    if ($result === false)
    {
        echo implode(',', $err->get_all());
    }
    else
    {
        echo 'OK';
    }

    break;

case 'create_admin_passport' :
    $admin_name         = isset($_POST['admin_name'])       ? trim($_POST['admin_name']) : '';
    $admin_password     = isset($_POST['admin_password'])   ? trim($_POST['admin_password']) : '';
    $admin_password2    = isset($_POST['admin_password2'])  ? trim($_POST['admin_password2']) : '';
    $admin_email        = isset($_POST['admin_email'])      ? trim($_POST['admin_email']) : '';

    $result = create_admin_passport($admin_name, $admin_password,
            $admin_password2, $admin_email);
    if ($result === false)
    {
        echo implode(',', $err->get_all());
    }
    else
    {
        echo 'OK';
    }

    break;

case 'do_others' :
    $system_lang = isset($_POST['system_lang'])     ? $_POST['system_lang'] : 'zh_cn';
    $captcha = isset($_POST['disable_captcha'])     ? intval($_POST['disable_captcha']) : '0';
    $goods_types = isset($_POST['goods_types'])     ? $_POST['goods_types'] : array();
    $install_demo = isset($_POST['install_demo'])   ? $_POST['install_demo'] : 0;

    $result = do_others($system_lang, $captcha, $goods_types, $install_demo);
    if ($result === false)
    {
        echo implode(',', $err->get_all());
    }
    else
    {
        echo 'OK';
    }

    break;

case 'done' :
    $result = deal_aftermath();
    if ($result === false)
    {
        $err_msg = implode(',', $err->get_all());
        $smarty->assign('err_msg', $err_msg);
        $smarty->display('error.php');
    }
    else
    {
        $smarty->assign('spt_code', get_spt_code());
        $smarty->display('done.php');
    }

    break;

case 'error' :
    $err_msg = implode(',', $err->get_all());
    $smarty->assign('err_msg', $err_msg);
    $smarty->display('error.php');

    break;

default :
    die('Error, unknown step!');
}

?>