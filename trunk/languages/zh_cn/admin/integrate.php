<?php

/**
 * ECSHOP 管理中心会员数据整合插件管理程序语言文件
 * ============================================================================
 * 版权所有 (C) 2005-2006 康盛创想（北京）科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 这是一个免费开源的软件；这意味着您可以在不用于商业目的的前提下对程序代码
 * 进行修改、使用和再发布。
 * ============================================================================
 * $Author: wj $
 * $Date: 2007-11-09 11:28:17 +0800 (星期五, 09 十一月 2007) $
 * $Id: integrate.php 13518 2007-11-09 03:28:17Z wj $
*/

$_LANG['integrate_name'] = '名称';
$_LANG['integrate_version'] = '版本';
$_LANG['integrate_author'] = '作者';

/* 插件列表 */
$_LANG['update_success'] = '设置会员数据整合插件已经成功。';
$_LANG['install_confirm'] = '您确定要安装该会员数据整合插件吗？';
$_LANG['need_not_setup'] = '当您采用IAStudy会员系统时，无须进行设置。';
$_LANG['different_domain'] = '您设置的整合对象和 IAStudy 不在同一域下。<br />您将只能共享该系统的会员数据，但无法实现同时登录。';
$_LANG['points_set'] = '积分兑换设置';
$_LANG['view_user_list'] = '查看论坛用户';
$_LANG['view_install_log'] = '查看安装日志';

$_LANG['integrate_setup'] = '设置会员数据整合插件';
$_LANG['continue_sync'] = '继续同步会员数据';
$_LANG['go_userslist'] = '返回会员帐号列表';

/* 查看安装日志 */
$_LANG['lost_install_log'] = '未找到安装日志';
$_LANG['empty_install_log'] = '安装日志为空';

/* 表单相关语言项 */
$_LANG['db_notice'] = '点击“<font color="#000000">下一步</font>”将引导你到将商城用户数据同步到整合论坛。如果不需同步数据请点击“<font color="#000000">直接保存配置信息</font>”';

$_LANG['lable_db_host'] = '数据库服务器主机名：';
$_LANG['lable_db_name'] = '数据库名：';
$_LANG['lable_db_chartset'] = '数据库字符集：';
$_LANG['lable_is_latin1'] = '是否为latin1编码';
$_LANG['lable_db_user'] = '数据库帐号：';
$_LANG['lable_db_pass'] = '数据库密码：';
$_LANG['lable_prefix'] = '数据表前缀：';
$_LANG['lable_url'] = '被整合系统的完整 URL：';
/* 表单相关语言项(discus5x) */
$_LANG['cookie_prefix']          = 'COOKIE前缀：';
$_LANG['cookie_salt']          = 'COOKIE加密串：';
$_LANG['button_next'] = '下一步';
$_LANG['button_force_save_config'] = '直接保存配置信息';
$_LANG['save_confirm'] = '您确定要直接保存配置信息吗？';
$_LANG['button_save_config'] = '保存配置信息';

$_LANG['error_db_msg'] = '数据库地址、用户或密码不正确';
$_LANG['error_db_exist'] = '数据库不存在';
$_LANG['error_table_exist'] = '整合论坛关键数据表不存在，你填写的信息有误';

$_LANG['notice_latin1'] = '该选项填写错误时将可能到导致中文用户名无法使用';
$_LANG['error_not_latin1'] = '整合数据库检测到不是latin1编码！请重新选择';
$_LANG['error_is_latin1'] = '整合数据库检测到是lantin1编码！请重新选择';
$_LANG['invalid_db_charset'] = '整合数据库检测到是%s 字符集，而非%s 字符集';
$_LANG['error_latin1'] = '你填写的整合信息会导致严重错误，无法完成整合';

/* 检查同名用户 */
$_LANG['conflict_username_check'] = '检查商城用户是否和整合论坛用户有重名';
$_LANG['check_notice'] = '本页将检测商城已有用户和论坛用户是否有重名，点击“开始检查前”，请为商城重名用户选择一个默认处理方法';
$_LANG['default_method'] = '如果检测出商城有重名用户，请为这些用户选择一个默认处理方法';
$_LANG['shop_user_total'] = '商城共有 %s 个用户待检查';
$_LANG['lable_size'] = '每次检查用户个数';
$_LANG['start_check'] = '开始检查';
$_LANG['next'] = '下一步';
$_LANG['checking'] = '正在检查...(请不要关闭浏览器)';
$_LANG['notice'] = '已经检查 %s / %s ';
$_LANG['check_complete'] = '检查完成';

