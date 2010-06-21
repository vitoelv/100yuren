<?php
/*
 * FCKeditor - The text editor for Internet - http://www.fckeditor.net
 * Copyright (C) 2003-2007 Frederico Caldeira Knabben
 *
 * == BEGIN LICENSE ==
 *
 * Licensed under the terms of any of the following licenses at your
 * choice:
 *
 *  - GNU General Public License Version 2 or later (the "GPL")
 *    http://www.gnu.org/licenses/gpl.html
 *
 *  - GNU Lesser General Public License Version 2.1 or later (the "LGPL")
 *    http://www.gnu.org/licenses/lgpl.html
 *
 *  - Mozilla Public License Version 1.1 or later (the "MPL")
 *    http://www.mozilla.org/MPL/MPL-1.1.html
 *
 * == END LICENSE ==
 *
 * Configuration file for the PHP File Uploader.
 */

global $Config ;

// SECURITY: You must explicitelly enable this "uploader".
// $Config['Enabled'] = false ;

// Set if the file type must be considere in the target path.
// Ex: /userfiles/image/ or /userfiles/file/
// $Config['UseFileType'] = false ;

// Path to uploaded files relative to the document root.
// $Config['UserFilesPath'] = '/userfiles/' ;

// by weberliu @ 2007-2-6

/* 获得 ecshop 所在的根目录 */
define('IN_ECS', true);

define('ROOT_PATH', preg_replace('/includes(.*)/i', '', str_replace('\\', '/', __FILE__)));

if (isset($_SERVER['PHP_SELF']))
{
    define('PHP_SELF', $_SERVER['PHP_SELF']);
}
else
{
    define('PHP_SELF', $_SERVER['SCRIPT_NAME']);
}

$root_path = preg_replace('/includes(.*)/i', '', PHP_SELF);

require(ROOT_PATH . 'data/config.php');
require(ROOT_PATH . 'includes/cls_mysql.php');
require(ROOT_PATH . 'includes/cls_ecshop.php');
require(ROOT_PATH . 'includes/cls_session.php');
require(ROOT_PATH . 'includes/lib_common.php');

/* 创建 ECSHOP 对象 */
$ecs = new ECS($db_name, $prefix);

$db = new cls_mysql($db_host, $db_user, $db_pass, $db_name);

/* 创建 ECSHOP 对象 */
$ecs = new ECS($db_name, $prefix);

/* 初始化session */
//$sess = new cls_session($db, $ecs->table('sessions'), 'ECSCP_ID');
$sess = new cls_session($db, $ecs->table('sessions'), $ecs->table('sessions_data'), 'ECSCP_ID');

if (!empty($_SESSION['admin_id']))
{
    if ($_SESSION['action_list'] == 'all')
    {
        $enable = true;
    }
    else
    {
        if (strpos(',' . $_SESSION['action_list'] . ',', ',goods_manage,') === false && strpos(',' . $_SESSION['action_list'] . ',', ',virualcard,') === false && strpos(',' . $_SESSION['action_list'] . ',', ',article_manage,') === false)
        {
            $enable = false;
        }
        else
        {
            $enable = true;
        }
    }
}
else
{
    $enable = false;
}
$Config['Enabled'] = $enable;

// Path to user files relative to the document root.
$Config['UserFilesPath'] = $root_path . 'images/upload/';

// end by weberliu @ 2007-2-6

// Fill the following value it you prefer to specify the absolute path for the
// user files directory. Usefull if you are using a virtual directory, symbolic
// link or alias. Examples: 'C:\\MySite\\userfiles\\' or '/root/mysite/userfiles/'.
// Attention: The above 'UserFilesPath' must point to the same directory.
$Config['UserFilesAbsolutePath'] = ROOT_PATH . 'images/upload/' ;
// edit by dolphin @ 2008-2-25

// Due to security issues with Apache modules, it is reccomended to leave the
// following setting enabled.
$Config['ForceSingleExtension'] = true ;

// by weberliu @ 2007-3-29
//$Config['AllowedExtensions']['File']    = array() ;
//$Config['DeniedExtensions']['File']        = array('html','htm','php','php2','php3','php4','php5','phtml','pwml','inc','asp','aspx','ascx','jsp','cfm','cfc','pl','bat','exe','com','dll','vbs','js','reg','cgi','htaccess','asis') ;
$Config['AllowedExtensions']['File']    = array('zip','rar','txt','doc','xls','ppt','pdf') ;
$Config['DeniedExtensions']['File']        = array() ;

$Config['AllowedExtensions']['Image']    = array('jpg','gif','jpeg','png') ;
$Config['DeniedExtensions']['Image']    = array() ;

$Config['AllowedExtensions']['Flash']    = array('swf','fla') ;
$Config['DeniedExtensions']['Flash']    = array() ;

?>