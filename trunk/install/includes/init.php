<?php

/* 报告所有错误 */
ini_set('display_errors', 1);
error_reporting(E_ALL ^ E_NOTICE);

/* 清除所有和文件操作相关的状态信息 */
clearstatcache();

/* 定义站点根 */
define('ROOT_PATH', str_replace('install/includes/init.php', '', str_replace('\\', '/', __FILE__)));

require(ROOT_PATH . 'includes/lib_common.php');
require(ROOT_PATH . 'includes/lib_time.php');

/* 创建错误处理对象 */
require(ROOT_PATH . 'includes/cls_error.php');
$err = new ecs_error('message.dwt');

/* 初始化模板引擎 */
require(ROOT_PATH . 'install/includes/cls_template.php');
$smarty = new template(ROOT_PATH . 'install/templates/');

require(ROOT_PATH . 'install/includes/lib_installer.php');

/* 发送HTTP头部，保证浏览器识别UTF8编码 */
header('Content-type: text/html; charset=utf-8');

@set_time_limit(360);

?>