/* 同名用户处理 */
$_LANG['conflict_username_modify'] = '商城重名用户列表';
$_LANG['modify_notice'] = '以下列出了所有商城与论坛的重名用户及处理方法。如果您已确认所有操作，请点击“开始整合”；您对重名用户的操作的更改需要点击按钮“保存本页更改”才能生效。';
$_LANG['page_default_method'] = '本页面中重名用户默认处理方法';
$_LANG['lable_rename'] = '商城重名用户加后缀';
$_LANG['lable_delete'] = '删除商城的重名用户及相关数据';
$_LANG['lable_ignore'] = '保留商城重名用户，论坛同名用户视为同一用户';
$_LANG['short_rename'] = '商城用户改名为';
$_LANG['short_delete'] = '删除商城用户';
$_LANG['short_ignore'] = '保留商城用户';
$_LANG['user_name'] = '商城用户名';
$_LANG['email'] = 'email';
$_LANG['reg_date'] = '注册日期';
$_LANG['all_user'] = '所有商城重名用户';
$_LANG['error_user'] = '需要重新选择操作的商城用户';
$_LANG['rename_user'] = '需要改名的商城用户';
$_LANG['delete_user'] = '需要删除的商城用户';
$_LANG['ignore_user'] = '需要保留的商城用户';

$_LANG['submit_modify'] = '保存本页变更';
$_LANG['button_confirm_next'] = '开始整合';


/* 用户同步 */
$_LANG['user_sync'] = '同步商城数据到论坛，并完成整合';
$_LANG['button_pre'] = '上一步';
$_LANG['task_name'] = '任务名';
$_LANG['task_status'] = '任务状态';
$_LANG['task_del'] = '%s 个商城用户数待删除';
$_LANG['task_rename'] = '%s 个商城用户需要改名';
$_LANG['task_sync'] = '%s 个商城用户需要同步到论坛';
$_LANG['task_save'] = '保存配置信息，并完成整合';
$_LANG['task_uncomplete'] = '未完成';
$_LANG['task_run'] = '执行中 (%s / %s)';
$_LANG['task_complete'] = '已完成';
$_LANG['start_task'] = '开始任务';
$_LANG['sync_status'] = '已经同步 %s / %s';
$_LANG['sync_size'] = '每次处理用户数量';
$_LANG['sync_ok'] = '恭喜您。整合成功';


$_LANG['save_ok'] = '保存成功';

/* 积分设置 */
$_LANG['no_points'] = '没有检测到论坛有可以兑换的积分';
$_LANG['bbs'] = '论坛';
$_LANG['shop_pay_points'] = '商城消费积分';
$_LANG['shop_rank_points'] = '商城等级积分';
$_LANG['add_rule'] = '新增规则';
$_LANG['modify'] = '修改';
$_LANG['rule_name'] = '兑换规则';
$_LANG['rule_rate'] = '兑换比例';

/* JS语言项 */
$_LANG['js_languages']['no_host'] = '数据库服务器主机名不能为空。';
$_LANG['js_languages']['no_user'] = '数据库帐号不能为空。';
$_LANG['js_languages']['no_name'] = '数据库名不能为空。';
$_LANG['js_languages']['no_integrate_url'] = '请输入整合对象的完整 URL';
$_LANG['js_languages']['install_confirm'] = '请不要在系统运行中随意的更换整合对象。\r\n您确定要安装该会员数据整合插件吗？';
$_LANG['js_languages']['num_invalid'] = '同步数据的记录数不是一个整数';
$_LANG['js_languages']['start_invalid'] = '同步数据的起始位置不是一个整数';
$_LANG['js_languages']['sync_confirm'] = '同步会员数据会将目标数据表重建。请在执行同步之前备份好您的数据。\r\n您确定要开始同步会员数据吗？';

$_LANG['cookie_prefix_notice'] = 'UTF8版本的cookie前缀默认为xnW_，GB2312/GBK版本的cookie前缀默认为KD9_。';

$_LANG['js_languages']['no_method'] = '请选择一种默认处理方法';

$_LANG['js_languages']['rate_not_null'] = '比例不能为空';
$_LANG['js_languages']['rate_not_int'] = '比例只能填整数';
$_LANG['js_languages']['rate_invailed'] = '你填写了一个无效的比例';

?>